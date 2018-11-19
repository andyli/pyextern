/* This file is generated, do not edit! */
package pyQt5.qtWidgets;
@:pythonImport("PyQt5.QtWidgets", "QGraphicsScene") extern class QGraphicsScene {
	static public var AllLayers : Dynamic;
	static public var BackgroundLayer : Dynamic;
	static public var BspTreeIndex : Dynamic;
	static public var ForegroundLayer : Dynamic;
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
	public function ItemIndexMethod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ItemLayer : Dynamic;
	static public var NoIndex : Dynamic;
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
	public function SceneLayer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGraphicsScene.SceneLayers()
		QGraphicsScene.SceneLayers(Union[QGraphicsScene.SceneLayers, QGraphicsScene.SceneLayer])
		QGraphicsScene.SceneLayers(QGraphicsScene.SceneLayers)
	**/
	static public function SceneLayers(args:haxe.extern.Rest<Dynamic>):Void;
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
		activePanel(self) -> QGraphicsItem
	**/
	public function activePanel():Dynamic;
	/**
		activeWindow(self) -> QGraphicsWidget
	**/
	public function activeWindow():Dynamic;
	/**
		addEllipse(self, QRectF, pen: Union[QPen, QColor, Qt.GlobalColor, QGradient] = QPen(), brush: Union[QBrush, QColor, Qt.GlobalColor, QGradient] = QBrush()) -> QGraphicsEllipseItem
		addEllipse(self, float, float, float, float, pen: Union[QPen, QColor, Qt.GlobalColor, QGradient] = QPen(), brush: Union[QBrush, QColor, Qt.GlobalColor, QGradient] = QBrush()) -> QGraphicsEllipseItem
	**/
	public function addEllipse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addItem(self, QGraphicsItem)
	**/
	public function addItem(QGraphicsItem:Dynamic):Void;
	/**
		addLine(self, QLineF, pen: Union[QPen, QColor, Qt.GlobalColor, QGradient] = QPen()) -> QGraphicsLineItem
		addLine(self, float, float, float, float, pen: Union[QPen, QColor, Qt.GlobalColor, QGradient] = QPen()) -> QGraphicsLineItem
	**/
	public function addLine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addPath(self, QPainterPath, pen: Union[QPen, QColor, Qt.GlobalColor, QGradient] = QPen(), brush: Union[QBrush, QColor, Qt.GlobalColor, QGradient] = QBrush()) -> QGraphicsPathItem
	**/
	public function addPath(QPainterPath:Dynamic, ?pen:Dynamic, ?brush:Dynamic):Dynamic;
	/**
		addPixmap(self, QPixmap) -> QGraphicsPixmapItem
	**/
	public function addPixmap(QPixmap:Dynamic):Dynamic;
	/**
		addPolygon(self, QPolygonF, pen: Union[QPen, QColor, Qt.GlobalColor, QGradient] = QPen(), brush: Union[QBrush, QColor, Qt.GlobalColor, QGradient] = QBrush()) -> QGraphicsPolygonItem
	**/
	public function addPolygon(QPolygonF:Dynamic, ?pen:Dynamic, ?brush:Dynamic):Dynamic;
	/**
		addRect(self, QRectF, pen: Union[QPen, QColor, Qt.GlobalColor, QGradient] = QPen(), brush: Union[QBrush, QColor, Qt.GlobalColor, QGradient] = QBrush()) -> QGraphicsRectItem
		addRect(self, float, float, float, float, pen: Union[QPen, QColor, Qt.GlobalColor, QGradient] = QPen(), brush: Union[QBrush, QColor, Qt.GlobalColor, QGradient] = QBrush()) -> QGraphicsRectItem
	**/
	public function addRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addSimpleText(self, str, font: QFont = QFont()) -> QGraphicsSimpleTextItem
	**/
	public function addSimpleText(str:String, ?font:Dynamic):Dynamic;
	/**
		addText(self, str, font: QFont = QFont()) -> QGraphicsTextItem
	**/
	public function addText(str:String, ?font:Dynamic):Dynamic;
	/**
		addWidget(self, QWidget, flags: Union[Qt.WindowFlags, Qt.WindowType] = Qt.WindowFlags()) -> QGraphicsProxyWidget
	**/
	public function addWidget(QWidget:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		advance(self)
	**/
	public function advance():Void;
	/**
		backgroundBrush(self) -> QBrush
	**/
	public function backgroundBrush():Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		bspTreeDepth(self) -> int
	**/
	public function bspTreeDepth():Int;
	/**
		changed(self, object) [signal]
	**/
	public var changed : Dynamic;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> object
	**/
	public function children():Dynamic;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		clearFocus(self)
	**/
	public function clearFocus():Void;
	/**
		clearSelection(self)
	**/
	public function clearSelection():Void;
	/**
		collidingItems(self, QGraphicsItem, mode: Qt.ItemSelectionMode = Qt.IntersectsItemShape) -> List[QGraphicsItem]
	**/
	public function collidingItems(QGraphicsItem:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		contextMenuEvent(self, QGraphicsSceneContextMenuEvent)
	**/
	public function contextMenuEvent(QGraphicsSceneContextMenuEvent:Dynamic):Void;
	/**
		createItemGroup(self, Iterable[QGraphicsItem]) -> QGraphicsItemGroup
	**/
	public function createItemGroup(Iterable:Dynamic):Dynamic;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		deleteLater(self)
	**/
	public function deleteLater():Void;
	/**
		destroyItemGroup(self, QGraphicsItemGroup)
	**/
	public function destroyItemGroup(QGraphicsItemGroup:Dynamic):Void;
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
		dragEnterEvent(self, QGraphicsSceneDragDropEvent)
	**/
	public function dragEnterEvent(QGraphicsSceneDragDropEvent:Dynamic):Void;
	/**
		dragLeaveEvent(self, QGraphicsSceneDragDropEvent)
	**/
	public function dragLeaveEvent(QGraphicsSceneDragDropEvent:Dynamic):Void;
	/**
		dragMoveEvent(self, QGraphicsSceneDragDropEvent)
	**/
	public function dragMoveEvent(QGraphicsSceneDragDropEvent:Dynamic):Void;
	/**
		drawBackground(self, QPainter, QRectF)
	**/
	public function drawBackground(QPainter:Dynamic, QRectF:Dynamic):Void;
	/**
		drawForeground(self, QPainter, QRectF)
	**/
	public function drawForeground(QPainter:Dynamic, QRectF:Dynamic):Void;
	/**
		dropEvent(self, QGraphicsSceneDragDropEvent)
	**/
	public function dropEvent(QGraphicsSceneDragDropEvent:Dynamic):Void;
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
		focusInEvent(self, QFocusEvent)
	**/
	public function focusInEvent(QFocusEvent:Dynamic):Void;
	/**
		focusItem(self) -> QGraphicsItem
	**/
	public function focusItem():Dynamic;
	/**
		focusItemChanged(self, QGraphicsItem, QGraphicsItem, Qt.FocusReason) [signal]
	**/
	public var focusItemChanged : Dynamic;
	/**
		focusNextPrevChild(self, bool) -> bool
	**/
	public function focusNextPrevChild(bool:Bool):Bool;
	/**
		focusOutEvent(self, QFocusEvent)
	**/
	public function focusOutEvent(QFocusEvent:Dynamic):Void;
	/**
		font(self) -> QFont
	**/
	public function font():Dynamic;
	/**
		foregroundBrush(self) -> QBrush
	**/
	public function foregroundBrush():Dynamic;
	/**
		hasFocus(self) -> bool
	**/
	public function hasFocus():Bool;
	/**
		height(self) -> float
	**/
	public function height():Float;
	/**
		helpEvent(self, QGraphicsSceneHelpEvent)
	**/
	public function helpEvent(QGraphicsSceneHelpEvent:Dynamic):Void;
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
		invalidate(self, rect: QRectF = QRectF(), layers: Union[QGraphicsScene.SceneLayers, QGraphicsScene.SceneLayer] = QGraphicsScene.AllLayers)
		invalidate(self, float, float, float, float, layers: Union[QGraphicsScene.SceneLayers, QGraphicsScene.SceneLayer] = QGraphicsScene.AllLayers)
	**/
	public function invalidate(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		isActive(self) -> bool
	**/
	public function isActive():Bool;
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
		itemAt(self, Union[QPointF, QPoint], QTransform) -> QGraphicsItem
		itemAt(self, float, float, QTransform) -> QGraphicsItem
	**/
	public function itemAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		itemIndexMethod(self) -> QGraphicsScene.ItemIndexMethod
	**/
	public function itemIndexMethod():Dynamic;
	/**
		items(self, order: Qt.SortOrder = Qt.DescendingOrder) -> List[QGraphicsItem]
		items(self, Union[QPointF, QPoint], mode: Qt.ItemSelectionMode = Qt.IntersectsItemShape, order: Qt.SortOrder = Qt.DescendingOrder, deviceTransform: QTransform = QTransform()) -> List[QGraphicsItem]
		items(self, QRectF, mode: Qt.ItemSelectionMode = Qt.IntersectsItemShape, order: Qt.SortOrder = Qt.DescendingOrder, deviceTransform: QTransform = QTransform()) -> List[QGraphicsItem]
		items(self, QPolygonF, mode: Qt.ItemSelectionMode = Qt.IntersectsItemShape, order: Qt.SortOrder = Qt.DescendingOrder, deviceTransform: QTransform = QTransform()) -> List[QGraphicsItem]
		items(self, QPainterPath, mode: Qt.ItemSelectionMode = Qt.IntersectsItemShape, order: Qt.SortOrder = Qt.DescendingOrder, deviceTransform: QTransform = QTransform()) -> List[QGraphicsItem]
		items(self, float, float, float, float, Qt.ItemSelectionMode, Qt.SortOrder, deviceTransform: QTransform = QTransform()) -> List[QGraphicsItem]
	**/
	public function items(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		itemsBoundingRect(self) -> QRectF
	**/
	public function itemsBoundingRect():Dynamic;
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
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
	/**
		minimumRenderSize(self) -> float
	**/
	public function minimumRenderSize():Float;
	/**
		mouseDoubleClickEvent(self, QGraphicsSceneMouseEvent)
	**/
	public function mouseDoubleClickEvent(QGraphicsSceneMouseEvent:Dynamic):Void;
	/**
		mouseGrabberItem(self) -> QGraphicsItem
	**/
	public function mouseGrabberItem():Dynamic;
	/**
		mouseMoveEvent(self, QGraphicsSceneMouseEvent)
	**/
	public function mouseMoveEvent(QGraphicsSceneMouseEvent:Dynamic):Void;
	/**
		mousePressEvent(self, QGraphicsSceneMouseEvent)
	**/
	public function mousePressEvent(QGraphicsSceneMouseEvent:Dynamic):Void;
	/**
		mouseReleaseEvent(self, QGraphicsSceneMouseEvent)
	**/
	public function mouseReleaseEvent(QGraphicsSceneMouseEvent:Dynamic):Void;
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
		palette(self) -> QPalette
	**/
	public function palette():Dynamic;
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
		removeItem(self, QGraphicsItem)
	**/
	public function removeItem(QGraphicsItem:Dynamic):Void;
	/**
		render(self, QPainter, target: QRectF = QRectF(), source: QRectF = QRectF(), mode: Qt.AspectRatioMode = Qt.KeepAspectRatio)
	**/
	public function render(QPainter:Dynamic, ?target:Dynamic, ?source:Dynamic, ?mode:Dynamic):Void;
	/**
		sceneRect(self) -> QRectF
	**/
	public function sceneRect():Dynamic;
	/**
		sceneRectChanged(self, QRectF) [signal]
	**/
	public var sceneRectChanged : Dynamic;
	/**
		selectedItems(self) -> List[QGraphicsItem]
	**/
	public function selectedItems():Dynamic;
	/**
		selectionArea(self) -> QPainterPath
	**/
	public function selectionArea():Dynamic;
	/**
		selectionChanged(self) [signal]
	**/
	public var selectionChanged : Dynamic;
	/**
		sendEvent(self, QGraphicsItem, QEvent) -> bool
	**/
	public function sendEvent(QGraphicsItem:Dynamic, QEvent:Dynamic):Bool;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setActivePanel(self, QGraphicsItem)
	**/
	public function setActivePanel(QGraphicsItem:Dynamic):Void;
	/**
		setActiveWindow(self, QGraphicsWidget)
	**/
	public function setActiveWindow(QGraphicsWidget:Dynamic):Void;
	/**
		setBackgroundBrush(self, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setBackgroundBrush(Union:Dynamic):Void;
	/**
		setBspTreeDepth(self, int)
	**/
	public function setBspTreeDepth(int:Int):Void;
	/**
		setFocus(self, focusReason: Qt.FocusReason = Qt.OtherFocusReason)
	**/
	public function setFocus(?focusReason:Dynamic):Void;
	/**
		setFocusItem(self, QGraphicsItem, focusReason: Qt.FocusReason = Qt.OtherFocusReason)
	**/
	public function setFocusItem(QGraphicsItem:Dynamic, ?focusReason:Dynamic):Void;
	/**
		setFont(self, QFont)
	**/
	public function setFont(QFont:Dynamic):Void;
	/**
		setForegroundBrush(self, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setForegroundBrush(Union:Dynamic):Void;
	/**
		setItemIndexMethod(self, QGraphicsScene.ItemIndexMethod)
	**/
	public function setItemIndexMethod(QGraphicsScene:Dynamic):Void;
	/**
		setMinimumRenderSize(self, float)
	**/
	public function setMinimumRenderSize(float:Float):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setPalette(self, QPalette)
	**/
	public function setPalette(QPalette:Dynamic):Void;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setSceneRect(self, QRectF)
		setSceneRect(self, float, float, float, float)
	**/
	public function setSceneRect(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setSelectionArea(self, QPainterPath, QTransform)
		setSelectionArea(self, QPainterPath, mode: Qt.ItemSelectionMode = Qt.IntersectsItemShape, deviceTransform: QTransform = QTransform())
		setSelectionArea(self, QPainterPath, Qt.ItemSelectionOperation, mode: Qt.ItemSelectionMode = Qt.IntersectsItemShape, deviceTransform: QTransform = QTransform())
	**/
	public function setSelectionArea(QPainterPath:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setStickyFocus(self, bool)
	**/
	public function setStickyFocus(bool:Bool):Void;
	/**
		setStyle(self, QStyle)
	**/
	public function setStyle(QStyle:Dynamic):Void;
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
		stickyFocus(self) -> bool
	**/
	public function stickyFocus():Bool;
	/**
		style(self) -> QStyle
	**/
	public function style():Dynamic;
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
		update(self, rect: QRectF = QRectF())
		update(self, float, float, float, float)
	**/
	public function update(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		views(self) -> object
	**/
	public function views():Dynamic;
	/**
		wheelEvent(self, QGraphicsSceneWheelEvent)
	**/
	public function wheelEvent(QGraphicsSceneWheelEvent:Dynamic):Void;
	/**
		width(self) -> float
	**/
	public function width():Float;
}