/* This file is generated, do not edit! */
package pandas.core.indexes.accessors;
@:pythonImport("pandas.core.indexes.accessors", "PeriodProperties") extern class PeriodProperties {
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
		Convert the PeriodArray to the specified frequency `freq`.
		
		Equivalent to applying :meth:`pandas.Period.asfreq` with the given arguments
		to each :class:`~pandas.Period` in this PeriodArray.
		
		Parameters
		----------
		freq : str
		    A frequency.
		how : str {'E', 'S'}, default 'E'
		    Whether the elements should be aligned to the end
		    or start within pa period.
		
		    * 'E', 'END', or 'FINISH' for end,
		    * 'S', 'START', or 'BEGIN' for start.
		
		    January 31st ('END') vs. January 1st ('START') for example.
		
		Returns
		-------
		PeriodArray
		    The transformed PeriodArray with the new frequency.
		
		See Also
		--------
		PeriodIndex.asfreq: Convert each Period in a PeriodIndex to the given frequency.
		Period.asfreq : Convert a :class:`~pandas.Period` object to the given frequency.
		
		Examples
		--------
		>>> pidx = pd.period_range('2010-01-01', '2015-01-01', freq='A')
		>>> pidx
		PeriodIndex(['2010', '2011', '2012', '2013', '2014', '2015'],
		dtype='period[A-DEC]')
		
		>>> pidx.asfreq('M')
		PeriodIndex(['2010-12', '2011-12', '2012-12', '2013-12', '2014-12',
		'2015-12'], dtype='period[M]')
		
		>>> pidx.asfreq('M', how='S')
		PeriodIndex(['2010-01', '2011-01', '2012-01', '2013-01', '2014-01',
		'2015-01'], dtype='period[M]')
	**/
	public function asfreq(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The days of the period.
	**/
	public var day : Dynamic;
	/**
		The day of the week with Monday=0, Sunday=6.
	**/
	public var day_of_week : Dynamic;
	/**
		The ordinal day of the year.
	**/
	public var day_of_year : Dynamic;
	/**
		The day of the week with Monday=0, Sunday=6.
	**/
	public var dayofweek : Dynamic;
	/**
		The ordinal day of the year.
	**/
	public var dayofyear : Dynamic;
	/**
		The number of days in the month.
	**/
	public var days_in_month : Dynamic;
	/**
		The number of days in the month.
	**/
	public var daysinmonth : Dynamic;
	public var end_time : Dynamic;
	/**
		Return the frequency object for this PeriodArray.
	**/
	public var freq : Dynamic;
	/**
		The hour of the period.
	**/
	public var hour : Dynamic;
	/**
		Logical indicating if the date belongs to a leap year.
	**/
	public var is_leap_year : Dynamic;
	/**
		The minute of the period.
	**/
	public var minute : Dynamic;
	/**
		The month as January=1, December=12.
	**/
	public var month : Dynamic;
	/**
		The quarter of the date.
	**/
	public var quarter : Dynamic;
	public var qyear : Dynamic;
	/**
		The second of the period.
	**/
	public var second : Dynamic;
	public var start_time : Dynamic;
	/**
		Convert to Index using specified date_format.
		
		Return an Index of formatted strings specified by date_format, which
		supports the same string format as the python standard library. Details
		of the string format can be found in `python string format
		doc <https://docs.python.org/3/library/datetime.html#strftime-and-strptime-behavior>`__.
		
		Parameters
		----------
		date_format : str
		    Date format string (e.g. "%Y-%m-%d").
		
		Returns
		-------
		ndarray[object]
		    NumPy ndarray of formatted strings.
		
		See Also
		--------
		to_datetime : Convert the given argument to datetime.
		DatetimeIndex.normalize : Return DatetimeIndex with times to midnight.
		DatetimeIndex.round : Round the DatetimeIndex to the specified freq.
		DatetimeIndex.floor : Floor the DatetimeIndex to the specified freq.
		
		Examples
		--------
		>>> rng = pd.date_range(pd.Timestamp("2018-03-10 09:00"),
		...                     periods=3, freq='s')
		>>> rng.strftime('%B %d, %Y, %r')
		Index(['March 10, 2018, 09:00:00 AM', 'March 10, 2018, 09:00:01 AM',
		       'March 10, 2018, 09:00:02 AM'],
		      dtype='object')
	**/
	public function strftime(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Cast to DatetimeArray/Index.
		
		Parameters
		----------
		freq : str or DateOffset, optional
		    Target frequency. The default is 'D' for week or longer,
		    'S' otherwise.
		how : {'s', 'e', 'start', 'end'}
		    Whether to use the start or end of the time period being converted.
		
		Returns
		-------
		DatetimeArray/Index
	**/
	public function to_timestamp(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The week ordinal of the year.
	**/
	public var week : Dynamic;
	/**
		The day of the week with Monday=0, Sunday=6.
	**/
	public var weekday : Dynamic;
	/**
		The week ordinal of the year.
	**/
	public var weekofyear : Dynamic;
	/**
		The year of the period.
	**/
	public var year : Dynamic;
}