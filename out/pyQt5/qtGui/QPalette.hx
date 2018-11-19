/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QPalette") extern class QPalette {
	static public var Active : Dynamic;
	static public var All : Dynamic;
	static public var AlternateBase : Dynamic;
	static public var Background : Dynamic;
	static public var Base : Dynamic;
	static public var BrightText : Dynamic;
	static public var Button : Dynamic;
	static public var ButtonText : Dynamic;
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
	public function ColorGroup(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ColorRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Current : Dynamic;
	static public var Dark : Dynamic;
	static public var Disabled : Dynamic;
	static public var Foreground : Dynamic;
	static public var Highlight : Dynamic;
	static public var HighlightedText : Dynamic;
	static public var Inactive : Dynamic;
	static public var Light : Dynamic;
	static public var Link : Dynamic;
	static public var LinkVisited : Dynamic;
	static public var Mid : Dynamic;
	static public var Midlight : Dynamic;
	static public var NColorGroups : Dynamic;
	static public var NColorRoles : Dynamic;
	static public var NoRole : Dynamic;
	static public var Normal : Dynamic;
	static public var Shadow : Dynamic;
	static public var Text : Dynamic;
	static public var ToolTipBase : Dynamic;
	static public var ToolTipText : Dynamic;
	static public var Window : Dynamic;
	static public var WindowText : Dynamic;
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
		alternateBase(self) -> QBrush
	**/
	public function alternateBase():Dynamic;
	/**
		base(self) -> QBrush
	**/
	public function base():Dynamic;
	/**
		brightText(self) -> QBrush
	**/
	public function brightText():Dynamic;
	/**
		brush(self, QPalette.ColorGroup, QPalette.ColorRole) -> QBrush
		brush(self, QPalette.ColorRole) -> QBrush
	**/
	public function brush(QPalette:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		button(self) -> QBrush
	**/
	public function button():Dynamic;
	/**
		buttonText(self) -> QBrush
	**/
	public function buttonText():Dynamic;
	/**
		cacheKey(self) -> int
	**/
	public function cacheKey():Int;
	/**
		color(self, QPalette.ColorGroup, QPalette.ColorRole) -> QColor
		color(self, QPalette.ColorRole) -> QColor
	**/
	public function color(QPalette:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		currentColorGroup(self) -> QPalette.ColorGroup
	**/
	public function currentColorGroup():Dynamic;
	/**
		dark(self) -> QBrush
	**/
	public function dark():Dynamic;
	/**
		highlight(self) -> QBrush
	**/
	public function highlight():Dynamic;
	/**
		highlightedText(self) -> QBrush
	**/
	public function highlightedText():Dynamic;
	/**
		isBrushSet(self, QPalette.ColorGroup, QPalette.ColorRole) -> bool
	**/
	public function isBrushSet(QPalette:Dynamic, QPalette:Dynamic):Bool;
	/**
		isCopyOf(self, QPalette) -> bool
	**/
	public function isCopyOf(QPalette:Dynamic):Bool;
	/**
		isEqual(self, QPalette.ColorGroup, QPalette.ColorGroup) -> bool
	**/
	public function isEqual(QPalette:Dynamic, QPalette:Dynamic):Bool;
	/**
		light(self) -> QBrush
	**/
	public function light():Dynamic;
	/**
		link(self) -> QBrush
	**/
	public function link():Dynamic;
	/**
		linkVisited(self) -> QBrush
	**/
	public function linkVisited():Dynamic;
	/**
		mid(self) -> QBrush
	**/
	public function mid():Dynamic;
	/**
		midlight(self) -> QBrush
	**/
	public function midlight():Dynamic;
	/**
		resolve(self, QPalette) -> QPalette
		resolve(self) -> int
		resolve(self, int)
	**/
	public function resolve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setBrush(self, QPalette.ColorGroup, QPalette.ColorRole, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
		setBrush(self, QPalette.ColorRole, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setBrush(QPalette:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setColor(self, QPalette.ColorGroup, QPalette.ColorRole, Union[QColor, Qt.GlobalColor, QGradient])
		setColor(self, QPalette.ColorRole, Union[QColor, Qt.GlobalColor, QGradient])
	**/
	public function setColor(QPalette:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setColorGroup(self, QPalette.ColorGroup, Union[QBrush, QColor, Qt.GlobalColor, QGradient], Union[QBrush, QColor, Qt.GlobalColor, QGradient], Union[QBrush, QColor, Qt.GlobalColor, QGradient], Union[QBrush, QColor, Qt.GlobalColor, QGradient], Union[QBrush, QColor, Qt.GlobalColor, QGradient], Union[QBrush, QColor, Qt.GlobalColor, QGradient], Union[QBrush, QColor, Qt.GlobalColor, QGradient], Union[QBrush, QColor, Qt.GlobalColor, QGradient], Union[QBrush, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setColorGroup(QPalette:Dynamic, Union:Dynamic, Union:Dynamic, Union:Dynamic, Union:Dynamic, Union:Dynamic, Union:Dynamic, Union:Dynamic, Union:Dynamic, Union:Dynamic):Void;
	/**
		setCurrentColorGroup(self, QPalette.ColorGroup)
	**/
	public function setCurrentColorGroup(QPalette:Dynamic):Void;
	/**
		shadow(self) -> QBrush
	**/
	public function shadow():Dynamic;
	/**
		swap(self, QPalette)
	**/
	public function swap(QPalette:Dynamic):Void;
	/**
		text(self) -> QBrush
	**/
	public function text():Dynamic;
	/**
		toolTipBase(self) -> QBrush
	**/
	public function toolTipBase():Dynamic;
	/**
		toolTipText(self) -> QBrush
	**/
	public function toolTipText():Dynamic;
	/**
		window(self) -> QBrush
	**/
	public function window():Dynamic;
	/**
		windowText(self) -> QBrush
	**/
	public function windowText():Dynamic;
}