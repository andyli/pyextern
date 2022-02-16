/* This file is generated, do not edit! */
package pyQt5.qtOpenGL;
@:pythonImport("PyQt5.QtOpenGL", "QGLContext") extern class QGLContext {
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
	public function BindOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGLContext.BindOptions()
		QGLContext.BindOptions(Union[QGLContext.BindOptions, QGLContext.BindOption])
		QGLContext.BindOptions(QGLContext.BindOptions)
	**/
	static public function BindOptions(args:haxe.extern.Rest<Dynamic>):Void;
	static public var DefaultBindOption : Dynamic;
	static public var InvertedYBindOption : Dynamic;
	static public var LinearFilteringBindOption : Dynamic;
	static public var MipmapBindOption : Dynamic;
	static public var NoBindOption : Dynamic;
	static public var PremultipliedAlphaBindOption : Dynamic;
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
		areSharing(QGLContext, QGLContext) -> bool
	**/
	static public function areSharing(QGLContext:Dynamic, QGLContext:Dynamic):Bool;
	/**
		bindTexture(self, QImage, target: int = GL_TEXTURE_2D, format: int = GL_RGBA) -> int
		bindTexture(self, QPixmap, target: int = GL_TEXTURE_2D, format: int = GL_RGBA) -> int
		bindTexture(self, str) -> int
		bindTexture(self, QImage, int, int, Union[QGLContext.BindOptions, QGLContext.BindOption]) -> int
		bindTexture(self, QPixmap, int, int, Union[QGLContext.BindOptions, QGLContext.BindOption]) -> int
	**/
	public function bindTexture(args:haxe.extern.Rest<Dynamic>):Int;
	/**
		chooseContext(self, shareContext: QGLContext = None) -> bool
	**/
	public function chooseContext(?shareContext:Dynamic):Bool;
	/**
		create(self, shareContext: QGLContext = None) -> bool
	**/
	public function create(?shareContext:Dynamic):Bool;
	/**
		currentContext() -> QGLContext
	**/
	static public function currentContext():Dynamic;
	/**
		deleteTexture(self, int)
	**/
	public function deleteTexture(int:Int):Void;
	/**
		device(self) -> QPaintDevice
	**/
	public function device():Dynamic;
	/**
		deviceIsPixmap(self) -> bool
	**/
	public function deviceIsPixmap():Bool;
	/**
		doneCurrent(self)
	**/
	public function doneCurrent():Void;
	/**
		drawTexture(self, QRectF, int, textureTarget: int = GL_TEXTURE_2D)
		drawTexture(self, Union[QPointF, QPoint], int, textureTarget: int = GL_TEXTURE_2D)
	**/
	public function drawTexture(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		format(self) -> QGLFormat
	**/
	public function format():Dynamic;
	/**
		getProcAddress(self, str) -> sip.voidptr
	**/
	public function getProcAddress(str:String):Dynamic;
	/**
		initialized(self) -> bool
	**/
	public function initialized():Bool;
	/**
		isSharing(self) -> bool
	**/
	public function isSharing():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		makeCurrent(self)
	**/
	public function makeCurrent():Void;
	/**
		moveToThread(self, QThread)
	**/
	public function moveToThread(QThread:Dynamic):Void;
	/**
		overlayTransparentColor(self) -> QColor
	**/
	public function overlayTransparentColor():Dynamic;
	/**
		requestedFormat(self) -> QGLFormat
	**/
	public function requestedFormat():Dynamic;
	/**
		reset(self)
	**/
	public function reset():Void;
	/**
		setFormat(self, QGLFormat)
	**/
	public function setFormat(QGLFormat:Dynamic):Void;
	/**
		setInitialized(self, bool)
	**/
	public function setInitialized(bool:Bool):Void;
	/**
		setTextureCacheLimit(int)
	**/
	static public function setTextureCacheLimit(int:Int):Void;
	/**
		setWindowCreated(self, bool)
	**/
	public function setWindowCreated(bool:Bool):Void;
	/**
		swapBuffers(self)
	**/
	public function swapBuffers():Void;
	/**
		textureCacheLimit() -> int
	**/
	static public function textureCacheLimit():Int;
	/**
		windowCreated(self) -> bool
	**/
	public function windowCreated():Bool;
}