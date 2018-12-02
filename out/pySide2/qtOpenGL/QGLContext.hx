/* This file is generated, do not edit! */
package pySide2.qtOpenGL;
@:pythonImport("PySide2.QtOpenGL", "QGLContext") extern class QGLContext {
	public function BindOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function BindOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var CanFlipNativePixmapBindOption : Dynamic;
	static public var DefaultBindOption : Dynamic;
	static public var InternalBindOption : Dynamic;
	static public var InvertedYBindOption : Dynamic;
	static public var LinearFilteringBindOption : Dynamic;
	static public var MemoryManagedBindOption : Dynamic;
	static public var MipmapBindOption : Dynamic;
	static public var NoBindOption : Dynamic;
	static public var PremultipliedAlphaBindOption : Dynamic;
	static public var TemporarilyCachedBindOption : Dynamic;
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
	static public function areSharing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bindTexture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function chooseContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function colorIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contextHandle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function create(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function currentContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deleteTexture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function device(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deviceIsPixmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function doneCurrent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawTexture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function format(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromOpenGLContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function initialized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSharing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function makeCurrent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function overlayTransparentColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function requestedFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function reset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setInitialized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setTextureCacheLimit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowCreated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swapBuffers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function textureCacheLimit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowCreated(args:haxe.extern.Rest<Dynamic>):Dynamic;
}