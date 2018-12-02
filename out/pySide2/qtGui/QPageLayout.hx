/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QPageLayout") extern class QPageLayout {
	static public var Cicero : Dynamic;
	static public var Didot : Dynamic;
	static public var FullPageMode : Dynamic;
	static public var Inch : Dynamic;
	static public var Landscape : Dynamic;
	static public var Millimeter : Dynamic;
	public function Mode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Orientation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Pica : Dynamic;
	static public var Point : Dynamic;
	static public var Portrait : Dynamic;
	static public var StandardMode : Dynamic;
	public function Unit(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function fullRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fullRectPixels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fullRectPoints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEquivalentTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function margins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function marginsPixels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function marginsPoints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function orientation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pageSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function paintRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function paintRectPixels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function paintRectPoints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBottomMargin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLeftMargin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMinimumMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOrientation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPageSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRightMargin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTopMargin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUnits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function units(args:haxe.extern.Rest<Dynamic>):Dynamic;
}