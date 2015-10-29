/* This file is generated, do not edit! */
package scipy.special;
@:pythonImport("scipy.special._testutils") extern class _Testutils {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Assert that works in release mode.
		Accepts callable msg to allow deferring evaluation until failure.
		
		The Python built-in ``assert`` does not work when executing code in
		optimized mode (the ``-O`` flag) - no byte-code is generated for it.
		
		For documentation on usage, refer to the Python documentation.
	**/
	static public function assert_(val:Dynamic, ?msg:Dynamic):Dynamic;
	static public function assert_func_equal(func:Dynamic, results:Dynamic, points:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?param_filter:Dynamic, ?knownfailure:Dynamic, ?vectorized:Dynamic, ?dtype:Dynamic, ?nan_ok:Dynamic, ?ignore_inf_sign:Dynamic):Dynamic;
	/**
		Assert that `a` and `b` are equal to tolerance ``atol + rtol*abs(b)``
	**/
	static public function assert_tol_equal(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Enable special function errors (such as underflow, overflow,
		loss of precision, etc.)
	**/
	static public function with_special_errors(func:Dynamic):Dynamic;
}