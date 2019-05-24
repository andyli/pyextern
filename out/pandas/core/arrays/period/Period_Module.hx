/* This file is generated, do not edit! */
package pandas.core.arrays.period;
@:pythonImport("pandas.core.arrays.period") extern class Period_Module {
	static public var DIFFERENT_FREQ : Dynamic;
	static public var NaT : Dynamic;
	static public var _TD_DTYPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _delta_to_tick(delta:Dynamic):Dynamic;
	static public function _field_accessor(name:Dynamic, alias:Dynamic, ?docstring:Dynamic):Dynamic;
	static public function _get_ordinal_range(start:Dynamic, end:Dynamic, periods:Dynamic, freq:Dynamic, ?mult:Dynamic):Dynamic;
	static public function _make_field_arrays(?fields:python.VarArgs<Dynamic>):Dynamic;
	/**
		Wrap comparison operations to convert Period-like to PeriodDtype
	**/
	static public function _period_array_cmp(cls:Dynamic, op:Dynamic):Dynamic;
	/**
		Helper function to render a consistent error message when raising
		IncompatibleFrequency.
		
		Parameters
		----------
		left : PeriodArray
		right : DateOffset, Period, ndarray, or timedelta-like
		
		Raises
		------
		IncompatibleFrequency
	**/
	static public function _raise_on_incompatible(left:Dynamic, right:Dynamic):Dynamic;
	static public function _range_from_fields(?year:Dynamic, ?month:Dynamic, ?quarter:Dynamic, ?day:Dynamic, ?hour:Dynamic, ?minute:Dynamic, ?second:Dynamic, ?freq:Dynamic):Dynamic;
	static public function delta_to_nanoseconds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert an datetime-like array to values Period ordinals.
		
		Parameters
		----------
		data : Union[Series[datetime64[ns]], DatetimeIndex, ndarray[datetime64ns]]
		freq : Optional[Union[str, Tick]]
		    Must match the `freq` on the `data` if `data` is a DatetimeIndex
		    or Series.
		tz : Optional[tzinfo]
		
		Returns
		-------
		ordinals : ndarray[int]
		freq : Tick
		    The frequencey extracted from the Series or DatetimeIndex if that's
		    used.
	**/
	static public function dt64arr_to_periodarr(data:Dynamic, freq:Dynamic, ?tz:Dynamic):Dynamic;
	static public function ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_period_field_arr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var iNaT : Dynamic;
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
		vectorized version of isleapyear; NaT evaluates as False
	**/
	static public function isleapyear_arr(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Detect non-missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are valid (not missing, which is ``NaN`` in numeric
		arrays, ``None`` or ``NaN`` in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : array-like or object value
		    Object to check for *not* null or *non*-missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is valid.
		
		See Also
		--------
		isna : Boolean inverse of pandas.notna.
		Series.notna : Detect valid values in a Series.
		DataFrame.notna : Detect valid values in a DataFrame.
		Index.notna : Detect valid values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.notna('dog')
		True
		
		>>> pd.notna(np.nan)
		False
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.notna(array)
		array([[ True, False,  True],
		       [ True,  True, False]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                          "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.notna(index)
		array([ True,  True, False,  True])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.notna(df)
		      0      1     2
		0  True   True  True
		1  True  False  True
		
		>>> pd.notna(df[1])
		0     True
		1    False
		Name: 1, dtype: bool
	**/
	static public function notna(obj:Dynamic):Dynamic;
	/**
		Converts input into a pandas only dtype object or a numpy dtype object.
		
		Parameters
		----------
		dtype : object to be converted
		
		Returns
		-------
		np.dtype or a pandas dtype
		
		Raises
		------
		TypeError if not a dtype
	**/
	static public function pandas_dtype(dtype:Dynamic):Dynamic;
	/**
		Construct a new PeriodArray from a sequence of Period scalars.
		
		Parameters
		----------
		data : Sequence of Period objects
		    A sequence of Period objects. These are required to all have
		    the same ``freq.`` Missing values can be indicated by ``None``
		    or ``pandas.NaT``.
		freq : str, Tick, or Offset
		    The frequency of every element of the array. This can be specified
		    to avoid inferring the `freq` from `data`.
		copy : bool, default False
		    Whether to ensure a copy of the data is made.
		
		Returns
		-------
		PeriodArray
		
		See Also
		--------
		PeriodArray
		pandas.PeriodIndex
		
		Examples
		--------
		>>> period_array([pd.Period('2017', freq='A'),
		...               pd.Period('2018', freq='A')])
		<PeriodArray>
		['2017', '2018']
		Length: 2, dtype: period[A-DEC]
		
		>>> period_array([pd.Period('2017', freq='A'),
		...               pd.Period('2018', freq='A'),
		...               pd.NaT])
		<PeriodArray>
		['2017', '2018', 'NaT']
		Length: 3, dtype: period[A-DEC]
		
		Integers that look like years are handled
		
		>>> period_array([2000, 2001, 2002], freq='D')
		['2000-01-01', '2001-01-01', '2002-01-01']
		Length: 3, dtype: period[D]
		
		Datetime-like strings may also be passed
		
		>>> period_array(['2000-Q1', '2000-Q2', '2000-Q3', '2000-Q4'], freq='Q')
		<PeriodArray>
		['2000Q1', '2000Q2', '2000Q3', '2000Q4']
		Length: 4, dtype: period[Q-DEC]
	**/
	static public function period_array(data:Dynamic, ?freq:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Convert int64-array of period ordinals from one frequency to another, and
		if upsampling, choose to use start ('S') or end ('E') of period.
	**/
	static public function period_asfreq_arr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		If both a dtype and a freq are available, ensure they match.  If only
		dtype is available, extract the implied freq.
		
		Parameters
		----------
		dtype : dtype
		freq : DateOffset or None
		
		Returns
		-------
		freq : DateOffset
		
		Raises
		------
		ValueError : non-period dtype
		IncompatibleFrequency : mismatch between dtype and freq
	**/
	static public function validate_dtype_freq(dtype:Dynamic, freq:Dynamic):pandas.DateOffset;
}