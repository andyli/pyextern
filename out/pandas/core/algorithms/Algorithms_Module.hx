/* This file is generated, do not edit! */
package pandas.core.algorithms;
@:pythonImport("pandas.core.algorithms") extern class Algorithms_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _convert_wrapper(f:Dynamic, conv_dtype:Dynamic):Dynamic;
	static public var _diff_special : Dynamic;
	/**
		ensure that we are arraylike if not already
	**/
	static public function _ensure_arraylike(values:Dynamic):Dynamic;
	/**
		routine to ensure that our data is of the correct
		input dtype for lower-level routines
		
		This will coerce:
		- ints -> int64
		- uint -> uint64
		- bool -> uint64 (TODO this should be uint8)
		- datetimelike -> i8
		- datetime64tz -> i8 (in local tz)
		- categorical -> codes
		
		Parameters
		----------
		values : array-like
		dtype : pandas_dtype, optional
		    coerce to this dtype
		
		Returns
		-------
		(ndarray, pandas_dtype, algo dtype as a string)
	**/
	static public function _ensure_data(values:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Factorize an array-like to labels and uniques.
		
		This doesn't do any coercion of types or unboxing before factorization.
		
		Parameters
		----------
		values : ndarray
		na_sentinel : int, default -1
		size_hint : int, optional
		    Passsed through to the hashtable's 'get_labels' method
		na_value : object, optional
		    A value in `values` to consider missing. Note: only use this
		    parameter when you know that you don't have any values pandas would
		    consider missing in the array (NaN for float data, iNaT for
		    datetimes, etc.).
		
		Returns
		-------
		labels, uniques : ndarray
	**/
	static public function _factorize_array(values:Dynamic, ?na_sentinel:Dynamic, ?size_hint:Dynamic, ?na_value:Dynamic):Dynamic;
	static public function _get_data_algo(values:Dynamic, func_map:Dynamic):Dynamic;
	/**
		Parameters
		----------
		values : arraylike
		
		Returns
		-------
		tuples(hashtable class,
		       vector class,
		       values,
		       dtype,
		       ndtype)
	**/
	static public function _get_hashtable_algo(values:Dynamic):Dynamic;
	static public function _get_take_nd_function(ndim:Dynamic, arr_dtype:Dynamic, out_dtype:Dynamic, ?axis:Dynamic, ?mask_info:Dynamic):Dynamic;
	static public var _hashtables : Dynamic;
	static public var _rank1d_functions : Dynamic;
	static public var _rank2d_functions : Dynamic;
	/**
		reverse of _ensure_data
		
		Parameters
		----------
		values : ndarray
		dtype : pandas_dtype
		original : ndarray-like
		
		Returns
		-------
		Index for extension types, otherwise ndarray casted to dtype
	**/
	static public function _reconstruct_data(values:Dynamic, dtype:Dynamic, original:Dynamic):Dynamic;
	static public var _shared_docs : Dynamic;
	static public var _take_1d_dict : Dynamic;
	static public var _take_2d_axis0_dict : Dynamic;
	static public var _take_2d_axis1_dict : Dynamic;
	static public var _take_2d_multi_dict : Dynamic;
	static public function _take_2d_multi_object(arr:Dynamic, indexer:Dynamic, out:Dynamic, fill_value:Dynamic, mask_info:Dynamic):Dynamic;
	static public function _take_nd_object(arr:Dynamic, indexer:Dynamic, out:Dynamic, axis:Dynamic, fill_value:Dynamic, mask_info:Dynamic):Dynamic;
	/**
		Parameters
		----------
		values : arraylike
		dropna : boolean
		
		Returns
		-------
		(uniques, counts)
	**/
	static public function _value_counts_arraylike(values:Dynamic, dropna:Dynamic):Dynamic;
	static public function _view_wrapper(f:Dynamic, ?arr_dtype:Dynamic, ?out_dtype:Dynamic, ?fill_wrap:Dynamic):Dynamic;
	/**
		Perform array addition that checks for underflow and overflow.
		
		Performs the addition of an int64 array and an int64 integer (or array)
		but checks that they do not result in overflow first. For elements that
		are indicated to be NaN, whether or not there is overflow for that element
		is automatically ignored.
		
		Parameters
		----------
		arr : array addend.
		b : array or scalar addend.
		arr_mask : boolean array or None
		    array indicating which elements to exclude from checking
		b_mask : boolean array or boolean or None
		    array or scalar indicating which element(s) to exclude from checking
		
		Returns
		-------
		sum : An array for elements x + b for each element x in arr if b is
		      a scalar or an array for elements x + y for each element pair
		      (x, y) in (arr, b).
		
		Raises
		------
		OverflowError if any x + y exceeds the maximum or minimum int64 value.
	**/
	static public function checked_add_with_arr(arr:Dynamic, b:Dynamic, ?arr_mask:Dynamic, ?b_mask:Dynamic):Dynamic;
	/**
		Transform any list-like object in a 1-dimensional numpy array of object
		dtype.
		
		Parameters
		----------
		values : any iterable which has a len()
		
		Raises
		------
		TypeError
		    * If `values` does not have a len()
		
		Returns
		-------
		1-dimensional numpy array of dtype object
	**/
	static public function construct_1d_object_array_from_listlike(values:Dynamic):Dynamic;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.  (This behaviour is
		new in Python 2.5; older versions of this module incorrectly
		expanded tabs before searching for common leading whitespace.)
	**/
	static public function dedent(text:Dynamic):Dynamic;
	/**
		Decorator to deprecate a keyword argument of a function.
		
		Parameters
		----------
		old_arg_name : str
		    Name of argument in function to deprecate
		new_arg_name : str or None
		    Name of preferred argument in function. Use None to raise warning that
		    ``old_arg_name`` keyword is deprecated.
		mapping : dict or callable
		    If mapping is present, use it to translate old arguments to
		    new arguments. A callable must do its own value checking;
		    values not found in a dict will be forwarded unchanged.
		
		Examples
		--------
		The following deprecates 'cols', using 'columns' instead
		
		>>> @deprecate_kwarg(old_arg_name='cols', new_arg_name='columns')
		... def f(columns=''):
		...     print(columns)
		...
		>>> f(columns='should work ok')
		should work ok
		
		>>> f(cols='should raise warning')
		FutureWarning: cols is deprecated, use columns instead
		  warnings.warn(msg, FutureWarning)
		should raise warning
		
		>>> f(cols='should error', columns="can't pass do both")
		TypeError: Can only specify 'cols' or 'columns', not both
		
		>>> @deprecate_kwarg('old', 'new', {'yes': True, 'no': False})
		... def f(new=False):
		...     print('yes!' if new else 'no!')
		...
		>>> f(old='yes')
		FutureWarning: old='yes' is deprecated, use new=True instead
		  warnings.warn(msg, FutureWarning)
		yes!
		
		To raise a warning that a keyword will be removed entirely in the future
		
		>>> @deprecate_kwarg(old_arg_name='cols', new_arg_name=None)
		... def f(cols='', another_param=''):
		...     print(cols)
		...
		>>> f(cols='should raise warning')
		FutureWarning: the 'cols' keyword is deprecated and will be removed in a
		future version please takes steps to stop use of 'cols'
		should raise warning
		>>> f(another_param='should not raise warning')
		should not raise warning
		
		>>> f(cols='should raise warning', another_param='')
		FutureWarning: the 'cols' keyword is deprecated and will be removed in a
		future version please takes steps to stop use of 'cols'
		should raise warning
	**/
	static public function deprecate_kwarg(old_arg_name:Dynamic, new_arg_name:Dynamic, ?mapping:Dynamic, ?stacklevel:Dynamic):Dynamic;
	/**
		difference of n between self,
		analogous to s-s.shift(n)
		
		Parameters
		----------
		arr : ndarray
		n : int
		    number of periods
		axis : int
		    axis to shift on
		
		Returns
		-------
		shifted
	**/
	static public function diff(arr:Dynamic, n:Dynamic, ?axis:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return boolean ndarray denoting duplicate values.
		
		.. versionadded:: 0.19.0
		
		Parameters
		----------
		values : ndarray-like
		    Array over which to check for duplicate values.
		keep : {'first', 'last', False}, default 'first'
		    - ``first`` : Mark duplicates as ``True`` except for the first
		      occurrence.
		    - ``last`` : Mark duplicates as ``True`` except for the last
		      occurrence.
		    - False : Mark all duplicates as ``True``.
		
		Returns
		-------
		duplicated : ndarray
	**/
	static public function duplicated(values:Dynamic, ?keep:Dynamic):numpy.Ndarray;
	static public function ensure_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_uint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Encode the object as an enumerated type or categorical variable.
		
		This method is useful for obtaining a numeric representation of an
		array when all that matters is identifying distinct values. `factorize`
		is available as both a top-level function :func:`pandas.factorize`,
		and as a method :meth:`Series.factorize` and :meth:`Index.factorize`.
		
		Parameters
		----------
		values : sequence
		    A 1-D sequence. Sequences that aren't pandas objects are
		    coerced to ndarrays before factorization.
		sort : bool, default False
		    Sort `uniques` and shuffle `labels` to maintain the
		    relationship.
		order
		    .. deprecated:: 0.23.0
		
		       This parameter has no effect and is deprecated.
		
		na_sentinel : int, default -1
		    Value to mark "not found".
		size_hint : int, optional
		    Hint to the hashtable sizer.
		
		Returns
		-------
		labels : ndarray
		    An integer ndarray that's an indexer into `uniques`.
		    ``uniques.take(labels)`` will have the same values as `values`.
		uniques : ndarray, Index, or Categorical
		    The unique valid values. When `values` is Categorical, `uniques`
		    is a Categorical. When `values` is some other pandas object, an
		    `Index` is returned. Otherwise, a 1-D ndarray is returned.
		
		    .. note ::
		
		       Even if there's a missing value in `values`, `uniques` will
		       *not* contain an entry for it.
		
		See Also
		--------
		cut : Discretize continuous-valued array.
		unique : Find the unique value in an array.
		
		Examples
		--------
		These examples all show factorize as a top-level method like
		``pd.factorize(values)``. The results are identical for methods like
		:meth:`Series.factorize`.
		
		>>> labels, uniques = pd.factorize(['b', 'b', 'a', 'c', 'b'])
		>>> labels
		array([0, 0, 1, 2, 0])
		>>> uniques
		array(['b', 'a', 'c'], dtype=object)
		
		With ``sort=True``, the `uniques` will be sorted, and `labels` will be
		shuffled so that the relationship is the maintained.
		
		>>> labels, uniques = pd.factorize(['b', 'b', 'a', 'c', 'b'], sort=True)
		>>> labels
		array([1, 1, 0, 2, 1])
		>>> uniques
		array(['a', 'b', 'c'], dtype=object)
		
		Missing values are indicated in `labels` with `na_sentinel`
		(``-1`` by default). Note that missing values are never
		included in `uniques`.
		
		>>> labels, uniques = pd.factorize(['b', None, 'a', 'c', 'b'])
		>>> labels
		array([ 0, -1,  1,  2,  0])
		>>> uniques
		array(['b', 'a', 'c'], dtype=object)
		
		Thus far, we've only factorized lists (which are internally coerced to
		NumPy arrays). When factorizing pandas objects, the type of `uniques`
		will differ. For Categoricals, a `Categorical` is returned.
		
		>>> cat = pd.Categorical(['a', 'a', 'c'], categories=['a', 'b', 'c'])
		>>> labels, uniques = pd.factorize(cat)
		>>> labels
		array([0, 0, 1])
		>>> uniques
		[a, c]
		Categories (3, object): [a, b, c]
		
		Notice that ``'b'`` is in ``uniques.categories``, despite not being
		present in ``cat.values``.
		
		For all other pandas objects, an Index of the appropriate type is
		returned.
		
		>>> cat = pd.Series(['a', 'a', 'c'])
		>>> labels, uniques = pd.factorize(cat)
		>>> labels
		array([0, 0, 1])
		>>> uniques
		Index(['a', 'c'], dtype='object')
	**/
	static public function factorize(values:Dynamic, ?sort:Dynamic, ?order:Dynamic, ?na_sentinel:Dynamic, ?size_hint:Dynamic):numpy.Ndarray;
	static public var iNaT : Dynamic;
	/**
		Check if the object is array-like.
		
		For an object to be considered array-like, it must be list-like and
		have a `dtype` attribute.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_array_like : bool
		    Whether `obj` has array-like properties.
		
		Examples
		--------
		>>> is_array_like(np.array([1, 2, 3]))
		True
		>>> is_array_like(pd.Series(["a", "b"]))
		True
		>>> is_array_like(pd.Index(["2016-01-01"]))
		True
		>>> is_array_like([1, 2, 3])
		False
		>>> is_array_like(("a", "b"))
		False
	**/
	static public function is_array_like(obj:Dynamic):Bool;
	/**
		Check whether the provided array or dtype is of a boolean dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a boolean dtype.
		
		Notes
		-----
		An ExtensionArray is considered boolean when the ``_is_boolean``
		attribute is set to True.
		
		Examples
		--------
		>>> is_bool_dtype(str)
		False
		>>> is_bool_dtype(int)
		False
		>>> is_bool_dtype(bool)
		True
		>>> is_bool_dtype(np.bool)
		True
		>>> is_bool_dtype(np.array(['a', 'b']))
		False
		>>> is_bool_dtype(pd.Series([1, 2]))
		False
		>>> is_bool_dtype(np.array([True, False]))
		True
		>>> is_bool_dtype(pd.Categorical([True, False]))
		True
		>>> is_bool_dtype(pd.SparseArray([True, False]))
		True
	**/
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Check whether the provided array or dtype is of a complex dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a compex dtype.
		
		Examples
		--------
		>>> is_complex_dtype(str)
		False
		>>> is_complex_dtype(int)
		False
		>>> is_complex_dtype(np.complex)
		True
		>>> is_complex_dtype(np.array(['a', 'b']))
		False
		>>> is_complex_dtype(pd.Series([1, 2]))
		False
		>>> is_complex_dtype(np.array([1 + 1j, 5]))
		True
	**/
	static public function is_complex_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of the datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime64_any_dtype(str)
		False
		>>> is_datetime64_any_dtype(int)
		False
		>>> is_datetime64_any_dtype(np.datetime64)  # can be tz-naive
		True
		>>> is_datetime64_any_dtype(DatetimeTZDtype("ns", "US/Eastern"))
		True
		>>> is_datetime64_any_dtype(np.array(['a', 'b']))
		False
		>>> is_datetime64_any_dtype(np.array([1, 2]))
		False
		>>> is_datetime64_any_dtype(np.array([], dtype=np.datetime64))
		True
		>>> is_datetime64_any_dtype(pd.DatetimeIndex([1, 2, 3],
		                            dtype=np.datetime64))
		True
	**/
	static public function is_datetime64_any_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Check whether an array-like is a datetime-like array-like.
		
		Acceptable datetime-like objects are (but not limited to) datetime
		indices, periodic indices, and timedelta indices.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a datetime-like array-like.
		
		Examples
		--------
		>>> is_datetimelike([1, 2, 3])
		False
		>>> is_datetimelike(pd.Index([1, 2, 3]))
		False
		>>> is_datetimelike(pd.DatetimeIndex([1, 2, 3]))
		True
		>>> is_datetimelike(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		>>> is_datetimelike(pd.PeriodIndex([], freq="A"))
		True
		>>> is_datetimelike(np.array([], dtype=np.datetime64))
		True
		>>> is_datetimelike(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>>
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_datetimelike(s)
		True
	**/
	static public function is_datetimelike(arr:Dynamic):Dynamic;
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
		Check whether the provided array or dtype is of a float dtype.
		
		This function is internal and should not be exposed in the public API.
		
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
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `in_any_int_dtype`, timedelta64 instances will return False.
		
		.. versionchanged:: 0.24.0
		
		   The nullable Integer dtypes (e.g. pandas.Int64Dtype) are also considered
		   as integer by this function.
		
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
		Check whether an array-like or dtype is of the Interval dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the Interval dtype.
		
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
		obj : The object to check
		allow_sets : boolean, default True
		    If this parameter is False, sets will not be considered list-like
		
		    .. versionadded:: 0.24.0
		
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
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2)))
		False
	**/
	static public function is_list_like(obj:Dynamic, ?allow_sets:Dynamic):Bool;
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
		Check whether an array-like or dtype is of the Period dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of the Period dtype.
		
		Examples
		--------
		>>> is_period_dtype(object)
		False
		>>> is_period_dtype(PeriodDtype(freq="D"))
		True
		>>> is_period_dtype([1, 2, 3])
		False
		>>> is_period_dtype(pd.Period("2017-01-01"))
		False
		>>> is_period_dtype(pd.PeriodIndex([], freq="A"))
		True
	**/
	static public function is_period_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Return True if given value is scalar.
		
		Parameters
		----------
		val : object
		    This includes:
		
		    - numpy array scalar (e.g. np.int64)
		    - Python builtin numerics
		    - Python builtin byte arrays and strings
		    - None
		    - datetime.datetime
		    - datetime.timedelta
		    - Period
		    - decimal.Decimal
		    - Interval
		    - DateOffset
		    - Fraction
		    - Number
		
		Returns
		-------
		bool
		    Return True if given object is scalar, False otherwise
		
		Examples
		--------
		>>> dt = pd.datetime.datetime(2018, 10, 3)
		>>> pd.is_scalar(dt)
		True
		
		>>> pd.api.types.is_scalar([2, 3])
		False
		
		>>> pd.api.types.is_scalar({0: 1, 2: 3})
		False
		
		>>> pd.api.types.is_scalar((0, 2))
		False
		
		pandas supports PEP 3141 numbers:
		
		>>> from fractions import Fraction
		>>> pd.api.types.is_scalar(Fraction(3, 5))
		True
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a signed integer dtype.
		
		Unlike in `in_any_int_dtype`, timedelta64 instances will return False.
		
		.. versionchanged:: 0.24.0
		
		   The nullable Integer dtypes (e.g. pandas.Int64Dtype) are also considered
		   as integer by this function.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a signed integer dtype
		          and not an instance of timedelta64.
		
		Examples
		--------
		>>> is_signed_integer_dtype(str)
		False
		>>> is_signed_integer_dtype(int)
		True
		>>> is_signed_integer_dtype(float)
		False
		>>> is_signed_integer_dtype(np.uint64)  # unsigned
		False
		>>> is_signed_integer_dtype('int8')
		True
		>>> is_signed_integer_dtype('Int8')
		True
		>>> is_signed_dtype(pd.Int8Dtype)
		True
		>>> is_signed_integer_dtype(np.datetime64)
		False
		>>> is_signed_integer_dtype(np.timedelta64)
		False
		>>> is_signed_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_signed_integer_dtype(pd.Series([1, 2]))
		True
		>>> is_signed_integer_dtype(np.array([], dtype=np.timedelta64))
		False
		>>> is_signed_integer_dtype(pd.Index([1, 2.]))  # float
		False
		>>> is_signed_integer_dtype(np.array([1, 2], dtype=np.uint32))  # unsigned
		False
	**/
	static public function is_signed_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like is a 1-D pandas sparse array.
		
		Check that the one-dimensional array-like is a pandas sparse array.
		Returns True if it is a pandas sparse array, not another type of
		sparse array.
		
		Parameters
		----------
		arr : array-like
		    Array-like to check.
		
		Returns
		-------
		bool
		    Whether or not the array-like is a pandas sparse array.
		
		See Also
		--------
		DataFrame.to_sparse : Convert DataFrame to a SparseDataFrame.
		Series.to_sparse : Convert Series to SparseSeries.
		Series.to_dense : Return dense representation of a Series.
		
		Examples
		--------
		Returns `True` if the parameter is a 1-D pandas sparse array.
		
		>>> is_sparse(pd.SparseArray([0, 0, 1, 0]))
		True
		>>> is_sparse(pd.SparseSeries([0, 0, 1, 0]))
		True
		
		Returns `False` if the parameter is not sparse.
		
		>>> is_sparse(np.array([0, 0, 1, 0]))
		False
		>>> is_sparse(pd.Series([0, 1, 0, 0]))
		False
		
		Returns `False` if the parameter is not a pandas sparse array.
		
		>>> from scipy.sparse import bsr_matrix
		>>> is_sparse(bsr_matrix([0, 1, 0, 0]))
		False
		
		Returns `False` if the parameter has more than one dimension.
		
		>>> df = pd.SparseDataFrame([389., 24., 80.5, np.nan],
		                            columns=['max_speed'],
		                            index=['falcon', 'parrot', 'lion', 'monkey'])
		>>> is_sparse(df)
		False
		>>> is_sparse(df.max_speed)
		True
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
		>>> is_timedelta64_dtype('0 days')
		False
	**/
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of an unsigned integer dtype.
		
		.. versionchanged:: 0.24.0
		
		   The nullable Integer dtypes (e.g. pandas.UInt64Dtype) are also
		   considered as integer by this function.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of an
		          unsigned integer dtype.
		
		Examples
		--------
		>>> is_unsigned_integer_dtype(str)
		False
		>>> is_unsigned_integer_dtype(int)  # signed
		False
		>>> is_unsigned_integer_dtype(float)
		False
		>>> is_unsigned_integer_dtype(np.uint64)
		True
		>>> is_unsigned_integer_dtype('uint8')
		True
		>>> is_unsigned_integer_dtype('UInt8')
		True
		>>> is_unsigned_integer_dtype(pd.UInt8Dtype)
		True
		>>> is_unsigned_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_unsigned_integer_dtype(pd.Series([1, 2]))  # signed
		False
		>>> is_unsigned_integer_dtype(pd.Index([1, 2.]))  # float
		False
		>>> is_unsigned_integer_dtype(np.array([1, 2], dtype=np.uint32))
		True
	**/
	static public function is_unsigned_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Compute the isin boolean array
		
		Parameters
		----------
		comps : array-like
		values : array-like
		
		Returns
		-------
		boolean array same length as comps
	**/
	static public function isin(comps:Dynamic, values:Dynamic):Dynamic;
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
		Compute locations of to_match into values
		
		Parameters
		----------
		to_match : array-like
		    values to find positions of
		values : array-like
		    Unique set of values
		na_sentinel : int, default -1
		    Value to mark "not found"
		
		Examples
		--------
		
		Returns
		-------
		match : ndarray of integers
	**/
	static public function match(to_match:Dynamic, values:Dynamic, ?na_sentinel:Dynamic):Dynamic;
	static public function maybe_promote(dtype:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Returns the mode(s) of an array.
		
		Parameters
		----------
		values : array-like
		    Array over which to check for duplicate values.
		dropna : boolean, default True
		    Don't consider counts of NaN/NaT.
		
		    .. versionadded:: 0.24.0
		
		Returns
		-------
		mode : Series
	**/
	static public function mode(values:Dynamic, ?dropna:Dynamic):pandas.Series;
	/**
		Return a dtype compat na value
		
		Parameters
		----------
		dtype : string / dtype
		compat : boolean, default True
		
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
		NaT
	**/
	static public function na_value_for_dtype(dtype:Dynamic, ?compat:Dynamic):Dynamic;
	/**
		Check whether the array or dtype should be converted to int64.
		
		An array-like or dtype "needs" such a conversion if the array-like
		or dtype is of a datetime-like dtype
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype should be converted to int64.
		
		Examples
		--------
		>>> needs_i8_conversion(str)
		False
		>>> needs_i8_conversion(np.int64)
		False
		>>> needs_i8_conversion(np.datetime64)
		True
		>>> needs_i8_conversion(np.array(['a', 'b']))
		False
		>>> needs_i8_conversion(pd.Series([1, 2]))
		False
		>>> needs_i8_conversion(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>> needs_i8_conversion(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
	**/
	static public function needs_i8_conversion(arr_or_dtype:Dynamic):Dynamic;
	/**
		Compute sample quantile or quantiles of the input array. For example, q=0.5
		computes the median.
		
		The `interpolation_method` parameter supports three values, namely
		`fraction` (default), `lower` and `higher`. Interpolation is done only,
		if the desired quantile lies between two data points `i` and `j`. For
		`fraction`, the result is an interpolated value between `i` and `j`;
		for `lower`, the result is `i`, for `higher` the result is `j`.
		
		Parameters
		----------
		x : ndarray
		    Values from which to extract score.
		q : scalar or array
		    Percentile at which to extract score.
		interpolation_method : {'fraction', 'lower', 'higher'}, optional
		    This optional parameter specifies the interpolation method to use,
		    when the desired quantile lies between two data points `i` and `j`:
		
		    - fraction: `i + (j - i)*fraction`, where `fraction` is the
		                fractional part of the index surrounded by `i` and `j`.
		    -lower: `i`.
		    - higher: `j`.
		
		Returns
		-------
		score : float
		    Score at percentile.
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.arange(100)
		>>> stats.scoreatpercentile(a, 50)
		49.5
	**/
	static public function quantile(x:Dynamic, q:Dynamic, ?interpolation_method:Dynamic):Float;
	/**
		Rank the values along a given axis.
		
		Parameters
		----------
		values : array-like
		    Array whose values will be ranked. The number of dimensions in this
		    array must not exceed 2.
		axis : int, default 0
		    Axis over which to perform rankings.
		method : {'average', 'min', 'max', 'first', 'dense'}, default 'average'
		    The method by which tiebreaks are broken during the ranking.
		na_option : {'keep', 'top'}, default 'keep'
		    The method by which NaNs are placed in the ranking.
		    - ``keep``: rank each NaN value with a NaN ranking
		    - ``top``: replace each NaN with either +/- inf so that they
		               there are ranked at the top
		ascending : boolean, default True
		    Whether or not the elements should be ranked in ascending order.
		pct : boolean, default False
		    Whether or not to the display the returned rankings in integer form
		    (e.g. 1, 2, 3) or in percentile form (e.g. 0.333..., 0.666..., 1).
	**/
	static public function rank(values:Dynamic, ?axis:Dynamic, ?method:Dynamic, ?na_option:Dynamic, ?ascending:Dynamic, ?pct:Dynamic):Dynamic;
	/**
		Insert a simple entry into the list of warnings filters (at the front).
		
		A simple filter matches all modules and messages.
		'action' -- one of "error", "ignore", "always", "default", "module",
		            or "once"
		'category' -- a class that the warning must be a subclass of
		'lineno' -- an integer line number, 0 matches all warnings
		'append' -- if true, append to the list of filters
	**/
	static public function simplefilter(action:Dynamic, ?category:Dynamic, ?lineno:Dynamic, ?append:Dynamic):Dynamic;
	/**
		Take elements from an array.
		
		.. versionadded:: 0.23.0
		
		Parameters
		----------
		arr : sequence
		    Non array-likes (sequences without a dtype) are coerced
		    to an ndarray.
		indices : sequence of integers
		    Indices to be taken.
		axis : int, default 0
		    The axis over which to select values.
		allow_fill : bool, default False
		    How to handle negative values in `indices`.
		
		    * False: negative values in `indices` indicate positional indices
		      from the right (the default). This is similar to :func:`numpy.take`.
		
		    * True: negative values in `indices` indicate
		      missing values. These values are set to `fill_value`. Any other
		      other negative values raise a ``ValueError``.
		
		fill_value : any, optional
		    Fill value to use for NA-indices when `allow_fill` is True.
		    This may be ``None``, in which case the default NA value for
		    the type (``self.dtype.na_value``) is used.
		
		    For multi-dimensional `arr`, each *element* is filled with
		    `fill_value`.
		
		Returns
		-------
		ndarray or ExtensionArray
		    Same type as the input.
		
		Raises
		------
		IndexError
		    When `indices` is out of bounds for the array.
		ValueError
		    When the indexer contains negative values other than ``-1``
		    and `allow_fill` is True.
		
		Notes
		-----
		When `allow_fill` is False, `indices` may be whatever dimensionality
		is accepted by NumPy for `arr`.
		
		When `allow_fill` is True, `indices` should be 1-D.
		
		See Also
		--------
		numpy.take
		
		Examples
		--------
		>>> from pandas.api.extensions import take
		
		With the default ``allow_fill=False``, negative numbers indicate
		positional indices from the right.
		
		>>> take(np.array([10, 20, 30]), [0, 0, -1])
		array([10, 10, 30])
		
		Setting ``allow_fill=True`` will place `fill_value` in those positions.
		
		>>> take(np.array([10, 20, 30]), [0, 0, -1], allow_fill=True)
		array([10., 10., nan])
		
		>>> take(np.array([10, 20, 30]), [0, 0, -1], allow_fill=True,
		...      fill_value=-10)
		array([ 10,  10, -10])
	**/
	static public function take(arr:Dynamic, indices:Dynamic, ?axis:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Specialized Cython take which sets NaN values in one pass
		
		This dispatches to ``take`` defined on ExtensionArrays. It does not
		currently dispatch to ``SparseArray.take`` for sparse ``arr``.
		
		Parameters
		----------
		arr : array-like
		    Input array.
		indexer : ndarray
		    1-D array of indices to take, subarrays corresponding to -1 value
		    indices are filed with fill_value
		axis : int, default 0
		    Axis to take from
		out : ndarray or None, default None
		    Optional output array, must be appropriate type to hold input and
		    fill_value together, if indexer has any -1 value entries; call
		    _maybe_promote to determine this type for any fill_value
		fill_value : any, default np.nan
		    Fill value to replace -1 values with
		mask_info : tuple of (ndarray, boolean)
		    If provided, value should correspond to:
		        (indexer != -1, (indexer != -1).any())
		    If not provided, it will be computed internally if necessary
		allow_fill : boolean, default True
		    If False, indexer is assumed to contain no -1 values so no filling
		    will be done.  This short-circuits computation of a mask.  Result is
		    undefined if allow_fill == False and -1 is present in indexer.
		
		Returns
		-------
		subarray : array-like
		    May be the same type as the input, or cast to an ndarray.
	**/
	static public function take_1d(arr:Dynamic, indexer:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?mask_info:Dynamic, ?allow_fill:Dynamic):Dynamic;
	/**
		Specialized Cython take which sets NaN values in one pass
	**/
	static public function take_2d_multi(arr:Dynamic, indexer:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?mask_info:Dynamic, ?allow_fill:Dynamic):Dynamic;
	/**
		Specialized Cython take which sets NaN values in one pass
		
		This dispatches to ``take`` defined on ExtensionArrays. It does not
		currently dispatch to ``SparseArray.take`` for sparse ``arr``.
		
		Parameters
		----------
		arr : array-like
		    Input array.
		indexer : ndarray
		    1-D array of indices to take, subarrays corresponding to -1 value
		    indices are filed with fill_value
		axis : int, default 0
		    Axis to take from
		out : ndarray or None, default None
		    Optional output array, must be appropriate type to hold input and
		    fill_value together, if indexer has any -1 value entries; call
		    _maybe_promote to determine this type for any fill_value
		fill_value : any, default np.nan
		    Fill value to replace -1 values with
		mask_info : tuple of (ndarray, boolean)
		    If provided, value should correspond to:
		        (indexer != -1, (indexer != -1).any())
		    If not provided, it will be computed internally if necessary
		allow_fill : boolean, default True
		    If False, indexer is assumed to contain no -1 values so no filling
		    will be done.  This short-circuits computation of a mask.  Result is
		    undefined if allow_fill == False and -1 is present in indexer.
		
		Returns
		-------
		subarray : array-like
		    May be the same type as the input, or cast to an ndarray.
	**/
	static public function take_nd(arr:Dynamic, indexer:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?mask_info:Dynamic, ?allow_fill:Dynamic):Dynamic;
	/**
		Hash table-based unique. Uniques are returned in order
		of appearance. This does NOT sort.
		
		Significantly faster than numpy.unique. Includes NA values.
		
		Parameters
		----------
		values : 1d array-like
		
		Returns
		-------
		unique values.
		  - If the input is an Index, the return is an Index
		  - If the input is a Categorical dtype, the return is a Categorical
		  - If the input is a Series/ndarray, the return will be an ndarray
		
		See Also
		--------
		pandas.Index.unique
		pandas.Series.unique
		
		Examples
		--------
		>>> pd.unique(pd.Series([2, 1, 3, 3]))
		array([2, 1, 3])
		
		>>> pd.unique(pd.Series([2] + [1] * 5))
		array([2, 1])
		
		>>> pd.unique(pd.Series([pd.Timestamp('20160101'),
		...                     pd.Timestamp('20160101')]))
		array(['2016-01-01T00:00:00.000000000'], dtype='datetime64[ns]')
		
		>>> pd.unique(pd.Series([pd.Timestamp('20160101', tz='US/Eastern'),
		...                      pd.Timestamp('20160101', tz='US/Eastern')]))
		array([Timestamp('2016-01-01 00:00:00-0500', tz='US/Eastern')],
		      dtype=object)
		
		>>> pd.unique(pd.Index([pd.Timestamp('20160101', tz='US/Eastern'),
		...                     pd.Timestamp('20160101', tz='US/Eastern')]))
		DatetimeIndex(['2016-01-01 00:00:00-05:00'],
		...           dtype='datetime64[ns, US/Eastern]', freq=None)
		
		>>> pd.unique(list('baabc'))
		array(['b', 'a', 'c'], dtype=object)
		
		An unordered Categorical will return categories in the
		order of appearance.
		
		>>> pd.unique(pd.Series(pd.Categorical(list('baabc'))))
		[b, a, c]
		Categories (3, object): [b, a, c]
		
		>>> pd.unique(pd.Series(pd.Categorical(list('baabc'),
		...                                    categories=list('abc'))))
		[b, a, c]
		Categories (3, object): [b, a, c]
		
		An ordered Categorical preserves the category ordering.
		
		>>> pd.unique(pd.Series(pd.Categorical(list('baabc'),
		...                                    categories=list('abc'),
		...                                    ordered=True)))
		[b, a, c]
		Categories (3, object): [a < b < c]
		
		An array of tuples
		
		>>> pd.unique([('a', 'b'), ('b', 'a'), ('a', 'c'), ('b', 'a')])
		array([('a', 'b'), ('b', 'a'), ('a', 'c')], dtype=object)
	**/
	static public function unique(values:Dynamic):Dynamic;
	/**
		Hash table-based unique. Uniques are returned in order
		of appearance. This does NOT sort.
		
		Significantly faster than numpy.unique. Includes NA values.
		
		Parameters
		----------
		values : 1d array-like
		
		Returns
		-------
		unique values.
		  - If the input is an Index, the return is an Index
		  - If the input is a Categorical dtype, the return is a Categorical
		  - If the input is a Series/ndarray, the return will be an ndarray
		
		See Also
		--------
		pandas.Index.unique
		pandas.Series.unique
		
		Examples
		--------
		>>> pd.unique(pd.Series([2, 1, 3, 3]))
		array([2, 1, 3])
		
		>>> pd.unique(pd.Series([2] + [1] * 5))
		array([2, 1])
		
		>>> pd.unique(pd.Series([pd.Timestamp('20160101'),
		...                     pd.Timestamp('20160101')]))
		array(['2016-01-01T00:00:00.000000000'], dtype='datetime64[ns]')
		
		>>> pd.unique(pd.Series([pd.Timestamp('20160101', tz='US/Eastern'),
		...                      pd.Timestamp('20160101', tz='US/Eastern')]))
		array([Timestamp('2016-01-01 00:00:00-0500', tz='US/Eastern')],
		      dtype=object)
		
		>>> pd.unique(pd.Index([pd.Timestamp('20160101', tz='US/Eastern'),
		...                     pd.Timestamp('20160101', tz='US/Eastern')]))
		DatetimeIndex(['2016-01-01 00:00:00-05:00'],
		...           dtype='datetime64[ns, US/Eastern]', freq=None)
		
		>>> pd.unique(list('baabc'))
		array(['b', 'a', 'c'], dtype=object)
		
		An unordered Categorical will return categories in the
		order of appearance.
		
		>>> pd.unique(pd.Series(pd.Categorical(list('baabc'))))
		[b, a, c]
		Categories (3, object): [b, a, c]
		
		>>> pd.unique(pd.Series(pd.Categorical(list('baabc'),
		...                                    categories=list('abc'))))
		[b, a, c]
		Categories (3, object): [b, a, c]
		
		An ordered Categorical preserves the category ordering.
		
		>>> pd.unique(pd.Series(pd.Categorical(list('baabc'),
		...                                    categories=list('abc'),
		...                                    ordered=True)))
		[b, a, c]
		Categories (3, object): [a < b < c]
		
		An array of tuples
		
		>>> pd.unique([('a', 'b'), ('b', 'a'), ('a', 'c'), ('b', 'a')])
		array([('a', 'b'), ('b', 'a'), ('a', 'c')], dtype=object)
	**/
	static public function unique1d(values:Dynamic):Dynamic;
	/**
		Compute a histogram of the counts of non-null values.
		
		Parameters
		----------
		values : ndarray (1-d)
		sort : boolean, default True
		    Sort by values
		ascending : boolean, default False
		    Sort in ascending order
		normalize: boolean, default False
		    If True then compute a relative histogram
		bins : integer, optional
		    Rather than count values, group them into half-open bins,
		    convenience for pd.cut, only works with numeric data
		dropna : boolean, default True
		    Don't include counts of NaN
		
		Returns
		-------
		value_counts : Series
	**/
	static public function value_counts(values:Dynamic, ?sort:Dynamic, ?ascending:Dynamic, ?normalize:Dynamic, ?bins:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}