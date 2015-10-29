package pyextern;

import Sys.*;
import sys.FileSystem.*;
import sys.io.File.*;
import haxe.ds.*;
import haxe.io.*;
import haxe.macro.*;
import haxe.macro.Expr;
using StringTools;
using Lambda;

import python.Tuple;

import python.lib.Builtins.*;
import inspect.*;
import importlib.*;

class Main {
	static var re_ident = ~/^[A-Za-z_][A-Za-z0-9_]*$/;
	static var re_type = ~/^[A-Z_][A-Za-z0-9_]*$/;
	public var tds = new Map<String, TypeDefinition>();
	public var descs = new Map<String, Xml>();

	static function type(object:Dynamic):Dynamic {
		return python.Syntax.callField(python.lib.Builtins, "type", object);
	}

	public function new():Void {}

	public function write(outPath:String):Void {
		//command("rm", ["-rf", outPath]);
		createDirectory(outPath);
		setCwd(outPath);

		var printer = new Printer();
		for (td in tds) {
			trace('write: ${td.pack.join(".")}.${td.name}');
			var clsStr = "/* This file is generated, do not edit! */\n" + printer.printTypeDefinition(td);
			var packDir = Path.join(td.pack);
			if (packDir != "")
				createDirectory(packDir);
			saveContent(Path.join([packDir, td.name + ".hx"]), clsStr);
		}
	}

	var modules = new Map<String,Dynamic>();
	public function processModule(module:Dynamic, ?moduleName:String):Void {
		if (Std.is(module,String)) {
			moduleName = module;
			module = try {
				Importlib.import_module(moduleName);
			} catch (e:Dynamic) {
				trace('cannot import $moduleName');
				return;
			}
		}
		if (!Inspect.ismodule(module))
			throw "not module: " + module;

		if (moduleName == null) {
			moduleName = module.__spec__.name;
		}
		if (modules.exists(moduleName)) {
			return;
		}
		modules[moduleName] = module;

		var members = try {
			(Inspect.getmembers(module):Array<Tuple2<String,Dynamic>>);
		} catch (e:Dynamic){
			trace('cannot getmembers of $moduleName');
			return;
		}
		for (mem in members) {
			var memName = mem._1;
			var memObj = mem._2;
			if (Inspect.ismodule(memObj)) {
				function isSubmodule(m:String) {
					return m.startsWith(moduleName + ".");
				}
				var mName = memObj.__name__;
				if (!isSubmodule(mName) && memObj.__spec__ != null)
					mName = memObj.__spec__.name;
				if (!isSubmodule(mName))
					mName = null;

				if (mName != null) {
					processModule(memObj, mName);
				} else {
					// trace('not a submodule of $moduleName: $memName (${memObj.__spec__.name;})');
				}
			} else if (Inspect.isclass(memObj)) {
				if (memObj.__module__ == moduleName && memObj.__name__ == memName) {
					var td = getTd(memObj.__module__, memObj.__name__);
					var members = try {
						(Inspect.getmembers(memObj):Array<Tuple2<String,Dynamic>>);
					} catch (e:Dynamic){
						trace('cannot getmembers of $moduleName $memName');
						continue;
					}
					for (clsMem in members) {
						var clsMemName = clsMem._1;
						var clsMemObj = clsMem._2;

						if (callable(clsMemObj)) {
							var sig = try {
								Inspect.signature(clsMemObj);
							} catch(e:Dynamic) {
								null;
							}

							var nonInstanceMethods = [
								"__new__"
							];

							function baseFunction(cls:Dynamic, funcName:String):Dynamic {
								var dict:python.Dict<String,Dynamic> = cls.__dict__;
								return if (dict.hasKey(funcName))
									dict.get(funcName);
								else {
									var mro:python.Tuple<Dynamic> = cls.__mro__;
									if (mro.length > 1)
										baseFunction(mro[1], funcName);
									else {
										// throw "what?";
										null;
									}
								}
							}

							var typeName = type(baseFunction(memObj,clsMemName)).__name__;
							var isInstanceMethod = 
								nonInstanceMethods.indexOf(clsMemName) == -1 &&
								typeName != "staticmethod" &&
								(
									Inspect.isfunction(clsMemObj) ||
									Inspect.ismethoddescriptor(clsMemObj)
								)
							;
							var fun = if (sig != null) {
								var fun = sigToFun(sig);
								if (isInstanceMethod) {
									if (fun.args.length < 1) {
										trace(moduleName + " " + memName + " " + clsMemName);
										trace(typeName);
										trace(sig);
										trace("isInstanceMethod but no argument?");
										// throw "isInstanceMethod but no argument?";
									} else if (fun.args[0].name != "self") {
										// fun.args.shift();
										// trace(moduleName + " " + memName + " " + clsMemName);
										// trace(clsMemObj);
										// trace(sig);
										// throw fun;
									}
									fun.args.shift(); //remove `self` argument
								} else {
									if (
										nonInstanceMethods.indexOf(clsMemName) == -1 &&
										typeName != "staticmethod" &&
										fun.args.length > 0 && fun.args[0].name == "self"
									) {
										trace(clsMemName);
										trace(typeName);
										throw "not isInstanceMethod but has self arguement?";
									}
								}
								fun;
							} else {
								{
									params:[],
									args: [{
										opt: false,
										name: "args",
										type: macro:haxe.extern.Rest<Dynamic>
									}],
									ret: macro:Dynamic,
									expr: null
								}
							}
							var field:Field = {
								doc: getdoc(clsMemObj),
								meta: [],
								access: isInstanceMethod ? [APublic] : [AStatic, APublic],
								name: clsMemName,
								kind: FFun(fun),
								pos: null
							};
							if (isHxKeyword(clsMemName)) {
								field.name = "_" + clsMemName;
								field.meta.push({
									name:":native",
									params: [{
										expr: EConst(CString(clsMemName)),
										pos: null
									}],
									pos:null
								});
							}
							if (td.fields.exists(function(f) return f.name == field.name)) {
								trace('warning: ${td.pack.join(".")}.${td.name}.${field.name} has already been added');
							} else {
								td.fields.push(field);
							}
						} else { //not callable
							var field:Field = {
								doc: getdoc(clsMemObj),
								meta: [],
								access: [AStatic, APublic],
								name: clsMemName,
								kind: FVar(macro:Dynamic),
								pos: null
							};
							if (isHxKeyword(clsMemName)) {
								field.name = "_" + clsMemName;
								field.meta.push({
									name:":native",
									params: [{
										expr: EConst(CString(clsMemName)),
										pos: null
									}],
									pos:null
								});
							}
							if (td.fields.exists(function(f) return f.name == field.name)) {
								trace('warning: ${td.pack.join(".")}.${td.name}.${field.name} has already been added');
							} else {
								td.fields.push(field);
							}
						}
					}
				} else {
					//TODO probably a typedef
					// trace('probably a typedef in $moduleName $memName: ${memObj.__module__} ${memObj.__name__}');
				}
			} else { // is a module member but is not a mobule/class
				var td = getTd(moduleName, "");

				if (!re_ident.match(memName)) throw memName;

				if (callable(memObj)) {
					var sig = try {
						Inspect.signature(memObj);
					} catch(e:Dynamic) {
						null;
					}

					var fun = if (sig != null) {
						sigToFun(sig);
					} else {
						{
							params:[],
							args: [{
								opt: false,
								name: "args",
								type: macro:haxe.extern.Rest<Dynamic>
							}],
							ret: macro:Dynamic,
							expr: null
						}
					}
					var field:Field = {
						doc: getdoc(memObj),
						meta: [],
						access: [AStatic, APublic],
						name: memName,
						kind: FFun(fun),
						pos: null
					};
					if (isHxKeyword(memName)) {
						field.name = "_" + memName;
						field.meta.push({
							name:":native",
							params: [{
								expr: EConst(CString(memName)),
								pos: null
							}],
							pos:null
						});
					}
					if (td.fields.exists(function(f) return f.name == field.name)) {
						trace('warning: ${td.pack.join(".")}.${td.name}.${field.name} has already been added');
					} else {
						td.fields.push(field);
					}
				} else {
					var field:Field = {
						doc: getdoc(memObj),
						meta: [],
						access: [AStatic, APublic],
						name: memName,
						kind: FVar(macro:Dynamic),
						pos: null
					};
					if (isHxKeyword(memName)) {
						field.name = "_" + memName;
						field.meta.push({
							name:":native",
							params: [{
								expr: EConst(CString(memName)),
								pos: null
							}],
							pos:null
						});
					}
					if (td.fields.exists(function(f) return f.name == field.name)) {
						trace('warning: ${td.pack.join(".")}.${td.name}.${field.name} has already been added');
					} else {
						td.fields.push(field);
					}
				}
			}
		}
	}

	function getdoc(obj:Dynamic):Null<String> {
		var doc = Inspect.getdoc(obj);
		return if (doc == null) {
			null;
		} else if (doc != Inspect.getdoc(type(obj))) {
			doc.replace("*/", "* /"); //TODO: Not sure what is the right way to handle it. `*/` usually comes from example with regexp
		} else {
			null;
		}
	}

	static function upperCaseFirstLetter(str:String):String {
		var re_letter = ~/[A-Za-z]/;
		if (!re_letter.match(str)) throw "no letter in " + str;
		return re_letter.matchedLeft() + re_letter.matched(0).toUpperCase() + re_letter.matchedRight();
	}

	static function lowerCaseFirstLetter(str:String):String {
		var re_letter = ~/[A-Za-z]/;
		if (!re_letter.match(str)) throw "no letter in " + str;
		return re_letter.matchedLeft() + re_letter.matched(0).toLowerCase() + re_letter.matchedRight();
	}

	static function hxName(name:String):String {
		if (name == "") return "";
		
		name = upperCaseFirstLetter(name);
		name = name.replace(".", "_");

		if (!re_type.match(name)) throw "invalid class name: " + name;

		return name;
	}

	static function isHxKeyword(name:String):Bool {
		// https://github.com/HaxeFoundation/haxe/blob/development/lexer.mll
		return [
			"function","class","static","var","if","else","while","do","for",
			"break","return","continue","extends","implements","import",
			"switch","case","default","public","private","try","untyped",
			"catch","new","this","throw","extern","enum","in","interface",
			"cast","override","dynamic","typedef","package",
			"inline","using","null","true","false","abstract","macro",
			"__init__" //haxe 3.2.1 has issue with this..
		].indexOf(name) >= 0;
	}

	static function sigToFun(sig:Dynamic):Function {
		var args = [for (p in (sig.parameters:python.Dict<String, Dynamic>)) {
			// trace(Reflect.field(p, "default") == Inspect.Parameter.empty);
			var arg:FunctionArg = {
				opt: if (python.Syntax.binop(Reflect.field(p, "default"), "is", inspect.Parameter.empty)) false else true,
				name: if (isHxKeyword(p.name)) "_" + p.name else p.name,
				type: macro:Dynamic,
				// value: null
			};
			arg;
		}];

		return {
			params:[],
			args: args,
			ret: macro:Dynamic,
			expr: null
		}
	}

	static function hxVal(v:String):Option<Expr> {
		return switch (v) {
			case null:
				None;
			case "None":
				Some(macro null);
			case "True":
				Some(macro true);
			case "False":
				Some(macro false);
			case "<built-in function repr>":
				Some(macro haxe.Constraints.Function);
			case ~/^<class '(.+)'>$/.match(_) => v:
				Some(null);
			case v if (~/^["'].*["']$/.match(v)):
				Some({
					expr: EConst(CString(v)),
					pos: null
				});
			case v if (Std.parseInt(v) != null):
				Some({
					expr: EConst(CInt(v)),
					pos: null
				});
			case v if (!Math.isNaN(Std.parseFloat(v))):
				Some({
					expr: EConst(CFloat(v)),
					pos: null
				});
			case v:
				Some(null);
		}
	}

	function getTd(module:String, fullname:String):TypeDefinition {
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
				 		hxName(pack[0]);
				 	case _:
				 		hxName(pack.pop());
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
			case null:
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
				switch (td.meta[0]) {
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

	static function main():Void {
		switch (args()) {
			case [moduleName, outPath]:
				var main = new Main();
				trace('process module: $moduleName');
				main.processModule(moduleName);
				for (pkg in (list(pkgutil.Pkgutil.walk_packages(null, "", function(x) return null)):Array<Tuple<Dynamic>>)) {
					var modname:String = pkg[1];
					if (
						modname.startsWith(moduleName + ".") &&
						![
							"numpy.distutils",
							"numpy.f2py.__main__",
							"numpy.testing"
						].exists(function(skip) return modname == skip || modname.startsWith(skip + "."))
					) {
						trace('process module: $modname');
						main.processModule(modname);
					}
				}
				main.write(absolutePath(outPath));
			case _:
				throw "There should be exactly 2 arguments: moduleName, outPath";
		}
	}
}