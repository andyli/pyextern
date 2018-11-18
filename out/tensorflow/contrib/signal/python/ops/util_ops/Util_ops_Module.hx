/* This file is generated, do not edit! */
package tensorflow.contrib.signal.python.ops.util_ops;
@:pythonImport("tensorflow.contrib.signal.python.ops.util_ops") extern class Util_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns the greatest common divisor via Euclid's algorithm.
		
		Args:
		  a: The dividend. A scalar integer `Tensor`.
		  b: The divisor. A scalar integer `Tensor`.
		  name: An optional name for the operation.
		
		Returns:
		  A scalar `Tensor` representing the greatest common divisor between `a` and
		  `b`.
		
		Raises:
		  ValueError: If `a` or `b` are not scalar integers.
	**/
	static public function gcd(a:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}