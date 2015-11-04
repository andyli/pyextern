package pyextern;

import Type as StdType;
import haxe.macro.*;
import haxe.macro.Expr;
import haxe.xml.*;
import python.*;
import python.Tuple;
import inspect.*;
import importlib.*;
using Lambda;

@process_modules("pandas")
class Process_pandas extends Processor {
	override public function docToFun(doc:String):Function {
		var xml = parseRst(doc);

		var ret:ComplexType = if (xml != null) {
			var sec =
				new Fast(xml).node.document.nodes.section
					.find(function(sec:Fast) return 
						sec.hasNode.title && 
						sec.node.title.innerHTML.toLowerCase() == "returns"
					);
			if (sec != null && sec.hasNode.paragraph) {
				var retDoc = sec.node.paragraph.innerHTML;
				var re = ~/^([_a-z][A-Za-z0-9]*) ?: ? ([A-Za-z0-9]+)$/;
				if (re.match(retDoc)) {
					hxType(re.matched(2));
				} else null;
			} else null;
		} else null;

		return {
			params: [],
			args: null,
			ret: ret,
			expr: null
		}
	}

	override public function hxType(type:String):ComplexType {
		return switch (super.hxType(type)) {
			case null:
				switch (type) {
					case "NDFrame":
						macro:pandas.core.frame.NDFrame;
					case "ndarray":
						macro:numpy.Ndarray;
					case _ if (classes.exists(type)):
						TPath({
							pack: ["pandas"],
							name: type
						});
					case other:
						var curCls = StdType.getClassName(StdType.getClass(this));
						trace('${curCls}.hxType not able to handle: $currentModule $other');
						null;
				}
			case ct:
				ct;
		}
	}

	static var classes = {
		var module = Importlib.import_module("pandas");
		[
			for (clsTp in (Inspect.getmembers(module, Inspect.isclass):Array<Tuple2<String,Dynamic>>))
			clsTp._1 => true
		];
	}
}