/* This file is generated, do not edit! */
package pyQt5.qtXml;
@:pythonImport("PyQt5.QtXml", "QDomProcessingInstruction") extern class QDomProcessingInstruction {
	static public var AttributeNode : Dynamic;
	static public var BaseNode : Dynamic;
	static public var CDATASectionNode : Dynamic;
	static public var CharacterDataNode : Dynamic;
	static public var CommentNode : Dynamic;
	static public var DocumentFragmentNode : Dynamic;
	static public var DocumentNode : Dynamic;
	static public var DocumentTypeNode : Dynamic;
	static public var ElementNode : Dynamic;
	static public var EncodingFromDocument : Dynamic;
	static public var EncodingFromTextStream : Dynamic;
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
	public function EncodingPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var EntityNode : Dynamic;
	static public var EntityReferenceNode : Dynamic;
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
	public function NodeType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NotationNode : Dynamic;
	static public var ProcessingInstructionNode : Dynamic;
	static public var TextNode : Dynamic;
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
	static public var __hash__ : Dynamic;
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
		appendChild(self, QDomNode) -> QDomNode
	**/
	public function appendChild(QDomNode:Dynamic):Dynamic;
	/**
		attributes(self) -> QDomNamedNodeMap
	**/
	public function attributes():Dynamic;
	/**
		childNodes(self) -> QDomNodeList
	**/
	public function childNodes():Dynamic;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		cloneNode(self, deep: bool = True) -> QDomNode
	**/
	public function cloneNode(?deep:Dynamic):Dynamic;
	/**
		columnNumber(self) -> int
	**/
	public function columnNumber():Int;
	/**
		data(self) -> str
	**/
	public function data():String;
	/**
		firstChild(self) -> QDomNode
	**/
	public function firstChild():Dynamic;
	/**
		firstChildElement(self, tagName: str = '') -> QDomElement
	**/
	public function firstChildElement(?tagName:Dynamic):Dynamic;
	/**
		hasAttributes(self) -> bool
	**/
	public function hasAttributes():Bool;
	/**
		hasChildNodes(self) -> bool
	**/
	public function hasChildNodes():Bool;
	/**
		insertAfter(self, QDomNode, QDomNode) -> QDomNode
	**/
	public function insertAfter(QDomNode:Dynamic, QDomNode:Dynamic):Dynamic;
	/**
		insertBefore(self, QDomNode, QDomNode) -> QDomNode
	**/
	public function insertBefore(QDomNode:Dynamic, QDomNode:Dynamic):Dynamic;
	/**
		isAttr(self) -> bool
	**/
	public function isAttr():Bool;
	/**
		isCDATASection(self) -> bool
	**/
	public function isCDATASection():Bool;
	/**
		isCharacterData(self) -> bool
	**/
	public function isCharacterData():Bool;
	/**
		isComment(self) -> bool
	**/
	public function isComment():Bool;
	/**
		isDocument(self) -> bool
	**/
	public function isDocument():Bool;
	/**
		isDocumentFragment(self) -> bool
	**/
	public function isDocumentFragment():Bool;
	/**
		isDocumentType(self) -> bool
	**/
	public function isDocumentType():Bool;
	/**
		isElement(self) -> bool
	**/
	public function isElement():Bool;
	/**
		isEntity(self) -> bool
	**/
	public function isEntity():Bool;
	/**
		isEntityReference(self) -> bool
	**/
	public function isEntityReference():Bool;
	/**
		isNotation(self) -> bool
	**/
	public function isNotation():Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		isProcessingInstruction(self) -> bool
	**/
	public function isProcessingInstruction():Bool;
	/**
		isSupported(self, str, str) -> bool
	**/
	public function isSupported(str:String, str:String):Bool;
	/**
		isText(self) -> bool
	**/
	public function isText():Bool;
	/**
		lastChild(self) -> QDomNode
	**/
	public function lastChild():Dynamic;
	/**
		lastChildElement(self, tagName: str = '') -> QDomElement
	**/
	public function lastChildElement(?tagName:Dynamic):Dynamic;
	/**
		lineNumber(self) -> int
	**/
	public function lineNumber():Int;
	/**
		localName(self) -> str
	**/
	public function localName():String;
	/**
		namedItem(self, str) -> QDomNode
	**/
	public function namedItem(str:String):Dynamic;
	/**
		namespaceURI(self) -> str
	**/
	public function namespaceURI():String;
	/**
		nextSibling(self) -> QDomNode
	**/
	public function nextSibling():Dynamic;
	/**
		nextSiblingElement(self, taName: str = '') -> QDomElement
	**/
	public function nextSiblingElement(?taName:Dynamic):Dynamic;
	/**
		nodeName(self) -> str
	**/
	public function nodeName():String;
	/**
		nodeType(self) -> QDomNode.NodeType
	**/
	public function nodeType():Dynamic;
	/**
		nodeValue(self) -> str
	**/
	public function nodeValue():String;
	/**
		normalize(self)
	**/
	public function normalize():Void;
	/**
		ownerDocument(self) -> QDomDocument
	**/
	public function ownerDocument():Dynamic;
	/**
		parentNode(self) -> QDomNode
	**/
	public function parentNode():Dynamic;
	/**
		prefix(self) -> str
	**/
	public function prefix():String;
	/**
		previousSibling(self) -> QDomNode
	**/
	public function previousSibling():Dynamic;
	/**
		previousSiblingElement(self, tagName: str = '') -> QDomElement
	**/
	public function previousSiblingElement(?tagName:Dynamic):Dynamic;
	/**
		removeChild(self, QDomNode) -> QDomNode
	**/
	public function removeChild(QDomNode:Dynamic):Dynamic;
	/**
		replaceChild(self, QDomNode, QDomNode) -> QDomNode
	**/
	public function replaceChild(QDomNode:Dynamic, QDomNode:Dynamic):Dynamic;
	/**
		save(self, QTextStream, int, QDomNode.EncodingPolicy = QDomNode.EncodingFromDocument)
	**/
	public function save(QTextStream:Dynamic, int:Int, ?QDomNode:Dynamic):Void;
	/**
		setData(self, str)
	**/
	public function setData(str:String):Void;
	/**
		setNodeValue(self, str)
	**/
	public function setNodeValue(str:String):Void;
	/**
		setPrefix(self, str)
	**/
	public function setPrefix(str:String):Void;
	/**
		target(self) -> str
	**/
	public function target():String;
	/**
		toAttr(self) -> QDomAttr
	**/
	public function toAttr():Dynamic;
	/**
		toCDATASection(self) -> QDomCDATASection
	**/
	public function toCDATASection():Dynamic;
	/**
		toCharacterData(self) -> QDomCharacterData
	**/
	public function toCharacterData():Dynamic;
	/**
		toComment(self) -> QDomComment
	**/
	public function toComment():Dynamic;
	/**
		toDocument(self) -> QDomDocument
	**/
	public function toDocument():Dynamic;
	/**
		toDocumentFragment(self) -> QDomDocumentFragment
	**/
	public function toDocumentFragment():Dynamic;
	/**
		toDocumentType(self) -> QDomDocumentType
	**/
	public function toDocumentType():Dynamic;
	/**
		toElement(self) -> QDomElement
	**/
	public function toElement():Dynamic;
	/**
		toEntity(self) -> QDomEntity
	**/
	public function toEntity():Dynamic;
	/**
		toEntityReference(self) -> QDomEntityReference
	**/
	public function toEntityReference():Dynamic;
	/**
		toNotation(self) -> QDomNotation
	**/
	public function toNotation():Dynamic;
	/**
		toProcessingInstruction(self) -> QDomProcessingInstruction
	**/
	public function toProcessingInstruction():Dynamic;
	/**
		toText(self) -> QDomText
	**/
	public function toText():Dynamic;
}