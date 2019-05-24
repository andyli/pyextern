/* This file is generated, do not edit! */
package pandas.core.tools.timedeltas;
@:pythonImport("pandas.core.tools.timedeltas") extern class Timedeltas_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert string 'r' to a timedelta object.
	**/
	static public function _coerce_scalar_to_timedelta_type(r:Dynamic, ?unit:Dynamic, ?box:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Convert a list of objects to a timedelta index object.
	**/
	static public function _convert_listlike(arg:Dynamic, ?unit:Dynamic, ?box:Dynamic, ?errors:Dynamic, ?name:Dynamic):Dynamic;
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
		Parameters
		----------
		unit : an unit string
	**/
	static public function parse_timedelta_unit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		array : list-like
		copy : bool, default False
		unit : str, default "ns"
		    The timedelta unit to treat integers as multiples of.
		errors : {"raise", "coerce", "ignore"}, default "raise"
		    How to handle elements that cannot be converted to timedelta64[ns].
		    See ``pandas.to_timedelta`` for details.
		
		Returns
		-------
		converted : numpy.ndarray
		    The sequence converted to a numpy array with dtype ``timedelta64[ns]``.
		inferred_freq : Tick or None
		    The inferred frequency of the sequence.
		
		Raises
		------
		ValueError : Data cannot be converted to timedelta64[ns].
		
		Notes
		-----
		Unlike `pandas.to_timedelta`, if setting ``errors=ignore`` will not cause
		errors to be ignored; they are caught and subsequently ignored at a
		higher level.
	**/
	static public function sequence_to_td64ns(data:Dynamic, ?copy:Dynamic, ?unit:Dynamic, ?errors:Dynamic):Dynamic;
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
		unit : str, default 'ns'
		    Denotes the unit of the arg. Possible values:
		    ('Y', 'M', 'W', 'D', 'days', 'day', 'hours', hour', 'hr',
		    'h', 'm', 'minute', 'min', 'minutes', 'T', 'S', 'seconds',
		    'sec', 'second', 'ms', 'milliseconds', 'millisecond',
		    'milli', 'millis', 'L', 'us', 'microseconds', 'microsecond',
		    'micro', 'micros', 'U', 'ns', 'nanoseconds', 'nano', 'nanos',
		    'nanosecond', 'N').
		box : bool, default True
		    - If True returns a Timedelta/TimedeltaIndex of the results.
		    - If False returns a numpy.timedelta64 or numpy.darray of
		      values of dtype timedelta64[ns].
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception.
		    - If 'coerce', then invalid parsing will be set as NaT.
		    - If 'ignore', then invalid parsing will return the input.
		
		Returns
		-------
		timedelta64 or numpy.array of timedelta64
		    Output type returned if parsing succeeded.
		
		See Also
		--------
		DataFrame.astype : Cast argument to a specified dtype.
		to_datetime : Convert argument to datetime.
		
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
		
		Returning an ndarray by using the 'box' keyword argument:
		
		>>> pd.to_timedelta(np.arange(5), box=False)
		array([0, 1, 2, 3, 4], dtype='timedelta64[ns]')
	**/
	static public function to_timedelta(arg:Dynamic, ?unit:Dynamic, ?box:Dynamic, ?errors:Dynamic):Dynamic;
}