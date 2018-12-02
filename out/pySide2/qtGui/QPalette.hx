/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QPalette") extern class QPalette {
	static public var Active : Dynamic;
	static public var All : Dynamic;
	static public var AlternateBase : Dynamic;
	static public var Background : Dynamic;
	static public var Base : Dynamic;
	static public var BrightText : Dynamic;
	static public var Button : Dynamic;
	static public var ButtonText : Dynamic;
	public function ColorGroup(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function alternateBase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function background(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function base(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function brightText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function brush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function button(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function buttonText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cacheKey(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function color(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentColorGroup(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dark(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function foreground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function highlight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function highlightedText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isBrushSet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isCopyOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEqual(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function light(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function link(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function linkVisited(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function midlight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resolve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBrush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setColorGroup(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCurrentColorGroup(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function shadow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function text(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toolTipBase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toolTipText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function window(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowText(args:haxe.extern.Rest<Dynamic>):Dynamic;
}