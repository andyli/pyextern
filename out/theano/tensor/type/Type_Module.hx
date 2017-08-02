/* This file is generated, do not edit! */
package theano.tensor.type;
@:pythonImport("theano.tensor.type") extern class Type_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	static public var absolute_import : Dynamic;
	static public var config : Dynamic;
	static public var division : Dynamic;
	static public function hashtype(self:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Parameters
		----------
		allow_remove_inf
		    If True, when there is an inf in a, we allow any value in b in
		    that position. Event -inf
		allow_remove_nan
		    If True, when there is a nan in a, we allow any value in b in
		    that position. Event +-inf
		rtol
		    Relative tolerance, passed to _allclose.
		atol
		    Absolute tolerance, passed to _allclose.
	**/
	static public function values_eq_approx(a:Dynamic, b:Dynamic, ?allow_remove_inf:Dynamic, ?allow_remove_nan:Dynamic, ?rtol:Dynamic, ?atol:Dynamic):Dynamic;
	static public function values_eq_approx_always_true(a:Dynamic, b:Dynamic):Dynamic;
	static public function values_eq_approx_remove_inf(a:Dynamic, b:Dynamic):Dynamic;
	static public function values_eq_approx_remove_inf_nan(a:Dynamic, b:Dynamic):Dynamic;
	static public function values_eq_approx_remove_nan(a:Dynamic, b:Dynamic):Dynamic;
}