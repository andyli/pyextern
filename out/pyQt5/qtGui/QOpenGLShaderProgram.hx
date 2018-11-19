/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QOpenGLShaderProgram") extern class QOpenGLShaderProgram {
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
		__getattr__(self, str) -> object
	**/
	public function __getattr__(str:String):Dynamic;
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
		addShader(self, QOpenGLShader) -> bool
	**/
	public function addShader(QOpenGLShader:Dynamic):Bool;
	/**
		addShaderFromSourceCode(self, Union[QOpenGLShader.ShaderType, QOpenGLShader.ShaderTypeBit], Union[QByteArray, bytes, bytearray]) -> bool
		addShaderFromSourceCode(self, Union[QOpenGLShader.ShaderType, QOpenGLShader.ShaderTypeBit], str) -> bool
	**/
	public function addShaderFromSourceCode(Union:Dynamic, args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		addShaderFromSourceFile(self, Union[QOpenGLShader.ShaderType, QOpenGLShader.ShaderTypeBit], str) -> bool
	**/
	public function addShaderFromSourceFile(Union:Dynamic, str:String):Bool;
	/**
		attributeLocation(self, Union[QByteArray, bytes, bytearray]) -> int
		attributeLocation(self, str) -> int
	**/
	public function attributeLocation(args:haxe.extern.Rest<Dynamic>):Int;
	/**
		bind(self) -> bool
	**/
	public function bind():Bool;
	/**
		bindAttributeLocation(self, Union[QByteArray, bytes, bytearray], int)
		bindAttributeLocation(self, str, int)
	**/
	public function bindAttributeLocation(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> object
	**/
	public function children():Dynamic;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		create(self) -> bool
	**/
	public function create():Bool;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		defaultInnerTessellationLevels(self) -> List[float]
	**/
	public function defaultInnerTessellationLevels():Dynamic;
	/**
		defaultOuterTessellationLevels(self) -> List[float]
	**/
	public function defaultOuterTessellationLevels():Dynamic;
	/**
		deleteLater(self)
	**/
	public function deleteLater():Void;
	/**
		destroyed(self, QObject = None) [signal]
	**/
	public var destroyed : Dynamic;
	/**
		disableAttributeArray(self, int)
		disableAttributeArray(self, str)
	**/
	public function disableAttributeArray(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		disconnect(self)
	**/
	public function disconnect():Void;
	/**
		disconnectNotify(self, QMetaMethod)
	**/
	public function disconnectNotify(QMetaMethod:Dynamic):Void;
	/**
		dumpObjectInfo(self)
	**/
	public function dumpObjectInfo():Void;
	/**
		dumpObjectTree(self)
	**/
	public function dumpObjectTree():Void;
	/**
		dynamicPropertyNames(self) -> object
	**/
	public function dynamicPropertyNames():Dynamic;
	/**
		enableAttributeArray(self, int)
		enableAttributeArray(self, str)
	**/
	public function enableAttributeArray(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		event(self, QEvent) -> bool
	**/
	public function event(QEvent:Dynamic):Bool;
	/**
		eventFilter(self, QObject, QEvent) -> bool
	**/
	public function eventFilter(QObject:Dynamic, QEvent:Dynamic):Bool;
	/**
		findChild(self, type, name: str = '', options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> QObject
		findChild(self, Tuple, name: str = '', options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> QObject
	**/
	public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		findChildren(self, type, name: str = '', options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
		findChildren(self, Tuple, name: str = '', options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
		findChildren(self, type, QRegExp, options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
		findChildren(self, Tuple, QRegExp, options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
		findChildren(self, type, QRegularExpression, options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
		findChildren(self, Tuple, QRegularExpression, options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
	**/
	public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hasOpenGLShaderPrograms(context: QOpenGLContext = None) -> bool
	**/
	static public function hasOpenGLShaderPrograms(?context:Dynamic):Bool;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isLinked(self) -> bool
	**/
	public function isLinked():Bool;
	/**
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	public function isSignalConnected(QMetaMethod:Dynamic):Bool;
	/**
		isWidgetType(self) -> bool
	**/
	public function isWidgetType():Bool;
	/**
		isWindowType(self) -> bool
	**/
	public function isWindowType():Bool;
	/**
		killTimer(self, int)
	**/
	public function killTimer(int:Int):Void;
	/**
		link(self) -> bool
	**/
	public function link():Bool;
	/**
		log(self) -> str
	**/
	public function log():String;
	/**
		maxGeometryOutputVertices(self) -> int
	**/
	public function maxGeometryOutputVertices():Int;
	/**
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
	/**
		moveToThread(self, QThread)
	**/
	public function moveToThread(QThread:Dynamic):Void;
	/**
		objectName(self) -> str
	**/
	public function objectName():String;
	/**
		objectNameChanged(self, str) [signal]
	**/
	public var objectNameChanged : Dynamic;
	/**
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		patchVertexCount(self) -> int
	**/
	public function patchVertexCount():Int;
	/**
		programId(self) -> int
	**/
	public function programId():Int;
	/**
		property(self, str) -> Any
	**/
	public function property(str:String):Dynamic;
	/**
		QObject.pyqtConfigure(...)
		
		Each keyword argument is either the name of a Qt property or a Qt signal.
		For properties the property is set to the given value which should be of an
		appropriate type.
		For signals the signal is connected to the given value which should be a
		callable.
	**/
	public function pyqtConfigure(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		receivers(self, PYQT_SIGNAL) -> int
	**/
	public function receivers(PYQT:Dynamic):Int;
	/**
		release(self)
	**/
	public function release():Void;
	/**
		removeAllShaders(self)
	**/
	public function removeAllShaders():Void;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		removeShader(self, QOpenGLShader)
	**/
	public function removeShader(QOpenGLShader:Dynamic):Void;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setAttributeArray(self, int, PYQT_SHADER_ATTRIBUTE_ARRAY)
		setAttributeArray(self, str, PYQT_SHADER_ATTRIBUTE_ARRAY)
	**/
	public function setAttributeArray(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setAttributeBuffer(self, int, int, int, int, stride: int = 0)
		setAttributeBuffer(self, str, int, int, int, stride: int = 0)
	**/
	public function setAttributeBuffer(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setAttributeValue(self, int, float)
		setAttributeValue(self, int, float, float)
		setAttributeValue(self, int, float, float, float)
		setAttributeValue(self, int, float, float, float, float)
		setAttributeValue(self, int, QVector2D)
		setAttributeValue(self, int, QVector3D)
		setAttributeValue(self, int, QVector4D)
		setAttributeValue(self, int, Union[QColor, Qt.GlobalColor, QGradient])
		setAttributeValue(self, str, float)
		setAttributeValue(self, str, float, float)
		setAttributeValue(self, str, float, float, float)
		setAttributeValue(self, str, float, float, float, float)
		setAttributeValue(self, str, QVector2D)
		setAttributeValue(self, str, QVector3D)
		setAttributeValue(self, str, QVector4D)
		setAttributeValue(self, str, Union[QColor, Qt.GlobalColor, QGradient])
	**/
	public function setAttributeValue(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setDefaultInnerTessellationLevels(self, Iterable[float])
	**/
	public function setDefaultInnerTessellationLevels(Iterable:Dynamic):Void;
	/**
		setDefaultOuterTessellationLevels(self, Iterable[float])
	**/
	public function setDefaultOuterTessellationLevels(Iterable:Dynamic):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setPatchVertexCount(self, int)
	**/
	public function setPatchVertexCount(int:Int):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setUniformValue(self, int, int)
		setUniformValue(self, int, float)
		setUniformValue(self, int, float, float)
		setUniformValue(self, int, float, float, float)
		setUniformValue(self, int, float, float, float, float)
		setUniformValue(self, int, QVector2D)
		setUniformValue(self, int, QVector3D)
		setUniformValue(self, int, QVector4D)
		setUniformValue(self, int, Union[QColor, Qt.GlobalColor, QGradient])
		setUniformValue(self, int, QPoint)
		setUniformValue(self, int, Union[QPointF, QPoint])
		setUniformValue(self, int, QSize)
		setUniformValue(self, int, QSizeF)
		setUniformValue(self, int, QMatrix2x2)
		setUniformValue(self, int, QMatrix2x3)
		setUniformValue(self, int, QMatrix2x4)
		setUniformValue(self, int, QMatrix3x2)
		setUniformValue(self, int, QMatrix3x3)
		setUniformValue(self, int, QMatrix3x4)
		setUniformValue(self, int, QMatrix4x2)
		setUniformValue(self, int, QMatrix4x3)
		setUniformValue(self, int, QMatrix4x4)
		setUniformValue(self, int, QTransform)
		setUniformValue(self, str, int)
		setUniformValue(self, str, float)
		setUniformValue(self, str, float, float)
		setUniformValue(self, str, float, float, float)
		setUniformValue(self, str, float, float, float, float)
		setUniformValue(self, str, QVector2D)
		setUniformValue(self, str, QVector3D)
		setUniformValue(self, str, QVector4D)
		setUniformValue(self, str, Union[QColor, Qt.GlobalColor, QGradient])
		setUniformValue(self, str, QPoint)
		setUniformValue(self, str, Union[QPointF, QPoint])
		setUniformValue(self, str, QSize)
		setUniformValue(self, str, QSizeF)
		setUniformValue(self, str, QMatrix2x2)
		setUniformValue(self, str, QMatrix2x3)
		setUniformValue(self, str, QMatrix2x4)
		setUniformValue(self, str, QMatrix3x2)
		setUniformValue(self, str, QMatrix3x3)
		setUniformValue(self, str, QMatrix3x4)
		setUniformValue(self, str, QMatrix4x2)
		setUniformValue(self, str, QMatrix4x3)
		setUniformValue(self, str, QMatrix4x4)
		setUniformValue(self, str, QTransform)
	**/
	public function setUniformValue(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setUniformValueArray(self, int, PYQT_SHADER_UNIFORM_VALUE_ARRAY)
		setUniformValueArray(self, str, PYQT_SHADER_UNIFORM_VALUE_ARRAY)
	**/
	public function setUniformValueArray(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		shaders(self) -> object
	**/
	public function shaders():Dynamic;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	static public var staticMetaObject : Dynamic;
	/**
		thread(self) -> QThread
	**/
	public function thread():Dynamic;
	/**
		timerEvent(self, QTimerEvent)
	**/
	public function timerEvent(QTimerEvent:Dynamic):Void;
	/**
		tr(self, str, disambiguation: str = None, n: int = -1) -> str
	**/
	public function tr(str:String, ?disambiguation:Dynamic, ?n:Dynamic):String;
	/**
		uniformLocation(self, Union[QByteArray, bytes, bytearray]) -> int
		uniformLocation(self, str) -> int
	**/
	public function uniformLocation(args:haxe.extern.Rest<Dynamic>):Int;
}