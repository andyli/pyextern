/* This file is generated, do not edit! */
package pandas.core.indexing;
@:pythonImport("pandas.core.indexing", "_iLocIndexer") extern class _ILocIndexer {
	static public var __annotations__ : Dynamic;
	/**
		Call self as a function.
	**/
	public function __call__(?axis:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(key:Dynamic):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _align_frame(indexer:Dynamic, df:Dynamic):Dynamic;
	/**
		Parameters
		----------
		indexer : tuple, slice, scalar
		    Indexer used to get the locations that will be set to `ser`.
		ser : pd.Series
		    Values to assign to the locations specified by `indexer`.
		multiindex_indexer : bool, optional
		    Defaults to False. Should be set to True if `indexer` was from
		    a `pd.MultiIndex`, to avoid unnecessary broadcasting.
		
		Returns
		-------
		`np.array` of `ser` broadcast to the appropriate shape for assignment
		to the locations selected by `indexer`
	**/
	public function _align_series(indexer:Dynamic, ser:Dynamic, ?multiindex_indexer:Dynamic):Dynamic;
	/**
		Much simpler as we only have to deal with our valid types.
	**/
	public function _convert_to_indexer(key:Dynamic, axis:Dynamic):Dynamic;
	public function _convert_tuple(key:Dynamic):Dynamic;
	static public var _docstring_components : Dynamic;
	/**
		Ensure that our column indexer is something that can be iterated over.
	**/
	public function _ensure_iterable_column_indexer(column_indexer:Dynamic):Dynamic;
	/**
		Ensure that a list-like of column labels are all present by adding them if
		they do not already exist.
		
		Parameters
		----------
		key : list-like of column labels
		    Target labels.
		axis : key axis if known
	**/
	public function _ensure_listlike_indexer(key:Dynamic, ?axis:Dynamic, ?value:Dynamic):Dynamic;
	/**
		If a tuple key includes an Ellipsis, replace it with an appropriate
		number of null slices.
	**/
	public function _expand_ellipsis(tup:Dynamic):Dynamic;
	/**
		Return Series values by list or array of integers.
		
		Parameters
		----------
		key : list-like positional indexer
		axis : int
		
		Returns
		-------
		Series object
		
		Notes
		-----
		`axis` can only be zero.
	**/
	public function _get_list_axis(key:Dynamic, axis:Dynamic):Dynamic;
	/**
		Convert a potentially-label-based key into a positional indexer.
	**/
	public function _get_setitem_indexer(key:Dynamic):Dynamic;
	public function _get_slice_axis(slice_obj:Dynamic, axis:Dynamic):Dynamic;
	public function _getbool_axis(key:Dynamic, axis:Dynamic):Dynamic;
	public function _getitem_axis(key:Dynamic, axis:Dynamic):Dynamic;
	public function _getitem_lowerdim(tup:Dynamic):Dynamic;
	public function _getitem_nested_tuple(tup:Dynamic):Dynamic;
	public function _getitem_tuple(tup:Dynamic):Dynamic;
	/**
		Index with indexers that should return an object of the same dimension
		as self.obj.
		
		This is only called after a failed call to _getitem_lowerdim.
	**/
	public function _getitem_tuple_same_dim(tup:Dynamic):Dynamic;
	/**
		Validate that a positional indexer cannot enlarge its target
		will raise if needed, does not modify the indexer externally.
		
		Returns
		-------
		bool
	**/
	public function _has_valid_setitem_indexer(indexer:Dynamic):Dynamic;
	/**
		Returns
		-------
		bool
	**/
	public function _is_nested_tuple_indexer(tup:Dynamic):Dynamic;
	/**
		Returns
		-------
		bool
	**/
	public function _is_scalar_access(key:Dynamic):Dynamic;
	public var _ndim : Dynamic;
	/**
		_setitem_with_indexer for the case when we have a single Block.
	**/
	public function _setitem_single_block(indexer:Dynamic, value:Dynamic, name:Dynamic):Dynamic;
	/**
		Parameters
		----------
		loc : int
		    Indexer for column position
		plane_indexer : int, slice, listlike[int]
		    The indexer we use for setitem along axis=0.
	**/
	public function _setitem_single_column(loc:Dynamic, value:Dynamic, plane_indexer:Dynamic):Dynamic;
	/**
		_setitem_with_indexer is for setting values on a Series/DataFrame
		using positional indexers.
		
		If the relevant keys are not present, the Series/DataFrame may be
		expanded.
		
		This method is currently broken when dealing with non-unique Indexes,
		since it goes from positional indexers back to labels when calling
		BlockManager methods, see GH#12991, GH#22046, GH#15686.
	**/
	public function _setitem_with_indexer(indexer:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	public function _setitem_with_indexer_2d_value(indexer:Dynamic, value:Dynamic):Dynamic;
	public function _setitem_with_indexer_frame_value(indexer:Dynamic, value:Dynamic, name:Dynamic):Dynamic;
	/**
		Insert new row(s) or column(s) into the Series or DataFrame.
	**/
	public function _setitem_with_indexer_missing(indexer:Dynamic, value:Dynamic):Dynamic;
	/**
		Setitem column-wise.
	**/
	public function _setitem_with_indexer_split_path(indexer:Dynamic, value:Dynamic, name:Dynamic):Dynamic;
	static public var _takeable : Dynamic;
	static public var _valid_types : Dynamic;
	/**
		Check that 'key' is a valid position in the desired axis.
		
		Parameters
		----------
		key : int
		    Requested position.
		axis : int
		    Desired axis.
		
		Raises
		------
		IndexError
		    If 'key' is not a valid position in axis 'axis'.
	**/
	public function _validate_integer(key:Dynamic, axis:Dynamic):Dynamic;
	/**
		Ensure that key is valid for current indexer.
		
		Parameters
		----------
		key : scalar, slice or list-like
		    Key requested.
		axis : int
		    Dimension on which the indexing is being made.
		
		Raises
		------
		TypeError
		    If the key (or some element of it) has wrong type.
		IndexError
		    If the key (or some element of it) is out of bounds.
		KeyError
		    If the key was not found.
	**/
	public function _validate_key(key:Dynamic, axis:Dynamic):Dynamic;
	public function _validate_key_length(key:Dynamic):Dynamic;
	/**
		Check the key for valid keys across my indexer.
	**/
	public function _validate_tuple_indexer(key:Dynamic):Dynamic;
	static public var axis : Dynamic;
	public var name : Dynamic;
	public var ndim : Dynamic;
	public var obj : Dynamic;
}