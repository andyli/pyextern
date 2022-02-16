/* This file is generated, do not edit! */
package pyQt5.qtMultimedia;
@:pythonImport("PyQt5.QtMultimedia", "QAudioRecorder") extern class QAudioRecorder {
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
	static public var FinalizingStatus : Dynamic;
	static public var FormatError : Dynamic;
	static public var LoadedStatus : Dynamic;
	static public var LoadingStatus : Dynamic;
	static public var NoError : Dynamic;
	static public var OutOfSpaceError : Dynamic;
	static public var PausedState : Dynamic;
	static public var PausedStatus : Dynamic;
	static public var RecordingState : Dynamic;
	static public var RecordingStatus : Dynamic;
	static public var ResourceError : Dynamic;
	static public var StartingStatus : Dynamic;
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
	public function Status(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var StoppedState : Dynamic;
	static public var UnavailableStatus : Dynamic;
	static public var UnloadedStatus : Dynamic;
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
		actualLocation(self) -> QUrl
	**/
	public function actualLocation():Dynamic;
	/**
		actualLocationChanged(self, QUrl) [signal]
	**/
	public var actualLocationChanged : Dynamic;
	/**
		audioCodecDescription(self, str) -> str
	**/
	public function audioCodecDescription(str:String):String;
	/**
		audioInput(self) -> str
	**/
	public function audioInput():String;
	/**
		audioInputChanged(self, str) [signal]
	**/
	public var audioInputChanged : Dynamic;
	/**
		audioInputDescription(self, str) -> str
	**/
	public function audioInputDescription(str:String):String;
	/**
		audioInputs(self) -> List[str]
	**/
	public function audioInputs():Dynamic;
	/**
		audioSettings(self) -> QAudioEncoderSettings
	**/
	public function audioSettings():Dynamic;
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
		availableAudioInputsChanged(self) [signal]
	**/
	public var availableAudioInputsChanged : Dynamic;
	/**
		availableMetaData(self) -> List[str]
	**/
	public function availableMetaData():Dynamic;
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
		containerDescription(self, str) -> str
	**/
	public function containerDescription(str:String):String;
	/**
		containerFormat(self) -> str
	**/
	public function containerFormat():String;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		defaultAudioInput(self) -> str
	**/
	public function defaultAudioInput():String;
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
		duration(self) -> int
	**/
	public function duration():Int;
	/**
		durationChanged(self, int) [signal]
	**/
	public var durationChanged : Dynamic;
	/**
		dynamicPropertyNames(self) -> List[QByteArray]
	**/
	public function dynamicPropertyNames():Dynamic;
	/**
		error(self) -> QMediaRecorder.Error
		error(self, QMediaRecorder.Error) [signal]
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
		isMetaDataAvailable(self) -> bool
	**/
	public function isMetaDataAvailable():Bool;
	/**
		isMetaDataWritable(self) -> bool
	**/
	public function isMetaDataWritable():Bool;
	/**
		isMuted(self) -> bool
	**/
	public function isMuted():Bool;
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
		mediaObject(self) -> QMediaObject
	**/
	public function mediaObject():Dynamic;
	/**
		metaData(self, str) -> Any
	**/
	public function metaData(str:String):Dynamic;
	/**
		metaDataAvailableChanged(self, bool) [signal]
	**/
	public var metaDataAvailableChanged : Dynamic;
	/**
		metaDataChanged(self, str, Any) [signal]
		metaDataChanged(self) [signal]
	**/
	public var metaDataChanged : Dynamic;
	/**
		metaDataWritableChanged(self, bool) [signal]
	**/
	public var metaDataWritableChanged : Dynamic;
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
		objectName(self) -> str
	**/
	public function objectName():String;
	/**
		objectNameChanged(self, str) [signal]
	**/
	public var objectNameChanged : Dynamic;
	/**
		outputLocation(self) -> QUrl
	**/
	public function outputLocation():Dynamic;
	/**
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		pause(self)
	**/
	public function pause():Void;
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
		record(self)
	**/
	public function record():Void;
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
		setAudioInput(self, str)
	**/
	public function setAudioInput(str:String):Void;
	/**
		setAudioSettings(self, QAudioEncoderSettings)
	**/
	public function setAudioSettings(QAudioEncoderSettings:Dynamic):Void;
	/**
		setContainerFormat(self, str)
	**/
	public function setContainerFormat(str:String):Void;
	/**
		setEncodingSettings(self, QAudioEncoderSettings, video: QVideoEncoderSettings = QVideoEncoderSettings(), container: str = '')
	**/
	public function setEncodingSettings(QAudioEncoderSettings:Dynamic, ?video:Dynamic, ?container:Dynamic):Void;
	/**
		setMediaObject(self, QMediaObject) -> bool
	**/
	public function setMediaObject(QMediaObject:Dynamic):Bool;
	/**
		setMetaData(self, str, Any)
	**/
	public function setMetaData(str:String, Any:Dynamic):Void;
	/**
		setMuted(self, bool)
	**/
	public function setMuted(bool:Bool):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setOutputLocation(self, QUrl) -> bool
	**/
	public function setOutputLocation(QUrl:Dynamic):Bool;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setVideoSettings(self, QVideoEncoderSettings)
	**/
	public function setVideoSettings(QVideoEncoderSettings:Dynamic):Void;
	/**
		setVolume(self, float)
	**/
	public function setVolume(float:Float):Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	/**
		state(self) -> QMediaRecorder.State
	**/
	public function state():Dynamic;
	/**
		stateChanged(self, QMediaRecorder.State) [signal]
	**/
	public var stateChanged : Dynamic;
	static public var staticMetaObject : Dynamic;
	/**
		status(self) -> QMediaRecorder.Status
	**/
	public function status():Dynamic;
	/**
		statusChanged(self, QMediaRecorder.Status) [signal]
	**/
	public var statusChanged : Dynamic;
	/**
		stop(self)
	**/
	public function stop():Void;
	/**
		supportedAudioCodecs(self) -> List[str]
	**/
	public function supportedAudioCodecs():Dynamic;
	/**
		supportedAudioSampleRates(self, settings: QAudioEncoderSettings = QAudioEncoderSettings()) -> Tuple[List[int], bool]
	**/
	public function supportedAudioSampleRates(?settings:Dynamic):Dynamic;
	/**
		supportedContainers(self) -> List[str]
	**/
	public function supportedContainers():Dynamic;
	/**
		supportedFrameRates(self, settings: QVideoEncoderSettings = QVideoEncoderSettings()) -> Tuple[List[float], bool]
	**/
	public function supportedFrameRates(?settings:Dynamic):Dynamic;
	/**
		supportedResolutions(self, settings: QVideoEncoderSettings = QVideoEncoderSettings()) -> Tuple[List[QSize], bool]
	**/
	public function supportedResolutions(?settings:Dynamic):Dynamic;
	/**
		supportedVideoCodecs(self) -> List[str]
	**/
	public function supportedVideoCodecs():Dynamic;
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
		videoCodecDescription(self, str) -> str
	**/
	public function videoCodecDescription(str:String):String;
	/**
		videoSettings(self) -> QVideoEncoderSettings
	**/
	public function videoSettings():Dynamic;
	/**
		volume(self) -> float
	**/
	public function volume():Float;
	/**
		volumeChanged(self, float) [signal]
	**/
	public var volumeChanged : Dynamic;
}