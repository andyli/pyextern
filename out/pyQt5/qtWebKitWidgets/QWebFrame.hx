/* This file is generated, do not edit! */
package pyQt5.qtWebKitWidgets;
@:pythonImport("PyQt5.QtWebKitWidgets", "QWebFrame") extern class QWebFrame {
	static public var AllLayers : Dynamic;
	static public var AutoOwnership : Dynamic;
	static public var ContentsLayer : Dynamic;
	static public var PanIconLayer : Dynamic;
	static public var QtOwnership : Dynamic;
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
	public function RenderLayer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWebFrame.RenderLayers()
		QWebFrame.RenderLayers(Union[QWebFrame.RenderLayers, QWebFrame.RenderLayer])
		QWebFrame.RenderLayers(QWebFrame.RenderLayers)
	**/
	static public function RenderLayers(args:haxe.extern.Rest<Dynamic>):Void;
	static public var ScriptOwnership : Dynamic;
	static public var ScrollBarLayer : Dynamic;
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
	public function ValueOwnership(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		addToJavaScriptWindowObject(self, str, QObject, ownership: QWebFrame.ValueOwnership = QWebFrame.QtOwnership)
	**/
	public function addToJavaScriptWindowObject(str:String, QObject:Dynamic, ?ownership:Dynamic):Void;
	/**
		baseUrl(self) -> QUrl
	**/
	public function baseUrl():Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		childFrames(self) -> object
	**/
	public function childFrames():Dynamic;
	/**
		children(self) -> object
	**/
	public function children():Dynamic;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		contentsSize(self) -> QSize
	**/
	public function contentsSize():Dynamic;
	/**
		contentsSizeChanged(self, QSize) [signal]
	**/
	public var contentsSizeChanged : Dynamic;
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
		documentElement(self) -> QWebElement
	**/
	public function documentElement():Dynamic;
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
		evaluateJavaScript(self, str) -> Any
	**/
	public function evaluateJavaScript(str:String):Dynamic;
	/**
		event(self, QEvent) -> bool
	**/
	public function event(QEvent:Dynamic):Bool;
	/**
		eventFilter(self, QObject, QEvent) -> bool
	**/
	public function eventFilter(QObject:Dynamic, QEvent:Dynamic):Bool;
	/**
		findAllElements(self, str) -> QWebElementCollection
	**/
	public function findAllElements(str:String):Dynamic;
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
		findFirstElement(self, str) -> QWebElement
	**/
	public function findFirstElement(str:String):Dynamic;
	/**
		frameName(self) -> str
	**/
	public function frameName():String;
	/**
		geometry(self) -> QRect
	**/
	public function geometry():Dynamic;
	/**
		hasFocus(self) -> bool
	**/
	public function hasFocus():Bool;
	/**
		hitTestContent(self, QPoint) -> QWebHitTestResult
	**/
	public function hitTestContent(QPoint:Dynamic):Dynamic;
	/**
		icon(self) -> QIcon
	**/
	public function icon():Dynamic;
	/**
		iconChanged(self) [signal]
	**/
	public var iconChanged : Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		initialLayoutCompleted(self) [signal]
	**/
	public var initialLayoutCompleted : Dynamic;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
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
		javaScriptWindowObjectCleared(self) [signal]
	**/
	public var javaScriptWindowObjectCleared : Dynamic;
	/**
		killTimer(self, int)
	**/
	public function killTimer(int:Int):Void;
	/**
		load(self, QUrl)
		load(self, QNetworkRequest, operation: QNetworkAccessManager.Operation = QNetworkAccessManager.GetOperation, body: Union[QByteArray, bytes, bytearray] = QByteArray())
	**/
	public function load(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		loadFinished(self, bool) [signal]
	**/
	public var loadFinished : Dynamic;
	/**
		loadStarted(self) [signal]
	**/
	public var loadStarted : Dynamic;
	/**
		metaData(self) -> object
	**/
	public function metaData():Dynamic;
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
		page(self) -> QWebPage
	**/
	public function page():Dynamic;
	/**
		pageChanged(self) [signal]
	**/
	public var pageChanged : Dynamic;
	/**
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		parentFrame(self) -> QWebFrame
	**/
	public function parentFrame():Dynamic;
	/**
		pos(self) -> QPoint
	**/
	public function pos():Dynamic;
	/**
		print(self, QPrinter)
	**/
	public function print(QPrinter:Dynamic):Void;
	/**
		print_(self, QPrinter)
	**/
	public function print_(QPrinter:Dynamic):Void;
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
		render(self, QPainter, clip: QRegion = QRegion())
		render(self, QPainter, QWebFrame.RenderLayers, clip: QRegion = QRegion())
	**/
	public function render(QPainter:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		requestedUrl(self) -> QUrl
	**/
	public function requestedUrl():Dynamic;
	/**
		scroll(self, int, int)
	**/
	public function scroll(int:Int, int:Int):Void;
	/**
		scrollBarGeometry(self, Qt.Orientation) -> QRect
	**/
	public function scrollBarGeometry(Qt:Dynamic):Dynamic;
	/**
		scrollBarMaximum(self, Qt.Orientation) -> int
	**/
	public function scrollBarMaximum(Qt:Dynamic):Int;
	/**
		scrollBarMinimum(self, Qt.Orientation) -> int
	**/
	public function scrollBarMinimum(Qt:Dynamic):Int;
	/**
		scrollBarPolicy(self, Qt.Orientation) -> Qt.ScrollBarPolicy
	**/
	public function scrollBarPolicy(Qt:Dynamic):Dynamic;
	/**
		scrollBarValue(self, Qt.Orientation) -> int
	**/
	public function scrollBarValue(Qt:Dynamic):Int;
	/**
		scrollPosition(self) -> QPoint
	**/
	public function scrollPosition():Dynamic;
	/**
		scrollToAnchor(self, str)
	**/
	public function scrollToAnchor(str:String):Void;
	/**
		securityOrigin(self) -> QWebSecurityOrigin
	**/
	public function securityOrigin():Dynamic;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setContent(self, Union[QByteArray, bytes, bytearray], mimeType: str = '', baseUrl: QUrl = QUrl())
	**/
	public function setContent(Union:Dynamic, ?mimeType:Dynamic, ?baseUrl:Dynamic):Void;
	/**
		setFocus(self)
	**/
	public function setFocus():Void;
	/**
		setHtml(self, str, baseUrl: QUrl = QUrl())
	**/
	public function setHtml(str:String, ?baseUrl:Dynamic):Void;
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
		setScrollBarPolicy(self, Qt.Orientation, Qt.ScrollBarPolicy)
	**/
	public function setScrollBarPolicy(Qt:Dynamic, Qt:Dynamic):Void;
	/**
		setScrollBarValue(self, Qt.Orientation, int)
	**/
	public function setScrollBarValue(Qt:Dynamic, int:Int):Void;
	/**
		setScrollPosition(self, QPoint)
	**/
	public function setScrollPosition(QPoint:Dynamic):Void;
	/**
		setUrl(self, QUrl)
	**/
	public function setUrl(QUrl:Dynamic):Void;
	/**
		setZoomFactor(self, float)
	**/
	public function setZoomFactor(float:Float):Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	static public var staticMetaObject : Dynamic;
	/**
		thread(self) -> QThread
	**/
	public function thread():Dynamic;
	/**
		timerEvent(self, QTimerEvent)
	**/
	public function timerEvent(QTimerEvent:Dynamic):Void;
	/**
		title(self) -> str
	**/
	public function title():String;
	/**
		titleChanged(self, str) [signal]
	**/
	public var titleChanged : Dynamic;
	/**
		toHtml(self) -> str
	**/
	public function toHtml():String;
	/**
		toPlainText(self) -> str
	**/
	public function toPlainText():String;
	/**
		tr(self, str, disambiguation: str = None, n: int = -1) -> str
	**/
	public function tr(str:String, ?disambiguation:Dynamic, ?n:Dynamic):String;
	/**
		url(self) -> QUrl
	**/
	public function url():Dynamic;
	/**
		urlChanged(self, QUrl) [signal]
	**/
	public var urlChanged : Dynamic;
	/**
		zoomFactor(self) -> float
	**/
	public function zoomFactor():Float;
}