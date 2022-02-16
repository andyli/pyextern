/* This file is generated, do not edit! */
package matplotlib.units;
@:pythonImport("matplotlib.units", "AxisInfo") extern class AxisInfo {
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
		Parameters
		----------
		majloc, minloc : Locator, optional
		    Tick locators for the major and minor ticks.
		majfmt, minfmt : Formatter, optional
		    Tick formatters for the major and minor ticks.
		label : str, optional
		    The default axis label.
		default_limits : optional
		    The default min and max limits of the axis if no data has
		    been plotted.
		
		Notes
		-----
		If any of the above are ``None``, the axis will simply use the
		default value.
	**/
	@:native("__init__")
	public function ___init__(?majloc:Dynamic, ?minloc:Dynamic, ?majfmt:Dynamic, ?minfmt:Dynamic, ?label:Dynamic, ?default_limits:Dynamic):Dynamic;
	/**
		Parameters
		----------
		majloc, minloc : Locator, optional
		    Tick locators for the major and minor ticks.
		majfmt, minfmt : Formatter, optional
		    Tick formatters for the major and minor ticks.
		label : str, optional
		    The default axis label.
		default_limits : optional
		    The default min and max limits of the axis if no data has
		    been plotted.
		
		Notes
		-----
		If any of the above are ``None``, the axis will simply use the
		default value.
	**/
	public function new(?majloc:Dynamic, ?minloc:Dynamic, ?majfmt:Dynamic, ?minfmt:Dynamic, ?label:Dynamic, ?default_limits:Dynamic):Void;
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