/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QPolygon") extern class QPolygon {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Implement self+=value.
	**/
	public function __iadd__(value:Dynamic):Dynamic;
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
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<<value.
	**/
	public function __lshift__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
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
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
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
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
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
		append(self, QPoint)
	**/
	public function append(QPoint:Dynamic):Void;
	/**
		at(self, int) -> QPoint
	**/
	public function at(int:Int):Dynamic;
	/**
		boundingRect(self) -> QRect
	**/
	public function boundingRect():Dynamic;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		contains(self, QPoint) -> bool
	**/
	public function contains(QPoint:Dynamic):Bool;
	/**
		containsPoint(self, QPoint, Qt.FillRule) -> bool
	**/
	public function containsPoint(QPoint:Dynamic, Qt:Dynamic):Bool;
	/**
		count(self, QPoint) -> int
		count(self) -> int
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Int;
	/**
		data(self) -> sip.voidptr
	**/
	public function data():Dynamic;
	/**
		fill(self, QPoint, size: int = -1)
	**/
	public function fill(QPoint:Dynamic, ?size:Dynamic):Void;
	/**
		first(self) -> QPoint
	**/
	public function first():Dynamic;
	/**
		indexOf(self, QPoint, from_: int = 0) -> int
	**/
	public function indexOf(QPoint:Dynamic, ?from:Dynamic):Int;
	/**
		insert(self, int, QPoint)
	**/
	public function insert(int:Int, QPoint:Dynamic):Void;
	/**
		intersected(self, QPolygon) -> QPolygon
	**/
	public function intersected(QPolygon:Dynamic):Dynamic;
	/**
		intersects(self, QPolygon) -> bool
	**/
	public function intersects(QPolygon:Dynamic):Bool;
	/**
		isEmpty(self) -> bool
	**/
	public function isEmpty():Bool;
	/**
		last(self) -> QPoint
	**/
	public function last():Dynamic;
	/**
		lastIndexOf(self, QPoint, from_: int = -1) -> int
	**/
	public function lastIndexOf(QPoint:Dynamic, ?from:Dynamic):Int;
	/**
		mid(self, int, length: int = -1) -> QPolygon
	**/
	public function mid(int:Int, ?length:Dynamic):Dynamic;
	/**
		point(self, int) -> QPoint
	**/
	public function point(int:Int):Dynamic;
	/**
		prepend(self, QPoint)
	**/
	public function prepend(QPoint:Dynamic):Void;
	/**
		putPoints(self, int, int, int, *)
		putPoints(self, int, int, QPolygon, from_: int = 0)
	**/
	public function putPoints(int:Int, int:Int, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		remove(self, int)
		remove(self, int, int)
	**/
	public function remove(int:Int, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		replace(self, int, QPoint)
	**/
	public function replace(int:Int, QPoint:Dynamic):Void;
	/**
		setPoint(self, int, QPoint)
		setPoint(self, int, int, int)
	**/
	public function setPoint(int:Int, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setPoints(self, List[int])
		setPoints(self, int, int, *)
	**/
	public function setPoints(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		size(self) -> int
	**/
	public function size():Int;
	/**
		subtracted(self, QPolygon) -> QPolygon
	**/
	public function subtracted(QPolygon:Dynamic):Dynamic;
	/**
		swap(self, QPolygon)
	**/
	public function swap(QPolygon:Dynamic):Void;
	/**
		translate(self, int, int)
		translate(self, QPoint)
	**/
	public function translate(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		translated(self, int, int) -> QPolygon
		translated(self, QPoint) -> QPolygon
	**/
	public function translated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		united(self, QPolygon) -> QPolygon
	**/
	public function united(QPolygon:Dynamic):Dynamic;
	/**
		value(self, int) -> QPoint
		value(self, int, QPoint) -> QPoint
	**/
	public function value(int:Int, args:haxe.extern.Rest<Dynamic>):Dynamic;
}