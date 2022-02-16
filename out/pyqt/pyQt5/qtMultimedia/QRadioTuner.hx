/* This file is generated, do not edit! */
package pyQt5.qtMultimedia;
@:pythonImport("PyQt5.QtMultimedia", "QRadioTuner") extern class QRadioTuner {
	static public var AM : Dynamic;
	static public var ActiveState : Dynamic;
	static public var Auto : Dynamic;
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
	public function Band(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function Error(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var FM : Dynamic;
	static public var FM2 : Dynamic;
	static public var ForceMono : Dynamic;
	static public var ForceStereo : Dynamic;
	static public var LW : Dynamic;
	static public var NoError : Dynamic;
	static public var OpenError : Dynamic;
	static public var OutOfRangeError : Dynamic;
	static public var ResourceError : Dynamic;
	static public var SW : Dynamic;
	static public var SearchFast : Dynamic;
	static public var SearchGetStationId : Dynamic;
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
	public function SearchMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function State(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function StereoMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var StoppedState : Dynamic;
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
		addPropertyWatch(self, Union[QByteArray, bytes, bytearray])
	**/
	public function addPropertyWatch(Union:Dynamic):Void;
	/**
		antennaConnectedChanged(self, bool) [signal]
	**/
	public var antennaConnectedChanged : Dynamic;
	/**
		availability(self) -> QMultimedia.AvailabilityStatus
	**/
	public function availability():Dynamic;
	/**
		availabilityChanged(self, QMultimedia.AvailabilityStatus) [signal]
		availabilityChanged(self, bool) [signal]
	**/
	public var availabilityChanged : Dynamic;
	/**
		availableMetaData(self) -> List[str]
	**/
	public function availableMetaData():Dynamic;
	/**
		band(self) -> QRadioTuner.Band
	**/
	public function band():Dynamic;
	/**
		bandChanged(self, QRadioTuner.Band) [signal]
	**/
	public var bandChanged : Dynamic;
	/**
		bind(self, QObject) -> bool
	**/
	public function bind(QObject:Dynamic):Bool;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		cancelSearch(self)
	**/
	public function cancelSearch():Void;
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
		error(self) -> QRadioTuner.Error
		error(self, QRadioTuner.Error) [signal]
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
		frequency(self) -> int
	**/
	public function frequency():Int;
	/**
		frequencyChanged(self, int) [signal]
	**/
	public var frequencyChanged : Dynamic;
	/**
		frequencyRange(self, QRadioTuner.Band) -> Tuple[int, int]
	**/
	public function frequencyRange(QRadioTuner:Dynamic):Dynamic;
	/**
		frequencyStep(self, QRadioTuner.Band) -> int
	**/
	public function frequencyStep(QRadioTuner:Dynamic):Int;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isAntennaConnected(self) -> bool
	**/
	public function isAntennaConnected():Bool;
	/**
		isAvailable(self) -> bool
	**/
	public function isAvailable():Bool;
	/**
		isBandSupported(self, QRadioTuner.Band) -> bool
	**/
	public function isBandSupported(QRadioTuner:Dynamic):Bool;
	/**
		isMetaDataAvailable(self) -> bool
	**/
	public function isMetaDataAvailable():Bool;
	/**
		isMuted(self) -> bool
	**/
	public function isMuted():Bool;
	/**
		isSearching(self) -> bool
	**/
	public function isSearching():Bool;
	/**
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	public function isSignalConnected(QMetaMethod:Dynamic):Bool;
	/**
		isStereo(self) -> bool
	**/
	public function isStereo():Bool;
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
		mutedChanged(self, bool) [signal]
	**/
	public var mutedChanged : Dynamic;
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
		radioData(self) -> QRadioData
	**/
	public function radioData():Dynamic;
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
		searchAllStations(self, searchMode: QRadioTuner.SearchMode = QRadioTuner.SearchFast)
	**/
	public function searchAllStations(?searchMode:Dynamic):Void;
	/**
		searchBackward(self)
	**/
	public function searchBackward():Void;
	/**
		searchForward(self)
	**/
	public function searchForward():Void;
	/**
		searchingChanged(self, bool) [signal]
	**/
	public var searchingChanged : Dynamic;
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
		setBand(self, QRadioTuner.Band)
	**/
	public function setBand(QRadioTuner:Dynamic):Void;
	/**
		setFrequency(self, int)
	**/
	public function setFrequency(int:Int):Void;
	/**
		setMuted(self, bool)
	**/
	public function setMuted(bool:Bool):Void;
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
		setStereoMode(self, QRadioTuner.StereoMode)
	**/
	public function setStereoMode(QRadioTuner:Dynamic):Void;
	/**
		setVolume(self, int)
	**/
	public function setVolume(int:Int):Void;
	/**
		signalStrength(self) -> int
	**/
	public function signalStrength():Int;
	/**
		signalStrengthChanged(self, int) [signal]
	**/
	public var signalStrengthChanged : Dynamic;
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
		state(self) -> QRadioTuner.State
	**/
	public function state():Dynamic;
	/**
		stateChanged(self, QRadioTuner.State) [signal]
	**/
	public var stateChanged : Dynamic;
	static public var staticMetaObject : Dynamic;
	/**
		stationFound(self, int, str) [signal]
	**/
	public var stationFound : Dynamic;
	/**
		stereoMode(self) -> QRadioTuner.StereoMode
	**/
	public function stereoMode():Dynamic;
	/**
		stereoStatusChanged(self, bool) [signal]
	**/
	public var stereoStatusChanged : Dynamic;
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
		unbind(self, QObject)
	**/
	public function unbind(QObject:Dynamic):Void;
	/**
		volume(self) -> int
	**/
	public function volume():Int;
	/**
		volumeChanged(self, int) [signal]
	**/
	public var volumeChanged : Dynamic;
}