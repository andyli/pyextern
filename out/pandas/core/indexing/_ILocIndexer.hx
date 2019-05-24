/* This file is generated, do not edit! */
package pandas.core.indexing;
@:pythonImport("pandas.core.indexing", "_iLocIndexer") extern class _ILocIndexer {
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
	public function __iter__():Dynamic;
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
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _align_frame(indexer:Dynamic, df:Dynamic):Dynamic;
	public function _align_panel(indexer:Dynamic, df:Dynamic):Dynamic;
	/**
		Parameters
		----------
		indexer : tuple, slice, scalar
		    The indexer used to get the locations that will be set to
		    `ser`
		
		ser : pd.Series
		    The values to assign to the locations specified by `indexer`
		
		multiindex_indexer : boolean, optional
		    Defaults to False. Should be set to True if `indexer` was from
		    a `pd.MultiIndex`, to avoid unnecessary broadcasting.
		
		
		Returns:
		--------
		`np.array` of `ser` broadcast to the appropriate shape for assignment
		to the locations selected by `indexer`
	**/
	public function _align_series(indexer:Dynamic, ser:Dynamic, ?multiindex_indexer:Dynamic):Dynamic;
	public function _convert_for_reindex(key:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		convert a range argument 
	**/
	public function _convert_range(key:Dynamic, ?is_setter:Dynamic):Dynamic;
	public function _convert_scalar_indexer(key:Dynamic, axis:Dynamic):Dynamic;
	public function _convert_slice_indexer(key:Dynamic, axis:Dynamic):Dynamic;
	/**
		much simpler as we only have to deal with our valid types 
	**/
	public function _convert_to_indexer(obj:Dynamic, ?axis:Dynamic, ?is_setter:Dynamic):Dynamic;
	public function _convert_tuple(key:Dynamic, ?is_setter:Dynamic):Dynamic;
	/**
		Sequence index out of range.
	**/
	public function _exception(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _get_label(label:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return Series values by list or array of integers
		
		Parameters
		----------
		key : list-like positional indexer
		axis : int (can only be zero)
		
		Returns
		-------
		Series object
	**/
	public function _get_list_axis(key:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Transform a list-like of keys into a new index and an indexer.
		
		Parameters
		----------
		key : list-like
		    Target labels
		axis: int
		    Dimension on which the indexing is being made
		raise_missing: bool
		    Whether to raise a KeyError if some labels are not found. Will be
		    removed in the future, and then this method will always behave as
		    if raise_missing=True.
		
		Raises
		------
		KeyError
		    If at least one key was requested but none was found, and
		    raise_missing=True.
		
		Returns
		-------
		keyarr: Index
		    New index (coinciding with 'key' if the axis is unique)
		values : array-like
		    An indexer for the return object; -1 denotes keys not found
	**/
	public function _get_listlike_indexer(key:Dynamic, axis:Dynamic, ?raise_missing:Dynamic):Dynamic;
	public function _get_loc(key:Dynamic, ?axis:Dynamic):Dynamic;
	public function _get_setitem_indexer(key:Dynamic):Dynamic;
	/**
		this is pretty simple as we just have to deal with labels 
	**/
	public function _get_slice_axis(slice_obj:Dynamic, ?axis:Dynamic):Dynamic;
	public function _getbool_axis(key:Dynamic, ?axis:Dynamic):Dynamic;
	public function _getitem_axis(key:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Index current object with an an iterable key (which can be a boolean
		indexer, or a collection of keys).
		
		Parameters
		----------
		key : iterable
		    Target labels, or boolean indexer
		axis: int, default None
		    Dimension on which the indexing is being made
		
		Raises
		------
		KeyError
		    If no key was found. Will change in the future to raise if not all
		    keys were found.
		IndexingError
		    If the boolean indexer is unalignable with the object being
		    indexed.
		
		Returns
		-------
		scalar, DataFrame, or Series: indexed value(s),
	**/
	public function _getitem_iterable(key:Dynamic, ?axis:Dynamic):Dynamic;
	public function _getitem_lowerdim(tup:Dynamic):Dynamic;
	public function _getitem_nested_tuple(tup:Dynamic):Dynamic;
	public function _getitem_scalar(key:Dynamic):Dynamic;
	public function _getitem_tuple(tup:Dynamic):Dynamic;
	public function _handle_lowerdim_multi_index_axis0(tup:Dynamic):Dynamic;
	/**
		validate that an positional indexer cannot enlarge its target
		will raise if needed, does not modify the indexer externally
	**/
	public function _has_valid_positional_setitem_indexer(indexer:Dynamic):Dynamic;
	public function _has_valid_setitem_indexer(indexer:Dynamic):Dynamic;
	/**
		check the key for valid keys across my indexer 
	**/
	public function _has_valid_tuple(key:Dynamic):Dynamic;
	public function _is_nested_tuple_indexer(tup:Dynamic):Dynamic;
	public function _is_scalar_access(key:Dynamic):Dynamic;
	/**
		Create the indexers for the passed tuple of keys, and execute the take
		operation. This allows the take operation to be executed all at once -
		rather than once for each dimension - improving efficiency.
		
		Parameters
		----------
		tup : tuple
		    Tuple of indexers, one per axis
		
		Returns
		-------
		values: same type as the object being indexed
	**/
	public function _multi_take(tup:Dynamic):Dynamic;
	/**
		Check whether there is the possibility to use ``_multi_take``.
		Currently the limit is that all axes being indexed must be indexed with
		list-likes.
		
		Parameters
		----------
		tup : tuple
		    Tuple of indexers, one per axis
		
		Returns
		-------
		boolean: Whether the current indexing can be passed through _multi_take
	**/
	public function _multi_take_opportunity(tup:Dynamic):Dynamic;
	public var _ndim : Dynamic;
	public function _setitem_with_indexer(indexer:Dynamic, value:Dynamic):Dynamic;
	public function _slice(obj:Dynamic, ?axis:Dynamic, ?kind:Dynamic):Dynamic;
	public function _tuplify(loc:Dynamic):Dynamic;
	static public var _valid_types : Dynamic;
	/**
		Check that 'key' is a valid position in the desired axis.
		
		Parameters
		----------
		key : int
		    Requested position
		axis : int
		    Desired axis
		
		Returns
		-------
		None
		
		Raises
		------
		IndexError
		    If 'key' is not a valid position in axis 'axis'
	**/
	public function _validate_integer(key:Dynamic, axis:Dynamic):Dynamic;
	/**
		Ensure that key is valid for current indexer.
		
		Parameters
		----------
		key : scalar, slice or list-like
		    The key requested
		
		axis : int
		    Dimension on which the indexing is being made
		
		Raises
		------
		TypeError
		    If the key (or some element of it) has wrong type
		
		IndexError
		    If the key (or some element of it) is out of bounds
		
		KeyError
		    If the key was not found
	**/
	public function _validate_key(key:Dynamic, axis:Dynamic):Dynamic;
	/**
		Check that indexer can be used to return a result (e.g. at least one
		element was found, unless the list of keys was actually empty).
		
		Parameters
		----------
		key : list-like
		    Target labels (only used to show correct error message)
		indexer: array-like of booleans
		    Indices corresponding to the key (with -1 indicating not found)
		axis: int
		    Dimension on which the indexing is being made
		raise_missing: bool
		    Whether to raise a KeyError if some labels are not found. Will be
		    removed in the future, and then this method will always behave as
		    if raise_missing=True.
		
		Raises
		------
		KeyError
		    If at least one key was requested but none was found, and
		    raise_missing=True.
	**/
	public function _validate_read_indexer(key:Dynamic, indexer:Dynamic, axis:Dynamic, ?raise_missing:Dynamic):Dynamic;
	static public var axis : Dynamic;
	public var name : Dynamic;
	public var ndim : Dynamic;
	public var obj : Dynamic;
}