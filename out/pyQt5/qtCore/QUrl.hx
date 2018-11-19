/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QUrl") extern class QUrl {
	static public var AssumeLocalFile : Dynamic;
	/**
		int(x=0) -> integer
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
	public function ComponentFormattingOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QUrl.ComponentFormattingOptions()
		QUrl.ComponentFormattingOptions(Union[QUrl.ComponentFormattingOptions, QUrl.ComponentFormattingOption])
		QUrl.ComponentFormattingOptions(QUrl.ComponentFormattingOptions)
	**/
	static public function ComponentFormattingOptions(args:haxe.extern.Rest<Dynamic>):Void;
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
	static public var None_ : Dynamic;
	static public var NormalizePathSegments : Dynamic;
	/**
		int(x=0) -> integer
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
	/**
		int(x=0) -> integer
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
	public function UrlFormattingOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		int(x=0) -> integer
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
	public function UserInputResolutionOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QUrl.UserInputResolutionOptions()
		QUrl.UserInputResolutionOptions(Union[QUrl.UserInputResolutionOptions, QUrl.UserInputResolutionOption])
		QUrl.UserInputResolutionOptions(QUrl.UserInputResolutionOptions)
	**/
	static public function UserInputResolutionOptions(args:haxe.extern.Rest<Dynamic>):Void;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		adjusted(self, QUrl.FormattingOptions) -> QUrl
	**/
	public function adjusted(QUrl:Dynamic):Dynamic;
	/**
		authority(self, options: QUrl.ComponentFormattingOptions = QUrl.PrettyDecoded) -> str
	**/
	public function authority(?options:Dynamic):String;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		detach(self)
	**/
	public function detach():Void;
	/**
		errorString(self) -> str
	**/
	public function errorString():String;
	/**
		fileName(self, options: QUrl.ComponentFormattingOptions = QUrl.FullyDecoded) -> str
	**/
	public function fileName(?options:Dynamic):String;
	/**
		fragment(self, options: QUrl.ComponentFormattingOptions = QUrl.PrettyDecoded) -> str
	**/
	public function fragment(?options:Dynamic):String;
	/**
		fromAce(Union[QByteArray, bytes, bytearray]) -> str
	**/
	static public function fromAce(Union:Dynamic):String;
	/**
		fromEncoded(Union[QByteArray, bytes, bytearray], mode: QUrl.ParsingMode = QUrl.TolerantMode) -> QUrl
	**/
	static public function fromEncoded(Union:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		fromLocalFile(str) -> QUrl
	**/
	static public function fromLocalFile(str:String):Dynamic;
	/**
		fromPercentEncoding(Union[QByteArray, bytes, bytearray]) -> str
	**/
	static public function fromPercentEncoding(Union:Dynamic):String;
	/**
		fromStringList(Iterable[str], mode: QUrl.ParsingMode = QUrl.TolerantMode) -> List[QUrl]
	**/
	static public function fromStringList(Iterable:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		fromUserInput(str) -> QUrl
		fromUserInput(str, str, options: QUrl.UserInputResolutionOptions = QUrl.DefaultResolution) -> QUrl
	**/
	static public function fromUserInput(str:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hasFragment(self) -> bool
	**/
	public function hasFragment():Bool;
	/**
		hasQuery(self) -> bool
	**/
	public function hasQuery():Bool;
	/**
		host(self, options: QUrl.ComponentFormattingOptions = QUrl.FullyDecoded) -> str
	**/
	public function host(?options:Dynamic):String;
	/**
		idnWhitelist() -> List[str]
	**/
	static public function idnWhitelist():Dynamic;
	/**
		isDetached(self) -> bool
	**/
	public function isDetached():Bool;
	/**
		isEmpty(self) -> bool
	**/
	public function isEmpty():Bool;
	/**
		isLocalFile(self) -> bool
	**/
	public function isLocalFile():Bool;
	/**
		isParentOf(self, QUrl) -> bool
	**/
	public function isParentOf(QUrl:Dynamic):Bool;
	/**
		isRelative(self) -> bool
	**/
	public function isRelative():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		matches(self, QUrl, QUrl.FormattingOptions) -> bool
	**/
	public function matches(QUrl:Dynamic, QUrl:Dynamic):Bool;
	/**
		password(self, options: QUrl.ComponentFormattingOptions = QUrl.FullyDecoded) -> str
	**/
	public function password(?options:Dynamic):String;
	/**
		path(self, options: QUrl.ComponentFormattingOptions = QUrl.FullyDecoded) -> str
	**/
	public function path(?options:Dynamic):String;
	/**
		port(self, defaultPort: int = -1) -> int
	**/
	public function port(?defaultPort:Dynamic):Int;
	/**
		query(self, options: QUrl.ComponentFormattingOptions = QUrl.PrettyDecoded) -> str
	**/
	public function query(?options:Dynamic):String;
	/**
		resolved(self, QUrl) -> QUrl
	**/
	public function resolved(QUrl:Dynamic):Dynamic;
	/**
		scheme(self) -> str
	**/
	public function scheme():String;
	/**
		setAuthority(self, str, mode: QUrl.ParsingMode = QUrl.TolerantMode)
	**/
	public function setAuthority(str:String, ?mode:Dynamic):Void;
	/**
		setFragment(self, str, mode: QUrl.ParsingMode = QUrl.TolerantMode)
	**/
	public function setFragment(str:String, ?mode:Dynamic):Void;
	/**
		setHost(self, str, mode: QUrl.ParsingMode = QUrl.DecodedMode)
	**/
	public function setHost(str:String, ?mode:Dynamic):Void;
	/**
		setIdnWhitelist(Iterable[str])
	**/
	static public function setIdnWhitelist(Iterable:Dynamic):Void;
	/**
		setPassword(self, str, mode: QUrl.ParsingMode = QUrl.DecodedMode)
	**/
	public function setPassword(str:String, ?mode:Dynamic):Void;
	/**
		setPath(self, str, mode: QUrl.ParsingMode = QUrl.DecodedMode)
	**/
	public function setPath(str:String, ?mode:Dynamic):Void;
	/**
		setPort(self, int)
	**/
	public function setPort(int:Int):Void;
	/**
		setQuery(self, str, mode: QUrl.ParsingMode = QUrl.TolerantMode)
		setQuery(self, QUrlQuery)
	**/
	public function setQuery(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setScheme(self, str)
	**/
	public function setScheme(str:String):Void;
	/**
		setUrl(self, str, mode: QUrl.ParsingMode = QUrl.TolerantMode)
	**/
	public function setUrl(str:String, ?mode:Dynamic):Void;
	/**
		setUserInfo(self, str, mode: QUrl.ParsingMode = QUrl.TolerantMode)
	**/
	public function setUserInfo(str:String, ?mode:Dynamic):Void;
	/**
		setUserName(self, str, mode: QUrl.ParsingMode = QUrl.DecodedMode)
	**/
	public function setUserName(str:String, ?mode:Dynamic):Void;
	/**
		swap(self, QUrl)
	**/
	public function swap(QUrl:Dynamic):Void;
	/**
		toAce(str) -> QByteArray
	**/
	static public function toAce(str:String):Dynamic;
	/**
		toDisplayString(self, options: QUrl.FormattingOptions = QUrl.PrettyDecoded) -> str
	**/
	public function toDisplayString(?options:Dynamic):String;
	/**
		toEncoded(self, options: QUrl.FormattingOptions = QUrl.FullyEncoded) -> QByteArray
	**/
	public function toEncoded(?options:Dynamic):Dynamic;
	/**
		toLocalFile(self) -> str
	**/
	public function toLocalFile():String;
	/**
		toPercentEncoding(str, exclude: Union[QByteArray, bytes, bytearray] = QByteArray(), include: Union[QByteArray, bytes, bytearray] = QByteArray()) -> QByteArray
	**/
	static public function toPercentEncoding(str:String, ?exclude:Dynamic, ?include:Dynamic):Dynamic;
	/**
		toString(self, options: QUrl.FormattingOptions = QUrl.PrettyDecoded) -> str
	**/
	public function toString(?options:Dynamic):String;
	/**
		toStringList(Iterable[QUrl], options: QUrl.FormattingOptions = QUrl.PrettyDecoded) -> List[str]
	**/
	static public function toStringList(Iterable:Dynamic, ?options:Dynamic):Dynamic;
	/**
		topLevelDomain(self, options: QUrl.ComponentFormattingOptions = QUrl.FullyDecoded) -> str
	**/
	public function topLevelDomain(?options:Dynamic):String;
	/**
		url(self, options: QUrl.FormattingOptions = QUrl.PrettyDecoded) -> str
	**/
	public function url(?options:Dynamic):String;
	/**
		userInfo(self, options: QUrl.ComponentFormattingOptions = QUrl.PrettyDecoded) -> str
	**/
	public function userInfo(?options:Dynamic):String;
	/**
		userName(self, options: QUrl.ComponentFormattingOptions = QUrl.FullyDecoded) -> str
	**/
	public function userName(?options:Dynamic):String;
}