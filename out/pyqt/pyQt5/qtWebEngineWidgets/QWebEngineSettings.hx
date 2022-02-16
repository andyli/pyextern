/* This file is generated, do not edit! */
package pyQt5.qtWebEngineWidgets;
@:pythonImport("PyQt5.QtWebEngineWidgets", "QWebEngineSettings") extern class QWebEngineSettings {
	static public var Accelerated2dCanvasEnabled : Dynamic;
	static public var AllowAllUnknownUrlSchemes : Dynamic;
	static public var AllowGeolocationOnInsecureOrigins : Dynamic;
	static public var AllowRunningInsecureContent : Dynamic;
	static public var AllowUnknownUrlSchemesFromUserInteraction : Dynamic;
	static public var AllowWindowActivationFromJavaScript : Dynamic;
	static public var AutoLoadIconsForPage : Dynamic;
	static public var AutoLoadImages : Dynamic;
	static public var CursiveFont : Dynamic;
	static public var DefaultFixedFontSize : Dynamic;
	static public var DefaultFontSize : Dynamic;
	static public var DisallowUnknownUrlSchemes : Dynamic;
	static public var DnsPrefetchEnabled : Dynamic;
	static public var ErrorPageEnabled : Dynamic;
	static public var FantasyFont : Dynamic;
	static public var FixedFont : Dynamic;
	static public var FocusOnNavigationEnabled : Dynamic;
	/**
		int([x]) -> integer
		int(x, base=10) -> integer
		
		Convert a number or string to an integer, or return 0 if no arguments
		are given.  If x is a number, return x.__int__().  For floating point
		numbers, this truncates towards zero.
		
		If x is not a number or if base is given, then x must be a string,
		bytes, or bytearray instance representing an integer literal in the
		given base.  The literal can be preceded by '+' or '-' and be surrounded
		by whitespace.  The base defaults to 10.  Valid bases are 0 and 2-36.
		Base 0 means to interpret the base from the string as an integer literal.
		>>> int('0b100', base=0)
		4
	**/
	public function FontFamily(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		int([x]) -> integer
		int(x, base=10) -> integer
		
		Convert a number or string to an integer, or return 0 if no arguments
		are given.  If x is a number, return x.__int__().  For floating point
		numbers, this truncates towards zero.
		
		If x is not a number or if base is given, then x must be a string,
		bytes, or bytearray instance representing an integer literal in the
		given base.  The literal can be preceded by '+' or '-' and be surrounded
		by whitespace.  The base defaults to 10.  Valid bases are 0 and 2-36.
		Base 0 means to interpret the base from the string as an integer literal.
		>>> int('0b100', base=0)
		4
	**/
	public function FontSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var FullScreenSupportEnabled : Dynamic;
	static public var HyperlinkAuditingEnabled : Dynamic;
	static public var JavascriptCanAccessClipboard : Dynamic;
	static public var JavascriptCanOpenWindows : Dynamic;
	static public var JavascriptCanPaste : Dynamic;
	static public var JavascriptEnabled : Dynamic;
	static public var LinksIncludedInFocusChain : Dynamic;
	static public var LocalContentCanAccessFileUrls : Dynamic;
	static public var LocalContentCanAccessRemoteUrls : Dynamic;
	static public var LocalStorageEnabled : Dynamic;
	static public var MinimumFontSize : Dynamic;
	static public var MinimumLogicalFontSize : Dynamic;
	static public var PictographFont : Dynamic;
	static public var PlaybackRequiresUserGesture : Dynamic;
	static public var PluginsEnabled : Dynamic;
	static public var PrintElementBackgrounds : Dynamic;
	static public var SansSerifFont : Dynamic;
	static public var ScreenCaptureEnabled : Dynamic;
	static public var ScrollAnimatorEnabled : Dynamic;
	static public var SerifFont : Dynamic;
	static public var ShowScrollBars : Dynamic;
	static public var SpatialNavigationEnabled : Dynamic;
	static public var StandardFont : Dynamic;
	static public var TouchIconsEnabled : Dynamic;
	/**
		int([x]) -> integer
		int(x, base=10) -> integer
		
		Convert a number or string to an integer, or return 0 if no arguments
		are given.  If x is a number, return x.__int__().  For floating point
		numbers, this truncates towards zero.
		
		If x is not a number or if base is given, then x must be a string,
		bytes, or bytearray instance representing an integer literal in the
		given base.  The literal can be preceded by '+' or '-' and be surrounded
		by whitespace.  The base defaults to 10.  Valid bases are 0 and 2-36.
		Base 0 means to interpret the base from the string as an integer literal.
		>>> int('0b100', base=0)
		4
	**/
	public function UnknownUrlSchemePolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		int([x]) -> integer
		int(x, base=10) -> integer
		
		Convert a number or string to an integer, or return 0 if no arguments
		are given.  If x is a number, return x.__int__().  For floating point
		numbers, this truncates towards zero.
		
		If x is not a number or if base is given, then x must be a string,
		bytes, or bytearray instance representing an integer literal in the
		given base.  The literal can be preceded by '+' or '-' and be surrounded
		by whitespace.  The base defaults to 10.  Valid bases are 0 and 2-36.
		Base 0 means to interpret the base from the string as an integer literal.
		>>> int('0b100', base=0)
		4
	**/
	public function WebAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var WebGLEnabled : Dynamic;
	static public var WebRTCPublicInterfacesOnly : Dynamic;
	static public var XSSAuditingEnabled : Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		defaultSettings() -> QWebEngineSettings
	**/
	static public function defaultSettings():Dynamic;
	/**
		defaultTextEncoding(self) -> str
	**/
	public function defaultTextEncoding():String;
	/**
		fontFamily(self, QWebEngineSettings.FontFamily) -> str
	**/
	public function fontFamily(QWebEngineSettings:Dynamic):String;
	/**
		fontSize(self, QWebEngineSettings.FontSize) -> int
	**/
	public function fontSize(QWebEngineSettings:Dynamic):Int;
	/**
		globalSettings() -> QWebEngineSettings
	**/
	static public function globalSettings():Dynamic;
	/**
		resetAttribute(self, QWebEngineSettings.WebAttribute)
	**/
	public function resetAttribute(QWebEngineSettings:Dynamic):Void;
	/**
		resetFontFamily(self, QWebEngineSettings.FontFamily)
	**/
	public function resetFontFamily(QWebEngineSettings:Dynamic):Void;
	/**
		resetFontSize(self, QWebEngineSettings.FontSize)
	**/
	public function resetFontSize(QWebEngineSettings:Dynamic):Void;
	/**
		resetUnknownUrlSchemePolicy(self)
	**/
	public function resetUnknownUrlSchemePolicy():Void;
	/**
		setAttribute(self, QWebEngineSettings.WebAttribute, bool)
	**/
	public function setAttribute(QWebEngineSettings:Dynamic, bool:Bool):Void;
	/**
		setDefaultTextEncoding(self, str)
	**/
	public function setDefaultTextEncoding(str:String):Void;
	/**
		setFontFamily(self, QWebEngineSettings.FontFamily, str)
	**/
	public function setFontFamily(QWebEngineSettings:Dynamic, str:String):Void;
	/**
		setFontSize(self, QWebEngineSettings.FontSize, int)
	**/
	public function setFontSize(QWebEngineSettings:Dynamic, int:Int):Void;
	/**
		setUnknownUrlSchemePolicy(self, QWebEngineSettings.UnknownUrlSchemePolicy)
	**/
	public function setUnknownUrlSchemePolicy(QWebEngineSettings:Dynamic):Void;
	/**
		testAttribute(self, QWebEngineSettings.WebAttribute) -> bool
	**/
	public function testAttribute(QWebEngineSettings:Dynamic):Bool;
	/**
		unknownUrlSchemePolicy(self) -> QWebEngineSettings.UnknownUrlSchemePolicy
	**/
	public function unknownUrlSchemePolicy():Dynamic;
}