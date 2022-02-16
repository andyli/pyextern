/* This file is generated, do not edit! */
package pandas._libs.tslibs.period;
@:pythonImport("pandas._libs.tslibs.period", "PeriodMixin") extern class PeriodMixin {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return frequency code group used for base of to_timestamp against
		frequency code.
		
		Return day freq code against longer freq than day.
		Return second freq code against hour between second.
		
		Returns
		-------
		int
	**/
	public function _get_to_timestamp_base(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _require_matching_freq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get the Timestamp for the end of the period.
		
		Returns
		-------
		Timestamp
		
		See Also
		--------
		Period.start_time : Return the start Timestamp.
		Period.dayofyear : Return the day of year.
		Period.daysinmonth : Return the days in that month.
		Period.dayofweek : Return the day of the week.
	**/
	public var end_time : Dynamic;
	/**
		Get the Timestamp for the start of the period.
		
		Returns
		-------
		Timestamp
		
		See Also
		--------
		Period.end_time : Return the end Timestamp.
		Period.dayofyear : Return the day of year.
		Period.daysinmonth : Return the days in that month.
		Period.dayofweek : Return the day of the week.
		
		Examples
		--------
		>>> period = pd.Period('2012-1-1', freq='D')
		>>> period
		Period('2012-01-01', 'D')
		
		>>> period.start_time
		Timestamp('2012-01-01 00:00:00')
		
		>>> period.end_time
		Timestamp('2012-01-01 23:59:59.999999999')
	**/
	public var start_time : Dynamic;
}