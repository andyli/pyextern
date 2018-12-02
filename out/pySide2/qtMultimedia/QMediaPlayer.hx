/* This file is generated, do not edit! */
package pySide2.qtMultimedia;
@:pythonImport("PySide2.QtMultimedia", "QMediaPlayer") extern class QMediaPlayer {
	static public var AccessDeniedError : Dynamic;
	static public var BufferedMedia : Dynamic;
	static public var BufferingMedia : Dynamic;
	static public var EndOfMedia : Dynamic;
	public function Error(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Flag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Flags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var FormatError : Dynamic;
	static public var InvalidMedia : Dynamic;
	static public var LoadedMedia : Dynamic;
	static public var LoadingMedia : Dynamic;
	static public var LowLatency : Dynamic;
	static public var MediaIsPlaylist : Dynamic;
	public function MediaStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NetworkError : Dynamic;
	static public var NoError : Dynamic;
	static public var NoMedia : Dynamic;
	static public var PausedState : Dynamic;
	static public var PlayingState : Dynamic;
	static public var ResourceError : Dynamic;
	static public var ServiceMissingError : Dynamic;
	static public var StalledMedia : Dynamic;
	public function State(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var StoppedState : Dynamic;
	static public var StreamPlayback : Dynamic;
	static public var UnknownMediaStatus : Dynamic;
	static public var VideoSurface : Dynamic;
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
	public function addPropertyWatch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function audioAvailableChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function audioRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function audioRoleChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function availability(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function availabilityChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function availableMetaData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bind(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bufferStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bufferStatusChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentMedia(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentMediaChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentNetworkConfiguration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function duration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function durationChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function error(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function errorString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function hasSupport(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isAudioAvailable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isAvailable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isMetaDataAvailable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isMuted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSeekable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSignalConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isVideoAvailable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function media(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mediaChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mediaStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mediaStatusChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mediaStream(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaDataAvailableChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaDataChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mutedChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function networkConfigurationChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function notifyInterval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function notifyIntervalChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pause(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function play(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function playbackRate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function playbackRateChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function playlist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function position(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function positionChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function registerUserData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removePropertyWatch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function seekableChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAudioRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMedia(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMuted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setNetworkConfigurations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setNotifyInterval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPlaybackRate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPlaylist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setVideoOutput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setVolume(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function state(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stateChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	public function stop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportedAudioRoles(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function supportedMimeTypes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unbind(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function videoAvailableChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function volume(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function volumeChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
}