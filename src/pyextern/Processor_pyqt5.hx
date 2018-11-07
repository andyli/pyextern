package pyextern;

import Type as StdType;
import haxe.macro.*;
import haxe.macro.Expr;
import haxe.xml.*;
import inspect.*;
using Lambda;
using StringTools;

@process_modules("PyQt5")
class Process_pyqt5 extends Processor {
	static function removeBrackets(str:String, open:String, close:String):String {
		var result = "";
		var opened = 0;
		for (i in 0...str.length) {
			var c = str.charAt(i);
			if (c == open)
				opened++;
			else if (c == close)
				opened--;
			else if (opened == 0)
				result += c;
		}
		return result;
	}
	override public function isMethod(memObj:Dynamic):Bool {
		var doc:String = Inspect.getdoc(memObj);
		if (doc != null && doc.endsWith(" [signal]")) {
			return false;
		}

		return super.isMethod(memObj);
	}
	override public function isFieldStatic(memObj:Dynamic):Bool {
		var doc:String = Inspect.getdoc(memObj);
		if (doc != null && doc.endsWith(" [signal]")) {
			return false;
		}
		return super.isFieldStatic(memObj);
	}
	override public function sigToFun(sig:Dynamic, doc:Null<String>):Function {
		if (sig == null && doc != null) {
			var docLines = doc.split("\n");
			var funcR = ~/^(.+?)\((.*)\)(?:\s*->\s*(.+))?$/;
			if (docLines.length > 0 && docLines.foreach(funcR.match)){
				var funcs = [
					for (doc in docLines)
					if (funcR.match(doc)) {
						var funcName = funcR.matched(1);
						var funcArgs = funcR.matched(2);
						if (funcArgs.indexOf("(") >= 0) {
							funcArgs = removeBrackets(funcArgs, "(", ")");
						}
						if (funcArgs.indexOf("[") >= 0) {
							funcArgs = removeBrackets(funcArgs, "[", "]");
						}
						var ret = funcR.matched(3);
						var args = funcArgs == "" ? [] : funcArgs.split(",").map(StringTools.trim).map(function(a) {
							var name = ~/^[A-Za-z0-9]+$/.match(a) ? a : {
								var r = ~/^[A-Za-z0-9]+/;
								if (r.match(a)) {
									r.matched(0);
								} else {
									"_";
								}
							}
							return ({
								opt: a.indexOf("=") >= 0,
								name: name,
								type: switch (hxType(name)) {
									case null: macro:Dynamic;
									case ct: ct;
								},
							}:FunctionArg);
						});
						{
							params:[],
							args: args,
							ret: ret == null ? macro:Void : switch (hxType(ret)) {
								case null: macro:Dynamic;
								case ct: ct;
							},
							expr: null
						}
					}
				];
				var sameArgs = funcs.fold(function(f:Function, sameArgs:Array<FunctionArg>){
					var allSame = true;
					return [
						for (i in 0...sameArgs.length)
						if (
							allSame && (
								allSame = (
									i < f.args.length &&
									f.args[i].name == sameArgs[i].name &&
									f.args[i].opt == sameArgs[i].opt
								)
							)
						)
						sameArgs[i]
					];
				}, funcs[0].args);

				var hasRest = funcs.exists(function(f) return f.args.length > sameArgs.length);
				var sameRet = funcs.foreach(function(f) return ComplexTypeTools.toString(f.ret) == ComplexTypeTools.toString(funcs[0].ret));
				return {
					params:[],
					args: !hasRest ? sameArgs : sameArgs.concat([{
						opt: false,
						name: "args",
						type: macro:haxe.extern.Rest<Dynamic>
					}]),
					ret: sameRet ? funcs[0].ret : macro:Dynamic,
					expr: null
				}
			}
		}
		return super.sigToFun(sig, doc);
	}
}