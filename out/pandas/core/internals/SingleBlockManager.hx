/* This file is generated, do not edit! */
package pandas.core.internals;
@:pythonImport("pandas.core.internals", "SingleBlockManager") extern class SingleBlockManager {
	public function __bool__():Dynamic;
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __contains__(item:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion
		Only provide 'public' methods
	**/
	public function __dir__():Dynamic;
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
	public function ___init__(block:Dynamic, axis:Dynamic, ?do_integrity_check:Dynamic, ?fastpath:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(block:Dynamic, axis:Dynamic, ?do_integrity_check:Dynamic, ?fastpath:Dynamic):Void;
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
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
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
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
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
		Return a string representation for a particular object.
		
		Invoked by unicode(obj) in py2 only. Yields a Unicode String in both
		py2/py3.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _accessors : Dynamic;
	/**
		compat with BlockManager 
	**/
	public var _blklocs : Dynamic;
	/**
		compat with BlockManager 
	**/
	public var _blknos : Dynamic;
	public var _block : Dynamic;
	public var _can_hold_na : Dynamic;
	public function _consolidate_check():Dynamic;
	public function _consolidate_inplace():Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	public var _constructor : Dynamic;
	static public var _deprecations : Dynamic;
	/**
		add additional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	/**
		return a dict of the counts of the function in BlockManager 
	**/
	public function _get_counts(f:Dynamic):Dynamic;
	public function _get_items():Dynamic;
	/**
		Return ndarray from blocks with specified item order
		Items must be contained in the blocks
	**/
	public function _interleave():Dynamic;
	static public var _is_consolidated : Dynamic;
	/**
		Check all axes except items
	**/
	public function _is_indexed_like(other:Dynamic):Dynamic;
	public var _is_single_block : Dynamic;
	static public var _known_consolidated : Dynamic;
	public function _make_na_block(placement:Dynamic, ?fill_value:Dynamic):Dynamic;
	public var _ndim : Dynamic;
	public function _post_setstate():Dynamic;
	/**
		Update mgr._blknos / mgr._blklocs.
	**/
	public function _rebuild_blknos_and_blklocs():Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	public var _shape : Dynamic;
	/**
		Slice/take blocks along axis=0.
		
		Overloaded for SingleBlock
		
		Returns
		-------
		new_blocks : list of Block
	**/
	public function _slice_take_blocks_ax0(slice_or_indexer:Dynamic, ?fill_tuple:Dynamic):Dynamic;
	public var _values : Dynamic;
	public function _verify_integrity():Dynamic;
	public function add_prefix(prefix:Dynamic):Dynamic;
	public function add_suffix(suffix:Dynamic):Dynamic;
	/**
		Whether any of the blocks in this manager are extension blocks
	**/
	public var any_extension_types : Dynamic;
	/**
		iterate over the blocks, collect and create a new block manager
		
		Parameters
		----------
		f : the callable or function name to operate on at the block level
		axes : optional (if not supplied, use self.axes)
		filter : list, if supplied, only call the block if the filter is in
		         the block
		do_integrity_check : boolean, default False. Do the block manager
		    integrity check
		consolidate: boolean, default True. Join together blocks having same
		    dtype
		
		Returns
		-------
		Block Manager (new object)
	**/
	public function apply(f:Dynamic, ?axes:Dynamic, ?filter:Dynamic, ?do_integrity_check:Dynamic, ?consolidate:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var array_dtype : Dynamic;
	/**
		Convert the blockmanager data into an numpy array.
		
		Parameters
		----------
		transpose : boolean, default False
		    If True, transpose the return array
		items : list of strings or None
		    Names of block items that will be included in the returned
		    array. ``None`` means that all block items will be used
		
		Returns
		-------
		arr : ndarray
	**/
	public function as_array(?transpose:Dynamic, ?items:Dynamic):numpy.Ndarray;
	/**
		return a object dtype array. datetime/timedelta like values are boxed
		to Timestamp/Timedelta instances.
	**/
	public var asobject : Dynamic;
	public function astype(dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var axes : Dynamic;
	public var blocks : Dynamic;
	/**
		return a new manager with the blocks 
	**/
	public function combine(blocks:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Concatenate a list of SingleBlockManagers into a single
		SingleBlockManager.
		
		Used for pd.concat of Series objects with axis=0.
		
		Parameters
		----------
		to_concat : list of SingleBlockManagers
		new_axis : Index of the result
		
		Returns
		-------
		SingleBlockManager
	**/
	public function concat(to_concat:Dynamic, new_axis:Dynamic):Dynamic;
	/**
		Join together blocks having same dtype
		
		Returns
		-------
		y : BlockManager
	**/
	public function consolidate():Dynamic;
	/**
		convert the whole block as one 
	**/
	public function convert(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make deep or shallow copy of BlockManager
		
		Parameters
		----------
		deep : boolean o rstring, default True
		    If False, return shallow copy (do not copy data)
		    If 'all', copy data and a deep copy of the index
		
		Returns
		-------
		copy : BlockManager
	**/
	public function copy(?deep:Dynamic, ?mgr:Dynamic):Dynamic;
	/**
		Delete single item from SingleBlockManager.
		
		Ensures that self.blocks doesn't become empty.
	**/
	public function delete(item:Dynamic):Dynamic;
	public function diff(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function downcast(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var dtype : Dynamic;
	public function equals(other:Dynamic):Dynamic;
	public function eval(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function external_values():Dynamic;
	/**
		fast path for getting a cross-section
		return a view of the data
	**/
	public function fast_xs(loc:Dynamic):Dynamic;
	public function fillna(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the internal values used by the DataFrame/SeriesFormatter
	**/
	public function formatting_values():Dynamic;
	public var ftype : Dynamic;
	/**
		Return values for selected item (ndarray or BlockManager).
	**/
	public function get(item:Dynamic, ?fastpath:Dynamic):Dynamic;
	/**
		Parameters
		----------
		copy : boolean, default False
		    Whether to copy the blocks
	**/
	public function get_bool_data(?copy:Dynamic):Dynamic;
	public function get_dtype_counts():Dynamic;
	public function get_dtypes():Dynamic;
	public function get_ftype_counts():Dynamic;
	public function get_ftypes():Dynamic;
	/**
		Parameters
		----------
		copy : boolean, default False
		    Whether to copy the blocks
	**/
	public function get_numeric_data(?copy:Dynamic):Dynamic;
	/**
		Retrieve single item
	**/
	public function get_scalar(tup:Dynamic):Dynamic;
	public function get_slice(slobj:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		return a dense type view 
	**/
	public function get_values():Dynamic;
	/**
		Return the data as a SingleBlockManager if fastpath=True and possible
		
		Otherwise return as a ndarray
	**/
	public function iget(i:Dynamic, ?fastpath:Dynamic):Dynamic;
	public var index : Dynamic;
	/**
		Insert item at selected position.
		
		Parameters
		----------
		loc : int
		item : hashable
		value : array_like
		allow_duplicates: bool
		    If False, trying to insert non-unique item will raise
	**/
	public function insert(loc:Dynamic, item:Dynamic, value:Dynamic, ?allow_duplicates:Dynamic):Dynamic;
	public function internal_values():Dynamic;
	public function interpolate(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return True if more than one block with the same dtype
	**/
	public function is_consolidated():Dynamic;
	public var is_datelike_mixed_type : Dynamic;
	public var is_mixed_type : Dynamic;
	public var is_numeric_mixed_type : Dynamic;
	/**
		return a boolean if we are a single block and are a view 
	**/
	public var is_view : Dynamic;
	public function isna(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var items : Dynamic;
	/**
		return an empty BlockManager with the items axis of len 0 
	**/
	public function make_empty(?axes:Dynamic):Dynamic;
	public function merge(other:Dynamic, ?lsuffix:Dynamic, ?rsuffix:Dynamic):Dynamic;
	public var nblocks : Dynamic;
	static public var ndim : Dynamic;
	public function putmask(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function quantile(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		iterate over the blocks, collect and create a new block manager.
		This routine is intended for reduction type operations and
		will do inference on the generated blocks.
		
		Parameters
		----------
		f: the callable or function name to operate on at the block level
		axis: reduction axis, default 0
		consolidate: boolean, default True. Join together blocks having same
		    dtype
		transposed: boolean, default False
		    we are holding transposed data
		
		Returns
		-------
		Block Manager (new object)
	**/
	public function reduction(f:Dynamic, ?axis:Dynamic, ?consolidate:Dynamic, ?transposed:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Conform block manager to new index.
	**/
	public function reindex_axis(new_index:Dynamic, axis:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?fill_value:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Parameters
		----------
		new_axis : Index
		indexer : ndarray of int64 or None
		axis : int
		fill_value : object
		allow_dups : bool
		
		pandas-indexer with -1's only.
	**/
	public function reindex_indexer(new_axis:Dynamic, indexer:Dynamic, axis:Dynamic, ?fill_value:Dynamic, ?allow_dups:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Rename one of axes.
		
		Parameters
		----------
		mapper : unary callable
		axis : int
		copy : boolean, default True
		level : int, default None
	**/
	public function rename_axis(mapper:Dynamic, axis:Dynamic, ?copy:Dynamic, ?level:Dynamic):Dynamic;
	public function replace(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		do a list replace 
	**/
	public function replace_list(src_list:Dynamic, dest_list:Dynamic, ?inplace:Dynamic, ?regex:Dynamic, ?mgr:Dynamic):Dynamic;
	/**
		a 2d-nd reshape operation on a BlockManager 
	**/
	public function reshape_nd(axes:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set new item in-place. Does not consolidate. Adds new Block if not
		contained in the current set of items
		if check, then validate that we are not setting the same data in-place
	**/
	public function set(item:Dynamic, value:Dynamic, ?check:Dynamic):Dynamic;
	public function set_axis(axis:Dynamic, new_labels:Dynamic):Dynamic;
	public function setitem(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var shape : Dynamic;
	public function shift(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Take items along any axis.
	**/
	public function take(indexer:Dynamic, ?axis:Dynamic, ?verify:Dynamic, ?convert:Dynamic):Dynamic;
	/**
		Return a dict of str(dtype) -> BlockManager
		
		Parameters
		----------
		copy : boolean, default True
		
		Returns
		-------
		values : a dict of dtype -> BlockManager
		
		Notes
		-----
		This consolidates based on str(dtype)
	**/
	public function to_dict(?copy:Dynamic):Dynamic;
	/**
		Return a blockmanager with all blocks unstacked.
		
		Parameters
		----------
		unstacker_func : callable
		    A (partially-applied) ``pd.core.reshape._Unstacker`` class.
		
		Returns
		-------
		unstacked : BlockManager
	**/
	public function unstack(unstacker_func:Dynamic):Dynamic;
	public function where(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function xs(key:Dynamic, ?axis:Dynamic, ?copy:Dynamic, ?takeable:Dynamic):Dynamic;
}