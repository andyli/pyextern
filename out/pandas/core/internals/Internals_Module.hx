/* This file is generated, do not edit! */
package pandas.core.internals;
@:pythonImport("pandas.core.internals") extern class Internals_Module {
	static public var _NS_DTYPE : Dynamic;
	static public var _TD_DTYPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		pivot to the labels shape 
	**/
	static public function _block2d_to_blocknd(values:Dynamic, placement:Dynamic, shape:Dynamic, labels:Dynamic, ref_items:Dynamic):Dynamic;
	/**
		guarantee the shape of the values to be at least 1 d 
	**/
	static public function _block_shape(values:Dynamic, ?ndim:Dynamic, ?shape:Dynamic):Dynamic;
	/**
		convert strings to timedelta; coerce to Timedelta (if box), else np.timedelta64
	**/
	static public function _coerce_scalar_to_timedelta_type(r:Dynamic, ?unit:Dynamic, ?box:Dynamic, ?errors:Dynamic):Dynamic;
	static public function _concat_indexes(indexes:Dynamic):Dynamic;
	/**
		Merge blocks having same dtype, exclude non-consolidating blocks
	**/
	static public function _consolidate(blocks:Dynamic):Dynamic;
	static public function _ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		return a new extended blocks, givin the result 
	**/
	static public function _extend_blocks(result:Dynamic, ?blocks:Dynamic):Dynamic;
	/**
		given a tuple of shape and a list of Categorical labels, return the
		expanded label indexer
	**/
	static public function _factor_indexer(shape:Dynamic, labels:Dynamic):Dynamic;
	/**
		Faster version of set(arr) for sequences of small numbers.
	**/
	static public function _fast_count_smallints(arr:Dynamic):Dynamic;
	/**
		Parameters
		----------
		blknos : array of int64
		blk_count : int
		group : bool
		
		Returns
		-------
		iterator
		    yield (BlockPlacement, blkno)
	**/
	static public function _get_blkno_placements(blknos:Dynamic, blk_count:Dynamic, ?group:Dynamic):Dynamic;
	/**
		interpret the dtype from a scalar 
	**/
	static public function _infer_dtype_from_scalar(val:Dynamic):Dynamic;
	static public function _interleaved_dtype(blocks:Dynamic):Dynamic;
	/**
		Convert string-like and string-like array to convert object dtype.
		This is to avoid numpy to handle the array as str dtype.
	**/
	static public function _maybe_convert_string_to_object(values:Dynamic):Dynamic;
	static public function _maybe_promote(dtype:Dynamic, ?fill_value:Dynamic):Dynamic;
	static public function _maybe_to_sparse(array:Dynamic):Dynamic;
	static public function _merge_blocks(blocks:Dynamic, ?dtype:Dynamic, ?_can_consolidate:Dynamic):Dynamic;
	/**
		return an array of blocks that potentially have different dtypes 
	**/
	static public function _multi_blockify(tuples:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _possibly_compare(a:Dynamic, b:Dynamic, op:Dynamic):Dynamic;
	/**
		try to cast to the specified dtype (e.g. convert back to bool/int
		or could be an astype of float64->float32
	**/
	static public function _possibly_downcast_to_dtype(result:Dynamic, dtype:Dynamic):Dynamic;
	static public function _preprocess_slice_or_indexer(slice_or_indexer:Dynamic, length:Dynamic, allow_fill:Dynamic):Dynamic;
	/**
		Return a new block, try to preserve dtype if possible.
		
		Parameters
		----------
		v : `values`, updated in-place (array like)
		m : `mask`, applies to both sides (array like)
		n : `new values` either scalar or an array like aligned with `values`
	**/
	static public function _putmask_smart(v:Dynamic, m:Dynamic, n:Dynamic):Dynamic;
	/**
		return a single array of a block that has a single dtype; if dtype is
		not None, coerce to this dtype
	**/
	static public function _simple_blockify(tuples:Dynamic, dtype:Dynamic):Dynamic;
	/**
		return an array of blocks that potentially have different dtypes (and
		are sparse)
	**/
	static public function _sparse_blockify(tuples:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _stack_arrays(tuples:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Apply function to all values found in index.
		
		This includes transforming multiindex entries separately.
	**/
	static public function _transform_index(index:Dynamic, func:Dynamic):Dynamic;
	static public function _vstack(to_stack:Dynamic, dtype:Dynamic):Dynamic;
	/**
		True if two arrays, left and right, have equal non-NaN elements, and NaNs in
		corresponding locations.  False otherwise. It is assumed that left and right
		are NumPy arrays of the same dtype. The behavior of this function
		(particularly with respect to NaNs) is not defined if the dtypes are
		different.
		
		Parameters
		----------
		left, right : ndarrays
		strict_nan : bool, default False
		    If True, consider NaN and None to be different.
		
		Returns
		-------
		b : bool
		    Returns True if the arrays are equivalent.
		
		Examples
		--------
		>>> array_equivalent(
		...     np.array([1, 2, np.nan]),
		...     np.array([1, 2, np.nan]))
		True
		>>> array_equivalent(
		...     np.array([1, np.nan, 2]),
		...     np.array([1, 2, np.nan]))
		False
	**/
	static public function array_equivalent(left:Dynamic, right:Dynamic, ?strict_nan:Dynamic):Bool;
	/**
		Combine multiple concatenation plans into one.
		
		existing_plan is updated in-place.
	**/
	static public function combine_concat_plans(plans:Dynamic, concat_axis:Dynamic):Dynamic;
	/**
		Concatenate block managers into one.
		
		Parameters
		----------
		mgrs_indexers : list of (BlockManager, {axis: indexer,...}) tuples
		axes : list of Index
		concat_axis : int
		copy : bool
	**/
	static public function concatenate_block_managers(mgrs_indexers:Dynamic, axes:Dynamic, concat_axis:Dynamic, copy:Dynamic):Dynamic;
	/**
		Concatenate values from several join units along selected axis.
	**/
	static public function concatenate_join_units(join_units:Dynamic, concat_axis:Dynamic, copy:Dynamic):Dynamic;
	/**
		raise a helpful message about our construction 
	**/
	static public function construction_error(tot_items:Dynamic, block_shape:Dynamic, axes:Dynamic, ?e:Dynamic):Dynamic;
	static public function create_block_manager_from_arrays(arrays:Dynamic, names:Dynamic, axes:Dynamic):Dynamic;
	static public function create_block_manager_from_blocks(blocks:Dynamic, axes:Dynamic):Dynamic;
	static public function form_blocks(arrays:Dynamic, names:Dynamic, axes:Dynamic):Dynamic;
	/**
		Return dtype and N/A values to use when concatenating specified units.
		
		Returned N/A value may be None which means there was no casting involved.
		
		Returns
		-------
		dtype
		na
	**/
	static public function get_empty_dtype_and_na(join_units:Dynamic):Dynamic;
	/**
		Construct concatenation plan for given block manager and indexers.
		
		Parameters
		----------
		mgr : BlockManager
		indexers : dict of {axis: indexer}
		
		Returns
		-------
		plan : list of (BlockPlacement, JoinUnit) tuples
	**/
	static public function get_mgr_concatenation_plan(mgr:Dynamic, indexers:Dynamic):Dynamic;
	/**
		return if we are a categorical possibility 
	**/
	static public function is_categorical(array:Dynamic):Dynamic;
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64tz_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetimelike_v_numeric(a:Dynamic, b:Dynamic):Dynamic;
	/**
		return if we are a datetime with tz array 
	**/
	static public function is_datetimetz(array:Dynamic):Dynamic;
	/**
		return a boolean if the dtypes are equal 
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	/**
		if we are a klass that is preserved by the internals
		these are internal klasses that we represent (and don't use a np.array)
	**/
	static public function is_internal_type(value:Dynamic):Dynamic;
	static public function is_list_like(arg:Dynamic):Dynamic;
	/**
		test whether the object is a null datelike, e.g. Nat
		but guard against passing a non-scalar 
	**/
	static public function is_null_datelike_scalar(other:Dynamic):Dynamic;
	/**
		we have a null slice 
	**/
	static public function is_null_slice(obj:Dynamic):Dynamic;
	/**
		numpy doesn't like to compare numeric arrays vs scalar string-likes
		
		return a boolean result if this is the case for a,b or b,a
	**/
	static public function is_numeric_v_string_like(a:Dynamic, b:Dynamic):Dynamic;
	/**
		return if we are a sparse array 
	**/
	static public function is_sparse(array:Dynamic):Dynamic;
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Detect missing values (NaN in numeric arrays, None/NaN in object arrays)
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is null or if an array is
		    given which of the element is null.
		
		See also
		--------
		pandas.notnull: boolean inverse of pandas.isnull
	**/
	static public function isnull(obj:Dynamic):Dynamic;
	/**
		If two indices overlap, add suffixes to overlapping entries.
		
		If corresponding suffix is empty, the entry is simply converted to string.
	**/
	static public function items_overlap_with_suffix(left:Dynamic, lsuffix:Dynamic, right:Dynamic, rsuffix:Dynamic):Dynamic;
	/**
		return the length of a single non-tuple indexer which could be a slice
		    
	**/
	static public function length_of_indexer(indexer:Dynamic, ?target:Dynamic):Dynamic;
	static public function make_block(values:Dynamic, placement:Dynamic, ?klass:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?fastpath:Dynamic):Dynamic;
	/**
		if we have negative indicies, translate to postive here
		if have indicies that are out-of-bounds, raise an IndexError
	**/
	static public function maybe_convert_indices(indices:Dynamic, n:Dynamic):Dynamic;
	/**
		coerce to a categorical if a series is given 
	**/
	static public function maybe_to_categorical(array:Dynamic):Dynamic;
	static public function needs_i8_conversion(arr_or_dtype:Dynamic):Dynamic;
	/**
		Reduce join_unit's shape along item axis to length.
		
		Extra items that didn't fit are returned as a separate block.
	**/
	static public function trim_join_unit(join_unit:Dynamic, length:Dynamic):Dynamic;
	static public function u(s:Dynamic):Dynamic;
}