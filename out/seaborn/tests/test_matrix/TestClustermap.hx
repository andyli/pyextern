/* This file is generated, do not edit! */
package seaborn.tests.test_matrix;
@:pythonImport("seaborn.tests.test_matrix", "TestClustermap") extern class TestClustermap {
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
	static public var col_colors : Dynamic;
	static public var default_kws : Dynamic;
	static public var default_plot_kws : Dynamic;
	static public var df_norm : Dynamic;
	static public var df_norm_leaves : Dynamic;
	static public var letters : Dynamic;
	static public var row_colors : Dynamic;
	static public var rs : Dynamic;
	public function test_cluster_false():Dynamic;
	public function test_cluster_false_row_col_colors():Dynamic;
	public function test_color_list_to_matrix_and_cmap():Dynamic;
	public function test_color_list_to_matrix_and_cmap_axis1():Dynamic;
	public function test_colors_input():Dynamic;
	public function test_colors_input_custom_cmap():Dynamic;
	public function test_corr_df_input():Dynamic;
	public function test_df_input():Dynamic;
	public function test_mask_reorganization():Dynamic;
	public function test_ndarray_input():Dynamic;
	public function test_nested_color_list_to_matrix_and_cmap():Dynamic;
	public function test_nested_colors_input():Dynamic;
	public function test_pivot_input():Dynamic;
	public function test_plot_dendrograms():Dynamic;
	public function test_row_col_colors():Dynamic;
	public function test_savefig():Dynamic;
	public function test_standard_scale():Dynamic;
	public function test_standard_scale_axis0():Dynamic;
	public function test_ticklabel_reorganization():Dynamic;
	public function test_z_score():Dynamic;
	public function test_z_score_axis0():Dynamic;
	public function test_z_score_standard_scale():Dynamic;
	static public var x_norm : Dynamic;
	static public var x_norm_dendrogram : Dynamic;
	static public var x_norm_distances : Dynamic;
	static public var x_norm_leaves : Dynamic;
	static public var x_norm_linkage : Dynamic;
}