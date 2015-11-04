package pyextern;

import Type as StdType;
import haxe.ds.*;
import haxe.macro.*;
import haxe.macro.Expr;
import haxe.xml.Fast;
import python.Tuple;
import python.lib.Builtins.*;
import inspect.*;
import pyextern.Main.*;
using StringTools;
using Lambda;

class Processor {
	public function new():Void {};

	public function type(object:Dynamic):Dynamic {
		return python.Syntax.callField(python.lib.Builtins, "type", object);
	}

	public function getdoc(obj:Dynamic):Null<String> {
		var doc = Inspect.getdoc(obj);
		return if (doc == null) {
			null;
		} else if (doc != Inspect.getdoc(type(obj))) {
			doc.replace("*/", "* /"); //TODO: Not sure what is the right way to handle it. `*/` usually comes from example with regexp
		} else {
			null;
		}
	}

	static var rstParser = new docutils.parsers.rst.Parser();
	static var docDefaults = new docutils.frontend.OptionParser([docutils.parsers.rst.Parser]).get_default_values();
	public function parseRst(doc:String):Null<Xml> {
		var document = docutils.utils.Utils.new_document("", docDefaults);
		return try {
			rstParser.parse(doc, document);
			Xml.parse(document.asdom().toxml());
		} catch (e:Dynamic) { null; }
	}
	public function docToFun(doc:String):Function {
		return {
			params: [],
			args: null,
			ret: macro:Dynamic,
			expr: null
		}
	}

	public function sigToFun(sig:Dynamic, doc:Null<String>):Function {
		var docFunc = if (doc != null) docToFun(doc) else null;

		var args = [for (p in (sig.parameters:python.Dict<String, Dynamic>)) {
			// trace(Reflect.field(p, "default") == Inspect.Parameter.empty);
			var isVarArgs = python.Syntax.binop(p.kind, "is", inspect.Parameter.VAR_POSITIONAL);
			var isKwargs = python.Syntax.binop(p.kind, "is", inspect.Parameter.VAR_KEYWORD);
			var arg:FunctionArg = {
				opt:
					isVarArgs ||
					isKwargs ||
					!python.Syntax.binop(Reflect.field(p, "default"), "is", inspect.Parameter.empty),
				name: if (isHxKeyword(p.name)) "_" + p.name else p.name,
				type:
					if (isVarArgs)
						macro:python.VarArgs<Dynamic>
					else if (isKwargs)
						macro:python.KwArgs<Dynamic>
					else
						macro:Dynamic,
				// value: null
			};
			arg;
		}];

		return {
			params:[],
			args: args,
			ret: if (docFunc != null && docFunc.ret != null) docFunc.ret else macro:Dynamic,
			expr: null
		}
	}

	var currentModule:String;
	public function processModule(module:Dynamic, moduleName:String, main:Main):Void {
		currentModule = moduleName;
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

				main.processModule(memObj, mName);
			} else if (Inspect.isclass(memObj)) {
				if (memObj.__module__ == moduleName && memObj.__name__ == memName) {
					var td = main.getTd(memObj.__module__, memObj.__name__);
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
								var fun = sigToFun(sig, Inspect.getdoc(clsMemObj));
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
								if (clsMemName == "__init__") {
									var field_new = Reflect.copy(field);
									field_new.name = "new";
									field_new.meta = [];
									field_new.kind = switch (field_new.kind) {
										case FFun(f):
											var f_new = Reflect.copy(f);
											f_new.ret = macro:Void;
											FFun(f_new);
										case _:
											throw "should be FFun";
									}
									td.fields.push(field_new);
								}
							}
						} else { //not callable
							var isInstanceField = Inspect.isdatadescriptor(clsMemObj) || Inspect.isgetsetdescriptor(clsMemObj);
							var field:Field = {
								doc: getdoc(clsMemObj),
								meta: [],
								access: isInstanceField ? [APublic] : [AStatic, APublic],
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
					// a typedef
					try {
						var td = main.getTd(moduleName, memName);
						if (main.filterModules(memObj.__module__)) { //TODO
							var real_td = main.getTd(memObj.__module__, memObj.__name__);
							td.meta = [];
							td.isExtern = false;
							td.kind = TDAlias(TPath({
								pack: real_td.pack,
								name: real_td.name
							}));
						}
					} catch (e:Dynamic) {}
				}
			} else { // is a module member but is not a mobule/class
				var td = main.getTd(moduleName, "");

				if (!re_ident.match(memName)) throw memName;

				if (callable(memObj)) {
					var sig = try {
						Inspect.signature(memObj);
					} catch(e:Dynamic) {
						null;
					}

					var fun = if (sig != null) {
						sigToFun(sig, Inspect.getdoc(memObj));
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

	public function hxType(type:String):ComplexType {
		return switch (type) {
			case "bool":
				macro:Bool;
			case "int":
				macro:Int;
			case "float":
				macro:Float;
			case "string":
				macro:String;
			case "array":
				macro:Array<Dynamic>;
			case "callable", "function":
				macro:haxe.Constraints.Function;
			case "object":
				macro:Dynamic;
			case "str":
				macro:String;
			case "tuple":
				macro:python.Tuple<Dynamic>;
			case "list":
				macro:Array<Dynamic>;
			case "dict":
				macro:python.Dict<Dynamic,Dynamic>;
			case "any":
				macro:Dynamic;
			case other:
				// var curCls = StdType.getClassName(StdType.getClass(this));
				// trace('${curCls}.hxType not able to handle: $currentModule $other');
				null;
		}
	}

	public function hxVal(v:String):Option<Expr> {
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
}