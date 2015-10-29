/* This file is generated, do not edit! */
package pandas.tests.test_series;
@:pythonImport("pandas.tests.test_series", "CheckNameIntegration") extern class CheckNameIntegration {
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
	static public var _multiprocess_can_split_ : Dynamic;
	public function _pickle_roundtrip_name(obj:Dynamic):Dynamic;
	public function test_append_preserve_name():Dynamic;
	public function test_argsort_preserve_name():Dynamic;
	public function test_binop_maybe_preserve_name():Dynamic;
	public function test_combine_first_dt64():Dynamic;
	public function test_combine_first_name():Dynamic;
	public function test_copy_index_name_checking():Dynamic;
	public function test_copy_name():Dynamic;
	public function test_delitem():Dynamic;
	public function test_dt_accessor_api():Dynamic;
	public function test_dt_namespace_accessor():Dynamic;
	public function test_get():Dynamic;
	public function test_getitem_negative_out_of_bounds():Dynamic;
	public function test_getitem_preserve_name():Dynamic;
	public function test_getitem_setitem_ellipsis():Dynamic;
	public function test_multilevel_name_print():Dynamic;
	public function test_multilevel_preserve_name():Dynamic;
	public function test_name_printing():Dynamic;
	public function test_pickle_preserve_name():Dynamic;
	public function test_scalarop_preserve_name():Dynamic;
	public function test_sort_index_name():Dynamic;
	public function test_strftime():Dynamic;
	public function test_tab_completion():Dynamic;
	public function test_to_sparse_pass_name():Dynamic;
	public function test_valid_dt_with_missing_values():Dynamic;
}