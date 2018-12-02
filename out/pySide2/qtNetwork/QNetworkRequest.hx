/* This file is generated, do not edit! */
package pySide2.qtNetwork;
@:pythonImport("PySide2.QtNetwork", "QNetworkRequest") extern class QNetworkRequest {
	static public var AlwaysCache : Dynamic;
	static public var AlwaysNetwork : Dynamic;
	public function Attribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var AuthenticationReuseAttribute : Dynamic;
	static public var Automatic : Dynamic;
	static public var BackgroundRequestAttribute : Dynamic;
	public function CacheLoadControl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var CacheLoadControlAttribute : Dynamic;
	static public var CacheSaveControlAttribute : Dynamic;
	static public var ConnectionEncryptedAttribute : Dynamic;
	static public var ContentDispositionHeader : Dynamic;
	static public var ContentLengthHeader : Dynamic;
	static public var ContentTypeHeader : Dynamic;
	static public var CookieHeader : Dynamic;
	static public var CookieLoadControlAttribute : Dynamic;
	static public var CookieSaveControlAttribute : Dynamic;
	static public var CustomVerbAttribute : Dynamic;
	static public var DoNotBufferUploadDataAttribute : Dynamic;
	static public var DownloadBufferAttribute : Dynamic;
	static public var EmitAllUploadProgressSignalsAttribute : Dynamic;
	static public var FollowRedirectsAttribute : Dynamic;
	static public var HighPriority : Dynamic;
	static public var HttpPipeliningAllowedAttribute : Dynamic;
	static public var HttpPipeliningWasUsedAttribute : Dynamic;
	static public var HttpReasonPhraseAttribute : Dynamic;
	static public var HttpStatusCodeAttribute : Dynamic;
	public function KnownHeaders(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var LastModifiedHeader : Dynamic;
	public function LoadControl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var LocationHeader : Dynamic;
	static public var LowPriority : Dynamic;
	static public var Manual : Dynamic;
	static public var MaximumDownloadBufferSizeAttribute : Dynamic;
	static public var NormalPriority : Dynamic;
	static public var PreferCache : Dynamic;
	static public var PreferNetwork : Dynamic;
	public function Priority(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var RedirectionTargetAttribute : Dynamic;
	static public var ServerHeader : Dynamic;
	static public var SetCookieHeader : Dynamic;
	static public var SourceIsFromCacheAttribute : Dynamic;
	static public var SpdyAllowedAttribute : Dynamic;
	static public var SpdyWasUsedAttribute : Dynamic;
	static public var SynchronousRequestAttribute : Dynamic;
	static public var User : Dynamic;
	static public var UserAgentHeader : Dynamic;
	static public var UserMax : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function attribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasRawHeader(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function header(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumRedirectsAllowed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function originatingObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function priority(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rawHeader(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rawHeaderList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHeader(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMaximumRedirectsAllowed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOriginatingObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPriority(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRawHeader(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSslConfiguration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUrl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sslConfiguration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function url(args:haxe.extern.Rest<Dynamic>):Dynamic;
}