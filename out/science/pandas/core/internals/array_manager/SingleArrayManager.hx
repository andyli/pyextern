/* This file is generated, do not edit! */
package pandas.core.internals.array_manager;
@:pythonImport("pandas.core.internals.array_manager", "SingleArrayManager") extern class SingleArrayManager {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion.
		
		Notes
		-----
		Only provide 'public' methods.
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
	public function __getstate__():Dynamic;
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
	public function ___init__(arrays:Dynamic, axes:Dynamic, ?verify_integrity:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(arrays:Dynamic, axes:Dynamic, ?verify_integrity:Dynamic):Void;
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
	public function __len__():Dynamic;
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
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return a string representation for a particular object.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		Generates the total memory usage for an object that returns
		either a value or Series of values
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
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
	static public var _accessors : Dynamic;
	public var _axes : Dynamic;
	public var _can_hold_na : Dynamic;
	public function _consolidate_inplace():Dynamic;
	/**
		Class constructor (for this class it's just `__class__`.
	**/
	public var _constructor : Dynamic;
	/**
		Add additional __dir__ for this object.
	**/
	public function _dir_additions():Dynamic;
	/**
		Delete unwanted __dir__ for this object.
	**/
	public function _dir_deletions():Dynamic;
	/**
		Used in .equals defined in base class. Only check the column values
		assuming shape and indexes have already been checked.
	**/
	public function _equal_values(other:Dynamic):Dynamic;
	public function _get_data_subset(predicate:Dynamic):Dynamic;
	static public var _hidden_attrs : Dynamic;
	public function _make_na_array(?fill_value:Dynamic, ?use_na_proxy:Dynamic):Dynamic;
	static public function _normalize_axis(axis:Dynamic):Dynamic;
	/**
		Parameters
		----------
		new_axis : Index
		indexer : ndarray of int64 or None
		axis : int
		fill_value : object, default None
		allow_dups : bool, default False
		copy : bool, default True
		
		
		pandas-indexer with -1's only.
	**/
	public function _reindex_indexer(new_axis:Dynamic, indexer:Dynamic, axis:Dynamic, ?fill_value:Dynamic, ?allow_dups:Dynamic, ?copy:Dynamic, ?use_na_proxy:Dynamic):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	public function _validate_set_axis(axis:Dynamic, new_labels:Dynamic):Dynamic;
	public function _verify_integrity():Dynamic;
	/**
		Whether any of the blocks in this manager are extension blocks
	**/
	public var any_extension_types : Dynamic;
	/**
		Iterate over the arrays, collect and create a new ArrayManager.
		
		Parameters
		----------
		f : str or callable
		    Name of the Array method to apply.
		align_keys: List[str] or None, default None
		ignore_failures: bool, default False
		**kwargs
		    Keywords to pass to `f`
		
		Returns
		-------
		ArrayManager
	**/
	public function apply(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function apply_with_block(f:Dynamic, ?align_keys:Dynamic, ?swap_axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Quick access to the backing array of the Block or SingleArrayManager.
	**/
	public var array : Dynamic;
	/**
		The array that Series.array returns
	**/
	public function array_values():Dynamic;
	public var arrays : Dynamic;
	public function astype(dtype:Dynamic, ?copy:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Axes is BlockManager-compatible order (columns, rows)
	**/
	public var axes : Dynamic;
	public function consolidate():Dynamic;
	public function convert(?copy:Dynamic, ?datetime:Dynamic, ?numeric:Dynamic, ?timedelta:Dynamic):Dynamic;
	/**
		Make deep or shallow copy of ArrayManager
		
		Parameters
		----------
		deep : bool or string, default True
		    If False, return shallow copy (do not copy data)
		    If 'all', copy data and a deep copy of the index
		
		Returns
		-------
		BlockManager
	**/
	public function copy(?deep:Dynamic):Dynamic;
	public function diff(n:Dynamic, axis:Dynamic):Dynamic;
	public var dtype : Dynamic;
	/**
		Implementation for DataFrame.equals
	**/
	public function equals(other:Dynamic):Dynamic;
	/**
		The array that Series.values returns
	**/
	public function external_values():Dynamic;
	public function fast_xs(loc:Dynamic):Dynamic;
	public function fillna(value:Dynamic, limit:Dynamic, inplace:Dynamic, downcast:Dynamic):Dynamic;
	static public function from_array(array:Dynamic, index:Dynamic):Dynamic;
	/**
		Select columns that are bool-dtype and object-dtype columns that are all-bool.
		
		Parameters
		----------
		copy : bool, default False
		    Whether to copy the blocks
	**/
	public function get_bool_data(?copy:Dynamic):Dynamic;
	public function get_dtypes():Dynamic;
	/**
		Select columns that have a numeric dtype.
		
		Parameters
		----------
		copy : bool, default False
		    Whether to copy the blocks
	**/
	public function get_numeric_data(?copy:Dynamic):Dynamic;
	public function get_slice(slobj:Dynamic, ?axis:Dynamic):Dynamic;
	public function getitem_mgr(indexer:Dynamic):Dynamic;
	/**
		ignore_failures : bool, default False
		    Not used; for compatibility with ArrayManager/BlockManager.
	**/
	public function grouped_reduce(func:Dynamic, ?ignore_failures:Dynamic):Dynamic;
	/**
		Delete selected locations in-place (new array, same ArrayManager)
	**/
	public function idelete(indexer:Dynamic):Dynamic;
	public var index : Dynamic;
	/**
		The array that Series._values returns
	**/
	public function internal_values():Dynamic;
	public function interpolate(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_consolidated():Dynamic;
	public var is_mixed_type : Dynamic;
	public var is_numeric_mixed_type : Dynamic;
	public var is_single_block : Dynamic;
	/**
		return a boolean if we are a single block and are a view
	**/
	public var is_view : Dynamic;
	public function isna(func:Dynamic):Dynamic;
	public var items : Dynamic;
	/**
		Return an empty ArrayManager with index/array of length 0
	**/
	public function make_empty(?axes:Dynamic):Dynamic;
	static public var ndim : Dynamic;
	public function putmask(mask:Dynamic, _new:Dynamic, ?align:Dynamic):Dynamic;
	/**
		Conform data manager to new index.
	**/
	public function reindex_axis(new_index:Dynamic, axis:Dynamic, ?fill_value:Dynamic, ?consolidate:Dynamic, ?only_slice:Dynamic):Dynamic;
	public function reindex_indexer(new_axis:Dynamic, indexer:Dynamic, axis:Dynamic, ?fill_value:Dynamic, ?allow_dups:Dynamic, ?copy:Dynamic, ?consolidate:Dynamic, ?only_slice:Dynamic, ?use_na_proxy:Dynamic):Dynamic;
	public function replace(to_replace:Dynamic, value:Dynamic, inplace:Dynamic):Dynamic;
	/**
		do a list replace
	**/
	public function replace_list(src_list:Dynamic, dest_list:Dynamic, ?inplace:Dynamic, ?regex:Dynamic):Dynamic;
	public function replace_regex(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_axis(axis:Dynamic, new_labels:Dynamic):Dynamic;
	/**
		Set (replace) the values of the SingleArrayManager in place.
		
		Use at your own risk! This does not check if the passed values are
		valid for the current SingleArrayManager (length, dtype, etc).
	**/
	public function set_values(values:Dynamic):Dynamic;
	/**
		Set values with indexer.
		
		For SingleArrayManager, this backs s[indexer] = value
		
		See `setitem_inplace` for a version that works inplace and doesn't
		return a new Manager.
	**/
	public function setitem(indexer:Dynamic, value:Dynamic):Dynamic;
	/**
		Set values with indexer.
		
		For Single[Block/Array]Manager, this backs s[indexer] = value
		
		This is an inplace version of `setitem()`, mutating the manager/values
		in place, not returning a new Manager (and Block), and thus never changing
		the dtype.
	**/
	public function setitem_inplace(indexer:Dynamic, value:Dynamic):Dynamic;
	public var shape : Dynamic;
	public var shape_proper : Dynamic;
	public function shift(periods:Dynamic, axis:Dynamic, fill_value:Dynamic):Dynamic;
	/**
		Take items along any axis.
	**/
	public function take(indexer:Dynamic, ?axis:Dynamic, ?verify:Dynamic):Dynamic;
	/**
		Manager analogue of Series.to_frame
	**/
	public function to_2d_mgr(columns:Dynamic):Dynamic;
	public function to_native_types(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function where(other:Dynamic, cond:Dynamic, align:Dynamic):Dynamic;
}