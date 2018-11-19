/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QMetaType") extern class QMetaType {
	static public var Bool : Dynamic;
	static public var Char : Dynamic;
	static public var Double : Dynamic;
	static public var FirstGuiType : Dynamic;
	static public var Float : Dynamic;
	static public var Int : Dynamic;
	static public var IsGadget : Dynamic;
	static public var LastCoreType : Dynamic;
	static public var Long : Dynamic;
	static public var LongLong : Dynamic;
	static public var MovableType : Dynamic;
	static public var NeedsConstruction : Dynamic;
	static public var NeedsDestruction : Dynamic;
	static public var QBitArray : Dynamic;
	static public var QBitmap : Dynamic;
	static public var QBrush : Dynamic;
	static public var QByteArray : Dynamic;
	static public var QByteArrayList : Dynamic;
	static public var QChar : Dynamic;
	static public var QColor : Dynamic;
	static public var QCursor : Dynamic;
	static public var QDate : Dynamic;
	static public var QDateTime : Dynamic;
	static public var QEasingCurve : Dynamic;
	static public var QFont : Dynamic;
	static public var QIcon : Dynamic;
	static public var QImage : Dynamic;
	static public var QJsonArray : Dynamic;
	static public var QJsonDocument : Dynamic;
	static public var QJsonObject : Dynamic;
	static public var QJsonValue : Dynamic;
	static public var QKeySequence : Dynamic;
	static public var QLine : Dynamic;
	static public var QLineF : Dynamic;
	static public var QLocale : Dynamic;
	static public var QMatrix : Dynamic;
	static public var QMatrix4x4 : Dynamic;
	static public var QModelIndex : Dynamic;
	static public var QObjectStar : Dynamic;
	static public var QPalette : Dynamic;
	static public var QPen : Dynamic;
	static public var QPersistentModelIndex : Dynamic;
	static public var QPixmap : Dynamic;
	static public var QPoint : Dynamic;
	static public var QPointF : Dynamic;
	static public var QPolygon : Dynamic;
	static public var QPolygonF : Dynamic;
	static public var QQuaternion : Dynamic;
	static public var QRect : Dynamic;
	static public var QRectF : Dynamic;
	static public var QRegExp : Dynamic;
	static public var QRegion : Dynamic;
	static public var QRegularExpression : Dynamic;
	static public var QSize : Dynamic;
	static public var QSizeF : Dynamic;
	static public var QSizePolicy : Dynamic;
	static public var QString : Dynamic;
	static public var QStringList : Dynamic;
	static public var QTextFormat : Dynamic;
	static public var QTextLength : Dynamic;
	static public var QTime : Dynamic;
	static public var QTransform : Dynamic;
	static public var QUrl : Dynamic;
	static public var QUuid : Dynamic;
	static public var QVariant : Dynamic;
	static public var QVariantHash : Dynamic;
	static public var QVariantList : Dynamic;
	static public var QVariantMap : Dynamic;
	static public var QVector2D : Dynamic;
	static public var QVector3D : Dynamic;
	static public var QVector4D : Dynamic;
	static public var SChar : Dynamic;
	static public var Short : Dynamic;
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
	public function Type(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function TypeFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QMetaType.TypeFlags()
		QMetaType.TypeFlags(Union[QMetaType.TypeFlags, QMetaType.TypeFlag])
		QMetaType.TypeFlags(QMetaType.TypeFlags)
	**/
	static public function TypeFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var UChar : Dynamic;
	static public var UInt : Dynamic;
	static public var ULong : Dynamic;
	static public var ULongLong : Dynamic;
	static public var UShort : Dynamic;
	static public var UnknownType : Dynamic;
	static public var User : Dynamic;
	static public var Void : Dynamic;
	static public var VoidStar : Dynamic;
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
		flags(self) -> QMetaType.TypeFlags
	**/
	public function flags():Dynamic;
	/**
		isRegistered(int) -> bool
		isRegistered(self) -> bool
	**/
	static public function isRegistered(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		metaObjectForType(int) -> QMetaObject
	**/
	static public function metaObjectForType(int:Int):Dynamic;
	/**
		type(str) -> int
	**/
	static public function type(str:String):Int;
	/**
		typeFlags(int) -> QMetaType.TypeFlags
	**/
	static public function typeFlags(int:Int):Dynamic;
	/**
		typeName(int) -> str
	**/
	static public function typeName(int:Int):String;
}