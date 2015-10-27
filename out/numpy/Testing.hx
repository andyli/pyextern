/* This file is generated, do not edit! */
package numpy;
@:native("numpy.testing") extern class Testing {
	static public function assert_allclose(actual:Dynamic, desired:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?equal_nan:Dynamic = false, ?err_msg:Dynamic, ?verbose:Dynamic = true):Void;
	static public function assert_almost_equal(actual:Dynamic, desired:Dynamic, ?decimal:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic = true):Void;
	static public function assert_approx_equal(actual:Dynamic, desired:Dynamic, ?significant:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic = true):Void;
	static public function assert_array_almost_equal(x:Dynamic, y:Dynamic, ?decimal:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic = true):Void;
	static public function assert_array_almost_equal_nulp(x:Dynamic, y:Dynamic, ?nulp:Dynamic):Dynamic;
	static public function assert_array_equal(x:Dynamic, y:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic = true):Void;
	static public function assert_array_less(x:Dynamic, y:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic = true):Void;
	static public function assert_array_max_ulp(a:Dynamic, b:Dynamic, ?maxulp:Dynamic, ?dtype:Dynamic = null):Dynamic;
	static public function assert_equal(actual:Dynamic, desired:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic = true):Void;
	static public function assert_raises(args:haxe.extern.Rest<Dynamic>):Void;
	static public function assert_raises_regex(args:haxe.extern.Rest<Dynamic>):Void;
	static public function assert_string_equal(actual:Dynamic, desired:Dynamic):Void;
	static public function assert_warns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function decorate_methods(cls:Dynamic, decorator:Dynamic, ?testmatch:Dynamic = null):Void;
	static public function run_module_suite(?file_to_run:Dynamic = null, ?argv:Dynamic = null):Void;
	static public function rundocs(?filename:Dynamic = null, ?raise_on_error:Dynamic = true):Void;
	public var Tester : Dynamic;
}