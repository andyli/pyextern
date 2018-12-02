/* This file is generated, do not edit! */
package pySide2.qtCore;
@:pythonImport("PySide2.QtCore", "QTextStream") extern class QTextStream {
	static public var AlignAccountingStyle : Dynamic;
	static public var AlignCenter : Dynamic;
	static public var AlignLeft : Dynamic;
	static public var AlignRight : Dynamic;
	public function FieldAlignment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var FixedNotation : Dynamic;
	static public var ForcePoint : Dynamic;
	static public var ForceSign : Dynamic;
	public function NumberFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function NumberFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Ok : Dynamic;
	static public var ReadCorruptData : Dynamic;
	static public var ReadPastEnd : Dynamic;
	public function RealNumberNotation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ScientificNotation : Dynamic;
	static public var ShowBase : Dynamic;
	static public var SmartNotation : Dynamic;
	public function Status(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var UppercaseBase : Dynamic;
	static public var UppercaseDigits : Dynamic;
	static public var WriteFailed : Dynamic;
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
	public function atEnd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function autoDetectUnicode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function codec(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function device(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fieldAlignment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fieldWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function flush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function generateByteOrderMark(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function integerBase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function locale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function numberFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function padChar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function read(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readAll(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readLine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function realNumberNotation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function realNumberPrecision(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function reset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resetStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function seek(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAutoDetectUnicode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCodec(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFieldAlignment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFieldWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGenerateByteOrderMark(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setIntegerBase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLocale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setNumberFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPadChar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRealNumberNotation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRealNumberPrecision(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function skipWhiteSpace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function status(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function string(args:haxe.extern.Rest<Dynamic>):Dynamic;
}