/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QPictureIO") extern class QPictureIO {
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
		defineIOHandler(str, str, str, Optional[Callable[[QPictureIO], None]], Optional[Callable[[QPictureIO], None]])
	**/
	static public function defineIOHandler(str:String, str:String, str:String, Optional:Dynamic, Optional:Dynamic):Void;
	/**
		description(self) -> str
	**/
	public function description():String;
	/**
		fileName(self) -> str
	**/
	public function fileName():String;
	/**
		format(self) -> str
	**/
	public function format():String;
	/**
		gamma(self) -> float
	**/
	public function gamma():Float;
	/**
		inputFormats() -> List[QByteArray]
	**/
	static public function inputFormats():Dynamic;
	/**
		ioDevice(self) -> QIODevice
	**/
	public function ioDevice():Dynamic;
	/**
		outputFormats() -> List[QByteArray]
	**/
	static public function outputFormats():Dynamic;
	/**
		parameters(self) -> str
	**/
	public function parameters():String;
	/**
		picture(self) -> QPicture
	**/
	public function picture():Dynamic;
	/**
		pictureFormat(str) -> QByteArray
		pictureFormat(QIODevice) -> QByteArray
	**/
	static public function pictureFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		quality(self) -> int
	**/
	public function quality():Int;
	/**
		read(self) -> bool
	**/
	public function read():Bool;
	/**
		setDescription(self, str)
	**/
	public function setDescription(str:String):Void;
	/**
		setFileName(self, str)
	**/
	public function setFileName(str:String):Void;
	/**
		setFormat(self, str)
	**/
	public function setFormat(str:String):Void;
	/**
		setGamma(self, float)
	**/
	public function setGamma(float:Float):Void;
	/**
		setIODevice(self, QIODevice)
	**/
	public function setIODevice(QIODevice:Dynamic):Void;
	/**
		setParameters(self, str)
	**/
	public function setParameters(str:String):Void;
	/**
		setPicture(self, QPicture)
	**/
	public function setPicture(QPicture:Dynamic):Void;
	/**
		setQuality(self, int)
	**/
	public function setQuality(int:Int):Void;
	/**
		setStatus(self, int)
	**/
	public function setStatus(int:Int):Void;
	/**
		status(self) -> int
	**/
	public function status():Int;
	/**
		write(self) -> bool
	**/
	public function write():Bool;
}