/* This file is generated, do not edit! */
package pandas.core.internals.blocks;
@:pythonImport("pandas.core.internals.blocks") extern class Blocks_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var F : Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Shape(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		We catch ValueError for now, but only a specific one raised by DatetimeArray
		which will no longer be raised in version.2.0.
	**/
	static public function _catch_deprecated_value_error(err:Dynamic):Dynamic;
	static public var _dtype_obj : Dynamic;
	static public var annotations : Dynamic;
	/**
		Cast array (ndarray or ExtensionArray) to the new dtype.
		
		This basically is the implementation for DataFrame/Series.astype and
		includes all custom logic for pandas (NaN-safety, converting str to object,
		not allowing )
		
		Parameters
		----------
		values : ndarray or ExtensionArray
		dtype : str, dtype convertible
		copy : bool, default False
		    copy if indicated
		errors : str, {'raise', 'ignore'}, default 'raise'
		    - ``raise`` : allow exceptions to be raised
		    - ``ignore`` : suppress exceptions. On error return original object
		
		Returns
		-------
		ndarray or ExtensionArray
	**/
	static public function astype_array_safe(values:Dynamic, dtype:Dynamic, ?copy:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Can we do an inplace setitem with this element in an array with this dtype?
		
		Parameters
		----------
		arr : np.ndarray or ExtensionArray
		element : Any
		
		Returns
		-------
		bool
	**/
	static public function can_hold_element(arr:Dynamic, element:Dynamic):Dynamic;
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
		ndim inference and validation.
		
		Validates that values.ndim and ndim are consistent.
		Validates that len(values) and len(placement) are consistent.
		
		Parameters
		----------
		values : array-like
		placement : BlockPlacement
		ndim : int
		
		Raises
		------
		ValueError : the number of dimensions do not match
	**/
	static public function check_ndim(values:Dynamic, placement:Dynamic, ndim:Dynamic):Dynamic;
	/**
		Validate that value and indexer are the same length.
		
		An special-case is allowed for when the indexer is a boolean array
		and the number of true values equals the length of ``value``. In
		this case, no exception is raised.
		
		Parameters
		----------
		indexer : sequence
		    Key for the setitem.
		value : array-like
		    Value for the setitem.
		values : array-like
		    Values being set into.
		
		Returns
		-------
		bool
		    Whether this is an empty listlike setting which is a no-op.
		
		Raises
		------
		ValueError
		    When the indexer is an ndarray or list and the lengths don't match.
	**/
	static public function check_setitem_lengths(indexer:Dynamic, value:Dynamic, values:Dynamic):Dynamic;
	/**
		Compare two array-like inputs of the same shape or two scalar values
		
		Calls operator.eq or re.search, depending on regex argument. If regex is
		True, perform an element-wise regex matching.
		
		Parameters
		----------
		a : array-like
		b : scalar or regex pattern
		regex : bool
		mask : np.ndarray[bool]
		
		Returns
		-------
		mask : array-like of bool
	**/
	static public function compare_or_regex_search(a:Dynamic, b:Dynamic, regex:Dynamic, mask:Dynamic):Dynamic;
	/**
		Reshape if possible to have values.ndim == ndim.
	**/
	static public function ensure_block_shape(values:Dynamic, ?ndim:Dynamic):Dynamic;
	static public function ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Wrap datetime64 and timedelta64 ndarrays in DatetimeArray/TimedeltaArray.
	**/
	static public function ensure_wrapped_if_datetimelike(arr:Dynamic):Dynamic;
	/**
		return a new extended blocks, given the result
	**/
	static public function extend_blocks(result:Dynamic, ?blocks:Dynamic):Dynamic;
	/**
		The array that Series.values returns (public attribute).
		
		This has some historical constraints, and is overridden in block
		subclasses to return the correct array (e.g. period returns
		object ndarray and datetimetz a datetime64[ns] ndarray instead of
		proper extension array).
	**/
	static public function external_values(values:Dynamic):Dynamic;
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
		If we have a SparseArray or BooleanArray, convert it to ndarray[bool].
	**/
	static public function extract_bool_array(mask:Dynamic):Dynamic;
	/**
		Ensure that we don't allow PandasArray / PandasDtype in internals.
	**/
	static public function extract_pandas_array(values:Dynamic, dtype:Dynamic, ndim:Dynamic):Dynamic;
	/**
		A decorator to indicate final methods and final classes.
		
		Use this decorator to indicate to type checkers that the decorated
		method cannot be overridden, and decorated class cannot be subclassed.
		For example:
		
		  class Base:
		      @final
		      def done(self) -> None:
		          ...
		  class Sub(Base):
		      def done(self) -> None:  # Error reported by type checker
		            ...
		
		  @final
		  class Leaf:
		      ...
		  class Other(Leaf):  # Error reported by type checker
		      ...
		
		There is no runtime checking of these properties.
	**/
	@:native("final")
	static public function _final(f:Dynamic):Dynamic;
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
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Find the appropriate Block subclass to use for the given values and dtype.
		
		Parameters
		----------
		dtype : numpy or pandas dtype
		
		Returns
		-------
		cls : class, subclass of Block
	**/
	static public function get_block_type(dtype:Dynamic):Dynamic;
	/**
		Interpret the dtype from a scalar or array.
		
		Parameters
		----------
		val : object
		pandas_dtype : bool, default False
		    whether to infer dtype including pandas extension types.
		    If False, scalar/array belongs to pandas extension types is inferred as
		    object
	**/
	static public function infer_dtype_from(val:Dynamic, ?pandas_dtype:Dynamic):Dynamic;
	/**
		Analogue to is_extension_array_dtype but excluding DatetimeTZDtype.
	**/
	static public function is_1d_only_ea_dtype(dtype:Dynamic):Dynamic;
	/**
		ExtensionArray that does not support 2D, or more specifically that does
		not use HybridBlock.
	**/
	static public function is_1d_only_ea_obj(obj:Dynamic):Dynamic;
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
		Check if we have an empty indexer.
		
		Parameters
		----------
		indexer : object
		arr_value : np.ndarray or ExtensionArray
		
		Returns
		-------
		bool
	**/
	static public function is_empty_indexer(indexer:Dynamic, arr_value:Dynamic):Dynamic;
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
		Check if this is a ndarray[bool] or an ndarray[object] of bool objects.
		
		Parameters
		----------
		arr : np.ndarray or ExtensionArray
		
		Returns
		-------
		bool
		
		Notes
		-----
		This does not include the special treatment is_bool_dtype uses for
		Categorical.
	**/
	static public function is_inferred_bool_dtype(arr:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Interval dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the Interval dtype.
		
		Examples
		--------
		>>> is_interval_dtype(object)
		False
		>>> is_interval_dtype(IntervalDtype())
		True
		>>> is_interval_dtype([1, 2, 3])
		False
		>>>
		>>> interval = pd.Interval(1, 2, closed="right")
		>>> is_interval_dtype(interval)
		False
		>>> is_interval_dtype(pd.IntervalIndex([interval]))
		True
	**/
	static public function is_interval_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Return True if we are all scalar indexers.
		
		Parameters
		----------
		indexer : object
		ndim : int
		    Number of dimensions in the object being indexed.
		
		Returns
		-------
		bool
	**/
	static public function is_scalar_indexer(indexer:Dynamic, ndim:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of the string dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of the string dtype.
		
		Examples
		--------
		>>> is_string_dtype(str)
		True
		>>> is_string_dtype(object)
		True
		>>> is_string_dtype(int)
		False
		>>>
		>>> is_string_dtype(np.array(['a', 'b']))
		True
		>>> is_string_dtype(pd.Series([1, 2]))
		False
	**/
	static public function is_string_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		isna check that excludes incompatible dtypes
		
		Parameters
		----------
		obj : object
		dtype : np.datetime64, np.timedelta64, DatetimeTZDtype, or PeriodDtype
		
		Returns
		-------
		bool
	**/
	static public function is_valid_na_for_dtype(obj:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Detect missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are missing (``NaN`` in numeric arrays, ``None`` or ``NaN``
		in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : scalar or array-like
		    Object to check for null or missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is missing.
		
		See Also
		--------
		notna : Boolean inverse of pandas.isna.
		Series.isna : Detect missing values in a Series.
		DataFrame.isna : Detect missing values in a DataFrame.
		Index.isna : Detect missing values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.isna('dog')
		False
		
		>>> pd.isna(pd.NA)
		True
		
		>>> pd.isna(np.nan)
		True
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.isna(array)
		array([[False,  True, False],
		       [False, False,  True]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                           "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.isna(index)
		array([False, False,  True, False])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.isna(df)
		       0      1      2
		0  False  False  False
		1  False   True  False
		
		>>> pd.isna(df[1])
		0    False
		1     True
		Name: 1, dtype: bool
	**/
	static public function isna(obj:Dynamic):Dynamic;
	/**
		Input validation for values passed to __init__. Ensure that
		any datetime64/timedelta64 dtypes are in nanoseconds.  Ensure
		that we do not have string dtypes.
		
		Parameters
		----------
		values : np.ndarray or ExtensionArray
		
		Returns
		-------
		values : np.ndarray or ExtensionArray
	**/
	static public function maybe_coerce_values(values:Dynamic):Dynamic;
	/**
		Subset of maybe_downcast_to_dtype restricted to numeric dtypes.
		
		Parameters
		----------
		result : ndarray or ExtensionArray
		dtype : np.dtype or ExtensionDtype
		do_round : bool
		
		Returns
		-------
		ndarray or ExtensionArray
	**/
	static public function maybe_downcast_numeric(result:Dynamic, dtype:Dynamic, ?do_round:Dynamic):Dynamic;
	/**
		try to cast to the specified dtype (e.g. convert back to bool/int
		or could be an astype of float64->float32
	**/
	static public function maybe_downcast_to_dtype(result:Dynamic, dtype:Dynamic):Dynamic;
	/**
		If we have a multi-column block, split and operate block-wise.  Otherwise
		use the original method.
	**/
	static public function maybe_split(meth:Dynamic):Dynamic;
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
		Return a dtype compat na value
		
		Parameters
		----------
		dtype : string / dtype
		compat : bool, default True
		
		Returns
		-------
		np.dtype or a pandas dtype
		
		Examples
		--------
		>>> na_value_for_dtype(np.dtype('int64'))
		0
		>>> na_value_for_dtype(np.dtype('int64'), compat=False)
		nan
		>>> na_value_for_dtype(np.dtype('float64'))
		nan
		>>> na_value_for_dtype(np.dtype('bool'))
		False
		>>> na_value_for_dtype(np.dtype('datetime64[ns]'))
		numpy.datetime64('NaT')
	**/
	static public function na_value_for_dtype(dtype:Dynamic, ?compat:Dynamic):Dynamic;
	static public function new_block(values:Dynamic, placement:Dynamic, ndim:Dynamic):Dynamic;
	static public function new_block_2d(values:Dynamic, placement:Dynamic):Dynamic;
	static public var np_version_under1p20 : Dynamic;
	static public var npt : Dynamic;
	/**
		ExtensionArray-compatible implementation of np.putmask.  The main
		difference is we do not handle repeating or truncating like numpy.
		
		Parameters
		----------
		values: np.ndarray or ExtensionArray
		mask : np.ndarray[bool]
		    We assume extract_bool_array has already been called.
		value : Any
	**/
	static public function putmask_inplace(values:Dynamic, mask:Dynamic, value:Dynamic):Dynamic;
	/**
		Return a new ndarray, try to preserve dtype if possible.
		
		Parameters
		----------
		values : np.ndarray
		    `values`, updated in-place.
		mask : np.ndarray[bool]
		    Applies to both sides (array like).
		new : listlike `new values` aligned with `values`
		
		Returns
		-------
		values : ndarray with updated values
		    this *may* be a copy of the original
		
		See Also
		--------
		np.putmask
	**/
	static public function putmask_smart(values:Dynamic, mask:Dynamic, _new:Dynamic):Dynamic;
	/**
		np.putmask will truncate or repeat if `new` is a listlike with
		len(new) != len(values).  We require an exact match.
		
		Parameters
		----------
		values : np.ndarray
		mask : np.ndarray[bool]
		new : Any
	**/
	static public function putmask_without_repeat(values:Dynamic, mask:Dynamic, _new:Dynamic):Dynamic;
	/**
		Compute the quantiles of the given values for each quantile in `qs`.
		
		Parameters
		----------
		values : np.ndarray or ExtensionArray
		qs : np.ndarray[float64]
		interpolation : str
		
		Returns
		-------
		np.ndarray or ExtensionArray
	**/
	static public function quantile_compat(values:Dynamic, qs:Dynamic, interpolation:Dynamic):Dynamic;
	/**
		Parameters
		----------
		values : ArrayLike
		    Object dtype.
		rx : re.Pattern
		value : Any
		mask : np.ndarray[bool], optional
		
		Notes
		-----
		Alters values in-place.
	**/
	static public function replace_regex(values:Dynamic, rx:Dynamic, value:Dynamic, mask:Dynamic):Dynamic;
	/**
		Parameters
		----------
		values : np.ndarray
		num_set : int
		    For putmask, this is mask.sum()
		other : Any
	**/
	static public function setitem_datetimelike_compat(values:Dynamic, num_set:Dynamic, other:Dynamic):Dynamic;
	static public function shift(values:Dynamic, periods:Dynamic, axis:Dynamic, fill_value:Dynamic):Dynamic;
	/**
		Decide whether to treat `to_replace` as a regular expression.
	**/
	static public function should_use_regex(regex:Dynamic, to_replace:Dynamic):Dynamic;
	/**
		Try to coerce datetime, timedelta, and numeric object-dtype columns
		to inferred dtype.
		
		Parameters
		----------
		values : np.ndarray[object]
		datetime : bool, default True
		numeric: bool, default True
		timedelta : bool, default True
		period : bool, default True
		copy : bool, default True
		
		Returns
		-------
		np.ndarray or ExtensionArray
	**/
	static public function soft_convert_objects(values:Dynamic, ?datetime:Dynamic, ?numeric:Dynamic, ?timedelta:Dynamic, ?period:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Specialized Cython take which sets NaN values in one pass
		
		This dispatches to ``take`` defined on ExtensionArrays. It does not
		currently dispatch to ``SparseArray.take`` for sparse ``arr``.
		
		Note: this function assumes that the indexer is a valid(ated) indexer with
		no out of bound indices.
		
		Parameters
		----------
		arr : np.ndarray or ExtensionArray
		    Input array.
		indexer : ndarray
		    1-D array of indices to take, subarrays corresponding to -1 value
		    indices are filed with fill_value
		axis : int, default 0
		    Axis to take from
		fill_value : any, default np.nan
		    Fill value to replace -1 values with
		allow_fill : bool, default True
		    If False, indexer is assumed to contain no -1 values so no filling
		    will be done.  This short-circuits computation of a mask.  Result is
		    undefined if allow_fill == False and -1 is present in indexer.
		
		Returns
		-------
		subarray : np.ndarray or ExtensionArray
		    May be the same type as the input, or cast to an ndarray.
	**/
	static public function take_nd(arr:Dynamic, indexer:Dynamic, ?axis:Dynamic, ?fill_value:Dynamic, ?allow_fill:Dynamic):Dynamic;
	/**
		convert to our native types format
	**/
	static public function to_native_types(values:Dynamic, ?na_rep:Dynamic, ?quoting:Dynamic, ?float_format:Dynamic, ?decimal:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Ensure that argument passed in arg_name can be interpreted as boolean.
		
		Parameters
		----------
		value : bool
		    Value to be validated.
		arg_name : str
		    Name of the argument. To be reflected in the error message.
		none_allowed : bool, default True
		    Whether to consider None to be a valid boolean.
		int_allowed : bool, default False
		    Whether to consider integer value to be a valid boolean.
		
		Returns
		-------
		value
		    The same value as input.
		
		Raises
		------
		ValueError
		    If the value is not a valid boolean.
	**/
	static public function validate_bool_kwarg(value:Dynamic, arg_name:Dynamic, ?none_allowed:Dynamic, ?int_allowed:Dynamic):Dynamic;
	/**
		Validate mask and check if this putmask operation is a no-op.
	**/
	static public function validate_putmask(values:Dynamic, mask:Dynamic):Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}