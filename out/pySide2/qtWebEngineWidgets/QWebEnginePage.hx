/* This file is generated, do not edit! */
package pySide2.qtWebEngineWidgets;
@:pythonImport("PySide2.QtWebEngineWidgets", "QWebEnginePage") extern class QWebEnginePage {
	static public var Back : Dynamic;
	static public var Copy : Dynamic;
	static public var CopyImageToClipboard : Dynamic;
	static public var CopyImageUrlToClipboard : Dynamic;
	static public var CopyLinkToClipboard : Dynamic;
	static public var CopyMediaUrlToClipboard : Dynamic;
	static public var Cut : Dynamic;
	static public var DownloadImageToDisk : Dynamic;
	static public var DownloadLinkToDisk : Dynamic;
	static public var DownloadMediaToDisk : Dynamic;
	static public var ErrorMessageLevel : Dynamic;
	static public var ExitFullScreen : Dynamic;
	public function Feature(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var FileSelectOpen : Dynamic;
	static public var FileSelectOpenMultiple : Dynamic;
	public function FileSelectionMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var FindBackward : Dynamic;
	static public var FindCaseSensitively : Dynamic;
	public function FindFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function FindFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Forward : Dynamic;
	static public var Geolocation : Dynamic;
	static public var InfoMessageLevel : Dynamic;
	static public var InspectElement : Dynamic;
	public function JavaScriptConsoleMessageLevel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var MediaAudioCapture : Dynamic;
	static public var MediaAudioVideoCapture : Dynamic;
	static public var MediaVideoCapture : Dynamic;
	static public var MouseLock : Dynamic;
	public function NavigationType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NavigationTypeBackForward : Dynamic;
	static public var NavigationTypeFormSubmitted : Dynamic;
	static public var NavigationTypeLinkClicked : Dynamic;
	static public var NavigationTypeOther : Dynamic;
	static public var NavigationTypeReload : Dynamic;
	static public var NavigationTypeTyped : Dynamic;
	static public var NoWebAction : Dynamic;
	static public var OpenLinkInNewTab : Dynamic;
	static public var OpenLinkInNewWindow : Dynamic;
	static public var OpenLinkInThisWindow : Dynamic;
	static public var Paste : Dynamic;
	static public var PasteAndMatchStyle : Dynamic;
	static public var PermissionDeniedByUser : Dynamic;
	static public var PermissionGrantedByUser : Dynamic;
	public function PermissionPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PermissionUnknown : Dynamic;
	static public var Redo : Dynamic;
	static public var Reload : Dynamic;
	static public var ReloadAndBypassCache : Dynamic;
	static public var RequestClose : Dynamic;
	static public var SelectAll : Dynamic;
	static public var Stop : Dynamic;
	static public var ToggleMediaControls : Dynamic;
	static public var ToggleMediaLoop : Dynamic;
	static public var ToggleMediaMute : Dynamic;
	static public var ToggleMediaPlayPause : Dynamic;
	static public var Undo : Dynamic;
	static public var WarningMessageLevel : Dynamic;
	public function WebAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var WebActionCount : Dynamic;
	static public var WebBrowserTab : Dynamic;
	static public var WebBrowserWindow : Dynamic;
	static public var WebDialog : Dynamic;
	public function WebWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function acceptNavigationRequest(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function action(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function authenticationRequired(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function backgroundColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function certificateError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function chooseFiles(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function createStandardContextMenu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function createWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function featurePermissionRequestCanceled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function featurePermissionRequested(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fullScreenRequested(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function geometryChangeRequested(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasSelection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function iconUrl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function iconUrlChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSignalConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function javaScriptAlert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function javaScriptConfirm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function javaScriptConsoleMessage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function javaScriptPrompt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function linkHovered(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function load(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function loadFinished(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function loadProgress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function loadStarted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function profile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function proxyAuthenticationRequired(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function registerUserData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function renderProcessTerminated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function requestedUrl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function runJavaScript(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selectedText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selectionChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBackgroundColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setContent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFeaturePermission(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHtml(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUrl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setView(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWebChannel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setZoomFactor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function title(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function titleChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function triggerAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function url(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function urlChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function view(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function webChannel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowCloseRequested(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function zoomFactor(args:haxe.extern.Rest<Dynamic>):Dynamic;
}