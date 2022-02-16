/* This file is generated, do not edit! */
package pandas._libs.tslibs.strptime;
@:pythonImport("pandas._libs.tslibs.strptime", "LocaleTime") extern class LocaleTime {
	public function _LocaleTime__calc_am_pm():Dynamic;
	public function _LocaleTime__calc_date_time():Dynamic;
	public function _LocaleTime__calc_month():Dynamic;
	public function _LocaleTime__calc_timezone():Dynamic;
	public function _LocaleTime__calc_weekday():Dynamic;
	public function _LocaleTime__pad(seq:Dynamic, front:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Set all attributes.
		
		Order of methods called matters for dependency reasons.
		
		The locale language is set at the offset and then checked again before
		exiting.  This is to make sure that the attributes were not set with a
		mix of information from more than one locale.  This would most likely
		happen when using threads where one thread calls a locale-dependent
		function while another thread changes the locale while the function in
		the other thread is still running.  Proper coding would call for
		locks to prevent changing the locale while locale-dependent code is
		running.  The check here is done in case someone does not think about
		doing this.
		
		Only other possible issue is if someone changed the timezone and did
		not call tz.tzset .  That is an issue for the programmer, though,
		since changing the timezone is worthless without that call.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Set all attributes.
		
		Order of methods called matters for dependency reasons.
		
		The locale language is set at the offset and then checked again before
		exiting.  This is to make sure that the attributes were not set with a
		mix of information from more than one locale.  This would most likely
		happen when using threads where one thread calls a locale-dependent
		function while another thread changes the locale while the function in
		the other thread is still running.  Proper coding would call for
		locks to prevent changing the locale while locale-dependent code is
		running.  The check here is done in case someone does not think about
		doing this.
		
		Only other possible issue is if someone changed the timezone and did
		not call tz.tzset .  That is an issue for the programmer, though,
		since changing the timezone is worthless without that call.
	**/
	public function new():Void;
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
}