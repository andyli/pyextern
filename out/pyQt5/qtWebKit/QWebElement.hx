/* This file is generated, do not edit! */
package pyQt5.qtWebKit;
@:pythonImport("PyQt5.QtWebKit", "QWebElement") extern class QWebElement {
	static public var CascadedStyle : Dynamic;
	static public var ComputedStyle : Dynamic;
	static public var InlineStyle : Dynamic;
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
	public function StyleResolveStrategy(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		addClass(self, str)
	**/
	public function addClass(str:String):Void;
	/**
		appendInside(self, str)
		appendInside(self, QWebElement)
	**/
	public function appendInside(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		appendOutside(self, str)
		appendOutside(self, QWebElement)
	**/
	public function appendOutside(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		attribute(self, str, defaultValue: str = '') -> str
	**/
	public function attribute(str:String, ?defaultValue:Dynamic):String;
	/**
		attributeNS(self, str, str, defaultValue: str = '') -> str
	**/
	public function attributeNS(str:String, str:String, ?defaultValue:Dynamic):String;
	/**
		attributeNames(self, namespaceUri: str = '') -> List[str]
	**/
	public function attributeNames(?namespaceUri:Dynamic):Dynamic;
	/**
		classes(self) -> List[str]
	**/
	public function classes():Dynamic;
	/**
		clone(self) -> QWebElement
	**/
	public function clone():Dynamic;
	/**
		document(self) -> QWebElement
	**/
	public function document():Dynamic;
	/**
		encloseContentsWith(self, QWebElement)
		encloseContentsWith(self, str)
	**/
	public function encloseContentsWith(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		encloseWith(self, str)
		encloseWith(self, QWebElement)
	**/
	public function encloseWith(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		evaluateJavaScript(self, str) -> Any
	**/
	public function evaluateJavaScript(str:String):Dynamic;
	/**
		findAll(self, str) -> QWebElementCollection
	**/
	public function findAll(str:String):Dynamic;
	/**
		findFirst(self, str) -> QWebElement
	**/
	public function findFirst(str:String):Dynamic;
	/**
		firstChild(self) -> QWebElement
	**/
	public function firstChild():Dynamic;
	/**
		geometry(self) -> QRect
	**/
	public function geometry():Dynamic;
	/**
		hasAttribute(self, str) -> bool
	**/
	public function hasAttribute(str:String):Bool;
	/**
		hasAttributeNS(self, str, str) -> bool
	**/
	public function hasAttributeNS(str:String, str:String):Bool;
	/**
		hasAttributes(self) -> bool
	**/
	public function hasAttributes():Bool;
	/**
		hasClass(self, str) -> bool
	**/
	public function hasClass(str:String):Bool;
	/**
		hasFocus(self) -> bool
	**/
	public function hasFocus():Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		lastChild(self) -> QWebElement
	**/
	public function lastChild():Dynamic;
	/**
		localName(self) -> str
	**/
	public function localName():String;
	/**
		namespaceUri(self) -> str
	**/
	public function namespaceUri():String;
	/**
		nextSibling(self) -> QWebElement
	**/
	public function nextSibling():Dynamic;
	/**
		parent(self) -> QWebElement
	**/
	public function parent():Dynamic;
	/**
		prefix(self) -> str
	**/
	public function prefix():String;
	/**
		prependInside(self, str)
		prependInside(self, QWebElement)
	**/
	public function prependInside(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		prependOutside(self, str)
		prependOutside(self, QWebElement)
	**/
	public function prependOutside(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		previousSibling(self) -> QWebElement
	**/
	public function previousSibling():Dynamic;
	/**
		removeAllChildren(self)
	**/
	public function removeAllChildren():Void;
	/**
		removeAttribute(self, str)
	**/
	public function removeAttribute(str:String):Void;
	/**
		removeAttributeNS(self, str, str)
	**/
	public function removeAttributeNS(str:String, str:String):Void;
	/**
		removeClass(self, str)
	**/
	public function removeClass(str:String):Void;
	/**
		removeFromDocument(self)
	**/
	public function removeFromDocument():Void;
	/**
		render(self, QPainter)
		render(self, QPainter, QRect)
	**/
	public function render(QPainter:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		replace(self, str)
		replace(self, QWebElement)
	**/
	public function replace(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setAttribute(self, str, str)
	**/
	public function setAttribute(str:String, str:String):Void;
	/**
		setAttributeNS(self, str, str, str)
	**/
	public function setAttributeNS(str:String, str:String, str:String):Void;
	/**
		setFocus(self)
	**/
	public function setFocus():Void;
	/**
		setInnerXml(self, str)
	**/
	public function setInnerXml(str:String):Void;
	/**
		setOuterXml(self, str)
	**/
	public function setOuterXml(str:String):Void;
	/**
		setPlainText(self, str)
	**/
	public function setPlainText(str:String):Void;
	/**
		setStyleProperty(self, str, str)
	**/
	public function setStyleProperty(str:String, str:String):Void;
	/**
		styleProperty(self, str, QWebElement.StyleResolveStrategy) -> str
	**/
	public function styleProperty(str:String, QWebElement:Dynamic):String;
	/**
		tagName(self) -> str
	**/
	public function tagName():String;
	/**
		takeFromDocument(self) -> QWebElement
	**/
	public function takeFromDocument():Dynamic;
	/**
		toInnerXml(self) -> str
	**/
	public function toInnerXml():String;
	/**
		toOuterXml(self) -> str
	**/
	public function toOuterXml():String;
	/**
		toPlainText(self) -> str
	**/
	public function toPlainText():String;
	/**
		toggleClass(self, str)
	**/
	public function toggleClass(str:String):Void;
	/**
		webFrame(self) -> QWebFrame
	**/
	public function webFrame():Dynamic;
}