/* This file is generated, do not edit! */
package pandas.core.internals.construction;
@:pythonImport("pandas.core.internals.construction") extern class Construction_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Manager(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check that the shape implied by our axes matches the actual shape of the
		data.
	**/
	static public function _check_values_indices_shape_match(values:Dynamic, index:Dynamic, columns:Dynamic):Dynamic;
	/**
		Internal function to convert object array.
		
		Parameters
		----------
		content: List[np.ndarray]
		dtype: np.dtype or ExtensionDtype
		
		Returns
		-------
		List[ArrayLike]
	**/
	static public function _convert_object_array(content:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Try to infer an Index from the passed data, raise ValueError on failure.
	**/
	static public function _extract_index(data:Dynamic):Dynamic;
	/**
		Ensure we have valid columns, cast object dtypes if possible.
	**/
	static public function _finalize_columns_and_data(content:Dynamic, columns:Dynamic, dtype:Dynamic):Dynamic;
	static public function _get_axes(N:Dynamic, K:Dynamic, index:Dynamic, columns:Dynamic):Dynamic;
	static public function _get_names_from_index(data:Dynamic):Dynamic;
	static public function _homogenize(data:Dynamic, index:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Convert list of dicts to numpy arrays
		
		if `columns` is not passed, column names are inferred from the records
		- for OrderedDict and dicts, the column names match
		  the key insertion-order from the first record to the last.
		- For other kinds of dict-likes, the keys are lexically sorted.
		
		Parameters
		----------
		data : iterable
		    collection of records (OrderedDict, dict)
		columns: iterables or None
		
		Returns
		-------
		content : np.ndarray[object, ndim=2]
		columns : Index
	**/
	static public function _list_of_dict_to_arrays(data:Dynamic, columns:Dynamic):Dynamic;
	static public function _list_of_series_to_arrays(data:Dynamic, columns:Dynamic):Dynamic;
	static public function _list_to_arrays(data:Dynamic):Dynamic;
	static public function _prep_ndarray(values:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		If columns is None, make numbers as column names; Otherwise, validate that
		columns have valid length.
		
		Parameters
		----------
		content : list of np.ndarrays
		columns : Index or None
		
		Returns
		-------
		Index
		    If columns is None, assign positional column index value as columns.
		
		Raises
		------
		1. AssertionError when content is not composed of list of lists, and if
		    length of columns is not equal to length of content.
		2. ValueError when content is list of lists, but length of each sub-list
		    is not equal
		3. ValueError when content is list of lists, but length of sub-list is
		    not equal to length of content
	**/
	static public function _validate_or_indexify_columns(content:Dynamic, columns:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Segregate Series based on type and coerce into matrices.
		
		Needs to handle a lot of exceptional cases.
	**/
	static public function arrays_to_mgr(arrays:Dynamic, columns:Dynamic, index:Dynamic, ?dtype:Dynamic, ?verify_integrity:Dynamic, ?typ:Dynamic, ?consolidate:Dynamic):Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		create a np.ndarray / pandas type of specified shape and dtype
		filled with values
		
		Parameters
		----------
		value : scalar value
		length : int
		dtype : pandas_dtype or np.dtype
		
		Returns
		-------
		np.ndarray / pandas type of length, filled with value
	**/
	static public function construct_1d_arraylike_from_scalar(value:Dynamic, length:Dynamic, dtype:Dynamic):Dynamic;
	static public function create_block_manager_from_blocks(blocks:Dynamic, axes:Dynamic, ?consolidate:Dynamic, ?verify_integrity:Dynamic):Dynamic;
	static public function create_block_manager_from_column_arrays(arrays:Dynamic, axes:Dynamic, ?consolidate:Dynamic):Dynamic;
	/**
		Converts a list of dataclass instances to a list of dictionaries.
		
		Parameters
		----------
		data : List[Type[dataclass]]
		
		Returns
		--------
		list_dict : List[dict]
		
		Examples
		--------
		>>> from dataclasses import dataclass
		>>> @dataclass
		... class Point:
		...     x: int
		...     y: int
		
		>>> dataclasses_to_dicts([Point(1, 2), Point(2, 3)])
		[{'x': 1, 'y': 2}, {'x': 2, 'y': 3}]
	**/
	static public function dataclasses_to_dicts(data:Dynamic):Dynamic;
	static public function default_index(n:Dynamic):Dynamic;
	/**
		Convert datetimelike-keyed dicts to a Timestamp-keyed dict.
		
		Parameters
		----------
		d: dict-like object
		
		Returns
		-------
		dict
	**/
	static public function dict_compat(d:Dynamic):Dynamic;
	/**
		Segregate Series based on type and coerce into matrices.
		Needs to handle a lot of exceptional cases.
		
		Used in DataFrame.__init__
	**/
	static public function dict_to_mgr(data:Dynamic, index:Dynamic, columns:Dynamic, ?dtype:Dynamic, ?typ:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Reshape if possible to have values.ndim == ndim.
	**/
	static public function ensure_block_shape(values:Dynamic, ?ndim:Dynamic):Dynamic;
	/**
		Ensure that we have an index from some index-like object.
		
		Parameters
		----------
		index_like : sequence
		    An Index or other sequence
		copy : bool, default False
		
		Returns
		-------
		index : Index or MultiIndex
		
		See Also
		--------
		ensure_index_from_sequences
		
		Examples
		--------
		>>> ensure_index(['a', 'b'])
		Index(['a', 'b'], dtype='object')
		
		>>> ensure_index([('a', 'a'),  ('b', 'c')])
		Index([('a', 'a'), ('b', 'c')], dtype='object')
		
		>>> ensure_index([['a', 'a'], ['b', 'c']])
		MultiIndex([('a', 'b'),
		        ('a', 'c')],
		       )
	**/
	static public function ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Wrap datetime64 and timedelta64 ndarrays in DatetimeArray/TimedeltaArray.
	**/
	static public function ensure_wrapped_if_datetimelike(arr:Dynamic):Dynamic;
	/**
		Extract the ndarray or ExtensionArray from a Series or Index.
		
		For all other types, `obj` is just returned as is.
		
		Parameters
		----------
		obj : object
		    For Series / Index, the underlying ExtensionArray is unboxed.
		
		extract_numpy : bool, default False
		    Whether to extract the ndarray from a PandasArray.
		
		extract_range : bool, default False
		    If we have a RangeIndex, return range._values if True
		    (which is a materialized integer ndarray), otherwise return unchanged.
		
		Returns
		-------
		arr : object
		
		Examples
		--------
		>>> extract_array(pd.Series(['a', 'b', 'c'], dtype='category'))
		['a', 'b', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		Other objects like lists, arrays, and DataFrames are just passed through.
		
		>>> extract_array([1, 2, 3])
		[1, 2, 3]
		
		For an ndarray-backed Series / Index the ndarray is returned.
		
		>>> extract_array(pd.Series([1, 2, 3]))
		array([1, 2, 3])
		
		To extract all the way down to the ndarray, pass ``extract_numpy=True``.
		
		>>> extract_array(pd.Series([1, 2, 3]), extract_numpy=True)
		array([1, 2, 3])
	**/
	static public function extract_array(obj:Dynamic, ?extract_numpy:Dynamic, ?extract_range:Dynamic):Dynamic;
	/**
		Convert numpy MaskedRecords to ensure mask is softened.
	**/
	static public function fill_masked_arrays(data:Dynamic, arr_columns:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Extract combined index: return intersection or union (depending on the
		value of "intersect") of indexes on given axis, or None if all objects
		lack indexes (e.g. they are numpy arrays).
		
		Parameters
		----------
		objs : list
		    Series or DataFrame objects, may be mix of the two.
		intersect : bool, default False
		    If True, calculate the intersection between indexes. Otherwise,
		    calculate the union.
		axis : {0 or 'index', 1 or 'outer'}, default 0
		    The axis to extract indexes from.
		sort : bool, default True
		    Whether the result index should come out sorted or not.
		copy : bool, default False
		    If True, return a copy of the combined index.
		
		Returns
		-------
		Index
	**/
	static public function get_objs_combined_axis(objs:Dynamic, ?intersect:Dynamic, ?axis:Dynamic, ?sort:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Analogue to is_extension_array_dtype but excluding DatetimeTZDtype.
	**/
	static public function is_1d_only_ea_dtype(dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of a DatetimeTZDtype dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of a DatetimeTZDtype dtype.
		
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
		Check whether the provided array or dtype is of
		a timedelta64 or datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a timedelta64,
		    or datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime_or_timedelta_dtype(str)
		False
		>>> is_datetime_or_timedelta_dtype(int)
		False
		>>> is_datetime_or_timedelta_dtype(np.datetime64)
		True
		>>> is_datetime_or_timedelta_dtype(np.timedelta64)
		True
		>>> is_datetime_or_timedelta_dtype(np.array(['a', 'b']))
		False
		>>> is_datetime_or_timedelta_dtype(pd.Series([1, 2]))
		False
		>>> is_datetime_or_timedelta_dtype(np.array([], dtype=np.timedelta64))
		True
		>>> is_datetime_or_timedelta_dtype(np.array([], dtype=np.datetime64))
		True
	**/
	static public function is_datetime_or_timedelta_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if two dtypes are equal.
		
		Parameters
		----------
		source : The first dtype to compare
		target : The second dtype to compare
		
		Returns
		-------
		boolean
		    Whether or not the two dtypes are equal.
		
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
		>>> is_dtype_equal(DatetimeTZDtype(tz="UTC"), "datetime64")
		False
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Check if an object is a pandas extension array type.
		
		See the :ref:`Use Guide <extending.extension-types>` for more.
		
		Parameters
		----------
		arr_or_dtype : object
		    For array-like input, the ``.dtype`` attribute will
		    be extracted.
		
		Returns
		-------
		bool
		    Whether the `arr_or_dtype` is an extension array type.
		
		Notes
		-----
		This checks whether an object implements the pandas extension
		array interface. In pandas, this includes:
		
		* Categorical
		* Sparse
		* Interval
		* Period
		* DatetimeArray
		* TimedeltaArray
		
		Third-party libraries may implement arrays or types satisfying
		this interface as well.
		
		Examples
		--------
		>>> from pandas.api.types import is_extension_array_dtype
		>>> arr = pd.Categorical(['a', 'b'])
		>>> is_extension_array_dtype(arr)
		True
		>>> is_extension_array_dtype(arr.dtype)
		True
		
		>>> arr = np.array(['a', 'b'])
		>>> is_extension_array_dtype(arr.dtype)
		False
	**/
	static public function is_extension_array_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `is_any_int_dtype`, timedelta64 instances will return False.
		
		The nullable Integer dtypes (e.g. pandas.Int64Dtype) are also considered
		as integer by this function.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of an integer dtype and
		    not an instance of timedelta64.
		
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
		>>> is_integer_dtype('int8')
		True
		>>> is_integer_dtype('Int8')
		True
		>>> is_integer_dtype(pd.Int8Dtype)
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
		obj : object
		    Object to check.
		allow_sets : bool, default True
		    If this parameter is False, sets will not be considered list-like.
		
		Returns
		-------
		bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> import datetime
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime.datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2))
		False
	**/
	static public function is_list_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the object is a named tuple.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_named_tuple : bool
		    Whether `obj` is a named tuple.
		
		Examples
		--------
		>>> from collections import namedtuple
		>>> Point = namedtuple("Point", ["x", "y"])
		>>> p = Point(1, 2)
		>>>
		>>> is_named_tuple(p)
		True
		>>> is_named_tuple((1, 2))
		False
	**/
	static public function is_named_tuple(obj:Dynamic):Bool;
	/**
		Check whether an array-like or dtype is of the object dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the object dtype.
		
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
		try to cast the array/value to a datetimelike dtype, converting float
		nan to iNaT
		
		We allow a list *only* when dtype is not None.
	**/
	static public function maybe_cast_to_datetime(value:Dynamic, dtype:Dynamic):Dynamic;
	/**
		try to do platform conversion, allow ndarray or list here
	**/
	static public function maybe_convert_platform(values:Dynamic):Dynamic;
	/**
		we might have a array (or single object) that is datetime like,
		and no dtype is passed don't change the value unless we find a
		datetime/timedelta set
		
		this is pretty strict in that a datetime/timedelta is REQUIRED
		in addition to possible nulls/string likes
		
		Parameters
		----------
		value : np.ndarray[object]
		
		Returns
		-------
		np.ndarray, DatetimeArray, TimedeltaArray, PeriodArray, or IntervalArray
	**/
	static public function maybe_infer_to_datetimelike(value:Dynamic):Dynamic;
	/**
		Provide explicit type promotion and coercion.
		
		Parameters
		----------
		values : np.ndarray
		    The array that we may want to upcast.
		fill_value : what we want to fill with
		copy : bool, default True
		    If True always make a copy even if no upcast is required.
		
		Returns
		-------
		values: np.ndarray
		    the original array, possibly upcast
		fill_value:
		    the fill value, possibly upcast
	**/
	static public function maybe_upcast(values:Dynamic, ?fill_value:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Convert to specific type of Manager. Does not copy if the type is already
		correct. Does not guarantee a copy otherwise. `copy` keyword only controls
		whether conversion from Block->ArrayManager copies the 1D arrays.
	**/
	static public function mgr_to_mgr(mgr:Dynamic, typ:Dynamic, ?copy:Dynamic):Dynamic;
	static public function ndarray_to_mgr(values:Dynamic, index:Dynamic, columns:Dynamic, dtype:Dynamic, copy:Dynamic, typ:Dynamic):Dynamic;
	/**
		Convert a single sequence of arrays to multiple arrays.
	**/
	static public function nested_data_to_arrays(data:Dynamic, columns:Dynamic, index:Dynamic, dtype:Dynamic):Dynamic;
	static public function new_block_2d(values:Dynamic, placement:Dynamic):Dynamic;
	/**
		Cast a range object to ndarray.
	**/
	static public function range_to_ndarray(rng:Dynamic):Dynamic;
	/**
		Extract from a masked rec array and create the manager.
	**/
	static public function rec_array_to_mgr(data:Dynamic, index:Dynamic, columns:Dynamic, dtype:Dynamic, copy:Dynamic, typ:Dynamic):Dynamic;
	/**
		Pre-emptively (cheaply) reindex arrays with new columns.
	**/
	static public function reorder_arrays(arrays:Dynamic, arr_columns:Dynamic, columns:Dynamic, length:Dynamic):Dynamic;
	/**
		Sanitize input data to an ndarray or ExtensionArray, copy if specified,
		coerce to the dtype if specified.
		
		Parameters
		----------
		data : Any
		index : Index or None, default None
		dtype : np.dtype, ExtensionDtype, or None, default None
		copy : bool, default False
		raise_cast_failure : bool, default True
		allow_2d : bool, default False
		    If False, raise if we have a 2D Arraylike.
		
		Returns
		-------
		np.ndarray or ExtensionArray
		
		Notes
		-----
		raise_cast_failure=False is only intended to be True when called from the
		DataFrame constructor, as the dtype keyword there may be interpreted as only
		applying to a subset of columns, see GH#24435.
	**/
	static public function sanitize_array(data:Dynamic, index:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?raise_cast_failure:Dynamic, ?allow_2d:Dynamic):Dynamic;
	/**
		Return list of arrays, columns.
		
		Returns
		-------
		list[ArrayLike]
		    These will become columns in a DataFrame.
		Index
		    This will become frame.columns.
		
		Notes
		-----
		Ensures that len(result_arrays) == len(result_index).
	**/
	static public function to_arrays(data:Dynamic, columns:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Check if we should use nested_data_to_arrays.
	**/
	static public function treat_as_nested(data:Dynamic):Dynamic;
	/**
		Return the union of indexes.
		
		The behavior of sort and names is not consistent.
		
		Parameters
		----------
		indexes : list of Index or list objects
		sort : bool, default True
		    Whether the result index should come out sorted or not.
		
		Returns
		-------
		Index
	**/
	static public function union_indexes(indexes:Dynamic, ?sort:Dynamic):Dynamic;
}