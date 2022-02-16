/* This file is generated, do not edit! */
package pandas.core.indexes.timedeltas;
@:pythonImport("pandas.core.indexes.timedeltas") extern class Timedeltas_Module {
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TD64NS_DTYPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var annotations : Dynamic;
	/**
		Class decorator to pin attributes from an ExtensionArray to a Index subclass.
		
		Parameters
		----------
		names : List[str]
		delegate : class
		cache : bool, default False
		wrap : bool, default False
		    Whether to wrap the inherited result in an Index.
	**/
	static public function inherit_names(names:Dynamic, delegate:Dynamic, ?cache:Dynamic, ?wrap:Dynamic):Dynamic;
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
		If no name is passed, then extract it from data, validating hashability.
	**/
	static public function maybe_extract_name(name:Dynamic, obj:Dynamic, cls:Dynamic):Dynamic;
	/**
		Return a fixed frequency TimedeltaIndex, with day as the default
		frequency.
		
		Parameters
		----------
		start : str or timedelta-like, default None
		    Left bound for generating timedeltas.
		end : str or timedelta-like, default None
		    Right bound for generating timedeltas.
		periods : int, default None
		    Number of periods to generate.
		freq : str or DateOffset, default 'D'
		    Frequency strings can have multiples, e.g. '5H'.
		name : str, default None
		    Name of the resulting TimedeltaIndex.
		closed : str, default None
		    Make the interval closed with respect to the given frequency to
		    the 'left', 'right', or both sides (None).
		
		Returns
		-------
		TimedeltaIndex
		
		Notes
		-----
		Of the four parameters ``start``, ``end``, ``periods``, and ``freq``,
		exactly three must be specified. If ``freq`` is omitted, the resulting
		``TimedeltaIndex`` will have ``periods`` linearly spaced elements between
		``start`` and ``end`` (closed on both sides).
		
		To learn more about the frequency strings, please see `this link
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html#offset-aliases>`__.
		
		Examples
		--------
		>>> pd.timedelta_range(start='1 day', periods=4)
		TimedeltaIndex(['1 days', '2 days', '3 days', '4 days'],
		               dtype='timedelta64[ns]', freq='D')
		
		The ``closed`` parameter specifies which endpoint is included.  The default
		behavior is to include both endpoints.
		
		>>> pd.timedelta_range(start='1 day', periods=4, closed='right')
		TimedeltaIndex(['2 days', '3 days', '4 days'],
		               dtype='timedelta64[ns]', freq='D')
		
		The ``freq`` parameter specifies the frequency of the TimedeltaIndex.
		Only fixed frequencies can be passed, non-fixed frequencies such as
		'M' (month end) will raise.
		
		>>> pd.timedelta_range(start='1 day', end='2 days', freq='6H')
		TimedeltaIndex(['1 days 00:00:00', '1 days 06:00:00', '1 days 12:00:00',
		                '1 days 18:00:00', '2 days 00:00:00'],
		               dtype='timedelta64[ns]', freq='6H')
		
		Specify ``start``, ``end``, and ``periods``; the frequency is generated
		automatically (linearly spaced).
		
		>>> pd.timedelta_range(start='1 day', end='5 days', periods=4)
		TimedeltaIndex(['1 days 00:00:00', '2 days 08:00:00', '3 days 16:00:00',
		                '5 days 00:00:00'],
		               dtype='timedelta64[ns]', freq=None)
	**/
	static public function timedelta_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic, ?closed:Dynamic):Dynamic;
	/**
		Return DateOffset object from string or tuple representation
		or datetime.timedelta object.
		
		Parameters
		----------
		freq : str, datetime.timedelta, BaseOffset or None
		
		Returns
		-------
		DateOffset or None
		
		Raises
		------
		ValueError
		    If freq is an invalid frequency
		
		See Also
		--------
		BaseOffset : Standard kind of date increment used for a date range.
		
		Examples
		--------
		>>> to_offset("5min")
		<5 * Minutes>
		
		>>> to_offset("1D1H")
		<25 * Hours>
		
		>>> to_offset("2W")
		<2 * Weeks: weekday=6>
		
		>>> to_offset("2B")
		<2 * BusinessDays>
		
		>>> to_offset(pd.Timedelta(days=1))
		<Day>
		
		>>> to_offset(Hour())
		<Hour>
	**/
	static public function to_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
}