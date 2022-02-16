/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QPolygonF") extern class QPolygonF {
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
		append(self, Union[QPointF, QPoint])
	**/
	public function append(Union:Dynamic):Void;
	/**
		at(self, int) -> QPointF
	**/
	public function at(int:Int):Dynamic;
	/**
		boundingRect(self) -> QRectF
	**/
	public function boundingRect():Dynamic;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		contains(self, Union[QPointF, QPoint]) -> bool
	**/
	public function contains(Union:Dynamic):Bool;
	/**
		containsPoint(self, Union[QPointF, QPoint], Qt.FillRule) -> bool
	**/
	public function containsPoint(Union:Dynamic, Qt:Dynamic):Bool;
	/**
		count(self, Union[QPointF, QPoint]) -> int
		count(self) -> int
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Int;
	/**
		data(self) -> sip.voidptr
	**/
	public function data():Dynamic;
	/**
		fill(self, Union[QPointF, QPoint], size: int = -1)
	**/
	public function fill(Union:Dynamic, ?size:Dynamic):Void;
	/**
		first(self) -> QPointF
	**/
	public function first():Dynamic;
	/**
		indexOf(self, Union[QPointF, QPoint], from_: int = 0) -> int
	**/
	public function indexOf(Union:Dynamic, ?from:Dynamic):Int;
	/**
		insert(self, int, Union[QPointF, QPoint])
	**/
	public function insert(int:Int, Union:Dynamic):Void;
	/**
		intersected(self, QPolygonF) -> QPolygonF
	**/
	public function intersected(QPolygonF:Dynamic):Dynamic;
	/**
		intersects(self, QPolygonF) -> bool
	**/
	public function intersects(QPolygonF:Dynamic):Bool;
	/**
		isClosed(self) -> bool
	**/
	public function isClosed():Bool;
	/**
		isEmpty(self) -> bool
	**/
	public function isEmpty():Bool;
	/**
		last(self) -> QPointF
	**/
	public function last():Dynamic;
	/**
		lastIndexOf(self, Union[QPointF, QPoint], from_: int = -1) -> int
	**/
	public function lastIndexOf(Union:Dynamic, ?from:Dynamic):Int;
	/**
		mid(self, int, length: int = -1) -> QPolygonF
	**/
	public function mid(int:Int, ?length:Dynamic):Dynamic;
	/**
		prepend(self, Union[QPointF, QPoint])
	**/
	public function prepend(Union:Dynamic):Void;
	/**
		remove(self, int)
		remove(self, int, int)
	**/
	public function remove(int:Int, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		replace(self, int, Union[QPointF, QPoint])
	**/
	public function replace(int:Int, Union:Dynamic):Void;
	/**
		size(self) -> int
	**/
	public function size():Int;
	/**
		subtracted(self, QPolygonF) -> QPolygonF
	**/
	public function subtracted(QPolygonF:Dynamic):Dynamic;
	/**
		swap(self, QPolygonF)
	**/
	public function swap(QPolygonF:Dynamic):Void;
	/**
		toPolygon(self) -> QPolygon
	**/
	public function toPolygon():Dynamic;
	/**
		translate(self, Union[QPointF, QPoint])
		translate(self, float, float)
	**/
	public function translate(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		translated(self, Union[QPointF, QPoint]) -> QPolygonF
		translated(self, float, float) -> QPolygonF
	**/
	public function translated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		united(self, QPolygonF) -> QPolygonF
	**/
	public function united(QPolygonF:Dynamic):Dynamic;
	/**
		value(self, int) -> QPointF
		value(self, int, Union[QPointF, QPoint]) -> QPointF
	**/
	public function value(int:Int, args:haxe.extern.Rest<Dynamic>):Dynamic;
}