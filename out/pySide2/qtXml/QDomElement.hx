/* This file is generated, do not edit! */
package pySide2.qtXml;
@:pythonImport("PySide2.QtXml", "QDomElement") extern class QDomElement {
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
	public function EncodingPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var EntityNode : Dynamic;
	static public var EntityReferenceNode : Dynamic;
	public function NodeType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NotationNode : Dynamic;
	static public var ProcessingInstructionNode : Dynamic;
	static public var TextNode : Dynamic;
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function appendChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function attribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function attributeNS(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function attributeNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function attributeNodeNS(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function attributes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childNodes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cloneNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function columnNumber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function elementsByTagName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function elementsByTagNameNS(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function firstChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function firstChildElement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasAttributeNS(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasAttributes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasChildNodes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertAfter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertBefore(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isAttr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isCDATASection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isCharacterData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isComment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isDocument(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isDocumentFragment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isDocumentType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isElement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEntity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEntityReference(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isNotation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isNull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isProcessingInstruction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSupported(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lastChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lastChildElement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lineNumber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function localName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function namedItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function namespaceURI(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nextSibling(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nextSiblingElement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nodeName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nodeType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nodeValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function normalize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ownerDocument(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parentNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function prefix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function previousSibling(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function previousSiblingElement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeAttributeNS(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeAttributeNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function replaceChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function save(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAttributeNS(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAttributeNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAttributeNodeNS(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setNodeValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPrefix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTagName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tagName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function text(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toAttr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toCDATASection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toCharacterData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toComment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toDocument(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toDocumentFragment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toDocumentType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toElement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toEntity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toEntityReference(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toNotation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toProcessingInstruction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toText(args:haxe.extern.Rest<Dynamic>):Dynamic;
}