/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QTextCodec") extern class QTextCodec {
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
	public function ConversionFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QTextCodec.ConversionFlags()
		QTextCodec.ConversionFlags(Union[QTextCodec.ConversionFlags, QTextCodec.ConversionFlag])
		QTextCodec.ConversionFlags(QTextCodec.ConversionFlags)
	**/
	static public function ConversionFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var ConvertInvalidToNull : Dynamic;
	/**
		QTextCodec.ConverterState(flags: Union[QTextCodec.ConversionFlags, QTextCodec.ConversionFlag] = QTextCodec.DefaultConversion)
	**/
	static public function ConverterState(?flags:Dynamic):Void;
	static public var DefaultConversion : Dynamic;
	static public var IgnoreHeader : Dynamic;
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
		aliases(self) -> List[QByteArray]
	**/
	public function aliases():Dynamic;
	/**
		availableCodecs() -> List[QByteArray]
	**/
	static public function availableCodecs():Dynamic;
	/**
		availableMibs() -> List[int]
	**/
	static public function availableMibs():Dynamic;
	/**
		canEncode(self, str) -> bool
	**/
	public function canEncode(str:String):Bool;
	/**
		codecForHtml(Union[QByteArray, bytes, bytearray]) -> QTextCodec
		codecForHtml(Union[QByteArray, bytes, bytearray], QTextCodec) -> QTextCodec
	**/
	static public function codecForHtml(Union:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		codecForLocale() -> QTextCodec
	**/
	static public function codecForLocale():Dynamic;
	/**
		codecForMib(int) -> QTextCodec
	**/
	static public function codecForMib(int:Int):Dynamic;
	/**
		codecForName(Union[QByteArray, bytes, bytearray]) -> QTextCodec
		codecForName(str) -> QTextCodec
	**/
	static public function codecForName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		codecForUtfText(Union[QByteArray, bytes, bytearray]) -> QTextCodec
		codecForUtfText(Union[QByteArray, bytes, bytearray], QTextCodec) -> QTextCodec
	**/
	static public function codecForUtfText(Union:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		convertToUnicode(self, bytes, QTextCodec.ConverterState) -> str
	**/
	public function convertToUnicode(bytes:Dynamic, QTextCodec:Dynamic):String;
	/**
		fromUnicode(self, str) -> QByteArray
	**/
	public function fromUnicode(str:String):Dynamic;
	/**
		makeDecoder(self, flags: Union[QTextCodec.ConversionFlags, QTextCodec.ConversionFlag] = QTextCodec.DefaultConversion) -> QTextDecoder
	**/
	public function makeDecoder(?flags:Dynamic):Dynamic;
	/**
		makeEncoder(self, flags: Union[QTextCodec.ConversionFlags, QTextCodec.ConversionFlag] = QTextCodec.DefaultConversion) -> QTextEncoder
	**/
	public function makeEncoder(?flags:Dynamic):Dynamic;
	/**
		mibEnum(self) -> int
	**/
	public function mibEnum():Int;
	/**
		name(self) -> QByteArray
	**/
	public function name():Dynamic;
	/**
		setCodecForLocale(QTextCodec)
	**/
	static public function setCodecForLocale(QTextCodec:Dynamic):Void;
	/**
		toUnicode(self, Union[QByteArray, bytes, bytearray]) -> str
		toUnicode(self, str) -> str
		toUnicode(self, bytes, state: QTextCodec.ConverterState = None) -> str
	**/
	public function toUnicode(args:haxe.extern.Rest<Dynamic>):String;
}