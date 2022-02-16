/* This file is generated, do not edit! */
package pandas.tseries.holiday;
@:pythonImport("pandas.tseries.holiday", "AbstractHolidayCalendar") extern class AbstractHolidayCalendar {
	static public var __annotations__ : Dynamic;
	static public function __class__(clsname:Dynamic, bases:Dynamic, attrs:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
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
		Initializes holiday object with a given set a rules.  Normally
		classes just have the rules defined within them.
		
		Parameters
		----------
		name : str
		    Name of the holiday calendar, defaults to class name
		rules : array of Holiday objects
		    A set of rules used to create the holidays.
	**/
	@:native("__init__")
	public function ___init__(?name:Dynamic, ?rules:Dynamic):Dynamic;
	/**
		Initializes holiday object with a given set a rules.  Normally
		classes just have the rules defined within them.
		
		Parameters
		----------
		name : str
		    Name of the holiday calendar, defaults to class name
		rules : array of Holiday objects
		    A set of rules used to create the holidays.
	**/
	public function new(?name:Dynamic, ?rules:Dynamic):Void;
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
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
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
	static public var _cache : Dynamic;
	static public var end_date : Dynamic;
	/**
		Returns a curve with holidays between start_date and end_date
		
		Parameters
		----------
		start : starting date, datetime-like, optional
		end : ending date, datetime-like, optional
		return_name : bool, optional
		    If True, return a series that has dates and holiday names.
		    False will only return a DatetimeIndex of dates.
		
		Returns
		-------
		    DatetimeIndex of holidays
	**/
	public function holidays(?start:Dynamic, ?end:Dynamic, ?return_name:Dynamic):Dynamic;
	/**
		Merge holiday calendars together.  The caller's class
		rules take precedence.  The merge will be done
		based on each holiday's name.
		
		Parameters
		----------
		other : holiday calendar
		inplace : bool (default=False)
		    If True set rule_table to holidays, else return array of Holidays
	**/
	public function merge(other:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Merge holiday calendars together. The base calendar
		will take precedence to other. The merge will be done
		based on each holiday's name.
		
		Parameters
		----------
		base : AbstractHolidayCalendar
		  instance/subclass or array of Holiday objects
		other : AbstractHolidayCalendar
		  instance/subclass or array of Holiday objects
	**/
	static public function merge_class(base:Dynamic, other:Dynamic):Dynamic;
	public function rule_from_name(name:Dynamic):Dynamic;
	static public var rules : Dynamic;
	static public var start_date : Dynamic;
}