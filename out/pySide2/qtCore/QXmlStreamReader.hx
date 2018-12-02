/* This file is generated, do not edit! */
package pySide2.qtCore;
@:pythonImport("PySide2.QtCore", "QXmlStreamReader") extern class QXmlStreamReader {
	static public var Characters : Dynamic;
	static public var Comment : Dynamic;
	static public var CustomError : Dynamic;
	static public var DTD : Dynamic;
	static public var EndDocument : Dynamic;
	static public var EndElement : Dynamic;
	static public var EntityReference : Dynamic;
	public function Error(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ErrorOnUnexpectedElement : Dynamic;
	static public var IncludeChildElements : Dynamic;
	static public var Invalid : Dynamic;
	static public var NoError : Dynamic;
	static public var NoToken : Dynamic;
	static public var NotWellFormedError : Dynamic;
	static public var PrematureEndOfDocumentError : Dynamic;
	static public var ProcessingInstruction : Dynamic;
	public function ReadElementTextBehaviour(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SkipChildElements : Dynamic;
	static public var StartDocument : Dynamic;
	static public var StartElement : Dynamic;
	public function TokenType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var UnexpectedElementError : Dynamic;
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
	public function addData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addExtraNamespaceDeclaration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addExtraNamespaceDeclarations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function atEnd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function attributes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function characterOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function columnNumber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function device(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function documentEncoding(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function documentVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dtdName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dtdPublicId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dtdSystemId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function entityDeclarations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function entityResolver(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function error(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function errorString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isCDATA(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isCharacters(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isComment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isDTD(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEndDocument(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEndElement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEntityReference(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isProcessingInstruction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isStandaloneDocument(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isStartDocument(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isStartElement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWhitespace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lineNumber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function namespaceDeclarations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function namespaceProcessing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function namespaceUri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function notationDeclarations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function prefix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function processingInstructionData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function processingInstructionTarget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function qualifiedName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function raiseError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readElementText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readNext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readNextStartElement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setEntityResolver(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setNamespaceProcessing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function skipCurrentElement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function text(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tokenString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tokenType(args:haxe.extern.Rest<Dynamic>):Dynamic;
}