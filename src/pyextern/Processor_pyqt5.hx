package pyextern;

import Type as StdType;
import haxe.macro.*;
import haxe.macro.Expr;
import haxe.xml.*;
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
	override public function sigToFun(sig:Dynamic, doc:Null<String>):Function {
		if (sig == null && doc != null) {
			var funcR = ~/^(.+?)\((.*)\)(?:\s*->\s*(.+))?$/;
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
				return {
					params:[],
					args: args,
					ret: ret == null ? macro:Void : switch (hxType(ret)) {
						case null: macro:Dynamic;
						case ct: ct;
					},
					expr: null
				}
			}
		}
		return super.sigToFun(sig, doc);
	}
}