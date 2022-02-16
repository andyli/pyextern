/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "Qt") extern class Qt {
	static public var AA_CompressHighFrequencyEvents : Dynamic;
	static public var AA_CompressTabletEvents : Dynamic;
	static public var AA_DisableHighDpiScaling : Dynamic;
	static public var AA_DisableShaderDiskCache : Dynamic;
	static public var AA_DisableWindowContextHelpButton : Dynamic;
	static public var AA_DontCheckOpenGLContextThreadAffinity : Dynamic;
	static public var AA_DontCreateNativeWidgetSiblings : Dynamic;
	static public var AA_DontShowIconsInMenus : Dynamic;
	static public var AA_DontShowShortcutsInContextMenus : Dynamic;
	static public var AA_DontUseNativeDialogs : Dynamic;
	static public var AA_DontUseNativeMenuBar : Dynamic;
	static public var AA_EnableHighDpiScaling : Dynamic;
	static public var AA_ForceRasterWidgets : Dynamic;
	static public var AA_ImmediateWidgetCreation : Dynamic;
	static public var AA_MSWindowsUseDirect3DByDefault : Dynamic;
	static public var AA_MacDontSwapCtrlAndMeta : Dynamic;
	static public var AA_MacPluginApplication : Dynamic;
	static public var AA_NativeWindows : Dynamic;
	static public var AA_PluginApplication : Dynamic;
	static public var AA_SetPalette : Dynamic;
	static public var AA_ShareOpenGLContexts : Dynamic;
	static public var AA_SynthesizeMouseForUnhandledTabletEvents : Dynamic;
	static public var AA_SynthesizeMouseForUnhandledTouchEvents : Dynamic;
	static public var AA_SynthesizeTouchForUnhandledMouseEvents : Dynamic;
	static public var AA_Use96Dpi : Dynamic;
	static public var AA_UseDesktopOpenGL : Dynamic;
	static public var AA_UseHighDpiPixmaps : Dynamic;
	static public var AA_UseOpenGLES : Dynamic;
	static public var AA_UseSoftwareOpenGL : Dynamic;
	static public var AA_UseStyleSheetPropagationInWidgetStyles : Dynamic;
	static public var AA_X11InitThreads : Dynamic;
	static public var ALT : Dynamic;
	static public var AbsoluteSize : Dynamic;
	static public var AccessibleDescriptionRole : Dynamic;
	static public var AccessibleTextRole : Dynamic;
	static public var ActionMask : Dynamic;
	static public var ActionsContextMenu : Dynamic;
	static public var ActiveWindowFocusReason : Dynamic;
	static public var AddToSelection : Dynamic;
	static public var AlignAbsolute : Dynamic;
	static public var AlignBaseline : Dynamic;
	static public var AlignBottom : Dynamic;
	static public var AlignCenter : Dynamic;
	static public var AlignHCenter : Dynamic;
	static public var AlignHorizontal_Mask : Dynamic;
	static public var AlignJustify : Dynamic;
	static public var AlignLeading : Dynamic;
	static public var AlignLeft : Dynamic;
	static public var AlignRight : Dynamic;
	static public var AlignTop : Dynamic;
	static public var AlignTrailing : Dynamic;
	static public var AlignVCenter : Dynamic;
	static public var AlignVertical_Mask : Dynamic;
	/**
		Qt.Alignment()
		Qt.Alignment(Union[Qt.Alignment, Qt.AlignmentFlag])
		Qt.Alignment(Qt.Alignment)
	**/
	static public function Alignment(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function AlignmentFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var AllButtons : Dynamic;
	static public var AllDockWidgetAreas : Dynamic;
	static public var AllToolBarAreas : Dynamic;
	static public var AltModifier : Dynamic;
	static public var AnchorBottom : Dynamic;
	static public var AnchorHorizontalCenter : Dynamic;
	static public var AnchorLeft : Dynamic;
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
	public function AnchorPoint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var AnchorRight : Dynamic;
	static public var AnchorTop : Dynamic;
	static public var AnchorVerticalCenter : Dynamic;
	static public var ApplicationActive : Dynamic;
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
	public function ApplicationAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ApplicationHidden : Dynamic;
	static public var ApplicationInactive : Dynamic;
	static public var ApplicationModal : Dynamic;
	static public var ApplicationShortcut : Dynamic;
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
	public function ApplicationState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Qt.ApplicationStates()
		Qt.ApplicationStates(Union[Qt.ApplicationStates, Qt.ApplicationState])
		Qt.ApplicationStates(Qt.ApplicationStates)
	**/
	static public function ApplicationStates(args:haxe.extern.Rest<Dynamic>):Void;
	static public var ApplicationSuspended : Dynamic;
	static public var ArrowCursor : Dynamic;
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
	public function ArrowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var AscendingOrder : Dynamic;
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
	public function AspectRatioMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var AutoColor : Dynamic;
	static public var AutoConnection : Dynamic;
	static public var AutoDither : Dynamic;
	static public var AutoText : Dynamic;
	static public var AvoidDither : Dynamic;
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
	public function Axis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var BDiagPattern : Dynamic;
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
	public function BGMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var BackButton : Dynamic;
	static public var BackgroundColorRole : Dynamic;
	static public var BackgroundRole : Dynamic;
	static public var BacktabFocusReason : Dynamic;
	static public var BeginNativeGesture : Dynamic;
	static public var BevelJoin : Dynamic;
	static public var BitmapCursor : Dynamic;
	static public var BlankCursor : Dynamic;
	static public var BlockingQueuedConnection : Dynamic;
	static public var BottomDockWidgetArea : Dynamic;
	static public var BottomEdge : Dynamic;
	static public var BottomLeftCorner : Dynamic;
	static public var BottomLeftSection : Dynamic;
	static public var BottomRightCorner : Dynamic;
	static public var BottomRightSection : Dynamic;
	static public var BottomSection : Dynamic;
	static public var BottomToolBarArea : Dynamic;
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
	public function BrushStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var BusyCursor : Dynamic;
	static public var BypassGraphicsProxyWidget : Dynamic;
	static public var BypassWindowManagerHint : Dynamic;
	static public var CTRL : Dynamic;
	static public var CaseInsensitive : Dynamic;
	static public var CaseSensitive : Dynamic;
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
	public function CaseSensitivity(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function CheckState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var CheckStateRole : Dynamic;
	static public var Checked : Dynamic;
	static public var ChecksumIso3309 : Dynamic;
	static public var ChecksumItuV41 : Dynamic;
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
	public function ChecksumType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ClickFocus : Dynamic;
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
	public function ClipOperation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ClosedHandCursor : Dynamic;
	static public var CoarseTimer : Dynamic;
	static public var ColorOnly : Dynamic;
	static public var ConicalGradientPattern : Dynamic;
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
	public function ConnectionType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ContainsItemBoundingRect : Dynamic;
	static public var ContainsItemShape : Dynamic;
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
	public function ContextMenuPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ControlModifier : Dynamic;
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
	public function CoordinateSystem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var CopyAction : Dynamic;
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
	public function Corner(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var CoverWindow : Dynamic;
	static public var CrossCursor : Dynamic;
	static public var CrossPattern : Dynamic;
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
	public function CursorMoveStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function CursorShape(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var CustomContextMenu : Dynamic;
	static public var CustomCursor : Dynamic;
	static public var CustomDashLine : Dynamic;
	static public var CustomGesture : Dynamic;
	static public var CustomizeWindowHint : Dynamic;
	static public var DashDotDotLine : Dynamic;
	static public var DashDotLine : Dynamic;
	static public var DashLine : Dynamic;
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
	public function DateFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function DayOfWeek(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DecorationRole : Dynamic;
	static public var DefaultContextMenu : Dynamic;
	static public var DefaultLocaleLongDate : Dynamic;
	static public var DefaultLocaleShortDate : Dynamic;
	static public var Dense1Pattern : Dynamic;
	static public var Dense2Pattern : Dynamic;
	static public var Dense3Pattern : Dynamic;
	static public var Dense4Pattern : Dynamic;
	static public var Dense5Pattern : Dynamic;
	static public var Dense6Pattern : Dynamic;
	static public var Dense7Pattern : Dynamic;
	static public var DescendingOrder : Dynamic;
	static public var Desktop : Dynamic;
	static public var DeviceCoordinates : Dynamic;
	static public var DiagCrossPattern : Dynamic;
	static public var Dialog : Dynamic;
	static public var DiffuseAlphaDither : Dynamic;
	static public var DiffuseDither : Dynamic;
	static public var DirectConnection : Dynamic;
	static public var DisplayRole : Dynamic;
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
	public function DockWidgetArea(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DockWidgetArea_Mask : Dynamic;
	/**
		Qt.DockWidgetAreas()
		Qt.DockWidgetAreas(Union[Qt.DockWidgetAreas, Qt.DockWidgetArea])
		Qt.DockWidgetAreas(Qt.DockWidgetAreas)
	**/
	static public function DockWidgetAreas(args:haxe.extern.Rest<Dynamic>):Void;
	static public var DontStartGestureOnChildren : Dynamic;
	static public var DotLine : Dynamic;
	static public var DownArrow : Dynamic;
	static public var DragCopyCursor : Dynamic;
	static public var DragLinkCursor : Dynamic;
	static public var DragMoveCursor : Dynamic;
	static public var Drawer : Dynamic;
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
	public function DropAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Qt.DropActions()
		Qt.DropActions(Union[Qt.DropActions, Qt.DropAction])
		Qt.DropActions(Qt.DropActions)
	**/
	static public function DropActions(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function Edge(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Qt.Edges()
		Qt.Edges(Union[Qt.Edges, Qt.Edge])
		Qt.Edges(Qt.Edges)
	**/
	static public function Edges(args:haxe.extern.Rest<Dynamic>):Void;
	static public var EditRole : Dynamic;
	static public var ElideLeft : Dynamic;
	static public var ElideMiddle : Dynamic;
	static public var ElideNone : Dynamic;
	static public var ElideRight : Dynamic;
	static public var EndNativeGesture : Dynamic;
	static public var EnterKeyDefault : Dynamic;
	static public var EnterKeyDone : Dynamic;
	static public var EnterKeyGo : Dynamic;
	static public var EnterKeyNext : Dynamic;
	static public var EnterKeyPrevious : Dynamic;
	static public var EnterKeyReturn : Dynamic;
	static public var EnterKeySearch : Dynamic;
	static public var EnterKeySend : Dynamic;
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
	public function EnterKeyType(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function EventPriority(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ExactHit : Dynamic;
	static public var ExtraButton1 : Dynamic;
	static public var ExtraButton10 : Dynamic;
	static public var ExtraButton11 : Dynamic;
	static public var ExtraButton12 : Dynamic;
	static public var ExtraButton13 : Dynamic;
	static public var ExtraButton14 : Dynamic;
	static public var ExtraButton15 : Dynamic;
	static public var ExtraButton16 : Dynamic;
	static public var ExtraButton17 : Dynamic;
	static public var ExtraButton18 : Dynamic;
	static public var ExtraButton19 : Dynamic;
	static public var ExtraButton2 : Dynamic;
	static public var ExtraButton20 : Dynamic;
	static public var ExtraButton21 : Dynamic;
	static public var ExtraButton22 : Dynamic;
	static public var ExtraButton23 : Dynamic;
	static public var ExtraButton24 : Dynamic;
	static public var ExtraButton3 : Dynamic;
	static public var ExtraButton4 : Dynamic;
	static public var ExtraButton5 : Dynamic;
	static public var ExtraButton6 : Dynamic;
	static public var ExtraButton7 : Dynamic;
	static public var ExtraButton8 : Dynamic;
	static public var ExtraButton9 : Dynamic;
	static public var FDiagPattern : Dynamic;
	static public var FastTransformation : Dynamic;
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
	public function FillRule(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function FindChildOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Qt.FindChildOptions()
		Qt.FindChildOptions(Union[Qt.FindChildOptions, Qt.FindChildOption])
		Qt.FindChildOptions(Qt.FindChildOptions)
	**/
	static public function FindChildOptions(args:haxe.extern.Rest<Dynamic>):Void;
	static public var FindChildrenRecursively : Dynamic;
	static public var FindDirectChildrenOnly : Dynamic;
	static public var FlatCap : Dynamic;
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
	public function FocusPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function FocusReason(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var FontRole : Dynamic;
	static public var ForbiddenCursor : Dynamic;
	static public var ForegroundRole : Dynamic;
	static public var ForeignWindow : Dynamic;
	static public var ForwardButton : Dynamic;
	static public var FramelessWindowHint : Dynamic;
	static public var Friday : Dynamic;
	static public var FuzzyHit : Dynamic;
	static public var GestureCanceled : Dynamic;
	static public var GestureFinished : Dynamic;
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
	public function GestureFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Qt.GestureFlags()
		Qt.GestureFlags(Union[Qt.GestureFlags, Qt.GestureFlag])
		Qt.GestureFlags(Qt.GestureFlags)
	**/
	static public function GestureFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var GestureStarted : Dynamic;
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
	public function GestureState(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function GestureType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var GestureUpdated : Dynamic;
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
	public function GlobalColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var GroupSwitchModifier : Dynamic;
	static public var HighEventPriority : Dynamic;
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
	public function HitTestAccuracy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var HorPattern : Dynamic;
	static public var Horizontal : Dynamic;
	static public var IBeamCursor : Dynamic;
	static public var ISODate : Dynamic;
	static public var ISODateWithMs : Dynamic;
	static public var IgnoreAction : Dynamic;
	static public var IgnoreAspectRatio : Dynamic;
	static public var IgnoredGesturesPropagateToParent : Dynamic;
	static public var ImAbsolutePosition : Dynamic;
	static public var ImAnchorPosition : Dynamic;
	static public var ImAnchorRectangle : Dynamic;
	static public var ImCurrentSelection : Dynamic;
	static public var ImCursorPosition : Dynamic;
	static public var ImCursorRectangle : Dynamic;
	static public var ImEnabled : Dynamic;
	static public var ImEnterKeyType : Dynamic;
	static public var ImFont : Dynamic;
	static public var ImHints : Dynamic;
	static public var ImInputItemClipRectangle : Dynamic;
	static public var ImMaximumTextLength : Dynamic;
	static public var ImMicroFocus : Dynamic;
	static public var ImPlatformData : Dynamic;
	static public var ImPreferredLanguage : Dynamic;
	static public var ImQueryAll : Dynamic;
	static public var ImQueryInput : Dynamic;
	static public var ImSurroundingText : Dynamic;
	static public var ImTextAfterCursor : Dynamic;
	static public var ImTextBeforeCursor : Dynamic;
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
	public function ImageConversionFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Qt.ImageConversionFlags()
		Qt.ImageConversionFlags(Union[Qt.ImageConversionFlags, Qt.ImageConversionFlag])
		Qt.ImageConversionFlags(Qt.ImageConversionFlags)
	**/
	static public function ImageConversionFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var ImhDate : Dynamic;
	static public var ImhDialableCharactersOnly : Dynamic;
	static public var ImhDigitsOnly : Dynamic;
	static public var ImhEmailCharactersOnly : Dynamic;
	static public var ImhExclusiveInputMask : Dynamic;
	static public var ImhFormattedNumbersOnly : Dynamic;
	static public var ImhHiddenText : Dynamic;
	static public var ImhLatinOnly : Dynamic;
	static public var ImhLowercaseOnly : Dynamic;
	static public var ImhMultiLine : Dynamic;
	static public var ImhNoAutoUppercase : Dynamic;
	static public var ImhNoEditMenu : Dynamic;
	static public var ImhNoPredictiveText : Dynamic;
	static public var ImhNoTextHandles : Dynamic;
	static public var ImhNone : Dynamic;
	static public var ImhPreferLatin : Dynamic;
	static public var ImhPreferLowercase : Dynamic;
	static public var ImhPreferNumbers : Dynamic;
	static public var ImhPreferUppercase : Dynamic;
	static public var ImhSensitiveData : Dynamic;
	static public var ImhTime : Dynamic;
	static public var ImhUppercaseOnly : Dynamic;
	static public var ImhUrlCharactersOnly : Dynamic;
	static public var InitialSortOrderRole : Dynamic;
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
	public function InputMethodHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Qt.InputMethodHints()
		Qt.InputMethodHints(Union[Qt.InputMethodHints, Qt.InputMethodHint])
		Qt.InputMethodHints(Qt.InputMethodHints)
	**/
	static public function InputMethodHints(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		Qt.InputMethodQueries()
		Qt.InputMethodQueries(Union[Qt.InputMethodQueries, Qt.InputMethodQuery])
		Qt.InputMethodQueries(Qt.InputMethodQueries)
	**/
	static public function InputMethodQueries(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function InputMethodQuery(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var IntersectClip : Dynamic;
	static public var IntersectsItemBoundingRect : Dynamic;
	static public var IntersectsItemShape : Dynamic;
	static public var InvertedLandscapeOrientation : Dynamic;
	static public var InvertedPortraitOrientation : Dynamic;
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
	public function ItemDataRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ItemFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Qt.ItemFlags()
		Qt.ItemFlags(Union[Qt.ItemFlags, Qt.ItemFlag])
		Qt.ItemFlags(Qt.ItemFlags)
	**/
	static public function ItemFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var ItemIsAutoTristate : Dynamic;
	static public var ItemIsDragEnabled : Dynamic;
	static public var ItemIsDropEnabled : Dynamic;
	static public var ItemIsEditable : Dynamic;
	static public var ItemIsEnabled : Dynamic;
	static public var ItemIsSelectable : Dynamic;
	static public var ItemIsTristate : Dynamic;
	static public var ItemIsUserCheckable : Dynamic;
	static public var ItemIsUserTristate : Dynamic;
	static public var ItemNeverHasChildren : Dynamic;
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
	public function ItemSelectionMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ItemSelectionOperation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var KeepAspectRatio : Dynamic;
	static public var KeepAspectRatioByExpanding : Dynamic;
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
	public function Key(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Key_0 : Dynamic;
	static public var Key_1 : Dynamic;
	static public var Key_2 : Dynamic;
	static public var Key_3 : Dynamic;
	static public var Key_4 : Dynamic;
	static public var Key_5 : Dynamic;
	static public var Key_6 : Dynamic;
	static public var Key_7 : Dynamic;
	static public var Key_8 : Dynamic;
	static public var Key_9 : Dynamic;
	static public var Key_A : Dynamic;
	static public var Key_AE : Dynamic;
	static public var Key_Aacute : Dynamic;
	static public var Key_Acircumflex : Dynamic;
	static public var Key_AddFavorite : Dynamic;
	static public var Key_Adiaeresis : Dynamic;
	static public var Key_Agrave : Dynamic;
	static public var Key_Alt : Dynamic;
	static public var Key_AltGr : Dynamic;
	static public var Key_Ampersand : Dynamic;
	static public var Key_Any : Dynamic;
	static public var Key_Apostrophe : Dynamic;
	static public var Key_ApplicationLeft : Dynamic;
	static public var Key_ApplicationRight : Dynamic;
	static public var Key_Aring : Dynamic;
	static public var Key_AsciiCircum : Dynamic;
	static public var Key_AsciiTilde : Dynamic;
	static public var Key_Asterisk : Dynamic;
	static public var Key_At : Dynamic;
	static public var Key_Atilde : Dynamic;
	static public var Key_AudioCycleTrack : Dynamic;
	static public var Key_AudioForward : Dynamic;
	static public var Key_AudioRandomPlay : Dynamic;
	static public var Key_AudioRepeat : Dynamic;
	static public var Key_AudioRewind : Dynamic;
	static public var Key_Away : Dynamic;
	static public var Key_B : Dynamic;
	static public var Key_Back : Dynamic;
	static public var Key_BackForward : Dynamic;
	static public var Key_Backslash : Dynamic;
	static public var Key_Backspace : Dynamic;
	static public var Key_Backtab : Dynamic;
	static public var Key_Bar : Dynamic;
	static public var Key_BassBoost : Dynamic;
	static public var Key_BassDown : Dynamic;
	static public var Key_BassUp : Dynamic;
	static public var Key_Battery : Dynamic;
	static public var Key_Blue : Dynamic;
	static public var Key_Bluetooth : Dynamic;
	static public var Key_Book : Dynamic;
	static public var Key_BraceLeft : Dynamic;
	static public var Key_BraceRight : Dynamic;
	static public var Key_BracketLeft : Dynamic;
	static public var Key_BracketRight : Dynamic;
	static public var Key_BrightnessAdjust : Dynamic;
	static public var Key_C : Dynamic;
	static public var Key_CD : Dynamic;
	static public var Key_Calculator : Dynamic;
	static public var Key_Calendar : Dynamic;
	static public var Key_Call : Dynamic;
	static public var Key_Camera : Dynamic;
	static public var Key_CameraFocus : Dynamic;
	static public var Key_Cancel : Dynamic;
	static public var Key_CapsLock : Dynamic;
	static public var Key_Ccedilla : Dynamic;
	static public var Key_ChannelDown : Dynamic;
	static public var Key_ChannelUp : Dynamic;
	static public var Key_Clear : Dynamic;
	static public var Key_ClearGrab : Dynamic;
	static public var Key_Close : Dynamic;
	static public var Key_Codeinput : Dynamic;
	static public var Key_Colon : Dynamic;
	static public var Key_Comma : Dynamic;
	static public var Key_Community : Dynamic;
	static public var Key_Context1 : Dynamic;
	static public var Key_Context2 : Dynamic;
	static public var Key_Context3 : Dynamic;
	static public var Key_Context4 : Dynamic;
	static public var Key_ContrastAdjust : Dynamic;
	static public var Key_Control : Dynamic;
	static public var Key_Copy : Dynamic;
	static public var Key_Cut : Dynamic;
	static public var Key_D : Dynamic;
	static public var Key_DOS : Dynamic;
	static public var Key_Dead_A : Dynamic;
	static public var Key_Dead_Abovecomma : Dynamic;
	static public var Key_Dead_Abovedot : Dynamic;
	static public var Key_Dead_Abovereversedcomma : Dynamic;
	static public var Key_Dead_Abovering : Dynamic;
	static public var Key_Dead_Aboveverticalline : Dynamic;
	static public var Key_Dead_Acute : Dynamic;
	static public var Key_Dead_Belowbreve : Dynamic;
	static public var Key_Dead_Belowcircumflex : Dynamic;
	static public var Key_Dead_Belowcomma : Dynamic;
	static public var Key_Dead_Belowdiaeresis : Dynamic;
	static public var Key_Dead_Belowdot : Dynamic;
	static public var Key_Dead_Belowmacron : Dynamic;
	static public var Key_Dead_Belowring : Dynamic;
	static public var Key_Dead_Belowtilde : Dynamic;
	static public var Key_Dead_Belowverticalline : Dynamic;
	static public var Key_Dead_Breve : Dynamic;
	static public var Key_Dead_Capital_Schwa : Dynamic;
	static public var Key_Dead_Caron : Dynamic;
	static public var Key_Dead_Cedilla : Dynamic;
	static public var Key_Dead_Circumflex : Dynamic;
	static public var Key_Dead_Currency : Dynamic;
	static public var Key_Dead_Diaeresis : Dynamic;
	static public var Key_Dead_Doubleacute : Dynamic;
	static public var Key_Dead_Doublegrave : Dynamic;
	static public var Key_Dead_E : Dynamic;
	static public var Key_Dead_Grave : Dynamic;
	static public var Key_Dead_Greek : Dynamic;
	static public var Key_Dead_Hook : Dynamic;
	static public var Key_Dead_Horn : Dynamic;
	static public var Key_Dead_I : Dynamic;
	static public var Key_Dead_Invertedbreve : Dynamic;
	static public var Key_Dead_Iota : Dynamic;
	static public var Key_Dead_Longsolidusoverlay : Dynamic;
	static public var Key_Dead_Lowline : Dynamic;
	static public var Key_Dead_Macron : Dynamic;
	static public var Key_Dead_O : Dynamic;
	static public var Key_Dead_Ogonek : Dynamic;
	static public var Key_Dead_Semivoiced_Sound : Dynamic;
	static public var Key_Dead_Small_Schwa : Dynamic;
	static public var Key_Dead_Stroke : Dynamic;
	static public var Key_Dead_Tilde : Dynamic;
	static public var Key_Dead_U : Dynamic;
	static public var Key_Dead_Voiced_Sound : Dynamic;
	static public var Key_Dead_a : Dynamic;
	static public var Key_Dead_e : Dynamic;
	static public var Key_Dead_i : Dynamic;
	static public var Key_Dead_o : Dynamic;
	static public var Key_Dead_u : Dynamic;
	static public var Key_Delete : Dynamic;
	static public var Key_Direction_L : Dynamic;
	static public var Key_Direction_R : Dynamic;
	static public var Key_Display : Dynamic;
	static public var Key_Documents : Dynamic;
	static public var Key_Dollar : Dynamic;
	static public var Key_Down : Dynamic;
	static public var Key_E : Dynamic;
	static public var Key_ETH : Dynamic;
	static public var Key_Eacute : Dynamic;
	static public var Key_Ecircumflex : Dynamic;
	static public var Key_Ediaeresis : Dynamic;
	static public var Key_Egrave : Dynamic;
	static public var Key_Eisu_Shift : Dynamic;
	static public var Key_Eisu_toggle : Dynamic;
	static public var Key_Eject : Dynamic;
	static public var Key_End : Dynamic;
	static public var Key_Enter : Dynamic;
	static public var Key_Equal : Dynamic;
	static public var Key_Escape : Dynamic;
	static public var Key_Excel : Dynamic;
	static public var Key_Exclam : Dynamic;
	static public var Key_Execute : Dynamic;
	static public var Key_Exit : Dynamic;
	static public var Key_Explorer : Dynamic;
	static public var Key_F : Dynamic;
	static public var Key_F1 : Dynamic;
	static public var Key_F10 : Dynamic;
	static public var Key_F11 : Dynamic;
	static public var Key_F12 : Dynamic;
	static public var Key_F13 : Dynamic;
	static public var Key_F14 : Dynamic;
	static public var Key_F15 : Dynamic;
	static public var Key_F16 : Dynamic;
	static public var Key_F17 : Dynamic;
	static public var Key_F18 : Dynamic;
	static public var Key_F19 : Dynamic;
	static public var Key_F2 : Dynamic;
	static public var Key_F20 : Dynamic;
	static public var Key_F21 : Dynamic;
	static public var Key_F22 : Dynamic;
	static public var Key_F23 : Dynamic;
	static public var Key_F24 : Dynamic;
	static public var Key_F25 : Dynamic;
	static public var Key_F26 : Dynamic;
	static public var Key_F27 : Dynamic;
	static public var Key_F28 : Dynamic;
	static public var Key_F29 : Dynamic;
	static public var Key_F3 : Dynamic;
	static public var Key_F30 : Dynamic;
	static public var Key_F31 : Dynamic;
	static public var Key_F32 : Dynamic;
	static public var Key_F33 : Dynamic;
	static public var Key_F34 : Dynamic;
	static public var Key_F35 : Dynamic;
	static public var Key_F4 : Dynamic;
	static public var Key_F5 : Dynamic;
	static public var Key_F6 : Dynamic;
	static public var Key_F7 : Dynamic;
	static public var Key_F8 : Dynamic;
	static public var Key_F9 : Dynamic;
	static public var Key_Favorites : Dynamic;
	static public var Key_Finance : Dynamic;
	static public var Key_Find : Dynamic;
	static public var Key_Flip : Dynamic;
	static public var Key_Forward : Dynamic;
	static public var Key_G : Dynamic;
	static public var Key_Game : Dynamic;
	static public var Key_Go : Dynamic;
	static public var Key_Greater : Dynamic;
	static public var Key_Green : Dynamic;
	static public var Key_Guide : Dynamic;
	static public var Key_H : Dynamic;
	static public var Key_Hangul : Dynamic;
	static public var Key_Hangul_Banja : Dynamic;
	static public var Key_Hangul_End : Dynamic;
	static public var Key_Hangul_Hanja : Dynamic;
	static public var Key_Hangul_Jamo : Dynamic;
	static public var Key_Hangul_Jeonja : Dynamic;
	static public var Key_Hangul_PostHanja : Dynamic;
	static public var Key_Hangul_PreHanja : Dynamic;
	static public var Key_Hangul_Romaja : Dynamic;
	static public var Key_Hangul_Special : Dynamic;
	static public var Key_Hangul_Start : Dynamic;
	static public var Key_Hangup : Dynamic;
	static public var Key_Hankaku : Dynamic;
	static public var Key_Help : Dynamic;
	static public var Key_Henkan : Dynamic;
	static public var Key_Hibernate : Dynamic;
	static public var Key_Hiragana : Dynamic;
	static public var Key_Hiragana_Katakana : Dynamic;
	static public var Key_History : Dynamic;
	static public var Key_Home : Dynamic;
	static public var Key_HomePage : Dynamic;
	static public var Key_HotLinks : Dynamic;
	static public var Key_Hyper_L : Dynamic;
	static public var Key_Hyper_R : Dynamic;
	static public var Key_I : Dynamic;
	static public var Key_Iacute : Dynamic;
	static public var Key_Icircumflex : Dynamic;
	static public var Key_Idiaeresis : Dynamic;
	static public var Key_Igrave : Dynamic;
	static public var Key_Info : Dynamic;
	static public var Key_Insert : Dynamic;
	static public var Key_J : Dynamic;
	static public var Key_K : Dynamic;
	static public var Key_Kana_Lock : Dynamic;
	static public var Key_Kana_Shift : Dynamic;
	static public var Key_Kanji : Dynamic;
	static public var Key_Katakana : Dynamic;
	static public var Key_KeyboardBrightnessDown : Dynamic;
	static public var Key_KeyboardBrightnessUp : Dynamic;
	static public var Key_KeyboardLightOnOff : Dynamic;
	static public var Key_L : Dynamic;
	static public var Key_LastNumberRedial : Dynamic;
	static public var Key_Launch0 : Dynamic;
	static public var Key_Launch1 : Dynamic;
	static public var Key_Launch2 : Dynamic;
	static public var Key_Launch3 : Dynamic;
	static public var Key_Launch4 : Dynamic;
	static public var Key_Launch5 : Dynamic;
	static public var Key_Launch6 : Dynamic;
	static public var Key_Launch7 : Dynamic;
	static public var Key_Launch8 : Dynamic;
	static public var Key_Launch9 : Dynamic;
	static public var Key_LaunchA : Dynamic;
	static public var Key_LaunchB : Dynamic;
	static public var Key_LaunchC : Dynamic;
	static public var Key_LaunchD : Dynamic;
	static public var Key_LaunchE : Dynamic;
	static public var Key_LaunchF : Dynamic;
	static public var Key_LaunchG : Dynamic;
	static public var Key_LaunchH : Dynamic;
	static public var Key_LaunchMail : Dynamic;
	static public var Key_LaunchMedia : Dynamic;
	static public var Key_Left : Dynamic;
	static public var Key_Less : Dynamic;
	static public var Key_LightBulb : Dynamic;
	static public var Key_LogOff : Dynamic;
	static public var Key_M : Dynamic;
	static public var Key_MailForward : Dynamic;
	static public var Key_Market : Dynamic;
	static public var Key_Massyo : Dynamic;
	static public var Key_MediaLast : Dynamic;
	static public var Key_MediaNext : Dynamic;
	static public var Key_MediaPause : Dynamic;
	static public var Key_MediaPlay : Dynamic;
	static public var Key_MediaPrevious : Dynamic;
	static public var Key_MediaRecord : Dynamic;
	static public var Key_MediaStop : Dynamic;
	static public var Key_MediaTogglePlayPause : Dynamic;
	static public var Key_Meeting : Dynamic;
	static public var Key_Memo : Dynamic;
	static public var Key_Menu : Dynamic;
	static public var Key_MenuKB : Dynamic;
	static public var Key_MenuPB : Dynamic;
	static public var Key_Messenger : Dynamic;
	static public var Key_Meta : Dynamic;
	static public var Key_MicMute : Dynamic;
	static public var Key_MicVolumeDown : Dynamic;
	static public var Key_MicVolumeUp : Dynamic;
	static public var Key_Minus : Dynamic;
	static public var Key_Mode_switch : Dynamic;
	static public var Key_MonBrightnessDown : Dynamic;
	static public var Key_MonBrightnessUp : Dynamic;
	static public var Key_Muhenkan : Dynamic;
	static public var Key_Multi_key : Dynamic;
	static public var Key_MultipleCandidate : Dynamic;
	static public var Key_Music : Dynamic;
	static public var Key_MySites : Dynamic;
	static public var Key_N : Dynamic;
	static public var Key_New : Dynamic;
	static public var Key_News : Dynamic;
	static public var Key_No : Dynamic;
	static public var Key_Ntilde : Dynamic;
	static public var Key_NumLock : Dynamic;
	static public var Key_NumberSign : Dynamic;
	static public var Key_O : Dynamic;
	static public var Key_Oacute : Dynamic;
	static public var Key_Ocircumflex : Dynamic;
	static public var Key_Odiaeresis : Dynamic;
	static public var Key_OfficeHome : Dynamic;
	static public var Key_Ograve : Dynamic;
	static public var Key_Ooblique : Dynamic;
	static public var Key_Open : Dynamic;
	static public var Key_OpenUrl : Dynamic;
	static public var Key_Option : Dynamic;
	static public var Key_Otilde : Dynamic;
	static public var Key_P : Dynamic;
	static public var Key_PageDown : Dynamic;
	static public var Key_PageUp : Dynamic;
	static public var Key_ParenLeft : Dynamic;
	static public var Key_ParenRight : Dynamic;
	static public var Key_Paste : Dynamic;
	static public var Key_Pause : Dynamic;
	static public var Key_Percent : Dynamic;
	static public var Key_Period : Dynamic;
	static public var Key_Phone : Dynamic;
	static public var Key_Pictures : Dynamic;
	static public var Key_Play : Dynamic;
	static public var Key_Plus : Dynamic;
	static public var Key_PowerDown : Dynamic;
	static public var Key_PowerOff : Dynamic;
	static public var Key_PreviousCandidate : Dynamic;
	static public var Key_Print : Dynamic;
	static public var Key_Printer : Dynamic;
	static public var Key_Q : Dynamic;
	static public var Key_Question : Dynamic;
	static public var Key_QuoteDbl : Dynamic;
	static public var Key_QuoteLeft : Dynamic;
	static public var Key_R : Dynamic;
	static public var Key_Red : Dynamic;
	static public var Key_Redo : Dynamic;
	static public var Key_Refresh : Dynamic;
	static public var Key_Reload : Dynamic;
	static public var Key_Reply : Dynamic;
	static public var Key_Return : Dynamic;
	static public var Key_Right : Dynamic;
	static public var Key_Romaji : Dynamic;
	static public var Key_RotateWindows : Dynamic;
	static public var Key_RotationKB : Dynamic;
	static public var Key_RotationPB : Dynamic;
	static public var Key_S : Dynamic;
	static public var Key_Save : Dynamic;
	static public var Key_ScreenSaver : Dynamic;
	static public var Key_ScrollLock : Dynamic;
	static public var Key_Search : Dynamic;
	static public var Key_Select : Dynamic;
	static public var Key_Semicolon : Dynamic;
	static public var Key_Send : Dynamic;
	static public var Key_Settings : Dynamic;
	static public var Key_Shift : Dynamic;
	static public var Key_Shop : Dynamic;
	static public var Key_SingleCandidate : Dynamic;
	static public var Key_Slash : Dynamic;
	static public var Key_Sleep : Dynamic;
	static public var Key_Space : Dynamic;
	static public var Key_Spell : Dynamic;
	static public var Key_SplitScreen : Dynamic;
	static public var Key_Standby : Dynamic;
	static public var Key_Stop : Dynamic;
	static public var Key_Subtitle : Dynamic;
	static public var Key_Super_L : Dynamic;
	static public var Key_Super_R : Dynamic;
	static public var Key_Support : Dynamic;
	static public var Key_Suspend : Dynamic;
	static public var Key_SysReq : Dynamic;
	static public var Key_T : Dynamic;
	static public var Key_THORN : Dynamic;
	static public var Key_Tab : Dynamic;
	static public var Key_TaskPane : Dynamic;
	static public var Key_Terminal : Dynamic;
	static public var Key_Time : Dynamic;
	static public var Key_ToDoList : Dynamic;
	static public var Key_ToggleCallHangup : Dynamic;
	static public var Key_Tools : Dynamic;
	static public var Key_TopMenu : Dynamic;
	static public var Key_TouchpadOff : Dynamic;
	static public var Key_TouchpadOn : Dynamic;
	static public var Key_TouchpadToggle : Dynamic;
	static public var Key_Touroku : Dynamic;
	static public var Key_Travel : Dynamic;
	static public var Key_TrebleDown : Dynamic;
	static public var Key_TrebleUp : Dynamic;
	static public var Key_U : Dynamic;
	static public var Key_UWB : Dynamic;
	static public var Key_Uacute : Dynamic;
	static public var Key_Ucircumflex : Dynamic;
	static public var Key_Udiaeresis : Dynamic;
	static public var Key_Ugrave : Dynamic;
	static public var Key_Underscore : Dynamic;
	static public var Key_Undo : Dynamic;
	static public var Key_Up : Dynamic;
	static public var Key_V : Dynamic;
	static public var Key_Video : Dynamic;
	static public var Key_View : Dynamic;
	static public var Key_VoiceDial : Dynamic;
	static public var Key_VolumeDown : Dynamic;
	static public var Key_VolumeMute : Dynamic;
	static public var Key_VolumeUp : Dynamic;
	static public var Key_W : Dynamic;
	static public var Key_WLAN : Dynamic;
	static public var Key_WWW : Dynamic;
	static public var Key_WakeUp : Dynamic;
	static public var Key_WebCam : Dynamic;
	static public var Key_Word : Dynamic;
	static public var Key_X : Dynamic;
	static public var Key_Xfer : Dynamic;
	static public var Key_Y : Dynamic;
	static public var Key_Yacute : Dynamic;
	static public var Key_Yellow : Dynamic;
	static public var Key_Yes : Dynamic;
	static public var Key_Z : Dynamic;
	static public var Key_Zenkaku : Dynamic;
	static public var Key_Zenkaku_Hankaku : Dynamic;
	static public var Key_Zoom : Dynamic;
	static public var Key_ZoomIn : Dynamic;
	static public var Key_ZoomOut : Dynamic;
	static public var Key_acute : Dynamic;
	static public var Key_brokenbar : Dynamic;
	static public var Key_cedilla : Dynamic;
	static public var Key_cent : Dynamic;
	static public var Key_copyright : Dynamic;
	static public var Key_currency : Dynamic;
	static public var Key_degree : Dynamic;
	static public var Key_diaeresis : Dynamic;
	static public var Key_division : Dynamic;
	static public var Key_exclamdown : Dynamic;
	static public var Key_guillemotleft : Dynamic;
	static public var Key_guillemotright : Dynamic;
	static public var Key_hyphen : Dynamic;
	static public var Key_iTouch : Dynamic;
	static public var Key_macron : Dynamic;
	static public var Key_masculine : Dynamic;
	static public var Key_mu : Dynamic;
	static public var Key_multiply : Dynamic;
	static public var Key_nobreakspace : Dynamic;
	static public var Key_notsign : Dynamic;
	static public var Key_onehalf : Dynamic;
	static public var Key_onequarter : Dynamic;
	static public var Key_onesuperior : Dynamic;
	static public var Key_ordfeminine : Dynamic;
	static public var Key_paragraph : Dynamic;
	static public var Key_periodcentered : Dynamic;
	static public var Key_plusminus : Dynamic;
	static public var Key_questiondown : Dynamic;
	static public var Key_registered : Dynamic;
	static public var Key_section : Dynamic;
	static public var Key_ssharp : Dynamic;
	static public var Key_sterling : Dynamic;
	static public var Key_threequarters : Dynamic;
	static public var Key_threesuperior : Dynamic;
	static public var Key_twosuperior : Dynamic;
	static public var Key_unknown : Dynamic;
	static public var Key_ydiaeresis : Dynamic;
	static public var Key_yen : Dynamic;
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
	public function KeyboardModifier(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var KeyboardModifierMask : Dynamic;
	/**
		Qt.KeyboardModifiers()
		Qt.KeyboardModifiers(Union[Qt.KeyboardModifiers, Qt.KeyboardModifier])
		Qt.KeyboardModifiers(Qt.KeyboardModifiers)
	**/
	static public function KeyboardModifiers(args:haxe.extern.Rest<Dynamic>):Void;
	static public var KeypadModifier : Dynamic;
	static public var LandscapeOrientation : Dynamic;
	static public var LastCursor : Dynamic;
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
	public function LayoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var LayoutDirectionAuto : Dynamic;
	static public var LeftArrow : Dynamic;
	static public var LeftButton : Dynamic;
	static public var LeftDockWidgetArea : Dynamic;
	static public var LeftEdge : Dynamic;
	static public var LeftSection : Dynamic;
	static public var LeftToRight : Dynamic;
	static public var LeftToolBarArea : Dynamic;
	static public var LinearGradientPattern : Dynamic;
	static public var LinkAction : Dynamic;
	static public var LinksAccessibleByKeyboard : Dynamic;
	static public var LinksAccessibleByMouse : Dynamic;
	static public var LocalDate : Dynamic;
	static public var LocalTime : Dynamic;
	static public var LocaleDate : Dynamic;
	static public var LogicalCoordinates : Dynamic;
	static public var LogicalMoveStyle : Dynamic;
	static public var LowEventPriority : Dynamic;
	static public var META : Dynamic;
	static public var MODIFIER_MASK : Dynamic;
	static public var MPenCapStyle : Dynamic;
	static public var MPenJoinStyle : Dynamic;
	static public var MPenStyle : Dynamic;
	static public var MSWindowsFixedSizeDialogHint : Dynamic;
	static public var MSWindowsOwnDC : Dynamic;
	static public var MacWindowToolBarButtonHint : Dynamic;
	static public var MaskInColor : Dynamic;
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
	public function MaskMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var MaskOutColor : Dynamic;
	static public var MatchCaseSensitive : Dynamic;
	static public var MatchContains : Dynamic;
	static public var MatchEndsWith : Dynamic;
	static public var MatchExactly : Dynamic;
	static public var MatchFixedString : Dynamic;
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
	public function MatchFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Qt.MatchFlags()
		Qt.MatchFlags(Union[Qt.MatchFlags, Qt.MatchFlag])
		Qt.MatchFlags(Qt.MatchFlags)
	**/
	static public function MatchFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var MatchRecursive : Dynamic;
	static public var MatchRegExp : Dynamic;
	static public var MatchStartsWith : Dynamic;
	static public var MatchWildcard : Dynamic;
	static public var MatchWrap : Dynamic;
	static public var MaximizeUsingFullscreenGeometryHint : Dynamic;
	static public var MaximumSize : Dynamic;
	static public var MenuBarFocusReason : Dynamic;
	static public var MetaModifier : Dynamic;
	static public var MidButton : Dynamic;
	static public var MiddleButton : Dynamic;
	static public var MinimumDescent : Dynamic;
	static public var MinimumSize : Dynamic;
	static public var MiterJoin : Dynamic;
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
	public function Modifier(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Monday : Dynamic;
	static public var MonoOnly : Dynamic;
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
	public function MouseButton(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Qt.MouseButtons()
		Qt.MouseButtons(Union[Qt.MouseButtons, Qt.MouseButton])
		Qt.MouseButtons(Qt.MouseButtons)
	**/
	static public function MouseButtons(args:haxe.extern.Rest<Dynamic>):Void;
	static public var MouseEventCreatedDoubleClick : Dynamic;
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
	public function MouseEventFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Qt.MouseEventFlags()
		Qt.MouseEventFlags(Union[Qt.MouseEventFlags, Qt.MouseEventFlag])
		Qt.MouseEventFlags(Qt.MouseEventFlags)
	**/
	static public function MouseEventFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var MouseEventNotSynthesized : Dynamic;
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
	public function MouseEventSource(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var MouseEventSynthesizedByApplication : Dynamic;
	static public var MouseEventSynthesizedByQt : Dynamic;
	static public var MouseEventSynthesizedBySystem : Dynamic;
	static public var MouseFocusReason : Dynamic;
	static public var MoveAction : Dynamic;
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
	public function NativeGestureType(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function NavigationMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NavigationModeCursorAuto : Dynamic;
	static public var NavigationModeCursorForceVisible : Dynamic;
	static public var NavigationModeKeypadDirectional : Dynamic;
	static public var NavigationModeKeypadTabOrder : Dynamic;
	static public var NavigationModeNone : Dynamic;
	static public var NoArrow : Dynamic;
	static public var NoBrush : Dynamic;
	static public var NoButton : Dynamic;
	static public var NoClip : Dynamic;
	static public var NoContextMenu : Dynamic;
	static public var NoDockWidgetArea : Dynamic;
	static public var NoDropShadowWindowHint : Dynamic;
	static public var NoFocus : Dynamic;
	static public var NoFocusReason : Dynamic;
	static public var NoFormatConversion : Dynamic;
	static public var NoItemFlags : Dynamic;
	static public var NoModifier : Dynamic;
	static public var NoOpaqueDetection : Dynamic;
	static public var NoPen : Dynamic;
	static public var NoScrollPhase : Dynamic;
	static public var NoSection : Dynamic;
	static public var NoTabFocus : Dynamic;
	static public var NoTextInteraction : Dynamic;
	static public var NoToolBarArea : Dynamic;
	static public var NonModal : Dynamic;
	static public var NormalEventPriority : Dynamic;
	static public var OddEvenFill : Dynamic;
	static public var OffsetFromUTC : Dynamic;
	static public var OpaqueMode : Dynamic;
	static public var OpenHandCursor : Dynamic;
	static public var OrderedAlphaDither : Dynamic;
	static public var OrderedDither : Dynamic;
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
	public function Orientation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Qt.Orientations()
		Qt.Orientations(Union[Qt.Orientations, Qt.Orientation])
		Qt.Orientations(Qt.Orientations)
	**/
	static public function Orientations(args:haxe.extern.Rest<Dynamic>):Void;
	static public var OtherFocusReason : Dynamic;
	static public var PanGesture : Dynamic;
	static public var PanNativeGesture : Dynamic;
	static public var PartiallyChecked : Dynamic;
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
	public function PenCapStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function PenJoinStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function PenStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PinchGesture : Dynamic;
	static public var PlainText : Dynamic;
	static public var PointingHandCursor : Dynamic;
	static public var Popup : Dynamic;
	static public var PopupFocusReason : Dynamic;
	static public var PortraitOrientation : Dynamic;
	static public var PreciseTimer : Dynamic;
	static public var PreferDither : Dynamic;
	static public var PreferredSize : Dynamic;
	static public var PreventContextMenu : Dynamic;
	static public var PrimaryOrientation : Dynamic;
	static public var QueuedConnection : Dynamic;
	static public var RFC2822Date : Dynamic;
	static public var RadialGradientPattern : Dynamic;
	static public var ReceivePartialGestures : Dynamic;
	static public var RelativeSize : Dynamic;
	static public var RepeatTile : Dynamic;
	static public var ReplaceClip : Dynamic;
	static public var ReplaceSelection : Dynamic;
	static public var RichText : Dynamic;
	static public var RightArrow : Dynamic;
	static public var RightButton : Dynamic;
	static public var RightDockWidgetArea : Dynamic;
	static public var RightEdge : Dynamic;
	static public var RightSection : Dynamic;
	static public var RightToLeft : Dynamic;
	static public var RightToolBarArea : Dynamic;
	static public var RotateNativeGesture : Dynamic;
	static public var RoundCap : Dynamic;
	static public var RoundJoin : Dynamic;
	static public var RoundTile : Dynamic;
	static public var SHIFT : Dynamic;
	static public var Saturday : Dynamic;
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
	public function ScreenOrientation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Qt.ScreenOrientations()
		Qt.ScreenOrientations(Union[Qt.ScreenOrientations, Qt.ScreenOrientation])
		Qt.ScreenOrientations(Qt.ScreenOrientations)
	**/
	static public function ScreenOrientations(args:haxe.extern.Rest<Dynamic>):Void;
	static public var ScrollBarAlwaysOff : Dynamic;
	static public var ScrollBarAlwaysOn : Dynamic;
	static public var ScrollBarAsNeeded : Dynamic;
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
	public function ScrollBarPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ScrollBegin : Dynamic;
	static public var ScrollEnd : Dynamic;
	static public var ScrollMomentum : Dynamic;
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
	public function ScrollPhase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ScrollUpdate : Dynamic;
	static public var Sheet : Dynamic;
	static public var ShiftModifier : Dynamic;
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
	public function ShortcutContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ShortcutFocusReason : Dynamic;
	static public var SizeAllCursor : Dynamic;
	static public var SizeBDiagCursor : Dynamic;
	static public var SizeFDiagCursor : Dynamic;
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
	public function SizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SizeHintRole : Dynamic;
	static public var SizeHorCursor : Dynamic;
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
	public function SizeMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SizeVerCursor : Dynamic;
	static public var SmartZoomNativeGesture : Dynamic;
	static public var SmoothTransformation : Dynamic;
	static public var SolidLine : Dynamic;
	static public var SolidPattern : Dynamic;
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
	public function SortOrder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SplashScreen : Dynamic;
	static public var SplitHCursor : Dynamic;
	static public var SplitVCursor : Dynamic;
	static public var SquareCap : Dynamic;
	static public var StatusTipRole : Dynamic;
	static public var StretchTile : Dynamic;
	static public var StrongFocus : Dynamic;
	static public var SubWindow : Dynamic;
	static public var Sunday : Dynamic;
	static public var SvgMiterJoin : Dynamic;
	static public var SwipeGesture : Dynamic;
	static public var SwipeNativeGesture : Dynamic;
	static public var SystemLocaleDate : Dynamic;
	static public var SystemLocaleLongDate : Dynamic;
	static public var SystemLocaleShortDate : Dynamic;
	static public var TabFocus : Dynamic;
	static public var TabFocusAllControls : Dynamic;
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
	public function TabFocusBehavior(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TabFocusListControls : Dynamic;
	static public var TabFocusReason : Dynamic;
	static public var TabFocusTextControls : Dynamic;
	static public var TapAndHoldGesture : Dynamic;
	static public var TapGesture : Dynamic;
	static public var TargetMoveAction : Dynamic;
	static public var TaskButton : Dynamic;
	static public var TextAlignmentRole : Dynamic;
	static public var TextBrowserInteraction : Dynamic;
	static public var TextColorRole : Dynamic;
	static public var TextDate : Dynamic;
	static public var TextDontClip : Dynamic;
	static public var TextDontPrint : Dynamic;
	static public var TextEditable : Dynamic;
	static public var TextEditorInteraction : Dynamic;
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
	public function TextElideMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TextExpandTabs : Dynamic;
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
	public function TextFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function TextFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TextHideMnemonic : Dynamic;
	static public var TextIncludeTrailingSpaces : Dynamic;
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
	public function TextInteractionFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Qt.TextInteractionFlags()
		Qt.TextInteractionFlags(Union[Qt.TextInteractionFlags, Qt.TextInteractionFlag])
		Qt.TextInteractionFlags(Qt.TextInteractionFlags)
	**/
	static public function TextInteractionFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var TextJustificationForced : Dynamic;
	static public var TextSelectableByKeyboard : Dynamic;
	static public var TextSelectableByMouse : Dynamic;
	static public var TextShowMnemonic : Dynamic;
	static public var TextSingleLine : Dynamic;
	static public var TextWordWrap : Dynamic;
	static public var TextWrapAnywhere : Dynamic;
	static public var TexturePattern : Dynamic;
	static public var ThresholdAlphaDither : Dynamic;
	static public var ThresholdDither : Dynamic;
	static public var Thursday : Dynamic;
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
	public function TileRule(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function TimeSpec(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TimeZone : Dynamic;
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
	public function TimerType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TitleBarArea : Dynamic;
	static public var Tool : Dynamic;
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
	public function ToolBarArea(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ToolBarArea_Mask : Dynamic;
	/**
		Qt.ToolBarAreas()
		Qt.ToolBarAreas(Union[Qt.ToolBarAreas, Qt.ToolBarArea])
		Qt.ToolBarAreas(Qt.ToolBarAreas)
	**/
	static public function ToolBarAreas(args:haxe.extern.Rest<Dynamic>):Void;
	static public var ToolButtonFollowStyle : Dynamic;
	static public var ToolButtonIconOnly : Dynamic;
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
	public function ToolButtonStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ToolButtonTextBesideIcon : Dynamic;
	static public var ToolButtonTextOnly : Dynamic;
	static public var ToolButtonTextUnderIcon : Dynamic;
	static public var ToolTip : Dynamic;
	static public var ToolTipRole : Dynamic;
	static public var TopDockWidgetArea : Dynamic;
	static public var TopEdge : Dynamic;
	static public var TopLeftCorner : Dynamic;
	static public var TopLeftSection : Dynamic;
	static public var TopRightCorner : Dynamic;
	static public var TopRightSection : Dynamic;
	static public var TopSection : Dynamic;
	static public var TopToolBarArea : Dynamic;
	static public var TouchPointMoved : Dynamic;
	static public var TouchPointPressed : Dynamic;
	static public var TouchPointReleased : Dynamic;
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
	public function TouchPointState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Qt.TouchPointStates()
		Qt.TouchPointStates(Union[Qt.TouchPointStates, Qt.TouchPointState])
		Qt.TouchPointStates(Qt.TouchPointStates)
	**/
	static public function TouchPointStates(args:haxe.extern.Rest<Dynamic>):Void;
	static public var TouchPointStationary : Dynamic;
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
	public function TransformationMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TransparentMode : Dynamic;
	static public var Tuesday : Dynamic;
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
	public function UIEffect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var UI_AnimateCombo : Dynamic;
	static public var UI_AnimateMenu : Dynamic;
	static public var UI_AnimateToolBox : Dynamic;
	static public var UI_AnimateTooltip : Dynamic;
	static public var UI_FadeMenu : Dynamic;
	static public var UI_FadeTooltip : Dynamic;
	static public var UI_General : Dynamic;
	static public var UNICODE_ACCEL : Dynamic;
	static public var UTC : Dynamic;
	static public var Unchecked : Dynamic;
	static public var UniqueConnection : Dynamic;
	static public var UpArrow : Dynamic;
	static public var UpArrowCursor : Dynamic;
	static public var UserRole : Dynamic;
	static public var VerPattern : Dynamic;
	static public var Vertical : Dynamic;
	static public var VeryCoarseTimer : Dynamic;
	static public var VisualMoveStyle : Dynamic;
	static public var WA_AcceptDrops : Dynamic;
	static public var WA_AcceptTouchEvents : Dynamic;
	static public var WA_AlwaysShowToolTips : Dynamic;
	static public var WA_AlwaysStackOnTop : Dynamic;
	static public var WA_AttributeCount : Dynamic;
	static public var WA_ContentsMarginsRespectsSafeArea : Dynamic;
	static public var WA_CustomWhatsThis : Dynamic;
	static public var WA_DeleteOnClose : Dynamic;
	static public var WA_Disabled : Dynamic;
	static public var WA_DontCreateNativeAncestors : Dynamic;
	static public var WA_DontShowOnScreen : Dynamic;
	static public var WA_ForceDisabled : Dynamic;
	static public var WA_ForceUpdatesDisabled : Dynamic;
	static public var WA_GrabbedShortcut : Dynamic;
	static public var WA_GroupLeader : Dynamic;
	static public var WA_Hover : Dynamic;
	static public var WA_InputMethodEnabled : Dynamic;
	static public var WA_InputMethodTransparent : Dynamic;
	static public var WA_InvalidSize : Dynamic;
	static public var WA_KeyCompression : Dynamic;
	static public var WA_KeyboardFocusChange : Dynamic;
	static public var WA_LaidOut : Dynamic;
	static public var WA_LayoutOnEntireRect : Dynamic;
	static public var WA_LayoutUsesWidgetRect : Dynamic;
	static public var WA_MSWindowsUseDirect3D : Dynamic;
	static public var WA_MacAlwaysShowToolWindow : Dynamic;
	static public var WA_MacBrushedMetal : Dynamic;
	static public var WA_MacFrameworkScaled : Dynamic;
	static public var WA_MacMetalStyle : Dynamic;
	static public var WA_MacMiniSize : Dynamic;
	static public var WA_MacNoClickThrough : Dynamic;
	static public var WA_MacNoShadow : Dynamic;
	static public var WA_MacNormalSize : Dynamic;
	static public var WA_MacOpaqueSizeGrip : Dynamic;
	static public var WA_MacShowFocusRect : Dynamic;
	static public var WA_MacSmallSize : Dynamic;
	static public var WA_MacVariableSize : Dynamic;
	static public var WA_Mapped : Dynamic;
	static public var WA_MouseNoMask : Dynamic;
	static public var WA_MouseTracking : Dynamic;
	static public var WA_Moved : Dynamic;
	static public var WA_NativeWindow : Dynamic;
	static public var WA_NoChildEventsForParent : Dynamic;
	static public var WA_NoChildEventsFromChildren : Dynamic;
	static public var WA_NoMousePropagation : Dynamic;
	static public var WA_NoMouseReplay : Dynamic;
	static public var WA_NoSystemBackground : Dynamic;
	static public var WA_NoX11EventCompression : Dynamic;
	static public var WA_OpaquePaintEvent : Dynamic;
	static public var WA_OutsideWSRange : Dynamic;
	static public var WA_PaintOnScreen : Dynamic;
	static public var WA_PaintUnclipped : Dynamic;
	static public var WA_PendingMoveEvent : Dynamic;
	static public var WA_PendingResizeEvent : Dynamic;
	static public var WA_PendingUpdate : Dynamic;
	static public var WA_QuitOnClose : Dynamic;
	static public var WA_Resized : Dynamic;
	static public var WA_RightToLeft : Dynamic;
	static public var WA_SetCursor : Dynamic;
	static public var WA_SetFont : Dynamic;
	static public var WA_SetLayoutDirection : Dynamic;
	static public var WA_SetLocale : Dynamic;
	static public var WA_SetPalette : Dynamic;
	static public var WA_SetStyle : Dynamic;
	static public var WA_SetWindowIcon : Dynamic;
	static public var WA_ShowWithoutActivating : Dynamic;
	static public var WA_StaticContents : Dynamic;
	static public var WA_StyleSheet : Dynamic;
	static public var WA_StyleSheetTarget : Dynamic;
	static public var WA_StyledBackground : Dynamic;
	static public var WA_TabletTracking : Dynamic;
	static public var WA_TintedBackground : Dynamic;
	static public var WA_TouchPadAcceptSingleTouchEvents : Dynamic;
	static public var WA_TranslucentBackground : Dynamic;
	static public var WA_TransparentForMouseEvents : Dynamic;
	static public var WA_UnderMouse : Dynamic;
	static public var WA_UpdatesDisabled : Dynamic;
	static public var WA_WState_CompressKeys : Dynamic;
	static public var WA_WState_ConfigPending : Dynamic;
	static public var WA_WState_Created : Dynamic;
	static public var WA_WState_ExplicitShowHide : Dynamic;
	static public var WA_WState_Hidden : Dynamic;
	static public var WA_WState_InPaintEvent : Dynamic;
	static public var WA_WState_OwnSizePolicy : Dynamic;
	static public var WA_WState_Polished : Dynamic;
	static public var WA_WState_Reparented : Dynamic;
	static public var WA_WState_Visible : Dynamic;
	static public var WA_WindowModified : Dynamic;
	static public var WA_WindowPropagation : Dynamic;
	static public var WA_X11DoNotAcceptFocus : Dynamic;
	static public var WA_X11NetWmWindowTypeCombo : Dynamic;
	static public var WA_X11NetWmWindowTypeDND : Dynamic;
	static public var WA_X11NetWmWindowTypeDesktop : Dynamic;
	static public var WA_X11NetWmWindowTypeDialog : Dynamic;
	static public var WA_X11NetWmWindowTypeDock : Dynamic;
	static public var WA_X11NetWmWindowTypeDropDownMenu : Dynamic;
	static public var WA_X11NetWmWindowTypeMenu : Dynamic;
	static public var WA_X11NetWmWindowTypeNotification : Dynamic;
	static public var WA_X11NetWmWindowTypePopupMenu : Dynamic;
	static public var WA_X11NetWmWindowTypeSplash : Dynamic;
	static public var WA_X11NetWmWindowTypeToolBar : Dynamic;
	static public var WA_X11NetWmWindowTypeToolTip : Dynamic;
	static public var WA_X11NetWmWindowTypeUtility : Dynamic;
	static public var WA_X11OpenGLOverlay : Dynamic;
	static public var WaitCursor : Dynamic;
	static public var Wednesday : Dynamic;
	static public var WhatsThisCursor : Dynamic;
	static public var WhatsThisRole : Dynamic;
	static public var WheelFocus : Dynamic;
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
	public function WhiteSpaceMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var WhiteSpaceModeUndefined : Dynamic;
	static public var WhiteSpaceNoWrap : Dynamic;
	static public var WhiteSpaceNormal : Dynamic;
	static public var WhiteSpacePre : Dynamic;
	static public var Widget : Dynamic;
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
	public function WidgetAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var WidgetShortcut : Dynamic;
	static public var WidgetWithChildrenShortcut : Dynamic;
	static public var WindingFill : Dynamic;
	static public var Window : Dynamic;
	static public var WindowActive : Dynamic;
	static public var WindowCloseButtonHint : Dynamic;
	static public var WindowContextHelpButtonHint : Dynamic;
	static public var WindowDoesNotAcceptFocus : Dynamic;
	/**
		Qt.WindowFlags()
		Qt.WindowFlags(Union[Qt.WindowFlags, Qt.WindowType])
		Qt.WindowFlags(Qt.WindowFlags)
	**/
	static public function WindowFlags(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function WindowFrameSection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var WindowFullScreen : Dynamic;
	static public var WindowFullscreenButtonHint : Dynamic;
	static public var WindowMaximizeButtonHint : Dynamic;
	static public var WindowMaximized : Dynamic;
	static public var WindowMinMaxButtonsHint : Dynamic;
	static public var WindowMinimizeButtonHint : Dynamic;
	static public var WindowMinimized : Dynamic;
	static public var WindowModal : Dynamic;
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
	public function WindowModality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var WindowNoState : Dynamic;
	static public var WindowOverridesSystemGestures : Dynamic;
	static public var WindowShadeButtonHint : Dynamic;
	static public var WindowShortcut : Dynamic;
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
	public function WindowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Qt.WindowStates()
		Qt.WindowStates(Union[Qt.WindowStates, Qt.WindowState])
		Qt.WindowStates(Qt.WindowStates)
	**/
	static public function WindowStates(args:haxe.extern.Rest<Dynamic>):Void;
	static public var WindowStaysOnBottomHint : Dynamic;
	static public var WindowStaysOnTopHint : Dynamic;
	static public var WindowSystemMenuHint : Dynamic;
	static public var WindowTitleHint : Dynamic;
	static public var WindowTransparentForInput : Dynamic;
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
	public function WindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var WindowType_Mask : Dynamic;
	static public var X11BypassWindowManagerHint : Dynamic;
	static public var XAxis : Dynamic;
	static public var XButton1 : Dynamic;
	static public var XButton2 : Dynamic;
	static public var YAxis : Dynamic;
	static public var ZAxis : Dynamic;
	static public var ZoomNativeGesture : Dynamic;
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
	static public var black : Dynamic;
	static public var blue : Dynamic;
	static public var color0 : Dynamic;
	static public var color1 : Dynamic;
	/**
		convertFromPlainText(str, mode: Qt.WhiteSpaceMode = Qt.WhiteSpacePre) -> str
	**/
	static public function convertFromPlainText(str:String, ?mode:Dynamic):String;
	static public var cyan : Dynamic;
	static public var darkBlue : Dynamic;
	static public var darkCyan : Dynamic;
	static public var darkGray : Dynamic;
	static public var darkGreen : Dynamic;
	static public var darkMagenta : Dynamic;
	static public var darkRed : Dynamic;
	static public var darkYellow : Dynamic;
	static public var gray : Dynamic;
	static public var green : Dynamic;
	static public var lightGray : Dynamic;
	static public var magenta : Dynamic;
	/**
		mightBeRichText(str) -> bool
	**/
	static public function mightBeRichText(str:String):Bool;
	static public var red : Dynamic;
	static public var transparent : Dynamic;
	static public var white : Dynamic;
	static public var yellow : Dynamic;
}