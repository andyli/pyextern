/* This file is generated, do not edit! */
package selenium.webdriver.opera.options;
@:pythonImport("selenium.webdriver.opera.options", "Options") extern class Options {
	static public var KEY : Dynamic;
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var _abc_impl : Dynamic;
	/**
		:returns: whether the session accepts insecure certificates
	**/
	public var accept_insecure_certs : Dynamic;
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
		Adds an experimental option which is passed to chromium.
		
		:Args:
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
		:Returns: The path of the command line file
	**/
	public var android_command_line_file : Dynamic;
	/**
		:Returns: The name of the devtools socket
	**/
	public var android_device_socket : Dynamic;
	/**
		:Returns: The name of the Opera package
	**/
	public var android_package_name : Dynamic;
	/**
		:Returns: A list of arguments needed for the browser
	**/
	public var arguments : Dynamic;
	/**
		:Returns: The location of the binary, otherwise an empty string
	**/
	public var binary_location : Dynamic;
	/**
		:returns: the version of the browser if set, otherwise None.
	**/
	public var browser_version : Dynamic;
	public var capabilities : Dynamic;
	/**
		:Returns: The address of the remote devtools instance
	**/
	public var debugger_address : Dynamic;
	/**
		Return minimal capabilities necessary as a dictionary.
	**/
	public var default_capabilities : Dynamic;
	/**
		Enables mobile browser use for browsers that support it
		
		:Args:
		    android_activity: The name of the android package to start
	**/
	public function enable_mobile(?android_package:Dynamic, ?android_activity:Dynamic, ?device_serial:Dynamic):Dynamic;
	/**
		:Returns: A dictionary of experimental options for chromium
	**/
	public var experimental_options : Dynamic;
	/**
		:Returns: A list of encoded extensions that will be loaded
	**/
	public var extensions : Dynamic;
	/**
		:Returns: True if the headless argument is set, else False
	**/
	public var headless : Dynamic;
	/**
		By calling this you will ignore HTTP_PROXY and HTTPS_PROXY from being picked up and used.
	**/
	public function ignore_local_proxy_environment_variables():Dynamic;
	/**
		:returns: page load strategy if set, the default is "normal"
	**/
	public var page_load_strategy : Dynamic;
	/**
		:returns: The name of the platform
	**/
	public var platform_name : Dynamic;
	/**
		:Returns: Proxy if set, otherwise None.
	**/
	public var proxy : Dynamic;
	/**
		Sets a capability 
	**/
	public function set_capability(name:Dynamic, value:Dynamic):Dynamic;
	/**
		:returns: whether the remote end supports setting window size and position
	**/
	public var set_window_rect : Dynamic;
	/**
		:returns: whether session is strict about file interactability
	**/
	public var strict_file_interactability : Dynamic;
	/**
		:returns: Values for implicit timeout, pageLoad timeout and script timeout if set (in milliseconds)
	**/
	public var timeouts : Dynamic;
	/**
		Creates a capabilities with all the options that have been set and
		returns a dictionary with everything
	**/
	public function to_capabilities():Dynamic;
	/**
		:returns: unhandled prompt behavior if set, the default is "dismiss and notify"
	**/
	public var unhandled_prompt_behavior : Dynamic;
}