/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QFontDatabase") extern class QFontDatabase {
	static public var Any : Dynamic;
	static public var Arabic : Dynamic;
	static public var Armenian : Dynamic;
	static public var Bengali : Dynamic;
	static public var Cyrillic : Dynamic;
	static public var Devanagari : Dynamic;
	static public var FixedFont : Dynamic;
	static public var GeneralFont : Dynamic;
	static public var Georgian : Dynamic;
	static public var Greek : Dynamic;
	static public var Gujarati : Dynamic;
	static public var Gurmukhi : Dynamic;
	static public var Hebrew : Dynamic;
	static public var Japanese : Dynamic;
	static public var Kannada : Dynamic;
	static public var Khmer : Dynamic;
	static public var Korean : Dynamic;
	static public var Lao : Dynamic;
	static public var Latin : Dynamic;
	static public var Malayalam : Dynamic;
	static public var Myanmar : Dynamic;
	static public var Nko : Dynamic;
	static public var Ogham : Dynamic;
	static public var Oriya : Dynamic;
	static public var Other : Dynamic;
	static public var Runic : Dynamic;
	static public var SimplifiedChinese : Dynamic;
	static public var Sinhala : Dynamic;
	static public var SmallestReadableFont : Dynamic;
	static public var Symbol : Dynamic;
	static public var Syriac : Dynamic;
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
	public function SystemFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Tamil : Dynamic;
	static public var Telugu : Dynamic;
	static public var Thaana : Dynamic;
	static public var Thai : Dynamic;
	static public var Tibetan : Dynamic;
	static public var TitleFont : Dynamic;
	static public var TraditionalChinese : Dynamic;
	static public var Vietnamese : Dynamic;
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
	public function WritingSystem(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		addApplicationFont(str) -> int
	**/
	static public function addApplicationFont(str:String):Int;
	/**
		addApplicationFontFromData(Union[QByteArray, bytes, bytearray]) -> int
	**/
	static public function addApplicationFontFromData(Union:Dynamic):Int;
	/**
		applicationFontFamilies(int) -> List[str]
	**/
	static public function applicationFontFamilies(int:Int):Dynamic;
	/**
		bold(self, str, str) -> bool
	**/
	public function bold(str:String, str:String):Bool;
	/**
		families(self, writingSystem: QFontDatabase.WritingSystem = QFontDatabase.Any) -> List[str]
	**/
	public function families(?writingSystem:Dynamic):Dynamic;
	/**
		font(self, str, str, int) -> QFont
	**/
	public function font(str:String, str:String, int:Int):Dynamic;
	/**
		isBitmapScalable(self, str, style: str = '') -> bool
	**/
	public function isBitmapScalable(str:String, ?style:Dynamic):Bool;
	/**
		isFixedPitch(self, str, style: str = '') -> bool
	**/
	public function isFixedPitch(str:String, ?style:Dynamic):Bool;
	/**
		isPrivateFamily(self, str) -> bool
	**/
	public function isPrivateFamily(str:String):Bool;
	/**
		isScalable(self, str, style: str = '') -> bool
	**/
	public function isScalable(str:String, ?style:Dynamic):Bool;
	/**
		isSmoothlyScalable(self, str, style: str = '') -> bool
	**/
	public function isSmoothlyScalable(str:String, ?style:Dynamic):Bool;
	/**
		italic(self, str, str) -> bool
	**/
	public function italic(str:String, str:String):Bool;
	/**
		pointSizes(self, str, style: str = '') -> List[int]
	**/
	public function pointSizes(str:String, ?style:Dynamic):Dynamic;
	/**
		removeAllApplicationFonts() -> bool
	**/
	static public function removeAllApplicationFonts():Bool;
	/**
		removeApplicationFont(int) -> bool
	**/
	static public function removeApplicationFont(int:Int):Bool;
	/**
		smoothSizes(self, str, str) -> List[int]
	**/
	public function smoothSizes(str:String, str:String):Dynamic;
	/**
		standardSizes() -> List[int]
	**/
	static public function standardSizes():Dynamic;
	/**
		styleString(self, QFont) -> str
		styleString(self, QFontInfo) -> str
	**/
	public function styleString(args:haxe.extern.Rest<Dynamic>):String;
	/**
		styles(self, str) -> List[str]
	**/
	public function styles(str:String):Dynamic;
	/**
		supportsThreadedFontRendering() -> bool
	**/
	static public function supportsThreadedFontRendering():Bool;
	/**
		systemFont(QFontDatabase.SystemFont) -> QFont
	**/
	static public function systemFont(QFontDatabase:Dynamic):Dynamic;
	/**
		weight(self, str, str) -> int
	**/
	public function weight(str:String, str:String):Int;
	/**
		writingSystemName(QFontDatabase.WritingSystem) -> str
	**/
	static public function writingSystemName(QFontDatabase:Dynamic):String;
	/**
		writingSystemSample(QFontDatabase.WritingSystem) -> str
	**/
	static public function writingSystemSample(QFontDatabase:Dynamic):String;
	/**
		writingSystems(self) -> List[QFontDatabase.WritingSystem]
		writingSystems(self, str) -> List[QFontDatabase.WritingSystem]
	**/
	public function writingSystems(args:haxe.extern.Rest<Dynamic>):Dynamic;
}