/* This file is generated, do not edit! */
package pyQt5.qtXml;
@:pythonImport("PyQt5.QtXml", "QXmlDefaultHandler") extern class QXmlDefaultHandler {
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
		attributeDecl(self, str, str, str, str, str) -> bool
	**/
	public function attributeDecl(str:String, str:String, str:String, str:String, str:String):Bool;
	/**
		characters(self, str) -> bool
	**/
	public function characters(str:String):Bool;
	/**
		comment(self, str) -> bool
	**/
	public function comment(str:String):Bool;
	/**
		endCDATA(self) -> bool
	**/
	public function endCDATA():Bool;
	/**
		endDTD(self) -> bool
	**/
	public function endDTD():Bool;
	/**
		endDocument(self) -> bool
	**/
	public function endDocument():Bool;
	/**
		endElement(self, str, str, str) -> bool
	**/
	public function endElement(str:String, str:String, str:String):Bool;
	/**
		endEntity(self, str) -> bool
	**/
	public function endEntity(str:String):Bool;
	/**
		endPrefixMapping(self, str) -> bool
	**/
	public function endPrefixMapping(str:String):Bool;
	/**
		error(self, QXmlParseException) -> bool
	**/
	public function error(QXmlParseException:Dynamic):Bool;
	/**
		errorString(self) -> str
	**/
	public function errorString():String;
	/**
		externalEntityDecl(self, str, str, str) -> bool
	**/
	public function externalEntityDecl(str:String, str:String, str:String):Bool;
	/**
		fatalError(self, QXmlParseException) -> bool
	**/
	public function fatalError(QXmlParseException:Dynamic):Bool;
	/**
		ignorableWhitespace(self, str) -> bool
	**/
	public function ignorableWhitespace(str:String):Bool;
	/**
		internalEntityDecl(self, str, str) -> bool
	**/
	public function internalEntityDecl(str:String, str:String):Bool;
	/**
		notationDecl(self, str, str, str) -> bool
	**/
	public function notationDecl(str:String, str:String, str:String):Bool;
	/**
		processingInstruction(self, str, str) -> bool
	**/
	public function processingInstruction(str:String, str:String):Bool;
	/**
		resolveEntity(self, str, str) -> Tuple[bool, QXmlInputSource]
	**/
	public function resolveEntity(str:String, str:String):Dynamic;
	/**
		setDocumentLocator(self, QXmlLocator)
	**/
	public function setDocumentLocator(QXmlLocator:Dynamic):Void;
	/**
		skippedEntity(self, str) -> bool
	**/
	public function skippedEntity(str:String):Bool;
	/**
		startCDATA(self) -> bool
	**/
	public function startCDATA():Bool;
	/**
		startDTD(self, str, str, str) -> bool
	**/
	public function startDTD(str:String, str:String, str:String):Bool;
	/**
		startDocument(self) -> bool
	**/
	public function startDocument():Bool;
	/**
		startElement(self, str, str, str, QXmlAttributes) -> bool
	**/
	public function startElement(str:String, str:String, str:String, QXmlAttributes:Dynamic):Bool;
	/**
		startEntity(self, str) -> bool
	**/
	public function startEntity(str:String):Bool;
	/**
		startPrefixMapping(self, str, str) -> bool
	**/
	public function startPrefixMapping(str:String, str:String):Bool;
	/**
		unparsedEntityDecl(self, str, str, str, str) -> bool
	**/
	public function unparsedEntityDecl(str:String, str:String, str:String, str:String):Bool;
	/**
		warning(self, QXmlParseException) -> bool
	**/
	public function warning(QXmlParseException:Dynamic):Bool;
}