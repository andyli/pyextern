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
	static public function _concat_indexes(indexes:Dynamic):Dynamic;
	/**
		Merge blocks having same dtype, exclude non-consolidating blocks
	**/
	static public function _consolidate(blocks:Dynamic):Dynamic;
	static public function _ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
	static public function _ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Get the dtype instance associated with an array
		or dtype object.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype object whose dtype we want to extract.
		
		Returns
		-------
		obj_dtype : The extract dtype instance from the
		            passed in array or dtype object.
		
		Raises
		------
		TypeError : The passed in object is None.
	**/
	static public function _get_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function _interleaved_dtype(blocks:Dynamic):Dynamic;
	/**
		Parameters
		----------
		arr: a numpy array
		fill_value: fill value, default to np.nan
		
		Returns
		-------
		True if we can fill using this fill_value
	**/
	static public function _is_na_compat(arr:Dynamic, ?fill_value:Dynamic):Dynamic;
	static public function _maybe_compare(a:Dynamic, b:Dynamic, op:Dynamic):Dynamic;
	/**
		array must be SparseSeries or SparseArray 
	**/
	static public function _maybe_to_sparse(array:Dynamic):Dynamic;
	static public function _merge_blocks(blocks:Dynamic, ?dtype:Dynamic, ?_can_consolidate:Dynamic):Dynamic;
	/**
		return an array of blocks that potentially have different dtypes 
	**/
	static public function _multi_blockify(tuples:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var _np_version_under1p9 : Dynamic;
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
		If possible, reshape `arr` to have shape `new_shape`,
		with a couple of exceptions (see gh-13012):
		
		1) If `arr` is a Categorical or Index, `arr` will be
		   returned as is.
		2) If `arr` is a Series, the `_values` attribute will
		   be reshaped and returned.
		
		Parameters
		----------
		arr : array-like, object to be reshaped
		new_shape : int or tuple of ints, the new shape
	**/
	static public function _safe_reshape(arr:Dynamic, new_shape:Dynamic):Dynamic;
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
		Only apply function to one level of the MultiIndex if level is specified.
	**/
	static public function _transform_index(index:Dynamic, func:Dynamic, ?level:Dynamic):Dynamic;
	static public function _vstack(to_stack:Dynamic, dtype:Dynamic):Dynamic;
	/**
		True if two arrays, left and right, have equal non-NaN elements, and NaNs
		in corresponding locations.  False otherwise. It is assumed that left and
		right are NumPy arrays of the same dtype. The behavior of this function
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
		return a view if copy is False, but
		need to be very careful as the result shape could change! 
	**/
	static public function astype_nansafe(arr:Dynamic, dtype:Dynamic, ?copy:Dynamic):Dynamic;
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
	/**
		Find a common data type among the given dtypes.
		
		Parameters
		----------
		types : list of dtypes
		
		Returns
		-------
		pandas extension or numpy dtype
		
		See Also
		--------
		numpy.find_common_type
	**/
	static public function find_common_type(types:Dynamic):Dynamic;
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
		interpret the dtype from a scalar
		
		Parameters
		----------
		pandas_dtype : bool, default False
		    whether to infer dtype including pandas extension types.
		    If False, scalar belongs to pandas extension types is inferred as
		    object
	**/
	static public function infer_dtype_from_scalar(val:Dynamic, ?pandas_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like is a Categorical instance.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is of a Categorical instance.
		
		Examples
		--------
		>>> is_categorical([1, 2, 3])
		False
		
		Categoricals, Series Categoricals, and CategoricalIndex will return True.
		
		>>> cat = pd.Categorical([1, 2, 3])
		>>> is_categorical(cat)
		True
		>>> is_categorical(pd.Series(cat))
		True
		>>> is_categorical(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical(arr:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the Categorical dtype.
		
		Examples
		--------
		>>> is_categorical_dtype(object)
		False
		>>> is_categorical_dtype(CategoricalDtype())
		True
		>>> is_categorical_dtype([1, 2, 3])
		False
		>>> is_categorical_dtype(pd.Categorical([1, 2, 3]))
		True
		>>> is_categorical_dtype(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of
		          the datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime64_dtype(object)
		False
		>>> is_datetime64_dtype(np.datetime64)
		True
		>>> is_datetime64_dtype(np.array([], dtype=int))
		False
		>>> is_datetime64_dtype(np.array([], dtype=np.datetime64))
		True
		>>> is_datetime64_dtype([1, 2, 3])
		False
	**/
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of a DatetimeTZDtype dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of
		          a DatetimeTZDtype dtype.
		
		Examples
		--------
		>>> is_datetime64tz_dtype(object)
		False
		>>> is_datetime64tz_dtype([1, 2, 3])
		False
		>>> is_datetime64tz_dtype(pd.DatetimeIndex([1, 2, 3]))  # tz-naive
		False
		>>> is_datetime64tz_dtype(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_datetime64tz_dtype(dtype)
		True
		>>> is_datetime64tz_dtype(s)
		True
	**/
	static public function is_datetime64tz_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if we are comparing a datetime-like object to a numeric object.
		
		By "numeric," we mean an object that is either of an int or float dtype.
		
		Parameters
		----------
		a : array-like, scalar
		    The first object to check.
		b : array-like, scalar
		    The second object to check.
		
		Returns
		-------
		boolean : Whether we return a comparing a datetime-like
		          to a numeric object.
		
		Examples
		--------
		>>> dt = np.datetime64(pd.datetime(2017, 1, 1))
		>>>
		>>> is_datetimelike_v_numeric(1, 1)
		False
		>>> is_datetimelike_v_numeric(dt, dt)
		False
		>>> is_datetimelike_v_numeric(1, dt)
		True
		>>> is_datetimelike_v_numeric(dt, 1)  # symmetric check
		True
		>>> is_datetimelike_v_numeric(np.array([dt]), 1)
		True
		>>> is_datetimelike_v_numeric(np.array([1]), dt)
		True
		>>> is_datetimelike_v_numeric(np.array([dt]), np.array([1]))
		True
		>>> is_datetimelike_v_numeric(np.array([1]), np.array([2]))
		False
		>>> is_datetimelike_v_numeric(np.array([dt]), np.array([dt]))
		False
	**/
	static public function is_datetimelike_v_numeric(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Check whether an array-like is a datetime array-like with a timezone
		component in its dtype.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a datetime array-like with
		          a timezone component in its dtype.
		
		Examples
		--------
		>>> is_datetimetz([1, 2, 3])
		False
		
		Although the following examples are both DatetimeIndex objects,
		the first one returns False because it has no timezone component
		unlike the second one, which returns True.
		
		>>> is_datetimetz(pd.DatetimeIndex([1, 2, 3]))
		False
		>>> is_datetimetz(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		
		The object need not be a DatetimeIndex object. It just needs to have
		a dtype which has a timezone component.
		
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_datetimetz(s)
		True
	**/
	static public function is_datetimetz(arr:Dynamic):Dynamic;
	/**
		Check if two dtypes are equal.
		
		Parameters
		----------
		source : The first dtype to compare
		target : The second dtype to compare
		
		Returns
		----------
		boolean : Whether or not the two dtypes are equal.
		
		Examples
		--------
		>>> is_dtype_equal(int, float)
		False
		>>> is_dtype_equal("int", int)
		True
		>>> is_dtype_equal(object, "category")
		False
		>>> is_dtype_equal(CategoricalDtype(), "category")
		True
		>>> is_dtype_equal(DatetimeTZDtype(), "datetime64")
		False
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Check whether an array-like is of a pandas extension class instance.
		
		Extension classes include categoricals, pandas sparse objects (i.e.
		classes represented within the pandas library and not ones external
		to it like scipy sparse matrices), and datetime-like arrays.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is of a pandas
		          extension class instance.
		
		Examples
		--------
		>>> is_extension_type([1, 2, 3])
		False
		>>> is_extension_type(np.array([1, 2, 3]))
		False
		>>>
		>>> cat = pd.Categorical([1, 2, 3])
		>>>
		>>> is_extension_type(cat)
		True
		>>> is_extension_type(pd.Series(cat))
		True
		>>> is_extension_type(pd.SparseArray([1, 2, 3]))
		True
		>>> is_extension_type(pd.SparseSeries([1, 2, 3]))
		True
		>>>
		>>> from scipy.sparse import bsr_matrix
		>>> is_extension_type(bsr_matrix([1, 2, 3]))
		False
		>>> is_extension_type(pd.DatetimeIndex([1, 2, 3]))
		False
		>>> is_extension_type(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		>>>
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_extension_type(s)
		True
	**/
	static public function is_extension_type(arr:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of a float dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a float dtype.
		
		Examples
		--------
		>>> is_float_dtype(str)
		False
		>>> is_float_dtype(int)
		False
		>>> is_float_dtype(float)
		True
		>>> is_float_dtype(np.array(['a', 'b']))
		False
		>>> is_float_dtype(pd.Series([1, 2]))
		False
		>>> is_float_dtype(pd.Index([1, 2.]))
		True
	**/
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `in_any_int_dtype`, timedelta64 instances will return False.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of an integer dtype
		          and not an instance of timedelta64.
		
		Examples
		--------
		>>> is_integer_dtype(str)
		False
		>>> is_integer_dtype(int)
		True
		>>> is_integer_dtype(float)
		False
		>>> is_integer_dtype(np.uint64)
		True
		>>> is_integer_dtype(np.datetime64)
		False
		>>> is_integer_dtype(np.timedelta64)
		False
		>>> is_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_integer_dtype(pd.Series([1, 2]))
		True
		>>> is_integer_dtype(np.array([], dtype=np.timedelta64))
		False
		>>> is_integer_dtype(pd.Index([1, 2.]))  # float
		False
	**/
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_list_like : bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
	**/
	static public function is_list_like(obj:Dynamic):Bool;
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
		Check whether the provided array or dtype is of a numeric dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a numeric dtype.
		
		Examples
		--------
		>>> is_numeric_dtype(str)
		False
		>>> is_numeric_dtype(int)
		True
		>>> is_numeric_dtype(float)
		True
		>>> is_numeric_dtype(np.uint64)
		True
		>>> is_numeric_dtype(np.datetime64)
		False
		>>> is_numeric_dtype(np.timedelta64)
		False
		>>> is_numeric_dtype(np.array(['a', 'b']))
		False
		>>> is_numeric_dtype(pd.Series([1, 2]))
		True
		>>> is_numeric_dtype(pd.Index([1, 2.]))
		True
		>>> is_numeric_dtype(np.array([], dtype=np.timedelta64))
		False
	**/
	static public function is_numeric_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if we are comparing a string-like object to a numeric ndarray.
		
		NumPy doesn't like to compare such objects, especially numeric arrays
		and scalar string-likes.
		
		Parameters
		----------
		a : array-like, scalar
		    The first object to check.
		b : array-like, scalar
		    The second object to check.
		
		Returns
		-------
		boolean : Whether we return a comparing a string-like
		          object to a numeric array.
		
		Examples
		--------
		>>> is_numeric_v_string_like(1, 1)
		False
		>>> is_numeric_v_string_like("foo", "foo")
		False
		>>> is_numeric_v_string_like(1, "foo")  # non-array numeric
		False
		>>> is_numeric_v_string_like(np.array([1]), "foo")
		True
		>>> is_numeric_v_string_like("foo", np.array([1]))  # symmetric check
		True
		>>> is_numeric_v_string_like(np.array([1, 2]), np.array(["foo"]))
		True
		>>> is_numeric_v_string_like(np.array(["foo"]), np.array([1, 2]))
		True
		>>> is_numeric_v_string_like(np.array([1]), np.array([2]))
		False
		>>> is_numeric_v_string_like(np.array(["foo"]), np.array(["foo"]))
		False
	**/
	static public function is_numeric_v_string_like(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the object dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of the object dtype.
		
		Examples
		--------
		>>> is_object_dtype(object)
		True
		>>> is_object_dtype(int)
		False
		>>> is_object_dtype(np.array([], dtype=object))
		True
		>>> is_object_dtype(np.array([], dtype=int))
		False
		>>> is_object_dtype([1, 2, 3])
		False
	**/
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if the object is a regex pattern instance.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_regex : bool
		    Whether `obj` is a regex pattern.
		
		Examples
		--------
		>>> is_re(re.compile(".*"))
		True
		>>> is_re("foo")
		False
	**/
	static public function is_re(obj:Dynamic):Bool;
	/**
		Check if the object can be compiled into a regex pattern instance.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_regex_compilable : bool
		    Whether `obj` can be compiled as a regex pattern.
		
		Examples
		--------
		>>> is_re_compilable(".*")
		True
		>>> is_re_compilable(1)
		False
	**/
	static public function is_re_compilable(obj:Dynamic):Bool;
	/**
		Return True if given value is scalar.
		
		This includes:
		- numpy array scalar (e.g. np.int64)
		- Python builtin numerics
		- Python builtin byte arrays and strings
		- None
		- instances of datetime.datetime
		- instances of datetime.timedelta
		- Period
		- instances of decimal.Decimal
		- Interval
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether an array-like is a pandas sparse array.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a pandas sparse array.
		
		Examples
		--------
		>>> is_sparse(np.array([1, 2, 3]))
		False
		>>> is_sparse(pd.SparseArray([1, 2, 3]))
		True
		>>> is_sparse(pd.SparseSeries([1, 2, 3]))
		True
		
		This function checks only for pandas sparse array instances, so
		sparse arrays from other libraries will return False.
		
		>>> from scipy.sparse import bsr_matrix
		>>> is_sparse(bsr_matrix([1, 2, 3]))
		False
	**/
	static public function is_sparse(arr:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the timedelta64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the timedelta64 dtype.
		
		Examples
		--------
		>>> is_timedelta64_dtype(object)
		False
		>>> is_timedelta64_dtype(np.timedelta64)
		True
		>>> is_timedelta64_dtype([1, 2, 3])
		False
		>>> is_timedelta64_dtype(pd.Series([], dtype="timedelta64[ns]"))
		True
	**/
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
		if we have an object dtype, try to coerce dates and/or numbers 
	**/
	static public function maybe_convert_objects(values:Dynamic, ?convert_dates:Dynamic, ?convert_numeric:Dynamic, ?convert_timedeltas:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Convert a python scalar to the appropriate numpy dtype if possible
		This avoids numpy directly converting according to platform preferences
	**/
	static public function maybe_convert_scalar(values:Dynamic):Dynamic;
	/**
		Convert string-like and string-like array to convert object dtype.
		This is to avoid numpy to handle the array as str dtype.
	**/
	static public function maybe_convert_string_to_object(values:Dynamic):Dynamic;
	/**
		try to cast to the specified dtype (e.g. convert back to bool/int
		or could be an astype of float64->float32
	**/
	static public function maybe_downcast_to_dtype(result:Dynamic, dtype:Dynamic):Dynamic;
	static public function maybe_promote(dtype:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		coerce to a categorical if a series is given 
	**/
	static public function maybe_to_categorical(array:Dynamic):Dynamic;
	/**
		provide explict type promotion and coercion
		
		Parameters
		----------
		values : the ndarray that we want to maybe upcast
		fill_value : what we want to fill with
		dtype : if None, then use the dtype of the values, else coerce to this type
		copy : if True always make a copy even if no upcast is required
	**/
	static public function maybe_upcast(values:Dynamic, ?fill_value:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		This function is the sanctioned way of converting objects
		to a unicode representation.
		
		properly handles nested sequences containing unicode strings
		(unicode(object) does not)
		
		Parameters
		----------
		thing : anything to be formatted
		_nest_lvl : internal use only. pprint_thing() is mutually-recursive
		    with pprint_sequence, this argument is used to keep track of the
		    current nesting level, and limit it.
		escape_chars : list or dict, optional
		    Characters to escape. If a dict is passed the values are the
		    replacements
		default_escapes : bool, default False
		    Whether the input escape characters replaces or adds to the defaults
		max_seq_items : False, int, default None
		    Pass thru to other pretty printers to limit sequence printing
		
		Returns
		-------
		result - unicode object on py2, str on py3. Always Unicode.
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
	/**
		if we have an object dtype, try to coerce dates and/or numbers 
	**/
	static public function soft_convert_objects(values:Dynamic, ?datetime:Dynamic, ?numeric:Dynamic, ?timedelta:Dynamic, ?coerce:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Reduce join_unit's shape along item axis to length.
		
		Extra items that didn't fit are returned as a separate block.
	**/
	static public function trim_join_unit(join_unit:Dynamic, length:Dynamic):Dynamic;
	static public function u(s:Dynamic):Dynamic;
	/**
		Ensures that argument passed in arg_name is of type bool. 
	**/
	static public function validate_bool_kwarg(value:Dynamic, arg_name:Dynamic):Dynamic;
}