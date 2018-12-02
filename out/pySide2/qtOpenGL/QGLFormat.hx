/* This file is generated, do not edit! */
package pySide2.qtOpenGL;
@:pythonImport("PySide2.QtOpenGL", "QGLFormat") extern class QGLFormat {
	static public var CompatibilityProfile : Dynamic;
	static public var CoreProfile : Dynamic;
	static public var NoProfile : Dynamic;
	public function OpenGLContextProfile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function OpenGLVersionFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function OpenGLVersionFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var OpenGL_ES_CommonLite_Version_1_0 : Dynamic;
	static public var OpenGL_ES_CommonLite_Version_1_1 : Dynamic;
	static public var OpenGL_ES_Common_Version_1_0 : Dynamic;
	static public var OpenGL_ES_Common_Version_1_1 : Dynamic;
	static public var OpenGL_ES_Version_2_0 : Dynamic;
	static public var OpenGL_Version_1_1 : Dynamic;
	static public var OpenGL_Version_1_2 : Dynamic;
	static public var OpenGL_Version_1_3 : Dynamic;
	static public var OpenGL_Version_1_4 : Dynamic;
	static public var OpenGL_Version_1_5 : Dynamic;
	static public var OpenGL_Version_2_0 : Dynamic;
	static public var OpenGL_Version_2_1 : Dynamic;
	static public var OpenGL_Version_3_0 : Dynamic;
	static public var OpenGL_Version_3_1 : Dynamic;
	static public var OpenGL_Version_3_2 : Dynamic;
	static public var OpenGL_Version_3_3 : Dynamic;
	static public var OpenGL_Version_4_0 : Dynamic;
	static public var OpenGL_Version_4_1 : Dynamic;
	static public var OpenGL_Version_4_2 : Dynamic;
	static public var OpenGL_Version_4_3 : Dynamic;
	static public var OpenGL_Version_None : Dynamic;
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
	public function accum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function accumBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function alpha(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function alphaBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blueBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function defaultFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function defaultOverlayFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function depth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function depthBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function directRendering(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function doubleBuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromSurfaceFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function greenBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function hasOpenGL(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function hasOpenGLOverlays(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasOverlay(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function majorVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minorVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function openGLVersionFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function plane(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function profile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function redBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rgba(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sampleBuffers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function samples(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAccum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAccumBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAlpha(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAlphaBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBlueBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setDefaultFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setDefaultOverlayFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDepth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDepthBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDirectRendering(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDoubleBuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGreenBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOverlay(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPlane(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProfile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRedBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRgba(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSampleBuffers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSamples(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStencil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStencilBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStereo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSwapInterval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stencil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stencilBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stereo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swapInterval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function testOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function toSurfaceFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
}