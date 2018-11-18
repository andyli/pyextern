/* This file is generated, do not edit! */
package pandas.core.internals;
@:pythonImport("pandas.core.internals", "NumericBlock") extern class NumericBlock {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(values:Dynamic, placement:Dynamic, ?ndim:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(values:Dynamic, placement:Dynamic, ?ndim:Dynamic):Void;
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
		Coerce to the new type
		
		Parameters
		----------
		dtype : str, dtype convertible
		copy : boolean, default False
		    copy if indicated
		errors : str, {'raise', 'ignore'}, default 'ignore'
		    - ``raise`` : allow exceptions to be raised
		    - ``ignore`` : suppress exceptions. On error return original object
		
		Returns
		-------
		Block
	**/
	public function _astype(dtype:Dynamic, ?copy:Dynamic, ?errors:Dynamic, ?values:Dynamic, ?klass:Dynamic, ?mgr:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _box_to_block_values : Dynamic;
	static public var _can_consolidate : Dynamic;
	/**
		require the same dtype as ourselves 
	**/
	public function _can_hold_element(element:Dynamic):Dynamic;
	static public var _can_hold_na : Dynamic;
	/**
		ndim inference and validation.
		
		Infers ndim from 'values' if not provided to __init__.
		Validates that values.ndim and ndim are consistent if and only if
		the class variable '_validate_ndim' is True.
		
		Parameters
		----------
		values : array-like
		ndim : int or None
		
		Returns
		-------
		ndim : int
		
		Raises
		------
		ValueError : the number of dimensions do not match
	**/
	public function _check_ndim(values:Dynamic, ndim:Dynamic):Int;
	/**
		concatenate((a1, a2, ...), axis=0, out=None)
		
		Join a sequence of arrays along an existing axis.
		
		Parameters
		----------
		a1, a2, ... : sequence of array_like
		    The arrays must have the same shape, except in the dimension
		    corresponding to `axis` (the first, by default).
		axis : int, optional
		    The axis along which the arrays will be joined.  If axis is None,
		    arrays are flattened before use.  Default is 0.
		out : ndarray, optional
		    If provided, the destination to place the result. The shape must be
		    correct, matching that of what concatenate would have returned if no
		    out argument were specified.
		
		Returns
		-------
		res : ndarray
		    The concatenated array.
		
		See Also
		--------
		ma.concatenate : Concatenate function that preserves input masks.
		array_split : Split an array into multiple sub-arrays of equal or
		              near-equal size.
		split : Split array into a list of multiple sub-arrays of equal size.
		hsplit : Split array into multiple sub-arrays horizontally (column wise)
		vsplit : Split array into multiple sub-arrays vertically (row wise)
		dsplit : Split array into multiple sub-arrays along the 3rd axis (depth).
		stack : Stack a sequence of arrays along a new axis.
		hstack : Stack arrays in sequence horizontally (column wise)
		vstack : Stack arrays in sequence vertically (row wise)
		dstack : Stack arrays in sequence depth wise (along third dimension)
		
		Notes
		-----
		When one or more of the arrays to be concatenated is a MaskedArray,
		this function will return a MaskedArray object instead of an ndarray,
		but the input masks are *not* preserved. In cases where a MaskedArray
		is expected as input, use the ma.concatenate function from the masked
		array module instead.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> b = np.array([[5, 6]])
		>>> np.concatenate((a, b), axis=0)
		array([[1, 2],
		       [3, 4],
		       [5, 6]])
		>>> np.concatenate((a, b.T), axis=1)
		array([[1, 2, 5],
		       [3, 4, 6]])
		>>> np.concatenate((a, b), axis=None)
		array([1, 2, 3, 4, 5, 6])
		
		This function will not preserve masking of MaskedArray inputs.
		
		>>> a = np.ma.arange(3)
		>>> a[1] = np.ma.masked
		>>> b = np.arange(2, 5)
		>>> a
		masked_array(data = [0 -- 2],
		             mask = [False  True False],
		       fill_value = 999999)
		>>> b
		array([2, 3, 4])
		>>> np.concatenate([a, b])
		masked_array(data = [0 1 2 2 3 4],
		             mask = False,
		       fill_value = 999999)
		>>> np.ma.concatenate([a, b])
		masked_array(data = [0 -- 2 2 3 4],
		             mask = [False  True False False False False],
		       fill_value = 999999)
	**/
	static public function _concatenator(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _consolidate_key : Dynamic;
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
	static public var _ftype : Dynamic;
	/**
		The array-like that can hold the underlying values.
		
		None for 'Block', overridden by subclasses that don't
		use an ndarray.
	**/
	public var _holder : Dynamic;
	/**
		interpolate using scipy wrappers 
	**/
	public function _interpolate(?method:Dynamic, ?index:Dynamic, ?values:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic, ?limit:Dynamic, ?limit_direction:Dynamic, ?limit_area:Dynamic, ?inplace:Dynamic, ?downcast:Dynamic, ?mgr:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		fillna but using the interpolate machinery 
	**/
	public function _interpolate_with_fill(?method:Dynamic, ?axis:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?fill_value:Dynamic, ?coerce:Dynamic, ?downcast:Dynamic, ?mgr:Dynamic):Dynamic;
	public var _is_single_block : Dynamic;
	public function _maybe_downcast(blocks:Dynamic, ?downcast:Dynamic):Dynamic;
	public var _mgr_locs : Dynamic;
	public var _na_value : Dynamic;
	/**
		no-op on a non-ObjectBlock 
	**/
	public function _replace_single(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		return a slice of my values 
	**/
	public function _slice(slicer:Dynamic):Dynamic;
	/**
		try to cast the result to our original type, we may have
		roundtripped thru object in the mean-time
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
	/**
		Return a list of unstacked blocks of self
		
		Parameters
		----------
		unstacker_func : callable
		    Partially applied unstacker.
		new_columns : Index
		    All columns of the unstacked BlockManager.
		
		Returns
		-------
		blocks : list of Block
		    New blocks of unstacked values.
		mask : array_like of bool
		    The mask of columns of `blocks` we should keep.
	**/
	public function _unstack(unstacker_func:Dynamic, new_columns:Dynamic):Dynamic;
	static public var _validate_ndim : Dynamic;
	static public var _verify_integrity : Dynamic;
	/**
		apply the function to my values; return a block if we are not
		one
	**/
	public function apply(func:Dynamic, ?mgr:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		the dtype to return if I want to construct this block as an
		array
	**/
	public var array_dtype : Dynamic;
	public function astype(dtype:Dynamic, ?copy:Dynamic, ?errors:Dynamic, ?values:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		coerce the current block to a dtype compat for other
		we will return a block, possibly object, and not raise
		
		we can also safely try to coerce to the same dtype
		and will receive the same block
	**/
	public function coerce_to_target_dtype(other:Dynamic):Dynamic;
	/**
		Concatenate list of single blocks of the same type.
	**/
	public function concat_same_type(to_concat:Dynamic, ?placement:Dynamic):Dynamic;
	/**
		attempt to coerce any object types to better types return a copy
		of the block (if copy = True) by definition we are not an ObjectBlock
		here!
	**/
	public function convert(?copy:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		copy constructor 
	**/
	public function copy(?deep:Dynamic, ?mgr:Dynamic):Dynamic;
	/**
		Delete given loc(-s) from block in-place.
	**/
	public function delete(loc:Dynamic):Dynamic;
	/**
		return block for the diff of the values 
	**/
	public function diff(n:Dynamic, ?axis:Dynamic, ?mgr:Dynamic):Dynamic;
	/**
		try to downcast each item to the dict of dtypes if present 
	**/
	public function downcast(?dtypes:Dynamic, ?mgr:Dynamic):Dynamic;
	public var dtype : Dynamic;
	public function equals(other:Dynamic):Dynamic;
	/**
		evaluate the block; return result block from the result
		
		Parameters
		----------
		func  : how to combine self, other
		other : a ndarray/object
		errors : str, {'raise', 'ignore'}, default 'raise'
		    - ``raise`` : allow exceptions to be raised
		    - ``ignore`` : suppress exceptions. On error return original object
		
		try_cast : try casting the results to the input type
		
		Returns
		-------
		a new block, the result of the func
	**/
	public function eval(func:Dynamic, other:Dynamic, ?errors:Dynamic, ?try_cast:Dynamic, ?mgr:Dynamic):Dynamic;
	/**
		return an outside world format, currently just the ndarray 
	**/
	public function external_values(?dtype:Dynamic):Dynamic;
	public var fill_value : Dynamic;
	/**
		fillna on the block with the value. If we fail, then convert to
		ObjectBlock and try again
	**/
	public function fillna(value:Dynamic, ?limit:Dynamic, ?inplace:Dynamic, ?downcast:Dynamic, ?mgr:Dynamic):Dynamic;
	/**
		Return the internal values used by the DataFrame/SeriesFormatter
	**/
	public function formatting_values():Dynamic;
	public var ftype : Dynamic;
	/**
		return an internal format, currently just the ndarray
		this is often overridden to handle to_dense like operations
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
	public function interpolate(?method:Dynamic, ?axis:Dynamic, ?index:Dynamic, ?values:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?limit_direction:Dynamic, ?limit_area:Dynamic, ?fill_value:Dynamic, ?coerce:Dynamic, ?downcast:Dynamic, ?mgr:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var is_extension : Dynamic;
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
	/**
		Create a new block, with type inference propagate any values that are
		not specified
	**/
	public function make_block(values:Dynamic, ?placement:Dynamic, ?ndim:Dynamic):Dynamic;
	/**
		Wrap given values in a block of same type as self. 
	**/
	public function make_block_same_class(values:Dynamic, ?placement:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Create a ScalarBlock
	**/
	public function make_block_scalar(values:Dynamic):Dynamic;
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
	public function putmask(mask:Dynamic, _new:Dynamic, ?align:Dynamic, ?inplace:Dynamic, ?axis:Dynamic, ?transpose:Dynamic, ?mgr:Dynamic):Dynamic;
	/**
		compute the quantiles of the
		
		Parameters
		----------
		qs: a scalar or list of the quantiles to be computed
		interpolation: type of interpolation, default 'linear'
		axis: axis to compute, default 0
		
		Returns
		-------
		tuple of (axis, block)
	**/
	public function quantile(qs:Dynamic, ?interpolation:Dynamic, ?axis:Dynamic, ?mgr:Dynamic):Dynamic;
	/**
		replace the to_replace value with value, possible to create new
		blocks here this is just a call to putmask. regex is not used here.
		It is used in ObjectBlocks.  It is here for API
		compatibility.
	**/
	public function replace(to_replace:Dynamic, value:Dynamic, ?inplace:Dynamic, ?filter:Dynamic, ?regex:Dynamic, ?convert:Dynamic, ?mgr:Dynamic):Dynamic;
	/**
		Parameters
		----------
		labels : list of new axis labels
		shape : new shape
		ref_items : new ref_items
		
		return a new block that is transformed to a nd block
	**/
	public function reshape_nd(labels:Dynamic, shape:Dynamic, ref_items:Dynamic, ?mgr:Dynamic):Dynamic;
	/**
		Modify Block in-place with new item value
		
		Returns
		-------
		None
	**/
	public function set(locs:Dynamic, values:Dynamic, ?check:Dynamic):Dynamic;
	/**
		Set the value inplace, returning a a maybe different typed block.
		
		Parameters
		----------
		indexer : tuple, list-like, array-like, slice
		    The subset of self.values to set
		value : object
		    The value being set
		mgr : BlockPlacement, optional
		
		Returns
		-------
		Block
		
		Notes
		-----
		`indexer` is a direct slice/positional indexer. `value` must
		be a compatible shape.
	**/
	public function setitem(indexer:Dynamic, value:Dynamic, ?mgr:Dynamic):Dynamic;
	public var shape : Dynamic;
	/**
		shift the block by periods, possibly upcast 
	**/
	public function shift(periods:Dynamic, ?axis:Dynamic, ?mgr:Dynamic):Dynamic;
	/**
		split the block per-column, and apply the callable f
		per-column, return a new block for each. Handle
		masking which will not change a block unless needed.
		
		Parameters
		----------
		mask : 2-d boolean mask
		f : callable accepting (1d-mask, 1d values, indexer)
		inplace : boolean
		
		Returns
		-------
		list of blocks
	**/
	public function split_and_operate(mask:Dynamic, f:Dynamic, inplace:Dynamic):Dynamic;
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
		errors : str, {'raise', 'ignore'}, default 'raise'
		    - ``raise`` : allow exceptions to be raised
		    - ``ignore`` : suppress exceptions. On error return original object
		
		axis : int
		transpose : boolean
		    Set to True if self is stored with axes reversed
		
		Returns
		-------
		a new block(s), the result of the func
	**/
	public function where(other:Dynamic, cond:Dynamic, ?align:Dynamic, ?errors:Dynamic, ?try_cast:Dynamic, ?axis:Dynamic, ?transpose:Dynamic, ?mgr:Dynamic):Dynamic;
}