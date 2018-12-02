/* This file is generated, do not edit! */
package pySide2.qtCore;
@:pythonImport("PySide2.QtCore", "QUrl") extern class QUrl {
	static public var AssumeLocalFile : Dynamic;
	public function ComponentFormattingOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DecodeReserved : Dynamic;
	static public var DecodedMode : Dynamic;
	static public var DefaultResolution : Dynamic;
	static public var EncodeDelimiters : Dynamic;
	static public var EncodeReserved : Dynamic;
	static public var EncodeSpaces : Dynamic;
	static public var EncodeUnicode : Dynamic;
	public function FormattingOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var FullyDecoded : Dynamic;
	static public var FullyEncoded : Dynamic;
	static public var None : Dynamic;
	static public var NormalizePathSegments : Dynamic;
	public function ParsingMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PreferLocalFile : Dynamic;
	static public var PrettyDecoded : Dynamic;
	static public var RemoveAuthority : Dynamic;
	static public var RemoveFilename : Dynamic;
	static public var RemoveFragment : Dynamic;
	static public var RemovePassword : Dynamic;
	static public var RemovePath : Dynamic;
	static public var RemovePort : Dynamic;
	static public var RemoveQuery : Dynamic;
	static public var RemoveScheme : Dynamic;
	static public var RemoveUserInfo : Dynamic;
	static public var StrictMode : Dynamic;
	static public var StripTrailingSlash : Dynamic;
	static public var TolerantMode : Dynamic;
	public function UrlFormattingOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function UserInputResolutionOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function UserInputResolutionOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function adjusted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function authority(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function errorString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fileName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fragment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromAce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromEncoded(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromLocalFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromPercentEncoding(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromStringList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromUserInput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasFragment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasQuery(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function host(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function idnWhitelist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEmpty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isLocalFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isParentOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isRelative(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function matches(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function password(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function port(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function query(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resolved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scheme(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAuthority(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFragment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHost(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setIdnWhitelist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPassword(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setQuery(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setScheme(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUrl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUserInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUserName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function toAce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toDisplayString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toEncoded(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toLocalFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function toPercentEncoding(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function toStringList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function topLevelDomain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function url(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function userInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function userName(args:haxe.extern.Rest<Dynamic>):Dynamic;
}