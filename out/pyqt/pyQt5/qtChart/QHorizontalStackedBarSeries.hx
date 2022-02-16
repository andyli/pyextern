/* This file is generated, do not edit! */
package pyQt5.qtChart;
@:pythonImport("PyQt5.QtChart", "QHorizontalStackedBarSeries") extern class QHorizontalStackedBarSeries {
	static public var LabelsCenter : Dynamic;
	static public var LabelsInsideBase : Dynamic;
	static public var LabelsInsideEnd : Dynamic;
	static public var LabelsOutsideEnd : Dynamic;
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
	public function LabelsPosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function SeriesType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SeriesTypeArea : Dynamic;
	static public var SeriesTypeBar : Dynamic;
	static public var SeriesTypeBoxPlot : Dynamic;
	static public var SeriesTypeCandlestick : Dynamic;
	static public var SeriesTypeHorizontalBar : Dynamic;
	static public var SeriesTypeHorizontalPercentBar : Dynamic;
	static public var SeriesTypeHorizontalStackedBar : Dynamic;
	static public var SeriesTypeLine : Dynamic;
	static public var SeriesTypePercentBar : Dynamic;
	static public var SeriesTypePie : Dynamic;
	static public var SeriesTypeScatter : Dynamic;
	static public var SeriesTypeSpline : Dynamic;
	static public var SeriesTypeStackedBar : Dynamic;
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
		Return len(self).
	**/
	public function __len__():Dynamic;
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
		append(self, QBarSet) -> bool
		append(self, Iterable[QBarSet]) -> bool
	**/
	public function append(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		attachAxis(self, QAbstractAxis) -> bool
	**/
	public function attachAxis(QAbstractAxis:Dynamic):Bool;
	/**
		attachedAxes(self) -> List[QAbstractAxis]
	**/
	public function attachedAxes():Dynamic;
	/**
		barSets(self) -> List[QBarSet]
	**/
	public function barSets():Dynamic;
	/**
		barWidth(self) -> float
	**/
	public function barWidth():Float;
	/**
		barsetsAdded(self, Iterable[QBarSet]) [signal]
	**/
	public var barsetsAdded : Dynamic;
	/**
		barsetsRemoved(self, Iterable[QBarSet]) [signal]
	**/
	public var barsetsRemoved : Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		chart(self) -> QChart
	**/
	public function chart():Dynamic;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> List[QObject]
	**/
	public function children():Dynamic;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		clicked(self, int, QBarSet) [signal]
	**/
	public var clicked : Dynamic;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		count(self) -> int
	**/
	public function count():Int;
	/**
		countChanged(self) [signal]
	**/
	public var countChanged : Dynamic;
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
		detachAxis(self, QAbstractAxis) -> bool
	**/
	public function detachAxis(QAbstractAxis:Dynamic):Bool;
	/**
		disconnect(self)
	**/
	public function disconnect():Void;
	/**
		disconnectNotify(self, QMetaMethod)
	**/
	public function disconnectNotify(QMetaMethod:Dynamic):Void;
	/**
		doubleClicked(self, int, QBarSet) [signal]
	**/
	public var doubleClicked : Dynamic;
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
		hide(self)
	**/
	public function hide():Void;
	/**
		hovered(self, bool, int, QBarSet) [signal]
	**/
	public var hovered : Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		insert(self, int, QBarSet) -> bool
	**/
	public function insert(int:Int, QBarSet:Dynamic):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isLabelsVisible(self) -> bool
	**/
	public function isLabelsVisible():Bool;
	/**
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	public function isSignalConnected(QMetaMethod:Dynamic):Bool;
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
		labelsAngle(self) -> float
	**/
	public function labelsAngle():Float;
	/**
		labelsAngleChanged(self, float) [signal]
	**/
	public var labelsAngleChanged : Dynamic;
	/**
		labelsFormat(self) -> str
	**/
	public function labelsFormat():String;
	/**
		labelsFormatChanged(self, str) [signal]
	**/
	public var labelsFormatChanged : Dynamic;
	/**
		labelsPosition(self) -> QAbstractBarSeries.LabelsPosition
	**/
	public function labelsPosition():Dynamic;
	/**
		labelsPositionChanged(self, QAbstractBarSeries.LabelsPosition) [signal]
	**/
	public var labelsPositionChanged : Dynamic;
	/**
		labelsPrecision(self) -> int
	**/
	public function labelsPrecision():Int;
	/**
		labelsPrecisionChanged(self, int) [signal]
	**/
	public var labelsPrecisionChanged : Dynamic;
	/**
		labelsVisibleChanged(self) [signal]
	**/
	public var labelsVisibleChanged : Dynamic;
	/**
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
	/**
		moveToThread(self, QThread)
	**/
	public function moveToThread(QThread:Dynamic):Void;
	/**
		name(self) -> str
	**/
	public function name():String;
	/**
		nameChanged(self) [signal]
	**/
	public var nameChanged : Dynamic;
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
		opacityChanged(self) [signal]
	**/
	public var opacityChanged : Dynamic;
	/**
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		pressed(self, int, QBarSet) [signal]
	**/
	public var pressed : Dynamic;
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
		released(self, int, QBarSet) [signal]
	**/
	public var released : Dynamic;
	/**
		remove(self, QBarSet) -> bool
	**/
	public function remove(QBarSet:Dynamic):Bool;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setBarWidth(self, float)
	**/
	public function setBarWidth(float:Float):Void;
	/**
		setLabelsAngle(self, float)
	**/
	public function setLabelsAngle(float:Float):Void;
	/**
		setLabelsFormat(self, str)
	**/
	public function setLabelsFormat(str:String):Void;
	/**
		setLabelsPosition(self, QAbstractBarSeries.LabelsPosition)
	**/
	public function setLabelsPosition(QAbstractBarSeries:Dynamic):Void;
	/**
		setLabelsPrecision(self, int)
	**/
	public function setLabelsPrecision(int:Int):Void;
	/**
		setLabelsVisible(self, visible: bool = True)
	**/
	public function setLabelsVisible(?visible:Dynamic):Void;
	/**
		setName(self, str)
	**/
	public function setName(str:String):Void;
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
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setUseOpenGL(self, enable: bool = True)
	**/
	public function setUseOpenGL(?enable:Dynamic):Void;
	/**
		setVisible(self, visible: bool = True)
	**/
	public function setVisible(?visible:Dynamic):Void;
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
		take(self, QBarSet) -> bool
	**/
	public function take(QBarSet:Dynamic):Bool;
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
		type(self) -> QAbstractSeries.SeriesType
	**/
	public function type():Dynamic;
	/**
		useOpenGL(self) -> bool
	**/
	public function useOpenGL():Bool;
	/**
		useOpenGLChanged(self) [signal]
	**/
	public var useOpenGLChanged : Dynamic;
	/**
		visibleChanged(self) [signal]
	**/
	public var visibleChanged : Dynamic;
}