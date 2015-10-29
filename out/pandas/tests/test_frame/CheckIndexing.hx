/* This file is generated, do not edit! */
package pandas.tests.test_frame;
@:pythonImport("pandas.tests.test_frame", "CheckIndexing") extern class CheckIndexing {
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
	public function test_boolean_index_empty_corner():Dynamic;
	public function test_delitem_corner():Dynamic;
	public function test_fancy_getitem_int_labels():Dynamic;
	public function test_fancy_getitem_slice_mixed():Dynamic;
	public function test_fancy_index_int_labels_exceptions():Dynamic;
	public function test_fancy_setitem_int_labels():Dynamic;
	public function test_get():Dynamic;
	public function test_get_set_value_no_partial_indexing():Dynamic;
	public function test_get_value():Dynamic;
	public function test_getattr():Dynamic;
	public function test_getitem():Dynamic;
	public function test_getitem_boolean():Dynamic;
	public function test_getitem_boolean_casting():Dynamic;
	public function test_getitem_boolean_iadd():Dynamic;
	public function test_getitem_boolean_list():Dynamic;
	public function test_getitem_boolean_missing():Dynamic;
	public function test_getitem_dupe_cols():Dynamic;
	public function test_getitem_fancy_1d():Dynamic;
	public function test_getitem_fancy_2d():Dynamic;
	public function test_getitem_fancy_boolean():Dynamic;
	public function test_getitem_fancy_ints():Dynamic;
	public function test_getitem_fancy_scalar():Dynamic;
	public function test_getitem_fancy_slice_integers_step():Dynamic;
	public function test_getitem_iterator():Dynamic;
	public function test_getitem_ix_boolean_duplicates_multiple():Dynamic;
	public function test_getitem_ix_float_duplicates():Dynamic;
	public function test_getitem_ix_mixed_integer():Dynamic;
	public function test_getitem_list():Dynamic;
	public function test_getitem_list_duplicates():Dynamic;
	public function test_getitem_setitem_boolean_misaligned():Dynamic;
	public function test_getitem_setitem_boolean_multi():Dynamic;
	public function test_getitem_setitem_fancy_exceptions():Dynamic;
	public function test_getitem_setitem_float_labels():Dynamic;
	public function test_getitem_setitem_integer_slice_keyerrors():Dynamic;
	public function test_getitem_setitem_ix_bool_keyerror():Dynamic;
	public function test_getitem_setitem_ix_duplicates():Dynamic;
	public function test_getitem_setitem_ix_negative_integers():Dynamic;
	public function test_getitem_setitem_non_ix_labels():Dynamic;
	public function test_icol():Dynamic;
	public function test_icol_sparse_propegate_fill_value():Dynamic;
	public function test_iget_value():Dynamic;
	public function test_inplace_ops_alignment():Dynamic;
	public function test_inplace_ops_identity():Dynamic;
	public function test_irow():Dynamic;
	public function test_irow_icol_duplicates():Dynamic;
	public function test_iteritems():Dynamic;
	public function test_ix_align():Dynamic;
	public function test_ix_dup():Dynamic;
	public function test_ix_frame_align():Dynamic;
	public function test_ix_multi_take():Dynamic;
	public function test_ix_multi_take_multiindex():Dynamic;
	public function test_ix_multi_take_nonint_index():Dynamic;
	public function test_lookup():Dynamic;
	public function test_nested_exception():Dynamic;
	public function test_non_monotonic_reindex_methods():Dynamic;
	public function test_reindex_level():Dynamic;
	public function test_reindex_methods():Dynamic;
	public function test_set_value():Dynamic;
	public function test_set_value_resize():Dynamic;
	public function test_set_value_with_index_dtype_change():Dynamic;
	public function test_setattr_column():Dynamic;
	public function test_setitem():Dynamic;
	public function test_setitem_None():Dynamic;
	public function test_setitem_always_copy():Dynamic;
	public function test_setitem_ambig():Dynamic;
	public function test_setitem_boolean():Dynamic;
	public function test_setitem_boolean_column():Dynamic;
	public function test_setitem_boolean_missing():Dynamic;
	public function test_setitem_cast():Dynamic;
	public function test_setitem_clear_caches():Dynamic;
	public function test_setitem_corner():Dynamic;
	public function test_setitem_corner2():Dynamic;
	public function test_setitem_empty():Dynamic;
	public function test_setitem_empty_frame_with_boolean():Dynamic;
	public function test_setitem_fancy_1d():Dynamic;
	public function test_setitem_fancy_2d():Dynamic;
	public function test_setitem_fancy_boolean():Dynamic;
	public function test_setitem_fancy_exceptions():Dynamic;
	public function test_setitem_fancy_mixed_2d():Dynamic;
	public function test_setitem_fancy_scalar():Dynamic;
	public function test_setitem_frame():Dynamic;
	public function test_setitem_frame_align():Dynamic;
	public function test_setitem_list():Dynamic;
	public function test_setitem_list_not_dataframe():Dynamic;
	public function test_setitem_list_of_tuples():Dynamic;
	public function test_setitem_mulit_index():Dynamic;
	public function test_setitem_single_column_mixed():Dynamic;
	public function test_setitem_single_column_mixed_datetime():Dynamic;
	public function test_setitem_tuple():Dynamic;
	public function test_setitem_with_sparse_value():Dynamic;
	public function test_setitem_with_unaligned_sparse_value():Dynamic;
	public function test_single_element_ix_dont_upcast():Dynamic;
	public function test_slice_floats():Dynamic;
}