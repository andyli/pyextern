/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QOpenGLFramebufferObject") extern class QOpenGLFramebufferObject {
	/**
		int(x=0) -> integer
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
	public function Attachment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var CombinedDepthStencil : Dynamic;
	static public var Depth : Dynamic;
	static public var NoAttachment : Dynamic;
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
		addColorAttachment(self, QSize, internal_format: int = 0)
		addColorAttachment(self, int, int, internal_format: int = 0)
	**/
	public function addColorAttachment(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		attachment(self) -> QOpenGLFramebufferObject.Attachment
	**/
	public function attachment():Dynamic;
	/**
		bind(self) -> bool
	**/
	public function bind():Bool;
	/**
		bindDefault() -> bool
	**/
	static public function bindDefault():Bool;
	/**
		blitFramebuffer(QOpenGLFramebufferObject, QRect, QOpenGLFramebufferObject, QRect, buffers: int = GL_COLOR_BUFFER_BIT, filter: int = GL_NEAREST)
		blitFramebuffer(QOpenGLFramebufferObject, QOpenGLFramebufferObject, buffers: int = GL_COLOR_BUFFER_BIT, filter: int = GL_NEAREST)
		blitFramebuffer(QOpenGLFramebufferObject, QRect, QOpenGLFramebufferObject, QRect, int, int, int, int)
	**/
	static public function blitFramebuffer(QOpenGLFramebufferObject:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		format(self) -> QOpenGLFramebufferObjectFormat
	**/
	public function format():Dynamic;
	/**
		handle(self) -> int
	**/
	public function handle():Int;
	/**
		hasOpenGLFramebufferBlit() -> bool
	**/
	static public function hasOpenGLFramebufferBlit():Bool;
	/**
		hasOpenGLFramebufferObjects() -> bool
	**/
	static public function hasOpenGLFramebufferObjects():Bool;
	/**
		height(self) -> int
	**/
	public function height():Int;
	/**
		isBound(self) -> bool
	**/
	public function isBound():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		release(self) -> bool
	**/
	public function release():Bool;
	/**
		setAttachment(self, QOpenGLFramebufferObject.Attachment)
	**/
	public function setAttachment(QOpenGLFramebufferObject:Dynamic):Void;
	/**
		size(self) -> QSize
	**/
	public function size():Dynamic;
	/**
		sizes(self) -> object
	**/
	public function sizes():Dynamic;
	/**
		takeTexture(self) -> int
		takeTexture(self, int) -> int
	**/
	public function takeTexture(args:haxe.extern.Rest<Dynamic>):Int;
	/**
		texture(self) -> int
	**/
	public function texture():Int;
	/**
		textures(self) -> List[int]
	**/
	public function textures():Dynamic;
	/**
		toImage(self) -> QImage
		toImage(self, bool) -> QImage
		toImage(self, bool, int) -> QImage
	**/
	public function toImage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		width(self) -> int
	**/
	public function width():Int;
}