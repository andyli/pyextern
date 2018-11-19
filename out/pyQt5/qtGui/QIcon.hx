/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QIcon") extern class QIcon {
	static public var Active : Dynamic;
	static public var Disabled : Dynamic;
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
	public function Mode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Normal : Dynamic;
	static public var Off : Dynamic;
	static public var On : Dynamic;
	static public var Selected : Dynamic;
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
	public function State(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		actualSize(self, QSize, mode: QIcon.Mode = QIcon.Normal, state: QIcon.State = QIcon.Off) -> QSize
		actualSize(self, QWindow, QSize, mode: QIcon.Mode = QIcon.Normal, state: QIcon.State = QIcon.Off) -> QSize
	**/
	public function actualSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addFile(self, str, size: QSize = QSize(), mode: QIcon.Mode = QIcon.Normal, state: QIcon.State = QIcon.Off)
	**/
	public function addFile(str:String, ?size:Dynamic, ?mode:Dynamic, ?state:Dynamic):Void;
	/**
		addPixmap(self, QPixmap, mode: QIcon.Mode = QIcon.Normal, state: QIcon.State = QIcon.Off)
	**/
	public function addPixmap(QPixmap:Dynamic, ?mode:Dynamic, ?state:Dynamic):Void;
	/**
		availableSizes(self, mode: QIcon.Mode = QIcon.Normal, state: QIcon.State = QIcon.Off) -> List[QSize]
	**/
	public function availableSizes(?mode:Dynamic, ?state:Dynamic):Dynamic;
	/**
		cacheKey(self) -> int
	**/
	public function cacheKey():Int;
	/**
		fromTheme(str, fallback: QIcon = QIcon()) -> QIcon
	**/
	static public function fromTheme(str:String, ?fallback:Dynamic):Dynamic;
	/**
		hasThemeIcon(str) -> bool
	**/
	static public function hasThemeIcon(str:String):Bool;
	/**
		isDetached(self) -> bool
	**/
	public function isDetached():Bool;
	/**
		isMask(self) -> bool
	**/
	public function isMask():Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		name(self) -> str
	**/
	public function name():String;
	/**
		paint(self, QPainter, QRect, alignment: Union[Qt.Alignment, Qt.AlignmentFlag] = Qt.AlignCenter, mode: QIcon.Mode = QIcon.Normal, state: QIcon.State = QIcon.Off)
		paint(self, QPainter, int, int, int, int, alignment: Union[Qt.Alignment, Qt.AlignmentFlag] = Qt.AlignCenter, mode: QIcon.Mode = QIcon.Normal, state: QIcon.State = QIcon.Off)
	**/
	public function paint(QPainter:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		pixmap(self, QSize, mode: QIcon.Mode = QIcon.Normal, state: QIcon.State = QIcon.Off) -> QPixmap
		pixmap(self, int, int, mode: QIcon.Mode = QIcon.Normal, state: QIcon.State = QIcon.Off) -> QPixmap
		pixmap(self, int, mode: QIcon.Mode = QIcon.Normal, state: QIcon.State = QIcon.Off) -> QPixmap
		pixmap(self, QWindow, QSize, mode: QIcon.Mode = QIcon.Normal, state: QIcon.State = QIcon.Off) -> QPixmap
	**/
	public function pixmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setIsMask(self, bool)
	**/
	public function setIsMask(bool:Bool):Void;
	/**
		setThemeName(str)
	**/
	static public function setThemeName(str:String):Void;
	/**
		setThemeSearchPaths(Iterable[str])
	**/
	static public function setThemeSearchPaths(Iterable:Dynamic):Void;
	/**
		swap(self, QIcon)
	**/
	public function swap(QIcon:Dynamic):Void;
	/**
		themeName() -> str
	**/
	static public function themeName():String;
	/**
		themeSearchPaths() -> List[str]
	**/
	static public function themeSearchPaths():Dynamic;
}