/* This file is generated, do not edit! */
package pySide2.qtWidgets;
@:pythonImport("PySide2.QtWidgets", "QStyleOptionToolBar") extern class QStyleOptionToolBar {
	static public var Beginning : Dynamic;
	static public var End : Dynamic;
	static public var Middle : Dynamic;
	static public var Movable : Dynamic;
	static public var None : Dynamic;
	static public var OnlyOne : Dynamic;
	public function OptionType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SO_Button : Dynamic;
	static public var SO_ComboBox : Dynamic;
	static public var SO_Complex : Dynamic;
	static public var SO_ComplexCustomBase : Dynamic;
	static public var SO_CustomBase : Dynamic;
	static public var SO_Default : Dynamic;
	static public var SO_DockWidget : Dynamic;
	static public var SO_FocusRect : Dynamic;
	static public var SO_Frame : Dynamic;
	static public var SO_GraphicsItem : Dynamic;
	static public var SO_GroupBox : Dynamic;
	static public var SO_Header : Dynamic;
	static public var SO_MenuItem : Dynamic;
	static public var SO_ProgressBar : Dynamic;
	static public var SO_RubberBand : Dynamic;
	static public var SO_SizeGrip : Dynamic;
	static public var SO_Slider : Dynamic;
	static public var SO_SpinBox : Dynamic;
	static public var SO_Tab : Dynamic;
	static public var SO_TabBarBase : Dynamic;
	static public var SO_TabWidgetFrame : Dynamic;
	static public var SO_TitleBar : Dynamic;
	static public var SO_ToolBar : Dynamic;
	static public var SO_ToolBox : Dynamic;
	static public var SO_ToolButton : Dynamic;
	static public var SO_ViewItem : Dynamic;
	public function StyleOptionType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function StyleOptionVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ToolBarFeature(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ToolBarFeatures(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ToolBarPosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Type : Dynamic;
	static public var Version : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public var direction : Dynamic;
	public var features : Dynamic;
	public var fontMetrics : Dynamic;
	public function init(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function initFrom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var lineWidth : Dynamic;
	public var midLineWidth : Dynamic;
	public var palette : Dynamic;
	public var positionOfLine : Dynamic;
	public var positionWithinLine : Dynamic;
	public var rect : Dynamic;
	public var state : Dynamic;
	public var styleObject : Dynamic;
	public var toolBarArea : Dynamic;
	public var type : Dynamic;
	public var version : Dynamic;
}