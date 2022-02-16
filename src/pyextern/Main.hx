package pyextern;

import Sys.*;
import sys.FileSystem.*;
import sys.io.File.*;
import haxe.io.*;
import haxe.macro.Expr;
import pyextern.Utils.*;
using StringTools;
using Lambda;

import python.Tuple;
import python.lib.Builtins.*;
import inspect.*;
import importlib.*;

class Main {
	public var tds = new Map<String, TypeDefinition>();

	public function new():Void {}

	public function write(outPath:String):Void {
		// setup typedefs of $name => ${name}_Module
		function collide(m:String):TypeDefinition->Bool {
			var real_td = getTd(m, "", false);
			if (real_td == null) return function(_) return true;
			var pack = real_td.pack.join(".").toLowerCase();
			var hxName = real_td.name.substr(0, -"_Module".length).toLowerCase();
			return function(td:TypeDefinition) return td.name.toLowerCase() == hxName && td.pack.join(".").toLowerCase() == pack;
		}
		var canTypedef = [
			for (m in modules.keys())
			if (!Lambda.exists(tds,collide(m)))
			m
		];

		for (m in canTypedef) {
			var real_td = getTd(m, "");
			try {
				var td = getTd(m, real_td.name.substr(0, -"_Module".length));
				td.meta = [];
				td.isExtern = false;
				td.kind = TDAlias(TPath({
					pack: real_td.pack,
					name: real_td.name
				}));
			} catch (e:Dynamic) {}
		}

		//command("rm", ["-rf", outPath]);
		createDirectory(outPath);
		setCwd(outPath);

		var printer = new haxe.macro.Printer();
		for (td in tds) {
			#if debug
			trace('write: ${td.pack.join(".")}.${td.name}');
			#end
			var clsStr = "/* This file is generated, do not edit! */\n" + printer.printTypeDefinition(td);
			var packDir = Path.join(td.pack);
			if (packDir != "")
				createDirectory(packDir);
			var path = Path.join([packDir, td.name + ".hx"]);
			saveContent(path, clsStr);
		}
	}

	var modules = new Map<String,Dynamic>();
	public var processors:Map<String,Processor> = [
		for (cls in CompileTime.getAllClasses(Processor))
		for (m in haxe.rtti.Meta.getType(cls).process_modules)
		m => Type.createInstance(cls, [])
	];
	public var defaultProcessor = new Processor();

	public function getProcessor(moduleName:String):Processor {
		var m = moduleName;
		do {
			if (processors.exists(m))
				return processors[m];
			m = m.substr(0, m.lastIndexOf("."));
		} while (m != "");
		return defaultProcessor;
	}

	public function processModule(module:Dynamic, moduleName:Null<String>):Void {
		if (moduleName != null && !filterModules(moduleName))
			return;

		if (Std.is(module,String)) {
			moduleName = module;
			module = try {
				Sys.println("trying to import module: " + moduleName);
				Importlib.import_module(moduleName);
			} catch (e:Dynamic) {
				trace('cannot import $moduleName');
				return;
			}
		}
		if (!Inspect.ismodule(module)) {
			Sys.println("not module: " + module);
			return;
		}

		if (moduleName == null) {
			moduleName = module.__spec__.name;
		}
		if (modules.exists(moduleName) || !filterModules(moduleName)) {
			return;
		}
		Sys.println("process module: " + moduleName);
		modules[moduleName] = module;

		var proc:Processor = getProcessor(moduleName);
		proc.processModule(module, moduleName, this);
	}

	static function hxName(name:String):String {
		if (name == "") return "";
		
		name = upperCaseFirstLetter(name);
		name = name.replace(".", "_");

		if (!re_type.match(name)) throw "invalid class name: " + name;

		return name;
	}

	public function getTd(module:String, fullname:String, create:Bool = true):TypeDefinition {
		var pack = [
			for (p in module.split(".")) {
				p = lowerCaseFirstLetter(p);
				if (isHxKeyword(p))
					p = "_" + p;
				p;
			}
		];
		var hxName = switch (fullname) {
			case "":
				switch (pack.length) {
				 	case 0:
				 		throw "top-level?";
				 	case 1:
				 		hxName(pack[0] + "_Module");
				 	case _:
				 		// hxName(pack.pop());
				 		hxName(pack[pack.length-1] + "_Module");
				}
			case _:
				hxName(fullname);
		}
		var hxFullName = pack.concat([hxName]).join(".");
		// var native = fullname == "" ? module : module + "." + fullname;
		var pythonImportParams = if (fullname == "") {
			[
				{ expr: EConst(CString(module)), pos: null },
			];
		} else {
			[
				{ expr: EConst(CString(module)), pos: null },
				{ expr: EConst(CString(fullname)), pos: null },
			];
		}

		return switch (tds[hxFullName]) {
			case null if (!create):
				null;
			case null if (create):
				// find td of same package and same name (with different cases)
				var td = tds.find(function(td){
					return td.name.toLowerCase() == hxName.toLowerCase() && td.pack.join(".").toLowerCase() == pack.join(".").toLowerCase();
				});

				if (td != null) {
					var hxFullName_conflict = td.pack.concat([td.name]).join(".");
					if (td.kind.match(TDAlias(_))) {
						tds.remove(hxFullName_conflict);
					} else {
						throw 'Cannot create $hxFullName because there is already $hxFullName_conflict ';
					}
				}

				tds[hxFullName] = {
					pack : pack,
					name : hxName,
					pos : null,
					meta : [{
						name: ":pythonImport",
						params: pythonImportParams,
						pos: null
					}],
					params : [],
					isExtern : true,
					kind : TDClass(),
					fields : []
				};
			case td:
				if (td.isExtern) switch (td.meta[0]) {
					case {
						name: ":pythonImport",
						params: [
							{ expr: EConst(CString(module)) }
						]
					} if (fullname == ""): //pass
					case {
						name: ":pythonImport",
						params: [
							{ expr: EConst(CString(module)) },
							{ expr: EConst(CString(fullname)) }
						]
					}: //pass
					case nativeMeta:
						throw nativeMeta;
				}
				td;
		}
	}

	static public var re_ident = ~/^[A-Za-z_][A-Za-z0-9_]*$/;
	static public var re_type = ~/^[A-Z_][A-Za-z0-9_]*$/;
	static public function isHxKeyword(name:String):Bool {
		// https://github.com/HaxeFoundation/haxe/blob/development/lexer.mll
		return [
			"function","class","static","var","if","else","while","do","for",
			"break","return","continue","extends","implements","import",
			"switch","case","default","public","private","try","untyped",
			"catch","new","this","throw","extern","enum","in","interface",
			"cast","override","dynamic","typedef","package",
			"inline","using","null","true","false","abstract","macro",
			"__init__", //haxe 3.2.1 has issue with this..
			"overload", "operator",
			"final", "is"
		].indexOf(name) >= 0;
	}

	public var filterModules:String->Bool;

	static function main():Void {
		switch (args()) {
			case [moduleNames, outPath]:
				final main = new Main();
				final wantedModuleNames = moduleNames.split(",").map(StringTools.trim);
				main.filterModules = function(modname:String):Bool {
					return
							modname != null
						&&
							// only process modules specified by `moduleNames`
							wantedModuleNames.exists(wanted -> (modname == wanted || modname.startsWith(wanted + ".")))
						&&
							// skip modules that starts with _
							// it's a python convention to use _ prefix for private/internal stuff
							(if (!["pandas"].exists(mod -> modname.startsWith(mod))) {
								!modname.split(".").exists(p -> p.startsWith("_"));
							} else {
								true;
							})
						&&
							// skip tests
							(modname.toLowerCase().indexOf("test") == -1)
						&&
							// skip modules that are known to error when imported
							![
								"numpy.distutils",
								"numpy.f2py.__main__",
								"tensorflow.tools.pip_package",
								"PyQt5.uic.pyuic",
							].exists(function(skip) return modname == skip || modname.startsWith(skip + "."));
				}
				for (pkg in (list(pkgutil.Pkgutil.walk_packages(null, "", function(x) return null)):Array<Tuple<Dynamic>>)) {
					final modname:String = pkg[1];
					if (main.filterModules(modname)) {
						main.processModule(modname, modname);
					}
				}
				main.write(absolutePath(outPath));
			case _:
				throw "There should be exactly 2 arguments: moduleName, outPath";
		}
	}
}