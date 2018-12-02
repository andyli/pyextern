/* This file is generated, do not edit! */
package pySide2.qtQuick;
@:pythonImport("PySide2.QtQuick", "QQuickFramebufferObject") extern class QQuickFramebufferObject {
	static public var Bottom : Dynamic;
	static public var BottomLeft : Dynamic;
	static public var BottomRight : Dynamic;
	static public var Center : Dynamic;
	public function Flag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Flags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ItemAcceptsDrops : Dynamic;
	static public var ItemAcceptsInputMethod : Dynamic;
	static public var ItemActiveFocusHasChanged : Dynamic;
	static public var ItemAntialiasingHasChanged : Dynamic;
	public function ItemChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function Renderer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Right : Dynamic;
	static public var Top : Dynamic;
	static public var TopLeft : Dynamic;
	static public var TopRight : Dynamic;
	public function TransformOrigin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function UpdatePaintNodeData():Dynamic;
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
	public function acceptHoverEvents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function acceptedMouseButtons(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function activeFocusChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function activeFocusOnTab(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function activeFocusOnTabChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function antialiasing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function antialiasingChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function baselineOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function baselineOffsetChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function boundingRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childItems(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childMouseEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childrenChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childrenRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childrenRectChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function classBegin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clipChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clipRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function componentComplete(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contains(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function createRenderer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dragEnterEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dragLeaveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dragMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dropEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function enabledChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function filtersChildMouseEvents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function flags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusInEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusOutEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function forceActiveFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function geometryChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function grabMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function grabToImage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function grabTouchPoints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasActiveFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function height(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function heightChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function heightValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hoverEnterEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hoverLeaveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hoverMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function implicitHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function implicitHeightChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function implicitWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function implicitWidthChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inputMethodEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inputMethodQuery(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isComponentComplete(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isFocusScope(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSignalConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isTextureProvider(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isUnderMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function itemTransform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function keepMouseGrab(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function keepTouchGrab(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function keyPressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function keyReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapFromItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapFromScene(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapRectFromItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapRectFromScene(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapRectToItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapRectToScene(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapToItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapToScene(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mirrorVertically(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mirrorVerticallyChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseDoubleClickEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mousePressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseUngrabEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nextItemInFocusChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function opacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function opacityChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parentChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parentItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function polish(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function position(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function registerUserData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function releaseResources(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resetAntialiasing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resetHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resetWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rotation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rotationChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scaleChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scopedFocusItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAcceptHoverEvents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAcceptedMouseButtons(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setActiveFocusOnTab(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAntialiasing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBaselineOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setClip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFiltersChildMouseEvents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setImplicitHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setImplicitSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setImplicitWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setKeepMouseGrab(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setKeepTouchGrab(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMirrorVertically(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParentItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRotation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setScale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSmooth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTextureFollowsItemSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTransformOrigin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTransformOriginPoint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setZ(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function smooth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function smoothChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stackAfter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stackBefore(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function state(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stateChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	public function textureFollowsItemSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function textureFollowsItemSizeChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function textureProvider(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function touchEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function touchUngrabEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transformOrigin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transformOriginChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transformOriginPoint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ungrabMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ungrabTouchPoints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unsetCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function update(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function updateInputMethod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function updatePaintNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function updatePolish(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function visibleChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function visibleChildrenChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function wheelEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function width(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function widthChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function widthValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function window(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowDeactivateEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function x(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function xChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function y(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function yChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function z(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function zChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
}