/* This file is generated, do not edit! */
package pyQt5.qtSensors;
@:pythonImport("PyQt5.QtSensors", "QHumiditySensor") extern class QHumiditySensor {
	static public var AccelerationMode : Dynamic;
	static public var AlwaysOn : Dynamic;
	static public var AutomaticOrientation : Dynamic;
	static public var AxesOrientation : Dynamic;
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
	public function AxesOrientationMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Buffering : Dynamic;
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
	public function Feature(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var FieldOfView : Dynamic;
	static public var FixedOrientation : Dynamic;
	static public var GeoValues : Dynamic;
	static public var PressureSensorTemperature : Dynamic;
	static public var SkipDuplicates : Dynamic;
	static public var UserOrientation : Dynamic;
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
		activeChanged(self) [signal]
	**/
	public var activeChanged : Dynamic;
	/**
		addFilter(self, QSensorFilter)
	**/
	public function addFilter(QSensorFilter:Dynamic):Void;
	/**
		alwaysOnChanged(self) [signal]
	**/
	public var alwaysOnChanged : Dynamic;
	/**
		availableDataRates(self) -> List[Tuple[int, int]]
	**/
	public function availableDataRates():Dynamic;
	/**
		availableSensorsChanged(self) [signal]
	**/
	public var availableSensorsChanged : Dynamic;
	/**
		axesOrientationMode(self) -> QSensor.AxesOrientationMode
	**/
	public function axesOrientationMode():Dynamic;
	/**
		axesOrientationModeChanged(self, QSensor.AxesOrientationMode) [signal]
	**/
	public var axesOrientationModeChanged : Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		bufferSize(self) -> int
	**/
	public function bufferSize():Int;
	/**
		bufferSizeChanged(self, int) [signal]
	**/
	public var bufferSizeChanged : Dynamic;
	/**
		busyChanged(self) [signal]
	**/
	public var busyChanged : Dynamic;
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
		connectToBackend(self) -> bool
	**/
	public function connectToBackend():Bool;
	/**
		currentOrientation(self) -> int
	**/
	public function currentOrientation():Int;
	/**
		currentOrientationChanged(self, int) [signal]
	**/
	public var currentOrientationChanged : Dynamic;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		dataRate(self) -> int
	**/
	public function dataRate():Int;
	/**
		dataRateChanged(self) [signal]
	**/
	public var dataRateChanged : Dynamic;
	/**
		defaultSensorForType(Union[QByteArray, bytes, bytearray]) -> QByteArray
	**/
	static public function defaultSensorForType(Union:Dynamic):Dynamic;
	/**
		deleteLater(self)
	**/
	public function deleteLater():Void;
	/**
		description(self) -> str
	**/
	public function description():String;
	/**
		destroyed(self, object: QObject = None) [signal]
	**/
	public var destroyed : Dynamic;
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
		efficientBufferSize(self) -> int
	**/
	public function efficientBufferSize():Int;
	/**
		efficientBufferSizeChanged(self, int) [signal]
	**/
	public var efficientBufferSizeChanged : Dynamic;
	/**
		error(self) -> int
	**/
	public function error():Int;
	/**
		event(self, QEvent) -> bool
	**/
	public function event(QEvent:Dynamic):Bool;
	/**
		eventFilter(self, QObject, QEvent) -> bool
	**/
	public function eventFilter(QObject:Dynamic, QEvent:Dynamic):Bool;
	/**
		filters(self) -> List[QSensorFilter]
	**/
	public function filters():Dynamic;
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
		identifier(self) -> QByteArray
	**/
	public function identifier():Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isActive(self) -> bool
	**/
	public function isActive():Bool;
	/**
		isAlwaysOn(self) -> bool
	**/
	public function isAlwaysOn():Bool;
	/**
		isBusy(self) -> bool
	**/
	public function isBusy():Bool;
	/**
		isConnectedToBackend(self) -> bool
	**/
	public function isConnectedToBackend():Bool;
	/**
		isFeatureSupported(self, QSensor.Feature) -> bool
	**/
	public function isFeatureSupported(QSensor:Dynamic):Bool;
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
		maxBufferSize(self) -> int
	**/
	public function maxBufferSize():Int;
	/**
		maxBufferSizeChanged(self, int) [signal]
	**/
	public var maxBufferSizeChanged : Dynamic;
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
		outputRange(self) -> int
	**/
	public function outputRange():Int;
	/**
		outputRanges(self) -> List[qoutputrange]
	**/
	public function outputRanges():Dynamic;
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
		reading(self) -> QHumidityReading
	**/
	public function reading():Dynamic;
	/**
		readingChanged(self) [signal]
	**/
	public var readingChanged : Dynamic;
	/**
		receivers(self, PYQT_SIGNAL) -> int
	**/
	public function receivers(PYQT:Dynamic):Int;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		removeFilter(self, QSensorFilter)
	**/
	public function removeFilter(QSensorFilter:Dynamic):Void;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		sensorError(self, int) [signal]
	**/
	public var sensorError : Dynamic;
	/**
		sensorTypes() -> List[QByteArray]
	**/
	static public function sensorTypes():Dynamic;
	/**
		sensorsForType(Union[QByteArray, bytes, bytearray]) -> List[QByteArray]
	**/
	static public function sensorsForType(Union:Dynamic):Dynamic;
	/**
		setActive(self, bool)
	**/
	public function setActive(bool:Bool):Void;
	/**
		setAlwaysOn(self, bool)
	**/
	public function setAlwaysOn(bool:Bool):Void;
	/**
		setAxesOrientationMode(self, QSensor.AxesOrientationMode)
	**/
	public function setAxesOrientationMode(QSensor:Dynamic):Void;
	/**
		setBufferSize(self, int)
	**/
	public function setBufferSize(int:Int):Void;
	/**
		setCurrentOrientation(self, int)
	**/
	public function setCurrentOrientation(int:Int):Void;
	/**
		setDataRate(self, int)
	**/
	public function setDataRate(int:Int):Void;
	/**
		setEfficientBufferSize(self, int)
	**/
	public function setEfficientBufferSize(int:Int):Void;
	/**
		setIdentifier(self, Union[QByteArray, bytes, bytearray])
	**/
	public function setIdentifier(Union:Dynamic):Void;
	/**
		setMaxBufferSize(self, int)
	**/
	public function setMaxBufferSize(int:Int):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setOutputRange(self, int)
	**/
	public function setOutputRange(int:Int):Void;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setSkipDuplicates(self, bool)
	**/
	public function setSkipDuplicates(bool:Bool):Void;
	/**
		setUserOrientation(self, int)
	**/
	public function setUserOrientation(int:Int):Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		skipDuplicates(self) -> bool
	**/
	public function skipDuplicates():Bool;
	/**
		skipDuplicatesChanged(self, bool) [signal]
	**/
	public var skipDuplicatesChanged : Dynamic;
	/**
		start(self) -> bool
	**/
	public function start():Bool;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	static public var staticMetaObject : Dynamic;
	/**
		stop(self)
	**/
	public function stop():Void;
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
		type(self) -> QByteArray
	**/
	public function type():Dynamic;
	/**
		userOrientation(self) -> int
	**/
	public function userOrientation():Int;
	/**
		userOrientationChanged(self, int) [signal]
	**/
	public var userOrientationChanged : Dynamic;
}