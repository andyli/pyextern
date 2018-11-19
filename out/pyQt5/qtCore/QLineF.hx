/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QLineF") extern class QLineF {
	static public var BoundedIntersection : Dynamic;
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
	public function IntersectType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NoIntersection : Dynamic;
	static public var UnboundedIntersection : Dynamic;
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
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
		angle(self) -> float
	**/
	public function angle():Float;
	/**
		angleTo(self, QLineF) -> float
	**/
	public function angleTo(QLineF:Dynamic):Float;
	/**
		dx(self) -> float
	**/
	public function dx():Float;
	/**
		dy(self) -> float
	**/
	public function dy():Float;
	/**
		fromPolar(float, float) -> QLineF
	**/
	static public function fromPolar(float:Float, float:Float):Dynamic;
	/**
		intersect(self, QLineF, Union[QPointF, QPoint]) -> QLineF.IntersectType
	**/
	public function intersect(QLineF:Dynamic, Union:Dynamic):Dynamic;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		length(self) -> float
	**/
	public function length():Float;
	/**
		normalVector(self) -> QLineF
	**/
	public function normalVector():Dynamic;
	/**
		p1(self) -> QPointF
	**/
	public function p1():Dynamic;
	/**
		p2(self) -> QPointF
	**/
	public function p2():Dynamic;
	/**
		pointAt(self, float) -> QPointF
	**/
	public function pointAt(float:Float):Dynamic;
	/**
		setAngle(self, float)
	**/
	public function setAngle(float:Float):Void;
	/**
		setLength(self, float)
	**/
	public function setLength(float:Float):Void;
	/**
		setLine(self, float, float, float, float)
	**/
	public function setLine(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		setP1(self, Union[QPointF, QPoint])
	**/
	public function setP1(Union:Dynamic):Void;
	/**
		setP2(self, Union[QPointF, QPoint])
	**/
	public function setP2(Union:Dynamic):Void;
	/**
		setPoints(self, Union[QPointF, QPoint], Union[QPointF, QPoint])
	**/
	public function setPoints(Union:Dynamic, Union:Dynamic):Void;
	/**
		toLine(self) -> QLine
	**/
	public function toLine():Dynamic;
	/**
		translate(self, Union[QPointF, QPoint])
		translate(self, float, float)
	**/
	public function translate(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		translated(self, Union[QPointF, QPoint]) -> QLineF
		translated(self, float, float) -> QLineF
	**/
	public function translated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unitVector(self) -> QLineF
	**/
	public function unitVector():Dynamic;
	/**
		x1(self) -> float
	**/
	public function x1():Float;
	/**
		x2(self) -> float
	**/
	public function x2():Float;
	/**
		y1(self) -> float
	**/
	public function y1():Float;
	/**
		y2(self) -> float
	**/
	public function y2():Float;
}