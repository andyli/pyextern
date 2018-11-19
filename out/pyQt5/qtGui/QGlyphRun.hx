/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QGlyphRun") extern class QGlyphRun {
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
	public function GlyphRunFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGlyphRun.GlyphRunFlags()
		QGlyphRun.GlyphRunFlags(Union[QGlyphRun.GlyphRunFlags, QGlyphRun.GlyphRunFlag])
		QGlyphRun.GlyphRunFlags(QGlyphRun.GlyphRunFlags)
	**/
	static public function GlyphRunFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var Overline : Dynamic;
	static public var RightToLeft : Dynamic;
	static public var SplitLigature : Dynamic;
	static public var StrikeOut : Dynamic;
	static public var Underline : Dynamic;
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
		boundingRect(self) -> QRectF
	**/
	public function boundingRect():Dynamic;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		flags(self) -> QGlyphRun.GlyphRunFlags
	**/
	public function flags():Dynamic;
	/**
		glyphIndexes(self) -> List[int]
	**/
	public function glyphIndexes():Dynamic;
	/**
		isEmpty(self) -> bool
	**/
	public function isEmpty():Bool;
	/**
		isRightToLeft(self) -> bool
	**/
	public function isRightToLeft():Bool;
	/**
		overline(self) -> bool
	**/
	public function overline():Bool;
	/**
		positions(self) -> List[QPointF]
	**/
	public function positions():Dynamic;
	/**
		rawFont(self) -> QRawFont
	**/
	public function rawFont():Dynamic;
	/**
		setBoundingRect(self, QRectF)
	**/
	public function setBoundingRect(QRectF:Dynamic):Void;
	/**
		setFlag(self, QGlyphRun.GlyphRunFlag, enabled: bool = True)
	**/
	public function setFlag(QGlyphRun:Dynamic, ?enabled:Dynamic):Void;
	/**
		setFlags(self, Union[QGlyphRun.GlyphRunFlags, QGlyphRun.GlyphRunFlag])
	**/
	public function setFlags(Union:Dynamic):Void;
	/**
		setGlyphIndexes(self, Iterable[int])
	**/
	public function setGlyphIndexes(Iterable:Dynamic):Void;
	/**
		setOverline(self, bool)
	**/
	public function setOverline(bool:Bool):Void;
	/**
		setPositions(self, Iterable[Union[QPointF, QPoint]])
	**/
	public function setPositions(Iterable:Dynamic):Void;
	/**
		setRawFont(self, QRawFont)
	**/
	public function setRawFont(QRawFont:Dynamic):Void;
	/**
		setRightToLeft(self, bool)
	**/
	public function setRightToLeft(bool:Bool):Void;
	/**
		setStrikeOut(self, bool)
	**/
	public function setStrikeOut(bool:Bool):Void;
	/**
		setUnderline(self, bool)
	**/
	public function setUnderline(bool:Bool):Void;
	/**
		strikeOut(self) -> bool
	**/
	public function strikeOut():Bool;
	/**
		swap(self, QGlyphRun)
	**/
	public function swap(QGlyphRun:Dynamic):Void;
	/**
		underline(self) -> bool
	**/
	public function underline():Bool;
}