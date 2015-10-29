/* This file is generated, do not edit! */
package seaborn.tests.test_categorical;
@:pythonImport("seaborn.tests.test_categorical", "TestCategoricalPlotter") extern class TestCategoricalPlotter {
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
	static public var df : Dynamic;
	static public var g : Dynamic;
	static public var h : Dynamic;
	static public var n_total : Dynamic;
	static public var rs : Dynamic;
	public function test_1d_input_data():Dynamic;
	public function test_2d_input_data():Dynamic;
	public function test_3d_input_data():Dynamic;
	public function test_default_palette_with_many_levels():Dynamic;
	public function test_default_palettes():Dynamic;
	public function test_dict_as_palette():Dynamic;
	public function test_hue_order():Dynamic;
	public function test_infer_orient():Dynamic;
	public function test_input_validation():Dynamic;
	public function test_list_of_array_input_data():Dynamic;
	public function test_longform_groupby():Dynamic;
	public function test_order():Dynamic;
	public function test_palette_desaturation():Dynamic;
	public function test_plot_units():Dynamic;
	public function test_single_long_direct_inputs():Dynamic;
	public function test_single_long_indirect_inputs():Dynamic;
	public function test_specific_color():Dynamic;
	public function test_specific_palette():Dynamic;
	public function test_wide_array_input_data():Dynamic;
	public function test_wide_df_data():Dynamic;
	static public var u : Dynamic;
	static public var x : Dynamic;
	static public var x_df : Dynamic;
	static public var y : Dynamic;
}