/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QStateMachine") extern class QStateMachine {
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
	public function ChildMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DontRestoreProperties : Dynamic;
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
	public function Error(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function EventPriority(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ExclusiveStates : Dynamic;
	static public var HighPriority : Dynamic;
	static public var NoCommonAncestorForTransitionError : Dynamic;
	static public var NoDefaultStateInHistoryStateError : Dynamic;
	static public var NoError : Dynamic;
	static public var NoInitialStateError : Dynamic;
	static public var NormalPriority : Dynamic;
	static public var ParallelStates : Dynamic;
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
	public function RestorePolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var RestoreProperties : Dynamic;
	/**
		QEvent(QEvent.Type)
		QEvent(QEvent)
	**/
	static public function SignalEvent(QEvent:Dynamic):Void;
	/**
		QEvent(QEvent.Type)
		QEvent(QEvent)
	**/
	static public function WrappedEvent(QEvent:Dynamic):Void;
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
		active(self) -> bool
	**/
	public function active():Bool;
	/**
		activeChanged(self, bool) [signal]
	**/
	public var activeChanged : Dynamic;
	/**
		addDefaultAnimation(self, QAbstractAnimation)
	**/
	public function addDefaultAnimation(QAbstractAnimation:Dynamic):Void;
	/**
		addState(self, QAbstractState)
	**/
	public function addState(QAbstractState:Dynamic):Void;
	/**
		addTransition(self, QAbstractTransition)
		addTransition(self, pyqtBoundSignal, QAbstractState) -> QSignalTransition
		addTransition(self, QAbstractState) -> QAbstractTransition
	**/
	public function addTransition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		assignProperty(self, QObject, str, Any)
	**/
	public function assignProperty(QObject:Dynamic, str:String, Any:Dynamic):Void;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		cancelDelayedEvent(self, int) -> bool
	**/
	public function cancelDelayedEvent(int:Int):Bool;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		childMode(self) -> QState.ChildMode
	**/
	public function childMode():Dynamic;
	/**
		childModeChanged(self) [signal]
	**/
	public var childModeChanged : Dynamic;
	/**
		children(self) -> object
	**/
	public function children():Dynamic;
	/**
		clearError(self)
	**/
	public function clearError():Void;
	/**
		configuration(self) -> object
	**/
	public function configuration():Dynamic;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		defaultAnimations(self) -> List[QAbstractAnimation]
	**/
	public function defaultAnimations():Dynamic;
	/**
		deleteLater(self)
	**/
	public function deleteLater():Void;
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
		entered(self) [signal]
	**/
	public var entered : Dynamic;
	/**
		error(self) -> QStateMachine.Error
	**/
	public function error():Dynamic;
	/**
		errorState(self) -> QAbstractState
	**/
	public function errorState():Dynamic;
	/**
		errorStateChanged(self) [signal]
	**/
	public var errorStateChanged : Dynamic;
	/**
		errorString(self) -> str
	**/
	public function errorString():String;
	/**
		event(self, QEvent) -> bool
	**/
	public function event(QEvent:Dynamic):Bool;
	/**
		eventFilter(self, QObject, QEvent) -> bool
	**/
	public function eventFilter(QObject:Dynamic, QEvent:Dynamic):Bool;
	/**
		exited(self) [signal]
	**/
	public var exited : Dynamic;
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
		globalRestorePolicy(self) -> QState.RestorePolicy
	**/
	public function globalRestorePolicy():Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		initialState(self) -> QAbstractState
	**/
	public function initialState():Dynamic;
	/**
		initialStateChanged(self) [signal]
	**/
	public var initialStateChanged : Dynamic;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isAnimated(self) -> bool
	**/
	public function isAnimated():Bool;
	/**
		isRunning(self) -> bool
	**/
	public function isRunning():Bool;
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
		killTimer(self, int)
	**/
	public function killTimer(int:Int):Void;
	/**
		machine(self) -> QStateMachine
	**/
	public function machine():Dynamic;
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
		onEntry(self, QEvent)
	**/
	public function onEntry(QEvent:Dynamic):Void;
	/**
		onExit(self, QEvent)
	**/
	public function onExit(QEvent:Dynamic):Void;
	/**
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		parentState(self) -> QState
	**/
	public function parentState():Dynamic;
	/**
		postDelayedEvent(self, QEvent, int) -> int
	**/
	public function postDelayedEvent(QEvent:Dynamic, int:Int):Int;
	/**
		postEvent(self, QEvent, priority: QStateMachine.EventPriority = QStateMachine.NormalPriority)
	**/
	public function postEvent(QEvent:Dynamic, ?priority:Dynamic):Void;
	/**
		propertiesAssigned(self) [signal]
	**/
	public var propertiesAssigned : Dynamic;
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
		removeDefaultAnimation(self, QAbstractAnimation)
	**/
	public function removeDefaultAnimation(QAbstractAnimation:Dynamic):Void;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		removeState(self, QAbstractState)
	**/
	public function removeState(QAbstractState:Dynamic):Void;
	/**
		removeTransition(self, QAbstractTransition)
	**/
	public function removeTransition(QAbstractTransition:Dynamic):Void;
	/**
		runningChanged(self, bool) [signal]
	**/
	public var runningChanged : Dynamic;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setAnimated(self, bool)
	**/
	public function setAnimated(bool:Bool):Void;
	/**
		setChildMode(self, QState.ChildMode)
	**/
	public function setChildMode(QState:Dynamic):Void;
	/**
		setErrorState(self, QAbstractState)
	**/
	public function setErrorState(QAbstractState:Dynamic):Void;
	/**
		setGlobalRestorePolicy(self, QState.RestorePolicy)
	**/
	public function setGlobalRestorePolicy(QState:Dynamic):Void;
	/**
		setInitialState(self, QAbstractState)
	**/
	public function setInitialState(QAbstractState:Dynamic):Void;
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
		setRunning(self, bool)
	**/
	public function setRunning(bool:Bool):Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		start(self)
	**/
	public function start():Void;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	/**
		started(self) [signal]
	**/
	public var started : Dynamic;
	static public var staticMetaObject : Dynamic;
	/**
		stop(self)
	**/
	public function stop():Void;
	/**
		stopped(self) [signal]
	**/
	public var stopped : Dynamic;
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
		transitions(self) -> object
	**/
	public function transitions():Dynamic;
}