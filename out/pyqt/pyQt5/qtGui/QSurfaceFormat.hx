/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QSurfaceFormat") extern class QSurfaceFormat {
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
	public function ColorSpace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var CompatibilityProfile : Dynamic;
	static public var CoreProfile : Dynamic;
	static public var DebugContext : Dynamic;
	static public var DefaultColorSpace : Dynamic;
	static public var DefaultRenderableType : Dynamic;
	static public var DefaultSwapBehavior : Dynamic;
	static public var DeprecatedFunctions : Dynamic;
	static public var DoubleBuffer : Dynamic;
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
	public function FormatOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QSurfaceFormat.FormatOptions()
		QSurfaceFormat.FormatOptions(Union[QSurfaceFormat.FormatOptions, QSurfaceFormat.FormatOption])
		QSurfaceFormat.FormatOptions(QSurfaceFormat.FormatOptions)
	**/
	static public function FormatOptions(args:haxe.extern.Rest<Dynamic>):Void;
	static public var NoProfile : Dynamic;
	static public var OpenGL : Dynamic;
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
	static public var OpenGLES : Dynamic;
	static public var OpenVG : Dynamic;
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
	public function RenderableType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ResetNotification : Dynamic;
	static public var SingleBuffer : Dynamic;
	static public var StereoBuffers : Dynamic;
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
	public function SwapBehavior(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TripleBuffer : Dynamic;
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
		alphaBufferSize(self) -> int
	**/
	public function alphaBufferSize():Int;
	/**
		blueBufferSize(self) -> int
	**/
	public function blueBufferSize():Int;
	/**
		colorSpace(self) -> QSurfaceFormat.ColorSpace
	**/
	public function colorSpace():Dynamic;
	/**
		defaultFormat() -> QSurfaceFormat
	**/
	static public function defaultFormat():Dynamic;
	/**
		depthBufferSize(self) -> int
	**/
	public function depthBufferSize():Int;
	/**
		greenBufferSize(self) -> int
	**/
	public function greenBufferSize():Int;
	/**
		hasAlpha(self) -> bool
	**/
	public function hasAlpha():Bool;
	/**
		majorVersion(self) -> int
	**/
	public function majorVersion():Int;
	/**
		minorVersion(self) -> int
	**/
	public function minorVersion():Int;
	/**
		options(self) -> QSurfaceFormat.FormatOptions
	**/
	public function options():Dynamic;
	/**
		profile(self) -> QSurfaceFormat.OpenGLContextProfile
	**/
	public function profile():Dynamic;
	/**
		redBufferSize(self) -> int
	**/
	public function redBufferSize():Int;
	/**
		renderableType(self) -> QSurfaceFormat.RenderableType
	**/
	public function renderableType():Dynamic;
	static public var sRGBColorSpace : Dynamic;
	/**
		samples(self) -> int
	**/
	public function samples():Int;
	/**
		setAlphaBufferSize(self, int)
	**/
	public function setAlphaBufferSize(int:Int):Void;
	/**
		setBlueBufferSize(self, int)
	**/
	public function setBlueBufferSize(int:Int):Void;
	/**
		setColorSpace(self, QSurfaceFormat.ColorSpace)
	**/
	public function setColorSpace(QSurfaceFormat:Dynamic):Void;
	/**
		setDefaultFormat(QSurfaceFormat)
	**/
	static public function setDefaultFormat(QSurfaceFormat:Dynamic):Void;
	/**
		setDepthBufferSize(self, int)
	**/
	public function setDepthBufferSize(int:Int):Void;
	/**
		setGreenBufferSize(self, int)
	**/
	public function setGreenBufferSize(int:Int):Void;
	/**
		setMajorVersion(self, int)
	**/
	public function setMajorVersion(int:Int):Void;
	/**
		setMinorVersion(self, int)
	**/
	public function setMinorVersion(int:Int):Void;
	/**
		setOption(self, Union[QSurfaceFormat.FormatOptions, QSurfaceFormat.FormatOption])
		setOption(self, QSurfaceFormat.FormatOption, on: bool = True)
	**/
	public function setOption(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setOptions(self, Union[QSurfaceFormat.FormatOptions, QSurfaceFormat.FormatOption])
	**/
	public function setOptions(Union:Dynamic):Void;
	/**
		setProfile(self, QSurfaceFormat.OpenGLContextProfile)
	**/
	public function setProfile(QSurfaceFormat:Dynamic):Void;
	/**
		setRedBufferSize(self, int)
	**/
	public function setRedBufferSize(int:Int):Void;
	/**
		setRenderableType(self, QSurfaceFormat.RenderableType)
	**/
	public function setRenderableType(QSurfaceFormat:Dynamic):Void;
	/**
		setSamples(self, int)
	**/
	public function setSamples(int:Int):Void;
	/**
		setStencilBufferSize(self, int)
	**/
	public function setStencilBufferSize(int:Int):Void;
	/**
		setStereo(self, bool)
	**/
	public function setStereo(bool:Bool):Void;
	/**
		setSwapBehavior(self, QSurfaceFormat.SwapBehavior)
	**/
	public function setSwapBehavior(QSurfaceFormat:Dynamic):Void;
	/**
		setSwapInterval(self, int)
	**/
	public function setSwapInterval(int:Int):Void;
	/**
		setVersion(self, int, int)
	**/
	public function setVersion(int:Int, int:Int):Void;
	/**
		stencilBufferSize(self) -> int
	**/
	public function stencilBufferSize():Int;
	/**
		stereo(self) -> bool
	**/
	public function stereo():Bool;
	/**
		swapBehavior(self) -> QSurfaceFormat.SwapBehavior
	**/
	public function swapBehavior():Dynamic;
	/**
		swapInterval(self) -> int
	**/
	public function swapInterval():Int;
	/**
		testOption(self, Union[QSurfaceFormat.FormatOptions, QSurfaceFormat.FormatOption]) -> bool
		testOption(self, QSurfaceFormat.FormatOption) -> bool
	**/
	public function testOption(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		version(self) -> Tuple[int, int]
	**/
	public function version():Dynamic;
}