/* This file is generated, do not edit! */
package pandas.core.reshape.tile;
@:pythonImport("pandas.core.reshape.tile") extern class Tile_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var DT64NS_DTYPE : Dynamic;
	static public function Literal(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _bins_to_cuts(x:Dynamic, bins:Dynamic, ?right:Dynamic, ?labels:Dynamic, ?precision:Dynamic, ?include_lowest:Dynamic, ?dtype:Dynamic, ?duplicates:Dynamic, ?ordered:Dynamic):Dynamic;
	/**
		if the passed data is of datetime/timedelta, bool or nullable int type,
		this method converts it to numeric so that cut or qcut method can
		handle it
	**/
	static public function _coerce_to_type(x:Dynamic):Dynamic;
	/**
		Convert bins to a DatetimeIndex or TimedeltaIndex if the original dtype is
		datelike
		
		Parameters
		----------
		bins : list-like of bins
		dtype : dtype of data
		
		Returns
		-------
		bins : Array-like of bins, DatetimeIndex or TimedeltaIndex if dtype is
		       datelike
	**/
	static public function _convert_bin_to_datelike_type(bins:Dynamic, dtype:Dynamic):Dynamic;
	/**
		if the passed bin is of datetime/timedelta type,
		this method converts it to integer
		
		Parameters
		----------
		bins : list-like of bins
		dtype : dtype of data
		
		Raises
		------
		ValueError if bins are not of a compat dtype to dtype
	**/
	static public function _convert_bin_to_numeric_type(bins:Dynamic, dtype:Dynamic):Dynamic;
	/**
		based on the dtype, return our labels
	**/
	static public function _format_labels(bins:Dynamic, precision:Dynamic, ?right:Dynamic, ?include_lowest:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Infer an appropriate precision for _round_frac
	**/
	static public function _infer_precision(base_precision:Dynamic, bins:Dynamic):Dynamic;
	/**
		handles post processing for the cut method where
		we combine the index information if the originally passed
		datatype was a series
	**/
	static public function _postprocess_for_cut(fac:Dynamic, bins:Dynamic, retbins:Dynamic, dtype:Dynamic, original:Dynamic):Dynamic;
	/**
		handles preprocessing for cut where we convert passed
		input to array, strip the index information and store it
		separately
	**/
	static public function _preprocess_for_cut(x:Dynamic):Dynamic;
	/**
		Round the fractional part of the given number
	**/
	static public function _round_frac(x:Dynamic, precision:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Bin values into discrete intervals.
		
		Use `cut` when you need to segment and sort data values into bins. This
		function is also useful for going from a continuous variable to a
		categorical variable. For example, `cut` could convert ages to groups of
		age ranges. Supports binning into an equal number of bins, or a
		pre-specified array of bins.
		
		Parameters
		----------
		x : array-like
		    The input array to be binned. Must be 1-dimensional.
		bins : int, sequence of scalars, or IntervalIndex
		    The criteria to bin by.
		
		    * int : Defines the number of equal-width bins in the range of `x`. The
		      range of `x` is extended by .1% on each side to include the minimum
		      and maximum values of `x`.
		    * sequence of scalars : Defines the bin edges allowing for non-uniform
		      width. No extension of the range of `x` is done.
		    * IntervalIndex : Defines the exact bins to be used. Note that
		      IntervalIndex for `bins` must be non-overlapping.
		
		right : bool, default True
		    Indicates whether `bins` includes the rightmost edge or not. If
		    ``right == True`` (the default), then the `bins` ``[1, 2, 3, 4]``
		    indicate (1,2], (2,3], (3,4]. This argument is ignored when
		    `bins` is an IntervalIndex.
		labels : array or False, default None
		    Specifies the labels for the returned bins. Must be the same length as
		    the resulting bins. If False, returns only integer indicators of the
		    bins. This affects the type of the output container (see below).
		    This argument is ignored when `bins` is an IntervalIndex. If True,
		    raises an error. When `ordered=False`, labels must be provided.
		retbins : bool, default False
		    Whether to return the bins or not. Useful when bins is provided
		    as a scalar.
		precision : int, default 3
		    The precision at which to store and display the bins labels.
		include_lowest : bool, default False
		    Whether the first interval should be left-inclusive or not.
		duplicates : {default 'raise', 'drop'}, optional
		    If bin edges are not unique, raise ValueError or drop non-uniques.
		ordered : bool, default True
		    Whether the labels are ordered or not. Applies to returned types
		    Categorical and Series (with Categorical dtype). If True,
		    the resulting categorical will be ordered. If False, the resulting
		    categorical will be unordered (labels must be provided).
		
		    .. versionadded:: 1.1.0
		
		Returns
		-------
		out : Categorical, Series, or ndarray
		    An array-like object representing the respective bin for each value
		    of `x`. The type depends on the value of `labels`.
		
		    * None (default) : returns a Series for Series `x` or a
		      Categorical for all other inputs. The values stored within
		      are Interval dtype.
		
		    * sequence of scalars : returns a Series for Series `x` or a
		      Categorical for all other inputs. The values stored within
		      are whatever the type in the sequence is.
		
		    * False : returns an ndarray of integers.
		
		bins : numpy.ndarray or IntervalIndex.
		    The computed or specified bins. Only returned when `retbins=True`.
		    For scalar or sequence `bins`, this is an ndarray with the computed
		    bins. If set `duplicates=drop`, `bins` will drop non-unique bin. For
		    an IntervalIndex `bins`, this is equal to `bins`.
		
		See Also
		--------
		qcut : Discretize variable into equal-sized buckets based on rank
		    or based on sample quantiles.
		Categorical : Array type for storing data that come from a
		    fixed set of values.
		Series : One-dimensional array with axis labels (including time series).
		IntervalIndex : Immutable Index implementing an ordered, sliceable set.
		
		Notes
		-----
		Any NA values will be NA in the result. Out of bounds values will be NA in
		the resulting Series or Categorical object.
		
		Reference :ref:`the user guide <reshaping.tile.cut>` for more examples.
		
		Examples
		--------
		Discretize into three equal-sized bins.
		
		>>> pd.cut(np.array([1, 7, 5, 4, 6, 3]), 3)
		... # doctest: +ELLIPSIS
		[(0.994, 3.0], (5.0, 7.0], (3.0, 5.0], (3.0, 5.0], (5.0, 7.0], ...
		Categories (3, interval[float64, right]): [(0.994, 3.0] < (3.0, 5.0] ...
		
		>>> pd.cut(np.array([1, 7, 5, 4, 6, 3]), 3, retbins=True)
		... # doctest: +ELLIPSIS
		([(0.994, 3.0], (5.0, 7.0], (3.0, 5.0], (3.0, 5.0], (5.0, 7.0], ...
		Categories (3, interval[float64, right]): [(0.994, 3.0] < (3.0, 5.0] ...
		array([0.994, 3.   , 5.   , 7.   ]))
		
		Discovers the same bins, but assign them specific labels. Notice that
		the returned Categorical's categories are `labels` and is ordered.
		
		>>> pd.cut(np.array([1, 7, 5, 4, 6, 3]),
		...        3, labels=["bad", "medium", "good"])
		['bad', 'good', 'medium', 'medium', 'good', 'bad']
		Categories (3, object): ['bad' < 'medium' < 'good']
		
		``ordered=False`` will result in unordered categories when labels are passed.
		This parameter can be used to allow non-unique labels:
		
		>>> pd.cut(np.array([1, 7, 5, 4, 6, 3]), 3,
		...        labels=["B", "A", "B"], ordered=False)
		['B', 'B', 'A', 'A', 'B', 'B']
		Categories (2, object): ['A', 'B']
		
		``labels=False`` implies you just want the bins back.
		
		>>> pd.cut([0, 1, 1, 2], bins=4, labels=False)
		array([0, 1, 1, 3])
		
		Passing a Series as an input returns a Series with categorical dtype:
		
		>>> s = pd.Series(np.array([2, 4, 6, 8, 10]),
		...               index=['a', 'b', 'c', 'd', 'e'])
		>>> pd.cut(s, 3)
		... # doctest: +ELLIPSIS
		a    (1.992, 4.667]
		b    (1.992, 4.667]
		c    (4.667, 7.333]
		d     (7.333, 10.0]
		e     (7.333, 10.0]
		dtype: category
		Categories (3, interval[float64, right]): [(1.992, 4.667] < (4.667, ...
		
		Passing a Series as an input returns a Series with mapping value.
		It is used to map numerically to intervals based on bins.
		
		>>> s = pd.Series(np.array([2, 4, 6, 8, 10]),
		...               index=['a', 'b', 'c', 'd', 'e'])
		>>> pd.cut(s, [0, 2, 4, 6, 8, 10], labels=False, retbins=True, right=False)
		... # doctest: +ELLIPSIS
		(a    1.0
		 b    2.0
		 c    3.0
		 d    4.0
		 e    NaN
		 dtype: float64,
		 array([ 0,  2,  4,  6,  8, 10]))
		
		Use `drop` optional when bins is not unique
		
		>>> pd.cut(s, [0, 2, 4, 6, 10, 10], labels=False, retbins=True,
		...        right=False, duplicates='drop')
		... # doctest: +ELLIPSIS
		(a    1.0
		 b    2.0
		 c    3.0
		 d    3.0
		 e    NaN
		 dtype: float64,
		 array([ 0,  2,  4,  6, 10]))
		
		Passing an IntervalIndex for `bins` results in those categories exactly.
		Notice that values not covered by the IntervalIndex are set to NaN. 0
		is to the left of the first bin (which is closed on the right), and 1.5
		falls between two bins.
		
		>>> bins = pd.IntervalIndex.from_tuples([(0, 1), (2, 3), (4, 5)])
		>>> pd.cut([0, 0.5, 1.5, 2.5, 4.5], bins)
		[NaN, (0.0, 1.0], NaN, (2.0, 3.0], (4.0, 5.0]]
		Categories (3, interval[int64, right]): [(0, 1] < (2, 3] < (4, 5]]
	**/
	static public function cut(x:Dynamic, bins:Dynamic, ?right:Dynamic, ?labels:Dynamic, ?retbins:Dynamic, ?precision:Dynamic, ?include_lowest:Dynamic, ?duplicates:Dynamic, ?ordered:Dynamic):Dynamic;
	static public function ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Efficiently infer the type of a passed val, or list-like
		array of values. Return a string describing the type.
		
		Parameters
		----------
		value : scalar, list, ndarray, or pandas type
		skipna : bool, default True
		    Ignore NaN values when inferring the type.
		
		Returns
		-------
		str
		    Describing the common type of the input data.
		Results can include:
		
		- string
		- bytes
		- floating
		- integer
		- mixed-integer
		- mixed-integer-float
		- decimal
		- complex
		- categorical
		- boolean
		- datetime64
		- datetime
		- date
		- timedelta64
		- timedelta
		- time
		- period
		- mixed
		- unknown-array
		
		Raises
		------
		TypeError
		    If ndarray-like but cannot infer the dtype
		
		Notes
		-----
		- 'mixed' is the catchall for anything that is not otherwise
		  specialized
		- 'mixed-integer-float' are floats and integers
		- 'mixed-integer' are integers mixed with non-integers
		- 'unknown-array' is the catchall for something that *is* an array (has
		  a dtype attribute), but has a dtype unknown to pandas (e.g. external
		  extension array)
		
		Examples
		--------
		>>> import datetime
		>>> infer_dtype(['foo', 'bar'])
		'string'
		
		>>> infer_dtype(['a', np.nan, 'b'], skipna=True)
		'string'
		
		>>> infer_dtype(['a', np.nan, 'b'], skipna=False)
		'mixed'
		
		>>> infer_dtype([b'foo', b'bar'])
		'bytes'
		
		>>> infer_dtype([1, 2, 3])
		'integer'
		
		>>> infer_dtype([1, 2, 3.5])
		'mixed-integer-float'
		
		>>> infer_dtype([1.0, 2.0, 3.5])
		'floating'
		
		>>> infer_dtype(['a', 1])
		'mixed-integer'
		
		>>> infer_dtype([Decimal(1), Decimal(2.0)])
		'decimal'
		
		>>> infer_dtype([True, False])
		'boolean'
		
		>>> infer_dtype([True, False, np.nan])
		'boolean'
		
		>>> infer_dtype([pd.Timestamp('20130101')])
		'datetime'
		
		>>> infer_dtype([datetime.date(2013, 1, 1)])
		'date'
		
		>>> infer_dtype([np.datetime64('2013-01-01')])
		'datetime64'
		
		>>> infer_dtype([datetime.timedelta(0, 1, 1)])
		'timedelta'
		
		>>> infer_dtype(pd.Series(list('aabc')).astype('category'))
		'categorical'
	**/
	static public function infer_dtype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a boolean dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a boolean dtype.
		
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
		>>> is_bool_dtype(np.bool_)
		True
		>>> is_bool_dtype(np.array(['a', 'b']))
		False
		>>> is_bool_dtype(pd.Series([1, 2]))
		False
		>>> is_bool_dtype(np.array([True, False]))
		True
		>>> is_bool_dtype(pd.Categorical([True, False]))
		True
		>>> is_bool_dtype(pd.arrays.SparseArray([True, False]))
		True
	**/
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the Categorical dtype.
		
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
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the datetime64 dtype.
		
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
		Return True if given object is integer.
		
		Returns
		-------
		bool
	**/
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Check whether the provided array or dtype is of a numeric dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a numeric dtype.
		
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
		Return True if given object is scalar.
		
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
		    - Number.
		
		Returns
		-------
		bool
		    Return True if given object is scalar.
		
		Examples
		--------
		>>> import datetime
		>>> dt = datetime.datetime(2018, 10, 3)
		>>> pd.api.types.is_scalar(dt)
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
		Check whether an array-like or dtype is of the timedelta64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the timedelta64 dtype.
		
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
		Quantile-based discretization function.
		
		Discretize variable into equal-sized buckets based on rank or based
		on sample quantiles. For example 1000 values for 10 quantiles would
		produce a Categorical object indicating quantile membership for each data point.
		
		Parameters
		----------
		x : 1d ndarray or Series
		q : int or list-like of float
		    Number of quantiles. 10 for deciles, 4 for quartiles, etc. Alternately
		    array of quantiles, e.g. [0, .25, .5, .75, 1.] for quartiles.
		labels : array or False, default None
		    Used as labels for the resulting bins. Must be of the same length as
		    the resulting bins. If False, return only integer indicators of the
		    bins. If True, raises an error.
		retbins : bool, optional
		    Whether to return the (bins, labels) or not. Can be useful if bins
		    is given as a scalar.
		precision : int, optional
		    The precision at which to store and display the bins labels.
		duplicates : {default 'raise', 'drop'}, optional
		    If bin edges are not unique, raise ValueError or drop non-uniques.
		
		Returns
		-------
		out : Categorical or Series or array of integers if labels is False
		    The return type (Categorical or Series) depends on the input: a Series
		    of type category if input is a Series else Categorical. Bins are
		    represented as categories when categorical data is returned.
		bins : ndarray of floats
		    Returned only if `retbins` is True.
		
		Notes
		-----
		Out of bounds values will be NA in the resulting Categorical object
		
		Examples
		--------
		>>> pd.qcut(range(5), 4)
		... # doctest: +ELLIPSIS
		[(-0.001, 1.0], (-0.001, 1.0], (1.0, 2.0], (2.0, 3.0], (3.0, 4.0]]
		Categories (4, interval[float64, right]): [(-0.001, 1.0] < (1.0, 2.0] ...
		
		>>> pd.qcut(range(5), 3, labels=["good", "medium", "bad"])
		... # doctest: +SKIP
		[good, good, medium, bad, bad]
		Categories (3, object): [good < medium < bad]
		
		>>> pd.qcut(range(5), 4, labels=False)
		array([0, 0, 1, 2, 3])
	**/
	static public function qcut(x:Dynamic, q:Dynamic, ?labels:Dynamic, ?retbins:Dynamic, ?precision:Dynamic, ?duplicates:Dynamic):Dynamic;
	/**
		Convert argument to datetime.
		
		This function converts a scalar, array-like, :class:`Series` or
		:class:`DataFrame`/dict-like to a pandas datetime object.
		
		Parameters
		----------
		arg : int, float, str, datetime, list, tuple, 1-d array, Series, DataFrame/dict-like
		    The object to convert to a datetime. If a :class:`DataFrame` is provided, the
		    method expects minimally the following columns: :const:`"year"`,
		    :const:`"month"`, :const:`"day"`.
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If :const:`'raise'`, then invalid parsing will raise an exception.
		    - If :const:`'coerce'`, then invalid parsing will be set as :const:`NaT`.
		    - If :const:`'ignore'`, then invalid parsing will return the input.
		dayfirst : bool, default False
		    Specify a date parse order if `arg` is str or is list-like.
		    If :const:`True`, parses dates with the day first, e.g. :const:`"10/11/12"`
		    is parsed as :const:`2012-11-10`.
		
		    .. warning::
		
		        ``dayfirst=True`` is not strict, but will prefer to parse
		        with day first. If a delimited date string cannot be parsed in
		        accordance with the given `dayfirst` option, e.g.
		        ``to_datetime(['31-12-2021'])``, then a warning will be shown.
		
		yearfirst : bool, default False
		    Specify a date parse order if `arg` is str or is list-like.
		
		    - If :const:`True` parses dates with the year first, e.g.
		      :const:`"10/11/12"` is parsed as :const:`2010-11-12`.
		    - If both `dayfirst` and `yearfirst` are :const:`True`, `yearfirst` is
		      preceded (same as :mod:`dateutil`).
		
		    .. warning::
		
		        ``yearfirst=True`` is not strict, but will prefer to parse
		        with year first.
		
		utc : bool, default None
		    Control timezone-related parsing, localization and conversion.
		
		    - If :const:`True`, the function *always* returns a timezone-aware
		      UTC-localized :class:`Timestamp`, :class:`Series` or
		      :class:`DatetimeIndex`. To do this, timezone-naive inputs are
		      *localized* as UTC, while timezone-aware inputs are *converted* to UTC.
		
		    - If :const:`False` (default), inputs will not be coerced to UTC.
		      Timezone-naive inputs will remain naive, while timezone-aware ones
		      will keep their time offsets. Limitations exist for mixed
		      offsets (typically, daylight savings), see :ref:`Examples
		      <to_datetime_tz_examples>` section for details.
		
		    See also: pandas general documentation about `timezone conversion and
		    localization
		    <https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html
		    #time-zone-handling>`_.
		
		format : str, default None
		    The strftime to parse time, e.g. :const:`"%d/%m/%Y"`. Note that
		    :const:`"%f"` will parse all the way up to nanoseconds. See
		    `strftime documentation
		    <https://docs.python.org/3/library/datetime.html
		    #strftime-and-strptime-behavior>`_ for more information on choices.
		exact : bool, default True
		    Control how `format` is used:
		
		    - If :const:`True`, require an exact `format` match.
		    - If :const:`False`, allow the `format` to match anywhere in the target
		      string.
		
		unit : str, default 'ns'
		    The unit of the arg (D,s,ms,us,ns) denote the unit, which is an
		    integer or float number. This will be based off the origin.
		    Example, with ``unit='ms'`` and ``origin='unix'`` (the default), this
		    would calculate the number of milliseconds to the unix epoch start.
		infer_datetime_format : bool, default False
		    If :const:`True` and no `format` is given, attempt to infer the format
		    of the datetime strings based on the first non-NaN element,
		    and if it can be inferred, switch to a faster method of parsing them.
		    In some cases this can increase the parsing speed by ~5-10x.
		origin : scalar, default 'unix'
		    Define the reference date. The numeric values would be parsed as number
		    of units (defined by `unit`) since this reference date.
		
		    - If :const:`'unix'` (or POSIX) time; origin is set to 1970-01-01.
		    - If :const:`'julian'`, unit must be :const:`'D'`, and origin is set to
		      beginning of Julian Calendar. Julian day number :const:`0` is assigned
		      to the day starting at noon on January 1, 4713 BC.
		    - If Timestamp convertible, origin is set to Timestamp identified by
		      origin.
		cache : bool, default True
		    If :const:`True`, use a cache of unique, converted dates to apply the
		    datetime conversion. May produce significant speed-up when parsing
		    duplicate date strings, especially ones with timezone offsets. The cache
		    is only used when there are at least 50 values. The presence of
		    out-of-bounds values will render the cache unusable and may slow down
		    parsing.
		
		    .. versionchanged:: 0.25.0
		        changed default value from :const:`False` to :const:`True`.
		
		Returns
		-------
		datetime
		    If parsing succeeded.
		    Return type depends on input (types in parenthesis correspond to
		    fallback in case of unsuccessful timezone or out-of-range timestamp
		    parsing):
		
		    - scalar: :class:`Timestamp` (or :class:`datetime.datetime`)
		    - array-like: :class:`DatetimeIndex` (or :class:`Series` with
		      :class:`object` dtype containing :class:`datetime.datetime`)
		    - Series: :class:`Series` of :class:`datetime64` dtype (or
		      :class:`Series` of :class:`object` dtype containing
		      :class:`datetime.datetime`)
		    - DataFrame: :class:`Series` of :class:`datetime64` dtype (or
		      :class:`Series` of :class:`object` dtype containing
		      :class:`datetime.datetime`)
		
		Raises
		------
		ParserError
		    When parsing a date from string fails.
		ValueError
		    When another datetime conversion error happens. For example when one
		    of 'year', 'month', day' columns is missing in a :class:`DataFrame`, or
		    when a Timezone-aware :class:`datetime.datetime` is found in an array-like
		    of mixed time offsets, and ``utc=False``.
		
		See Also
		--------
		DataFrame.astype : Cast argument to a specified dtype.
		to_timedelta : Convert argument to timedelta.
		convert_dtypes : Convert dtypes.
		
		Notes
		-----
		
		Many input types are supported, and lead to different output types:
		
		- **scalars** can be int, float, str, datetime object (from stdlib :mod:`datetime`
		  module or :mod:`numpy`). They are converted to :class:`Timestamp` when
		  possible, otherwise they are converted to :class:`datetime.datetime`.
		  None/NaN/null scalars are converted to :const:`NaT`.
		
		- **array-like** can contain int, float, str, datetime objects. They are
		  converted to :class:`DatetimeIndex` when possible, otherwise they are
		  converted to :class:`Index` with :class:`object` dtype, containing
		  :class:`datetime.datetime`. None/NaN/null entries are converted to
		  :const:`NaT` in both cases.
		
		- **Series** are converted to :class:`Series` with :class:`datetime64`
		  dtype when possible, otherwise they are converted to :class:`Series` with
		  :class:`object` dtype, containing :class:`datetime.datetime`. None/NaN/null
		  entries are converted to :const:`NaT` in both cases.
		
		- **DataFrame/dict-like** are converted to :class:`Series` with
		  :class:`datetime64` dtype. For each row a datetime is created from assembling
		  the various dataframe columns. Column keys can be common abbreviations
		  like [‘year’, ‘month’, ‘day’, ‘minute’, ‘second’, ‘ms’, ‘us’, ‘ns’]) or
		  plurals of the same.
		
		The following causes are responsible for :class:`datetime.datetime` objects
		being returned (possibly inside an :class:`Index` or a :class:`Series` with
		:class:`object` dtype) instead of a proper pandas designated type
		(:class:`Timestamp`, :class:`DatetimeIndex` or :class:`Series`
		with :class:`datetime64` dtype):
		
		- when any input element is before :const:`Timestamp.min` or after
		  :const:`Timestamp.max`, see `timestamp limitations
		  <https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html
		  #timeseries-timestamp-limits>`_.
		
		- when ``utc=False`` (default) and the input is an array-like or
		  :class:`Series` containing mixed naive/aware datetime, or aware with mixed
		  time offsets. Note that this happens in the (quite frequent) situation when
		  the timezone has a daylight savings policy. In that case you may wish to
		  use ``utc=True``.
		
		Examples
		--------
		
		**Handling various input formats**
		
		Assembling a datetime from multiple columns of a :class:`DataFrame`. The keys
		can be common abbreviations like ['year', 'month', 'day', 'minute', 'second',
		'ms', 'us', 'ns']) or plurals of the same
		
		>>> df = pd.DataFrame({'year': [2015, 2016],
		...                    'month': [2, 3],
		...                    'day': [4, 5]})
		>>> pd.to_datetime(df)
		0   2015-02-04
		1   2016-03-05
		dtype: datetime64[ns]
		
		Passing ``infer_datetime_format=True`` can often-times speedup a parsing
		if its not an ISO8601 format exactly, but in a regular format.
		
		>>> s = pd.Series(['3/11/2000', '3/12/2000', '3/13/2000'] * 1000)
		>>> s.head()
		0    3/11/2000
		1    3/12/2000
		2    3/13/2000
		3    3/11/2000
		4    3/12/2000
		dtype: object
		
		>>> %timeit pd.to_datetime(s, infer_datetime_format=True)  # doctest: +SKIP
		100 loops, best of 3: 10.4 ms per loop
		
		>>> %timeit pd.to_datetime(s, infer_datetime_format=False)  # doctest: +SKIP
		1 loop, best of 3: 471 ms per loop
		
		Using a unix epoch time
		
		>>> pd.to_datetime(1490195805, unit='s')
		Timestamp('2017-03-22 15:16:45')
		>>> pd.to_datetime(1490195805433502912, unit='ns')
		Timestamp('2017-03-22 15:16:45.433502912')
		
		.. warning:: For float arg, precision rounding might happen. To prevent
		    unexpected behavior use a fixed-width exact type.
		
		Using a non-unix epoch origin
		
		>>> pd.to_datetime([1, 2, 3], unit='D',
		...                origin=pd.Timestamp('1960-01-01'))
		DatetimeIndex(['1960-01-02', '1960-01-03', '1960-01-04'],
		              dtype='datetime64[ns]', freq=None)
		
		**Non-convertible date/times**
		
		If a date does not meet the `timestamp limitations
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html
		#timeseries-timestamp-limits>`_, passing ``errors='ignore'``
		will return the original input instead of raising any exception.
		
		Passing ``errors='coerce'`` will force an out-of-bounds date to :const:`NaT`,
		in addition to forcing non-dates (or non-parseable dates) to :const:`NaT`.
		
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='ignore')
		datetime.datetime(1300, 1, 1, 0, 0)
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='coerce')
		NaT
		
		.. _to_datetime_tz_examples:
		
		**Timezones and time offsets**
		
		The default behaviour (``utc=False``) is as follows:
		
		- Timezone-naive inputs are converted to timezone-naive :class:`DatetimeIndex`:
		
		>>> pd.to_datetime(['2018-10-26 12:00', '2018-10-26 13:00:15'])
		DatetimeIndex(['2018-10-26 12:00:00', '2018-10-26 13:00:15'],
		              dtype='datetime64[ns]', freq=None)
		
		- Timezone-aware inputs *with constant time offset* are converted to
		  timezone-aware :class:`DatetimeIndex`:
		
		>>> pd.to_datetime(['2018-10-26 12:00 -0500', '2018-10-26 13:00 -0500'])
		DatetimeIndex(['2018-10-26 12:00:00-05:00', '2018-10-26 13:00:00-05:00'],
		              dtype='datetime64[ns, pytz.FixedOffset(-300)]', freq=None)
		
		- However, timezone-aware inputs *with mixed time offsets* (for example
		  issued from a timezone with daylight savings, such as Europe/Paris)
		  are **not successfully converted** to a :class:`DatetimeIndex`. Instead a
		  simple :class:`Index` containing :class:`datetime.datetime` objects is
		  returned:
		
		>>> pd.to_datetime(['2020-10-25 02:00 +0200', '2020-10-25 04:00 +0100'])
		Index([2020-10-25 02:00:00+02:00, 2020-10-25 04:00:00+01:00],
		      dtype='object')
		
		- A mix of timezone-aware and timezone-naive inputs is converted to
		  a timezone-aware :class:`DatetimeIndex` if the offsets of the timezone-aware
		  are constant:
		
		>>> from datetime import datetime
		>>> pd.to_datetime(["2020-01-01 01:00 -01:00", datetime(2020, 1, 1, 3, 0)])
		DatetimeIndex(['2020-01-01 01:00:00-01:00', '2020-01-01 02:00:00-01:00'],
		              dtype='datetime64[ns, pytz.FixedOffset(-60)]', freq=None)
		
		- Finally, mixing timezone-aware strings and :class:`datetime.datetime` always
		  raises an error, even if the elements all have the same time offset.
		
		>>> from datetime import datetime, timezone, timedelta
		>>> d = datetime(2020, 1, 1, 18, tzinfo=timezone(-timedelta(hours=1)))
		>>> pd.to_datetime(["2020-01-01 17:00 -0100", d])
		Traceback (most recent call last):
		    ...
		ValueError: Tz-aware datetime.datetime cannot be converted to datetime64
		            unless utc=True
		
		|
		
		Setting ``utc=True`` solves most of the above issues:
		
		- Timezone-naive inputs are *localized* as UTC
		
		>>> pd.to_datetime(['2018-10-26 12:00', '2018-10-26 13:00'], utc=True)
		DatetimeIndex(['2018-10-26 12:00:00+00:00', '2018-10-26 13:00:00+00:00'],
		              dtype='datetime64[ns, UTC]', freq=None)
		
		- Timezone-aware inputs are *converted* to UTC (the output represents the
		  exact same datetime, but viewed from the UTC time offset `+00:00`).
		
		>>> pd.to_datetime(['2018-10-26 12:00 -0530', '2018-10-26 12:00 -0500'],
		...                utc=True)
		DatetimeIndex(['2018-10-26 17:30:00+00:00', '2018-10-26 17:00:00+00:00'],
		              dtype='datetime64[ns, UTC]', freq=None)
		
		- Inputs can contain both naive and aware, string or datetime, the above
		  rules still apply
		
		>>> pd.to_datetime(['2018-10-26 12:00', '2018-10-26 12:00 -0530',
		...                datetime(2020, 1, 1, 18),
		...                datetime(2020, 1, 1, 18,
		...                tzinfo=timezone(-timedelta(hours=1)))],
		...                utc=True)
		DatetimeIndex(['2018-10-26 12:00:00+00:00', '2018-10-26 17:30:00+00:00',
		               '2020-01-01 18:00:00+00:00', '2020-01-01 19:00:00+00:00'],
		              dtype='datetime64[ns, UTC]', freq=None)
	**/
	static public function to_datetime(arg:Dynamic, ?errors:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?utc:Dynamic, ?format:Dynamic, ?exact:Dynamic, ?unit:Dynamic, ?infer_datetime_format:Dynamic, ?origin:Dynamic, ?cache:Dynamic):Dynamic;
	/**
		Convert argument to timedelta.
		
		Timedeltas are absolute differences in times, expressed in difference
		units (e.g. days, hours, minutes, seconds). This method converts
		an argument from a recognized timedelta format / value into
		a Timedelta type.
		
		Parameters
		----------
		arg : str, timedelta, list-like or Series
		    The data to be converted to timedelta.
		
		    .. deprecated:: 1.2
		        Strings with units 'M', 'Y' and 'y' do not represent
		        unambiguous timedelta values and will be removed in a future version
		
		unit : str, optional
		    Denotes the unit of the arg for numeric `arg`. Defaults to ``"ns"``.
		
		    Possible values:
		
		    * 'W'
		    * 'D' / 'days' / 'day'
		    * 'hours' / 'hour' / 'hr' / 'h'
		    * 'm' / 'minute' / 'min' / 'minutes' / 'T'
		    * 'S' / 'seconds' / 'sec' / 'second'
		    * 'ms' / 'milliseconds' / 'millisecond' / 'milli' / 'millis' / 'L'
		    * 'us' / 'microseconds' / 'microsecond' / 'micro' / 'micros' / 'U'
		    * 'ns' / 'nanoseconds' / 'nano' / 'nanos' / 'nanosecond' / 'N'
		
		    .. versionchanged:: 1.1.0
		
		       Must not be specified when `arg` context strings and
		       ``errors="raise"``.
		
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception.
		    - If 'coerce', then invalid parsing will be set as NaT.
		    - If 'ignore', then invalid parsing will return the input.
		
		Returns
		-------
		timedelta
		    If parsing succeeded.
		    Return type depends on input:
		
		    - list-like: TimedeltaIndex of timedelta64 dtype
		    - Series: Series of timedelta64 dtype
		    - scalar: Timedelta
		
		See Also
		--------
		DataFrame.astype : Cast argument to a specified dtype.
		to_datetime : Convert argument to datetime.
		convert_dtypes : Convert dtypes.
		
		Notes
		-----
		If the precision is higher than nanoseconds, the precision of the duration is
		truncated to nanoseconds for string inputs.
		
		Examples
		--------
		Parsing a single string to a Timedelta:
		
		>>> pd.to_timedelta('1 days 06:05:01.00003')
		Timedelta('1 days 06:05:01.000030')
		>>> pd.to_timedelta('15.5us')
		Timedelta('0 days 00:00:00.000015500')
		
		Parsing a list or array of strings:
		
		>>> pd.to_timedelta(['1 days 06:05:01.00003', '15.5us', 'nan'])
		TimedeltaIndex(['1 days 06:05:01.000030', '0 days 00:00:00.000015500', NaT],
		               dtype='timedelta64[ns]', freq=None)
		
		Converting numbers by specifying the `unit` keyword argument:
		
		>>> pd.to_timedelta(np.arange(5), unit='s')
		TimedeltaIndex(['0 days 00:00:00', '0 days 00:00:01', '0 days 00:00:02',
		                '0 days 00:00:03', '0 days 00:00:04'],
		               dtype='timedelta64[ns]', freq=None)
		>>> pd.to_timedelta(np.arange(5), unit='d')
		TimedeltaIndex(['0 days', '1 days', '2 days', '3 days', '4 days'],
		               dtype='timedelta64[ns]', freq=None)
	**/
	static public function to_timedelta(arg:Dynamic, ?unit:Dynamic, ?errors:Dynamic):Dynamic;
}