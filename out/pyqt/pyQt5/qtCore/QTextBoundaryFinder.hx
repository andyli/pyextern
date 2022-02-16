/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QTextBoundaryFinder") extern class QTextBoundaryFinder {
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
	public function BoundaryReason(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QTextBoundaryFinder.BoundaryReasons()
		QTextBoundaryFinder.BoundaryReasons(Union[QTextBoundaryFinder.BoundaryReasons, QTextBoundaryFinder.BoundaryReason])
		QTextBoundaryFinder.BoundaryReasons(QTextBoundaryFinder.BoundaryReasons)
	**/
	static public function BoundaryReasons(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function BoundaryType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var BreakOpportunity : Dynamic;
	static public var EndOfItem : Dynamic;
	static public var Grapheme : Dynamic;
	static public var Line : Dynamic;
	static public var MandatoryBreak : Dynamic;
	static public var NotAtBoundary : Dynamic;
	static public var Sentence : Dynamic;
	static public var SoftHyphen : Dynamic;
	static public var StartOfItem : Dynamic;
	static public var Word : Dynamic;
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
		boundaryReasons(self) -> QTextBoundaryFinder.BoundaryReasons
	**/
	public function boundaryReasons():Dynamic;
	/**
		isAtBoundary(self) -> bool
	**/
	public function isAtBoundary():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		position(self) -> int
	**/
	public function position():Int;
	/**
		setPosition(self, int)
	**/
	public function setPosition(int:Int):Void;
	/**
		string(self) -> str
	**/
	public function string():String;
	/**
		toEnd(self)
	**/
	public function toEnd():Void;
	/**
		toNextBoundary(self) -> int
	**/
	public function toNextBoundary():Int;
	/**
		toPreviousBoundary(self) -> int
	**/
	public function toPreviousBoundary():Int;
	/**
		toStart(self)
	**/
	public function toStart():Void;
	/**
		type(self) -> QTextBoundaryFinder.BoundaryType
	**/
	public function type():Dynamic;
}