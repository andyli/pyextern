/* This file is generated, do not edit! */
package pandas.tests;
@:pythonImport("pandas.tests.test_series") extern class Test_series {
	static public var JOIN_TYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _np_version_under1p8 : Dynamic;
	static public var _ts : Dynamic;
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
		Check that left and right DataFrame are equal.
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		check_dtype : bool, default True
		    Whether to check the DataFrame dtype is identical.
		check_index_type : bool, default False
		    Whether to check the Index class, dtype and inferred_type are identical.
		check_column_type : bool, default False
		    Whether to check the columns class, dtype and inferred_type are identical.
		check_frame_type : bool, default False
		    Whether to check the DataFrame class is identical.
		check_less_precise : bool, default False
		    Specify comparison precision. Only used when check_exact is False.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		check_names : bool, default True
		    Whether to check the Index names attribute.
		by_blocks : bool, default False
		    Specify how to compare internal data. If False, compare by columns.
		    If True, compare by blocks.
		check_exact : bool, default False
		    Whether to compare number exactly.
		check_dateteimelike_compat : bool, default False
		    Compare datetime-like which is comparable ignoring dtype.
		obj : str, default 'DataFrame'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_frame_equal(left:Dynamic, right:Dynamic, ?check_dtype:Dynamic, ?check_index_type:Dynamic, ?check_column_type:Dynamic, ?check_frame_type:Dynamic, ?check_less_precise:Dynamic, ?check_names:Dynamic, ?by_blocks:Dynamic, ?check_exact:Dynamic, ?check_datetimelike_compat:Dynamic, ?obj:Dynamic):Dynamic;
	/**
		Check that left and right Index are equal.
		
		Parameters
		----------
		left : Index
		right : Index
		exact : bool, default False
		    Whether to check the Index class, dtype and inferred_type are identical.
		check_names : bool, default True
		    Whether to check the names attribute.
		check_less_precise : bool, default False
		    Specify comparison precision. Only used when check_exact is False.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		check_exact : bool, default True
		    Whether to compare number exactly.
		obj : str, default 'Index'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_index_equal(left:Dynamic, right:Dynamic, ?exact:Dynamic, ?check_names:Dynamic, ?check_less_precise:Dynamic, ?check_exact:Dynamic, ?obj:Dynamic):Dynamic;
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
		Gets a temporary path and agrees to remove on close.
		
		Parameters
		----------
		filename : str (optional)
		    if None, creates a temporary file which is then removed when out of
		    scope. if passed, creates temporary file with filename as ending.
		return_filelike : bool (default False)
		    if True, returns a file-like which is *always* cleaned. Necessary for
		    savefig and other functions which want to append extensions.
	**/
	static public function ensure_clean(?filename:Dynamic, ?return_filelike:Dynamic):Dynamic;
	/**
		Get the names and default values of a function's arguments.
		
		A tuple of four things is returned: (args, varargs, keywords, defaults).
		'args' is a list of the argument names, including keyword-only argument names.
		'varargs' and 'keywords' are the names of the * and ** arguments or None.
		'defaults' is an n-tuple of the default values of the last n arguments.
		
		Use the getfullargspec() API for Python 3 code, as annotations
		and keyword arguments are supported. getargspec() will raise ValueError
		if the func has either annotations or keyword arguments.
	**/
	static public function getargspec(func:Dynamic):Dynamic;
	static public var inf : Dynamic;
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
	static public function lrange(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var nan : Dynamic;
	/**
		Replacement for numpy.isfinite / -numpy.isnan which is suitable for use
		on object arrays.
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for *not*-null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is *not* null or if an array
		    is given which of the element is *not* null.
		
		See also
		--------
		pandas.isnull : boolean inverse of pandas.notnull
	**/
	static public function notnull(obj:Dynamic):Dynamic;
	/**
		Return a fixed frequency datetime index, with day (calendar) as the default
		frequency
		
		
		Parameters
		----------
		start : starting value, period-like, optional
		end : ending value, period-like, optional
		periods : int, default None
		    Number of periods in the index
		freq : str/DateOffset, default 'D'
		    Frequency alias
		name : str, default None
		    Name for the resulting PeriodIndex
		
		Returns
		-------
		prng : PeriodIndex
	**/
	static public function period_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a fixed frequency timedelta index, with day as the default
		frequency
		
		Parameters
		----------
		start : string or timedelta-like, default None
		    Left bound for generating dates
		end : string or datetime-like, default None
		    Right bound for generating dates
		periods : integer or None, default None
		    If None, must specify start and end
		freq : string or DateOffset, default 'D' (calendar daily)
		    Frequency strings can have multiples, e.g. '5H'
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
		rng : TimedeltaIndex
	**/
	static public function timedelta_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic, ?closed:Dynamic):Dynamic;
	static public function u(s:Dynamic):Dynamic;
}