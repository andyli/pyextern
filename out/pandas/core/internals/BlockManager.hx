/* This file is generated, do not edit! */
package pandas.core.internals;
@:pythonImport("pandas.core.internals", "BlockManager") extern class BlockManager {
	public function __bool__():Dynamic;
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(blocks:Dynamic, axes:Dynamic, ?do_integrity_check:Dynamic, ?fastpath:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(blocks:Dynamic, axes:Dynamic, ?do_integrity_check:Dynamic, ?fastpath:Dynamic):Void;
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
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public var _blklocs : Dynamic;
	public var _blknos : Dynamic;
	public function _consolidate_check():Dynamic;
	public function _consolidate_inplace():Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	public var _constructor : Dynamic;
	/**
		add addtional __dir__ for this object 
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
	public var _is_consolidated : Dynamic;
	/**
		Check all axes except items
	**/
	public function _is_indexed_like(other:Dynamic):Dynamic;
	public var _is_single_block : Dynamic;
	public var _known_consolidated : Dynamic;
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
	public function _verify_integrity():Dynamic;
	public function add_prefix(prefix:Dynamic):Dynamic;
	public function add_suffix(suffix:Dynamic):Dynamic;
	/**
		iterate over the blocks, collect and create a new block manager
		
		Parameters
		----------
		f : the callable or function name to operate on at the block level
		axes : optional (if not supplied, use self.axes)
		filter : list, if supplied, only call the block if the filter is in
		         the block
		do_integrity_check : boolean, default False. Do the block manager integrity check
		consolidate: boolean, default True. Join together blocks having same dtype
		
		Returns
		-------
		Block Manager (new object)
	**/
	public function apply(f:Dynamic, ?axes:Dynamic, ?filter:Dynamic, ?do_integrity_check:Dynamic, ?consolidate:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function as_matrix(?items:Dynamic):Dynamic;
	public function astype(dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var axes : Dynamic;
	public var blocks : Dynamic;
	/**
		return a new manager with the blocks 
	**/
	public function combine(blocks:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Join together blocks having same dtype
		
		Returns
		-------
		y : BlockManager
	**/
	public function consolidate():Dynamic;
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
	public function copy(?deep:Dynamic):Dynamic;
	/**
		Delete selected item (items if non-unique) in-place.
	**/
	public function delete(item:Dynamic):Dynamic;
	public function diff(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function downcast(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function equals(other:Dynamic):Dynamic;
	public function eval(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		get a cross sectional for a given location in the
		items ; handle dups
		
		return the result, is *could* be a view in the case of a
		single block
	**/
	public function fast_xs(loc:Dynamic):Dynamic;
	public function fillna(?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Return the data as a SingleBlockManager if fastpath=True and possible
		
		Otherwise return as a ndarray
	**/
	public function iget(i:Dynamic, ?fastpath:Dynamic):Dynamic;
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
	public function isnull(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var items : Dynamic;
	/**
		return an empty BlockManager with the items axis of len 0 
	**/
	public function make_empty(?axes:Dynamic):Dynamic;
	public function merge(other:Dynamic, ?lsuffix:Dynamic, ?rsuffix:Dynamic):Dynamic;
	public var nblocks : Dynamic;
	public var ndim : Dynamic;
	public function putmask(?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	**/
	public function rename_axis(mapper:Dynamic, axis:Dynamic, ?copy:Dynamic):Dynamic;
	public function replace(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		do a list replace 
	**/
	public function replace_list(src_list:Dynamic, dest_list:Dynamic, ?inplace:Dynamic, ?regex:Dynamic):Dynamic;
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
	public function where(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function xs(key:Dynamic, ?axis:Dynamic, ?copy:Dynamic, ?takeable:Dynamic):Dynamic;
}