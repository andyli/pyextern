/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QVariant") extern class QVariant {
	static public var BitArray : Dynamic;
	static public var Bitmap : Dynamic;
	static public var Bool : Dynamic;
	static public var Brush : Dynamic;
	static public var ByteArray : Dynamic;
	static public var Char : Dynamic;
	static public var Color : Dynamic;
	static public var Cursor : Dynamic;
	static public var Date : Dynamic;
	static public var DateTime : Dynamic;
	static public var Double : Dynamic;
	static public var EasingCurve : Dynamic;
	static public var Font : Dynamic;
	static public var Hash : Dynamic;
	static public var Icon : Dynamic;
	static public var Image : Dynamic;
	static public var Int : Dynamic;
	static public var Invalid : Dynamic;
	static public var KeySequence : Dynamic;
	static public var Line : Dynamic;
	static public var LineF : Dynamic;
	static public var List : Dynamic;
	static public var Locale : Dynamic;
	static public var LongLong : Dynamic;
	static public var Map : Dynamic;
	static public var Matrix : Dynamic;
	static public var Matrix4x4 : Dynamic;
	static public var ModelIndex : Dynamic;
	static public var Palette : Dynamic;
	static public var Pen : Dynamic;
	static public var PersistentModelIndex : Dynamic;
	static public var Pixmap : Dynamic;
	static public var Point : Dynamic;
	static public var PointF : Dynamic;
	static public var Polygon : Dynamic;
	static public var PolygonF : Dynamic;
	static public var Quaternion : Dynamic;
	static public var Rect : Dynamic;
	static public var RectF : Dynamic;
	static public var RegExp : Dynamic;
	static public var Region : Dynamic;
	static public var RegularExpression : Dynamic;
	static public var Size : Dynamic;
	static public var SizeF : Dynamic;
	static public var SizePolicy : Dynamic;
	static public var String : Dynamic;
	static public var StringList : Dynamic;
	static public var TextFormat : Dynamic;
	static public var TextLength : Dynamic;
	static public var Time : Dynamic;
	static public var Transform : Dynamic;
	/**
		int([x]) -> integer
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
	public function Type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var UInt : Dynamic;
	static public var ULongLong : Dynamic;
	static public var Url : Dynamic;
	static public var UserType : Dynamic;
	static public var Uuid : Dynamic;
	static public var Vector2D : Dynamic;
	static public var Vector3D : Dynamic;
	static public var Vector4D : Dynamic;
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
		canConvert(self, int) -> bool
	**/
	public function canConvert(int:Int):Bool;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		convert(self, int) -> bool
	**/
	public function convert(int:Int):Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		load(self, QDataStream)
	**/
	public function load(QDataStream:Dynamic):Void;
	/**
		nameToType(str) -> QVariant.Type
	**/
	static public function nameToType(str:String):Dynamic;
	/**
		save(self, QDataStream)
	**/
	public function save(QDataStream:Dynamic):Void;
	/**
		swap(self, QVariant)
	**/
	public function swap(QVariant:Dynamic):Void;
	/**
		type(self) -> QVariant.Type
	**/
	public function type():Dynamic;
	/**
		typeName(self) -> str
	**/
	public function typeName():String;
	/**
		typeToName(int) -> str
	**/
	static public function typeToName(int:Int):String;
	/**
		userType(self) -> int
	**/
	public function userType():Int;
	/**
		value(self) -> object
	**/
	public function value():Dynamic;
}