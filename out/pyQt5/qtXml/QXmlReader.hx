/* This file is generated, do not edit! */
package pyQt5.qtXml;
@:pythonImport("PyQt5.QtXml", "QXmlReader") extern class QXmlReader {
	/**
		DTDHandler(self) -> QXmlDTDHandler
	**/
	public function DTDHandler():Dynamic;
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
		contentHandler(self) -> QXmlContentHandler
	**/
	public function contentHandler():Dynamic;
	/**
		declHandler(self) -> QXmlDeclHandler
	**/
	public function declHandler():Dynamic;
	/**
		entityResolver(self) -> QXmlEntityResolver
	**/
	public function entityResolver():Dynamic;
	/**
		errorHandler(self) -> QXmlErrorHandler
	**/
	public function errorHandler():Dynamic;
	/**
		feature(self, str) -> Tuple[bool, bool]
	**/
	public function feature(str:String):Dynamic;
	/**
		hasFeature(self, str) -> bool
	**/
	public function hasFeature(str:String):Bool;
	/**
		hasProperty(self, str) -> bool
	**/
	public function hasProperty(str:String):Bool;
	/**
		lexicalHandler(self) -> QXmlLexicalHandler
	**/
	public function lexicalHandler():Dynamic;
	/**
		parse(self, QXmlInputSource) -> bool
		parse(self, QXmlInputSource) -> bool
	**/
	public function parse(QXmlInputSource:Dynamic):Bool;
	/**
		property(self, str) -> Tuple[sip.voidptr, bool]
	**/
	public function property(str:String):Dynamic;
	/**
		setContentHandler(self, QXmlContentHandler)
	**/
	public function setContentHandler(QXmlContentHandler:Dynamic):Void;
	/**
		setDTDHandler(self, QXmlDTDHandler)
	**/
	public function setDTDHandler(QXmlDTDHandler:Dynamic):Void;
	/**
		setDeclHandler(self, QXmlDeclHandler)
	**/
	public function setDeclHandler(QXmlDeclHandler:Dynamic):Void;
	/**
		setEntityResolver(self, QXmlEntityResolver)
	**/
	public function setEntityResolver(QXmlEntityResolver:Dynamic):Void;
	/**
		setErrorHandler(self, QXmlErrorHandler)
	**/
	public function setErrorHandler(QXmlErrorHandler:Dynamic):Void;
	/**
		setFeature(self, str, bool)
	**/
	public function setFeature(str:String, bool:Bool):Void;
	/**
		setLexicalHandler(self, QXmlLexicalHandler)
	**/
	public function setLexicalHandler(QXmlLexicalHandler:Dynamic):Void;
	/**
		setProperty(self, str, sip.voidptr)
	**/
	public function setProperty(str:String, sip:Dynamic):Void;
}