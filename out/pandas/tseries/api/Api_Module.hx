/* This file is generated, do not edit! */
package pandas.tseries.api;
@:pythonImport("pandas.tseries.api") extern class Api_Module {
	static public var NaT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
		
		Returns
		-------
		rng : DatetimeIndex
	**/
	static public function bdate_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?closed:Dynamic, ?kwargs:python.KwArgs<Dynamic>):pandas.DatetimeIndex;
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
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
		
		Returns
		-------
		rng : DatetimeIndex
	**/
	static public function date_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?closed:Dynamic, ?kwargs:python.KwArgs<Dynamic>):pandas.DatetimeIndex;
	/**
		Infer the most likely frequency given the input index. If the frequency is
		uncertain, a warning will be printed.
		
		Parameters
		----------
		index : DatetimeIndex or TimedeltaIndex
		  if passed a Series will use the values of the series (NOT THE INDEX)
		warn : boolean, default True
		
		Returns
		-------
		freq : string or None
		    None if no discernible frequency
		    TypeError if the index is not datetime-like
		    ValueError if there are less than three values.
	**/
	static public function infer_freq(index:Dynamic, ?warn:Dynamic):Dynamic;
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
	static public function period_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic):pandas.PeriodIndex;
	static public function pnow(?freq:Dynamic):Dynamic;
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
		
		Returns
		-------
		rng : TimedeltaIndex
		
		Notes
		-----
		2 of start, end, or periods must be specified.
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
	**/
	static public function timedelta_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic, ?closed:Dynamic):pandas.TimedeltaIndex;
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
	**/
	static public function to_timedelta(arg:Dynamic, ?unit:Dynamic, ?box:Dynamic, ?errors:Dynamic, ?coerce:Dynamic):Dynamic;
}