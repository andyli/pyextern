/* This file is generated, do not edit! */
package pySide2.qtWidgets;
@:pythonImport("PySide2.QtWidgets", "QGraphicsScene") extern class QGraphicsScene {
	static public var AllLayers : Dynamic;
	static public var BackgroundLayer : Dynamic;
	static public var BspTreeIndex : Dynamic;
	static public var ForegroundLayer : Dynamic;
	public function ItemIndexMethod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ItemLayer : Dynamic;
	static public var NoIndex : Dynamic;
	public function SceneLayer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function SceneLayers(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function activePanel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function activeWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addEllipse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addLine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addPixmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addPolygon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addSimpleText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function advance(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function backgroundBrush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bspTreeDepth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function changed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clearFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clearSelection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function collidingItems(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contextMenuEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function createItemGroup(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroyItemGroup(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dragEnterEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dragLeaveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dragMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawBackground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawForeground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dropEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusInEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusItemChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusNextPrevChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusOutEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function font(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function foregroundBrush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function height(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function helpEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inputMethodEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inputMethodQuery(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function invalidate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isActive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSignalConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSortCacheEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function itemAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function itemIndexMethod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function items(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function itemsBoundingRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function keyPressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function keyReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumRenderSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseDoubleClickEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseGrabberItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mousePressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function palette(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function registerUserData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function render(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sceneRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sceneRectChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selectedItems(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selectionArea(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selectionChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sendEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setActivePanel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setActiveWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBackgroundBrush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBspTreeDepth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFocusItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setForegroundBrush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setItemIndexMethod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMinimumRenderSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPalette(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSceneRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSelectionArea(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSortCacheEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStickyFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	public function stickyFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function style(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function update(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function views(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function wheelEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function width(args:haxe.extern.Rest<Dynamic>):Dynamic;
}