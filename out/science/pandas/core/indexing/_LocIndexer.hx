/* This file is generated, do not edit! */
package pandas.core.indexing;
@:pythonImport("pandas.core.indexing", "_LocIndexer") extern class _LocIndexer {
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
	/**
		Convert indexing key into something we can use to do actual fancy
		indexing on a ndarray.
		
		Examples
		ix[:5] -> slice(0, 5)
		ix[[1,2,3]] -> [1,2,3]
		ix[['foo', 'bar', 'baz']] -> [i, j, k] (indices of foo, bar, baz)
		
		Going by Zen of Python?
		'In the face of ambiguity, refuse the temptation to guess.'
		raise AmbiguousIndexError with integer labels?
		- No, prefer label-based indexing
	**/
	public function _convert_to_indexer(key:Dynamic, axis:Dynamic):Dynamic;
	public function _convert_tuple(key:Dynamic):Dynamic;
	static public var _docstring_components : Dynamic;
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
	public function _get_label(label:Dynamic, axis:Dynamic):Dynamic;
	/**
		Transform a list-like of keys into a new index and an indexer.
		
		Parameters
		----------
		key : list-like
		    Targeted labels.
		axis:  int
		    Dimension on which the indexing is being made.
		
		Raises
		------
		KeyError
		    If at least one key was requested but none was found.
		
		Returns
		-------
		keyarr: Index
		    New index (coinciding with 'key' if the axis is unique).
		values : array-like
		    Indexer for the return object, -1 denotes keys not found.
	**/
	public function _get_listlike_indexer(key:Dynamic, axis:Dynamic):Dynamic;
	/**
		Convert a potentially-label-based key into a positional indexer.
	**/
	public function _get_setitem_indexer(key:Dynamic):Dynamic;
	/**
		This is pretty simple as we just have to deal with labels.
	**/
	public function _get_slice_axis(slice_obj:Dynamic, axis:Dynamic):Dynamic;
	public function _getbool_axis(key:Dynamic, axis:Dynamic):Dynamic;
	public function _getitem_axis(key:Dynamic, axis:Dynamic):Dynamic;
	/**
		Index current object with an iterable collection of keys.
		
		Parameters
		----------
		key : iterable
		    Targeted labels.
		axis : int
		    Dimension on which the indexing is being made.
		
		Raises
		------
		KeyError
		    If no key was found. Will change in the future to raise if not all
		    keys were found.
		
		Returns
		-------
		scalar, DataFrame, or Series: indexed value(s).
	**/
	public function _getitem_iterable(key:Dynamic, axis:Dynamic):Dynamic;
	public function _getitem_lowerdim(tup:Dynamic):Dynamic;
	public function _getitem_nested_tuple(tup:Dynamic):Dynamic;
	public function _getitem_tuple(tup:Dynamic):Dynamic;
	/**
		Index with indexers that should return an object of the same dimension
		as self.obj.
		
		This is only called after a failed call to _getitem_lowerdim.
	**/
	public function _getitem_tuple_same_dim(tup:Dynamic):Dynamic;
	public function _handle_lowerdim_multi_index_axis0(tup:Dynamic):Dynamic;
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
	/**
		Create the indexers for the passed tuple of keys, and
		executes the take operation. This allows the take operation to be
		executed all at once, rather than once for each dimension.
		Improving efficiency.
		
		Parameters
		----------
		tup : tuple
		    Tuple of indexers, one per axis.
		
		Returns
		-------
		values: same type as the object being indexed
	**/
	public function _multi_take(tup:Dynamic):Dynamic;
	/**
		Check whether there is the possibility to use ``_multi_take``.
		
		Currently the limit is that all axes being indexed, must be indexed with
		list-likes.
		
		Parameters
		----------
		tup : tuple
		    Tuple of indexers, one per axis.
		
		Returns
		-------
		bool
		    Whether the current indexing,
		    can be passed through `_multi_take`.
	**/
	public function _multi_take_opportunity(tup:Dynamic):Dynamic;
	public var _ndim : Dynamic;
	static public var _takeable : Dynamic;
	static public var _valid_types : Dynamic;
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