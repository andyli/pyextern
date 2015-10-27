package pyextern;

import haxe.xml.*;
import Sys.*;
import sys.FileSystem.*;
import sys.io.File.*;
import haxe.ds.*;
import haxe.io.*;
import haxe.macro.*;
import haxe.macro.Expr;
using StringTools;
using selecthxml.SelectDom;
using Lambda;

class Main {
	static var re_ident = ~/^[A-Za-z_][A-Za-z0-9_]*$/;
	static var re_type = ~/^[A-Z_][A-Za-z0-9_]*$/;
	public var tds = new Map<String, TypeDefinition>();

	public function new():Void {}

	public function write(outPath:String):Void {
		//command("rm", ["-rf", outPath]);
		createDirectory(outPath);
		setCwd(outPath);

		var printer = new Printer();
		for (td in tds) {
			var clsStr = "/* This file is generated, do not edit! */\n" + printer.printTypeDefinition(td);
			var packDir = Path.join(td.pack);
			if (packDir != "")
				createDirectory(packDir);
			saveContent(Path.join([packDir, td.name + ".hx"]), clsStr);
		}
	}

	public function process(path:String):Void {
		if (isDirectory(path)) {
			for (item in readDirectory(path)) {
				process(Path.join([path, item]));
			}
			return;
		}

		if (!path.endsWith(".xml")) return;

		trace(path);
		
		var content = try {
			Xml.parse(getContent(path));
		} catch (e:Dynamic) {
			trace("!!! invalid xml");
			throw path;
		}

		for (desc in content.select("desc[domain=py]")) {
			if (desc.get("objtype") != desc.get("desctype")) throw "!!!";
			var desc_signature = desc.select("desc_signature")[0];
			// trace([for (att in desc_signature.attributes()) att + ": " + desc_signature.get(att)]);
			var name = new Fast(desc_signature.select("desc_name")[0]).innerData;
			switch (desc.get("objtype")) {
				case "class" | "exception":
					var td = getTd(desc_signature.get("module"), desc_signature.get("fullname"));
				case "data", "function", "staticmethod", "classmethod":
					var td = getTd(desc_signature.get("module"), desc_signature.get("class"));
					if (!re_ident.match(name)) throw desc_signature;
					var field:Field = {
						meta: [],
						access: [AStatic, APublic],
						name: name,
						kind: FFun({
							params: [],
							args: hxArgs(desc_signature.select("desc_parameterlist")[0]),
							ret: try hxRet(desc
								.select("desc_content > field_list > field")
								.find(function(field:Xml) return new Fast(field.select("field_name")[0]).innerData == "Returns")
							) catch (e:Dynamic) throw desc,
							expr: null
						}),
						pos: null
					};
					if (isHxKeyword(name)) {
						field.name = "_" + name;
						field.meta.push({
							name:":native",
							params: [{
								expr: EConst(CString(name)),
								pos: null
							}],
							pos:null
						});
					}
					td.fields.push(field);
				case "attribute":
					var cls = desc_signature.get("class");
					var td = getTd(desc_signature.get("module"), cls);
					var field:Field = {
						meta: [],
						access: [name.startsWith("_") ? APrivate : APublic],
						name: name,
						kind: FVar(macro:Dynamic),
						pos: null
					};
					if (isHxKeyword(name)) {
						field.name = "_" + name;
						field.meta.push({
							name:":native",
							params: [{
								expr: EConst(CString(name)),
								pos: null
							}],
							pos:null
						});
					}
					td.fields.push(field);
				case "method":
					if (desc_signature.get("class") == "") throw desc_signature;
					var td = getTd(desc_signature.get("module"), desc_signature.get("class"));
					var field:Field = {
						meta: [],
						access: [name.startsWith("_") ? APrivate : APublic],
						name: name,
						kind: FFun({
							params: [],
							args: hxArgs(desc_signature.select("desc_parameterlist")[0]),
							ret: try hxRet(desc
								.select("desc_content > field_list > field")
								.find(function(field:Xml) return new Fast(field.select("field_name")[0]).innerData == "Returns")
							) catch (e:Dynamic) throw desc,
							expr: null
						}),
						pos: null
					};
					if (isHxKeyword(name)) {
						field.name = "_" + name;
						field.meta.push({
							name:":native",
							params: [{
								expr: EConst(CString(name)),
								pos: null
							}],
							pos:null
						});
					}
					td.fields.push(field);
				case desctype:
					throw desctype;
			}
		}
	}

	static function hxName(name:String):String {
		return if (name.length > 0)
			name.charAt(0).toUpperCase() + name.substr(1);
		else
			"";
	}

	static function isHxKeyword(name:String):Bool {
		// https://github.com/HaxeFoundation/haxe/blob/development/lexer.mll
		return [
			"function","class","static","var","if","else","while","do","for",
			"break","return","continue","extends","implements","import",
			"switch","case","default","public","private","try","untyped",
			"catch","new","this","throw","extern","enum","in","interface",
			"cast","override","dynamic","typedef","package",
			"inline","using","null","true","false","abstract","macro"
		].indexOf(name) >= 0;
	}

	static function hxRet(fieldReturns:Xml):ComplexType {
		if (fieldReturns == null) {
			return macro:Void;
		}
		var retStr = new Fast(fieldReturns.select("field_body > paragraph")[0]).innerHTML;
		var ret = retStr.split(":");
		if (ret.indexOf(",") >= 0) {
			return macro:Array<Dynamic>;
		} else {
			return macro:Dynamic;
		}
	}

	static function hxArgs(desc_parameterlist:Xml):Array<FunctionArg> {
		try {
			var args:Array<FunctionArg> = [];
			var brackets = 0;
			var bracketedParams = [];
			for (desc_parameter in desc_parameterlist.select("desc_parameter")) {
				var paramStr = new Fast(desc_parameter).innerData;
				if (bracketedParams.length > 0) {
					bracketedParams.push(paramStr);
					if ((paramStr.indexOf(")") >= 0) && (--brackets == 0)) {
						paramStr = bracketedParams.join(",");
						bracketedParams = [];
					} else {
						continue;
					}
				} else if (paramStr.indexOf("(") >= 0) {
					bracketedParams.push(paramStr);
					continue;
				}
				var param = ~/\s*=\s*/.split(paramStr);
				if (param.length < 1 || param.length > 2) throw param;
				var re_args = ~/^\*(.+)$/;
				var re_kwargs = ~/^\*\*(.+)$/;
				switch (param[0]) {
					case "...":
						throw "rest args";
					case v if (re_kwargs.match(v)):
						throw "kwargs";
						args.push({
							opt: true,
							name: re_kwargs.matched(1),
							type: macro:python.KwArgs<Dynamic>
						});
					case v if (re_args.match(v)):
						throw "varargs";
						args.push({
							opt: true,
							name: re_args.matched(1),
							type: macro:python.VarArgs<Dynamic>
						});
					case v if (~/^\(.*\.\.\.\)$/.match(v)):
						var arg:FunctionArg = {
							opt: false,
							name: "sequence",
							type: macro:Dynamic,
							value: null
						};
						switch (hxVal(param[1])) {
							case Some(val):
								arg.opt = true;
								arg.value = val;
							case None:
								arg.opt = false;
						}
						args.push(arg);
					case name if (re_ident.match(name)):
						var arg:FunctionArg = {
							opt: false,
							name: if (isHxKeyword(name)) "_" + name else name,
							type: macro:Dynamic,
							value: null
						};
						switch (hxVal(param[1])) {
							case Some(val):
								arg.opt = true;
								arg.value = val;
							case None:
								arg.opt = false;
						}
						args.push(arg);
					case "|dtype":
						var arg:FunctionArg = {
							opt: false,
							name: "dtype",
							type: macro:Dynamic,
							value: null
						};
						switch (hxVal(param[1])) {
							case Some(val):
								arg.opt = true;
								arg.value = val;
							case None:
								arg.opt = false;
						}
						args.push(arg);
					case name:
						trace(name);
						throw name;
				}
			}
			return args;
		} catch (e:Dynamic) {
			return [{
				opt: false,
				name: "args",
				type: macro:haxe.extern.Rest<Dynamic>
			}];
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
			case v if (!Math.isNaN(Std.parseFloat(v))):
				Some({
					expr: EConst(CFloat("")),
					pos: null
				});
			case v:
				Some(null);
		}
	}

	function getTd(module:String, fullname:String):TypeDefinition {
		var pack = module.split(".");
		var hxName = switch (fullname) {
			case "":
				hxName(pack.pop());
			case _:
				hxName(fullname);
		}
		var hxFullName = pack.concat([hxName]).join(".");
		var native = fullname == "" ? module : module + "." + fullname;
		return switch (tds[hxFullName]) {
			case null:
				tds[hxFullName] = {
					pack : pack,
					name : hxName,
					pos : null,
					meta : [{
						name: ":native",
						params: [{
							expr: EConst(CString(native)),
							pos: null
						}],
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
						name: ":native",
						params: [{
							expr: EConst(CString(native))
						}]
					}: //pass
					case nativeMeta:
						throw nativeMeta;
				}
				td;
		}
	}

	static function main():Void {
		switch (args()) {
			case [docPath, outPath]:
				var args = args();
				var main = new Main();
				main.process(absolutePath(Path.join([args[0], "generated"])));
				main.write(absolutePath(args[1]));
			case _:
				throw "There should be exactly 2 arguments: docPath outPath";
		}
	}
}