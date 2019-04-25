/* This file is generated, do not edit! */
package selenium.webdriver.firefox.options;
@:pythonImport("selenium.webdriver.firefox.options", "Options") extern class Options {
	static public var KEY : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public var accept_insecure_certs : Dynamic;
	/**
		Add argument to be used for the browser process.
	**/
	public function add_argument(argument:Dynamic):Dynamic;
	/**
		Returns a list of browser process arguments.
	**/
	public var arguments : Dynamic;
	/**
		Returns the FirefoxBinary instance
	**/
	public var binary : Dynamic;
	/**
		Returns the location of the binary.
	**/
	public var binary_location : Dynamic;
	public var capabilities : Dynamic;
	/**
		Returns whether or not the headless argument is set
	**/
	public var headless : Dynamic;
	/**
		Returns a dict of preferences.
	**/
	public var preferences : Dynamic;
	/**
		Returns the Firefox profile to use.
	**/
	public var profile : Dynamic;
	/**
		returns Proxy if set otherwise None.
	**/
	public var proxy : Dynamic;
	/**
		Sets a capability.
	**/
	public function set_capability(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Deprecated, options.headless = True 
	**/
	public function set_headless(?headless:Dynamic):Dynamic;
	/**
		Sets a preference.
	**/
	public function set_preference(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Marshals the Firefox options to a `moz:firefoxOptions`
		object.
	**/
	public function to_capabilities():Dynamic;
}