/* This file is generated, do not edit! */
package pyQt5._qOpenGLFunctions_4_1_Core;
@:pythonImport("PyQt5._QOpenGLFunctions_4_1_Core", "QOpenGLFunctions_4_1_Core") extern class QOpenGLFunctions_4_1_Core {
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
		glActiveShaderProgram(self, int, int)
	**/
	public function glActiveShaderProgram(int:Int, int:Int):Void;
	/**
		glActiveTexture(self, int)
	**/
	public function glActiveTexture(int:Int):Void;
	/**
		glAttachShader(self, int, int)
	**/
	public function glAttachShader(int:Int, int:Int):Void;
	/**
		glBeginConditionalRender(self, int, int)
	**/
	public function glBeginConditionalRender(int:Int, int:Int):Void;
	/**
		glBeginQuery(self, int, int)
	**/
	public function glBeginQuery(int:Int, int:Int):Void;
	/**
		glBeginQueryIndexed(self, int, int, int)
	**/
	public function glBeginQueryIndexed(int:Int, int:Int, int:Int):Void;
	/**
		glBeginTransformFeedback(self, int)
	**/
	public function glBeginTransformFeedback(int:Int):Void;
	/**
		glBindAttribLocation(self, int, int, str)
	**/
	public function glBindAttribLocation(int:Int, int:Int, str:String):Void;
	/**
		glBindBuffer(self, int, int)
	**/
	public function glBindBuffer(int:Int, int:Int):Void;
	/**
		glBindBufferBase(self, int, int, int)
	**/
	public function glBindBufferBase(int:Int, int:Int, int:Int):Void;
	/**
		glBindFramebuffer(self, int, int)
	**/
	public function glBindFramebuffer(int:Int, int:Int):Void;
	/**
		glBindProgramPipeline(self, int)
	**/
	public function glBindProgramPipeline(int:Int):Void;
	/**
		glBindRenderbuffer(self, int, int)
	**/
	public function glBindRenderbuffer(int:Int, int:Int):Void;
	/**
		glBindSampler(self, int, int)
	**/
	public function glBindSampler(int:Int, int:Int):Void;
	/**
		glBindTexture(self, int, int)
	**/
	public function glBindTexture(int:Int, int:Int):Void;
	/**
		glBindTransformFeedback(self, int, int)
	**/
	public function glBindTransformFeedback(int:Int, int:Int):Void;
	/**
		glBindVertexArray(self, int)
	**/
	public function glBindVertexArray(int:Int):Void;
	/**
		glBlendColor(self, float, float, float, float)
	**/
	public function glBlendColor(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glBlendEquation(self, int)
	**/
	public function glBlendEquation(int:Int):Void;
	/**
		glBlendEquationSeparate(self, int, int)
	**/
	public function glBlendEquationSeparate(int:Int, int:Int):Void;
	/**
		glBlendEquationSeparatei(self, int, int, int)
	**/
	public function glBlendEquationSeparatei(int:Int, int:Int, int:Int):Void;
	/**
		glBlendEquationi(self, int, int)
	**/
	public function glBlendEquationi(int:Int, int:Int):Void;
	/**
		glBlendFunc(self, int, int)
	**/
	public function glBlendFunc(int:Int, int:Int):Void;
	/**
		glBlendFuncSeparate(self, int, int, int, int)
	**/
	public function glBlendFuncSeparate(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glBlendFuncSeparatei(self, int, int, int, int, int)
	**/
	public function glBlendFuncSeparatei(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glBlendFunci(self, int, int, int)
	**/
	public function glBlendFunci(int:Int, int:Int, int:Int):Void;
	/**
		glBlitFramebuffer(self, int, int, int, int, int, int, int, int, int, int)
	**/
	public function glBlitFramebuffer(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glBufferData(self, int, int, PYQT_OPENGL_ARRAY, int)
	**/
	public function glBufferData(int:Int, int:Int, PYQT:Dynamic, int:Int):Void;
	/**
		glBufferSubData(self, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glBufferSubData(int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glCheckFramebufferStatus(self, int) -> int
	**/
	public function glCheckFramebufferStatus(int:Int):Int;
	/**
		glClampColor(self, int, int)
	**/
	public function glClampColor(int:Int, int:Int):Void;
	/**
		glClear(self, int)
	**/
	public function glClear(int:Int):Void;
	/**
		glClearBufferfi(self, int, int, float, int)
	**/
	public function glClearBufferfi(int:Int, int:Int, float:Float, int:Int):Void;
	/**
		glClearColor(self, float, float, float, float)
	**/
	public function glClearColor(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glClearDepth(self, float)
	**/
	public function glClearDepth(float:Float):Void;
	/**
		glClearDepthf(self, float)
	**/
	public function glClearDepthf(float:Float):Void;
	/**
		glClearStencil(self, int)
	**/
	public function glClearStencil(int:Int):Void;
	/**
		glColorMask(self, int, int, int, int)
	**/
	public function glColorMask(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glColorMaski(self, int, int, int, int, int)
	**/
	public function glColorMaski(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glColorP3ui(self, int, int)
	**/
	public function glColorP3ui(int:Int, int:Int):Void;
	/**
		glColorP4ui(self, int, int)
	**/
	public function glColorP4ui(int:Int, int:Int):Void;
	/**
		glCompileShader(self, int)
	**/
	public function glCompileShader(int:Int):Void;
	/**
		glCompressedTexImage1D(self, int, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glCompressedTexImage1D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glCompressedTexImage2D(self, int, int, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glCompressedTexImage2D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glCompressedTexImage3D(self, int, int, int, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glCompressedTexImage3D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glCompressedTexSubImage1D(self, int, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glCompressedTexSubImage1D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glCompressedTexSubImage2D(self, int, int, int, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glCompressedTexSubImage2D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glCompressedTexSubImage3D(self, int, int, int, int, int, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glCompressedTexSubImage3D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glCopyTexImage1D(self, int, int, int, int, int, int, int)
	**/
	public function glCopyTexImage1D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glCopyTexImage2D(self, int, int, int, int, int, int, int, int)
	**/
	public function glCopyTexImage2D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glCopyTexSubImage1D(self, int, int, int, int, int, int)
	**/
	public function glCopyTexSubImage1D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glCopyTexSubImage2D(self, int, int, int, int, int, int, int, int)
	**/
	public function glCopyTexSubImage2D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glCopyTexSubImage3D(self, int, int, int, int, int, int, int, int, int)
	**/
	public function glCopyTexSubImage3D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glCreateProgram(self) -> int
	**/
	public function glCreateProgram():Int;
	/**
		glCreateShader(self, int) -> int
	**/
	public function glCreateShader(int:Int):Int;
	/**
		glCullFace(self, int)
	**/
	public function glCullFace(int:Int):Void;
	/**
		glDeleteBuffers(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glDeleteBuffers(int:Int, PYQT:Dynamic):Void;
	/**
		glDeleteProgram(self, int)
	**/
	public function glDeleteProgram(int:Int):Void;
	/**
		glDeleteQueries(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glDeleteQueries(int:Int, PYQT:Dynamic):Void;
	/**
		glDeleteShader(self, int)
	**/
	public function glDeleteShader(int:Int):Void;
	/**
		glDeleteTextures(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glDeleteTextures(int:Int, PYQT:Dynamic):Void;
	/**
		glDepthFunc(self, int)
	**/
	public function glDepthFunc(int:Int):Void;
	/**
		glDepthMask(self, int)
	**/
	public function glDepthMask(int:Int):Void;
	/**
		glDepthRange(self, float, float)
	**/
	public function glDepthRange(float:Float, float:Float):Void;
	/**
		glDepthRangeIndexed(self, int, float, float)
	**/
	public function glDepthRangeIndexed(int:Int, float:Float, float:Float):Void;
	/**
		glDepthRangef(self, float, float)
	**/
	public function glDepthRangef(float:Float, float:Float):Void;
	/**
		glDetachShader(self, int, int)
	**/
	public function glDetachShader(int:Int, int:Int):Void;
	/**
		glDisable(self, int)
	**/
	public function glDisable(int:Int):Void;
	/**
		glDisableVertexAttribArray(self, int)
	**/
	public function glDisableVertexAttribArray(int:Int):Void;
	/**
		glDisablei(self, int, int)
	**/
	public function glDisablei(int:Int, int:Int):Void;
	/**
		glDrawArrays(self, int, int, int)
	**/
	public function glDrawArrays(int:Int, int:Int, int:Int):Void;
	/**
		glDrawArraysInstanced(self, int, int, int, int)
	**/
	public function glDrawArraysInstanced(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glDrawBuffer(self, int)
	**/
	public function glDrawBuffer(int:Int):Void;
	/**
		glDrawBuffers(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glDrawBuffers(int:Int, PYQT:Dynamic):Void;
	/**
		glDrawElements(self, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glDrawElements(int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glDrawRangeElements(self, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glDrawRangeElements(int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glDrawTransformFeedback(self, int, int)
	**/
	public function glDrawTransformFeedback(int:Int, int:Int):Void;
	/**
		glDrawTransformFeedbackStream(self, int, int, int)
	**/
	public function glDrawTransformFeedbackStream(int:Int, int:Int, int:Int):Void;
	/**
		glEnable(self, int)
	**/
	public function glEnable(int:Int):Void;
	/**
		glEnableVertexAttribArray(self, int)
	**/
	public function glEnableVertexAttribArray(int:Int):Void;
	/**
		glEnablei(self, int, int)
	**/
	public function glEnablei(int:Int, int:Int):Void;
	/**
		glEndConditionalRender(self)
	**/
	public function glEndConditionalRender():Void;
	/**
		glEndQuery(self, int)
	**/
	public function glEndQuery(int:Int):Void;
	/**
		glEndQueryIndexed(self, int, int)
	**/
	public function glEndQueryIndexed(int:Int, int:Int):Void;
	/**
		glEndTransformFeedback(self)
	**/
	public function glEndTransformFeedback():Void;
	/**
		glFinish(self)
	**/
	public function glFinish():Void;
	/**
		glFlush(self)
	**/
	public function glFlush():Void;
	/**
		glFramebufferRenderbuffer(self, int, int, int, int)
	**/
	public function glFramebufferRenderbuffer(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glFramebufferTexture(self, int, int, int, int)
	**/
	public function glFramebufferTexture(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glFramebufferTexture1D(self, int, int, int, int, int)
	**/
	public function glFramebufferTexture1D(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glFramebufferTexture2D(self, int, int, int, int, int)
	**/
	public function glFramebufferTexture2D(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glFramebufferTexture3D(self, int, int, int, int, int, int)
	**/
	public function glFramebufferTexture3D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glFramebufferTextureLayer(self, int, int, int, int, int)
	**/
	public function glFramebufferTextureLayer(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glFrontFace(self, int)
	**/
	public function glFrontFace(int:Int):Void;
	/**
		glGenBuffers(self, int) -> Union[int, Tuple[int, ...]]
	**/
	public function glGenBuffers(int:Int):Dynamic;
	/**
		glGenQueries(self, int) -> Union[int, Tuple[int, ...]]
	**/
	public function glGenQueries(int:Int):Dynamic;
	/**
		glGenTextures(self, int) -> Union[int, Tuple[int, ...]]
	**/
	public function glGenTextures(int:Int):Dynamic;
	/**
		glGenerateMipmap(self, int)
	**/
	public function glGenerateMipmap(int:Int):Void;
	/**
		glGetActiveAttrib(self, int, int) -> Tuple[str, int, int]
	**/
	public function glGetActiveAttrib(int:Int, int:Int):Dynamic;
	/**
		glGetActiveUniform(self, int, int) -> Tuple[str, int, int]
	**/
	public function glGetActiveUniform(int:Int, int:Int):Dynamic;
	/**
		glGetAttachedShaders(self, int) -> Tuple[int, ...]
	**/
	public function glGetAttachedShaders(int:Int):Dynamic;
	/**
		glGetAttribLocation(self, int, str) -> int
	**/
	public function glGetAttribLocation(int:Int, str:String):Int;
	/**
		glGetBooleanv(self, int) -> Union[bool, Tuple[bool, ...]]
	**/
	public function glGetBooleanv(int:Int):Dynamic;
	/**
		glGetBufferParameteriv(self, int, int) -> int
	**/
	public function glGetBufferParameteriv(int:Int, int:Int):Int;
	/**
		glGetDoublev(self, int) -> Union[float, Tuple[float, ...]]
	**/
	public function glGetDoublev(int:Int):Dynamic;
	/**
		glGetError(self) -> int
	**/
	public function glGetError():Int;
	/**
		glGetFloatv(self, int) -> Union[float, Tuple[float, ...]]
	**/
	public function glGetFloatv(int:Int):Dynamic;
	/**
		glGetIntegerv(self, int) -> Union[int, Tuple[int, ...]]
	**/
	public function glGetIntegerv(int:Int):Dynamic;
	/**
		glGetProgramInfoLog(self, int) -> bytes
	**/
	public function glGetProgramInfoLog(int:Int):Dynamic;
	/**
		glGetProgramiv(self, int, int) -> Union[int, Tuple[int, int, int]]
	**/
	public function glGetProgramiv(int:Int, int:Int):Dynamic;
	/**
		glGetQueryiv(self, int, int) -> int
	**/
	public function glGetQueryiv(int:Int, int:Int):Int;
	/**
		glGetShaderInfoLog(self, int) -> bytes
	**/
	public function glGetShaderInfoLog(int:Int):Dynamic;
	/**
		glGetShaderSource(self, int) -> bytes
	**/
	public function glGetShaderSource(int:Int):Dynamic;
	/**
		glGetShaderiv(self, int, int) -> int
	**/
	public function glGetShaderiv(int:Int, int:Int):Int;
	/**
		glGetString(self, int) -> str
	**/
	public function glGetString(int:Int):String;
	/**
		glGetTexLevelParameterfv(self, int, int, int) -> float
	**/
	public function glGetTexLevelParameterfv(int:Int, int:Int, int:Int):Float;
	/**
		glGetTexLevelParameteriv(self, int, int, int) -> int
	**/
	public function glGetTexLevelParameteriv(int:Int, int:Int, int:Int):Int;
	/**
		glGetTexParameterfv(self, int, int) -> Union[float, Tuple[float, float, float, float]]
	**/
	public function glGetTexParameterfv(int:Int, int:Int):Dynamic;
	/**
		glGetTexParameteriv(self, int, int) -> Union[int, Tuple[int, int, int, int]]
	**/
	public function glGetTexParameteriv(int:Int, int:Int):Dynamic;
	/**
		glGetUniformLocation(self, int, str) -> int
	**/
	public function glGetUniformLocation(int:Int, str:String):Int;
	/**
		glGetVertexAttribdv(self, int, int) -> Union[float, Tuple[float, float, float, float]]
	**/
	public function glGetVertexAttribdv(int:Int, int:Int):Dynamic;
	/**
		glGetVertexAttribfv(self, int, int) -> Union[float, Tuple[float, float, float, float]]
	**/
	public function glGetVertexAttribfv(int:Int, int:Int):Dynamic;
	/**
		glGetVertexAttribiv(self, int, int) -> Union[int, Tuple[int, int, int, int]]
	**/
	public function glGetVertexAttribiv(int:Int, int:Int):Dynamic;
	/**
		glHint(self, int, int)
	**/
	public function glHint(int:Int, int:Int):Void;
	/**
		glIndexub(self, int)
	**/
	public function glIndexub(int:Int):Void;
	/**
		glIndexubv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glIndexubv(PYQT:Dynamic):Void;
	/**
		glIsBuffer(self, int) -> int
	**/
	public function glIsBuffer(int:Int):Int;
	/**
		glIsEnabled(self, int) -> int
	**/
	public function glIsEnabled(int:Int):Int;
	/**
		glIsEnabledi(self, int, int) -> int
	**/
	public function glIsEnabledi(int:Int, int:Int):Int;
	/**
		glIsFramebuffer(self, int) -> int
	**/
	public function glIsFramebuffer(int:Int):Int;
	/**
		glIsProgram(self, int) -> int
	**/
	public function glIsProgram(int:Int):Int;
	/**
		glIsProgramPipeline(self, int) -> int
	**/
	public function glIsProgramPipeline(int:Int):Int;
	/**
		glIsQuery(self, int) -> int
	**/
	public function glIsQuery(int:Int):Int;
	/**
		glIsRenderbuffer(self, int) -> int
	**/
	public function glIsRenderbuffer(int:Int):Int;
	/**
		glIsSampler(self, int) -> int
	**/
	public function glIsSampler(int:Int):Int;
	/**
		glIsShader(self, int) -> int
	**/
	public function glIsShader(int:Int):Int;
	/**
		glIsTexture(self, int) -> int
	**/
	public function glIsTexture(int:Int):Int;
	/**
		glIsTransformFeedback(self, int) -> int
	**/
	public function glIsTransformFeedback(int:Int):Int;
	/**
		glIsVertexArray(self, int) -> int
	**/
	public function glIsVertexArray(int:Int):Int;
	/**
		glLineWidth(self, float)
	**/
	public function glLineWidth(float:Float):Void;
	/**
		glLinkProgram(self, int)
	**/
	public function glLinkProgram(int:Int):Void;
	/**
		glLogicOp(self, int)
	**/
	public function glLogicOp(int:Int):Void;
	/**
		glMinSampleShading(self, float)
	**/
	public function glMinSampleShading(float:Float):Void;
	/**
		glMultiTexCoordP1ui(self, int, int, int)
	**/
	public function glMultiTexCoordP1ui(int:Int, int:Int, int:Int):Void;
	/**
		glMultiTexCoordP2ui(self, int, int, int)
	**/
	public function glMultiTexCoordP2ui(int:Int, int:Int, int:Int):Void;
	/**
		glMultiTexCoordP3ui(self, int, int, int)
	**/
	public function glMultiTexCoordP3ui(int:Int, int:Int, int:Int):Void;
	/**
		glMultiTexCoordP4ui(self, int, int, int)
	**/
	public function glMultiTexCoordP4ui(int:Int, int:Int, int:Int):Void;
	/**
		glNormalP3ui(self, int, int)
	**/
	public function glNormalP3ui(int:Int, int:Int):Void;
	/**
		glPatchParameteri(self, int, int)
	**/
	public function glPatchParameteri(int:Int, int:Int):Void;
	/**
		glPauseTransformFeedback(self)
	**/
	public function glPauseTransformFeedback():Void;
	/**
		glPixelStoref(self, int, float)
	**/
	public function glPixelStoref(int:Int, float:Float):Void;
	/**
		glPixelStorei(self, int, int)
	**/
	public function glPixelStorei(int:Int, int:Int):Void;
	/**
		glPointParameterf(self, int, float)
	**/
	public function glPointParameterf(int:Int, float:Float):Void;
	/**
		glPointParameterfv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glPointParameterfv(int:Int, PYQT:Dynamic):Void;
	/**
		glPointParameteri(self, int, int)
	**/
	public function glPointParameteri(int:Int, int:Int):Void;
	/**
		glPointParameteriv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glPointParameteriv(int:Int, PYQT:Dynamic):Void;
	/**
		glPointSize(self, float)
	**/
	public function glPointSize(float:Float):Void;
	/**
		glPolygonMode(self, int, int)
	**/
	public function glPolygonMode(int:Int, int:Int):Void;
	/**
		glPolygonOffset(self, float, float)
	**/
	public function glPolygonOffset(float:Float, float:Float):Void;
	/**
		glPrimitiveRestartIndex(self, int)
	**/
	public function glPrimitiveRestartIndex(int:Int):Void;
	/**
		glProgramParameteri(self, int, int, int)
	**/
	public function glProgramParameteri(int:Int, int:Int, int:Int):Void;
	/**
		glProgramUniform1d(self, int, int, float)
	**/
	public function glProgramUniform1d(int:Int, int:Int, float:Float):Void;
	/**
		glProgramUniform1f(self, int, int, float)
	**/
	public function glProgramUniform1f(int:Int, int:Int, float:Float):Void;
	/**
		glProgramUniform1i(self, int, int, int)
	**/
	public function glProgramUniform1i(int:Int, int:Int, int:Int):Void;
	/**
		glProgramUniform1ui(self, int, int, int)
	**/
	public function glProgramUniform1ui(int:Int, int:Int, int:Int):Void;
	/**
		glProgramUniform2d(self, int, int, float, float)
	**/
	public function glProgramUniform2d(int:Int, int:Int, float:Float, float:Float):Void;
	/**
		glProgramUniform2f(self, int, int, float, float)
	**/
	public function glProgramUniform2f(int:Int, int:Int, float:Float, float:Float):Void;
	/**
		glProgramUniform2i(self, int, int, int, int)
	**/
	public function glProgramUniform2i(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glProgramUniform2ui(self, int, int, int, int)
	**/
	public function glProgramUniform2ui(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glProgramUniform3d(self, int, int, float, float, float)
	**/
	public function glProgramUniform3d(int:Int, int:Int, float:Float, float:Float, float:Float):Void;
	/**
		glProgramUniform3f(self, int, int, float, float, float)
	**/
	public function glProgramUniform3f(int:Int, int:Int, float:Float, float:Float, float:Float):Void;
	/**
		glProgramUniform3i(self, int, int, int, int, int)
	**/
	public function glProgramUniform3i(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glProgramUniform3ui(self, int, int, int, int, int)
	**/
	public function glProgramUniform3ui(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glProgramUniform4d(self, int, int, float, float, float, float)
	**/
	public function glProgramUniform4d(int:Int, int:Int, float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glProgramUniform4f(self, int, int, float, float, float, float)
	**/
	public function glProgramUniform4f(int:Int, int:Int, float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glProgramUniform4i(self, int, int, int, int, int, int)
	**/
	public function glProgramUniform4i(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glProgramUniform4ui(self, int, int, int, int, int, int)
	**/
	public function glProgramUniform4ui(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glProvokingVertex(self, int)
	**/
	public function glProvokingVertex(int:Int):Void;
	/**
		glQueryCounter(self, int, int)
	**/
	public function glQueryCounter(int:Int, int:Int):Void;
	/**
		glReadBuffer(self, int)
	**/
	public function glReadBuffer(int:Int):Void;
	/**
		glReleaseShaderCompiler(self)
	**/
	public function glReleaseShaderCompiler():Void;
	/**
		glRenderbufferStorage(self, int, int, int, int)
	**/
	public function glRenderbufferStorage(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glRenderbufferStorageMultisample(self, int, int, int, int, int)
	**/
	public function glRenderbufferStorageMultisample(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glResumeTransformFeedback(self)
	**/
	public function glResumeTransformFeedback():Void;
	/**
		glSampleCoverage(self, float, int)
	**/
	public function glSampleCoverage(float:Float, int:Int):Void;
	/**
		glSampleMaski(self, int, int)
	**/
	public function glSampleMaski(int:Int, int:Int):Void;
	/**
		glSamplerParameterf(self, int, int, float)
	**/
	public function glSamplerParameterf(int:Int, int:Int, float:Float):Void;
	/**
		glSamplerParameteri(self, int, int, int)
	**/
	public function glSamplerParameteri(int:Int, int:Int, int:Int):Void;
	/**
		glScissor(self, int, int, int, int)
	**/
	public function glScissor(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glScissorIndexed(self, int, int, int, int, int)
	**/
	public function glScissorIndexed(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glSecondaryColorP3ui(self, int, int)
	**/
	public function glSecondaryColorP3ui(int:Int, int:Int):Void;
	/**
		glStencilFunc(self, int, int, int)
	**/
	public function glStencilFunc(int:Int, int:Int, int:Int):Void;
	/**
		glStencilFuncSeparate(self, int, int, int, int)
	**/
	public function glStencilFuncSeparate(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glStencilMask(self, int)
	**/
	public function glStencilMask(int:Int):Void;
	/**
		glStencilMaskSeparate(self, int, int)
	**/
	public function glStencilMaskSeparate(int:Int, int:Int):Void;
	/**
		glStencilOp(self, int, int, int)
	**/
	public function glStencilOp(int:Int, int:Int, int:Int):Void;
	/**
		glStencilOpSeparate(self, int, int, int, int)
	**/
	public function glStencilOpSeparate(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glTexBuffer(self, int, int, int)
	**/
	public function glTexBuffer(int:Int, int:Int, int:Int):Void;
	/**
		glTexCoordP1ui(self, int, int)
	**/
	public function glTexCoordP1ui(int:Int, int:Int):Void;
	/**
		glTexCoordP2ui(self, int, int)
	**/
	public function glTexCoordP2ui(int:Int, int:Int):Void;
	/**
		glTexCoordP3ui(self, int, int)
	**/
	public function glTexCoordP3ui(int:Int, int:Int):Void;
	/**
		glTexCoordP4ui(self, int, int)
	**/
	public function glTexCoordP4ui(int:Int, int:Int):Void;
	/**
		glTexImage1D(self, int, int, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glTexImage1D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glTexImage2D(self, int, int, int, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glTexImage2D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glTexImage2DMultisample(self, int, int, int, int, int, int)
	**/
	public function glTexImage2DMultisample(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glTexImage3D(self, int, int, int, int, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glTexImage3D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glTexImage3DMultisample(self, int, int, int, int, int, int, int)
	**/
	public function glTexImage3DMultisample(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glTexParameterf(self, int, int, float)
	**/
	public function glTexParameterf(int:Int, int:Int, float:Float):Void;
	/**
		glTexParameterfv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glTexParameterfv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glTexParameteri(self, int, int, int)
	**/
	public function glTexParameteri(int:Int, int:Int, int:Int):Void;
	/**
		glTexParameteriv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glTexParameteriv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glTexSubImage1D(self, int, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glTexSubImage1D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glTexSubImage2D(self, int, int, int, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glTexSubImage2D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glTexSubImage3D(self, int, int, int, int, int, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glTexSubImage3D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glUniform1d(self, int, float)
	**/
	public function glUniform1d(int:Int, float:Float):Void;
	/**
		glUniform1f(self, int, float)
	**/
	public function glUniform1f(int:Int, float:Float):Void;
	/**
		glUniform1fv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glUniform1fv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glUniform1i(self, int, int)
	**/
	public function glUniform1i(int:Int, int:Int):Void;
	/**
		glUniform1iv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glUniform1iv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glUniform1ui(self, int, int)
	**/
	public function glUniform1ui(int:Int, int:Int):Void;
	/**
		glUniform2d(self, int, float, float)
	**/
	public function glUniform2d(int:Int, float:Float, float:Float):Void;
	/**
		glUniform2f(self, int, float, float)
	**/
	public function glUniform2f(int:Int, float:Float, float:Float):Void;
	/**
		glUniform2fv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glUniform2fv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glUniform2i(self, int, int, int)
	**/
	public function glUniform2i(int:Int, int:Int, int:Int):Void;
	/**
		glUniform2iv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glUniform2iv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glUniform2ui(self, int, int, int)
	**/
	public function glUniform2ui(int:Int, int:Int, int:Int):Void;
	/**
		glUniform3d(self, int, float, float, float)
	**/
	public function glUniform3d(int:Int, float:Float, float:Float, float:Float):Void;
	/**
		glUniform3f(self, int, float, float, float)
	**/
	public function glUniform3f(int:Int, float:Float, float:Float, float:Float):Void;
	/**
		glUniform3fv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glUniform3fv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glUniform3i(self, int, int, int, int)
	**/
	public function glUniform3i(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glUniform3iv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glUniform3iv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glUniform3ui(self, int, int, int, int)
	**/
	public function glUniform3ui(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glUniform4d(self, int, float, float, float, float)
	**/
	public function glUniform4d(int:Int, float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glUniform4f(self, int, float, float, float, float)
	**/
	public function glUniform4f(int:Int, float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glUniform4fv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glUniform4fv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glUniform4i(self, int, int, int, int, int)
	**/
	public function glUniform4i(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glUniform4iv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glUniform4iv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glUniform4ui(self, int, int, int, int, int)
	**/
	public function glUniform4ui(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glUniformBlockBinding(self, int, int, int)
	**/
	public function glUniformBlockBinding(int:Int, int:Int, int:Int):Void;
	/**
		glUniformMatrix2fv(self, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glUniformMatrix2fv(int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glUniformMatrix3fv(self, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glUniformMatrix3fv(int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glUniformMatrix4fv(self, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glUniformMatrix4fv(int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glUnmapBuffer(self, int) -> int
	**/
	public function glUnmapBuffer(int:Int):Int;
	/**
		glUseProgram(self, int)
	**/
	public function glUseProgram(int:Int):Void;
	/**
		glUseProgramStages(self, int, int, int)
	**/
	public function glUseProgramStages(int:Int, int:Int, int:Int):Void;
	/**
		glValidateProgram(self, int)
	**/
	public function glValidateProgram(int:Int):Void;
	/**
		glValidateProgramPipeline(self, int)
	**/
	public function glValidateProgramPipeline(int:Int):Void;
	/**
		glVertexAttribDivisor(self, int, int)
	**/
	public function glVertexAttribDivisor(int:Int, int:Int):Void;
	/**
		glVertexAttribL1d(self, int, float)
	**/
	public function glVertexAttribL1d(int:Int, float:Float):Void;
	/**
		glVertexAttribL2d(self, int, float, float)
	**/
	public function glVertexAttribL2d(int:Int, float:Float, float:Float):Void;
	/**
		glVertexAttribL3d(self, int, float, float, float)
	**/
	public function glVertexAttribL3d(int:Int, float:Float, float:Float, float:Float):Void;
	/**
		glVertexAttribL4d(self, int, float, float, float, float)
	**/
	public function glVertexAttribL4d(int:Int, float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glVertexAttribP1ui(self, int, int, int, int)
	**/
	public function glVertexAttribP1ui(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glVertexAttribP2ui(self, int, int, int, int)
	**/
	public function glVertexAttribP2ui(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glVertexAttribP3ui(self, int, int, int, int)
	**/
	public function glVertexAttribP3ui(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glVertexAttribP4ui(self, int, int, int, int)
	**/
	public function glVertexAttribP4ui(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glVertexAttribPointer(self, int, int, int, int, int, PYQT_OPENGL_BOUND_ARRAY)
	**/
	public function glVertexAttribPointer(int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glVertexP2ui(self, int, int)
	**/
	public function glVertexP2ui(int:Int, int:Int):Void;
	/**
		glVertexP3ui(self, int, int)
	**/
	public function glVertexP3ui(int:Int, int:Int):Void;
	/**
		glVertexP4ui(self, int, int)
	**/
	public function glVertexP4ui(int:Int, int:Int):Void;
	/**
		glViewport(self, int, int, int, int)
	**/
	public function glViewport(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glViewportIndexedf(self, int, float, float, float, float)
	**/
	public function glViewportIndexedf(int:Int, float:Float, float:Float, float:Float, float:Float):Void;
	/**
		initializeOpenGLFunctions(self) -> bool
	**/
	public function initializeOpenGLFunctions():Bool;
}