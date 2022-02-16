/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QPageLayout") extern class QPageLayout {
	static public var Cicero : Dynamic;
	static public var Didot : Dynamic;
	static public var FullPageMode : Dynamic;
	static public var Inch : Dynamic;
	static public var Landscape : Dynamic;
	static public var Millimeter : Dynamic;
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
	public function Mode(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function Orientation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Pica : Dynamic;
	static public var Point : Dynamic;
	static public var Portrait : Dynamic;
	static public var StandardMode : Dynamic;
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
	public function Unit(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		fullRect(self) -> QRectF
		fullRect(self, QPageLayout.Unit) -> QRectF
	**/
	public function fullRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fullRectPixels(self, int) -> QRect
	**/
	public function fullRectPixels(int:Int):Dynamic;
	/**
		fullRectPoints(self) -> QRect
	**/
	public function fullRectPoints():Dynamic;
	/**
		isEquivalentTo(self, QPageLayout) -> bool
	**/
	public function isEquivalentTo(QPageLayout:Dynamic):Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		margins(self) -> QMarginsF
		margins(self, QPageLayout.Unit) -> QMarginsF
	**/
	public function margins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		marginsPixels(self, int) -> QMargins
	**/
	public function marginsPixels(int:Int):Dynamic;
	/**
		marginsPoints(self) -> QMargins
	**/
	public function marginsPoints():Dynamic;
	/**
		maximumMargins(self) -> QMarginsF
	**/
	public function maximumMargins():Dynamic;
	/**
		minimumMargins(self) -> QMarginsF
	**/
	public function minimumMargins():Dynamic;
	/**
		mode(self) -> QPageLayout.Mode
	**/
	public function mode():Dynamic;
	/**
		orientation(self) -> QPageLayout.Orientation
	**/
	public function orientation():Dynamic;
	/**
		pageSize(self) -> QPageSize
	**/
	public function pageSize():Dynamic;
	/**
		paintRect(self) -> QRectF
		paintRect(self, QPageLayout.Unit) -> QRectF
	**/
	public function paintRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		paintRectPixels(self, int) -> QRect
	**/
	public function paintRectPixels(int:Int):Dynamic;
	/**
		paintRectPoints(self) -> QRect
	**/
	public function paintRectPoints():Dynamic;
	/**
		setBottomMargin(self, float) -> bool
	**/
	public function setBottomMargin(float:Float):Bool;
	/**
		setLeftMargin(self, float) -> bool
	**/
	public function setLeftMargin(float:Float):Bool;
	/**
		setMargins(self, QMarginsF) -> bool
	**/
	public function setMargins(QMarginsF:Dynamic):Bool;
	/**
		setMinimumMargins(self, QMarginsF)
	**/
	public function setMinimumMargins(QMarginsF:Dynamic):Void;
	/**
		setMode(self, QPageLayout.Mode)
	**/
	public function setMode(QPageLayout:Dynamic):Void;
	/**
		setOrientation(self, QPageLayout.Orientation)
	**/
	public function setOrientation(QPageLayout:Dynamic):Void;
	/**
		setPageSize(self, QPageSize, minMargins: QMarginsF = QMarginsF(0,0,0,0))
	**/
	public function setPageSize(QPageSize:Dynamic, ?minMargins:Dynamic):Void;
	/**
		setRightMargin(self, float) -> bool
	**/
	public function setRightMargin(float:Float):Bool;
	/**
		setTopMargin(self, float) -> bool
	**/
	public function setTopMargin(float:Float):Bool;
	/**
		setUnits(self, QPageLayout.Unit)
	**/
	public function setUnits(QPageLayout:Dynamic):Void;
	/**
		swap(self, QPageLayout)
	**/
	public function swap(QPageLayout:Dynamic):Void;
	/**
		units(self) -> QPageLayout.Unit
	**/
	public function units():Dynamic;
}