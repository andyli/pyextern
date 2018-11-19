/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QXmlStreamWriter") extern class QXmlStreamWriter {
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
		autoFormatting(self) -> bool
	**/
	public function autoFormatting():Bool;
	/**
		autoFormattingIndent(self) -> int
	**/
	public function autoFormattingIndent():Int;
	/**
		codec(self) -> QTextCodec
	**/
	public function codec():Dynamic;
	/**
		device(self) -> QIODevice
	**/
	public function device():Dynamic;
	/**
		hasError(self) -> bool
	**/
	public function hasError():Bool;
	/**
		setAutoFormatting(self, bool)
	**/
	public function setAutoFormatting(bool:Bool):Void;
	/**
		setAutoFormattingIndent(self, int)
	**/
	public function setAutoFormattingIndent(int:Int):Void;
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
		writeAttribute(self, str, str)
		writeAttribute(self, str, str, str)
		writeAttribute(self, QXmlStreamAttribute)
	**/
	public function writeAttribute(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		writeAttributes(self, QXmlStreamAttributes)
	**/
	public function writeAttributes(QXmlStreamAttributes:Dynamic):Void;
	/**
		writeCDATA(self, str)
	**/
	public function writeCDATA(str:String):Void;
	/**
		writeCharacters(self, str)
	**/
	public function writeCharacters(str:String):Void;
	/**
		writeComment(self, str)
	**/
	public function writeComment(str:String):Void;
	/**
		writeCurrentToken(self, QXmlStreamReader)
	**/
	public function writeCurrentToken(QXmlStreamReader:Dynamic):Void;
	/**
		writeDTD(self, str)
	**/
	public function writeDTD(str:String):Void;
	/**
		writeDefaultNamespace(self, str)
	**/
	public function writeDefaultNamespace(str:String):Void;
	/**
		writeEmptyElement(self, str)
		writeEmptyElement(self, str, str)
	**/
	public function writeEmptyElement(str:String, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		writeEndDocument(self)
	**/
	public function writeEndDocument():Void;
	/**
		writeEndElement(self)
	**/
	public function writeEndElement():Void;
	/**
		writeEntityReference(self, str)
	**/
	public function writeEntityReference(str:String):Void;
	/**
		writeNamespace(self, str, prefix: str = '')
	**/
	public function writeNamespace(str:String, ?prefix:Dynamic):Void;
	/**
		writeProcessingInstruction(self, str, data: str = '')
	**/
	public function writeProcessingInstruction(str:String, ?data:Dynamic):Void;
	/**
		writeStartDocument(self)
		writeStartDocument(self, str)
		writeStartDocument(self, str, bool)
	**/
	public function writeStartDocument(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		writeStartElement(self, str)
		writeStartElement(self, str, str)
	**/
	public function writeStartElement(str:String, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		writeTextElement(self, str, str)
		writeTextElement(self, str, str, str)
	**/
	public function writeTextElement(str:String, str:String, args:haxe.extern.Rest<Dynamic>):Void;
}