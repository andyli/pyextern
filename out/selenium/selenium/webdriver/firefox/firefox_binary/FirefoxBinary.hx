/* This file is generated, do not edit! */
package selenium.webdriver.firefox.firefox_binary;
@:pythonImport("selenium.webdriver.firefox.firefox_binary", "FirefoxBinary") extern class FirefoxBinary {
	static public var NO_FOCUS_LIBRARY_NAME : Dynamic;
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
		Creates a new instance of Firefox binary.
		
		:Args:
		 - firefox_path - Path to the Firefox executable. By default, it will be detected from the standard locations.
		 - log_file - A file object to redirect the firefox process output to. It can be sys.stdout.
		              Please note that with parallel run the output won't be synchronous.
		              By default, it will be redirected to /dev/null.
	**/
	@:native("__init__")
	public function ___init__(?firefox_path:Dynamic, ?log_file:Dynamic):Dynamic;
	/**
		Creates a new instance of Firefox binary.
		
		:Args:
		 - firefox_path - Path to the Firefox executable. By default, it will be detected from the standard locations.
		 - log_file - A file object to redirect the firefox process output to. It can be sys.stdout.
		              Please note that with parallel run the output won't be synchronous.
		              By default, it will be redirected to /dev/null.
	**/
	public function new(?firefox_path:Dynamic, ?log_file:Dynamic):Void;
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
	public function _default_windows_location():Dynamic;
	public function _extract_and_check(profile:Dynamic, no_focus_so_name:Dynamic, x86:Dynamic, amd64:Dynamic):Dynamic;
	public function _find_exe_in_registry():Dynamic;
	/**
		Return the command to start firefox.
	**/
	public function _get_firefox_start_cmd():Dynamic;
	public function _modify_link_library_path():Dynamic;
	public function _start_from_profile_path(path:Dynamic):Dynamic;
	/**
		Blocks until the extension is connectable in the firefox.
	**/
	public function _wait_until_connectable(?timeout:Dynamic):Dynamic;
	public function add_command_line_options(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Kill the browser.
		
		This is useful when the browser is stuck.
	**/
	public function kill():Dynamic;
	/**
		Launches the browser for the given profile name.
		It is assumed the profile already exists.
	**/
	public function launch_browser(profile:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		Returns the fully qualified path by searching Path of the given
		name
	**/
	public function which(fname:Dynamic):Dynamic;
}