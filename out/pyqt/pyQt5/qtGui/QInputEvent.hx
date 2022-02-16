/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QInputEvent") extern class QInputEvent {
	static public var ActionAdded : Dynamic;
	static public var ActionChanged : Dynamic;
	static public var ActionRemoved : Dynamic;
	static public var ActivationChange : Dynamic;
	static public var ApplicationActivate : Dynamic;
	static public var ApplicationActivated : Dynamic;
	static public var ApplicationDeactivate : Dynamic;
	static public var ApplicationDeactivated : Dynamic;
	static public var ApplicationFontChange : Dynamic;
	static public var ApplicationLayoutDirectionChange : Dynamic;
	static public var ApplicationPaletteChange : Dynamic;
	static public var ApplicationStateChange : Dynamic;
	static public var ApplicationWindowIconChange : Dynamic;
	static public var ChildAdded : Dynamic;
	static public var ChildPolished : Dynamic;
	static public var ChildRemoved : Dynamic;
	static public var Clipboard : Dynamic;
	static public var Close : Dynamic;
	static public var CloseSoftwareInputPanel : Dynamic;
	static public var ContentsRectChange : Dynamic;
	static public var ContextMenu : Dynamic;
	static public var CursorChange : Dynamic;
	static public var DeferredDelete : Dynamic;
	static public var DragEnter : Dynamic;
	static public var DragLeave : Dynamic;
	static public var DragMove : Dynamic;
	static public var Drop : Dynamic;
	static public var DynamicPropertyChange : Dynamic;
	static public var EnabledChange : Dynamic;
	static public var Enter : Dynamic;
	static public var EnterWhatsThisMode : Dynamic;
	static public var Expose : Dynamic;
	static public var FileOpen : Dynamic;
	static public var FocusAboutToChange : Dynamic;
	static public var FocusIn : Dynamic;
	static public var FocusOut : Dynamic;
	static public var FontChange : Dynamic;
	static public var Gesture : Dynamic;
	static public var GestureOverride : Dynamic;
	static public var GrabKeyboard : Dynamic;
	static public var GrabMouse : Dynamic;
	static public var GraphicsSceneContextMenu : Dynamic;
	static public var GraphicsSceneDragEnter : Dynamic;
	static public var GraphicsSceneDragLeave : Dynamic;
	static public var GraphicsSceneDragMove : Dynamic;
	static public var GraphicsSceneDrop : Dynamic;
	static public var GraphicsSceneHelp : Dynamic;
	static public var GraphicsSceneHoverEnter : Dynamic;
	static public var GraphicsSceneHoverLeave : Dynamic;
	static public var GraphicsSceneHoverMove : Dynamic;
	static public var GraphicsSceneMouseDoubleClick : Dynamic;
	static public var GraphicsSceneMouseMove : Dynamic;
	static public var GraphicsSceneMousePress : Dynamic;
	static public var GraphicsSceneMouseRelease : Dynamic;
	static public var GraphicsSceneMove : Dynamic;
	static public var GraphicsSceneResize : Dynamic;
	static public var GraphicsSceneWheel : Dynamic;
	static public var Hide : Dynamic;
	static public var HideToParent : Dynamic;
	static public var HoverEnter : Dynamic;
	static public var HoverLeave : Dynamic;
	static public var HoverMove : Dynamic;
	static public var IconDrag : Dynamic;
	static public var IconTextChange : Dynamic;
	static public var InputMethod : Dynamic;
	static public var InputMethodQuery : Dynamic;
	static public var KeyPress : Dynamic;
	static public var KeyRelease : Dynamic;
	static public var KeyboardLayoutChange : Dynamic;
	static public var LanguageChange : Dynamic;
	static public var LayoutDirectionChange : Dynamic;
	static public var LayoutRequest : Dynamic;
	static public var Leave : Dynamic;
	static public var LeaveWhatsThisMode : Dynamic;
	static public var LocaleChange : Dynamic;
	static public var MacSizeChange : Dynamic;
	static public var MaxUser : Dynamic;
	static public var MetaCall : Dynamic;
	static public var ModifiedChange : Dynamic;
	static public var MouseButtonDblClick : Dynamic;
	static public var MouseButtonPress : Dynamic;
	static public var MouseButtonRelease : Dynamic;
	static public var MouseMove : Dynamic;
	static public var MouseTrackingChange : Dynamic;
	static public var Move : Dynamic;
	static public var NonClientAreaMouseButtonDblClick : Dynamic;
	static public var NonClientAreaMouseButtonPress : Dynamic;
	static public var NonClientAreaMouseButtonRelease : Dynamic;
	static public var NonClientAreaMouseMove : Dynamic;
	static public var None_ : Dynamic;
	static public var OkRequest : Dynamic;
	static public var OrientationChange : Dynamic;
	static public var Paint : Dynamic;
	static public var PaletteChange : Dynamic;
	static public var ParentAboutToChange : Dynamic;
	static public var ParentChange : Dynamic;
	static public var PlatformPanel : Dynamic;
	static public var PlatformSurface : Dynamic;
	static public var Polish : Dynamic;
	static public var PolishRequest : Dynamic;
	static public var QueryWhatsThis : Dynamic;
	static public var ReadOnlyChange : Dynamic;
	static public var RequestSoftwareInputPanel : Dynamic;
	static public var Resize : Dynamic;
	static public var Scroll : Dynamic;
	static public var ScrollPrepare : Dynamic;
	static public var Shortcut : Dynamic;
	static public var ShortcutOverride : Dynamic;
	static public var Show : Dynamic;
	static public var ShowToParent : Dynamic;
	static public var SockAct : Dynamic;
	static public var StateMachineSignal : Dynamic;
	static public var StateMachineWrapped : Dynamic;
	static public var StatusTip : Dynamic;
	static public var StyleChange : Dynamic;
	static public var TabletEnterProximity : Dynamic;
	static public var TabletLeaveProximity : Dynamic;
	static public var TabletMove : Dynamic;
	static public var TabletPress : Dynamic;
	static public var TabletRelease : Dynamic;
	static public var TabletTrackingChange : Dynamic;
	static public var ThreadChange : Dynamic;
	static public var Timer : Dynamic;
	static public var ToolBarChange : Dynamic;
	static public var ToolTip : Dynamic;
	static public var ToolTipChange : Dynamic;
	static public var TouchBegin : Dynamic;
	static public var TouchCancel : Dynamic;
	static public var TouchEnd : Dynamic;
	static public var TouchUpdate : Dynamic;
	/**
		int([x]) -> integer
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
	public function Type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var UngrabKeyboard : Dynamic;
	static public var UngrabMouse : Dynamic;
	static public var UpdateLater : Dynamic;
	static public var UpdateRequest : Dynamic;
	static public var User : Dynamic;
	static public var WhatsThis : Dynamic;
	static public var WhatsThisClicked : Dynamic;
	static public var Wheel : Dynamic;
	static public var WinEventAct : Dynamic;
	static public var WinIdChange : Dynamic;
	static public var WindowActivate : Dynamic;
	static public var WindowBlocked : Dynamic;
	static public var WindowDeactivate : Dynamic;
	static public var WindowIconChange : Dynamic;
	static public var WindowStateChange : Dynamic;
	static public var WindowTitleChange : Dynamic;
	static public var WindowUnblocked : Dynamic;
	static public var ZOrderChange : Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		accept(self)
	**/
	public function accept():Void;
	/**
		ignore(self)
	**/
	public function ignore():Void;
	/**
		isAccepted(self) -> bool
	**/
	public function isAccepted():Bool;
	/**
		modifiers(self) -> Qt.KeyboardModifiers
	**/
	public function modifiers():Dynamic;
	/**
		registerEventType(hint: int = -1) -> int
	**/
	static public function registerEventType(?hint:Dynamic):Int;
	/**
		setAccepted(self, bool)
	**/
	public function setAccepted(bool:Bool):Void;
	/**
		setTimestamp(self, int)
	**/
	public function setTimestamp(int:Int):Void;
	/**
		spontaneous(self) -> bool
	**/
	public function spontaneous():Bool;
	/**
		timestamp(self) -> int
	**/
	public function timestamp():Int;
	/**
		type(self) -> QEvent.Type
	**/
	public function type():Dynamic;
}