/* This file is generated, do not edit! */
package pySide2.qtOpenGL;
@:pythonImport("PySide2.QtOpenGL", "QGLShaderProgram") extern class QGLShaderProgram {
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
	public function addShader(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addShaderFromSourceCode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addShaderFromSourceFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function attributeLocation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bind(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bindAttributeLocation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disableAttributeArray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function enableAttributeArray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function geometryInputType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function geometryOutputType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function geometryOutputVertexCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function hasOpenGLShaderPrograms(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isLinked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSignalConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function link(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function log(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maxGeometryOutputVertices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function programId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function registerUserData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function release(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeAllShaders(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeShader(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAttributeArray2D(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAttributeArray3D(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAttributeArray4D(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAttributeBuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAttributeValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGeometryInputType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGeometryOutputType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGeometryOutputVertexCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUniformValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUniformValueArray2D(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUniformValueArray2x2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUniformValueArray2x3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUniformValueArray2x4(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUniformValueArray3D(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUniformValueArray3x2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUniformValueArray3x3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUniformValueArray3x4(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUniformValueArray4D(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUniformValueArray4x2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUniformValueArray4x3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUniformValueArray4x4(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUniformValueArrayInt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUniformValueArrayUint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function shaders(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function uniformLocation(args:haxe.extern.Rest<Dynamic>):Dynamic;
}