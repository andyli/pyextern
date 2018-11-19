/* This file is generated, do not edit! */
package pyQt5.qtQuick;
@:pythonImport("PyQt5.QtQuick", "QQuickFramebufferObject") extern class QQuickFramebufferObject {
	static public var Bottom : Dynamic;
	static public var BottomLeft : Dynamic;
	static public var BottomRight : Dynamic;
	static public var Center : Dynamic;
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
		QQuickItem.Flags()
		QQuickItem.Flags(Union[QQuickItem.Flags, QQuickItem.Flag])
		QQuickItem.Flags(QQuickItem.Flags)
	**/
	static public function Flags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var ItemAcceptsDrops : Dynamic;
	static public var ItemAcceptsInputMethod : Dynamic;
	static public var ItemActiveFocusHasChanged : Dynamic;
	static public var ItemAntialiasingHasChanged : Dynamic;
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
	public function ItemChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QQuickItem.ItemChangeData(QQuickItem)
		QQuickItem.ItemChangeData(QQuickWindow)
		QQuickItem.ItemChangeData(float)
		QQuickItem.ItemChangeData(bool)
		QQuickItem.ItemChangeData(QQuickItem.ItemChangeData)
	**/
	static public function ItemChangeData(args:haxe.extern.Rest<Dynamic>):Void;
	static public var ItemChildAddedChange : Dynamic;
	static public var ItemChildRemovedChange : Dynamic;
	static public var ItemClipsChildrenToShape : Dynamic;
	static public var ItemDevicePixelRatioHasChanged : Dynamic;
	static public var ItemHasContents : Dynamic;
	static public var ItemIsFocusScope : Dynamic;
	static public var ItemOpacityHasChanged : Dynamic;
	static public var ItemParentHasChanged : Dynamic;
	static public var ItemRotationHasChanged : Dynamic;
	static public var ItemSceneChange : Dynamic;
	static public var ItemVisibleHasChanged : Dynamic;
	static public var Left : Dynamic;
	/**
		QQuickFramebufferObject.Renderer()
		QQuickFramebufferObject.Renderer(QQuickFramebufferObject.Renderer)
	**/
	static public function Renderer(args:haxe.extern.Rest<Dynamic>):Void;
	static public var Right : Dynamic;
	static public var Top : Dynamic;
	static public var TopLeft : Dynamic;
	static public var TopRight : Dynamic;
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
	public function TransformOrigin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function UpdatePaintNodeData(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		acceptHoverEvents(self) -> bool
	**/
	public function acceptHoverEvents():Bool;
	/**
		acceptedMouseButtons(self) -> Qt.MouseButtons
	**/
	public function acceptedMouseButtons():Dynamic;
	/**
		activeFocusOnTab(self) -> bool
	**/
	public function activeFocusOnTab():Bool;
	/**
		antialiasing(self) -> bool
	**/
	public function antialiasing():Bool;
	/**
		baselineOffset(self) -> float
	**/
	public function baselineOffset():Float;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		childAt(self, float, float) -> QQuickItem
	**/
	public function childAt(float:Float, float:Float):Dynamic;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		childItems(self) -> object
	**/
	public function childItems():Dynamic;
	/**
		childMouseEventFilter(self, QQuickItem, QEvent) -> bool
	**/
	public function childMouseEventFilter(QQuickItem:Dynamic, QEvent:Dynamic):Bool;
	/**
		children(self) -> object
	**/
	public function children():Dynamic;
	/**
		childrenRect(self) -> QRectF
	**/
	public function childrenRect():Dynamic;
	/**
		classBegin(self)
	**/
	public function classBegin():Void;
	/**
		clip(self) -> bool
	**/
	public function clip():Bool;
	/**
		componentComplete(self)
	**/
	public function componentComplete():Void;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		contains(self, Union[QPointF, QPoint]) -> bool
	**/
	public function contains(Union:Dynamic):Bool;
	/**
		createRenderer(self) -> QQuickFramebufferObject.Renderer
	**/
	public function createRenderer():Dynamic;
	/**
		cursor(self) -> QCursor
	**/
	public function cursor():Dynamic;
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
		dragEnterEvent(self, QDragEnterEvent)
	**/
	public function dragEnterEvent(QDragEnterEvent:Dynamic):Void;
	/**
		dragLeaveEvent(self, QDragLeaveEvent)
	**/
	public function dragLeaveEvent(QDragLeaveEvent:Dynamic):Void;
	/**
		dragMoveEvent(self, QDragMoveEvent)
	**/
	public function dragMoveEvent(QDragMoveEvent:Dynamic):Void;
	/**
		dropEvent(self, QDropEvent)
	**/
	public function dropEvent(QDropEvent:Dynamic):Void;
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
		filtersChildMouseEvents(self) -> bool
	**/
	public function filtersChildMouseEvents():Bool;
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
		flags(self) -> QQuickItem.Flags
	**/
	public function flags():Dynamic;
	/**
		focusInEvent(self, QFocusEvent)
	**/
	public function focusInEvent(QFocusEvent:Dynamic):Void;
	/**
		focusOutEvent(self, QFocusEvent)
	**/
	public function focusOutEvent(QFocusEvent:Dynamic):Void;
	/**
		forceActiveFocus(self)
		forceActiveFocus(self, Qt.FocusReason)
	**/
	public function forceActiveFocus(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		geometryChanged(self, QRectF, QRectF)
	**/
	public function geometryChanged(QRectF:Dynamic, QRectF:Dynamic):Void;
	/**
		grabMouse(self)
	**/
	public function grabMouse():Void;
	/**
		grabToImage(self, targetSize: QSize = QSize()) -> QQuickItemGrabResult
	**/
	public function grabToImage(?targetSize:Dynamic):Dynamic;
	/**
		grabTouchPoints(self, Iterable[int])
	**/
	public function grabTouchPoints(Iterable:Dynamic):Void;
	/**
		hasActiveFocus(self) -> bool
	**/
	public function hasActiveFocus():Bool;
	/**
		hasFocus(self) -> bool
	**/
	public function hasFocus():Bool;
	/**
		height(self) -> float
	**/
	public function height():Float;
	/**
		heightValid(self) -> bool
	**/
	public function heightValid():Bool;
	/**
		hoverEnterEvent(self, QHoverEvent)
	**/
	public function hoverEnterEvent(QHoverEvent:Dynamic):Void;
	/**
		hoverLeaveEvent(self, QHoverEvent)
	**/
	public function hoverLeaveEvent(QHoverEvent:Dynamic):Void;
	/**
		hoverMoveEvent(self, QHoverEvent)
	**/
	public function hoverMoveEvent(QHoverEvent:Dynamic):Void;
	/**
		implicitHeight(self) -> float
	**/
	public function implicitHeight():Float;
	/**
		implicitWidth(self) -> float
	**/
	public function implicitWidth():Float;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		inputMethodEvent(self, QInputMethodEvent)
	**/
	public function inputMethodEvent(QInputMethodEvent:Dynamic):Void;
	/**
		inputMethodQuery(self, Qt.InputMethodQuery) -> Any
	**/
	public function inputMethodQuery(Qt:Dynamic):Dynamic;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isComponentComplete(self) -> bool
	**/
	public function isComponentComplete():Bool;
	/**
		isEnabled(self) -> bool
	**/
	public function isEnabled():Bool;
	/**
		isFocusScope(self) -> bool
	**/
	public function isFocusScope():Bool;
	/**
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	public function isSignalConnected(QMetaMethod:Dynamic):Bool;
	/**
		isTextureProvider(self) -> bool
	**/
	public function isTextureProvider():Bool;
	/**
		isVisible(self) -> bool
	**/
	public function isVisible():Bool;
	/**
		isWidgetType(self) -> bool
	**/
	public function isWidgetType():Bool;
	/**
		isWindowType(self) -> bool
	**/
	public function isWindowType():Bool;
	/**
		itemChange(self, QQuickItem.ItemChange, QQuickItem.ItemChangeData)
	**/
	public function itemChange(QQuickItem:Dynamic, QQuickItem:Dynamic):Void;
	/**
		keepMouseGrab(self) -> bool
	**/
	public function keepMouseGrab():Bool;
	/**
		keepTouchGrab(self) -> bool
	**/
	public function keepTouchGrab():Bool;
	/**
		keyPressEvent(self, QKeyEvent)
	**/
	public function keyPressEvent(QKeyEvent:Dynamic):Void;
	/**
		keyReleaseEvent(self, QKeyEvent)
	**/
	public function keyReleaseEvent(QKeyEvent:Dynamic):Void;
	/**
		killTimer(self, int)
	**/
	public function killTimer(int:Int):Void;
	/**
		mapFromItem(self, QQuickItem, Union[QPointF, QPoint]) -> QPointF
	**/
	public function mapFromItem(QQuickItem:Dynamic, Union:Dynamic):Dynamic;
	/**
		mapFromScene(self, Union[QPointF, QPoint]) -> QPointF
	**/
	public function mapFromScene(Union:Dynamic):Dynamic;
	/**
		mapRectFromItem(self, QQuickItem, QRectF) -> QRectF
	**/
	public function mapRectFromItem(QQuickItem:Dynamic, QRectF:Dynamic):Dynamic;
	/**
		mapRectFromScene(self, QRectF) -> QRectF
	**/
	public function mapRectFromScene(QRectF:Dynamic):Dynamic;
	/**
		mapRectToItem(self, QQuickItem, QRectF) -> QRectF
	**/
	public function mapRectToItem(QQuickItem:Dynamic, QRectF:Dynamic):Dynamic;
	/**
		mapRectToScene(self, QRectF) -> QRectF
	**/
	public function mapRectToScene(QRectF:Dynamic):Dynamic;
	/**
		mapToItem(self, QQuickItem, Union[QPointF, QPoint]) -> QPointF
	**/
	public function mapToItem(QQuickItem:Dynamic, Union:Dynamic):Dynamic;
	/**
		mapToScene(self, Union[QPointF, QPoint]) -> QPointF
	**/
	public function mapToScene(Union:Dynamic):Dynamic;
	/**
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
	/**
		mirrorVertically(self) -> bool
	**/
	public function mirrorVertically():Bool;
	/**
		mirrorVerticallyChanged(self, bool) [signal]
	**/
	public var mirrorVerticallyChanged : Dynamic;
	/**
		mouseDoubleClickEvent(self, QMouseEvent)
	**/
	public function mouseDoubleClickEvent(QMouseEvent:Dynamic):Void;
	/**
		mouseMoveEvent(self, QMouseEvent)
	**/
	public function mouseMoveEvent(QMouseEvent:Dynamic):Void;
	/**
		mousePressEvent(self, QMouseEvent)
	**/
	public function mousePressEvent(QMouseEvent:Dynamic):Void;
	/**
		mouseReleaseEvent(self, QMouseEvent)
	**/
	public function mouseReleaseEvent(QMouseEvent:Dynamic):Void;
	/**
		mouseUngrabEvent(self)
	**/
	public function mouseUngrabEvent():Void;
	/**
		moveToThread(self, QThread)
	**/
	public function moveToThread(QThread:Dynamic):Void;
	/**
		nextItemInFocusChain(self, forward: bool = True) -> QQuickItem
	**/
	public function nextItemInFocusChain(?forward:Dynamic):Dynamic;
	/**
		objectName(self) -> str
	**/
	public function objectName():String;
	/**
		objectNameChanged(self, str) [signal]
	**/
	public var objectNameChanged : Dynamic;
	/**
		opacity(self) -> float
	**/
	public function opacity():Float;
	/**
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		parentItem(self) -> QQuickItem
	**/
	public function parentItem():Dynamic;
	/**
		polish(self)
	**/
	public function polish():Void;
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
		releaseResources(self)
	**/
	public function releaseResources():Void;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		resetAntialiasing(self)
	**/
	public function resetAntialiasing():Void;
	/**
		resetHeight(self)
	**/
	public function resetHeight():Void;
	/**
		resetWidth(self)
	**/
	public function resetWidth():Void;
	/**
		rotation(self) -> float
	**/
	public function rotation():Float;
	/**
		scale(self) -> float
	**/
	public function scale():Float;
	/**
		scopedFocusItem(self) -> QQuickItem
	**/
	public function scopedFocusItem():Dynamic;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setAcceptHoverEvents(self, bool)
	**/
	public function setAcceptHoverEvents(bool:Bool):Void;
	/**
		setAcceptedMouseButtons(self, Union[Qt.MouseButtons, Qt.MouseButton])
	**/
	public function setAcceptedMouseButtons(Union:Dynamic):Void;
	/**
		setActiveFocusOnTab(self, bool)
	**/
	public function setActiveFocusOnTab(bool:Bool):Void;
	/**
		setAntialiasing(self, bool)
	**/
	public function setAntialiasing(bool:Bool):Void;
	/**
		setBaselineOffset(self, float)
	**/
	public function setBaselineOffset(float:Float):Void;
	/**
		setClip(self, bool)
	**/
	public function setClip(bool:Bool):Void;
	/**
		setCursor(self, Union[QCursor, Qt.CursorShape])
	**/
	public function setCursor(Union:Dynamic):Void;
	/**
		setEnabled(self, bool)
	**/
	public function setEnabled(bool:Bool):Void;
	/**
		setFiltersChildMouseEvents(self, bool)
	**/
	public function setFiltersChildMouseEvents(bool:Bool):Void;
	/**
		setFlag(self, QQuickItem.Flag, enabled: bool = True)
	**/
	public function setFlag(QQuickItem:Dynamic, ?enabled:Dynamic):Void;
	/**
		setFlags(self, Union[QQuickItem.Flags, QQuickItem.Flag])
	**/
	public function setFlags(Union:Dynamic):Void;
	/**
		setFocus(self, bool)
		setFocus(self, bool, Qt.FocusReason)
	**/
	public function setFocus(bool:Bool, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setHeight(self, float)
	**/
	public function setHeight(float:Float):Void;
	/**
		setImplicitHeight(self, float)
	**/
	public function setImplicitHeight(float:Float):Void;
	/**
		setImplicitWidth(self, float)
	**/
	public function setImplicitWidth(float:Float):Void;
	/**
		setKeepMouseGrab(self, bool)
	**/
	public function setKeepMouseGrab(bool:Bool):Void;
	/**
		setKeepTouchGrab(self, bool)
	**/
	public function setKeepTouchGrab(bool:Bool):Void;
	/**
		setMirrorVertically(self, bool)
	**/
	public function setMirrorVertically(bool:Bool):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setOpacity(self, float)
	**/
	public function setOpacity(float:Float):Void;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setParentItem(self, QQuickItem)
	**/
	public function setParentItem(QQuickItem:Dynamic):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setRotation(self, float)
	**/
	public function setRotation(float:Float):Void;
	/**
		setScale(self, float)
	**/
	public function setScale(float:Float):Void;
	/**
		setSmooth(self, bool)
	**/
	public function setSmooth(bool:Bool):Void;
	/**
		setState(self, str)
	**/
	public function setState(str:String):Void;
	/**
		setTextureFollowsItemSize(self, bool)
	**/
	public function setTextureFollowsItemSize(bool:Bool):Void;
	/**
		setTransformOrigin(self, QQuickItem.TransformOrigin)
	**/
	public function setTransformOrigin(QQuickItem:Dynamic):Void;
	/**
		setVisible(self, bool)
	**/
	public function setVisible(bool:Bool):Void;
	/**
		setWidth(self, float)
	**/
	public function setWidth(float:Float):Void;
	/**
		setX(self, float)
	**/
	public function setX(float:Float):Void;
	/**
		setY(self, float)
	**/
	public function setY(float:Float):Void;
	/**
		setZ(self, float)
	**/
	public function setZ(float:Float):Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		smooth(self) -> bool
	**/
	public function smooth():Bool;
	/**
		stackAfter(self, QQuickItem)
	**/
	public function stackAfter(QQuickItem:Dynamic):Void;
	/**
		stackBefore(self, QQuickItem)
	**/
	public function stackBefore(QQuickItem:Dynamic):Void;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	/**
		state(self) -> str
	**/
	public function state():String;
	static public var staticMetaObject : Dynamic;
	/**
		textureFollowsItemSize(self) -> bool
	**/
	public function textureFollowsItemSize():Bool;
	/**
		textureFollowsItemSizeChanged(self, bool) [signal]
	**/
	public var textureFollowsItemSizeChanged : Dynamic;
	/**
		textureProvider(self) -> QSGTextureProvider
	**/
	public function textureProvider():Dynamic;
	/**
		thread(self) -> QThread
	**/
	public function thread():Dynamic;
	/**
		timerEvent(self, QTimerEvent)
	**/
	public function timerEvent(QTimerEvent:Dynamic):Void;
	/**
		touchEvent(self, QTouchEvent)
	**/
	public function touchEvent(QTouchEvent:Dynamic):Void;
	/**
		touchUngrabEvent(self)
	**/
	public function touchUngrabEvent():Void;
	/**
		tr(self, str, disambiguation: str = None, n: int = -1) -> str
	**/
	public function tr(str:String, ?disambiguation:Dynamic, ?n:Dynamic):String;
	/**
		transformOrigin(self) -> QQuickItem.TransformOrigin
	**/
	public function transformOrigin():Dynamic;
	/**
		ungrabMouse(self)
	**/
	public function ungrabMouse():Void;
	/**
		ungrabTouchPoints(self)
	**/
	public function ungrabTouchPoints():Void;
	/**
		unsetCursor(self)
	**/
	public function unsetCursor():Void;
	/**
		update(self)
	**/
	public function update():Void;
	/**
		updateInputMethod(self, queries: Union[Qt.InputMethodQueries, Qt.InputMethodQuery] = Qt.ImQueryInput)
	**/
	public function updateInputMethod(?queries:Dynamic):Void;
	/**
		updatePaintNode(self, QSGNode, QQuickItem.UpdatePaintNodeData) -> QSGNode
	**/
	public function updatePaintNode(QSGNode:Dynamic, QQuickItem:Dynamic):Dynamic;
	/**
		updatePolish(self)
	**/
	public function updatePolish():Void;
	/**
		wheelEvent(self, QWheelEvent)
	**/
	public function wheelEvent(QWheelEvent:Dynamic):Void;
	/**
		width(self) -> float
	**/
	public function width():Float;
	/**
		widthValid(self) -> bool
	**/
	public function widthValid():Bool;
	/**
		window(self) -> QQuickWindow
	**/
	public function window():Dynamic;
	/**
		windowChanged(self, QQuickWindow) [signal]
	**/
	public var windowChanged : Dynamic;
	/**
		x(self) -> float
	**/
	public function x():Float;
	/**
		y(self) -> float
	**/
	public function y():Float;
	/**
		z(self) -> float
	**/
	public function z():Float;
}