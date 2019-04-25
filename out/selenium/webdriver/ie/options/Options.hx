/* This file is generated, do not edit! */
package selenium.webdriver.ie.options;
@:pythonImport("selenium.webdriver.ie.options", "Options") extern class Options {
	static public var BROWSER_ATTACH_TIMEOUT : Dynamic;
	static public var ELEMENT_SCROLL_BEHAVIOR : Dynamic;
	static public var ENSURE_CLEAN_SESSION : Dynamic;
	static public var FILE_UPLOAD_DIALOG_TIMEOUT : Dynamic;
	static public var FORCE_CREATE_PROCESS_API : Dynamic;
	static public var FORCE_SHELL_WINDOWS_API : Dynamic;
	static public var FULL_PAGE_SCREENSHOT : Dynamic;
	static public var IGNORE_PROTECTED_MODE_SETTINGS : Dynamic;
	static public var IGNORE_ZOOM_LEVEL : Dynamic;
	static public var INITIAL_BROWSER_URL : Dynamic;
	static public var KEY : Dynamic;
	static public var NATIVE_EVENTS : Dynamic;
	static public var PERSISTENT_HOVER : Dynamic;
	static public var REQUIRE_WINDOW_FOCUS : Dynamic;
	static public var SWITCHES : Dynamic;
	static public var USE_PER_PROCESS_PROXY : Dynamic;
	static public var VALIDATE_COOKIE_DOCUMENT_TYPE : Dynamic;
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
		Adds an additional option not yet added as a safe option for IE
		
		:Args:
		 - name: name of the option to add
		 - value: value of the option to add
	**/
	public function add_additional_option(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Add argument to be used for the browser process 
	**/
	public function add_argument(argument:Dynamic):Dynamic;
	/**
		Returns the additional options 
	**/
	public var additional_options : Dynamic;
	/**
		Returns a list of browser process arguments 
	**/
	public var arguments : Dynamic;
	/**
		Returns the options Browser Attach Timeout in milliseconds 
	**/
	public var browser_attach_timeout : Dynamic;
	public var capabilities : Dynamic;
	/**
		Returns the options Element Scroll Behavior in milliseconds 
	**/
	public var element_scroll_behavior : Dynamic;
	/**
		Returns the options Ensure Clean Session value 
	**/
	public var ensure_clean_session : Dynamic;
	/**
		Returns the options File Upload Dialog Timeout in milliseconds 
	**/
	public var file_upload_dialog_timeout : Dynamic;
	/**
		Returns the options Force Create Process Api value 
	**/
	public var force_create_process_api : Dynamic;
	/**
		Returns the options Force Shell Windows Api value 
	**/
	public var force_shell_windows_api : Dynamic;
	/**
		Returns the options Full Page Screenshot value 
	**/
	public var full_page_screenshot : Dynamic;
	/**
		Returns the options Ignore Protected Mode Settings value 
	**/
	public var ignore_protected_mode_settings : Dynamic;
	/**
		Returns the options Ignore Zoom Level value 
	**/
	public var ignore_zoom_level : Dynamic;
	/**
		Returns the options Initial Browser Url value 
	**/
	public var initial_browser_url : Dynamic;
	/**
		Returns the options Native Events value 
	**/
	public var native_events : Dynamic;
	/**
		Returns a dictionary of browser options 
	**/
	public var options : Dynamic;
	/**
		Returns the options Persistent Hover value 
	**/
	public var persistent_hover : Dynamic;
	/**
		Returns the options Require Window Focus value 
	**/
	public var require_window_focus : Dynamic;
	/**
		Sets a capability.
	**/
	public function set_capability(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Marshals the IE options to a the correct object 
	**/
	public function to_capabilities():Dynamic;
	/**
		Returns the options User Per Process Proxy value 
	**/
	public var use_per_process_proxy : Dynamic;
	/**
		Returns the options Validate Cookie Document Type value 
	**/
	public var validate_cookie_document_type : Dynamic;
}