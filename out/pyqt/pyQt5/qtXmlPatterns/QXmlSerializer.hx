/* This file is generated, do not edit! */
package pyQt5.qtXmlPatterns;
@:pythonImport("PyQt5.QtXmlPatterns", "QXmlSerializer") extern class QXmlSerializer {
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
		atomicValue(self, Any)
	**/
	public function atomicValue(Any:Dynamic):Void;
	/**
		attribute(self, QXmlName, str)
	**/
	public function attribute(QXmlName:Dynamic, str:String):Void;
	/**
		characters(self, str)
	**/
	public function characters(str:String):Void;
	/**
		codec(self) -> QTextCodec
	**/
	public function codec():Dynamic;
	/**
		comment(self, str)
	**/
	public function comment(str:String):Void;
	/**
		endDocument(self)
	**/
	public function endDocument():Void;
	/**
		endElement(self)
	**/
	public function endElement():Void;
	/**
		endOfSequence(self)
	**/
	public function endOfSequence():Void;
	/**
		namespaceBinding(self, QXmlName)
	**/
	public function namespaceBinding(QXmlName:Dynamic):Void;
	/**
		outputDevice(self) -> QIODevice
	**/
	public function outputDevice():Dynamic;
	/**
		processingInstruction(self, QXmlName, str)
	**/
	public function processingInstruction(QXmlName:Dynamic, str:String):Void;
	/**
		setCodec(self, QTextCodec)
	**/
	public function setCodec(QTextCodec:Dynamic):Void;
	/**
		startDocument(self)
	**/
	public function startDocument():Void;
	/**
		startElement(self, QXmlName)
	**/
	public function startElement(QXmlName:Dynamic):Void;
	/**
		startOfSequence(self)
	**/
	public function startOfSequence():Void;
}