/* This file is generated, do not edit! */
package pySide2.qtWidgets;
@:pythonImport("PySide2.QtWidgets", "QSizePolicy") extern class QSizePolicy {
	static public var ButtonBox : Dynamic;
	static public var CheckBox : Dynamic;
	static public var ComboBox : Dynamic;
	public function ControlType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ControlTypes(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function Policy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function PolicyFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Preferred : Dynamic;
	static public var PushButton : Dynamic;
	static public var RadioButton : Dynamic;
	static public var ShrinkFlag : Dynamic;
	static public var Slider : Dynamic;
	static public var SpinBox : Dynamic;
	static public var TabWidget : Dynamic;
	static public var ToolButton : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return self<<value.
	**/
	public function __lshift__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
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
		Return value<<self.
	**/
	public function __rlshift__(value:Dynamic):Dynamic;
	/**
		Return value>>self.
	**/
	public function __rrshift__(value:Dynamic):Dynamic;
	/**
		Return self>>value.
	**/
	public function __rshift__(value:Dynamic):Dynamic;
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
	public function controlType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function expandingDirections(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasHeightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasWidthForHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function horizontalPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function horizontalStretch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function retainSizeWhenHidden(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setControlType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHeightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHorizontalPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHorizontalStretch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRetainSizeWhenHidden(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setVerticalPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setVerticalStretch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWidthForHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transpose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function verticalPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function verticalStretch(args:haxe.extern.Rest<Dynamic>):Dynamic;
}