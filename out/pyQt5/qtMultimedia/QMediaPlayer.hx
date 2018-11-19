/* This file is generated, do not edit! */
package pyQt5.qtMultimedia;
@:pythonImport("PyQt5.QtMultimedia", "QMediaPlayer") extern class QMediaPlayer {
	static public var AccessDeniedError : Dynamic;
	static public var BufferedMedia : Dynamic;
	static public var BufferingMedia : Dynamic;
	static public var EndOfMedia : Dynamic;
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
	public function Flag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QMediaPlayer.Flags()
		QMediaPlayer.Flags(Union[QMediaPlayer.Flags, QMediaPlayer.Flag])
		QMediaPlayer.Flags(QMediaPlayer.Flags)
	**/
	static public function Flags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var FormatError : Dynamic;
	static public var InvalidMedia : Dynamic;
	static public var LoadedMedia : Dynamic;
	static public var LoadingMedia : Dynamic;
	static public var LowLatency : Dynamic;
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
	public function MediaStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NetworkError : Dynamic;
	static public var NoError : Dynamic;
	static public var NoMedia : Dynamic;
	static public var PausedState : Dynamic;
	static public var PlayingState : Dynamic;
	static public var ResourceError : Dynamic;
	static public var ServiceMissingError : Dynamic;
	static public var StalledMedia : Dynamic;
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
	static public var StoppedState : Dynamic;
	static public var StreamPlayback : Dynamic;
	static public var UnknownMediaStatus : Dynamic;
	static public var VideoSurface : Dynamic;
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
		audioAvailableChanged(self, bool) [signal]
	**/
	public var audioAvailableChanged : Dynamic;
	/**
		audioRole(self) -> QAudio.Role
	**/
	public function audioRole():Dynamic;
	/**
		audioRoleChanged(self, QAudio.Role) [signal]
	**/
	public var audioRoleChanged : Dynamic;
	/**
		availability(self) -> QMultimedia.AvailabilityStatus
	**/
	public function availability():Dynamic;
	/**
		availabilityChanged(self, QMultimedia.AvailabilityStatus) [signal]
	**/
	public var availabilityChanged : Dynamic;
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
		bufferStatus(self) -> int
	**/
	public function bufferStatus():Int;
	/**
		bufferStatusChanged(self, int) [signal]
	**/
	public var bufferStatusChanged : Dynamic;
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
		currentMedia(self) -> QMediaContent
	**/
	public function currentMedia():Dynamic;
	/**
		currentMediaChanged(self, QMediaContent) [signal]
	**/
	public var currentMediaChanged : Dynamic;
	/**
		currentNetworkConfiguration(self) -> QNetworkConfiguration
	**/
	public function currentNetworkConfiguration():Dynamic;
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
		duration(self) -> int
	**/
	public function duration():Int;
	/**
		durationChanged(self, int) [signal]
	**/
	public var durationChanged : Dynamic;
	/**
		dynamicPropertyNames(self) -> object
	**/
	public function dynamicPropertyNames():Dynamic;
	/**
		error(self) -> QMediaPlayer.Error
		error(self, QMediaPlayer.Error) [signal]
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
		hasSupport(str, codecs: Iterable[str] = [], flags: Union[QMediaPlayer.Flags, QMediaPlayer.Flag] = 0) -> QMultimedia.SupportEstimate
	**/
	static public function hasSupport(str:String, ?codecs:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isAudioAvailable(self) -> bool
	**/
	public function isAudioAvailable():Bool;
	/**
		isAvailable(self) -> bool
	**/
	public function isAvailable():Bool;
	/**
		isMetaDataAvailable(self) -> bool
	**/
	public function isMetaDataAvailable():Bool;
	/**
		isMuted(self) -> bool
	**/
	public function isMuted():Bool;
	/**
		isSeekable(self) -> bool
	**/
	public function isSeekable():Bool;
	/**
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	public function isSignalConnected(QMetaMethod:Dynamic):Bool;
	/**
		isVideoAvailable(self) -> bool
	**/
	public function isVideoAvailable():Bool;
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
		media(self) -> QMediaContent
	**/
	public function media():Dynamic;
	/**
		mediaChanged(self, QMediaContent) [signal]
	**/
	public var mediaChanged : Dynamic;
	/**
		mediaStatus(self) -> QMediaPlayer.MediaStatus
	**/
	public function mediaStatus():Dynamic;
	/**
		mediaStatusChanged(self, QMediaPlayer.MediaStatus) [signal]
	**/
	public var mediaStatusChanged : Dynamic;
	/**
		mediaStream(self) -> QIODevice
	**/
	public function mediaStream():Dynamic;
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
		networkConfigurationChanged(self, QNetworkConfiguration) [signal]
	**/
	public var networkConfigurationChanged : Dynamic;
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
		pause(self)
	**/
	public function pause():Void;
	/**
		play(self)
	**/
	public function play():Void;
	/**
		playbackRate(self) -> float
	**/
	public function playbackRate():Float;
	/**
		playbackRateChanged(self, float) [signal]
	**/
	public var playbackRateChanged : Dynamic;
	/**
		playlist(self) -> QMediaPlaylist
	**/
	public function playlist():Dynamic;
	/**
		position(self) -> int
	**/
	public function position():Int;
	/**
		positionChanged(self, int) [signal]
	**/
	public var positionChanged : Dynamic;
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
		seekableChanged(self, bool) [signal]
	**/
	public var seekableChanged : Dynamic;
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
		setAudioRole(self, QAudio.Role)
	**/
	public function setAudioRole(QAudio:Dynamic):Void;
	/**
		setMedia(self, QMediaContent, stream: QIODevice = None)
	**/
	public function setMedia(QMediaContent:Dynamic, ?stream:Dynamic):Void;
	/**
		setMuted(self, bool)
	**/
	public function setMuted(bool:Bool):Void;
	/**
		setNetworkConfigurations(self, Iterable[QNetworkConfiguration])
	**/
	public function setNetworkConfigurations(Iterable:Dynamic):Void;
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
		setPlaybackRate(self, float)
	**/
	public function setPlaybackRate(float:Float):Void;
	/**
		setPlaylist(self, QMediaPlaylist)
	**/
	public function setPlaylist(QMediaPlaylist:Dynamic):Void;
	/**
		setPosition(self, int)
	**/
	public function setPosition(int:Int):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setVideoOutput(self, QVideoWidget)
		setVideoOutput(self, QGraphicsVideoItem)
		setVideoOutput(self, QAbstractVideoSurface)
	**/
	public function setVideoOutput(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setVolume(self, int)
	**/
	public function setVolume(int:Int):Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	/**
		state(self) -> QMediaPlayer.State
	**/
	public function state():Dynamic;
	/**
		stateChanged(self, QMediaPlayer.State) [signal]
	**/
	public var stateChanged : Dynamic;
	static public var staticMetaObject : Dynamic;
	/**
		stop(self)
	**/
	public function stop():Void;
	/**
		supportedAudioRoles(self) -> List[QAudio.Role]
	**/
	public function supportedAudioRoles():Dynamic;
	/**
		supportedMimeTypes(flags: Union[QMediaPlayer.Flags, QMediaPlayer.Flag] = 0) -> List[str]
	**/
	static public function supportedMimeTypes(?flags:Dynamic):Dynamic;
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
		videoAvailableChanged(self, bool) [signal]
	**/
	public var videoAvailableChanged : Dynamic;
	/**
		volume(self) -> int
	**/
	public function volume():Int;
	/**
		volumeChanged(self, int) [signal]
	**/
	public var volumeChanged : Dynamic;
}