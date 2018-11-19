/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QOpenGLPixelTransferOptions") extern class QOpenGLPixelTransferOptions {
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
		alignment(self) -> int
	**/
	public function alignment():Int;
	/**
		imageHeight(self) -> int
	**/
	public function imageHeight():Int;
	/**
		isLeastSignificantBitFirst(self) -> bool
	**/
	public function isLeastSignificantBitFirst():Bool;
	/**
		isSwapBytesEnabled(self) -> bool
	**/
	public function isSwapBytesEnabled():Bool;
	/**
		rowLength(self) -> int
	**/
	public function rowLength():Int;
	/**
		setAlignment(self, int)
	**/
	public function setAlignment(int:Int):Void;
	/**
		setImageHeight(self, int)
	**/
	public function setImageHeight(int:Int):Void;
	/**
		setLeastSignificantByteFirst(self, bool)
	**/
	public function setLeastSignificantByteFirst(bool:Bool):Void;
	/**
		setRowLength(self, int)
	**/
	public function setRowLength(int:Int):Void;
	/**
		setSkipImages(self, int)
	**/
	public function setSkipImages(int:Int):Void;
	/**
		setSkipPixels(self, int)
	**/
	public function setSkipPixels(int:Int):Void;
	/**
		setSkipRows(self, int)
	**/
	public function setSkipRows(int:Int):Void;
	/**
		setSwapBytesEnabled(self, bool)
	**/
	public function setSwapBytesEnabled(bool:Bool):Void;
	/**
		skipImages(self) -> int
	**/
	public function skipImages():Int;
	/**
		skipPixels(self) -> int
	**/
	public function skipPixels():Int;
	/**
		skipRows(self) -> int
	**/
	public function skipRows():Int;
	/**
		swap(self, QOpenGLPixelTransferOptions)
	**/
	public function swap(QOpenGLPixelTransferOptions:Dynamic):Void;
}