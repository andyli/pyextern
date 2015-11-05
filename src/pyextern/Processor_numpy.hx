package pyextern;

import Type as StdType;
import haxe.macro.*;
import haxe.macro.Expr;
import haxe.xml.*;
using Lambda;

@process_modules("numpy")
class Process_numpy extends Processor {
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