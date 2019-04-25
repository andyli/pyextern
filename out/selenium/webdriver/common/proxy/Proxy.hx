/* This file is generated, do not edit! */
package selenium.webdriver.common.proxy;
@:pythonImport("selenium.webdriver.common.proxy", "Proxy") extern class Proxy {
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
		Creates a new Proxy.
		
		:Args:
		 - raw: raw proxy data. If None, default class values are used.
	**/
	@:native("__init__")
	public function ___init__(?raw:Dynamic):Dynamic;
	/**
		Creates a new Proxy.
		
		:Args:
		 - raw: raw proxy data. If None, default class values are used.
	**/
	public function new(?raw:Dynamic):Void;
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
	public function _verify_proxy_type_compatibility(compatibleProxy:Dynamic):Dynamic;
	/**
		Adds proxy information as capability in specified capabilities.
		
		:Args:
		 - capabilities: The capabilities to which proxy will be added.
	**/
	public function add_to_capabilities(capabilities:Dynamic):Dynamic;
	/**
		Returns autodetect setting.
	**/
	public var auto_detect : Dynamic;
	static public var autodetect : Dynamic;
	static public var ftpProxy : Dynamic;
	/**
		Returns ftp proxy setting.
	**/
	public var ftp_proxy : Dynamic;
	static public var httpProxy : Dynamic;
	/**
		Returns http proxy setting.
	**/
	public var http_proxy : Dynamic;
	static public var noProxy : Dynamic;
	/**
		Returns noproxy setting.
	**/
	public var no_proxy : Dynamic;
	static public var proxyAutoconfigUrl : Dynamic;
	static public var proxyType : Dynamic;
	/**
		Returns proxy autoconfig url setting.
	**/
	public var proxy_autoconfig_url : Dynamic;
	/**
		Returns proxy type as `ProxyType`.
	**/
	public var proxy_type : Dynamic;
	static public var socksPassword : Dynamic;
	static public var socksProxy : Dynamic;
	static public var socksUsername : Dynamic;
	/**
		Returns socks proxy password setting.
	**/
	public var socks_password : Dynamic;
	/**
		Returns socks proxy setting.
	**/
	public var socks_proxy : Dynamic;
	/**
		Returns socks proxy username setting.
	**/
	public var socks_username : Dynamic;
	static public var sslProxy : Dynamic;
	/**
		Returns https proxy setting.
	**/
	public var ssl_proxy : Dynamic;
}