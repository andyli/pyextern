/* This file is generated, do not edit! */
package pandas.core.indexes.accessors;
@:pythonImport("pandas.core.indexes.accessors", "TimedeltaProperties") extern class TimedeltaProperties {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion.
		
		Notes
		-----
		Only provide 'public' methods.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(data:Dynamic, orig:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(data:Dynamic, orig:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return a string representation for a particular object.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Generates the total memory usage for an object that returns
		either a value or Series of values
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _accessors : Dynamic;
	/**
		Add accessors to cls from the delegate class.
		
		Parameters
		----------
		cls
		    Class to add the methods/properties to.
		delegate
		    Class to get methods/properties and doc-strings.
		accessors : list of str
		    List of accessors to add.
		typ : {'property', 'method'}
		overwrite : bool, default False
		    Overwrite the method/property in the target class if it exists.
	**/
	static public function _add_delegate_accessors(delegate:Dynamic, accessors:Dynamic, typ:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Class constructor (for this class it's just `__class__`.
	**/
	public var _constructor : Dynamic;
	public function _delegate_method(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _delegate_property_get(name:Dynamic):Dynamic;
	public function _delegate_property_set(name:Dynamic, value:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add additional __dir__ for this object.
	**/
	public function _dir_additions():Dynamic;
	/**
		Delete unwanted __dir__ for this object.
	**/
	public function _dir_deletions():Dynamic;
	/**
		Prevents setting additional attributes.
	**/
	public function _freeze():Dynamic;
	public function _get_values():Dynamic;
	static public var _hidden_attrs : Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Perform ceil operation on the data to the specified `freq`.
		
		Parameters
		----------
		freq : str or Offset
		    The frequency level to ceil the index to. Must be a fixed
		    frequency like 'S' (second) not 'ME' (month end). See
		    :ref:`frequency aliases <timeseries.offset_aliases>` for
		    a list of possible `freq` values.
		ambiguous : 'infer', bool-ndarray, 'NaT', default 'raise'
		    Only relevant for DatetimeIndex:
		
		    - 'infer' will attempt to infer fall dst-transition hours based on
		      order
		    - bool-ndarray where True signifies a DST time, False designates
		      a non-DST time (note that this flag is only applicable for
		      ambiguous times)
		    - 'NaT' will return NaT where there are ambiguous times
		    - 'raise' will raise an AmbiguousTimeError if there are ambiguous
		      times.
		
		nonexistent : 'shift_forward', 'shift_backward', 'NaT', timedelta, default 'raise'
		    A nonexistent time does not exist in a particular timezone
		    where clocks moved forward due to DST.
		
		    - 'shift_forward' will shift the nonexistent time forward to the
		      closest existing time
		    - 'shift_backward' will shift the nonexistent time backward to the
		      closest existing time
		    - 'NaT' will return NaT where there are nonexistent times
		    - timedelta objects will shift nonexistent times by the timedelta
		    - 'raise' will raise an NonExistentTimeError if there are
		      nonexistent times.
		
		Returns
		-------
		DatetimeIndex, TimedeltaIndex, or Series
		    Index of the same type for a DatetimeIndex or TimedeltaIndex,
		    or a Series with the same index for a Series.
		
		Raises
		------
		ValueError if the `freq` cannot be converted.
		
		Notes
		-----
		If the timestamps have a timezone, ceiling will take place relative to the
		local ("wall") time and re-localized to the same timezone. When ceiling
		near daylight savings time, use ``nonexistent`` and ``ambiguous`` to
		control the re-localization behavior.
		
		Examples
		--------
		**DatetimeIndex**
		
		>>> rng = pd.date_range('1/1/2018 11:59:00', periods=3, freq='min')
		>>> rng
		DatetimeIndex(['2018-01-01 11:59:00', '2018-01-01 12:00:00',
		               '2018-01-01 12:01:00'],
		              dtype='datetime64[ns]', freq='T')
		>>> rng.ceil('H')
		DatetimeIndex(['2018-01-01 12:00:00', '2018-01-01 12:00:00',
		               '2018-01-01 13:00:00'],
		              dtype='datetime64[ns]', freq=None)
		
		**Series**
		
		>>> pd.Series(rng).dt.ceil("H")
		0   2018-01-01 12:00:00
		1   2018-01-01 12:00:00
		2   2018-01-01 13:00:00
		dtype: datetime64[ns]
		
		When rounding near a daylight savings time transition, use ``ambiguous`` or
		``nonexistent`` to control how the timestamp should be re-localized.
		
		>>> rng_tz = pd.DatetimeIndex(["2021-10-31 01:30:00"], tz="Europe/Amsterdam")
		
		>>> rng_tz.ceil("H", ambiguous=False)
		DatetimeIndex(['2021-10-31 02:00:00+01:00'],
		              dtype='datetime64[ns, Europe/Amsterdam]', freq=None)
		
		>>> rng_tz.ceil("H", ambiguous=True)
		DatetimeIndex(['2021-10-31 02:00:00+02:00'],
		              dtype='datetime64[ns, Europe/Amsterdam]', freq=None)
	**/
	public function ceil(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a Dataframe of the components of the Timedeltas.
		
		Returns
		-------
		DataFrame
		
		Examples
		--------
		>>> s = pd.Series(pd.to_timedelta(np.arange(5), unit='s'))
		>>> s
		0   0 days 00:00:00
		1   0 days 00:00:01
		2   0 days 00:00:02
		3   0 days 00:00:03
		4   0 days 00:00:04
		dtype: timedelta64[ns]
		>>> s.dt.components
		   days  hours  minutes  seconds  milliseconds  microseconds  nanoseconds
		0     0      0        0        0             0             0            0
		1     0      0        0        1             0             0            0
		2     0      0        0        2             0             0            0
		3     0      0        0        3             0             0            0
		4     0      0        0        4             0             0            0
	**/
	public var components : Dynamic;
	/**
		Number of days for each element.
	**/
	public var days : Dynamic;
	/**
		Perform floor operation on the data to the specified `freq`.
		
		Parameters
		----------
		freq : str or Offset
		    The frequency level to floor the index to. Must be a fixed
		    frequency like 'S' (second) not 'ME' (month end). See
		    :ref:`frequency aliases <timeseries.offset_aliases>` for
		    a list of possible `freq` values.
		ambiguous : 'infer', bool-ndarray, 'NaT', default 'raise'
		    Only relevant for DatetimeIndex:
		
		    - 'infer' will attempt to infer fall dst-transition hours based on
		      order
		    - bool-ndarray where True signifies a DST time, False designates
		      a non-DST time (note that this flag is only applicable for
		      ambiguous times)
		    - 'NaT' will return NaT where there are ambiguous times
		    - 'raise' will raise an AmbiguousTimeError if there are ambiguous
		      times.
		
		nonexistent : 'shift_forward', 'shift_backward', 'NaT', timedelta, default 'raise'
		    A nonexistent time does not exist in a particular timezone
		    where clocks moved forward due to DST.
		
		    - 'shift_forward' will shift the nonexistent time forward to the
		      closest existing time
		    - 'shift_backward' will shift the nonexistent time backward to the
		      closest existing time
		    - 'NaT' will return NaT where there are nonexistent times
		    - timedelta objects will shift nonexistent times by the timedelta
		    - 'raise' will raise an NonExistentTimeError if there are
		      nonexistent times.
		
		Returns
		-------
		DatetimeIndex, TimedeltaIndex, or Series
		    Index of the same type for a DatetimeIndex or TimedeltaIndex,
		    or a Series with the same index for a Series.
		
		Raises
		------
		ValueError if the `freq` cannot be converted.
		
		Notes
		-----
		If the timestamps have a timezone, flooring will take place relative to the
		local ("wall") time and re-localized to the same timezone. When flooring
		near daylight savings time, use ``nonexistent`` and ``ambiguous`` to
		control the re-localization behavior.
		
		Examples
		--------
		**DatetimeIndex**
		
		>>> rng = pd.date_range('1/1/2018 11:59:00', periods=3, freq='min')
		>>> rng
		DatetimeIndex(['2018-01-01 11:59:00', '2018-01-01 12:00:00',
		               '2018-01-01 12:01:00'],
		              dtype='datetime64[ns]', freq='T')
		>>> rng.floor('H')
		DatetimeIndex(['2018-01-01 11:00:00', '2018-01-01 12:00:00',
		               '2018-01-01 12:00:00'],
		              dtype='datetime64[ns]', freq=None)
		
		**Series**
		
		>>> pd.Series(rng).dt.floor("H")
		0   2018-01-01 11:00:00
		1   2018-01-01 12:00:00
		2   2018-01-01 12:00:00
		dtype: datetime64[ns]
		
		When rounding near a daylight savings time transition, use ``ambiguous`` or
		``nonexistent`` to control how the timestamp should be re-localized.
		
		>>> rng_tz = pd.DatetimeIndex(["2021-10-31 03:30:00"], tz="Europe/Amsterdam")
		
		>>> rng_tz.floor("2H", ambiguous=False)
		DatetimeIndex(['2021-10-31 02:00:00+01:00'],
		             dtype='datetime64[ns, Europe/Amsterdam]', freq=None)
		
		>>> rng_tz.floor("2H", ambiguous=True)
		DatetimeIndex(['2021-10-31 02:00:00+02:00'],
		              dtype='datetime64[ns, Europe/Amsterdam]', freq=None)
	**/
	public function floor(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var freq : Dynamic;
	/**
		Number of microseconds (>= 0 and less than 1 second) for each element.
	**/
	public var microseconds : Dynamic;
	/**
		Number of nanoseconds (>= 0 and less than 1 microsecond) for each element.
	**/
	public var nanoseconds : Dynamic;
	/**
		Perform round operation on the data to the specified `freq`.
		
		Parameters
		----------
		freq : str or Offset
		    The frequency level to round the index to. Must be a fixed
		    frequency like 'S' (second) not 'ME' (month end). See
		    :ref:`frequency aliases <timeseries.offset_aliases>` for
		    a list of possible `freq` values.
		ambiguous : 'infer', bool-ndarray, 'NaT', default 'raise'
		    Only relevant for DatetimeIndex:
		
		    - 'infer' will attempt to infer fall dst-transition hours based on
		      order
		    - bool-ndarray where True signifies a DST time, False designates
		      a non-DST time (note that this flag is only applicable for
		      ambiguous times)
		    - 'NaT' will return NaT where there are ambiguous times
		    - 'raise' will raise an AmbiguousTimeError if there are ambiguous
		      times.
		
		nonexistent : 'shift_forward', 'shift_backward', 'NaT', timedelta, default 'raise'
		    A nonexistent time does not exist in a particular timezone
		    where clocks moved forward due to DST.
		
		    - 'shift_forward' will shift the nonexistent time forward to the
		      closest existing time
		    - 'shift_backward' will shift the nonexistent time backward to the
		      closest existing time
		    - 'NaT' will return NaT where there are nonexistent times
		    - timedelta objects will shift nonexistent times by the timedelta
		    - 'raise' will raise an NonExistentTimeError if there are
		      nonexistent times.
		
		Returns
		-------
		DatetimeIndex, TimedeltaIndex, or Series
		    Index of the same type for a DatetimeIndex or TimedeltaIndex,
		    or a Series with the same index for a Series.
		
		Raises
		------
		ValueError if the `freq` cannot be converted.
		
		Notes
		-----
		If the timestamps have a timezone, rounding will take place relative to the
		local ("wall") time and re-localized to the same timezone. When rounding
		near daylight savings time, use ``nonexistent`` and ``ambiguous`` to
		control the re-localization behavior.
		
		Examples
		--------
		**DatetimeIndex**
		
		>>> rng = pd.date_range('1/1/2018 11:59:00', periods=3, freq='min')
		>>> rng
		DatetimeIndex(['2018-01-01 11:59:00', '2018-01-01 12:00:00',
		               '2018-01-01 12:01:00'],
		              dtype='datetime64[ns]', freq='T')
		>>> rng.round('H')
		DatetimeIndex(['2018-01-01 12:00:00', '2018-01-01 12:00:00',
		               '2018-01-01 12:00:00'],
		              dtype='datetime64[ns]', freq=None)
		
		**Series**
		
		>>> pd.Series(rng).dt.round("H")
		0   2018-01-01 12:00:00
		1   2018-01-01 12:00:00
		2   2018-01-01 12:00:00
		dtype: datetime64[ns]
		
		When rounding near a daylight savings time transition, use ``ambiguous`` or
		``nonexistent`` to control how the timestamp should be re-localized.
		
		>>> rng_tz = pd.DatetimeIndex(["2021-10-31 03:30:00"], tz="Europe/Amsterdam")
		
		>>> rng_tz.floor("2H", ambiguous=False)
		DatetimeIndex(['2021-10-31 02:00:00+01:00'],
		              dtype='datetime64[ns, Europe/Amsterdam]', freq=None)
		
		>>> rng_tz.floor("2H", ambiguous=True)
		DatetimeIndex(['2021-10-31 02:00:00+02:00'],
		              dtype='datetime64[ns, Europe/Amsterdam]', freq=None)
	**/
	public function round(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Number of seconds (>= 0 and less than 1 day) for each element.
	**/
	public var seconds : Dynamic;
	/**
		Return an array of native :class:`datetime.timedelta` objects.
		
		Python's standard `datetime` library uses a different representation
		timedelta's. This method converts a Series of pandas Timedeltas
		to `datetime.timedelta` format with the same length as the original
		Series.
		
		Returns
		-------
		numpy.ndarray
		    Array of 1D containing data with `datetime.timedelta` type.
		
		See Also
		--------
		datetime.timedelta : A duration expressing the difference
		    between two date, time, or datetime.
		
		Examples
		--------
		>>> s = pd.Series(pd.to_timedelta(np.arange(5), unit="d"))
		>>> s
		0   0 days
		1   1 days
		2   2 days
		3   3 days
		4   4 days
		dtype: timedelta64[ns]
		
		>>> s.dt.to_pytimedelta()
		array([datetime.timedelta(0), datetime.timedelta(days=1),
		datetime.timedelta(days=2), datetime.timedelta(days=3),
		datetime.timedelta(days=4)], dtype=object)
	**/
	public function to_pytimedelta():Dynamic;
	/**
		Return total duration of each element expressed in seconds.
		
		This method is available directly on TimedeltaArray, TimedeltaIndex
		and on Series containing timedelta values under the ``.dt`` namespace.
		
		Returns
		-------
		seconds : [ndarray, Float64Index, Series]
		    When the calling object is a TimedeltaArray, the return type
		    is ndarray.  When the calling object is a TimedeltaIndex,
		    the return type is a Float64Index. When the calling object
		    is a Series, the return type is Series of type `float64` whose
		    index is the same as the original.
		
		See Also
		--------
		datetime.timedelta.total_seconds : Standard library version
		    of this method.
		TimedeltaIndex.components : Return a DataFrame with components of
		    each Timedelta.
		
		Examples
		--------
		**Series**
		
		>>> s = pd.Series(pd.to_timedelta(np.arange(5), unit='d'))
		>>> s
		0   0 days
		1   1 days
		2   2 days
		3   3 days
		4   4 days
		dtype: timedelta64[ns]
		
		>>> s.dt.total_seconds()
		0         0.0
		1     86400.0
		2    172800.0
		3    259200.0
		4    345600.0
		dtype: float64
		
		**TimedeltaIndex**
		
		>>> idx = pd.to_timedelta(np.arange(5), unit='d')
		>>> idx
		TimedeltaIndex(['0 days', '1 days', '2 days', '3 days', '4 days'],
		               dtype='timedelta64[ns]', freq=None)
		
		>>> idx.total_seconds()
		Float64Index([0.0, 86400.0, 172800.0, 259200.00000000003, 345600.0],
		             dtype='float64')
	**/
	public function total_seconds(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}