/* This file is generated, do not edit! */
package pySide2.qtMultimedia;
@:pythonImport("PySide2.QtMultimedia", "QCamera") extern class QCamera {
	static public var ActiveState : Dynamic;
	static public var ActiveStatus : Dynamic;
	static public var BackFace : Dynamic;
	static public var CameraError : Dynamic;
	public function CaptureMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function CaptureModes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var CaptureStillImage : Dynamic;
	static public var CaptureVideo : Dynamic;
	static public var CaptureViewfinder : Dynamic;
	public function Error(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function FrameRateRange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var FrontFace : Dynamic;
	static public var InvalidRequestError : Dynamic;
	static public var LoadedState : Dynamic;
	static public var LoadedStatus : Dynamic;
	static public var LoadingStatus : Dynamic;
	static public var LockAcquired : Dynamic;
	public function LockChangeReason(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var LockExposure : Dynamic;
	static public var LockFailed : Dynamic;
	static public var LockFocus : Dynamic;
	static public var LockLost : Dynamic;
	public function LockStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var LockTemporaryLost : Dynamic;
	public function LockType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function LockTypes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var LockWhiteBalance : Dynamic;
	static public var Locked : Dynamic;
	static public var NoError : Dynamic;
	static public var NoLock : Dynamic;
	static public var NotSupportedFeatureError : Dynamic;
	public function Position(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Searching : Dynamic;
	static public var ServiceMissingError : Dynamic;
	static public var StandbyStatus : Dynamic;
	static public var StartingStatus : Dynamic;
	public function State(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Status(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var StoppingStatus : Dynamic;
	static public var UnavailableStatus : Dynamic;
	static public var UnloadedState : Dynamic;
	static public var UnloadedStatus : Dynamic;
	static public var UnloadingStatus : Dynamic;
	static public var Unlocked : Dynamic;
	static public var UnspecifiedPosition : Dynamic;
	static public var UserRequest : Dynamic;
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
	public function availability(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function availabilityChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function availableDevices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function availableMetaData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bind(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function captureMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function captureModeChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function deviceDescription(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function error(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function errorString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isAvailable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isCaptureModeSupported(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isMetaDataAvailable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSignalConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function load(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lockFailed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lockStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lockStatusChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function locked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaDataAvailableChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaDataChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function notifyInterval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function notifyIntervalChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function registerUserData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removePropertyWatch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function requestedLocks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function searchAndLock(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCaptureMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setNotifyInterval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setViewfinder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setViewfinderSettings(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function start(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function state(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stateChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	public function status(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function statusChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportedLocks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportedViewfinderFrameRateRanges(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportedViewfinderPixelFormats(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportedViewfinderResolutions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportedViewfinderSettings(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unbind(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unload(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unlock(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function viewfinderSettings(args:haxe.extern.Rest<Dynamic>):Dynamic;
}