/* This file is generated, do not edit! */
package pandas.core.internals;
@:pythonImport("pandas.core.internals", "NumericBlock") extern class NumericBlock {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(values:Dynamic, placement:Dynamic, ?ndim:Dynamic, ?fastpath:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(values:Dynamic, placement:Dynamic, ?ndim:Dynamic, ?fastpath:Dynamic):Void;
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
	/**
		Coerce to the new type (if copy=True, return a new copy)
		raise on an except if raise == True
	**/
	public function _astype(dtype:Dynamic, ?copy:Dynamic, ?raise_on_error:Dynamic, ?values:Dynamic, ?klass:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _box_to_block_values : Dynamic;
	static public var _can_consolidate : Dynamic;
	public function _can_hold_element(value:Dynamic):Dynamic;
	static public var _can_hold_na : Dynamic;
	public var _consolidate_key : Dynamic;
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
	static public var _downcast_dtype : Dynamic;
	static public var _ftype : Dynamic;
	static public var _holder : Dynamic;
	/**
		interpolate using scipy wrappers 
	**/
	public function _interpolate(?method:Dynamic, ?index:Dynamic, ?values:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic, ?limit:Dynamic, ?limit_direction:Dynamic, ?inplace:Dynamic, ?downcast:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		fillna but using the interpolate machinery 
	**/
	public function _interpolate_with_fill(?method:Dynamic, ?axis:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?fill_value:Dynamic, ?coerce:Dynamic, ?downcast:Dynamic):Dynamic;
	public var _is_single_block : Dynamic;
	public function _maybe_downcast(blocks:Dynamic, ?downcast:Dynamic):Dynamic;
	public var _mgr_locs : Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		return a slice of my values 
	**/
	public function _slice(slicer:Dynamic):Dynamic;
	public function _try_cast(value:Dynamic):Dynamic;
	/**
		try to cast the result to our original type,
		we may have roundtripped thru object in the mean-time 
	**/
	public function _try_cast_result(result:Dynamic, ?dtype:Dynamic):Dynamic;
	public function _try_coerce_and_cast_result(result:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		provide coercion to our input arguments 
	**/
	public function _try_coerce_args(values:Dynamic, other:Dynamic):Dynamic;
	/**
		reverse of try_coerce_args 
	**/
	public function _try_coerce_result(result:Dynamic):Dynamic;
	public function _try_fill(value:Dynamic):Dynamic;
	/**
		return a version to operate on as the input 
	**/
	public function _try_operate(values:Dynamic):Dynamic;
	static public var _validate_ndim : Dynamic;
	static public var _verify_integrity : Dynamic;
	/**
		apply the function to my values; return a block if we are not one 
	**/
	public function apply(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		the dtype to return if I want to construct this block as an array 
	**/
	public var array_dtype : Dynamic;
	public function astype(dtype:Dynamic, ?copy:Dynamic, ?raise_on_error:Dynamic, ?values:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		attempt to coerce any object types to better types
		return a copy of the block (if copy = True)
		by definition we are not an ObjectBlock here!  
	**/
	public function convert(?copy:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function copy(?deep:Dynamic):Dynamic;
	/**
		Delete given loc(-s) from block in-place.
	**/
	public function delete(loc:Dynamic):Dynamic;
	/**
		return block for the diff of the values 
	**/
	public function diff(n:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		try to downcast each item to the dict of dtypes if present 
	**/
	public function downcast(?dtypes:Dynamic):Dynamic;
	public var dtype : Dynamic;
	public function equals(other:Dynamic):Dynamic;
	/**
		evaluate the block; return result block from the result
		
		Parameters
		----------
		func  : how to combine self, other
		other : a ndarray/object
		raise_on_error : if True, raise when I can't perform the function,
		    False by default (and just return the data that we had coming in)
		
		Returns
		-------
		a new block, the result of the func
	**/
	public function eval(func:Dynamic, other:Dynamic, ?raise_on_error:Dynamic, ?try_cast:Dynamic):Dynamic;
	/**
		return an outside world format, currently just the ndarray 
	**/
	public function external_values(?dtype:Dynamic):Dynamic;
	public var fill_value : Dynamic;
	public function fillna(value:Dynamic, ?limit:Dynamic, ?inplace:Dynamic, ?downcast:Dynamic):Dynamic;
	public var ftype : Dynamic;
	public function get(item:Dynamic):Dynamic;
	/**
		return an internal format, currently just the ndarray
		this is often overriden to handle to_dense like operations
	**/
	public function get_values(?dtype:Dynamic):Dynamic;
	/**
		Perform __getitem__-like, return result as block.
		
		As of now, only supports slices that preserve dimensionality.
	**/
	public function getitem_block(slicer:Dynamic, ?new_mgr_locs:Dynamic):Dynamic;
	public function iget(i:Dynamic):Dynamic;
	/**
		return an internal format, currently just the ndarray
		this should be the pure internal API format 
	**/
	public function internal_values(?dtype:Dynamic):Dynamic;
	public function interpolate(?method:Dynamic, ?axis:Dynamic, ?index:Dynamic, ?values:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?limit_direction:Dynamic, ?fill_value:Dynamic, ?coerce:Dynamic, ?downcast:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var is_bool : Dynamic;
	static public var is_categorical : Dynamic;
	/**
		validate that we have a astypeable to categorical,
		returns a boolean if we are a categorical
	**/
	public function is_categorical_astype(dtype:Dynamic):Dynamic;
	static public var is_complex : Dynamic;
	/**
		return True if I am a non-datelike 
	**/
	public var is_datelike : Dynamic;
	static public var is_datetime : Dynamic;
	static public var is_datetimetz : Dynamic;
	static public var is_float : Dynamic;
	static public var is_integer : Dynamic;
	static public var is_numeric : Dynamic;
	static public var is_object : Dynamic;
	static public var is_sparse : Dynamic;
	static public var is_timedelta : Dynamic;
	/**
		return a boolean if I am possibly a view 
	**/
	public var is_view : Dynamic;
	public var itemsize : Dynamic;
	/**
		Create a new block, with type inference
		propogate any values that are not specified
	**/
	public function make_block(values:Dynamic, ?placement:Dynamic, ?ndim:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wrap given values in a block of same type as self.
		
		`kwargs` are used in SparseBlock override.
	**/
	public function make_block_same_class(values:Dynamic, placement:Dynamic, ?copy:Dynamic, ?fastpath:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function merge(other:Dynamic):Dynamic;
	public var mgr_locs : Dynamic;
	public var ndim : Dynamic;
	/**
		putmask the data to the block; it is possible that we may create a
		new dtype of block
		
		return the resulting block(s)
		
		Parameters
		----------
		mask  : the condition to respect
		new : a ndarray/object
		align : boolean, perform alignment on other/cond, default is True
		inplace : perform inplace modification, default is False
		axis : int
		transpose : boolean
		    Set to True if self is stored with axes reversed
		
		Returns
		-------
		a list of new blocks, the result of the putmask
	**/
	public function putmask(mask:Dynamic, _new:Dynamic, ?align:Dynamic, ?inplace:Dynamic, ?axis:Dynamic, ?transpose:Dynamic):Dynamic;
	/**
		Reindex using pre-computed indexer information
	**/
	public function reindex_axis(indexer:Dynamic, ?method:Dynamic, ?axis:Dynamic, ?fill_value:Dynamic, ?limit:Dynamic, ?mask_info:Dynamic):Dynamic;
	/**
		replace the to_replace value with value, possible to create new
		blocks here this is just a call to putmask. regex is not used here.
		It is used in ObjectBlocks.  It is here for API
		compatibility.
	**/
	public function replace(to_replace:Dynamic, value:Dynamic, ?inplace:Dynamic, ?filter:Dynamic, ?regex:Dynamic):Dynamic;
	/**
		Parameters
		----------
		labels : list of new axis labels
		shape : new shape
		ref_items : new ref_items
		
		return a new block that is transformed to a nd block
	**/
	public function reshape_nd(labels:Dynamic, shape:Dynamic, ref_items:Dynamic):Dynamic;
	/**
		Modify Block in-place with new item value
		
		Returns
		-------
		None
	**/
	public function set(locs:Dynamic, values:Dynamic, ?check:Dynamic):Dynamic;
	/**
		set the value inplace; return a new block (of a possibly different
		dtype)
		
		indexer is a direct slice/positional indexer; value must be a
		compatible shape
	**/
	public function setitem(indexer:Dynamic, value:Dynamic):Dynamic;
	public var shape : Dynamic;
	/**
		shift the block by periods, possibly upcast 
	**/
	public function shift(periods:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Take values according to indexer and return them as a block.bb
	**/
	public function take_nd(indexer:Dynamic, axis:Dynamic, ?new_mgr_locs:Dynamic, ?fill_tuple:Dynamic):Dynamic;
	public function to_dense():Dynamic;
	/**
		convert to our native types format, slicing if desired 
	**/
	public function to_native_types(?slicer:Dynamic, ?na_rep:Dynamic, ?quoting:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var values : Dynamic;
	/**
		evaluate the block; return result block(s) from the result
		
		Parameters
		----------
		other : a ndarray/object
		cond  : the condition to respect
		align : boolean, perform alignment on other/cond
		raise_on_error : if True, raise when I can't perform the function,
		    False by default (and just return the data that we had coming in)
		axis : int
		transpose : boolean
		    Set to True if self is stored with axes reversed
		
		Returns
		-------
		a new block(s), the result of the func
	**/
	public function where(other:Dynamic, cond:Dynamic, ?align:Dynamic, ?raise_on_error:Dynamic, ?try_cast:Dynamic, ?axis:Dynamic, ?transpose:Dynamic):Dynamic;
}