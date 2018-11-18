/* This file is generated, do not edit! */
package pandas.core.reshape.tile;
@:pythonImport("pandas.core.reshape.tile") extern class Tile_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _bins_to_cuts(x:Dynamic, bins:Dynamic, ?right:Dynamic, ?labels:Dynamic, ?precision:Dynamic, ?include_lowest:Dynamic, ?dtype:Dynamic, ?duplicates:Dynamic):Dynamic;
	/**
		if the passed data is of datetime/timedelta type,
		this method converts it to numeric so that cut method can
		handle it
	**/
	static public function _coerce_to_type(x:Dynamic):Dynamic;
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
	static public function _ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function _postprocess_for_cut(fac:Dynamic, bins:Dynamic, retbins:Dynamic, x_is_series:Dynamic, series_index:Dynamic, name:Dynamic):Dynamic;
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
	static public function _trim_zeros(x:Dynamic):Dynamic;
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
		bins : int, sequence of scalars, or pandas.IntervalIndex
		    The criteria to bin by.
		
		    * int : Defines the number of equal-width bins in the range of `x`. The
		      range of `x` is extended by .1% on each side to include the minimum
		      and maximum values of `x`.
		    * sequence of scalars : Defines the bin edges allowing for non-uniform
		      width. No extension of the range of `x` is done.
		    * IntervalIndex : Defines the exact bins to be used.
		
		right : bool, default True
		    Indicates whether `bins` includes the rightmost edge or not. If
		    ``right == True`` (the default), then the `bins` ``[1, 2, 3, 4]``
		    indicate (1,2], (2,3], (3,4]. This argument is ignored when
		    `bins` is an IntervalIndex.
		labels : array or bool, optional
		    Specifies the labels for the returned bins. Must be the same length as
		    the resulting bins. If False, returns only integer indicators of the
		    bins. This affects the type of the output container (see below).
		    This argument is ignored when `bins` is an IntervalIndex.
		retbins : bool, default False
		    Whether to return the bins or not. Useful when bins is provided
		    as a scalar.
		precision : int, default 3
		    The precision at which to store and display the bins labels.
		include_lowest : bool, default False
		    Whether the first interval should be left-inclusive or not.
		duplicates : {default 'raise', 'drop'}, optional
		    If bin edges are not unique, raise ValueError or drop non-uniques.
		
		    .. versionadded:: 0.23.0
		
		Returns
		-------
		out : pandas.Categorical, Series, or ndarray
		    An array-like object representing the respective bin for each value
		    of `x`. The type depends on the value of `labels`.
		
		    * True (default) : returns a Series for Series `x` or a
		      pandas.Categorical for all other inputs. The values stored within
		      are Interval dtype.
		
		    * sequence of scalars : returns a Series for Series `x` or a
		      pandas.Categorical for all other inputs. The values stored within
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
		pandas.Categorical : Array type for storing data that come from a
		    fixed set of values.
		Series : One-dimensional array with axis labels (including time series).
		pandas.IntervalIndex : Immutable Index implementing an ordered,
		    sliceable set.
		
		Notes
		-----
		Any NA values will be NA in the result. Out of bounds values will be NA in
		the resulting Series or pandas.Categorical object.
		
		Examples
		--------
		Discretize into three equal-sized bins.
		
		>>> pd.cut(np.array([1, 7, 5, 4, 6, 3]), 3)
		... # doctest: +ELLIPSIS
		[(0.994, 3.0], (5.0, 7.0], (3.0, 5.0], (3.0, 5.0], (5.0, 7.0], ...
		Categories (3, interval[float64]): [(0.994, 3.0] < (3.0, 5.0] ...
		
		>>> pd.cut(np.array([1, 7, 5, 4, 6, 3]), 3, retbins=True)
		... # doctest: +ELLIPSIS
		([(0.994, 3.0], (5.0, 7.0], (3.0, 5.0], (3.0, 5.0], (5.0, 7.0], ...
		Categories (3, interval[float64]): [(0.994, 3.0] < (3.0, 5.0] ...
		array([0.994, 3.   , 5.   , 7.   ]))
		
		Discovers the same bins, but assign them specific labels. Notice that
		the returned Categorical's categories are `labels` and is ordered.
		
		>>> pd.cut(np.array([1, 7, 5, 4, 6, 3]),
		...        3, labels=["bad", "medium", "good"])
		[bad, good, medium, medium, good, bad]
		Categories (3, object): [bad < medium < good]
		
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
		Categories (3, interval[float64]): [(1.992, 4.667] < (4.667, ...
		
		Passing a Series as an input returns a Series with mapping value.
		It is used to map numerically to intervals based on bins.
		
		>>> s = pd.Series(np.array([2, 4, 6, 8, 10]),
		...               index=['a', 'b', 'c', 'd', 'e'])
		>>> pd.cut(s, [0, 2, 4, 6, 8, 10], labels=False, retbins=True, right=False)
		... # doctest: +ELLIPSIS
		(a    0.0
		 b    1.0
		 c    2.0
		 d    3.0
		 e    4.0
		 dtype: float64, array([0, 2, 4, 6, 8]))
		
		Use `drop` optional when bins is not unique
		
		>>> pd.cut(s, [0, 2, 4, 6, 10, 10], labels=False, retbins=True,
		...    right=False, duplicates='drop')
		... # doctest: +ELLIPSIS
		(a    0.0
		 b    1.0
		 c    2.0
		 d    3.0
		 e    3.0
		 dtype: float64, array([0, 2, 4, 6, 8]))
		
		Passing an IntervalIndex for `bins` results in those categories exactly.
		Notice that values not covered by the IntervalIndex are set to NaN. 0
		is to the left of the first bin (which is closed on the right), and 1.5
		falls between two bins.
		
		>>> bins = pd.IntervalIndex.from_tuples([(0, 1), (2, 3), (4, 5)])
		>>> pd.cut([0, 0.5, 1.5, 2.5, 4.5], bins)
		[NaN, (0, 1], NaN, (2, 3], (4, 5]]
		Categories (3, interval[int64]): [(0, 1] < (2, 3] < (4, 5]]
	**/
	static public function cut(x:Dynamic, bins:Dynamic, ?right:Dynamic, ?labels:Dynamic, ?retbins:Dynamic, ?precision:Dynamic, ?include_lowest:Dynamic, ?duplicates:Dynamic):Dynamic;
	/**
		Efficiently infer the type of a passed val, or list-like
		array of values. Return a string describing the type.
		
		Parameters
		----------
		value : scalar, list, ndarray, or pandas type
		skipna : bool, default False
		    Ignore NaN values when inferring the type. The default of ``False``
		    will be deprecated in a later version of pandas.
		
		    .. versionadded:: 0.21.0
		
		Returns
		-------
		string describing the common type of the input data.
		Results can include:
		
		- string
		- unicode
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
		
		Raises
		------
		TypeError if ndarray-like but cannot infer the dtype
		
		Notes
		-----
		- 'mixed' is the catchall for anything that is not otherwise
		  specialized
		- 'mixed-integer-float' are floats and integers
		- 'mixed-integer' are integers mixed with non-integers
		
		Examples
		--------
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
		'mixed'
		
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
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		- DateOffset
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Detect missing values for an array-like object.
		
		This function takes a scalar or array-like object and indictates
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
		notna : boolean inverse of pandas.isna.
		Series.isna : Detetct missing values in a Series.
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
		Quantile-based discretization function. Discretize variable into
		equal-sized buckets based on rank or based on sample quantiles. For example
		1000 values for 10 quantiles would produce a Categorical object indicating
		quantile membership for each data point.
		
		Parameters
		----------
		x : 1d ndarray or Series
		q : integer or array of quantiles
		    Number of quantiles. 10 for deciles, 4 for quartiles, etc. Alternately
		    array of quantiles, e.g. [0, .25, .5, .75, 1.] for quartiles
		labels : array or boolean, default None
		    Used as labels for the resulting bins. Must be of the same length as
		    the resulting bins. If False, return only integer indicators of the
		    bins.
		retbins : bool, optional
		    Whether to return the (bins, labels) or not. Can be useful if bins
		    is given as a scalar.
		precision : int, optional
		    The precision at which to store and display the bins labels
		duplicates : {default 'raise', 'drop'}, optional
		    If bin edges are not unique, raise ValueError or drop non-uniques.
		
		    .. versionadded:: 0.20.0
		
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
		Categories (4, interval[float64]): [(-0.001, 1.0] < (1.0, 2.0] ...
		
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
		
		Parameters
		----------
		arg : integer, float, string, datetime, list, tuple, 1-d array, Series
		
		    .. versionadded:: 0.18.1
		
		       or DataFrame/dict-like
		
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as NaT
		    - If 'ignore', then invalid parsing will return the input
		dayfirst : boolean, default False
		    Specify a date parse order if `arg` is str or its list-likes.
		    If True, parses dates with the day first, eg 10/11/12 is parsed as
		    2012-11-10.
		    Warning: dayfirst=True is not strict, but will prefer to parse
		    with day first (this is a known bug, based on dateutil behavior).
		yearfirst : boolean, default False
		    Specify a date parse order if `arg` is str or its list-likes.
		
		    - If True parses dates with the year first, eg 10/11/12 is parsed as
		      2010-11-12.
		    - If both dayfirst and yearfirst are True, yearfirst is preceded (same
		      as dateutil).
		
		    Warning: yearfirst=True is not strict, but will prefer to parse
		    with year first (this is a known bug, based on dateutil beahavior).
		
		    .. versionadded:: 0.16.1
		
		utc : boolean, default None
		    Return UTC DatetimeIndex if True (converting any tz-aware
		    datetime.datetime objects as well).
		box : boolean, default True
		
		    - If True returns a DatetimeIndex
		    - If False returns ndarray of values.
		format : string, default None
		    strftime to parse time, eg "%d/%m/%Y", note that "%f" will parse
		    all the way up to nanoseconds.
		exact : boolean, True by default
		
		    - If True, require an exact format match.
		    - If False, allow the format to match anywhere in the target string.
		
		unit : string, default 'ns'
		    unit of the arg (D,s,ms,us,ns) denote the unit, which is an
		    integer or float number. This will be based off the origin.
		    Example, with unit='ms' and origin='unix' (the default), this
		    would calculate the number of milliseconds to the unix epoch start.
		infer_datetime_format : boolean, default False
		    If True and no `format` is given, attempt to infer the format of the
		    datetime strings, and if it can be inferred, switch to a faster
		    method of parsing them. In some cases this can increase the parsing
		    speed by ~5-10x.
		origin : scalar, default is 'unix'
		    Define the reference date. The numeric values would be parsed as number
		    of units (defined by `unit`) since this reference date.
		
		    - If 'unix' (or POSIX) time; origin is set to 1970-01-01.
		    - If 'julian', unit must be 'D', and origin is set to beginning of
		      Julian Calendar. Julian day number 0 is assigned to the day starting
		      at noon on January 1, 4713 BC.
		    - If Timestamp convertible, origin is set to Timestamp identified by
		      origin.
		
		    .. versionadded:: 0.20.0
		cache : boolean, default False
		    If True, use a cache of unique, converted dates to apply the datetime
		    conversion. May produce sigificant speed-up when parsing duplicate date
		    strings, especially ones with timezone offsets.
		
		    .. versionadded:: 0.23.0
		
		Returns
		-------
		ret : datetime if parsing succeeded.
		    Return type depends on input:
		
		    - list-like: DatetimeIndex
		    - Series: Series of datetime64 dtype
		    - scalar: Timestamp
		
		    In case when it is not possible to return designated types (e.g. when
		    any element of input is before Timestamp.min or after Timestamp.max)
		    return will have datetime.datetime type (or corresponding
		    array/Series).
		
		Examples
		--------
		Assembling a datetime from multiple columns of a DataFrame. The keys can be
		common abbreviations like ['year', 'month', 'day', 'minute', 'second',
		'ms', 'us', 'ns']) or plurals of the same
		
		>>> df = pd.DataFrame({'year': [2015, 2016],
		                       'month': [2, 3],
		                       'day': [4, 5]})
		>>> pd.to_datetime(df)
		0   2015-02-04
		1   2016-03-05
		dtype: datetime64[ns]
		
		If a date does not meet the `timestamp limitations
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html
		#timeseries-timestamp-limits>`_, passing errors='ignore'
		will return the original input instead of raising any exception.
		
		Passing errors='coerce' will force an out-of-bounds date to NaT,
		in addition to forcing non-dates (or non-parseable dates) to NaT.
		
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='ignore')
		datetime.datetime(1300, 1, 1, 0, 0)
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='coerce')
		NaT
		
		Passing infer_datetime_format=True can often-times speedup a parsing
		if its not an ISO8601 format exactly, but in a regular format.
		
		>>> s = pd.Series(['3/11/2000', '3/12/2000', '3/13/2000']*1000)
		
		>>> s.head()
		0    3/11/2000
		1    3/12/2000
		2    3/13/2000
		3    3/11/2000
		4    3/12/2000
		dtype: object
		
		>>> %timeit pd.to_datetime(s,infer_datetime_format=True)
		100 loops, best of 3: 10.4 ms per loop
		
		>>> %timeit pd.to_datetime(s,infer_datetime_format=False)
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
		                   origin=pd.Timestamp('1960-01-01'))
		0    1960-01-02
		1    1960-01-03
		2    1960-01-04
		
		See also
		--------
		pandas.DataFrame.astype : Cast argument to a specified dtype.
		pandas.to_timedelta : Convert argument to timedelta.
	**/
	static public function to_datetime(arg:Dynamic, ?errors:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?utc:Dynamic, ?box:Dynamic, ?format:Dynamic, ?exact:Dynamic, ?unit:Dynamic, ?infer_datetime_format:Dynamic, ?origin:Dynamic, ?cache:Dynamic):Dynamic;
	/**
		Convert argument to timedelta
		
		Parameters
		----------
		arg : string, timedelta, list, tuple, 1-d array, or Series
		unit : unit of the arg (D,h,m,s,ms,us,ns) denote the unit, which is an
		    integer/float number
		box : boolean, default True
		    - If True returns a Timedelta/TimedeltaIndex of the results
		    - if False returns a np.timedelta64 or ndarray of values of dtype
		      timedelta64[ns]
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as NaT
		    - If 'ignore', then invalid parsing will return the input
		
		Returns
		-------
		ret : timedelta64/arrays of timedelta64 if parsing succeeded
		
		Examples
		--------
		
		Parsing a single string to a Timedelta:
		
		>>> pd.to_timedelta('1 days 06:05:01.00003')
		Timedelta('1 days 06:05:01.000030')
		>>> pd.to_timedelta('15.5us')
		Timedelta('0 days 00:00:00.000015')
		
		Parsing a list or array of strings:
		
		>>> pd.to_timedelta(['1 days 06:05:01.00003', '15.5us', 'nan'])
		TimedeltaIndex(['1 days 06:05:01.000030', '0 days 00:00:00.000015', NaT],
		               dtype='timedelta64[ns]', freq=None)
		
		Converting numbers by specifying the `unit` keyword argument:
		
		>>> pd.to_timedelta(np.arange(5), unit='s')
		TimedeltaIndex(['00:00:00', '00:00:01', '00:00:02',
		                '00:00:03', '00:00:04'],
		               dtype='timedelta64[ns]', freq=None)
		>>> pd.to_timedelta(np.arange(5), unit='d')
		TimedeltaIndex(['0 days', '1 days', '2 days', '3 days', '4 days'],
		               dtype='timedelta64[ns]', freq=None)
		
		See also
		--------
		pandas.DataFrame.astype : Cast argument to a specified dtype.
		pandas.to_datetime : Convert argument to datetime.
	**/
	static public function to_timedelta(arg:Dynamic, ?unit:Dynamic, ?box:Dynamic, ?errors:Dynamic):Dynamic;
}