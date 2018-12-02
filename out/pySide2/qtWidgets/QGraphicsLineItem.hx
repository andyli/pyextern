/* This file is generated, do not edit! */
package pySide2.qtWidgets;
@:pythonImport("PySide2.QtWidgets", "QGraphicsLineItem") extern class QGraphicsLineItem {
	public function CacheMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DeviceCoordinateCache : Dynamic;
	public function Extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function GraphicsItemChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function GraphicsItemFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function GraphicsItemFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ItemAcceptsInputMethod : Dynamic;
	static public var ItemChildAddedChange : Dynamic;
	static public var ItemChildRemovedChange : Dynamic;
	static public var ItemClipsChildrenToShape : Dynamic;
	static public var ItemClipsToShape : Dynamic;
	static public var ItemContainsChildrenInShape : Dynamic;
	static public var ItemCoordinateCache : Dynamic;
	static public var ItemCursorChange : Dynamic;
	static public var ItemCursorHasChanged : Dynamic;
	static public var ItemDoesntPropagateOpacityToChildren : Dynamic;
	static public var ItemEnabledChange : Dynamic;
	static public var ItemEnabledHasChanged : Dynamic;
	static public var ItemFlagsChange : Dynamic;
	static public var ItemFlagsHaveChanged : Dynamic;
	static public var ItemHasNoContents : Dynamic;
	static public var ItemIgnoresParentOpacity : Dynamic;
	static public var ItemIgnoresTransformations : Dynamic;
	static public var ItemIsFocusScope : Dynamic;
	static public var ItemIsFocusable : Dynamic;
	static public var ItemIsMovable : Dynamic;
	static public var ItemIsPanel : Dynamic;
	static public var ItemIsSelectable : Dynamic;
	static public var ItemMatrixChange : Dynamic;
	static public var ItemNegativeZStacksBehindParent : Dynamic;
	static public var ItemOpacityChange : Dynamic;
	static public var ItemOpacityHasChanged : Dynamic;
	static public var ItemParentChange : Dynamic;
	static public var ItemParentHasChanged : Dynamic;
	static public var ItemPositionChange : Dynamic;
	static public var ItemPositionHasChanged : Dynamic;
	static public var ItemRotationChange : Dynamic;
	static public var ItemRotationHasChanged : Dynamic;
	static public var ItemScaleChange : Dynamic;
	static public var ItemScaleHasChanged : Dynamic;
	static public var ItemSceneChange : Dynamic;
	static public var ItemSceneHasChanged : Dynamic;
	static public var ItemScenePositionHasChanged : Dynamic;
	static public var ItemSelectedChange : Dynamic;
	static public var ItemSelectedHasChanged : Dynamic;
	static public var ItemSendsGeometryChanges : Dynamic;
	static public var ItemSendsScenePositionChanges : Dynamic;
	static public var ItemStacksBehindParent : Dynamic;
	static public var ItemStopsClickFocusPropagation : Dynamic;
	static public var ItemStopsFocusHandling : Dynamic;
	static public var ItemToolTipChange : Dynamic;
	static public var ItemToolTipHasChanged : Dynamic;
	static public var ItemTransformChange : Dynamic;
	static public var ItemTransformHasChanged : Dynamic;
	static public var ItemTransformOriginPointChange : Dynamic;
	static public var ItemTransformOriginPointHasChanged : Dynamic;
	static public var ItemUsesExtendedStyleOption : Dynamic;
	static public var ItemVisibleChange : Dynamic;
	static public var ItemVisibleHasChanged : Dynamic;
	static public var ItemZValueChange : Dynamic;
	static public var ItemZValueHasChanged : Dynamic;
	static public var NoCache : Dynamic;
	static public var NonModal : Dynamic;
	static public var PanelModal : Dynamic;
	public function PanelModality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SceneModal : Dynamic;
	static public var UserExtension : Dynamic;
	static public var UserType : Dynamic;
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
	public function acceptDrops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function acceptHoverEvents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function acceptTouchEvents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function acceptedMouseButtons(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addToIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function advance(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function boundingRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function boundingRegion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function boundingRegionGranularity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cacheMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childItems(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childrenBoundingRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clearFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clipPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function collidesWithItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function collidesWithPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function collidingItems(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function commonAncestorItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contains(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contextMenuEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deviceTransform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dragEnterEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dragLeaveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dragMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dropEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function effectiveOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ensureVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function filtersChildEvents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function flags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusInEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusOutEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusProxy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusScopeItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function grabKeyboard(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function grabMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function graphicsEffect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function group(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function handlesChildEvents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hoverEnterEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hoverLeaveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hoverMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inputMethodEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inputMethodHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inputMethodQuery(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function installSceneEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isActive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isAncestorOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isBlockedByModalPanel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isClipped(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isObscured(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isObscuredBy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isPanel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSelected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isUnderMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isVisibleTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function itemChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function itemTransform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function keyPressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function keyReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function line(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapFromItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapFromParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapFromScene(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapRectFromItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapRectFromParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapRectFromScene(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapRectToItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapRectToParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapRectToScene(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapToItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapToParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapToScene(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function matrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseDoubleClickEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mousePressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveBy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function opacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function opaqueArea(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function paint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function panel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function panelModality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parentItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parentObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parentWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function prepareGeometryChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeFromIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeSceneEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resetMatrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resetTransform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rotation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scene(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sceneBoundingRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sceneEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sceneEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sceneMatrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scenePos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sceneTransform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scroll(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAcceptDrops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAcceptHoverEvents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAcceptTouchEvents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAcceptedMouseButtons(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setActive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBoundingRegionGranularity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCacheMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFiltersChildEvents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFocusProxy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGraphicsEffect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGroup(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHandlesChildEvents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setInputMethodHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMatrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPanelModality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParentItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRotation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setScale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSelected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setToolTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTransform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTransformOriginPoint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTransformations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setZValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function shape(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function show(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stackBefore(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toGraphicsObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toolTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function topLevelItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function topLevelWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transformOriginPoint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transformations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ungrabKeyboard(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ungrabMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unsetCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function update(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function updateMicroFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function wheelEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function window(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function x(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function y(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function zValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
}