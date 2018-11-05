package pyextern;

import Type as StdType;
import haxe.macro.*;
import haxe.macro.Expr;
import haxe.xml.*;
using Lambda;
using StringTools;

@process_modules("PyQt5")
class Process_pyqt5 extends Processor {
	override public function sigToFun(sig:Dynamic, doc:Null<String>):Function {
		if (sig == null && doc != null) {
			var funcR = ~/^(.+)\((.*)\)(?:\s*->\s*(.+))?$/;
			if (funcR.match(doc)) {
				var funcName = funcR.matched(1);
				var funcArgs = funcR.matched(2);
				funcArgs = ~/Union\[.+?\]/g.replace(funcArgs, "arg");
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
						opt: false,
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