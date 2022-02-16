/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QTextStream") extern class QTextStream {
	static public var AlignAccountingStyle : Dynamic;
	static public var AlignCenter : Dynamic;
	static public var AlignLeft : Dynamic;
	static public var AlignRight : Dynamic;
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
	public function FieldAlignment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var FixedNotation : Dynamic;
	static public var ForcePoint : Dynamic;
	static public var ForceSign : Dynamic;
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
	public function NumberFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QTextStream.NumberFlags()
		QTextStream.NumberFlags(Union[QTextStream.NumberFlags, QTextStream.NumberFlag])
		QTextStream.NumberFlags(QTextStream.NumberFlags)
	**/
	static public function NumberFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var Ok : Dynamic;
	static public var ReadCorruptData : Dynamic;
	static public var ReadPastEnd : Dynamic;
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
	public function RealNumberNotation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ScientificNotation : Dynamic;
	static public var ShowBase : Dynamic;
	static public var SmartNotation : Dynamic;
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
	public function Status(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var UppercaseBase : Dynamic;
	static public var UppercaseDigits : Dynamic;
	static public var WriteFailed : Dynamic;
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
		Return self<<value.
	**/
	public function __lshift__(value:Dynamic):Dynamic;
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
		Return value<<self.
	**/
	public function __rlshift__(value:Dynamic):Dynamic;
	/**
		Return value>>self.
	**/
	public function __rrshift__(value:Dynamic):Dynamic;
	/**
		Return self>>value.
	**/
	public function __rshift__(value:Dynamic):Dynamic;
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
		atEnd(self) -> bool
	**/
	public function atEnd():Bool;
	/**
		autoDetectUnicode(self) -> bool
	**/
	public function autoDetectUnicode():Bool;
	/**
		codec(self) -> QTextCodec
	**/
	public function codec():Dynamic;
	/**
		device(self) -> QIODevice
	**/
	public function device():Dynamic;
	/**
		fieldAlignment(self) -> QTextStream.FieldAlignment
	**/
	public function fieldAlignment():Dynamic;
	/**
		fieldWidth(self) -> int
	**/
	public function fieldWidth():Int;
	/**
		flush(self)
	**/
	public function flush():Void;
	/**
		generateByteOrderMark(self) -> bool
	**/
	public function generateByteOrderMark():Bool;
	/**
		integerBase(self) -> int
	**/
	public function integerBase():Int;
	/**
		locale(self) -> QLocale
	**/
	public function locale():Dynamic;
	/**
		numberFlags(self) -> QTextStream.NumberFlags
	**/
	public function numberFlags():Dynamic;
	/**
		padChar(self) -> str
	**/
	public function padChar():String;
	/**
		pos(self) -> int
	**/
	public function pos():Int;
	/**
		read(self, int) -> str
	**/
	public function read(int:Int):String;
	/**
		readAll(self) -> str
	**/
	public function readAll():String;
	/**
		readLine(self, maxLength: int = 0) -> str
	**/
	public function readLine(?maxLength:Dynamic):String;
	/**
		realNumberNotation(self) -> QTextStream.RealNumberNotation
	**/
	public function realNumberNotation():Dynamic;
	/**
		realNumberPrecision(self) -> int
	**/
	public function realNumberPrecision():Int;
	/**
		reset(self)
	**/
	public function reset():Void;
	/**
		resetStatus(self)
	**/
	public function resetStatus():Void;
	/**
		seek(self, int) -> bool
	**/
	public function seek(int:Int):Bool;
	/**
		setAutoDetectUnicode(self, bool)
	**/
	public function setAutoDetectUnicode(bool:Bool):Void;
	/**
		setCodec(self, QTextCodec)
		setCodec(self, str)
	**/
	public function setCodec(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setDevice(self, QIODevice)
	**/
	public function setDevice(QIODevice:Dynamic):Void;
	/**
		setFieldAlignment(self, QTextStream.FieldAlignment)
	**/
	public function setFieldAlignment(QTextStream:Dynamic):Void;
	/**
		setFieldWidth(self, int)
	**/
	public function setFieldWidth(int:Int):Void;
	/**
		setGenerateByteOrderMark(self, bool)
	**/
	public function setGenerateByteOrderMark(bool:Bool):Void;
	/**
		setIntegerBase(self, int)
	**/
	public function setIntegerBase(int:Int):Void;
	/**
		setLocale(self, QLocale)
	**/
	public function setLocale(QLocale:Dynamic):Void;
	/**
		setNumberFlags(self, Union[QTextStream.NumberFlags, QTextStream.NumberFlag])
	**/
	public function setNumberFlags(Union:Dynamic):Void;
	/**
		setPadChar(self, str)
	**/
	public function setPadChar(str:String):Void;
	/**
		setRealNumberNotation(self, QTextStream.RealNumberNotation)
	**/
	public function setRealNumberNotation(QTextStream:Dynamic):Void;
	/**
		setRealNumberPrecision(self, int)
	**/
	public function setRealNumberPrecision(int:Int):Void;
	/**
		setStatus(self, QTextStream.Status)
	**/
	public function setStatus(QTextStream:Dynamic):Void;
	/**
		skipWhiteSpace(self)
	**/
	public function skipWhiteSpace():Void;
	/**
		status(self) -> QTextStream.Status
	**/
	public function status():Dynamic;
}