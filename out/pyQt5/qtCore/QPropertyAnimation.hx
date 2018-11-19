/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QPropertyAnimation") extern class QPropertyAnimation {
	static public var Backward : Dynamic;
	static public var DeleteWhenStopped : Dynamic;
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
	public function DeletionPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function Direction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Forward : Dynamic;
	static public var KeepWhenStopped : Dynamic;
	static public var Paused : Dynamic;
	static public var Running : Dynamic;
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
	public function State(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Stopped : Dynamic;
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
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> object
	**/
	public function children():Dynamic;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		currentLoop(self) -> int
	**/
	public function currentLoop():Int;
	/**
		currentLoopChanged(self, int) [signal]
	**/
	public var currentLoopChanged : Dynamic;
	/**
		currentLoopTime(self) -> int
	**/
	public function currentLoopTime():Int;
	/**
		currentTime(self) -> int
	**/
	public function currentTime():Int;
	/**
		currentValue(self) -> Any
	**/
	public function currentValue():Dynamic;
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
		direction(self) -> QAbstractAnimation.Direction
	**/
	public function direction():Dynamic;
	/**
		directionChanged(self, QAbstractAnimation.Direction) [signal]
	**/
	public var directionChanged : Dynamic;
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
		duration(self) -> int
	**/
	public function duration():Int;
	/**
		dynamicPropertyNames(self) -> object
	**/
	public function dynamicPropertyNames():Dynamic;
	/**
		easingCurve(self) -> QEasingCurve
	**/
	public function easingCurve():Dynamic;
	/**
		endValue(self) -> Any
	**/
	public function endValue():Dynamic;
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
		finished(self) [signal]
	**/
	public var finished : Dynamic;
	/**
		group(self) -> QAnimationGroup
	**/
	public function group():Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		interpolated(self, Any, Any, float) -> Any
	**/
	public function interpolated(Any:Dynamic, Any:Dynamic, float:Float):Dynamic;
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
		keyValueAt(self, float) -> Any
	**/
	public function keyValueAt(float:Float):Dynamic;
	/**
		keyValues(self) -> object
	**/
	public function keyValues():Dynamic;
	/**
		killTimer(self, int)
	**/
	public function killTimer(int:Int):Void;
	/**
		loopCount(self) -> int
	**/
	public function loopCount():Int;
	/**
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
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
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		pause(self)
	**/
	public function pause():Void;
	/**
		property(self, str) -> Any
	**/
	public function property(str:String):Dynamic;
	/**
		propertyName(self) -> QByteArray
	**/
	public function propertyName():Dynamic;
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
		resume(self)
	**/
	public function resume():Void;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setCurrentTime(self, int)
	**/
	public function setCurrentTime(int:Int):Void;
	/**
		setDirection(self, QAbstractAnimation.Direction)
	**/
	public function setDirection(QAbstractAnimation:Dynamic):Void;
	/**
		setDuration(self, int)
	**/
	public function setDuration(int:Int):Void;
	/**
		setEasingCurve(self, Union[QEasingCurve, QEasingCurve.Type])
	**/
	public function setEasingCurve(Union:Dynamic):Void;
	/**
		setEndValue(self, Any)
	**/
	public function setEndValue(Any:Dynamic):Void;
	/**
		setKeyValueAt(self, float, Any)
	**/
	public function setKeyValueAt(float:Float, Any:Dynamic):Void;
	/**
		setKeyValues(self, object)
	**/
	public function setKeyValues(object:Dynamic):Void;
	/**
		setLoopCount(self, int)
	**/
	public function setLoopCount(int:Int):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setPaused(self, bool)
	**/
	public function setPaused(bool:Bool):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setPropertyName(self, Union[QByteArray, bytes, bytearray])
	**/
	public function setPropertyName(Union:Dynamic):Void;
	/**
		setStartValue(self, Any)
	**/
	public function setStartValue(Any:Dynamic):Void;
	/**
		setTargetObject(self, QObject)
	**/
	public function setTargetObject(QObject:Dynamic):Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		start(self, policy: QAbstractAnimation.DeletionPolicy = QAbstractAnimation.KeepWhenStopped)
	**/
	public function start(?policy:Dynamic):Void;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	/**
		startValue(self) -> Any
	**/
	public function startValue():Dynamic;
	/**
		state(self) -> QAbstractAnimation.State
	**/
	public function state():Dynamic;
	/**
		stateChanged(self, QAbstractAnimation.State, QAbstractAnimation.State) [signal]
	**/
	public var stateChanged : Dynamic;
	static public var staticMetaObject : Dynamic;
	/**
		stop(self)
	**/
	public function stop():Void;
	/**
		targetObject(self) -> QObject
	**/
	public function targetObject():Dynamic;
	/**
		thread(self) -> QThread
	**/
	public function thread():Dynamic;
	/**
		timerEvent(self, QTimerEvent)
	**/
	public function timerEvent(QTimerEvent:Dynamic):Void;
	/**
		totalDuration(self) -> int
	**/
	public function totalDuration():Int;
	/**
		tr(self, str, disambiguation: str = None, n: int = -1) -> str
	**/
	public function tr(str:String, ?disambiguation:Dynamic, ?n:Dynamic):String;
	/**
		updateCurrentTime(self, int)
	**/
	public function updateCurrentTime(int:Int):Void;
	/**
		updateCurrentValue(self, Any)
	**/
	public function updateCurrentValue(Any:Dynamic):Void;
	/**
		updateDirection(self, QAbstractAnimation.Direction)
	**/
	public function updateDirection(QAbstractAnimation:Dynamic):Void;
	/**
		updateState(self, QAbstractAnimation.State, QAbstractAnimation.State)
	**/
	public function updateState(QAbstractAnimation:Dynamic, QAbstractAnimation:Dynamic):Void;
	/**
		valueChanged(self, Any) [signal]
	**/
	public var valueChanged : Dynamic;
}