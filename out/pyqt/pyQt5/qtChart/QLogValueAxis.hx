/* This file is generated, do not edit! */
package pyQt5.qtChart;
@:pythonImport("PyQt5.QtChart", "QLogValueAxis") extern class QLogValueAxis {
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
	public function AxisType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var AxisTypeBarCategory : Dynamic;
	static public var AxisTypeCategory : Dynamic;
	static public var AxisTypeDateTime : Dynamic;
	static public var AxisTypeLogValue : Dynamic;
	static public var AxisTypeNoAxis : Dynamic;
	static public var AxisTypeValue : Dynamic;
	/**
		QAbstractAxis.AxisTypes()
		QAbstractAxis.AxisTypes(Union[QAbstractAxis.AxisTypes, QAbstractAxis.AxisType])
		QAbstractAxis.AxisTypes(QAbstractAxis.AxisTypes)
	**/
	static public function AxisTypes(args:haxe.extern.Rest<Dynamic>):Void;
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
		alignment(self) -> Qt.Alignment
	**/
	public function alignment():Dynamic;
	/**
		base(self) -> float
	**/
	public function base():Float;
	/**
		baseChanged(self, float) [signal]
	**/
	public var baseChanged : Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> List[QObject]
	**/
	public function children():Dynamic;
	/**
		colorChanged(self, Union[QColor, Qt.GlobalColor, QGradient]) [signal]
	**/
	public var colorChanged : Dynamic;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		deleteLater(self)
	**/
	public function deleteLater():Void;
	/**
		destroyed(self, object: QObject = None) [signal]
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
		dumpObjectInfo(self)
	**/
	public function dumpObjectInfo():Void;
	/**
		dumpObjectTree(self)
	**/
	public function dumpObjectTree():Void;
	/**
		dynamicPropertyNames(self) -> List[QByteArray]
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
		gridLineColor(self) -> QColor
	**/
	public function gridLineColor():Dynamic;
	/**
		gridLineColorChanged(self, Union[QColor, Qt.GlobalColor, QGradient]) [signal]
	**/
	public var gridLineColorChanged : Dynamic;
	/**
		gridLinePen(self) -> QPen
	**/
	public function gridLinePen():Dynamic;
	/**
		gridLinePenChanged(self, Union[QPen, QColor, Qt.GlobalColor, QGradient]) [signal]
	**/
	public var gridLinePenChanged : Dynamic;
	/**
		gridVisibleChanged(self, bool) [signal]
	**/
	public var gridVisibleChanged : Dynamic;
	/**
		hide(self)
	**/
	public function hide():Void;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isGridLineVisible(self) -> bool
	**/
	public function isGridLineVisible():Bool;
	/**
		isLineVisible(self) -> bool
	**/
	public function isLineVisible():Bool;
	/**
		isMinorGridLineVisible(self) -> bool
	**/
	public function isMinorGridLineVisible():Bool;
	/**
		isReverse(self) -> bool
	**/
	public function isReverse():Bool;
	/**
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	public function isSignalConnected(QMetaMethod:Dynamic):Bool;
	/**
		isTitleVisible(self) -> bool
	**/
	public function isTitleVisible():Bool;
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
		killTimer(self, int)
	**/
	public function killTimer(int:Int):Void;
	/**
		labelFormat(self) -> str
	**/
	public function labelFormat():String;
	/**
		labelFormatChanged(self, str) [signal]
	**/
	public var labelFormatChanged : Dynamic;
	/**
		labelsAngle(self) -> int
	**/
	public function labelsAngle():Int;
	/**
		labelsAngleChanged(self, int) [signal]
	**/
	public var labelsAngleChanged : Dynamic;
	/**
		labelsBrush(self) -> QBrush
	**/
	public function labelsBrush():Dynamic;
	/**
		labelsBrushChanged(self, Union[QBrush, QColor, Qt.GlobalColor, QGradient]) [signal]
	**/
	public var labelsBrushChanged : Dynamic;
	/**
		labelsColor(self) -> QColor
	**/
	public function labelsColor():Dynamic;
	/**
		labelsColorChanged(self, Union[QColor, Qt.GlobalColor, QGradient]) [signal]
	**/
	public var labelsColorChanged : Dynamic;
	/**
		labelsFont(self) -> QFont
	**/
	public function labelsFont():Dynamic;
	/**
		labelsFontChanged(self, QFont) [signal]
	**/
	public var labelsFontChanged : Dynamic;
	/**
		labelsVisible(self) -> bool
	**/
	public function labelsVisible():Bool;
	/**
		labelsVisibleChanged(self, bool) [signal]
	**/
	public var labelsVisibleChanged : Dynamic;
	/**
		linePen(self) -> QPen
	**/
	public function linePen():Dynamic;
	/**
		linePenChanged(self, Union[QPen, QColor, Qt.GlobalColor, QGradient]) [signal]
	**/
	public var linePenChanged : Dynamic;
	/**
		linePenColor(self) -> QColor
	**/
	public function linePenColor():Dynamic;
	/**
		lineVisibleChanged(self, bool) [signal]
	**/
	public var lineVisibleChanged : Dynamic;
	/**
		max(self) -> float
	**/
	public function max():Float;
	/**
		maxChanged(self, float) [signal]
	**/
	public var maxChanged : Dynamic;
	/**
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
	/**
		min(self) -> float
	**/
	public function min():Float;
	/**
		minChanged(self, float) [signal]
	**/
	public var minChanged : Dynamic;
	/**
		minorGridLineColor(self) -> QColor
	**/
	public function minorGridLineColor():Dynamic;
	/**
		minorGridLineColorChanged(self, Union[QColor, Qt.GlobalColor, QGradient]) [signal]
	**/
	public var minorGridLineColorChanged : Dynamic;
	/**
		minorGridLinePen(self) -> QPen
	**/
	public function minorGridLinePen():Dynamic;
	/**
		minorGridLinePenChanged(self, Union[QPen, QColor, Qt.GlobalColor, QGradient]) [signal]
	**/
	public var minorGridLinePenChanged : Dynamic;
	/**
		minorGridVisibleChanged(self, bool) [signal]
	**/
	public var minorGridVisibleChanged : Dynamic;
	/**
		minorTickCount(self) -> int
	**/
	public function minorTickCount():Int;
	/**
		minorTickCountChanged(self, int) [signal]
	**/
	public var minorTickCountChanged : Dynamic;
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
		orientation(self) -> Qt.Orientation
	**/
	public function orientation():Dynamic;
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
		rangeChanged(self, float, float) [signal]
	**/
	public var rangeChanged : Dynamic;
	/**
		receivers(self, PYQT_SIGNAL) -> int
	**/
	public function receivers(PYQT:Dynamic):Int;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		reverseChanged(self, bool) [signal]
	**/
	public var reverseChanged : Dynamic;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setBase(self, float)
	**/
	public function setBase(float:Float):Void;
	/**
		setGridLineColor(self, Union[QColor, Qt.GlobalColor, QGradient])
	**/
	public function setGridLineColor(Union:Dynamic):Void;
	/**
		setGridLinePen(self, Union[QPen, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setGridLinePen(Union:Dynamic):Void;
	/**
		setGridLineVisible(self, visible: bool = True)
	**/
	public function setGridLineVisible(?visible:Dynamic):Void;
	/**
		setLabelFormat(self, str)
	**/
	public function setLabelFormat(str:String):Void;
	/**
		setLabelsAngle(self, int)
	**/
	public function setLabelsAngle(int:Int):Void;
	/**
		setLabelsBrush(self, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setLabelsBrush(Union:Dynamic):Void;
	/**
		setLabelsColor(self, Union[QColor, Qt.GlobalColor, QGradient])
	**/
	public function setLabelsColor(Union:Dynamic):Void;
	/**
		setLabelsFont(self, QFont)
	**/
	public function setLabelsFont(QFont:Dynamic):Void;
	/**
		setLabelsVisible(self, visible: bool = True)
	**/
	public function setLabelsVisible(?visible:Dynamic):Void;
	/**
		setLinePen(self, Union[QPen, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setLinePen(Union:Dynamic):Void;
	/**
		setLinePenColor(self, Union[QColor, Qt.GlobalColor, QGradient])
	**/
	public function setLinePenColor(Union:Dynamic):Void;
	/**
		setLineVisible(self, visible: bool = True)
	**/
	public function setLineVisible(?visible:Dynamic):Void;
	/**
		setMax(self, float)
	**/
	public function setMax(float:Float):Void;
	/**
		setMin(self, float)
	**/
	public function setMin(float:Float):Void;
	/**
		setMinorGridLineColor(self, Union[QColor, Qt.GlobalColor, QGradient])
	**/
	public function setMinorGridLineColor(Union:Dynamic):Void;
	/**
		setMinorGridLinePen(self, Union[QPen, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setMinorGridLinePen(Union:Dynamic):Void;
	/**
		setMinorGridLineVisible(self, visible: bool = True)
	**/
	public function setMinorGridLineVisible(?visible:Dynamic):Void;
	/**
		setMinorTickCount(self, int)
	**/
	public function setMinorTickCount(int:Int):Void;
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
		setRange(self, float, float)
	**/
	public function setRange(float:Float, float:Float):Void;
	/**
		setReverse(self, reverse: bool = True)
	**/
	public function setReverse(?reverse:Dynamic):Void;
	/**
		setShadesBorderColor(self, Union[QColor, Qt.GlobalColor, QGradient])
	**/
	public function setShadesBorderColor(Union:Dynamic):Void;
	/**
		setShadesBrush(self, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setShadesBrush(Union:Dynamic):Void;
	/**
		setShadesColor(self, Union[QColor, Qt.GlobalColor, QGradient])
	**/
	public function setShadesColor(Union:Dynamic):Void;
	/**
		setShadesPen(self, Union[QPen, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setShadesPen(Union:Dynamic):Void;
	/**
		setShadesVisible(self, visible: bool = True)
	**/
	public function setShadesVisible(?visible:Dynamic):Void;
	/**
		setTitleBrush(self, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setTitleBrush(Union:Dynamic):Void;
	/**
		setTitleFont(self, QFont)
	**/
	public function setTitleFont(QFont:Dynamic):Void;
	/**
		setTitleText(self, str)
	**/
	public function setTitleText(str:String):Void;
	/**
		setTitleVisible(self, visible: bool = True)
	**/
	public function setTitleVisible(?visible:Dynamic):Void;
	/**
		setVisible(self, visible: bool = True)
	**/
	public function setVisible(?visible:Dynamic):Void;
	/**
		shadesBorderColor(self) -> QColor
	**/
	public function shadesBorderColor():Dynamic;
	/**
		shadesBorderColorChanged(self, Union[QColor, Qt.GlobalColor, QGradient]) [signal]
	**/
	public var shadesBorderColorChanged : Dynamic;
	/**
		shadesBrush(self) -> QBrush
	**/
	public function shadesBrush():Dynamic;
	/**
		shadesBrushChanged(self, Union[QBrush, QColor, Qt.GlobalColor, QGradient]) [signal]
	**/
	public var shadesBrushChanged : Dynamic;
	/**
		shadesColor(self) -> QColor
	**/
	public function shadesColor():Dynamic;
	/**
		shadesColorChanged(self, Union[QColor, Qt.GlobalColor, QGradient]) [signal]
	**/
	public var shadesColorChanged : Dynamic;
	/**
		shadesPen(self) -> QPen
	**/
	public function shadesPen():Dynamic;
	/**
		shadesPenChanged(self, Union[QPen, QColor, Qt.GlobalColor, QGradient]) [signal]
	**/
	public var shadesPenChanged : Dynamic;
	/**
		shadesVisible(self) -> bool
	**/
	public function shadesVisible():Bool;
	/**
		shadesVisibleChanged(self, bool) [signal]
	**/
	public var shadesVisibleChanged : Dynamic;
	/**
		show(self)
	**/
	public function show():Void;
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
		tickCount(self) -> int
	**/
	public function tickCount():Int;
	/**
		tickCountChanged(self, int) [signal]
	**/
	public var tickCountChanged : Dynamic;
	/**
		timerEvent(self, QTimerEvent)
	**/
	public function timerEvent(QTimerEvent:Dynamic):Void;
	/**
		titleBrush(self) -> QBrush
	**/
	public function titleBrush():Dynamic;
	/**
		titleBrushChanged(self, Union[QBrush, QColor, Qt.GlobalColor, QGradient]) [signal]
	**/
	public var titleBrushChanged : Dynamic;
	/**
		titleFont(self) -> QFont
	**/
	public function titleFont():Dynamic;
	/**
		titleFontChanged(self, QFont) [signal]
	**/
	public var titleFontChanged : Dynamic;
	/**
		titleText(self) -> str
	**/
	public function titleText():String;
	/**
		titleTextChanged(self, str) [signal]
	**/
	public var titleTextChanged : Dynamic;
	/**
		titleVisibleChanged(self, bool) [signal]
	**/
	public var titleVisibleChanged : Dynamic;
	/**
		tr(self, str, disambiguation: str = None, n: int = -1) -> str
	**/
	public function tr(str:String, ?disambiguation:Dynamic, ?n:Dynamic):String;
	/**
		type(self) -> QAbstractAxis.AxisType
	**/
	public function type():Dynamic;
	/**
		visibleChanged(self, bool) [signal]
	**/
	public var visibleChanged : Dynamic;
}