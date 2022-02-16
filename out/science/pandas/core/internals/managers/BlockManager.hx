/* This file is generated, do not edit! */
package pandas.core.internals.managers;
@:pythonImport("pandas.core.internals.managers", "BlockManager") extern class BlockManager {
	static public var __annotations__ : Dynamic;
	public function __bool__():Dynamic;
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
	public function ___init__(blocks:Dynamic, axes:Dynamic, ?verify_integrity:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(blocks:Dynamic, axes:Dynamic, ?verify_integrity:Dynamic):Void;
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
	public function __nonzero__():Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public var _blklocs : Dynamic;
	public var _blknos : Dynamic;
	/**
		return a new manager with the blocks
	**/
	public function _combine(blocks:Dynamic, ?copy:Dynamic, ?index:Dynamic):Dynamic;
	public function _consolidate_check():Dynamic;
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
	/**
		When inserting a new Block at location 'loc', we update our
		_blklocs and _blknos.
	**/
	public function _insert_update_blklocs_and_blknos(loc:Dynamic):Dynamic;
	/**
		When inserting a new Block at location 'loc', we increment
		all of the mgr_locs of blocks above that by one.
	**/
	public function _insert_update_mgr_locs(loc:Dynamic):Dynamic;
	/**
		Return ndarray from blocks with specified item order
		Items must be contained in the blocks
	**/
	public function _interleave(?dtype:Dynamic, ?na_value:Dynamic):Dynamic;
	public var _is_consolidated : Dynamic;
	/**
		Fastpath for iset when we are only setting a single position and
		the Block currently in that position is itself single-column.
		
		In this case we can swap out the entire Block and blklocs and blknos
		are unaffected.
	**/
	public function _iset_single(loc:Dynamic, value:Dynamic, inplace:Dynamic, blkno:Dynamic, blk:Dynamic):Dynamic;
	public var _known_consolidated : Dynamic;
	public function _make_na_block(placement:Dynamic, ?fill_value:Dynamic, ?use_na_proxy:Dynamic):Dynamic;
	public function _normalize_axis(axis:Dynamic):Dynamic;
	public function _post_setstate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Update mgr._blknos / mgr._blklocs.
	**/
	public function _rebuild_blknos_and_blklocs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Slice/take blocks along axis=0.
		
		Overloaded for SingleBlock
		
		Parameters
		----------
		slice_or_indexer : slice or np.ndarray[int64]
		fill_value : scalar, default lib.no_default
		only_slice : bool, default False
		    If True, we always return views on existing arrays, never copies.
		    This is used when called from ops.blockwise.operate_blockwise.
		use_na_proxy : bool, default False
		    Whether to use a np.void ndarray for newly introduced columns.
		
		Returns
		-------
		new_blocks : list of Block
	**/
	public function _slice_take_blocks_ax0(slice_or_indexer:Dynamic, ?fill_value:Dynamic, ?only_slice:Dynamic, ?use_na_proxy:Dynamic):Dynamic;
	public function _validate_set_axis(axis:Dynamic, new_labels:Dynamic):Dynamic;
	public function _verify_integrity():Dynamic;
	/**
		Whether any of the blocks in this manager are extension blocks
	**/
	public var any_extension_types : Dynamic;
	/**
		Iterate over the blocks, collect and create a new BlockManager.
		
		Parameters
		----------
		f : str or callable
		    Name of the Block method to apply.
		align_keys: List[str] or None, default None
		ignore_failures: bool, default False
		**kwargs
		    Keywords to pass to `f`
		
		Returns
		-------
		BlockManager
	**/
	public function apply(f:Dynamic, ?align_keys:Dynamic, ?ignore_failures:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Quick access to the backing arrays of the Blocks.
		
		Only for compatibility with ArrayManager for testing convenience.
		Not to be used in actual code, and return value is not the same as the
		ArrayManager method (list of 1D arrays vs iterator of 2D ndarrays / 1D EAs).
	**/
	public var arrays : Dynamic;
	/**
		Convert the blockmanager data into an numpy array.
		
		Parameters
		----------
		dtype : np.dtype or None, default None
		    Data type of the return array.
		copy : bool, default False
		    If True then guarantee that a copy is returned. A value of
		    False does not guarantee that the underlying data is not
		    copied.
		na_value : object, default lib.no_default
		    Value to be used as the missing value sentinel.
		
		Returns
		-------
		arr : ndarray
	**/
	public function as_array(?dtype:Dynamic, ?copy:Dynamic, ?na_value:Dynamic):numpy.Ndarray;
	public function astype(dtype:Dynamic, ?copy:Dynamic, ?errors:Dynamic):Dynamic;
	public var axes : Dynamic;
	/**
		See blknos.__doc__
	**/
	public var blklocs : Dynamic;
	/**
		Suppose we want to find the array corresponding to our i'th column.
		
		blknos[i] identifies the block from self.blocks that contains this column.
		
		blklocs[i] identifies the column of interest within
		self.blocks[self.blknos[i]]
	**/
	public var blknos : Dynamic;
	public var blocks : Dynamic;
	/**
		Used in the JSON C code to access column arrays.
		This optimizes compared to using `iget_values` by converting each
	**/
	public var column_arrays : Dynamic;
	/**
		Join together blocks having same dtype
		
		Returns
		-------
		y : BlockManager
	**/
	public function consolidate():Dynamic;
	public function convert(?copy:Dynamic, ?datetime:Dynamic, ?numeric:Dynamic, ?timedelta:Dynamic):Dynamic;
	/**
		Make deep or shallow copy of BlockManager
		
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
	/**
		Implementation for DataFrame.equals
	**/
	public function equals(other:Dynamic):Dynamic;
	/**
		Return the array corresponding to `frame.iloc[loc]`.
		
		Parameters
		----------
		loc : int
		
		Returns
		-------
		np.ndarray or ExtensionArray
	**/
	public function fast_xs(loc:Dynamic):Dynamic;
	public function fillna(value:Dynamic, limit:Dynamic, inplace:Dynamic, downcast:Dynamic):Dynamic;
	/**
		Constructor for BlockManager and SingleBlockManager with same signature.
	**/
	static public function from_blocks(blocks:Dynamic, axes:Dynamic):Dynamic;
	/**
		Select blocks that are bool-dtype and columns from object-dtype blocks
		that are all-bool.
		
		Parameters
		----------
		copy : bool, default False
		    Whether to copy the blocks
	**/
	public function get_bool_data(?copy:Dynamic):Dynamic;
	public function get_dtypes():Dynamic;
	/**
		Parameters
		----------
		copy : bool, default False
		    Whether to copy the blocks
	**/
	public function get_numeric_data(?copy:Dynamic):Dynamic;
	public function get_slice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Apply grouped reduction function blockwise, returning a new BlockManager.
		
		Parameters
		----------
		func : grouped reduction function
		ignore_failures : bool, default False
		    Whether to drop blocks where func raises TypeError.
		
		Returns
		-------
		BlockManager
	**/
	public function grouped_reduce(func:Dynamic, ?ignore_failures:Dynamic):Dynamic;
	/**
		Delete selected locations, returning a new BlockManager.
	**/
	public function idelete(indexer:Dynamic):Dynamic;
	/**
		Return the data as a SingleBlockManager.
	**/
	public function iget(i:Dynamic):Dynamic;
	/**
		Return the data for column i as the values (ndarray or ExtensionArray).
	**/
	public function iget_values(i:Dynamic):Dynamic;
	/**
		Insert item at selected position.
		
		Parameters
		----------
		loc : int
		item : hashable
		value : np.ndarray or ExtensionArray
	**/
	public function insert(loc:Dynamic, item:Dynamic, value:Dynamic):Dynamic;
	public function interpolate(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return True if more than one block with the same dtype
	**/
	public function is_consolidated():Dynamic;
	public var is_numeric_mixed_type : Dynamic;
	public var is_single_block : Dynamic;
	/**
		return a boolean if we are a single block and are a view
	**/
	public var is_view : Dynamic;
	/**
		Set new item in-place. Does not consolidate. Adds new Block if not
		contained in the current set of items
	**/
	public function iset(loc:Dynamic, value:Dynamic, ?inplace:Dynamic):Dynamic;
	public function isna(func:Dynamic):Dynamic;
	public var items : Dynamic;
	/**
		return an empty BlockManager with the items axis of len 0
	**/
	public function make_empty(?axes:Dynamic):Dynamic;
	public var nblocks : Dynamic;
	static public var ndim : Dynamic;
	/**
		Apply array_op blockwise with another (aligned) BlockManager.
	**/
	public function operate_blockwise(other:Dynamic, array_op:Dynamic):Dynamic;
	public function putmask(mask:Dynamic, _new:Dynamic, ?align:Dynamic):Dynamic;
	/**
		Iterate over blocks applying quantile reduction.
		This routine is intended for reduction type operations and
		will do inference on the generated blocks.
		
		Parameters
		----------
		axis: reduction axis, default 0
		consolidate: bool, default True. Join together blocks having same
		    dtype
		interpolation : type of interpolation, default 'linear'
		qs : list of the quantiles to be computed
		
		Returns
		-------
		BlockManager
	**/
	public function quantile(qs:Dynamic, ?axis:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Apply reduction function blockwise, returning a single-row BlockManager.
		
		Parameters
		----------
		func : reduction function
		ignore_failures : bool, default False
		    Whether to drop blocks where func raises TypeError.
		
		Returns
		-------
		BlockManager
		np.ndarray
		    Indexer of mgr_locs that are retained.
	**/
	public function reduce(func:Dynamic, ?ignore_failures:Dynamic):Dynamic;
	/**
		Conform data manager to new index.
	**/
	public function reindex_axis(new_index:Dynamic, axis:Dynamic, ?fill_value:Dynamic, ?consolidate:Dynamic, ?only_slice:Dynamic):Dynamic;
	/**
		Parameters
		----------
		new_axis : Index
		indexer : ndarray of int64 or None
		axis : int
		fill_value : object, default None
		allow_dups : bool, default False
		copy : bool, default True
		consolidate: bool, default True
		    Whether to consolidate inplace before reindexing.
		only_slice : bool, default False
		    Whether to take views, not copies, along columns.
		use_na_proxy : bool, default False
		    Whether to use a np.void ndarray for newly introduced columns.
		
		pandas-indexer with -1's only.
	**/
	public function reindex_indexer(new_axis:Dynamic, indexer:Dynamic, axis:Dynamic, ?fill_value:Dynamic, ?allow_dups:Dynamic, ?copy:Dynamic, ?consolidate:Dynamic, ?only_slice:Dynamic, ?use_na_proxy:Dynamic):Dynamic;
	public function replace(to_replace:Dynamic, value:Dynamic, inplace:Dynamic):Dynamic;
	/**
		do a list replace
	**/
	public function replace_list(src_list:Dynamic, dest_list:Dynamic, ?inplace:Dynamic, ?regex:Dynamic):Dynamic;
	public function replace_regex(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_axis(axis:Dynamic, new_labels:Dynamic):Dynamic;
	/**
		Set values with indexer.
		
		For SingleBlockManager, this backs s[indexer] = value
	**/
	public function setitem(indexer:Dynamic, value:Dynamic):Dynamic;
	public var shape : Dynamic;
	public function shift(periods:Dynamic, axis:Dynamic, fill_value:Dynamic):Dynamic;
	/**
		Take items along any axis.
		
		indexer : np.ndarray or slice
		axis : int, default 1
		verify : bool, default True
		    Check that all entries are between 0 and len(self) - 1, inclusive.
		    Pass verify=False if this check has been done by the caller.
		
		Returns
		-------
		BlockManager
	**/
	public function take(indexer:Dynamic, ?axis:Dynamic, ?verify:Dynamic):Dynamic;
	/**
		Return a dict of str(dtype) -> BlockManager
		
		Parameters
		----------
		copy : bool, default True
		
		Returns
		-------
		values : a dict of dtype -> BlockManager
	**/
	public function to_dict(?copy:Dynamic):Dynamic;
	/**
		Convert values to native types (strings / python objects) that are used
		in formatting (repr / csv).
	**/
	public function to_native_types(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a BlockManager with all blocks unstacked.
		
		Parameters
		----------
		unstacker : reshape._Unstacker
		fill_value : Any
		    fill_value for newly introduced missing values.
		
		Returns
		-------
		unstacked : BlockManager
	**/
	public function unstack(unstacker:Dynamic, fill_value:Dynamic):Dynamic;
	public function where(other:Dynamic, cond:Dynamic, align:Dynamic):Dynamic;
}