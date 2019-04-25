/* This file is generated, do not edit! */
package selenium.webdriver.firefox.firefox_profile;
@:pythonImport("selenium.webdriver.firefox.firefox_profile", "FirefoxProfile") extern class FirefoxProfile {
	static public var ANONYMOUS_PROFILE_NAME : Dynamic;
	static public var DEFAULT_PREFERENCES : Dynamic;
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
		Initialises a new instance of a Firefox Profile
		
		:args:
		 - profile_directory: Directory of profile that you want to use. If a
		   directory is passed in it will be cloned and the cloned directory
		   will be used by the driver when instantiated.
		   This defaults to None and will create a new
		   directory when object is created.
	**/
	@:native("__init__")
	public function ___init__(?profile_directory:Dynamic):Dynamic;
	/**
		Initialises a new instance of a Firefox Profile
		
		:args:
		 - profile_directory: Directory of profile that you want to use. If a
		   directory is passed in it will be cloned and the cloned directory
		   will be used by the driver when instantiated.
		   This defaults to None and will create a new
		   directory when object is created.
	**/
	public function new(?profile_directory:Dynamic):Void;
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
		Returns a dictionary of details about the addon.
		
		:param addon_path: path to the add-on directory or XPI
		
		Returns::
		
		    {'id':      u'rainbow@colors.org', # id of the addon
		     'version': u'1.4',                # version of the addon
		     'name':    u'Rainbow',            # name of the addon
		     'unpack':  False }                # whether to unpack the addon
	**/
	public function _addon_details(addon_path:Dynamic):Dynamic;
	/**
		Creates a temp folder to store User.js and the extension
	**/
	public function _create_tempfolder():Dynamic;
	/**
		Installs addon from a filepath, url
		or directory of addons in the profile.
		- path: url, absolute path to .xpi, or directory of addons
		- unpack: whether to unpack unless specified otherwise in the install.rdf
	**/
	public function _install_extension(addon:Dynamic, ?unpack:Dynamic):Dynamic;
	public function _read_existing_userjs(userjs:Dynamic):Dynamic;
	public function _set_manual_proxy_preference(key:Dynamic, setting:Dynamic):Dynamic;
	/**
		writes the current user prefs dictionary to disk
	**/
	public function _write_user_prefs(user_prefs:Dynamic):Dynamic;
	public var accept_untrusted_certs : Dynamic;
	public function add_extension(?extension:Dynamic):Dynamic;
	public var assume_untrusted_cert_issuer : Dynamic;
	/**
		A zipped, base64 encoded string of profile directory
		for use with remote WebDriver JSON wire protocol
	**/
	public var encoded : Dynamic;
	public var native_events_enabled : Dynamic;
	/**
		Gets the profile directory that is currently being used
	**/
	public var path : Dynamic;
	/**
		Gets the port that WebDriver is working on
	**/
	public var port : Dynamic;
	/**
		sets the preference that we want in the profile.
	**/
	public function set_preference(key:Dynamic, value:Dynamic):Dynamic;
	public function set_proxy(proxy:Dynamic):Dynamic;
	public function update_preferences():Dynamic;
}