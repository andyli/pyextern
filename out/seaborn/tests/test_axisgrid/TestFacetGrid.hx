/* This file is generated, do not edit! */
package seaborn.tests.test_axisgrid;
@:pythonImport("seaborn.tests.test_axisgrid", "TestFacetGrid") extern class TestFacetGrid {
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
	static public var df : Dynamic;
	/**
		Ensure that all figures are closed on exit.
	**/
	static public function teardown_class():Dynamic;
	public function test_axes_array_size():Dynamic;
	public function test_axis_lims():Dynamic;
	public function test_col_wrap():Dynamic;
	public function test_data_generator():Dynamic;
	public function test_data_orders():Dynamic;
	public function test_dropna():Dynamic;
	public function test_figure_size():Dynamic;
	public function test_figure_size_with_legend():Dynamic;
	public function test_get_boolean_legend_data():Dynamic;
	public function test_gridsic_kws_old_mpl(kwargs:Dynamic):Dynamic;
	public function test_gridspec_kws(kwargs:Dynamic):Dynamic;
	public function test_gridspec_kws_col_wrap(kwargs:Dynamic):Dynamic;
	public function test_hue_kws():Dynamic;
	public function test_legend_data():Dynamic;
	public function test_legend_data_missing_level():Dynamic;
	public function test_legend_options():Dynamic;
	public function test_legendout_with_colwrap():Dynamic;
	public function test_map():Dynamic;
	public function test_map_dataframe():Dynamic;
	public function test_normal_axes():Dynamic;
	public function test_palette():Dynamic;
	public function test_self_axes():Dynamic;
	public function test_self_data():Dynamic;
	public function test_self_fig():Dynamic;
	public function test_set():Dynamic;
	public function test_set_axis_labels():Dynamic;
	public function test_set_ticklabels():Dynamic;
	public function test_set_titles():Dynamic;
	public function test_set_titles_margin_titles():Dynamic;
	public function test_single_axes():Dynamic;
	public function test_subplot_kws():Dynamic;
	public function test_wrapped_axes():Dynamic;
}