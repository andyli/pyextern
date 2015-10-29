/* This file is generated, do not edit! */
package seaborn.tests.test_matrix;
@:pythonImport("seaborn.tests.test_matrix", "TestHeatmap") extern class TestHeatmap {
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
	public function __init__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var default_kws : Dynamic;
	static public var df_norm : Dynamic;
	static public var df_unif : Dynamic;
	static public var letters : Dynamic;
	static public var rs : Dynamic;
	public function test_array_with_nans():Dynamic;
	public function test_centered_vlims():Dynamic;
	public function test_custom_cmap():Dynamic;
	public function test_custom_diverging_vlims():Dynamic;
	public function test_custom_sequential_vlims():Dynamic;
	public function test_custom_ticklabel_interval():Dynamic;
	public function test_custom_ticklabels():Dynamic;
	public function test_default_diverging_vlims():Dynamic;
	public function test_default_sequential_vlims():Dynamic;
	public function test_df_input():Dynamic;
	public function test_df_multindex_input():Dynamic;
	public function test_heatmap_annotation():Dynamic;
	public function test_heatmap_annotation_with_mask():Dynamic;
	public function test_heatmap_axes():Dynamic;
	public function test_heatmap_cbar():Dynamic;
	public function test_heatmap_inner_lines():Dynamic;
	public function test_heatmap_ticklabel_rotation():Dynamic;
	public function test_mask():Dynamic;
	public function test_mask_input():Dynamic;
	public function test_mask_validation():Dynamic;
	public function test_missing_data_mask():Dynamic;
	public function test_ndarray_input():Dynamic;
	public function test_robust_sequential_vlims():Dynamic;
	public function test_square_aspect():Dynamic;
	public function test_tickabels_off():Dynamic;
	static public var x_norm : Dynamic;
	static public var x_unif : Dynamic;
}