/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QRgba64") extern class QRgba64 {
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
		int(self)
	**/
	public function __int__():Dynamic;
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
		alpha(self) -> int
	**/
	public function alpha():Int;
	/**
		alpha8(self) -> int
	**/
	public function alpha8():Int;
	/**
		blue(self) -> int
	**/
	public function blue():Int;
	/**
		blue8(self) -> int
	**/
	public function blue8():Int;
	/**
		fromArgb32(int) -> QRgba64
	**/
	static public function fromArgb32(int:Int):Dynamic;
	/**
		fromRgba(int, int, int, int) -> QRgba64
	**/
	static public function fromRgba(int:Int, int:Int, int:Int, int:Int):Dynamic;
	/**
		fromRgba64(int) -> QRgba64
		fromRgba64(int, int, int, int) -> QRgba64
	**/
	static public function fromRgba64(int:Int, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		green(self) -> int
	**/
	public function green():Int;
	/**
		green8(self) -> int
	**/
	public function green8():Int;
	/**
		isOpaque(self) -> bool
	**/
	public function isOpaque():Bool;
	/**
		isTransparent(self) -> bool
	**/
	public function isTransparent():Bool;
	/**
		premultiplied(self) -> QRgba64
	**/
	public function premultiplied():Dynamic;
	/**
		red(self) -> int
	**/
	public function red():Int;
	/**
		red8(self) -> int
	**/
	public function red8():Int;
	/**
		setAlpha(self, int)
	**/
	public function setAlpha(int:Int):Void;
	/**
		setBlue(self, int)
	**/
	public function setBlue(int:Int):Void;
	/**
		setGreen(self, int)
	**/
	public function setGreen(int:Int):Void;
	/**
		setRed(self, int)
	**/
	public function setRed(int:Int):Void;
	/**
		toArgb32(self) -> int
	**/
	public function toArgb32():Int;
	/**
		toRgb16(self) -> int
	**/
	public function toRgb16():Int;
	/**
		unpremultiplied(self) -> QRgba64
	**/
	public function unpremultiplied():Dynamic;
}