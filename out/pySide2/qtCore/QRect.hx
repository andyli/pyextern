/* This file is generated, do not edit! */
package pySide2.qtCore;
@:pythonImport("PySide2.QtCore", "QRect") extern class QRect {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	/**
		Return self&value.
	**/
	public function __and__(value:Dynamic):Dynamic;
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
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Return self+=value.
	**/
	public function __iadd__(value:Dynamic):Dynamic;
	/**
		Return self&=value.
	**/
	public function __iand__(value:Dynamic):Dynamic;
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
		Return self|=value.
	**/
	public function __ior__(value:Dynamic):Dynamic;
	/**
		Return self-=value.
	**/
	public function __isub__(value:Dynamic):Dynamic;
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
		Return self|value.
	**/
	public function __or__(value:Dynamic):Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
	/**
		Return value&self.
	**/
	public function __rand__(value:Dynamic):Dynamic;
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
		Return value|self.
	**/
	public function __ror__(value:Dynamic):Dynamic;
	/**
		Return value-self.
	**/
	public function __rsub__(value:Dynamic):Dynamic;
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
		Return self-value.
	**/
	public function __sub__(value:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function adjust(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function adjusted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bottom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bottomLeft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bottomRight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function center(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contains(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getCoords(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function height(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function intersected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function intersects(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEmpty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isNull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function left(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function marginsAdded(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function marginsRemoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveBottom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveBottomLeft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveBottomRight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveCenter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveLeft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveRight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveTop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveTopLeft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveTopRight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function normalized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function right(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBottom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBottomLeft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBottomRight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCoords(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLeft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTopLeft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTopRight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function top(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function topLeft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function topRight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function translate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function translated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function united(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function width(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function x(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function y(args:haxe.extern.Rest<Dynamic>):Dynamic;
}