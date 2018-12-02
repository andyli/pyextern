/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QGuiApplication") extern class QGuiApplication {
	static public var ApplicationFlags : Dynamic;
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
	public function aboutToQuit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function addLibraryPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function allWindows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function applicationDirPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function applicationDisplayName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function applicationFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function applicationName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function applicationNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function applicationPid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function applicationState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function applicationStateChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function applicationVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function applicationVersionChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function arguments(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function changeOverrideCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function clipboard(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function closingDown(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function commitDataRequest(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function desktopSettingsAware(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function devicePixelRatio(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function eventDispatcher(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function exec_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function exit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function flush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function focusObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusObjectChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function focusWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusWindowChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function font(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fontDatabaseChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function hasPendingEvents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function installTranslator(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function instance(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isFallbackSessionManagementEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isLeftToRight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isQuitLockEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isRightToLeft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSavingSession(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSessionRestored(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isSetuidAllowed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSignalConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function keyboardModifiers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lastWindowClosed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function layoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function layoutDirectionChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function libraryPaths(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function modalWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function mouseButtons(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function notify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function organizationDomain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function organizationDomainChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function organizationName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function organizationNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function overrideCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function palette(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function paletteChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function platformName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function postEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function primaryScreen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function primaryScreenChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function processEvents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function queryKeyboardModifiers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function quit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function quitOnLastWindowClosed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function registerUserData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function removeLibraryPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function removePostedEvents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function removeTranslator(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function restoreOverrideCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function saveStateRequest(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function screenAdded(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function screenRemoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function screens(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function sendEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function sendPostedEvents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sessionId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sessionKey(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setApplicationDisplayName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setApplicationName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setApplicationVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setDesktopSettingsAware(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setEventDispatcher(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setFallbackSessionManagementEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setLayoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setLibraryPaths(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setOrganizationDomain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setOrganizationName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setOverrideCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setPalette(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setQuitLockEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setQuitOnLastWindowClosed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setSetuidAllowed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setWindowIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function startingUp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	static public function styleHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function sync(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function testAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function topLevelAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function topLevelWindows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function translate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function windowIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
}