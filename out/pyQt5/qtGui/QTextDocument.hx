/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QTextDocument") extern class QTextDocument {
	static public var DocumentTitle : Dynamic;
	static public var DocumentUrl : Dynamic;
	static public var FindBackward : Dynamic;
	static public var FindCaseSensitively : Dynamic;
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
	public function FindFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QTextDocument.FindFlags()
		QTextDocument.FindFlags(Union[QTextDocument.FindFlags, QTextDocument.FindFlag])
		QTextDocument.FindFlags(QTextDocument.FindFlags)
	**/
	static public function FindFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var FindWholeWords : Dynamic;
	static public var HtmlResource : Dynamic;
	static public var ImageResource : Dynamic;
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
	public function MetaInformation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var RedoStack : Dynamic;
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
	public function ResourceType(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function Stacks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var StyleSheetResource : Dynamic;
	static public var UndoAndRedoStacks : Dynamic;
	static public var UndoStack : Dynamic;
	static public var UserResource : Dynamic;
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
		addResource(self, int, QUrl, Any)
	**/
	public function addResource(int:Int, QUrl:Dynamic, Any:Dynamic):Void;
	/**
		adjustSize(self)
	**/
	public function adjustSize():Void;
	/**
		allFormats(self) -> object
	**/
	public function allFormats():Dynamic;
	/**
		availableRedoSteps(self) -> int
	**/
	public function availableRedoSteps():Int;
	/**
		availableUndoSteps(self) -> int
	**/
	public function availableUndoSteps():Int;
	/**
		baseUrl(self) -> QUrl
	**/
	public function baseUrl():Dynamic;
	/**
		baseUrlChanged(self, QUrl) [signal]
	**/
	public var baseUrlChanged : Dynamic;
	/**
		begin(self) -> QTextBlock
	**/
	public function begin():Dynamic;
	/**
		blockCount(self) -> int
	**/
	public function blockCount():Int;
	/**
		blockCountChanged(self, int) [signal]
	**/
	public var blockCountChanged : Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		characterAt(self, int) -> str
	**/
	public function characterAt(int:Int):String;
	/**
		characterCount(self) -> int
	**/
	public function characterCount():Int;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> object
	**/
	public function children():Dynamic;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		clearUndoRedoStacks(self, stacks: QTextDocument.Stacks = QTextDocument.UndoAndRedoStacks)
	**/
	public function clearUndoRedoStacks(?stacks:Dynamic):Void;
	/**
		clone(self, parent: QObject = None) -> QTextDocument
	**/
	public function clone(?parent:Dynamic):Dynamic;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		contentsChange(self, int, int, int) [signal]
	**/
	public var contentsChange : Dynamic;
	/**
		contentsChanged(self) [signal]
	**/
	public var contentsChanged : Dynamic;
	/**
		createObject(self, QTextFormat) -> QTextObject
	**/
	public function createObject(QTextFormat:Dynamic):Dynamic;
	/**
		cursorPositionChanged(self, QTextCursor) [signal]
	**/
	public var cursorPositionChanged : Dynamic;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		defaultCursorMoveStyle(self) -> Qt.CursorMoveStyle
	**/
	public function defaultCursorMoveStyle():Dynamic;
	/**
		defaultFont(self) -> QFont
	**/
	public function defaultFont():Dynamic;
	/**
		defaultStyleSheet(self) -> str
	**/
	public function defaultStyleSheet():String;
	/**
		defaultTextOption(self) -> QTextOption
	**/
	public function defaultTextOption():Dynamic;
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
		documentLayout(self) -> QAbstractTextDocumentLayout
	**/
	public function documentLayout():Dynamic;
	/**
		documentLayoutChanged(self) [signal]
	**/
	public var documentLayoutChanged : Dynamic;
	/**
		documentMargin(self) -> float
	**/
	public function documentMargin():Float;
	/**
		drawContents(self, QPainter, rect: QRectF = QRectF())
	**/
	public function drawContents(QPainter:Dynamic, ?rect:Dynamic):Void;
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
		end(self) -> QTextBlock
	**/
	public function end():Dynamic;
	/**
		event(self, QEvent) -> bool
	**/
	public function event(QEvent:Dynamic):Bool;
	/**
		eventFilter(self, QObject, QEvent) -> bool
	**/
	public function eventFilter(QObject:Dynamic, QEvent:Dynamic):Bool;
	/**
		find(self, str, position: int = 0, options: QTextDocument.FindFlags = 0) -> QTextCursor
		find(self, QRegExp, position: int = 0, options: QTextDocument.FindFlags = 0) -> QTextCursor
		find(self, QRegularExpression, position: int = 0, options: QTextDocument.FindFlags = 0) -> QTextCursor
		find(self, str, QTextCursor, options: QTextDocument.FindFlags = 0) -> QTextCursor
		find(self, QRegExp, QTextCursor, options: QTextDocument.FindFlags = 0) -> QTextCursor
		find(self, QRegularExpression, QTextCursor, options: QTextDocument.FindFlags = 0) -> QTextCursor
	**/
	public function find(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		findBlock(self, int) -> QTextBlock
	**/
	public function findBlock(int:Int):Dynamic;
	/**
		findBlockByLineNumber(self, int) -> QTextBlock
	**/
	public function findBlockByLineNumber(int:Int):Dynamic;
	/**
		findBlockByNumber(self, int) -> QTextBlock
	**/
	public function findBlockByNumber(int:Int):Dynamic;
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
		firstBlock(self) -> QTextBlock
	**/
	public function firstBlock():Dynamic;
	/**
		idealWidth(self) -> float
	**/
	public function idealWidth():Float;
	/**
		indentWidth(self) -> float
	**/
	public function indentWidth():Float;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isEmpty(self) -> bool
	**/
	public function isEmpty():Bool;
	/**
		isModified(self) -> bool
	**/
	public function isModified():Bool;
	/**
		isRedoAvailable(self) -> bool
	**/
	public function isRedoAvailable():Bool;
	/**
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	public function isSignalConnected(QMetaMethod:Dynamic):Bool;
	/**
		isUndoAvailable(self) -> bool
	**/
	public function isUndoAvailable():Bool;
	/**
		isUndoRedoEnabled(self) -> bool
	**/
	public function isUndoRedoEnabled():Bool;
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
		lastBlock(self) -> QTextBlock
	**/
	public function lastBlock():Dynamic;
	/**
		lineCount(self) -> int
	**/
	public function lineCount():Int;
	/**
		loadResource(self, int, QUrl) -> Any
	**/
	public function loadResource(int:Int, QUrl:Dynamic):Dynamic;
	/**
		markContentsDirty(self, int, int)
	**/
	public function markContentsDirty(int:Int, int:Int):Void;
	/**
		maximumBlockCount(self) -> int
	**/
	public function maximumBlockCount():Int;
	/**
		metaInformation(self, QTextDocument.MetaInformation) -> str
	**/
	public function metaInformation(QTextDocument:Dynamic):String;
	/**
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
	/**
		modificationChanged(self, bool) [signal]
	**/
	public var modificationChanged : Dynamic;
	/**
		moveToThread(self, QThread)
	**/
	public function moveToThread(QThread:Dynamic):Void;
	/**
		object(self, int) -> QTextObject
	**/
	public function object(int:Int):Dynamic;
	/**
		objectForFormat(self, QTextFormat) -> QTextObject
	**/
	public function objectForFormat(QTextFormat:Dynamic):Dynamic;
	/**
		objectName(self) -> str
	**/
	public function objectName():String;
	/**
		objectNameChanged(self, str) [signal]
	**/
	public var objectNameChanged : Dynamic;
	/**
		pageCount(self) -> int
	**/
	public function pageCount():Int;
	/**
		pageSize(self) -> QSizeF
	**/
	public function pageSize():Dynamic;
	/**
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		print(self, QPagedPaintDevice)
	**/
	public function print(QPagedPaintDevice:Dynamic):Void;
	/**
		print_(self, QPagedPaintDevice)
	**/
	public function print_(QPagedPaintDevice:Dynamic):Void;
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
		redo(self)
		redo(self, QTextCursor)
	**/
	public function redo(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		redoAvailable(self, bool) [signal]
	**/
	public var redoAvailable : Dynamic;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		resource(self, int, QUrl) -> Any
	**/
	public function resource(int:Int, QUrl:Dynamic):Dynamic;
	/**
		revision(self) -> int
	**/
	public function revision():Int;
	/**
		rootFrame(self) -> QTextFrame
	**/
	public function rootFrame():Dynamic;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setBaseUrl(self, QUrl)
	**/
	public function setBaseUrl(QUrl:Dynamic):Void;
	/**
		setDefaultCursorMoveStyle(self, Qt.CursorMoveStyle)
	**/
	public function setDefaultCursorMoveStyle(Qt:Dynamic):Void;
	/**
		setDefaultFont(self, QFont)
	**/
	public function setDefaultFont(QFont:Dynamic):Void;
	/**
		setDefaultStyleSheet(self, str)
	**/
	public function setDefaultStyleSheet(str:String):Void;
	/**
		setDefaultTextOption(self, QTextOption)
	**/
	public function setDefaultTextOption(QTextOption:Dynamic):Void;
	/**
		setDocumentLayout(self, QAbstractTextDocumentLayout)
	**/
	public function setDocumentLayout(QAbstractTextDocumentLayout:Dynamic):Void;
	/**
		setDocumentMargin(self, float)
	**/
	public function setDocumentMargin(float:Float):Void;
	/**
		setHtml(self, str)
	**/
	public function setHtml(str:String):Void;
	/**
		setIndentWidth(self, float)
	**/
	public function setIndentWidth(float:Float):Void;
	/**
		setMaximumBlockCount(self, int)
	**/
	public function setMaximumBlockCount(int:Int):Void;
	/**
		setMetaInformation(self, QTextDocument.MetaInformation, str)
	**/
	public function setMetaInformation(QTextDocument:Dynamic, str:String):Void;
	/**
		setModified(self, on: bool = True)
	**/
	public function setModified(?on:Dynamic):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setPageSize(self, QSizeF)
	**/
	public function setPageSize(QSizeF:Dynamic):Void;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setPlainText(self, str)
	**/
	public function setPlainText(str:String):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setTextWidth(self, float)
	**/
	public function setTextWidth(float:Float):Void;
	/**
		setUndoRedoEnabled(self, bool)
	**/
	public function setUndoRedoEnabled(bool:Bool):Void;
	/**
		setUseDesignMetrics(self, bool)
	**/
	public function setUseDesignMetrics(bool:Bool):Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		size(self) -> QSizeF
	**/
	public function size():Dynamic;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	static public var staticMetaObject : Dynamic;
	/**
		textWidth(self) -> float
	**/
	public function textWidth():Float;
	/**
		thread(self) -> QThread
	**/
	public function thread():Dynamic;
	/**
		timerEvent(self, QTimerEvent)
	**/
	public function timerEvent(QTimerEvent:Dynamic):Void;
	/**
		toHtml(self, encoding: Union[QByteArray, bytes, bytearray] = QByteArray()) -> str
	**/
	public function toHtml(?encoding:Dynamic):String;
	/**
		toPlainText(self) -> str
	**/
	public function toPlainText():String;
	/**
		tr(self, str, disambiguation: str = None, n: int = -1) -> str
	**/
	public function tr(str:String, ?disambiguation:Dynamic, ?n:Dynamic):String;
	/**
		undo(self)
		undo(self, QTextCursor)
	**/
	public function undo(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		undoAvailable(self, bool) [signal]
	**/
	public var undoAvailable : Dynamic;
	/**
		undoCommandAdded(self) [signal]
	**/
	public var undoCommandAdded : Dynamic;
	/**
		useDesignMetrics(self) -> bool
	**/
	public function useDesignMetrics():Bool;
}