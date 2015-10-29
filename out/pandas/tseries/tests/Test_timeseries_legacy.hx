/* This file is generated, do not edit! */
package pandas.tseries.tests;
@:pythonImport("pandas.tseries.tests.test_timeseries_legacy") extern class Test_timeseries_legacy {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check that left and right objects are almost equal.
		
		Parameters
		----------
		a : object
		b : object
		check_less_precise : bool, default False
		    Specify comparison precision.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		obj : str, default None
		    Specify object name being compared, internally used to show appropriate
		    assertion message
		lobj : str, default None
		    Specify left object name being compared, internally used to show
		    appropriate assertion message
		robj : str, default None
		    Specify right object name being compared, internally used to show
		    appropriate assertion message
	**/
	static public function assert_almost_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check that left and right Series are equal.
		
		Parameters
		----------
		left : Series
		right : Series
		check_dtype : bool, default True
		    Whether to check the Series dtype is identical.
		check_index_type : bool, default False
		    Whether to check the Index class, dtype and inferred_type are identical.
		check_series_type : bool, default False
		    Whether to check the Series class is identical.
		check_less_precise : bool, default False
		    Specify comparison precision. Only used when check_exact is False.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		check_exact : bool, default False
		    Whether to compare number exactly.
		check_names : bool, default True
		    Whether to check the Series and Index names attribute.
		check_dateteimelike_compat : bool, default False
		    Compare datetime-like which is comparable ignoring dtype.
		obj : str, default 'Series'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_series_equal(left:Dynamic, right:Dynamic, ?check_dtype:Dynamic, ?check_index_type:Dynamic, ?check_series_type:Dynamic, ?check_less_precise:Dynamic, ?check_names:Dynamic, ?check_exact:Dynamic, ?check_datetimelike_compat:Dynamic, ?obj:Dynamic):Dynamic;
	/**
		Return a fixed frequency datetime index, with business day as the default
		frequency
		
		Parameters
		----------
		start : string or datetime-like, default None
		    Left bound for generating dates
		end : string or datetime-like, default None
		    Right bound for generating dates
		periods : integer or None, default None
		    If None, must specify start and end
		freq : string or DateOffset, default 'B' (business daily)
		    Frequency strings can have multiples, e.g. '5H'
		tz : string or None
		    Time zone name for returning localized DatetimeIndex, for example
		    Asia/Beijing
		normalize : bool, default False
		    Normalize start/end dates to midnight before generating date range
		name : str, default None
		    Name for the resulting index
		closed : string or None, default None
		    Make the interval closed with respect to the given frequency to
		    the 'left', 'right', or both sides (None)
		
		Notes
		-----
		2 of start, end, or periods must be specified
		
		Returns
		-------
		rng : DatetimeIndex
	**/
	static public function bdate_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?closed:Dynamic):Dynamic;
	/**
		Return a fixed frequency datetime index, with day (calendar) as the default
		frequency
		
		Parameters
		----------
		start : string or datetime-like, default None
		    Left bound for generating dates
		end : string or datetime-like, default None
		    Right bound for generating dates
		periods : integer or None, default None
		    If None, must specify start and end
		freq : string or DateOffset, default 'D' (calendar daily)
		    Frequency strings can have multiples, e.g. '5H'
		tz : string or None
		    Time zone name for returning localized DatetimeIndex, for example
		Asia/Hong_Kong
		normalize : bool, default False
		    Normalize start/end dates to midnight before generating date range
		name : str, default None
		    Name of the resulting index
		closed : string or None, default None
		    Make the interval closed with respect to the given frequency to
		    the 'left', 'right', or both sides (None)
		
		Notes
		-----
		2 of start, end, or periods must be specified
		
		Returns
		-------
		rng : DatetimeIndex
	**/
	static public function date_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?closed:Dynamic):Dynamic;
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
	static public function lmap(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function lrange(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		rand(d0, d1, ..., dn)
		
		Random values in a given shape.
		
		Create an array of the given shape and propagate it with
		random samples from a uniform distribution
		over ``[0, 1)``.
		
		Parameters
		----------
		d0, d1, ..., dn : int, optional
		    The dimensions of the returned array, should all be positive.
		    If no argument is given a single Python float is returned.
		
		Returns
		-------
		out : ndarray, shape ``(d0, d1, ..., dn)``
		    Random values.
		
		See Also
		--------
		random
		
		Notes
		-----
		This is a convenience function. If you want an interface that
		takes a shape-tuple as the first argument, refer to
		np.random.random_sample .
		
		Examples
		--------
		>>> np.random.rand(3,2)
		array([[ 0.14022471,  0.96360618],  #random
		       [ 0.37601032,  0.25528411],  #random
		       [ 0.49313049,  0.94909878]]) #random
	**/
	static public function rand(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		randn(d0, d1, ..., dn)
		
		Return a sample (or samples) from the "standard normal" distribution.
		
		If positive, int_like or int-convertible arguments are provided,
		`randn` generates an array of shape ``(d0, d1, ..., dn)``, filled
		with random floats sampled from a univariate "normal" (Gaussian)
		distribution of mean 0 and variance 1 (if any of the :math:`d_i` are
		floats, they are first converted to integers by truncation). A single
		float randomly sampled from the distribution is returned if no
		argument is provided.
		
		This is a convenience function.  If you want an interface that takes a
		tuple as the first argument, use `numpy.random.standard_normal` instead.
		
		Parameters
		----------
		d0, d1, ..., dn : int, optional
		    The dimensions of the returned array, should be all positive.
		    If no argument is given a single Python float is returned.
		
		Returns
		-------
		Z : ndarray or float
		    A ``(d0, d1, ..., dn)``-shaped array of floating-point samples from
		    the standard normal distribution, or a single such float if
		    no parameters were supplied.
		
		See Also
		--------
		random.standard_normal : Similar, but takes a tuple as its argument.
		
		Notes
		-----
		For random samples from :math:`N(\mu, \sigma^2)`, use:
		
		``sigma * np.random.randn(...) + mu``
		
		Examples
		--------
		>>> np.random.randn()
		2.1923875335537315 #random
		
		Two-by-four array of samples from N(3, 6.25):
		
		>>> 2.5 * np.random.randn(2, 4) + 3
		array([[-4.49401501,  4.00950034, -1.81814867,  7.29718677],  #random
		       [ 0.39924804,  4.68456316,  4.99394529,  4.84057254]]) #random
	**/
	static public function randn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Load pickled pandas object (or any other pickled object) from the specified
		file path
		
		Warning: Loading pickled data received from untrusted sources can be
		unsafe. See: http://docs.python.org/2.7/library/pickle.html
		
		Parameters
		----------
		path : string
		    File path
		
		Returns
		-------
		unpickled : type of object stored in file
	**/
	static public function read_pickle(path:Dynamic):Dynamic;
	/**
		Convert argument to datetime.
		
		Parameters
		----------
		arg : string, datetime, array of strings (with possible NAs)
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as NaT
		    - If 'ignore', then invalid parsing will return the input
		dayfirst : boolean, default False
		    Specify a date parse order if `arg` is str or its list-likes.
		    If True, parses dates with the day first, eg 10/11/12 is parsed as 2012-11-10.
		    Warning: dayfirst=True is not strict, but will prefer to parse
		    with day first (this is a known bug, based on dateutil behavior).
		yearfirst : boolean, default False
		    Specify a date parse order if `arg` is str or its list-likes.
		    - If True parses dates with the year first, eg 10/11/12 is parsed as 2010-11-12.
		    - If both dayfirst and yearfirst are True, yearfirst is preceded (same as dateutil).
		    Warning: yearfirst=True is not strict, but will prefer to parse
		    with year first (this is a known bug, based on dateutil beahavior).
		
		    .. versionadded: 0.16.1
		
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
		unit : unit of the arg (D,s,ms,us,ns) denote the unit in epoch
		    (e.g. a unix timestamp), which is an integer/float number.
		infer_datetime_format : boolean, default False
		    If no `format` is given, try to infer the format based on the first
		    datetime string. Provides a large speed-up in many cases.
		
		Returns
		-------
		ret : datetime if parsing succeeded.
		    Return type depends on input:
		
		    - list-like: DatetimeIndex
		    - Series: Series of datetime64 dtype
		    - scalar: Timestamp
		
		    In case when it is not possible to return designated types (e.g. when
		    any element of input is before Timestamp.min or after Timestamp.max)
		    return will have datetime.datetime type (or correspoding array/Series).
		
		Examples
		--------
		Take separate series and convert to datetime
		
		>>> import pandas as pd
		>>> i = pd.date_range('20000101',periods=100)
		>>> df = pd.DataFrame(dict(year = i.year, month = i.month, day = i.day))
		>>> pd.to_datetime(df.year*10000 + df.month*100 + df.day, format='%Y%m%d')
		0    2000-01-01
		1    2000-01-02
		...
		98   2000-04-08
		99   2000-04-09
		Length: 100, dtype: datetime64[ns]
		
		Or from strings
		
		>>> df = df.astype(str)
		>>> pd.to_datetime(df.day + df.month + df.year, format="%d%m%Y")
		0    2000-01-01
		1    2000-01-02
		...
		98   2000-04-08
		99   2000-04-09
		Length: 100, dtype: datetime64[ns]
		
		Date that does not meet timestamp limitations:
		
		>>> pd.to_datetime('13000101', format='%Y%m%d')
		datetime.datetime(1300, 1, 1, 0, 0)
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='coerce')
		NaT
	**/
	static public function to_datetime(arg:Dynamic, ?errors:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?utc:Dynamic, ?box:Dynamic, ?format:Dynamic, ?exact:Dynamic, ?coerce:Dynamic, ?unit:Dynamic, ?infer_datetime_format:Dynamic):Dynamic;
}