/* This file is generated, do not edit! */
package pyQt5.qtOpenGL;
@:pythonImport("PyQt5.QtOpenGL", "QGLFormat") extern class QGLFormat {
	static public var CompatibilityProfile : Dynamic;
	static public var CoreProfile : Dynamic;
	static public var NoProfile : Dynamic;
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
	public function OpenGLContextProfile(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function OpenGLVersionFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGLFormat.OpenGLVersionFlags()
		QGLFormat.OpenGLVersionFlags(Union[QGLFormat.OpenGLVersionFlags, QGLFormat.OpenGLVersionFlag])
		QGLFormat.OpenGLVersionFlags(QGLFormat.OpenGLVersionFlags)
	**/
	static public function OpenGLVersionFlags(args:haxe.extern.Rest<Dynamic>):Void;
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
		accum(self) -> bool
	**/
	public function accum():Bool;
	/**
		accumBufferSize(self) -> int
	**/
	public function accumBufferSize():Int;
	/**
		alpha(self) -> bool
	**/
	public function alpha():Bool;
	/**
		alphaBufferSize(self) -> int
	**/
	public function alphaBufferSize():Int;
	/**
		blueBufferSize(self) -> int
	**/
	public function blueBufferSize():Int;
	/**
		defaultFormat() -> QGLFormat
	**/
	static public function defaultFormat():Dynamic;
	/**
		defaultOverlayFormat() -> QGLFormat
	**/
	static public function defaultOverlayFormat():Dynamic;
	/**
		depth(self) -> bool
	**/
	public function depth():Bool;
	/**
		depthBufferSize(self) -> int
	**/
	public function depthBufferSize():Int;
	/**
		directRendering(self) -> bool
	**/
	public function directRendering():Bool;
	/**
		doubleBuffer(self) -> bool
	**/
	public function doubleBuffer():Bool;
	/**
		greenBufferSize(self) -> int
	**/
	public function greenBufferSize():Int;
	/**
		hasOpenGL() -> bool
	**/
	static public function hasOpenGL():Bool;
	/**
		hasOpenGLOverlays() -> bool
	**/
	static public function hasOpenGLOverlays():Bool;
	/**
		hasOverlay(self) -> bool
	**/
	public function hasOverlay():Bool;
	/**
		majorVersion(self) -> int
	**/
	public function majorVersion():Int;
	/**
		minorVersion(self) -> int
	**/
	public function minorVersion():Int;
	/**
		openGLVersionFlags() -> QGLFormat.OpenGLVersionFlags
	**/
	static public function openGLVersionFlags():Dynamic;
	/**
		plane(self) -> int
	**/
	public function plane():Int;
	/**
		profile(self) -> QGLFormat.OpenGLContextProfile
	**/
	public function profile():Dynamic;
	/**
		redBufferSize(self) -> int
	**/
	public function redBufferSize():Int;
	/**
		rgba(self) -> bool
	**/
	public function rgba():Bool;
	/**
		sampleBuffers(self) -> bool
	**/
	public function sampleBuffers():Bool;
	/**
		samples(self) -> int
	**/
	public function samples():Int;
	/**
		setAccum(self, bool)
	**/
	public function setAccum(bool:Bool):Void;
	/**
		setAccumBufferSize(self, int)
	**/
	public function setAccumBufferSize(int:Int):Void;
	/**
		setAlpha(self, bool)
	**/
	public function setAlpha(bool:Bool):Void;
	/**
		setAlphaBufferSize(self, int)
	**/
	public function setAlphaBufferSize(int:Int):Void;
	/**
		setBlueBufferSize(self, int)
	**/
	public function setBlueBufferSize(int:Int):Void;
	/**
		setDefaultFormat(QGLFormat)
	**/
	static public function setDefaultFormat(QGLFormat:Dynamic):Void;
	/**
		setDefaultOverlayFormat(QGLFormat)
	**/
	static public function setDefaultOverlayFormat(QGLFormat:Dynamic):Void;
	/**
		setDepth(self, bool)
	**/
	public function setDepth(bool:Bool):Void;
	/**
		setDepthBufferSize(self, int)
	**/
	public function setDepthBufferSize(int:Int):Void;
	/**
		setDirectRendering(self, bool)
	**/
	public function setDirectRendering(bool:Bool):Void;
	/**
		setDoubleBuffer(self, bool)
	**/
	public function setDoubleBuffer(bool:Bool):Void;
	/**
		setGreenBufferSize(self, int)
	**/
	public function setGreenBufferSize(int:Int):Void;
	/**
		setOption(self, Union[QGL.FormatOptions, QGL.FormatOption])
	**/
	public function setOption(Union:Dynamic):Void;
	/**
		setOverlay(self, bool)
	**/
	public function setOverlay(bool:Bool):Void;
	/**
		setPlane(self, int)
	**/
	public function setPlane(int:Int):Void;
	/**
		setProfile(self, QGLFormat.OpenGLContextProfile)
	**/
	public function setProfile(QGLFormat:Dynamic):Void;
	/**
		setRedBufferSize(self, int)
	**/
	public function setRedBufferSize(int:Int):Void;
	/**
		setRgba(self, bool)
	**/
	public function setRgba(bool:Bool):Void;
	/**
		setSampleBuffers(self, bool)
	**/
	public function setSampleBuffers(bool:Bool):Void;
	/**
		setSamples(self, int)
	**/
	public function setSamples(int:Int):Void;
	/**
		setStencil(self, bool)
	**/
	public function setStencil(bool:Bool):Void;
	/**
		setStencilBufferSize(self, int)
	**/
	public function setStencilBufferSize(int:Int):Void;
	/**
		setStereo(self, bool)
	**/
	public function setStereo(bool:Bool):Void;
	/**
		setSwapInterval(self, int)
	**/
	public function setSwapInterval(int:Int):Void;
	/**
		setVersion(self, int, int)
	**/
	public function setVersion(int:Int, int:Int):Void;
	/**
		stencil(self) -> bool
	**/
	public function stencil():Bool;
	/**
		stencilBufferSize(self) -> int
	**/
	public function stencilBufferSize():Int;
	/**
		stereo(self) -> bool
	**/
	public function stereo():Bool;
	/**
		swapInterval(self) -> int
	**/
	public function swapInterval():Int;
	/**
		testOption(self, Union[QGL.FormatOptions, QGL.FormatOption]) -> bool
	**/
	public function testOption(Union:Dynamic):Bool;
}