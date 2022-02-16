/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QScreen") extern class QScreen {
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
		angleBetween(self, Qt.ScreenOrientation, Qt.ScreenOrientation) -> int
	**/
	public function angleBetween(Qt:Dynamic, Qt:Dynamic):Int;
	/**
		availableGeometry(self) -> QRect
	**/
	public function availableGeometry():Dynamic;
	/**
		availableGeometryChanged(self, QRect) [signal]
	**/
	public var availableGeometryChanged : Dynamic;
	/**
		availableSize(self) -> QSize
	**/
	public function availableSize():Dynamic;
	/**
		availableVirtualGeometry(self) -> QRect
	**/
	public function availableVirtualGeometry():Dynamic;
	/**
		availableVirtualSize(self) -> QSize
	**/
	public function availableVirtualSize():Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> List[QObject]
	**/
	public function children():Dynamic;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		deleteLater(self)
	**/
	public function deleteLater():Void;
	/**
		depth(self) -> int
	**/
	public function depth():Int;
	/**
		destroyed(self, object: QObject = None) [signal]
	**/
	public var destroyed : Dynamic;
	/**
		devicePixelRatio(self) -> float
	**/
	public function devicePixelRatio():Float;
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
		dynamicPropertyNames(self) -> List[QByteArray]
	**/
	public function dynamicPropertyNames():Dynamic;
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
		geometry(self) -> QRect
	**/
	public function geometry():Dynamic;
	/**
		geometryChanged(self, QRect) [signal]
	**/
	public var geometryChanged : Dynamic;
	/**
		grabWindow(self, sip.voidptr, x: int = 0, y: int = 0, width: int = -1, height: int = -1) -> QPixmap
	**/
	public function grabWindow(sip:Dynamic, ?x:Dynamic, ?y:Dynamic, ?width:Dynamic, ?height:Dynamic):Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isLandscape(self, Qt.ScreenOrientation) -> bool
	**/
	public function isLandscape(Qt:Dynamic):Bool;
	/**
		isPortrait(self, Qt.ScreenOrientation) -> bool
	**/
	public function isPortrait(Qt:Dynamic):Bool;
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
		logicalDotsPerInch(self) -> float
	**/
	public function logicalDotsPerInch():Float;
	/**
		logicalDotsPerInchChanged(self, float) [signal]
	**/
	public var logicalDotsPerInchChanged : Dynamic;
	/**
		logicalDotsPerInchX(self) -> float
	**/
	public function logicalDotsPerInchX():Float;
	/**
		logicalDotsPerInchY(self) -> float
	**/
	public function logicalDotsPerInchY():Float;
	/**
		manufacturer(self) -> str
	**/
	public function manufacturer():String;
	/**
		mapBetween(self, Qt.ScreenOrientation, Qt.ScreenOrientation, QRect) -> QRect
	**/
	public function mapBetween(Qt:Dynamic, Qt:Dynamic, QRect:Dynamic):Dynamic;
	/**
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
	/**
		model(self) -> str
	**/
	public function model():String;
	/**
		moveToThread(self, QThread)
	**/
	public function moveToThread(QThread:Dynamic):Void;
	/**
		name(self) -> str
	**/
	public function name():String;
	/**
		nativeOrientation(self) -> Qt.ScreenOrientation
	**/
	public function nativeOrientation():Dynamic;
	/**
		objectName(self) -> str
	**/
	public function objectName():String;
	/**
		objectNameChanged(self, str) [signal]
	**/
	public var objectNameChanged : Dynamic;
	/**
		orientation(self) -> Qt.ScreenOrientation
	**/
	public function orientation():Dynamic;
	/**
		orientationChanged(self, Qt.ScreenOrientation) [signal]
	**/
	public var orientationChanged : Dynamic;
	/**
		orientationUpdateMask(self) -> Qt.ScreenOrientations
	**/
	public function orientationUpdateMask():Dynamic;
	/**
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		physicalDotsPerInch(self) -> float
	**/
	public function physicalDotsPerInch():Float;
	/**
		physicalDotsPerInchChanged(self, float) [signal]
	**/
	public var physicalDotsPerInchChanged : Dynamic;
	/**
		physicalDotsPerInchX(self) -> float
	**/
	public function physicalDotsPerInchX():Float;
	/**
		physicalDotsPerInchY(self) -> float
	**/
	public function physicalDotsPerInchY():Float;
	/**
		physicalSize(self) -> QSizeF
	**/
	public function physicalSize():Dynamic;
	/**
		physicalSizeChanged(self, QSizeF) [signal]
	**/
	public var physicalSizeChanged : Dynamic;
	/**
		primaryOrientation(self) -> Qt.ScreenOrientation
	**/
	public function primaryOrientation():Dynamic;
	/**
		primaryOrientationChanged(self, Qt.ScreenOrientation) [signal]
	**/
	public var primaryOrientationChanged : Dynamic;
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
		refreshRate(self) -> float
	**/
	public function refreshRate():Float;
	/**
		refreshRateChanged(self, float) [signal]
	**/
	public var refreshRateChanged : Dynamic;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		serialNumber(self) -> str
	**/
	public function serialNumber():String;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setOrientationUpdateMask(self, Union[Qt.ScreenOrientations, Qt.ScreenOrientation])
	**/
	public function setOrientationUpdateMask(Union:Dynamic):Void;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		size(self) -> QSize
	**/
	public function size():Dynamic;
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
		transformBetween(self, Qt.ScreenOrientation, Qt.ScreenOrientation, QRect) -> QTransform
	**/
	public function transformBetween(Qt:Dynamic, Qt:Dynamic, QRect:Dynamic):Dynamic;
	/**
		virtualGeometry(self) -> QRect
	**/
	public function virtualGeometry():Dynamic;
	/**
		virtualGeometryChanged(self, QRect) [signal]
	**/
	public var virtualGeometryChanged : Dynamic;
	/**
		virtualSiblings(self) -> List[QScreen]
	**/
	public function virtualSiblings():Dynamic;
	/**
		virtualSize(self) -> QSize
	**/
	public function virtualSize():Dynamic;
}