/* This file is generated, do not edit! */
package pyQt5.qtMultimedia;
@:pythonImport("PyQt5.QtMultimedia", "QCamera") extern class QCamera {
	static public var ActiveState : Dynamic;
	static public var ActiveStatus : Dynamic;
	static public var BackFace : Dynamic;
	static public var CameraError : Dynamic;
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
	public function CaptureMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QCamera.CaptureModes()
		QCamera.CaptureModes(Union[QCamera.CaptureModes, QCamera.CaptureMode])
		QCamera.CaptureModes(QCamera.CaptureModes)
	**/
	static public function CaptureModes(args:haxe.extern.Rest<Dynamic>):Void;
	static public var CaptureStillImage : Dynamic;
	static public var CaptureVideo : Dynamic;
	static public var CaptureViewfinder : Dynamic;
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
	public function Error(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QCamera.FrameRateRange(float, float)
		QCamera.FrameRateRange()
		QCamera.FrameRateRange(QCamera.FrameRateRange)
	**/
	static public function FrameRateRange(args:haxe.extern.Rest<Dynamic>):Void;
	static public var FrontFace : Dynamic;
	static public var InvalidRequestError : Dynamic;
	static public var LoadedState : Dynamic;
	static public var LoadedStatus : Dynamic;
	static public var LoadingStatus : Dynamic;
	static public var LockAcquired : Dynamic;
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
	public function LockChangeReason(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var LockExposure : Dynamic;
	static public var LockFailed : Dynamic;
	static public var LockFocus : Dynamic;
	static public var LockLost : Dynamic;
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
	public function LockStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var LockTemporaryLost : Dynamic;
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
	public function LockType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QCamera.LockTypes()
		QCamera.LockTypes(Union[QCamera.LockTypes, QCamera.LockType])
		QCamera.LockTypes(QCamera.LockTypes)
	**/
	static public function LockTypes(args:haxe.extern.Rest<Dynamic>):Void;
	static public var LockWhiteBalance : Dynamic;
	static public var Locked : Dynamic;
	static public var NoError : Dynamic;
	static public var NoLock : Dynamic;
	static public var NotSupportedFeatureError : Dynamic;
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
	public function Position(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Searching : Dynamic;
	static public var ServiceMissingError : Dynamic;
	static public var StandbyStatus : Dynamic;
	static public var StartingStatus : Dynamic;
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
	public function State(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function Status(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var StoppingStatus : Dynamic;
	static public var UnavailableStatus : Dynamic;
	static public var UnloadedState : Dynamic;
	static public var UnloadedStatus : Dynamic;
	static public var UnloadingStatus : Dynamic;
	static public var Unlocked : Dynamic;
	static public var UnspecifiedPosition : Dynamic;
	static public var UserRequest : Dynamic;
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
		addPropertyWatch(self, Union[QByteArray, bytes, bytearray])
	**/
	public function addPropertyWatch(Union:Dynamic):Void;
	/**
		availability(self) -> QMultimedia.AvailabilityStatus
	**/
	public function availability():Dynamic;
	/**
		availabilityChanged(self, QMultimedia.AvailabilityStatus) [signal]
	**/
	public var availabilityChanged : Dynamic;
	/**
		availableDevices() -> List[QByteArray]
	**/
	static public function availableDevices():Dynamic;
	/**
		availableMetaData(self) -> List[str]
	**/
	public function availableMetaData():Dynamic;
	/**
		bind(self, QObject) -> bool
	**/
	public function bind(QObject:Dynamic):Bool;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		captureMode(self) -> QCamera.CaptureModes
	**/
	public function captureMode():Dynamic;
	/**
		captureModeChanged(self, QCamera.CaptureModes) [signal]
	**/
	public var captureModeChanged : Dynamic;
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
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		deleteLater(self)
	**/
	public function deleteLater():Void;
	/**
		destroyed(self, QObject = None) [signal]
	**/
	public var destroyed : Dynamic;
	/**
		deviceDescription(Union[QByteArray, bytes, bytearray]) -> str
	**/
	static public function deviceDescription(Union:Dynamic):String;
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
		error(self) -> QCamera.Error
		error(self, QCamera.Error) [signal]
	**/
	public var error : Dynamic;
	/**
		errorString(self) -> str
	**/
	public function errorString():String;
	/**
		event(self, QEvent) -> bool
	**/
	public function event(QEvent:Dynamic):Bool;
	/**
		eventFilter(self, QObject, QEvent) -> bool
	**/
	public function eventFilter(QObject:Dynamic, QEvent:Dynamic):Bool;
	/**
		exposure(self) -> QCameraExposure
	**/
	public function exposure():Dynamic;
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
		focus(self) -> QCameraFocus
	**/
	public function focus():Dynamic;
	/**
		imageProcessing(self) -> QCameraImageProcessing
	**/
	public function imageProcessing():Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isAvailable(self) -> bool
	**/
	public function isAvailable():Bool;
	/**
		isCaptureModeSupported(self, QCamera.CaptureModes) -> bool
	**/
	public function isCaptureModeSupported(QCamera:Dynamic):Bool;
	/**
		isMetaDataAvailable(self) -> bool
	**/
	public function isMetaDataAvailable():Bool;
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
		load(self)
	**/
	public function load():Void;
	/**
		lockFailed(self) [signal]
	**/
	public var lockFailed : Dynamic;
	/**
		lockStatus(self) -> QCamera.LockStatus
		lockStatus(self, QCamera.LockType) -> QCamera.LockStatus
	**/
	public function lockStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lockStatusChanged(self, QCamera.LockStatus, QCamera.LockChangeReason) [signal]
		lockStatusChanged(self, QCamera.LockType, QCamera.LockStatus, QCamera.LockChangeReason) [signal]
	**/
	public var lockStatusChanged : Dynamic;
	/**
		locked(self) [signal]
	**/
	public var locked : Dynamic;
	/**
		metaData(self, str) -> Any
	**/
	public function metaData(str:String):Dynamic;
	/**
		metaDataAvailableChanged(self, bool) [signal]
	**/
	public var metaDataAvailableChanged : Dynamic;
	/**
		metaDataChanged(self) [signal]
		metaDataChanged(self, str, Any) [signal]
	**/
	public var metaDataChanged : Dynamic;
	/**
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
	/**
		moveToThread(self, QThread)
	**/
	public function moveToThread(QThread:Dynamic):Void;
	/**
		notifyInterval(self) -> int
	**/
	public function notifyInterval():Int;
	/**
		notifyIntervalChanged(self, int) [signal]
	**/
	public var notifyIntervalChanged : Dynamic;
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
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		removePropertyWatch(self, Union[QByteArray, bytes, bytearray])
	**/
	public function removePropertyWatch(Union:Dynamic):Void;
	/**
		requestedLocks(self) -> QCamera.LockTypes
	**/
	public function requestedLocks():Dynamic;
	/**
		searchAndLock(self)
		searchAndLock(self, QCamera.LockTypes)
	**/
	public function searchAndLock(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		service(self) -> QMediaService
	**/
	public function service():Dynamic;
	/**
		setCaptureMode(self, QCamera.CaptureModes)
	**/
	public function setCaptureMode(QCamera:Dynamic):Void;
	/**
		setNotifyInterval(self, int)
	**/
	public function setNotifyInterval(int:Int):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setViewfinder(self, QVideoWidget)
		setViewfinder(self, QGraphicsVideoItem)
		setViewfinder(self, QAbstractVideoSurface)
	**/
	public function setViewfinder(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setViewfinderSettings(self, QCameraViewfinderSettings)
	**/
	public function setViewfinderSettings(QCameraViewfinderSettings:Dynamic):Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		start(self)
	**/
	public function start():Void;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	/**
		state(self) -> QCamera.State
	**/
	public function state():Dynamic;
	/**
		stateChanged(self, QCamera.State) [signal]
	**/
	public var stateChanged : Dynamic;
	static public var staticMetaObject : Dynamic;
	/**
		status(self) -> QCamera.Status
	**/
	public function status():Dynamic;
	/**
		statusChanged(self, QCamera.Status) [signal]
	**/
	public var statusChanged : Dynamic;
	/**
		stop(self)
	**/
	public function stop():Void;
	/**
		supportedLocks(self) -> QCamera.LockTypes
	**/
	public function supportedLocks():Dynamic;
	/**
		supportedViewfinderFrameRateRanges(self, settings: QCameraViewfinderSettings = QCameraViewfinderSettings()) -> object
	**/
	public function supportedViewfinderFrameRateRanges(?settings:Dynamic):Dynamic;
	/**
		supportedViewfinderPixelFormats(self, settings: QCameraViewfinderSettings = QCameraViewfinderSettings()) -> List[QVideoFrame.PixelFormat]
	**/
	public function supportedViewfinderPixelFormats(?settings:Dynamic):Dynamic;
	/**
		supportedViewfinderResolutions(self, settings: QCameraViewfinderSettings = QCameraViewfinderSettings()) -> List[QSize]
	**/
	public function supportedViewfinderResolutions(?settings:Dynamic):Dynamic;
	/**
		supportedViewfinderSettings(self, settings: QCameraViewfinderSettings = QCameraViewfinderSettings()) -> object
	**/
	public function supportedViewfinderSettings(?settings:Dynamic):Dynamic;
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
		unbind(self, QObject)
	**/
	public function unbind(QObject:Dynamic):Void;
	/**
		unload(self)
	**/
	public function unload():Void;
	/**
		unlock(self)
		unlock(self, QCamera.LockTypes)
	**/
	public function unlock(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		viewfinderSettings(self) -> QCameraViewfinderSettings
	**/
	public function viewfinderSettings():Dynamic;
}