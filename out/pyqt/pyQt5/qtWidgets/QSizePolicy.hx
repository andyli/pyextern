/* This file is generated, do not edit! */
package pyQt5.qtWidgets;
@:pythonImport("PyQt5.QtWidgets", "QSizePolicy") extern class QSizePolicy {
	static public var ButtonBox : Dynamic;
	static public var CheckBox : Dynamic;
	static public var ComboBox : Dynamic;
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
	public function ControlType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QSizePolicy.ControlTypes()
		QSizePolicy.ControlTypes(Union[QSizePolicy.ControlTypes, QSizePolicy.ControlType])
		QSizePolicy.ControlTypes(QSizePolicy.ControlTypes)
	**/
	static public function ControlTypes(args:haxe.extern.Rest<Dynamic>):Void;
	static public var DefaultType : Dynamic;
	static public var ExpandFlag : Dynamic;
	static public var Expanding : Dynamic;
	static public var Fixed : Dynamic;
	static public var Frame : Dynamic;
	static public var GroupBox : Dynamic;
	static public var GrowFlag : Dynamic;
	static public var IgnoreFlag : Dynamic;
	static public var Ignored : Dynamic;
	static public var Label : Dynamic;
	static public var Line : Dynamic;
	static public var LineEdit : Dynamic;
	static public var Maximum : Dynamic;
	static public var Minimum : Dynamic;
	static public var MinimumExpanding : Dynamic;
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
	public function Policy(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function PolicyFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Preferred : Dynamic;
	static public var PushButton : Dynamic;
	static public var RadioButton : Dynamic;
	static public var ShrinkFlag : Dynamic;
	static public var Slider : Dynamic;
	static public var SpinBox : Dynamic;
	static public var TabWidget : Dynamic;
	static public var ToolButton : Dynamic;
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
		controlType(self) -> QSizePolicy.ControlType
	**/
	public function controlType():Dynamic;
	/**
		expandingDirections(self) -> Qt.Orientations
	**/
	public function expandingDirections():Dynamic;
	/**
		hasHeightForWidth(self) -> bool
	**/
	public function hasHeightForWidth():Bool;
	/**
		hasWidthForHeight(self) -> bool
	**/
	public function hasWidthForHeight():Bool;
	/**
		horizontalPolicy(self) -> QSizePolicy.Policy
	**/
	public function horizontalPolicy():Dynamic;
	/**
		horizontalStretch(self) -> int
	**/
	public function horizontalStretch():Int;
	/**
		retainSizeWhenHidden(self) -> bool
	**/
	public function retainSizeWhenHidden():Bool;
	/**
		setControlType(self, QSizePolicy.ControlType)
	**/
	public function setControlType(QSizePolicy:Dynamic):Void;
	/**
		setHeightForWidth(self, bool)
	**/
	public function setHeightForWidth(bool:Bool):Void;
	/**
		setHorizontalPolicy(self, QSizePolicy.Policy)
	**/
	public function setHorizontalPolicy(QSizePolicy:Dynamic):Void;
	/**
		setHorizontalStretch(self, int)
	**/
	public function setHorizontalStretch(int:Int):Void;
	/**
		setRetainSizeWhenHidden(self, bool)
	**/
	public function setRetainSizeWhenHidden(bool:Bool):Void;
	/**
		setVerticalPolicy(self, QSizePolicy.Policy)
	**/
	public function setVerticalPolicy(QSizePolicy:Dynamic):Void;
	/**
		setVerticalStretch(self, int)
	**/
	public function setVerticalStretch(int:Int):Void;
	/**
		setWidthForHeight(self, bool)
	**/
	public function setWidthForHeight(bool:Bool):Void;
	/**
		transpose(self)
	**/
	public function transpose():Void;
	/**
		transposed(self) -> QSizePolicy
	**/
	public function transposed():Dynamic;
	/**
		verticalPolicy(self) -> QSizePolicy.Policy
	**/
	public function verticalPolicy():Dynamic;
	/**
		verticalStretch(self) -> int
	**/
	public function verticalStretch():Int;
}