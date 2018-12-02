/* This file is generated, do not edit! */
package pySide2.qtWidgets;
@:pythonImport("PySide2.QtWidgets", "QWizard") extern class QWizard {
	static public var Accepted : Dynamic;
	static public var AeroStyle : Dynamic;
	static public var BackButton : Dynamic;
	static public var BackgroundPixmap : Dynamic;
	static public var BannerPixmap : Dynamic;
	static public var CancelButton : Dynamic;
	static public var CancelButtonOnLeft : Dynamic;
	static public var ClassicStyle : Dynamic;
	static public var CommitButton : Dynamic;
	static public var CustomButton1 : Dynamic;
	static public var CustomButton2 : Dynamic;
	static public var CustomButton3 : Dynamic;
	public function DialogCode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DisabledBackButtonOnLastPage : Dynamic;
	static public var DrawChildren : Dynamic;
	static public var DrawWindowBackground : Dynamic;
	static public var ExtendedWatermarkPixmap : Dynamic;
	static public var FinishButton : Dynamic;
	static public var HaveCustomButton1 : Dynamic;
	static public var HaveCustomButton2 : Dynamic;
	static public var HaveCustomButton3 : Dynamic;
	static public var HaveFinishButtonOnEarlyPages : Dynamic;
	static public var HaveHelpButton : Dynamic;
	static public var HaveNextButtonOnLastPage : Dynamic;
	static public var HelpButton : Dynamic;
	static public var HelpButtonOnRight : Dynamic;
	static public var IgnoreMask : Dynamic;
	static public var IgnoreSubTitles : Dynamic;
	static public var IndependentPages : Dynamic;
	static public var LogoPixmap : Dynamic;
	static public var MacStyle : Dynamic;
	static public var ModernStyle : Dynamic;
	static public var NButtons : Dynamic;
	static public var NPixmaps : Dynamic;
	static public var NStandardButtons : Dynamic;
	static public var NStyles : Dynamic;
	static public var NextButton : Dynamic;
	static public var NoBackButtonOnLastPage : Dynamic;
	static public var NoBackButtonOnStartPage : Dynamic;
	static public var NoButton : Dynamic;
	static public var NoCancelButton : Dynamic;
	static public var NoCancelButtonOnLastPage : Dynamic;
	static public var NoDefaultButton : Dynamic;
	public function PaintDeviceMetric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PdmDepth : Dynamic;
	static public var PdmDevicePixelRatio : Dynamic;
	static public var PdmDevicePixelRatioScaled : Dynamic;
	static public var PdmDpiX : Dynamic;
	static public var PdmDpiY : Dynamic;
	static public var PdmHeight : Dynamic;
	static public var PdmHeightMM : Dynamic;
	static public var PdmNumColors : Dynamic;
	static public var PdmPhysicalDpiX : Dynamic;
	static public var PdmPhysicalDpiY : Dynamic;
	static public var PdmWidth : Dynamic;
	static public var PdmWidthMM : Dynamic;
	static public var Rejected : Dynamic;
	public function RenderFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function RenderFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Stretch : Dynamic;
	static public var WatermarkPixmap : Dynamic;
	public function WizardButton(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function WizardOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function WizardOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function WizardPixmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function WizardStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function accept(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function acceptDrops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function accepted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function accessibleDescription(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function accessibleName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function actionEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function actions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function activateWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addActions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addPage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function adjustPosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function adjustSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function autoFillBackground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function back(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function backgroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function backingStore(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function baseSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function button(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function buttonText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function changeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childrenRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childrenRegion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cleanupPage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clearFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clearMask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function closeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function colorCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contentsRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contextMenuEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contextMenuPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function create(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function createWinId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function createWindowContainer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentIdChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentPage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customButtonClicked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customContextMenuRequested(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function depth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function devType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function devicePixelRatio(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function devicePixelRatioF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function devicePixelRatioFScale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function done(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dragEnterEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dragLeaveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dragMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dropEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function effectiveWinId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ensurePolished(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function enterEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function exec_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function find(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function finished(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusInEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusNextChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusNextPrevChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusOutEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusPreviousChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusProxy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function font(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fontInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fontMetrics(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function foregroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function frameGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function frameSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function geometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function grab(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function grabGesture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function grabKeyboard(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function grabMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function grabShortcut(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function graphicsEffect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function graphicsProxyWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasHeightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasMouseTracking(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasVisitedPage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function height(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function heightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function heightMM(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function helpRequested(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hideEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function initPainter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function initializePage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inputMethodEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inputMethodHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inputMethodQuery(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertActions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function internalWinId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isActiveWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isAncestorOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEnabledTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEnabledToTLW(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isFullScreen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isHidden(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isLeftToRight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isMaximized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isMinimized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isModal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isRightToLeft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSignalConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSizeGripEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isTopLevel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isVisibleTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindowModified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function keyPressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function keyReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function keyboardGrabber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function layout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function layoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function leaveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function locale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function logicalDpiX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function logicalDpiY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lower(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapFrom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapFromGlobal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapFromParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapToGlobal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapToParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumSizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseDoubleClickEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function mouseGrabber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mousePressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function move(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nativeParentWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function next(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nextId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nextInFocusChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function normalGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function open(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function options(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function orientation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function overrideWindowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function overrideWindowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function page(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pageAdded(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pageIds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pageRemoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function paintEngine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function paintEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var painters : Dynamic;
	public function paintingActive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function palette(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parentWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function physicalDpiX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function physicalDpiY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pixmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function previousInFocusChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function raise_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function redirected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function registerUserData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function reject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rejected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function releaseKeyboard(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function releaseMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function releaseShortcut(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removePage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function render(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function repaint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resizeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function restart(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function restoreGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function result(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function saveGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scroll(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAcceptDrops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAccessibleDescription(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAccessibleName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAutoFillBackground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBackgroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBaseSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setButton(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setButtonLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setButtonText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setContextMenuPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDefaultProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDisabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setExtension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setField(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFixedHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFixedSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFixedWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFocusPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFocusProxy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setForegroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGraphicsEffect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHidden(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setInputMethodHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLayoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLocale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMaximumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMaximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMaximumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMinimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMinimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMinimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setModal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMouseTracking(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOrientation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPalette(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPixmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setResult(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setShortcutAutoRepeat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setShortcutEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSideWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSizeGripEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSizeIncrement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSizePolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStartId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStatusTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStyleSheet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSubTitleFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setTabOrder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTitleFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setToolTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setToolTipDuration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUpdatesEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWhatsThis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowIconText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowModality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowModified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowTitle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWizardStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sharedPainter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function show(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showExtension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showFullScreen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showMaximized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showMinimized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showNormal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sideWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sizeIncrement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sizePolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stackUnder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	public function statusTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function style(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function styleSheet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function subTitleFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tabletEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function testAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function testOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function titleFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toolTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toolTipDuration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function topLevelWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function underMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ungrabGesture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unsetCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unsetLayoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unsetLocale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function update(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function updateGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function updateMicroFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function updatesEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function validateCurrentPage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function visibleRegion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function visitedPages(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function whatsThis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function wheelEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function width(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function widthMM(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function winId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function window(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowHandle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowIconChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowIconText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowIconTextChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowModality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowTitle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowTitleChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function wizardStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function x(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function y(args:haxe.extern.Rest<Dynamic>):Dynamic;
}