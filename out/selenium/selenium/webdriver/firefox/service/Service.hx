/* This file is generated, do not edit! */
package selenium.webdriver.firefox.service;
@:pythonImport("selenium.webdriver.firefox.service", "Service") extern class Service {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
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
		Creates a new instance of the GeckoDriver remote service proxy.
		
		GeckoDriver provides a HTTP interface speaking the W3C WebDriver
		protocol to Marionette.
		
		:param executable_path: Path to the GeckoDriver binary.
		:param port: Run the remote service on a specified port.
		    Defaults to 0, which binds to a random open port of the
		    system's choosing.
		:param service_args: Optional list of arguments to pass to the
		    GeckoDriver binary.
		:param log_path: Optional path for the GeckoDriver to log to.
		    Defaults to _geckodriver.log_ in the current working directory.
		:param env: Optional dictionary of output variables to expose
		    in the services' environment.
	**/
	@:native("__init__")
	public function ___init__(?executable_path:Dynamic, ?port:Dynamic, ?service_args:Dynamic, ?log_path:Dynamic, ?env:Dynamic):Dynamic;
	/**
		Creates a new instance of the GeckoDriver remote service proxy.
		
		GeckoDriver provides a HTTP interface speaking the W3C WebDriver
		protocol to Marionette.
		
		:param executable_path: Path to the GeckoDriver binary.
		:param port: Run the remote service on a specified port.
		    Defaults to 0, which binds to a random open port of the
		    system's choosing.
		:param service_args: Optional list of arguments to pass to the
		    GeckoDriver binary.
		:param log_path: Optional path for the GeckoDriver to log to.
		    Defaults to _geckodriver.log_ in the current working directory.
		:param env: Optional dictionary of output variables to expose
		    in the services' environment.
	**/
	public function new(?executable_path:Dynamic, ?port:Dynamic, ?service_args:Dynamic, ?log_path:Dynamic, ?env:Dynamic):Void;
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
	public function assert_process_still_running():Dynamic;
	public function command_line_args():Dynamic;
	public function is_connectable():Dynamic;
	public function send_remote_shutdown_command():Dynamic;
	/**
		Gets the url of the Service
	**/
	public var service_url : Dynamic;
	/**
		Starts the Service.
		
		:Exceptions:
		 - WebDriverException : Raised either when it can't start the service
		   or when it can't connect to the service
	**/
	public function start():Dynamic;
	/**
		Stops the service.
	**/
	public function stop():Dynamic;
}