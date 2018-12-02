/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QPainterPath") extern class QPainterPath {
	static public var CurveToDataElement : Dynamic;
	static public var CurveToElement : Dynamic;
	public function Element(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ElementType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var LineToElement : Dynamic;
	static public var MoveToElement : Dynamic;
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	/**
		Return self&value.
	**/
	public function __and__(value:Dynamic):Dynamic;
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
		Return self<<value.
	**/
	public function __lshift__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
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
		Return value<<self.
	**/
	public function __rlshift__(value:Dynamic):Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Return value|self.
	**/
	public function __ror__(value:Dynamic):Dynamic;
	/**
		Return value>>self.
	**/
	public function __rrshift__(value:Dynamic):Dynamic;
	/**
		Return self>>value.
	**/
	public function __rshift__(value:Dynamic):Dynamic;
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
	public function addEllipse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addPolygon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addRegion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addRoundRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addRoundedRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function angleAtPercent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function arcMoveTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function arcTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function boundingRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function closeSubpath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contains(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function controlPointRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cubicTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentPosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function elementAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function elementCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fillRule(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function intersected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function intersects(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEmpty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function length(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lineTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function percentAtLength(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pointAtPercent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function quadTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setElementPositionAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFillRule(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function simplified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function slopeAtPercent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function subtracted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function subtractedInverted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toFillPolygon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toFillPolygons(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toReversed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toSubpathPolygons(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function translate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function translated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function united(args:haxe.extern.Rest<Dynamic>):Dynamic;
}