/* This file is generated, do not edit! */
package pandas.core.internals.blocks;
@:pythonImport("pandas.core.internals.blocks", "NumericBlock") extern class NumericBlock {
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
	static public var _can_consolidate : Dynamic;
	/**
		require the same dtype as ourselves
	**/
	public function _can_hold_element(element:Dynamic):Dynamic;
	/**
		Can we store NA values in this Block?
	**/
	public var _can_hold_na : Dynamic;
	public var _consolidate_key : Dynamic;
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
		downcast specialized to 2D case post-validation.
		
		Refactored to allow use of maybe_split.
	**/
	public function _downcast_2d(dtype:Dynamic):Dynamic;
	static public var _hidden_attrs : Dynamic;
	public function _maybe_downcast(blocks:Dynamic, ?downcast:Dynamic):Dynamic;
	/**
		For compatibility with 1D-only ExtensionArrays.
	**/
	public function _maybe_squeeze_arg(arg:Dynamic):Dynamic;
	public var _mgr_locs : Dynamic;
	/**
		Replace value corresponding to the given boolean array with another
		value.
		
		Parameters
		----------
		to_replace : object or pattern
		    Scalar to replace or regular expression to match.
		value : object
		    Replacement object.
		mask : np.ndarray[bool]
		    True indicate corresponding element is ignored.
		inplace : bool, default True
		    Perform inplace modification.
		regex : bool, default False
		    If true, perform regular expression substitution.
		
		Returns
		-------
		List[Block]
	**/
	public function _replace_coerce(to_replace:Dynamic, value:Dynamic, mask:Dynamic, ?inplace:Dynamic, ?regex:Dynamic):Dynamic;
	/**
		Replace elements by the given value.
		
		Parameters
		----------
		to_replace : object or pattern
		    Scalar to replace or regular expression to match.
		value : object
		    Replacement object.
		inplace : bool, default False
		    Perform inplace modification.
		convert : bool, default True
		    If true, try to coerce any object types to better types.
		mask : array-like of bool, optional
		    True indicate corresponding element is ignored.
		
		Returns
		-------
		List[Block]
	**/
	public function _replace_regex(to_replace:Dynamic, value:Dynamic, ?inplace:Dynamic, ?convert:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		return a slice of my values
	**/
	public function _slice(slicer:Dynamic):Dynamic;
	/**
		Split a block into a list of single-column blocks.
	**/
	public function _split():Dynamic;
	public function _split_op_result(result:Dynamic):Dynamic;
	/**
		Return a list of unstacked blocks of self
		
		Parameters
		----------
		unstacker : reshape._Unstacker
		fill_value : int
		    Only used in ExtensionBlock._unstack
		new_placement : np.ndarray[np.intp]
		allow_fill : bool
		needs_masking : np.ndarray[bool]
		
		Returns
		-------
		blocks : list of Block
		    New blocks of unstacked values.
		mask : array-like of bool
		    The mask of columns of `blocks` we should keep.
	**/
	public function _unstack(unstacker:Dynamic, fill_value:Dynamic, new_placement:Dynamic, needs_masking:Dynamic):Dynamic;
	static public var _validate_ndim : Dynamic;
	/**
		apply the function to my values; return a block if we are not
		one
	**/
	public function apply(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The array that Series.array returns. Always an ExtensionArray.
	**/
	public var array_values : Dynamic;
	/**
		Coerce to the new dtype.
		
		Parameters
		----------
		dtype : np.dtype or ExtensionDtype
		copy : bool, default False
		    copy if indicated
		errors : str, {'raise', 'ignore'}, default 'raise'
		    - ``raise`` : allow exceptions to be raised
		    - ``ignore`` : suppress exceptions. On error return original object
		
		Returns
		-------
		Block
	**/
	public function astype(dtype:Dynamic, ?copy:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		coerce the current block to a dtype compat for other
		we will return a block, possibly object, and not raise
		
		we can also safely try to coerce to the same dtype
		and will receive the same block
	**/
	public function coerce_to_target_dtype(other:Dynamic):Dynamic;
	/**
		attempt to coerce any object types to better types return a copy
		of the block (if copy = True) by definition we are not an ObjectBlock
		here!
	**/
	public function convert(?copy:Dynamic, ?datetime:Dynamic, ?numeric:Dynamic, ?timedelta:Dynamic):Dynamic;
	/**
		copy constructor
	**/
	public function copy(?deep:Dynamic):Dynamic;
	/**
		Delete given loc(-s) from block in-place.
	**/
	public function delete(loc:Dynamic):Dynamic;
	/**
		return block for the diff of the values
	**/
	public function diff(n:Dynamic, ?axis:Dynamic):Dynamic;
	public var dtype : Dynamic;
	public function external_values():Dynamic;
	public var fill_value : Dynamic;
	/**
		fillna on the block with the value. If we fail, then convert to
		ObjectBlock and try again
	**/
	public function fillna(value:Dynamic, ?limit:Dynamic, ?inplace:Dynamic, ?downcast:Dynamic):Dynamic;
	/**
		return an internal format, currently just the ndarray
		this is often overridden to handle to_dense like operations
	**/
	public function get_values(?dtype:Dynamic):Dynamic;
	/**
		Perform __getitem__-like, return result as block.
		
		Only supports slices that preserve dimensionality.
	**/
	public function getitem_block(slicer:Dynamic):Dynamic;
	/**
		Perform __getitem__-like, return result as block.
		
		Only supports slices that preserve dimensionality.
	**/
	public function getitem_block_columns(slicer:Dynamic, new_mgr_locs:Dynamic):Dynamic;
	/**
		Perform __getitem__-like specialized to slicing along index.
		
		Assumes self.ndim == 2
	**/
	public function getitem_block_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function iget(i:Dynamic):Dynamic;
	public function interpolate(?method:Dynamic, ?axis:Dynamic, ?index:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?limit_direction:Dynamic, ?limit_area:Dynamic, ?fill_value:Dynamic, ?coerce:Dynamic, ?downcast:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		We can be bool if a) we are bool dtype or b) object dtype with bool objects.
	**/
	public var is_bool : Dynamic;
	public var is_categorical : Dynamic;
	static public var is_extension : Dynamic;
	static public var is_numeric : Dynamic;
	static public var is_object : Dynamic;
	/**
		return a boolean if I am possibly a view
	**/
	public var is_view : Dynamic;
	/**
		Create a new block, with type inference propagate any values that are
		not specified
	**/
	public function make_block(values:Dynamic, ?placement:Dynamic):Dynamic;
	/**
		Wrap given values in a block of same type as self.
	**/
	public function make_block_same_class(values:Dynamic, ?placement:Dynamic):Dynamic;
	public var mgr_locs : Dynamic;
	public var ndim : Dynamic;
	/**
		putmask the data to the block; it is possible that we may create a
		new dtype of block
		
		Return the resulting block(s).
		
		Parameters
		----------
		mask : np.ndarray[bool], SparseArray[bool], or BooleanArray
		new : a ndarray/object
		
		Returns
		-------
		List[Block]
	**/
	public function putmask(mask:Dynamic, _new:Dynamic):Dynamic;
	/**
		compute the quantiles of the
		
		Parameters
		----------
		qs : Float64Index
		    List of the quantiles to be computed.
		interpolation : str, default 'linear'
		    Type of interpolation.
		axis : int, default 0
		    Axis to compute.
		
		Returns
		-------
		Block
	**/
	public function quantile(qs:Dynamic, ?interpolation:Dynamic, ?axis:Dynamic):Dynamic;
	public function reduce(func:Dynamic, ?ignore_failures:Dynamic):Dynamic;
	/**
		replace the to_replace value with value, possible to create new
		blocks here this is just a call to putmask.
	**/
	public function replace(to_replace:Dynamic, value:Dynamic, ?inplace:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		See BlockManager.replace_list docstring.
	**/
	public function replace_list(src_list:Dynamic, dest_list:Dynamic, ?inplace:Dynamic, ?regex:Dynamic):Dynamic;
	/**
		Modify block values in-place with new item value.
		
		Notes
		-----
		`set` never creates a new array or new Block, whereas `setitem` _may_
		create a new array and always creates a new Block.
	**/
	public function set_inplace(locs:Dynamic, values:Dynamic):Dynamic;
	/**
		Attempt self.values[indexer] = value, possibly creating a new array.
		
		Parameters
		----------
		indexer : tuple, list-like, array-like, slice, int
		    The subset of self.values to set
		value : object
		    The value being set
		
		Returns
		-------
		Block
		
		Notes
		-----
		`indexer` is a direct slice/positional indexer. `value` must
		be a compatible shape.
	**/
	public function setitem(indexer:Dynamic, value:Dynamic):Dynamic;
	public var shape : Dynamic;
	/**
		shift the block by periods, possibly upcast
	**/
	public function shift(periods:Dynamic, ?axis:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Should we set self.values[indexer] = value inplace or do we need to cast?
		
		Parameters
		----------
		value : np.ndarray or ExtensionArray
		
		Returns
		-------
		bool
	**/
	public function should_store(value:Dynamic):Dynamic;
	/**
		Split the block and apply func column-by-column.
		
		Parameters
		----------
		func : Block method
		*args
		**kwargs
		
		Returns
		-------
		List[Block]
	**/
	public function split_and_operate(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Take values according to indexer and return them as a block.bb
	**/
	public function take_nd(indexer:Dynamic, axis:Dynamic, ?new_mgr_locs:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		convert to our native types format
	**/
	public function to_native_types(?na_rep:Dynamic, ?quoting:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var values : Dynamic;
	public function values_for_json():Dynamic;
	/**
		evaluate the block; return result block(s) from the result
		
		Parameters
		----------
		other : a ndarray/object
		cond : np.ndarray[bool], SparseArray[bool], or BooleanArray
		
		Returns
		-------
		List[Block]
	**/
	public function where(other:Dynamic, cond:Dynamic):Dynamic;
}