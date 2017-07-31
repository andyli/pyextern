/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.binomial;
@:pythonImport("tensorflow.contrib.distributions.python.ops.binomial") extern class Binomial_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		The binomial cumulative distribution function.
		
		Args:
		  k: floating point `Tensor`.
		  n: floating point `Tensor`.
		  p: floating point `Tensor`.
		
		Returns:
		  `sum_{j=0}^k p^j (1 - p)^(n - j)`.
	**/
	static public function _bdtr(k:Dynamic, n:Dynamic, p:Dynamic):Dynamic;
	static public var _binomial_sample_note : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}