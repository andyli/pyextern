/* This file is generated, do not edit! */
package selenium.webdriver.opera.options;
@:pythonImport("selenium.webdriver.opera.options", "AndroidOptions") extern class AndroidOptions {
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
	/**
		Adds an argument to the list
		
		:Args:
		 - Sets the arguments
	**/
	public function add_argument(argument:Dynamic):Dynamic;
	/**
		Adds Base64 encoded string with extension data to a list that will be used to extract it
		to the ChromeDriver
		
		:Args:
		 - extension: Base64 encoded string with extension data
	**/
	public function add_encoded_extension(extension:Dynamic):Dynamic;
	/**
		Adds an experimental option which is passed to chrome.
		
		Args:
		  name: The experimental option name.
		  value: The option value.
	**/
	public function add_experimental_option(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Adds the path to the extension to a list that will be used to extract it
		to the ChromeDriver
		
		:Args:
		 - extension: path to the \*.crx file
	**/
	public function add_extension(extension:Dynamic):Dynamic;
	/**
		Returns the path of the command line file
	**/
	public var android_command_line_file : Dynamic;
	/**
		Returns the name of the devtools socket
	**/
	public var android_device_socket : Dynamic;
	/**
		Returns the name of the Opera package
	**/
	public var android_package_name : Dynamic;
	/**
		Returns a list of arguments needed for the browser
	**/
	public var arguments : Dynamic;
	/**
		Returns the location of the binary otherwise an empty string
	**/
	public var binary_location : Dynamic;
	public var capabilities : Dynamic;
	/**
		Returns the address of the remote devtools instance
	**/
	public var debugger_address : Dynamic;
	/**
		Returns a dictionary of experimental options for chrome.
	**/
	public var experimental_options : Dynamic;
	/**
		Returns a list of encoded extensions that will be loaded into chrome
	**/
	public var extensions : Dynamic;
	/**
		Returns whether or not the headless argument is set
	**/
	public var headless : Dynamic;
	/**
		Sets a capability.
	**/
	public function set_capability(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Deprecated, options.headless = True 
	**/
	public function set_headless(?headless:Dynamic):Dynamic;
	/**
		Creates a capabilities with all the options that have been set and
		
		returns a dictionary with everything
	**/
	public function to_capabilities():Dynamic;
}