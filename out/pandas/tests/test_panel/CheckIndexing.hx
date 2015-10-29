/* This file is generated, do not edit! */
package pandas.tests.test_panel;
@:pythonImport("pandas.tests.test_panel", "CheckIndexing") extern class CheckIndexing {
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
	public function _check_view(indexer:Dynamic, comp:Dynamic):Dynamic;
	static public var _multiprocess_can_split_ : Dynamic;
	public function test_comparisons():Dynamic;
	public function test_delitem_and_pop():Dynamic;
	public function test_get_value():Dynamic;
	public function test_getitem():Dynamic;
	public function test_getitem_fancy_ints():Dynamic;
	public function test_getitem_fancy_labels():Dynamic;
	public function test_getitem_fancy_slice():Dynamic;
	public function test_getitem_fancy_xs():Dynamic;
	public function test_getitem_fancy_xs_check_view():Dynamic;
	public function test_invert():Dynamic;
	public function test_ix_align():Dynamic;
	public function test_ix_frame_align():Dynamic;
	public function test_ix_setitem_slice_dataframe():Dynamic;
	public function test_logical_with_nas():Dynamic;
	public function test_major_xs():Dynamic;
	public function test_major_xs_mixed():Dynamic;
	public function test_minor_xs():Dynamic;
	public function test_minor_xs_mixed():Dynamic;
	public function test_neg():Dynamic;
	public function test_set_minor_major():Dynamic;
	public function test_set_value():Dynamic;
	public function test_setitem():Dynamic;
	public function test_setitem_ndarray():Dynamic;
	public function test_xs():Dynamic;
}