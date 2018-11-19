/* This file is generated, do not edit! */
package pyQt5._qOpenGLFunctions_2_1;
@:pythonImport("PyQt5._QOpenGLFunctions_2_1", "QOpenGLFunctions_2_1") extern class QOpenGLFunctions_2_1 {
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
		glAccum(self, int, float)
	**/
	public function glAccum(int:Int, float:Float):Void;
	/**
		glActiveTexture(self, int)
	**/
	public function glActiveTexture(int:Int):Void;
	/**
		glAlphaFunc(self, int, float)
	**/
	public function glAlphaFunc(int:Int, float:Float):Void;
	/**
		glArrayElement(self, int)
	**/
	public function glArrayElement(int:Int):Void;
	/**
		glAttachShader(self, int, int)
	**/
	public function glAttachShader(int:Int, int:Int):Void;
	/**
		glBegin(self, int)
	**/
	public function glBegin(int:Int):Void;
	/**
		glBeginQuery(self, int, int)
	**/
	public function glBeginQuery(int:Int, int:Int):Void;
	/**
		glBindAttribLocation(self, int, int, str)
	**/
	public function glBindAttribLocation(int:Int, int:Int, str:String):Void;
	/**
		glBindBuffer(self, int, int)
	**/
	public function glBindBuffer(int:Int, int:Int):Void;
	/**
		glBindTexture(self, int, int)
	**/
	public function glBindTexture(int:Int, int:Int):Void;
	/**
		glBitmap(self, int, int, float, float, float, float, PYQT_OPENGL_ARRAY)
	**/
	public function glBitmap(int:Int, int:Int, float:Float, float:Float, float:Float, float:Float, PYQT:Dynamic):Void;
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
		glBlendFunc(self, int, int)
	**/
	public function glBlendFunc(int:Int, int:Int):Void;
	/**
		glBlendFuncSeparate(self, int, int, int, int)
	**/
	public function glBlendFuncSeparate(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glBufferData(self, int, int, PYQT_OPENGL_ARRAY, int)
	**/
	public function glBufferData(int:Int, int:Int, PYQT:Dynamic, int:Int):Void;
	/**
		glBufferSubData(self, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glBufferSubData(int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glCallList(self, int)
	**/
	public function glCallList(int:Int):Void;
	/**
		glClear(self, int)
	**/
	public function glClear(int:Int):Void;
	/**
		glClearAccum(self, float, float, float, float)
	**/
	public function glClearAccum(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glClearColor(self, float, float, float, float)
	**/
	public function glClearColor(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glClearDepth(self, float)
	**/
	public function glClearDepth(float:Float):Void;
	/**
		glClearIndex(self, float)
	**/
	public function glClearIndex(float:Float):Void;
	/**
		glClearStencil(self, int)
	**/
	public function glClearStencil(int:Int):Void;
	/**
		glClientActiveTexture(self, int)
	**/
	public function glClientActiveTexture(int:Int):Void;
	/**
		glClipPlane(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glClipPlane(int:Int, PYQT:Dynamic):Void;
	/**
		glColor3b(self, int, int, int)
	**/
	public function glColor3b(int:Int, int:Int, int:Int):Void;
	/**
		glColor3bv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glColor3bv(PYQT:Dynamic):Void;
	/**
		glColor3d(self, float, float, float)
	**/
	public function glColor3d(float:Float, float:Float, float:Float):Void;
	/**
		glColor3dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glColor3dv(PYQT:Dynamic):Void;
	/**
		glColor3f(self, float, float, float)
	**/
	public function glColor3f(float:Float, float:Float, float:Float):Void;
	/**
		glColor3fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glColor3fv(PYQT:Dynamic):Void;
	/**
		glColor3i(self, int, int, int)
	**/
	public function glColor3i(int:Int, int:Int, int:Int):Void;
	/**
		glColor3iv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glColor3iv(PYQT:Dynamic):Void;
	/**
		glColor3s(self, int, int, int)
	**/
	public function glColor3s(int:Int, int:Int, int:Int):Void;
	/**
		glColor3sv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glColor3sv(PYQT:Dynamic):Void;
	/**
		glColor3ub(self, int, int, int)
	**/
	public function glColor3ub(int:Int, int:Int, int:Int):Void;
	/**
		glColor3ubv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glColor3ubv(PYQT:Dynamic):Void;
	/**
		glColor3ui(self, int, int, int)
	**/
	public function glColor3ui(int:Int, int:Int, int:Int):Void;
	/**
		glColor3uiv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glColor3uiv(PYQT:Dynamic):Void;
	/**
		glColor3us(self, int, int, int)
	**/
	public function glColor3us(int:Int, int:Int, int:Int):Void;
	/**
		glColor3usv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glColor3usv(PYQT:Dynamic):Void;
	/**
		glColor4b(self, int, int, int, int)
	**/
	public function glColor4b(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glColor4bv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glColor4bv(PYQT:Dynamic):Void;
	/**
		glColor4d(self, float, float, float, float)
	**/
	public function glColor4d(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glColor4dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glColor4dv(PYQT:Dynamic):Void;
	/**
		glColor4f(self, float, float, float, float)
	**/
	public function glColor4f(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glColor4fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glColor4fv(PYQT:Dynamic):Void;
	/**
		glColor4i(self, int, int, int, int)
	**/
	public function glColor4i(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glColor4iv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glColor4iv(PYQT:Dynamic):Void;
	/**
		glColor4s(self, int, int, int, int)
	**/
	public function glColor4s(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glColor4sv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glColor4sv(PYQT:Dynamic):Void;
	/**
		glColor4ub(self, int, int, int, int)
	**/
	public function glColor4ub(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glColor4ubv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glColor4ubv(PYQT:Dynamic):Void;
	/**
		glColor4ui(self, int, int, int, int)
	**/
	public function glColor4ui(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glColor4uiv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glColor4uiv(PYQT:Dynamic):Void;
	/**
		glColor4us(self, int, int, int, int)
	**/
	public function glColor4us(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glColor4usv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glColor4usv(PYQT:Dynamic):Void;
	/**
		glColorMask(self, int, int, int, int)
	**/
	public function glColorMask(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glColorMaterial(self, int, int)
	**/
	public function glColorMaterial(int:Int, int:Int):Void;
	/**
		glColorPointer(self, int, int, int, PYQT_OPENGL_BOUND_ARRAY)
	**/
	public function glColorPointer(int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glColorSubTable(self, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glColorSubTable(int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glColorTable(self, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glColorTable(int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glColorTableParameterfv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glColorTableParameterfv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glColorTableParameteriv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glColorTableParameteriv(int:Int, int:Int, PYQT:Dynamic):Void;
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
		glConvolutionFilter1D(self, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glConvolutionFilter1D(int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glConvolutionFilter2D(self, int, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glConvolutionFilter2D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glConvolutionParameterf(self, int, int, float)
	**/
	public function glConvolutionParameterf(int:Int, int:Int, float:Float):Void;
	/**
		glConvolutionParameterfv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glConvolutionParameterfv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glConvolutionParameteri(self, int, int, int)
	**/
	public function glConvolutionParameteri(int:Int, int:Int, int:Int):Void;
	/**
		glConvolutionParameteriv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glConvolutionParameteriv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glCopyColorSubTable(self, int, int, int, int, int)
	**/
	public function glCopyColorSubTable(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glCopyColorTable(self, int, int, int, int, int)
	**/
	public function glCopyColorTable(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glCopyConvolutionFilter1D(self, int, int, int, int, int)
	**/
	public function glCopyConvolutionFilter1D(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glCopyConvolutionFilter2D(self, int, int, int, int, int, int)
	**/
	public function glCopyConvolutionFilter2D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glCopyPixels(self, int, int, int, int, int)
	**/
	public function glCopyPixels(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
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
		glDeleteLists(self, int, int)
	**/
	public function glDeleteLists(int:Int, int:Int):Void;
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
		glDetachShader(self, int, int)
	**/
	public function glDetachShader(int:Int, int:Int):Void;
	/**
		glDisable(self, int)
	**/
	public function glDisable(int:Int):Void;
	/**
		glDisableClientState(self, int)
	**/
	public function glDisableClientState(int:Int):Void;
	/**
		glDisableVertexAttribArray(self, int)
	**/
	public function glDisableVertexAttribArray(int:Int):Void;
	/**
		glDrawArrays(self, int, int, int)
	**/
	public function glDrawArrays(int:Int, int:Int, int:Int):Void;
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
		glDrawPixels(self, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glDrawPixels(int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glDrawRangeElements(self, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glDrawRangeElements(int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glEdgeFlag(self, int)
	**/
	public function glEdgeFlag(int:Int):Void;
	/**
		glEdgeFlagPointer(self, int, PYQT_OPENGL_BOUND_ARRAY)
	**/
	public function glEdgeFlagPointer(int:Int, PYQT:Dynamic):Void;
	/**
		glEdgeFlagv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glEdgeFlagv(PYQT:Dynamic):Void;
	/**
		glEnable(self, int)
	**/
	public function glEnable(int:Int):Void;
	/**
		glEnableClientState(self, int)
	**/
	public function glEnableClientState(int:Int):Void;
	/**
		glEnableVertexAttribArray(self, int)
	**/
	public function glEnableVertexAttribArray(int:Int):Void;
	/**
		glEnd(self)
	**/
	public function glEnd():Void;
	/**
		glEndList(self)
	**/
	public function glEndList():Void;
	/**
		glEndQuery(self, int)
	**/
	public function glEndQuery(int:Int):Void;
	/**
		glEvalCoord1d(self, float)
	**/
	public function glEvalCoord1d(float:Float):Void;
	/**
		glEvalCoord1dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glEvalCoord1dv(PYQT:Dynamic):Void;
	/**
		glEvalCoord1f(self, float)
	**/
	public function glEvalCoord1f(float:Float):Void;
	/**
		glEvalCoord1fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glEvalCoord1fv(PYQT:Dynamic):Void;
	/**
		glEvalCoord2d(self, float, float)
	**/
	public function glEvalCoord2d(float:Float, float:Float):Void;
	/**
		glEvalCoord2dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glEvalCoord2dv(PYQT:Dynamic):Void;
	/**
		glEvalCoord2f(self, float, float)
	**/
	public function glEvalCoord2f(float:Float, float:Float):Void;
	/**
		glEvalCoord2fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glEvalCoord2fv(PYQT:Dynamic):Void;
	/**
		glEvalMesh1(self, int, int, int)
	**/
	public function glEvalMesh1(int:Int, int:Int, int:Int):Void;
	/**
		glEvalMesh2(self, int, int, int, int, int)
	**/
	public function glEvalMesh2(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glEvalPoint1(self, int)
	**/
	public function glEvalPoint1(int:Int):Void;
	/**
		glEvalPoint2(self, int, int)
	**/
	public function glEvalPoint2(int:Int, int:Int):Void;
	/**
		glFinish(self)
	**/
	public function glFinish():Void;
	/**
		glFlush(self)
	**/
	public function glFlush():Void;
	/**
		glFogCoordPointer(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glFogCoordPointer(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glFogCoordd(self, float)
	**/
	public function glFogCoordd(float:Float):Void;
	/**
		glFogCoorddv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glFogCoorddv(PYQT:Dynamic):Void;
	/**
		glFogCoordf(self, float)
	**/
	public function glFogCoordf(float:Float):Void;
	/**
		glFogCoordfv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glFogCoordfv(PYQT:Dynamic):Void;
	/**
		glFogf(self, int, float)
	**/
	public function glFogf(int:Int, float:Float):Void;
	/**
		glFogfv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glFogfv(int:Int, PYQT:Dynamic):Void;
	/**
		glFogi(self, int, int)
	**/
	public function glFogi(int:Int, int:Int):Void;
	/**
		glFogiv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glFogiv(int:Int, PYQT:Dynamic):Void;
	/**
		glFrontFace(self, int)
	**/
	public function glFrontFace(int:Int):Void;
	/**
		glFrustum(self, float, float, float, float, float, float)
	**/
	public function glFrustum(float:Float, float:Float, float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glGenBuffers(self, int) -> Union[int, Tuple[int, ...]]
	**/
	public function glGenBuffers(int:Int):Dynamic;
	/**
		glGenLists(self, int) -> int
	**/
	public function glGenLists(int:Int):Int;
	/**
		glGenQueries(self, int) -> Union[int, Tuple[int, ...]]
	**/
	public function glGenQueries(int:Int):Dynamic;
	/**
		glGenTextures(self, int) -> Union[int, Tuple[int, ...]]
	**/
	public function glGenTextures(int:Int):Dynamic;
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
		glGetClipPlane(self, int) -> Tuple[float, float, float, float]
	**/
	public function glGetClipPlane(int:Int):Dynamic;
	/**
		glGetColorTableParameterfv(self, int, int) -> Union[float, Tuple[float, float, float, float]]
	**/
	public function glGetColorTableParameterfv(int:Int, int:Int):Dynamic;
	/**
		glGetColorTableParameteriv(self, int, int) -> Union[int, Tuple[int, int, int, int]]
	**/
	public function glGetColorTableParameteriv(int:Int, int:Int):Dynamic;
	/**
		glGetConvolutionParameterfv(self, int, int) -> Union[float, Tuple[float, float, float, float]]
	**/
	public function glGetConvolutionParameterfv(int:Int, int:Int):Dynamic;
	/**
		glGetConvolutionParameteriv(self, int, int) -> Union[int, Tuple[int, int, int, int]]
	**/
	public function glGetConvolutionParameteriv(int:Int, int:Int):Dynamic;
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
		glGetLightfv(self, int, int) -> Union[float, Tuple[float, float, float], Tuple[float, float, float, float]]
	**/
	public function glGetLightfv(int:Int, int:Int):Dynamic;
	/**
		glGetLightiv(self, int, int) -> Union[int, Tuple[int, int, int], Tuple[int, int, int, int]]
	**/
	public function glGetLightiv(int:Int, int:Int):Dynamic;
	/**
		glGetMaterialfv(self, int, int) -> Union[float, Tuple[float, float, float], Tuple[float, float, float, float]]
	**/
	public function glGetMaterialfv(int:Int, int:Int):Dynamic;
	/**
		glGetMaterialiv(self, int, int) -> Union[int, Tuple[int, int, int], Tuple[int, int, int, int]]
	**/
	public function glGetMaterialiv(int:Int, int:Int):Dynamic;
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
		glGetTexEnvfv(self, int, int) -> Union[float, Tuple[float, float, float, float]]
	**/
	public function glGetTexEnvfv(int:Int, int:Int):Dynamic;
	/**
		glGetTexEnviv(self, int, int) -> Union[int, Tuple[int, int, int, int]]
	**/
	public function glGetTexEnviv(int:Int, int:Int):Dynamic;
	/**
		glGetTexGendv(self, int, int) -> Union[float, Tuple[float, float, float, float]]
	**/
	public function glGetTexGendv(int:Int, int:Int):Dynamic;
	/**
		glGetTexGenfv(self, int, int) -> Union[float, Tuple[float, float, float, float]]
	**/
	public function glGetTexGenfv(int:Int, int:Int):Dynamic;
	/**
		glGetTexGeniv(self, int, int) -> Union[int, Tuple[int, int, int, int]]
	**/
	public function glGetTexGeniv(int:Int, int:Int):Dynamic;
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
		glHistogram(self, int, int, int, int)
	**/
	public function glHistogram(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glIndexMask(self, int)
	**/
	public function glIndexMask(int:Int):Void;
	/**
		glIndexPointer(self, int, int, PYQT_OPENGL_BOUND_ARRAY)
	**/
	public function glIndexPointer(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glIndexd(self, float)
	**/
	public function glIndexd(float:Float):Void;
	/**
		glIndexdv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glIndexdv(PYQT:Dynamic):Void;
	/**
		glIndexf(self, float)
	**/
	public function glIndexf(float:Float):Void;
	/**
		glIndexfv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glIndexfv(PYQT:Dynamic):Void;
	/**
		glIndexi(self, int)
	**/
	public function glIndexi(int:Int):Void;
	/**
		glIndexiv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glIndexiv(PYQT:Dynamic):Void;
	/**
		glIndexs(self, int)
	**/
	public function glIndexs(int:Int):Void;
	/**
		glIndexsv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glIndexsv(PYQT:Dynamic):Void;
	/**
		glIndexub(self, int)
	**/
	public function glIndexub(int:Int):Void;
	/**
		glIndexubv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glIndexubv(PYQT:Dynamic):Void;
	/**
		glInitNames(self)
	**/
	public function glInitNames():Void;
	/**
		glIsBuffer(self, int) -> int
	**/
	public function glIsBuffer(int:Int):Int;
	/**
		glIsEnabled(self, int) -> int
	**/
	public function glIsEnabled(int:Int):Int;
	/**
		glIsList(self, int) -> int
	**/
	public function glIsList(int:Int):Int;
	/**
		glIsProgram(self, int) -> int
	**/
	public function glIsProgram(int:Int):Int;
	/**
		glIsQuery(self, int) -> int
	**/
	public function glIsQuery(int:Int):Int;
	/**
		glIsShader(self, int) -> int
	**/
	public function glIsShader(int:Int):Int;
	/**
		glIsTexture(self, int) -> int
	**/
	public function glIsTexture(int:Int):Int;
	/**
		glLightModelf(self, int, float)
	**/
	public function glLightModelf(int:Int, float:Float):Void;
	/**
		glLightModelfv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glLightModelfv(int:Int, PYQT:Dynamic):Void;
	/**
		glLightModeli(self, int, int)
	**/
	public function glLightModeli(int:Int, int:Int):Void;
	/**
		glLightModeliv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glLightModeliv(int:Int, PYQT:Dynamic):Void;
	/**
		glLightf(self, int, int, float)
	**/
	public function glLightf(int:Int, int:Int, float:Float):Void;
	/**
		glLightfv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glLightfv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glLighti(self, int, int, int)
	**/
	public function glLighti(int:Int, int:Int, int:Int):Void;
	/**
		glLightiv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glLightiv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glLineStipple(self, int, int)
	**/
	public function glLineStipple(int:Int, int:Int):Void;
	/**
		glLineWidth(self, float)
	**/
	public function glLineWidth(float:Float):Void;
	/**
		glLinkProgram(self, int)
	**/
	public function glLinkProgram(int:Int):Void;
	/**
		glListBase(self, int)
	**/
	public function glListBase(int:Int):Void;
	/**
		glLoadIdentity(self)
	**/
	public function glLoadIdentity():Void;
	/**
		glLoadMatrixd(self, PYQT_OPENGL_ARRAY)
	**/
	public function glLoadMatrixd(PYQT:Dynamic):Void;
	/**
		glLoadMatrixf(self, PYQT_OPENGL_ARRAY)
	**/
	public function glLoadMatrixf(PYQT:Dynamic):Void;
	/**
		glLoadName(self, int)
	**/
	public function glLoadName(int:Int):Void;
	/**
		glLoadTransposeMatrixd(self, PYQT_OPENGL_ARRAY)
	**/
	public function glLoadTransposeMatrixd(PYQT:Dynamic):Void;
	/**
		glLoadTransposeMatrixf(self, PYQT_OPENGL_ARRAY)
	**/
	public function glLoadTransposeMatrixf(PYQT:Dynamic):Void;
	/**
		glLogicOp(self, int)
	**/
	public function glLogicOp(int:Int):Void;
	/**
		glMap1d(self, int, float, float, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMap1d(int:Int, float:Float, float:Float, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glMap1f(self, int, float, float, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMap1f(int:Int, float:Float, float:Float, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glMap2d(self, int, float, float, int, int, float, float, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMap2d(int:Int, float:Float, float:Float, int:Int, int:Int, float:Float, float:Float, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glMap2f(self, int, float, float, int, int, float, float, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMap2f(int:Int, float:Float, float:Float, int:Int, int:Int, float:Float, float:Float, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glMapGrid1d(self, int, float, float)
	**/
	public function glMapGrid1d(int:Int, float:Float, float:Float):Void;
	/**
		glMapGrid1f(self, int, float, float)
	**/
	public function glMapGrid1f(int:Int, float:Float, float:Float):Void;
	/**
		glMapGrid2d(self, int, float, float, int, float, float)
	**/
	public function glMapGrid2d(int:Int, float:Float, float:Float, int:Int, float:Float, float:Float):Void;
	/**
		glMapGrid2f(self, int, float, float, int, float, float)
	**/
	public function glMapGrid2f(int:Int, float:Float, float:Float, int:Int, float:Float, float:Float):Void;
	/**
		glMaterialf(self, int, int, float)
	**/
	public function glMaterialf(int:Int, int:Int, float:Float):Void;
	/**
		glMaterialfv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMaterialfv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glMateriali(self, int, int, int)
	**/
	public function glMateriali(int:Int, int:Int, int:Int):Void;
	/**
		glMaterialiv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMaterialiv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glMatrixMode(self, int)
	**/
	public function glMatrixMode(int:Int):Void;
	/**
		glMinmax(self, int, int, int)
	**/
	public function glMinmax(int:Int, int:Int, int:Int):Void;
	/**
		glMultMatrixd(self, PYQT_OPENGL_ARRAY)
	**/
	public function glMultMatrixd(PYQT:Dynamic):Void;
	/**
		glMultMatrixf(self, PYQT_OPENGL_ARRAY)
	**/
	public function glMultMatrixf(PYQT:Dynamic):Void;
	/**
		glMultTransposeMatrixd(self, PYQT_OPENGL_ARRAY)
	**/
	public function glMultTransposeMatrixd(PYQT:Dynamic):Void;
	/**
		glMultTransposeMatrixf(self, PYQT_OPENGL_ARRAY)
	**/
	public function glMultTransposeMatrixf(PYQT:Dynamic):Void;
	/**
		glMultiTexCoord1d(self, int, float)
	**/
	public function glMultiTexCoord1d(int:Int, float:Float):Void;
	/**
		glMultiTexCoord1dv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMultiTexCoord1dv(int:Int, PYQT:Dynamic):Void;
	/**
		glMultiTexCoord1f(self, int, float)
	**/
	public function glMultiTexCoord1f(int:Int, float:Float):Void;
	/**
		glMultiTexCoord1fv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMultiTexCoord1fv(int:Int, PYQT:Dynamic):Void;
	/**
		glMultiTexCoord1i(self, int, int)
	**/
	public function glMultiTexCoord1i(int:Int, int:Int):Void;
	/**
		glMultiTexCoord1iv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMultiTexCoord1iv(int:Int, PYQT:Dynamic):Void;
	/**
		glMultiTexCoord1s(self, int, int)
	**/
	public function glMultiTexCoord1s(int:Int, int:Int):Void;
	/**
		glMultiTexCoord1sv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMultiTexCoord1sv(int:Int, PYQT:Dynamic):Void;
	/**
		glMultiTexCoord2d(self, int, float, float)
	**/
	public function glMultiTexCoord2d(int:Int, float:Float, float:Float):Void;
	/**
		glMultiTexCoord2dv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMultiTexCoord2dv(int:Int, PYQT:Dynamic):Void;
	/**
		glMultiTexCoord2f(self, int, float, float)
	**/
	public function glMultiTexCoord2f(int:Int, float:Float, float:Float):Void;
	/**
		glMultiTexCoord2fv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMultiTexCoord2fv(int:Int, PYQT:Dynamic):Void;
	/**
		glMultiTexCoord2i(self, int, int, int)
	**/
	public function glMultiTexCoord2i(int:Int, int:Int, int:Int):Void;
	/**
		glMultiTexCoord2iv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMultiTexCoord2iv(int:Int, PYQT:Dynamic):Void;
	/**
		glMultiTexCoord2s(self, int, int, int)
	**/
	public function glMultiTexCoord2s(int:Int, int:Int, int:Int):Void;
	/**
		glMultiTexCoord2sv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMultiTexCoord2sv(int:Int, PYQT:Dynamic):Void;
	/**
		glMultiTexCoord3d(self, int, float, float, float)
	**/
	public function glMultiTexCoord3d(int:Int, float:Float, float:Float, float:Float):Void;
	/**
		glMultiTexCoord3dv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMultiTexCoord3dv(int:Int, PYQT:Dynamic):Void;
	/**
		glMultiTexCoord3f(self, int, float, float, float)
	**/
	public function glMultiTexCoord3f(int:Int, float:Float, float:Float, float:Float):Void;
	/**
		glMultiTexCoord3fv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMultiTexCoord3fv(int:Int, PYQT:Dynamic):Void;
	/**
		glMultiTexCoord3i(self, int, int, int, int)
	**/
	public function glMultiTexCoord3i(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glMultiTexCoord3iv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMultiTexCoord3iv(int:Int, PYQT:Dynamic):Void;
	/**
		glMultiTexCoord3s(self, int, int, int, int)
	**/
	public function glMultiTexCoord3s(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glMultiTexCoord3sv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMultiTexCoord3sv(int:Int, PYQT:Dynamic):Void;
	/**
		glMultiTexCoord4d(self, int, float, float, float, float)
	**/
	public function glMultiTexCoord4d(int:Int, float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glMultiTexCoord4dv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMultiTexCoord4dv(int:Int, PYQT:Dynamic):Void;
	/**
		glMultiTexCoord4f(self, int, float, float, float, float)
	**/
	public function glMultiTexCoord4f(int:Int, float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glMultiTexCoord4fv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMultiTexCoord4fv(int:Int, PYQT:Dynamic):Void;
	/**
		glMultiTexCoord4i(self, int, int, int, int, int)
	**/
	public function glMultiTexCoord4i(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glMultiTexCoord4iv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMultiTexCoord4iv(int:Int, PYQT:Dynamic):Void;
	/**
		glMultiTexCoord4s(self, int, int, int, int, int)
	**/
	public function glMultiTexCoord4s(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glMultiTexCoord4sv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glMultiTexCoord4sv(int:Int, PYQT:Dynamic):Void;
	/**
		glNewList(self, int, int)
	**/
	public function glNewList(int:Int, int:Int):Void;
	/**
		glNormal3b(self, int, int, int)
	**/
	public function glNormal3b(int:Int, int:Int, int:Int):Void;
	/**
		glNormal3bv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glNormal3bv(PYQT:Dynamic):Void;
	/**
		glNormal3d(self, float, float, float)
	**/
	public function glNormal3d(float:Float, float:Float, float:Float):Void;
	/**
		glNormal3dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glNormal3dv(PYQT:Dynamic):Void;
	/**
		glNormal3f(self, float, float, float)
	**/
	public function glNormal3f(float:Float, float:Float, float:Float):Void;
	/**
		glNormal3fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glNormal3fv(PYQT:Dynamic):Void;
	/**
		glNormal3i(self, int, int, int)
	**/
	public function glNormal3i(int:Int, int:Int, int:Int):Void;
	/**
		glNormal3iv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glNormal3iv(PYQT:Dynamic):Void;
	/**
		glNormal3s(self, int, int, int)
	**/
	public function glNormal3s(int:Int, int:Int, int:Int):Void;
	/**
		glNormal3sv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glNormal3sv(PYQT:Dynamic):Void;
	/**
		glNormalPointer(self, int, int, PYQT_OPENGL_BOUND_ARRAY)
	**/
	public function glNormalPointer(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glOrtho(self, float, float, float, float, float, float)
	**/
	public function glOrtho(float:Float, float:Float, float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glPassThrough(self, float)
	**/
	public function glPassThrough(float:Float):Void;
	/**
		glPixelMapfv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glPixelMapfv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glPixelMapuiv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glPixelMapuiv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glPixelMapusv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glPixelMapusv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glPixelStoref(self, int, float)
	**/
	public function glPixelStoref(int:Int, float:Float):Void;
	/**
		glPixelStorei(self, int, int)
	**/
	public function glPixelStorei(int:Int, int:Int):Void;
	/**
		glPixelTransferf(self, int, float)
	**/
	public function glPixelTransferf(int:Int, float:Float):Void;
	/**
		glPixelTransferi(self, int, int)
	**/
	public function glPixelTransferi(int:Int, int:Int):Void;
	/**
		glPixelZoom(self, float, float)
	**/
	public function glPixelZoom(float:Float, float:Float):Void;
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
		glPolygonStipple(self, PYQT_OPENGL_ARRAY)
	**/
	public function glPolygonStipple(PYQT:Dynamic):Void;
	/**
		glPopAttrib(self)
	**/
	public function glPopAttrib():Void;
	/**
		glPopClientAttrib(self)
	**/
	public function glPopClientAttrib():Void;
	/**
		glPopMatrix(self)
	**/
	public function glPopMatrix():Void;
	/**
		glPopName(self)
	**/
	public function glPopName():Void;
	/**
		glPushAttrib(self, int)
	**/
	public function glPushAttrib(int:Int):Void;
	/**
		glPushClientAttrib(self, int)
	**/
	public function glPushClientAttrib(int:Int):Void;
	/**
		glPushMatrix(self)
	**/
	public function glPushMatrix():Void;
	/**
		glPushName(self, int)
	**/
	public function glPushName(int:Int):Void;
	/**
		glRasterPos2d(self, float, float)
	**/
	public function glRasterPos2d(float:Float, float:Float):Void;
	/**
		glRasterPos2dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glRasterPos2dv(PYQT:Dynamic):Void;
	/**
		glRasterPos2f(self, float, float)
	**/
	public function glRasterPos2f(float:Float, float:Float):Void;
	/**
		glRasterPos2fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glRasterPos2fv(PYQT:Dynamic):Void;
	/**
		glRasterPos2i(self, int, int)
	**/
	public function glRasterPos2i(int:Int, int:Int):Void;
	/**
		glRasterPos2iv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glRasterPos2iv(PYQT:Dynamic):Void;
	/**
		glRasterPos2s(self, int, int)
	**/
	public function glRasterPos2s(int:Int, int:Int):Void;
	/**
		glRasterPos2sv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glRasterPos2sv(PYQT:Dynamic):Void;
	/**
		glRasterPos3d(self, float, float, float)
	**/
	public function glRasterPos3d(float:Float, float:Float, float:Float):Void;
	/**
		glRasterPos3dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glRasterPos3dv(PYQT:Dynamic):Void;
	/**
		glRasterPos3f(self, float, float, float)
	**/
	public function glRasterPos3f(float:Float, float:Float, float:Float):Void;
	/**
		glRasterPos3fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glRasterPos3fv(PYQT:Dynamic):Void;
	/**
		glRasterPos3i(self, int, int, int)
	**/
	public function glRasterPos3i(int:Int, int:Int, int:Int):Void;
	/**
		glRasterPos3iv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glRasterPos3iv(PYQT:Dynamic):Void;
	/**
		glRasterPos3s(self, int, int, int)
	**/
	public function glRasterPos3s(int:Int, int:Int, int:Int):Void;
	/**
		glRasterPos3sv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glRasterPos3sv(PYQT:Dynamic):Void;
	/**
		glRasterPos4d(self, float, float, float, float)
	**/
	public function glRasterPos4d(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glRasterPos4dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glRasterPos4dv(PYQT:Dynamic):Void;
	/**
		glRasterPos4f(self, float, float, float, float)
	**/
	public function glRasterPos4f(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glRasterPos4fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glRasterPos4fv(PYQT:Dynamic):Void;
	/**
		glRasterPos4i(self, int, int, int, int)
	**/
	public function glRasterPos4i(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glRasterPos4iv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glRasterPos4iv(PYQT:Dynamic):Void;
	/**
		glRasterPos4s(self, int, int, int, int)
	**/
	public function glRasterPos4s(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glRasterPos4sv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glRasterPos4sv(PYQT:Dynamic):Void;
	/**
		glReadBuffer(self, int)
	**/
	public function glReadBuffer(int:Int):Void;
	/**
		glRectd(self, float, float, float, float)
	**/
	public function glRectd(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glRectf(self, float, float, float, float)
	**/
	public function glRectf(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glRecti(self, int, int, int, int)
	**/
	public function glRecti(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glRects(self, int, int, int, int)
	**/
	public function glRects(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glRenderMode(self, int) -> int
	**/
	public function glRenderMode(int:Int):Int;
	/**
		glResetHistogram(self, int)
	**/
	public function glResetHistogram(int:Int):Void;
	/**
		glResetMinmax(self, int)
	**/
	public function glResetMinmax(int:Int):Void;
	/**
		glRotated(self, float, float, float, float)
	**/
	public function glRotated(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glRotatef(self, float, float, float, float)
	**/
	public function glRotatef(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glSampleCoverage(self, float, int)
	**/
	public function glSampleCoverage(float:Float, int:Int):Void;
	/**
		glScaled(self, float, float, float)
	**/
	public function glScaled(float:Float, float:Float, float:Float):Void;
	/**
		glScalef(self, float, float, float)
	**/
	public function glScalef(float:Float, float:Float, float:Float):Void;
	/**
		glScissor(self, int, int, int, int)
	**/
	public function glScissor(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glSecondaryColor3b(self, int, int, int)
	**/
	public function glSecondaryColor3b(int:Int, int:Int, int:Int):Void;
	/**
		glSecondaryColor3bv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glSecondaryColor3bv(PYQT:Dynamic):Void;
	/**
		glSecondaryColor3d(self, float, float, float)
	**/
	public function glSecondaryColor3d(float:Float, float:Float, float:Float):Void;
	/**
		glSecondaryColor3dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glSecondaryColor3dv(PYQT:Dynamic):Void;
	/**
		glSecondaryColor3f(self, float, float, float)
	**/
	public function glSecondaryColor3f(float:Float, float:Float, float:Float):Void;
	/**
		glSecondaryColor3fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glSecondaryColor3fv(PYQT:Dynamic):Void;
	/**
		glSecondaryColor3i(self, int, int, int)
	**/
	public function glSecondaryColor3i(int:Int, int:Int, int:Int):Void;
	/**
		glSecondaryColor3iv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glSecondaryColor3iv(PYQT:Dynamic):Void;
	/**
		glSecondaryColor3s(self, int, int, int)
	**/
	public function glSecondaryColor3s(int:Int, int:Int, int:Int):Void;
	/**
		glSecondaryColor3sv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glSecondaryColor3sv(PYQT:Dynamic):Void;
	/**
		glSecondaryColor3ub(self, int, int, int)
	**/
	public function glSecondaryColor3ub(int:Int, int:Int, int:Int):Void;
	/**
		glSecondaryColor3ubv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glSecondaryColor3ubv(PYQT:Dynamic):Void;
	/**
		glSecondaryColor3ui(self, int, int, int)
	**/
	public function glSecondaryColor3ui(int:Int, int:Int, int:Int):Void;
	/**
		glSecondaryColor3uiv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glSecondaryColor3uiv(PYQT:Dynamic):Void;
	/**
		glSecondaryColor3us(self, int, int, int)
	**/
	public function glSecondaryColor3us(int:Int, int:Int, int:Int):Void;
	/**
		glSecondaryColor3usv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glSecondaryColor3usv(PYQT:Dynamic):Void;
	/**
		glSecondaryColorPointer(self, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glSecondaryColorPointer(int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glShadeModel(self, int)
	**/
	public function glShadeModel(int:Int):Void;
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
		glTexCoord1d(self, float)
	**/
	public function glTexCoord1d(float:Float):Void;
	/**
		glTexCoord1dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glTexCoord1dv(PYQT:Dynamic):Void;
	/**
		glTexCoord1f(self, float)
	**/
	public function glTexCoord1f(float:Float):Void;
	/**
		glTexCoord1fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glTexCoord1fv(PYQT:Dynamic):Void;
	/**
		glTexCoord1i(self, int)
	**/
	public function glTexCoord1i(int:Int):Void;
	/**
		glTexCoord1iv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glTexCoord1iv(PYQT:Dynamic):Void;
	/**
		glTexCoord1s(self, int)
	**/
	public function glTexCoord1s(int:Int):Void;
	/**
		glTexCoord1sv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glTexCoord1sv(PYQT:Dynamic):Void;
	/**
		glTexCoord2d(self, float, float)
	**/
	public function glTexCoord2d(float:Float, float:Float):Void;
	/**
		glTexCoord2dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glTexCoord2dv(PYQT:Dynamic):Void;
	/**
		glTexCoord2f(self, float, float)
	**/
	public function glTexCoord2f(float:Float, float:Float):Void;
	/**
		glTexCoord2fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glTexCoord2fv(PYQT:Dynamic):Void;
	/**
		glTexCoord2i(self, int, int)
	**/
	public function glTexCoord2i(int:Int, int:Int):Void;
	/**
		glTexCoord2iv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glTexCoord2iv(PYQT:Dynamic):Void;
	/**
		glTexCoord2s(self, int, int)
	**/
	public function glTexCoord2s(int:Int, int:Int):Void;
	/**
		glTexCoord2sv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glTexCoord2sv(PYQT:Dynamic):Void;
	/**
		glTexCoord3d(self, float, float, float)
	**/
	public function glTexCoord3d(float:Float, float:Float, float:Float):Void;
	/**
		glTexCoord3dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glTexCoord3dv(PYQT:Dynamic):Void;
	/**
		glTexCoord3f(self, float, float, float)
	**/
	public function glTexCoord3f(float:Float, float:Float, float:Float):Void;
	/**
		glTexCoord3fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glTexCoord3fv(PYQT:Dynamic):Void;
	/**
		glTexCoord3i(self, int, int, int)
	**/
	public function glTexCoord3i(int:Int, int:Int, int:Int):Void;
	/**
		glTexCoord3iv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glTexCoord3iv(PYQT:Dynamic):Void;
	/**
		glTexCoord3s(self, int, int, int)
	**/
	public function glTexCoord3s(int:Int, int:Int, int:Int):Void;
	/**
		glTexCoord3sv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glTexCoord3sv(PYQT:Dynamic):Void;
	/**
		glTexCoord4d(self, float, float, float, float)
	**/
	public function glTexCoord4d(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glTexCoord4dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glTexCoord4dv(PYQT:Dynamic):Void;
	/**
		glTexCoord4f(self, float, float, float, float)
	**/
	public function glTexCoord4f(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glTexCoord4fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glTexCoord4fv(PYQT:Dynamic):Void;
	/**
		glTexCoord4i(self, int, int, int, int)
	**/
	public function glTexCoord4i(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glTexCoord4iv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glTexCoord4iv(PYQT:Dynamic):Void;
	/**
		glTexCoord4s(self, int, int, int, int)
	**/
	public function glTexCoord4s(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glTexCoord4sv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glTexCoord4sv(PYQT:Dynamic):Void;
	/**
		glTexCoordPointer(self, int, int, int, PYQT_OPENGL_BOUND_ARRAY)
	**/
	public function glTexCoordPointer(int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glTexEnvf(self, int, int, float)
	**/
	public function glTexEnvf(int:Int, int:Int, float:Float):Void;
	/**
		glTexEnvfv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glTexEnvfv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glTexEnvi(self, int, int, int)
	**/
	public function glTexEnvi(int:Int, int:Int, int:Int):Void;
	/**
		glTexEnviv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glTexEnviv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glTexGend(self, int, int, float)
	**/
	public function glTexGend(int:Int, int:Int, float:Float):Void;
	/**
		glTexGendv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glTexGendv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glTexGenf(self, int, int, float)
	**/
	public function glTexGenf(int:Int, int:Int, float:Float):Void;
	/**
		glTexGenfv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glTexGenfv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glTexGeni(self, int, int, int)
	**/
	public function glTexGeni(int:Int, int:Int, int:Int):Void;
	/**
		glTexGeniv(self, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glTexGeniv(int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glTexImage1D(self, int, int, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glTexImage1D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glTexImage2D(self, int, int, int, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glTexImage2D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glTexImage3D(self, int, int, int, int, int, int, int, int, int, PYQT_OPENGL_ARRAY)
	**/
	public function glTexImage3D(int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
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
		glTranslated(self, float, float, float)
	**/
	public function glTranslated(float:Float, float:Float, float:Float):Void;
	/**
		glTranslatef(self, float, float, float)
	**/
	public function glTranslatef(float:Float, float:Float, float:Float):Void;
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
		glValidateProgram(self, int)
	**/
	public function glValidateProgram(int:Int):Void;
	/**
		glVertex2d(self, float, float)
	**/
	public function glVertex2d(float:Float, float:Float):Void;
	/**
		glVertex2dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glVertex2dv(PYQT:Dynamic):Void;
	/**
		glVertex2f(self, float, float)
	**/
	public function glVertex2f(float:Float, float:Float):Void;
	/**
		glVertex2fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glVertex2fv(PYQT:Dynamic):Void;
	/**
		glVertex2i(self, int, int)
	**/
	public function glVertex2i(int:Int, int:Int):Void;
	/**
		glVertex2iv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glVertex2iv(PYQT:Dynamic):Void;
	/**
		glVertex2s(self, int, int)
	**/
	public function glVertex2s(int:Int, int:Int):Void;
	/**
		glVertex2sv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glVertex2sv(PYQT:Dynamic):Void;
	/**
		glVertex3d(self, float, float, float)
	**/
	public function glVertex3d(float:Float, float:Float, float:Float):Void;
	/**
		glVertex3dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glVertex3dv(PYQT:Dynamic):Void;
	/**
		glVertex3f(self, float, float, float)
	**/
	public function glVertex3f(float:Float, float:Float, float:Float):Void;
	/**
		glVertex3fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glVertex3fv(PYQT:Dynamic):Void;
	/**
		glVertex3i(self, int, int, int)
	**/
	public function glVertex3i(int:Int, int:Int, int:Int):Void;
	/**
		glVertex3iv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glVertex3iv(PYQT:Dynamic):Void;
	/**
		glVertex3s(self, int, int, int)
	**/
	public function glVertex3s(int:Int, int:Int, int:Int):Void;
	/**
		glVertex3sv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glVertex3sv(PYQT:Dynamic):Void;
	/**
		glVertex4d(self, float, float, float, float)
	**/
	public function glVertex4d(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glVertex4dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glVertex4dv(PYQT:Dynamic):Void;
	/**
		glVertex4f(self, float, float, float, float)
	**/
	public function glVertex4f(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glVertex4fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glVertex4fv(PYQT:Dynamic):Void;
	/**
		glVertex4i(self, int, int, int, int)
	**/
	public function glVertex4i(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glVertex4iv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glVertex4iv(PYQT:Dynamic):Void;
	/**
		glVertex4s(self, int, int, int, int)
	**/
	public function glVertex4s(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glVertex4sv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glVertex4sv(PYQT:Dynamic):Void;
	/**
		glVertexAttrib1d(self, int, float)
	**/
	public function glVertexAttrib1d(int:Int, float:Float):Void;
	/**
		glVertexAttrib1dv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib1dv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib1f(self, int, float)
	**/
	public function glVertexAttrib1f(int:Int, float:Float):Void;
	/**
		glVertexAttrib1fv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib1fv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib1s(self, int, int)
	**/
	public function glVertexAttrib1s(int:Int, int:Int):Void;
	/**
		glVertexAttrib1sv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib1sv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib2d(self, int, float, float)
	**/
	public function glVertexAttrib2d(int:Int, float:Float, float:Float):Void;
	/**
		glVertexAttrib2dv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib2dv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib2f(self, int, float, float)
	**/
	public function glVertexAttrib2f(int:Int, float:Float, float:Float):Void;
	/**
		glVertexAttrib2fv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib2fv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib2s(self, int, int, int)
	**/
	public function glVertexAttrib2s(int:Int, int:Int, int:Int):Void;
	/**
		glVertexAttrib2sv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib2sv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib3d(self, int, float, float, float)
	**/
	public function glVertexAttrib3d(int:Int, float:Float, float:Float, float:Float):Void;
	/**
		glVertexAttrib3dv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib3dv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib3f(self, int, float, float, float)
	**/
	public function glVertexAttrib3f(int:Int, float:Float, float:Float, float:Float):Void;
	/**
		glVertexAttrib3fv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib3fv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib3s(self, int, int, int, int)
	**/
	public function glVertexAttrib3s(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glVertexAttrib3sv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib3sv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib4Nbv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib4Nbv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib4Niv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib4Niv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib4Nsv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib4Nsv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib4Nub(self, int, int, int, int, int)
	**/
	public function glVertexAttrib4Nub(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glVertexAttrib4Nubv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib4Nubv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib4Nuiv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib4Nuiv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib4Nusv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib4Nusv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib4bv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib4bv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib4d(self, int, float, float, float, float)
	**/
	public function glVertexAttrib4d(int:Int, float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glVertexAttrib4dv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib4dv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib4f(self, int, float, float, float, float)
	**/
	public function glVertexAttrib4f(int:Int, float:Float, float:Float, float:Float, float:Float):Void;
	/**
		glVertexAttrib4fv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib4fv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib4iv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib4iv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib4s(self, int, int, int, int, int)
	**/
	public function glVertexAttrib4s(int:Int, int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glVertexAttrib4sv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib4sv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib4ubv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib4ubv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib4uiv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib4uiv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttrib4usv(self, int, PYQT_OPENGL_ARRAY)
	**/
	public function glVertexAttrib4usv(int:Int, PYQT:Dynamic):Void;
	/**
		glVertexAttribPointer(self, int, int, int, int, int, PYQT_OPENGL_BOUND_ARRAY)
	**/
	public function glVertexAttribPointer(int:Int, int:Int, int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glVertexPointer(self, int, int, int, PYQT_OPENGL_BOUND_ARRAY)
	**/
	public function glVertexPointer(int:Int, int:Int, int:Int, PYQT:Dynamic):Void;
	/**
		glViewport(self, int, int, int, int)
	**/
	public function glViewport(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		glWindowPos2d(self, float, float)
	**/
	public function glWindowPos2d(float:Float, float:Float):Void;
	/**
		glWindowPos2dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glWindowPos2dv(PYQT:Dynamic):Void;
	/**
		glWindowPos2f(self, float, float)
	**/
	public function glWindowPos2f(float:Float, float:Float):Void;
	/**
		glWindowPos2fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glWindowPos2fv(PYQT:Dynamic):Void;
	/**
		glWindowPos2i(self, int, int)
	**/
	public function glWindowPos2i(int:Int, int:Int):Void;
	/**
		glWindowPos2iv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glWindowPos2iv(PYQT:Dynamic):Void;
	/**
		glWindowPos2s(self, int, int)
	**/
	public function glWindowPos2s(int:Int, int:Int):Void;
	/**
		glWindowPos2sv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glWindowPos2sv(PYQT:Dynamic):Void;
	/**
		glWindowPos3d(self, float, float, float)
	**/
	public function glWindowPos3d(float:Float, float:Float, float:Float):Void;
	/**
		glWindowPos3dv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glWindowPos3dv(PYQT:Dynamic):Void;
	/**
		glWindowPos3f(self, float, float, float)
	**/
	public function glWindowPos3f(float:Float, float:Float, float:Float):Void;
	/**
		glWindowPos3fv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glWindowPos3fv(PYQT:Dynamic):Void;
	/**
		glWindowPos3i(self, int, int, int)
	**/
	public function glWindowPos3i(int:Int, int:Int, int:Int):Void;
	/**
		glWindowPos3iv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glWindowPos3iv(PYQT:Dynamic):Void;
	/**
		glWindowPos3s(self, int, int, int)
	**/
	public function glWindowPos3s(int:Int, int:Int, int:Int):Void;
	/**
		glWindowPos3sv(self, PYQT_OPENGL_ARRAY)
	**/
	public function glWindowPos3sv(PYQT:Dynamic):Void;
	/**
		initializeOpenGLFunctions(self) -> bool
	**/
	public function initializeOpenGLFunctions():Bool;
}