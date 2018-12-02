/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QSurfaceFormat") extern class QSurfaceFormat {
	static public var CompatibilityProfile : Dynamic;
	static public var CoreProfile : Dynamic;
	static public var DebugContext : Dynamic;
	static public var DefaultRenderableType : Dynamic;
	static public var DefaultSwapBehavior : Dynamic;
	static public var DeprecatedFunctions : Dynamic;
	static public var DoubleBuffer : Dynamic;
	public function FormatOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function FormatOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NoProfile : Dynamic;
	static public var OpenGL : Dynamic;
	public function OpenGLContextProfile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var OpenGLES : Dynamic;
	static public var OpenVG : Dynamic;
	public function RenderableType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ResetNotification : Dynamic;
	static public var SingleBuffer : Dynamic;
	static public var StereoBuffers : Dynamic;
	public function SwapBehavior(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TripleBuffer : Dynamic;
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
	public function alphaBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blueBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function defaultFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function depthBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function greenBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasAlpha(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function majorVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minorVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function options(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function profile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function redBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function renderableType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function samples(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAlphaBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBlueBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setDefaultFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDepthBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGreenBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMajorVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMinorVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProfile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRedBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRenderableType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSamples(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStencilBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStereo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSwapBehavior(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSwapInterval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stencilBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stereo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swapBehavior(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swapInterval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function testOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function version(args:haxe.extern.Rest<Dynamic>):Dynamic;
}