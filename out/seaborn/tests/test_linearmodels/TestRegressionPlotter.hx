/* This file is generated, do not edit! */
package seaborn.tests.test_linearmodels;
@:pythonImport("seaborn.tests.test_linearmodels", "TestRegressionPlotter") extern class TestRegressionPlotter {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	static public var bins_given : Dynamic;
	static public var bins_numeric : Dynamic;
	static public var bw_err : Dynamic;
	static public var df : Dynamic;
	static public var grid : Dynamic;
	static public var n_boot : Dynamic;
	static public var p : Dynamic;
	static public var rs : Dynamic;
	public function test_bin_results():Dynamic;
	public function test_ci():Dynamic;
	public function test_dropna():Dynamic;
	public function test_estimate_cis():Dynamic;
	public function test_estimate_data():Dynamic;
	public function test_estimate_units():Dynamic;
	public function test_fast_regression(kwargs:Dynamic):Dynamic;
	public function test_logistic_regression(kwargs:Dynamic):Dynamic;
	public function test_lowess_regression(kwargs:Dynamic):Dynamic;
	public function test_numeric_bins():Dynamic;
	public function test_partial():Dynamic;
	public function test_provided_bins():Dynamic;
	public function test_regress_logx():Dynamic;
	public function test_regress_n_boot(kwargs:Dynamic):Dynamic;
	public function test_regress_poly(kwargs:Dynamic):Dynamic;
	public function test_regress_without_bootstrap(kwargs:Dynamic):Dynamic;
	public function test_regression_limits():Dynamic;
	public function test_regression_options():Dynamic;
	public function test_robust_regression(kwargs:Dynamic):Dynamic;
	public function test_scatter_data():Dynamic;
	public function test_variables_from_frame():Dynamic;
	public function test_variables_from_mix():Dynamic;
	public function test_variables_from_series():Dynamic;
}