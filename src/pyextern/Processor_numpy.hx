package pyextern;

import Type as StdType;
import haxe.macro.*;
import haxe.macro.Expr;
import haxe.xml.*;
using Lambda;

@process_modules("numpy")
class Process_numpy extends Processor {
	override public function docToFun(doc:String):Function {
		var xml = parseRst(doc);

		var ret:ComplexType = if (xml != null) {
			var sec =
				new Fast(xml).node.document.nodes.section
					.find(function(sec:Fast) return 
						sec.hasNode.title && 
						sec.node.title.innerHTML.toLowerCase() == "returns"
					);
			if (
				sec != null &&
				sec.hasNode.definition_list &&
				sec.node.definition_list.node.definition_list_item.hasNode.classifier
			) {
				var retDoc = sec.node.definition_list.node.definition_list_item.node.classifier.innerHTML;
				hxType(retDoc);
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
					case "array_like":
						macro:python.NativeIterable<Dynamic>;
					case "ndarray":
						macro:numpy.Ndarray;
					case "MaskedArray":
						macro:numpy.ma.MaskedArray;
					case "scalar":
						macro:Dynamic;
					case "matrix":
						macro:numpy.Matrix;
					case other:
						var curCls = StdType.getClassName(StdType.getClass(this));
						trace('${curCls}.hxType not able to handle: $currentModule $other');
						null;
				}
			case ct:
				ct;
		}
	}
}