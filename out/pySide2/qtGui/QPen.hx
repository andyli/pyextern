/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QPen") extern class QPen {
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
	public function brush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function capStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function color(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dashOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dashPattern(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isCosmetic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSolid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function joinStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function miterLimit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBrush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCapStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCosmetic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDashOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDashPattern(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setJoinStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMiterLimit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWidthF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function style(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function width(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function widthF(args:haxe.extern.Rest<Dynamic>):Dynamic;
}