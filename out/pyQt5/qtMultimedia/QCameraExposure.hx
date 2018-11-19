/* This file is generated, do not edit! */
package pyQt5.qtMultimedia;
@:pythonImport("PyQt5.QtMultimedia", "QCameraExposure") extern class QCameraExposure {
	static public var ExposureAction : Dynamic;
	static public var ExposureAuto : Dynamic;
	static public var ExposureBacklight : Dynamic;
	static public var ExposureBarcode : Dynamic;
	static public var ExposureBeach : Dynamic;
	static public var ExposureCandlelight : Dynamic;
	static public var ExposureFireworks : Dynamic;
	static public var ExposureLandscape : Dynamic;
	static public var ExposureLargeAperture : Dynamic;
	static public var ExposureManual : Dynamic;
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
	public function ExposureMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ExposureModeVendor : Dynamic;
	static public var ExposureNight : Dynamic;
	static public var ExposureNightPortrait : Dynamic;
	static public var ExposureParty : Dynamic;
	static public var ExposurePortrait : Dynamic;
	static public var ExposureSmallAperture : Dynamic;
	static public var ExposureSnow : Dynamic;
	static public var ExposureSports : Dynamic;
	static public var ExposureSpotlight : Dynamic;
	static public var ExposureSteadyPhoto : Dynamic;
	static public var ExposureSunset : Dynamic;
	static public var ExposureTheatre : Dynamic;
	static public var FlashAuto : Dynamic;
	static public var FlashFill : Dynamic;
	static public var FlashManual : Dynamic;
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
	public function FlashMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QCameraExposure.FlashModes()
		QCameraExposure.FlashModes(Union[QCameraExposure.FlashModes, QCameraExposure.FlashMode])
		QCameraExposure.FlashModes(QCameraExposure.FlashModes)
	**/
	static public function FlashModes(args:haxe.extern.Rest<Dynamic>):Void;
	static public var FlashOff : Dynamic;
	static public var FlashOn : Dynamic;
	static public var FlashRedEyeReduction : Dynamic;
	static public var FlashSlowSyncFrontCurtain : Dynamic;
	static public var FlashSlowSyncRearCurtain : Dynamic;
	static public var FlashTorch : Dynamic;
	static public var FlashVideoLight : Dynamic;
	static public var MeteringAverage : Dynamic;
	static public var MeteringMatrix : Dynamic;
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
	public function MeteringMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var MeteringSpot : Dynamic;
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
		aperture(self) -> float
	**/
	public function aperture():Float;
	/**
		apertureChanged(self, float) [signal]
	**/
	public var apertureChanged : Dynamic;
	/**
		apertureRangeChanged(self) [signal]
	**/
	public var apertureRangeChanged : Dynamic;
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
		event(self, QEvent) -> bool
	**/
	public function event(QEvent:Dynamic):Bool;
	/**
		eventFilter(self, QObject, QEvent) -> bool
	**/
	public function eventFilter(QObject:Dynamic, QEvent:Dynamic):Bool;
	/**
		exposureCompensation(self) -> float
	**/
	public function exposureCompensation():Float;
	/**
		exposureCompensationChanged(self, float) [signal]
	**/
	public var exposureCompensationChanged : Dynamic;
	/**
		exposureMode(self) -> QCameraExposure.ExposureMode
	**/
	public function exposureMode():Dynamic;
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
		flashMode(self) -> QCameraExposure.FlashModes
	**/
	public function flashMode():Dynamic;
	/**
		flashReady(self, bool) [signal]
	**/
	public var flashReady : Dynamic;
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
		isExposureModeSupported(self, QCameraExposure.ExposureMode) -> bool
	**/
	public function isExposureModeSupported(QCameraExposure:Dynamic):Bool;
	/**
		isFlashModeSupported(self, QCameraExposure.FlashModes) -> bool
	**/
	public function isFlashModeSupported(QCameraExposure:Dynamic):Bool;
	/**
		isFlashReady(self) -> bool
	**/
	public function isFlashReady():Bool;
	/**
		isMeteringModeSupported(self, QCameraExposure.MeteringMode) -> bool
	**/
	public function isMeteringModeSupported(QCameraExposure:Dynamic):Bool;
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
		isoSensitivity(self) -> int
	**/
	public function isoSensitivity():Int;
	/**
		isoSensitivityChanged(self, int) [signal]
	**/
	public var isoSensitivityChanged : Dynamic;
	/**
		killTimer(self, int)
	**/
	public function killTimer(int:Int):Void;
	/**
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
	/**
		meteringMode(self) -> QCameraExposure.MeteringMode
	**/
	public function meteringMode():Dynamic;
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
		requestedAperture(self) -> float
	**/
	public function requestedAperture():Float;
	/**
		requestedIsoSensitivity(self) -> int
	**/
	public function requestedIsoSensitivity():Int;
	/**
		requestedShutterSpeed(self) -> float
	**/
	public function requestedShutterSpeed():Float;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setAutoAperture(self)
	**/
	public function setAutoAperture():Void;
	/**
		setAutoIsoSensitivity(self)
	**/
	public function setAutoIsoSensitivity():Void;
	/**
		setAutoShutterSpeed(self)
	**/
	public function setAutoShutterSpeed():Void;
	/**
		setExposureCompensation(self, float)
	**/
	public function setExposureCompensation(float:Float):Void;
	/**
		setExposureMode(self, QCameraExposure.ExposureMode)
	**/
	public function setExposureMode(QCameraExposure:Dynamic):Void;
	/**
		setFlashMode(self, QCameraExposure.FlashModes)
	**/
	public function setFlashMode(QCameraExposure:Dynamic):Void;
	/**
		setManualAperture(self, float)
	**/
	public function setManualAperture(float:Float):Void;
	/**
		setManualIsoSensitivity(self, int)
	**/
	public function setManualIsoSensitivity(int:Int):Void;
	/**
		setManualShutterSpeed(self, float)
	**/
	public function setManualShutterSpeed(float:Float):Void;
	/**
		setMeteringMode(self, QCameraExposure.MeteringMode)
	**/
	public function setMeteringMode(QCameraExposure:Dynamic):Void;
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
		setSpotMeteringPoint(self, Union[QPointF, QPoint])
	**/
	public function setSpotMeteringPoint(Union:Dynamic):Void;
	/**
		shutterSpeed(self) -> float
	**/
	public function shutterSpeed():Float;
	/**
		shutterSpeedChanged(self, float) [signal]
	**/
	public var shutterSpeedChanged : Dynamic;
	/**
		shutterSpeedRangeChanged(self) [signal]
	**/
	public var shutterSpeedRangeChanged : Dynamic;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		spotMeteringPoint(self) -> QPointF
	**/
	public function spotMeteringPoint():Dynamic;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	static public var staticMetaObject : Dynamic;
	/**
		supportedApertures(self) -> Tuple[List[float], bool]
	**/
	public function supportedApertures():Dynamic;
	/**
		supportedIsoSensitivities(self) -> Tuple[List[int], bool]
	**/
	public function supportedIsoSensitivities():Dynamic;
	/**
		supportedShutterSpeeds(self) -> Tuple[List[float], bool]
	**/
	public function supportedShutterSpeeds():Dynamic;
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
}