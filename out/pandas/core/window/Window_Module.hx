/* This file is generated, do not edit! */
package pandas.core.window;
@:pythonImport("pandas.core.window") extern class Window_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _bias_template : Dynamic;
	static public var _doc_template : Dynamic;
	static public function _ensure_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _flex_binary_moment(arg1:Dynamic, arg2:Dynamic, f:Dynamic, ?pairwise:Dynamic):Dynamic;
	static public function _get_center_of_mass(com:Dynamic, span:Dynamic, halflife:Dynamic, alpha:Dynamic):Dynamic;
	static public function _offset(window:Dynamic, center:Dynamic):Dynamic;
	static public var _pairwise_template : Dynamic;
	static public function _prep_binary(arg1:Dynamic, arg2:Dynamic):Dynamic;
	static public function _require_min_periods(p:Dynamic):Dynamic;
	static public var _shared_docs : Dynamic;
	static public function _use_window(minp:Dynamic, window:Dynamic):Dynamic;
	static public function _zsqrt(x:Dynamic):Dynamic;
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
	static public var division : Dynamic;
	/**
		Provides exponential weighted functions
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		com : float, optional
		    Specify decay in terms of center of mass,
		    :math:`\alpha = 1 / (1 + com),\text{ for } com \geq 0`
		span : float, optional
		    Specify decay in terms of span,
		    :math:`\alpha = 2 / (span + 1),\text{ for } span \geq 1`
		halflife : float, optional
		    Specify decay in terms of half-life,
		    :math:`\alpha = 1 - exp(log(0.5) / halflife),\text{ for } halflife > 0`
		alpha : float, optional
		    Specify smoothing factor :math:`\alpha` directly,
		    :math:`0 < \alpha \leq 1`
		
		    .. versionadded:: 0.18.0
		
		min_periods : int, default 0
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : None or string alias / date offset object, default=None (DEPRECATED)
		    Frequency to conform to before computing statistic
		adjust : boolean, default True
		    Divide by decaying adjustment factor in beginning periods to account
		    for imbalance in relative weightings (viewing EWMA as a moving average)
		ignore_na : boolean, default False
		    Ignore missing values when calculating weights;
		    specify True to reproduce pre-0.15.0 behavior
		
		Returns
		-------
		a Window sub-classed for the particular operation
		
		Examples
		--------
		
		>>> df = DataFrame({'B': [0, 1, 2, np.nan, 4]})
		     B
		0  0.0
		1  1.0
		2  2.0
		3  NaN
		4  4.0
		
		>>> df.ewm(com=0.5).mean()
		          B
		0  0.000000
		1  0.750000
		2  1.615385
		3  1.615385
		4  3.670213
		
		Notes
		-----
		Exactly one of center of mass, span, half-life, and alpha must be provided.
		Allowed values and relationship between the parameters are specified in the
		parameter descriptions above; see the link at the end of this section for
		a detailed explanation.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
		
		When adjust is True (default), weighted averages are calculated using
		weights (1-alpha)**(n-1), (1-alpha)**(n-2), ..., 1-alpha, 1.
		
		When adjust is False, weighted averages are calculated recursively as:
		   weighted_average[0] = arg[0];
		   weighted_average[i] = (1-alpha)*weighted_average[i-1] + alpha*arg[i].
		
		When ignore_na is False (default), weights are based on absolute positions.
		For example, the weights of x and y used in calculating the final weighted
		average of [x, None, y] are (1-alpha)**2 and 1 (if adjust is True), and
		(1-alpha)**2 and alpha (if adjust is False).
		
		When ignore_na is True (reproducing pre-0.15.0 behavior), weights are based
		on relative positions. For example, the weights of x and y used in
		calculating the final weighted average of [x, None, y] are 1-alpha and 1
		(if adjust is True), and 1-alpha and alpha (if adjust is False).
		
		More details can be found at
		http://pandas.pydata.org/pandas-docs/stable/computation.html#exponentially-weighted-windows
	**/
	static public function ewm(obj:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Provides expanding transformations.
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None) (DEPRECATED)
		    Frequency to conform the data to before computing the statistic.
		    Specified as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		axis : int or string, default 0
		
		Returns
		-------
		a Window sub-classed for the particular operation
		
		Examples
		--------
		
		>>> df = DataFrame({'B': [0, 1, 2, np.nan, 4]})
		     B
		0  0.0
		1  1.0
		2  2.0
		3  NaN
		4  4.0
		
		>>> df.expanding(2).sum()
		     B
		0  NaN
		1  1.0
		2  3.0
		3  3.0
		4  7.0
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function expanding(obj:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Provides rolling window calculcations.
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		window : int, or offset
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic. Each window will be a fixed size.
		
		    If its an offset then this will be the time period of each window. Each
		    window will be a variable sized based on the observations included in
		    the time-period. This is only valid for datetimelike indexes. This is
		    new in 0.19.0
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA). For a window that is specified by an offset,
		    this will default to 1.
		freq : string or DateOffset object, optional (default None) (DEPRECATED)
		    Frequency to conform the data to before computing the statistic.
		    Specified as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		win_type : string, default None
		    Provide a window type. See the notes below.
		on : string, optional
		    For a DataFrame, column on which to calculate
		    the rolling window, rather than the index
		closed : string, default None
		    Make the interval closed on the 'right', 'left', 'both' or
		    'neither' endpoints.
		    For offset-based windows, it defaults to 'right'.
		    For fixed windows, defaults to 'both'. Remaining cases not implemented
		    for fixed windows.
		
		    .. versionadded:: 0.20.0
		
		axis : int or string, default 0
		
		Returns
		-------
		a Window or Rolling sub-classed for the particular operation
		
		Examples
		--------
		
		>>> df = pd.DataFrame({'B': [0, 1, 2, np.nan, 4]})
		>>> df
		     B
		0  0.0
		1  1.0
		2  2.0
		3  NaN
		4  4.0
		
		Rolling sum with a window length of 2, using the 'triang'
		window type.
		
		>>> df.rolling(2, win_type='triang').sum()
		     B
		0  NaN
		1  1.0
		2  2.5
		3  NaN
		4  NaN
		
		Rolling sum with a window length of 2, min_periods defaults
		to the window length.
		
		>>> df.rolling(2).sum()
		     B
		0  NaN
		1  1.0
		2  3.0
		3  NaN
		4  NaN
		
		Same as above, but explicity set the min_periods
		
		>>> df.rolling(2, min_periods=1).sum()
		     B
		0  0.0
		1  1.0
		2  3.0
		3  2.0
		4  4.0
		
		A ragged (meaning not-a-regular frequency), time-indexed DataFrame
		
		>>> df = pd.DataFrame({'B': [0, 1, 2, np.nan, 4]},
		....:                 index = [pd.Timestamp('20130101 09:00:00'),
		....:                          pd.Timestamp('20130101 09:00:02'),
		....:                          pd.Timestamp('20130101 09:00:03'),
		....:                          pd.Timestamp('20130101 09:00:05'),
		....:                          pd.Timestamp('20130101 09:00:06')])
		
		>>> df
		                       B
		2013-01-01 09:00:00  0.0
		2013-01-01 09:00:02  1.0
		2013-01-01 09:00:03  2.0
		2013-01-01 09:00:05  NaN
		2013-01-01 09:00:06  4.0
		
		
		Contrasting to an integer rolling window, this will roll a variable
		length window corresponding to the time period.
		The default for min_periods is 1.
		
		>>> df.rolling('2s').sum()
		                       B
		2013-01-01 09:00:00  0.0
		2013-01-01 09:00:02  1.0
		2013-01-01 09:00:03  3.0
		2013-01-01 09:00:05  NaN
		2013-01-01 09:00:06  4.0
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
		
		To learn more about the offsets & frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
		
		The recognized win_types are:
		
		* ``boxcar``
		* ``triang``
		* ``blackman``
		* ``hamming``
		* ``bartlett``
		* ``parzen``
		* ``bohman``
		* ``blackmanharris``
		* ``nuttall``
		* ``barthann``
		* ``kaiser`` (needs beta)
		* ``gaussian`` (needs std)
		* ``general_gaussian`` (needs power, width)
		* ``slepian`` (needs width).
	**/
	static public function rolling(obj:Dynamic, ?win_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
}