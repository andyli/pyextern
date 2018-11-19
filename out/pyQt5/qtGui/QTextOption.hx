/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QTextOption") extern class QTextOption {
	static public var AddSpaceForLineAndParagraphSeparators : Dynamic;
	static public var CenterTab : Dynamic;
	static public var DelimiterTab : Dynamic;
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
	public function Flag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QTextOption.Flags()
		QTextOption.Flags(Union[QTextOption.Flags, QTextOption.Flag])
		QTextOption.Flags(QTextOption.Flags)
	**/
	static public function Flags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var IncludeTrailingSpaces : Dynamic;
	static public var LeftTab : Dynamic;
	static public var ManualWrap : Dynamic;
	static public var NoWrap : Dynamic;
	static public var RightTab : Dynamic;
	static public var ShowLineAndParagraphSeparators : Dynamic;
	static public var ShowTabsAndSpaces : Dynamic;
	static public var SuppressColors : Dynamic;
	/**
		QTextOption.Tab()
		QTextOption.Tab(float, QTextOption.TabType, delim: str = '')
		QTextOption.Tab(QTextOption.Tab)
	**/
	static public function Tab(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function TabType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var WordWrap : Dynamic;
	static public var WrapAnywhere : Dynamic;
	static public var WrapAtWordBoundaryOrAnywhere : Dynamic;
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
	public function WrapMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		alignment(self) -> Qt.Alignment
	**/
	public function alignment():Dynamic;
	/**
		flags(self) -> QTextOption.Flags
	**/
	public function flags():Dynamic;
	/**
		setAlignment(self, Union[Qt.Alignment, Qt.AlignmentFlag])
	**/
	public function setAlignment(Union:Dynamic):Void;
	/**
		setFlags(self, QTextOption.Flags)
	**/
	public function setFlags(QTextOption:Dynamic):Void;
	/**
		setTabArray(self, Iterable[float])
	**/
	public function setTabArray(Iterable:Dynamic):Void;
	/**
		setTabStop(self, float)
	**/
	public function setTabStop(float:Float):Void;
	/**
		setTabs(self, Iterable[QTextOption.Tab])
	**/
	public function setTabs(Iterable:Dynamic):Void;
	/**
		setTextDirection(self, Qt.LayoutDirection)
	**/
	public function setTextDirection(Qt:Dynamic):Void;
	/**
		setUseDesignMetrics(self, bool)
	**/
	public function setUseDesignMetrics(bool:Bool):Void;
	/**
		setWrapMode(self, QTextOption.WrapMode)
	**/
	public function setWrapMode(QTextOption:Dynamic):Void;
	/**
		tabArray(self) -> List[float]
	**/
	public function tabArray():Dynamic;
	/**
		tabStop(self) -> float
	**/
	public function tabStop():Float;
	/**
		tabs(self) -> List[QTextOption.Tab]
	**/
	public function tabs():Dynamic;
	/**
		textDirection(self) -> Qt.LayoutDirection
	**/
	public function textDirection():Dynamic;
	/**
		useDesignMetrics(self) -> bool
	**/
	public function useDesignMetrics():Bool;
	/**
		wrapMode(self) -> QTextOption.WrapMode
	**/
	public function wrapMode():Dynamic;
}