/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QSortFilterProxyModel") extern class QSortFilterProxyModel {
	static public var HorizontalSortHint : Dynamic;
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
	public function LayoutChangeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NoLayoutChangeHint : Dynamic;
	static public var VerticalSortHint : Dynamic;
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
		beginInsertColumns(self, QModelIndex, int, int)
	**/
	public function beginInsertColumns(QModelIndex:Dynamic, int:Int, int:Int):Void;
	/**
		beginInsertRows(self, QModelIndex, int, int)
	**/
	public function beginInsertRows(QModelIndex:Dynamic, int:Int, int:Int):Void;
	/**
		beginMoveColumns(self, QModelIndex, int, int, QModelIndex, int) -> bool
	**/
	public function beginMoveColumns(QModelIndex:Dynamic, int:Int, int:Int, QModelIndex:Dynamic, int:Int):Bool;
	/**
		beginMoveRows(self, QModelIndex, int, int, QModelIndex, int) -> bool
	**/
	public function beginMoveRows(QModelIndex:Dynamic, int:Int, int:Int, QModelIndex:Dynamic, int:Int):Bool;
	/**
		beginRemoveColumns(self, QModelIndex, int, int)
	**/
	public function beginRemoveColumns(QModelIndex:Dynamic, int:Int, int:Int):Void;
	/**
		beginRemoveRows(self, QModelIndex, int, int)
	**/
	public function beginRemoveRows(QModelIndex:Dynamic, int:Int, int:Int):Void;
	/**
		beginResetModel(self)
	**/
	public function beginResetModel():Void;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		buddy(self, QModelIndex) -> QModelIndex
	**/
	public function buddy(QModelIndex:Dynamic):Dynamic;
	/**
		canDropMimeData(self, QMimeData, Qt.DropAction, int, int, QModelIndex) -> bool
	**/
	public function canDropMimeData(QMimeData:Dynamic, Qt:Dynamic, int:Int, int:Int, QModelIndex:Dynamic):Bool;
	/**
		canFetchMore(self, QModelIndex) -> bool
	**/
	public function canFetchMore(QModelIndex:Dynamic):Bool;
	/**
		changePersistentIndex(self, QModelIndex, QModelIndex)
	**/
	public function changePersistentIndex(QModelIndex:Dynamic, QModelIndex:Dynamic):Void;
	/**
		changePersistentIndexList(self, object, object)
	**/
	public function changePersistentIndexList(object:Dynamic, object:Dynamic):Void;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> object
	**/
	public function children():Dynamic;
	/**
		columnCount(self, parent: QModelIndex = QModelIndex()) -> int
	**/
	public function columnCount(?parent:Dynamic):Int;
	/**
		columnsAboutToBeInserted(self, QModelIndex, int, int) [signal]
	**/
	public var columnsAboutToBeInserted : Dynamic;
	/**
		columnsAboutToBeMoved(self, QModelIndex, int, int, QModelIndex, int) [signal]
	**/
	public var columnsAboutToBeMoved : Dynamic;
	/**
		columnsAboutToBeRemoved(self, QModelIndex, int, int) [signal]
	**/
	public var columnsAboutToBeRemoved : Dynamic;
	/**
		columnsInserted(self, QModelIndex, int, int) [signal]
	**/
	public var columnsInserted : Dynamic;
	/**
		columnsMoved(self, QModelIndex, int, int, QModelIndex, int) [signal]
	**/
	public var columnsMoved : Dynamic;
	/**
		columnsRemoved(self, QModelIndex, int, int) [signal]
	**/
	public var columnsRemoved : Dynamic;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		createIndex(self, int, int, object: object = 0) -> QModelIndex
	**/
	public function createIndex(int:Int, int:Int, ?object:Dynamic):Dynamic;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		data(self, QModelIndex, role: int = Qt.DisplayRole) -> Any
	**/
	public function data(QModelIndex:Dynamic, ?role:Dynamic):Dynamic;
	/**
		dataChanged(self, QModelIndex, QModelIndex, Iterable[int] = []) [signal]
	**/
	public var dataChanged : Dynamic;
	/**
		decodeData(self, int, int, QModelIndex, QDataStream) -> bool
	**/
	public function decodeData(int:Int, int:Int, QModelIndex:Dynamic, QDataStream:Dynamic):Bool;
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
		dropMimeData(self, QMimeData, Qt.DropAction, int, int, QModelIndex) -> bool
	**/
	public function dropMimeData(QMimeData:Dynamic, Qt:Dynamic, int:Int, int:Int, QModelIndex:Dynamic):Bool;
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
		dynamicSortFilter(self) -> bool
	**/
	public function dynamicSortFilter():Bool;
	/**
		encodeData(self, object, QDataStream)
	**/
	public function encodeData(object:Dynamic, QDataStream:Dynamic):Void;
	/**
		endInsertColumns(self)
	**/
	public function endInsertColumns():Void;
	/**
		endInsertRows(self)
	**/
	public function endInsertRows():Void;
	/**
		endMoveColumns(self)
	**/
	public function endMoveColumns():Void;
	/**
		endMoveRows(self)
	**/
	public function endMoveRows():Void;
	/**
		endRemoveColumns(self)
	**/
	public function endRemoveColumns():Void;
	/**
		endRemoveRows(self)
	**/
	public function endRemoveRows():Void;
	/**
		endResetModel(self)
	**/
	public function endResetModel():Void;
	/**
		event(self, QEvent) -> bool
	**/
	public function event(QEvent:Dynamic):Bool;
	/**
		eventFilter(self, QObject, QEvent) -> bool
	**/
	public function eventFilter(QObject:Dynamic, QEvent:Dynamic):Bool;
	/**
		fetchMore(self, QModelIndex)
	**/
	public function fetchMore(QModelIndex:Dynamic):Void;
	/**
		filterAcceptsColumn(self, int, QModelIndex) -> bool
	**/
	public function filterAcceptsColumn(int:Int, QModelIndex:Dynamic):Bool;
	/**
		filterAcceptsRow(self, int, QModelIndex) -> bool
	**/
	public function filterAcceptsRow(int:Int, QModelIndex:Dynamic):Bool;
	/**
		filterCaseSensitivity(self) -> Qt.CaseSensitivity
	**/
	public function filterCaseSensitivity():Dynamic;
	/**
		filterKeyColumn(self) -> int
	**/
	public function filterKeyColumn():Int;
	/**
		filterRegExp(self) -> QRegExp
	**/
	public function filterRegExp():Dynamic;
	/**
		filterRole(self) -> int
	**/
	public function filterRole():Int;
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
		flags(self, QModelIndex) -> Qt.ItemFlags
	**/
	public function flags(QModelIndex:Dynamic):Dynamic;
	/**
		hasChildren(self, parent: QModelIndex = QModelIndex()) -> bool
	**/
	public function hasChildren(?parent:Dynamic):Bool;
	/**
		hasIndex(self, int, int, parent: QModelIndex = QModelIndex()) -> bool
	**/
	public function hasIndex(int:Int, int:Int, ?parent:Dynamic):Bool;
	/**
		headerData(self, int, Qt.Orientation, role: int = Qt.DisplayRole) -> Any
	**/
	public function headerData(int:Int, Qt:Dynamic, ?role:Dynamic):Dynamic;
	/**
		headerDataChanged(self, Qt.Orientation, int, int) [signal]
	**/
	public var headerDataChanged : Dynamic;
	/**
		index(self, int, int, parent: QModelIndex = QModelIndex()) -> QModelIndex
	**/
	public function index(int:Int, int:Int, ?parent:Dynamic):Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		insertColumn(self, int, parent: QModelIndex = QModelIndex()) -> bool
	**/
	public function insertColumn(int:Int, ?parent:Dynamic):Bool;
	/**
		insertColumns(self, int, int, parent: QModelIndex = QModelIndex()) -> bool
	**/
	public function insertColumns(int:Int, int:Int, ?parent:Dynamic):Bool;
	/**
		insertRow(self, int, parent: QModelIndex = QModelIndex()) -> bool
	**/
	public function insertRow(int:Int, ?parent:Dynamic):Bool;
	/**
		insertRows(self, int, int, parent: QModelIndex = QModelIndex()) -> bool
	**/
	public function insertRows(int:Int, int:Int, ?parent:Dynamic):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		invalidate(self)
	**/
	public function invalidate():Void;
	/**
		invalidateFilter(self)
	**/
	public function invalidateFilter():Void;
	/**
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	public function isSignalConnected(QMetaMethod:Dynamic):Bool;
	/**
		isSortLocaleAware(self) -> bool
	**/
	public function isSortLocaleAware():Bool;
	/**
		isWidgetType(self) -> bool
	**/
	public function isWidgetType():Bool;
	/**
		isWindowType(self) -> bool
	**/
	public function isWindowType():Bool;
	/**
		itemData(self, QModelIndex) -> Dict[int, Any]
	**/
	public function itemData(QModelIndex:Dynamic):Dynamic;
	/**
		killTimer(self, int)
	**/
	public function killTimer(int:Int):Void;
	/**
		layoutAboutToBeChanged(self, object = QList&lt;QPersistentModelIndex&gt;(), QAbstractItemModel.LayoutChangeHint = QAbstractItemModel.NoLayoutChangeHint) [signal]
	**/
	public var layoutAboutToBeChanged : Dynamic;
	/**
		layoutChanged(self, Iterable[QPersistentModelIndex] = [], QAbstractItemModel.LayoutChangeHint = QAbstractItemModel.NoLayoutChangeHint) [signal]
	**/
	public var layoutChanged : Dynamic;
	/**
		lessThan(self, QModelIndex, QModelIndex) -> bool
	**/
	public function lessThan(QModelIndex:Dynamic, QModelIndex:Dynamic):Bool;
	/**
		mapFromSource(self, QModelIndex) -> QModelIndex
	**/
	public function mapFromSource(QModelIndex:Dynamic):Dynamic;
	/**
		mapSelectionFromSource(self, QItemSelection) -> QItemSelection
	**/
	public function mapSelectionFromSource(QItemSelection:Dynamic):Dynamic;
	/**
		mapSelectionToSource(self, QItemSelection) -> QItemSelection
	**/
	public function mapSelectionToSource(QItemSelection:Dynamic):Dynamic;
	/**
		mapToSource(self, QModelIndex) -> QModelIndex
	**/
	public function mapToSource(QModelIndex:Dynamic):Dynamic;
	/**
		match(self, QModelIndex, int, Any, hits: int = 1, flags: Union[Qt.MatchFlags, Qt.MatchFlag] = Qt.MatchStartsWith|Qt.MatchWrap) -> object
	**/
	public function match(QModelIndex:Dynamic, int:Int, Any:Dynamic, ?hits:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
	/**
		mimeData(self, object) -> QMimeData
	**/
	public function mimeData(object:Dynamic):Dynamic;
	/**
		mimeTypes(self) -> List[str]
	**/
	public function mimeTypes():Dynamic;
	/**
		modelAboutToBeReset(self) [signal]
	**/
	public var modelAboutToBeReset : Dynamic;
	/**
		modelReset(self) [signal]
	**/
	public var modelReset : Dynamic;
	/**
		moveColumn(self, QModelIndex, int, QModelIndex, int) -> bool
	**/
	public function moveColumn(QModelIndex:Dynamic, int:Int, QModelIndex:Dynamic, int:Int):Bool;
	/**
		moveColumns(self, QModelIndex, int, int, QModelIndex, int) -> bool
	**/
	public function moveColumns(QModelIndex:Dynamic, int:Int, int:Int, QModelIndex:Dynamic, int:Int):Bool;
	/**
		moveRow(self, QModelIndex, int, QModelIndex, int) -> bool
	**/
	public function moveRow(QModelIndex:Dynamic, int:Int, QModelIndex:Dynamic, int:Int):Bool;
	/**
		moveRows(self, QModelIndex, int, int, QModelIndex, int) -> bool
	**/
	public function moveRows(QModelIndex:Dynamic, int:Int, int:Int, QModelIndex:Dynamic, int:Int):Bool;
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
		parent(self, QModelIndex) -> QModelIndex
		parent(self) -> QObject
	**/
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		persistentIndexList(self) -> object
	**/
	public function persistentIndexList():Dynamic;
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
		removeColumn(self, int, parent: QModelIndex = QModelIndex()) -> bool
	**/
	public function removeColumn(int:Int, ?parent:Dynamic):Bool;
	/**
		removeColumns(self, int, int, parent: QModelIndex = QModelIndex()) -> bool
	**/
	public function removeColumns(int:Int, int:Int, ?parent:Dynamic):Bool;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		removeRow(self, int, parent: QModelIndex = QModelIndex()) -> bool
	**/
	public function removeRow(int:Int, ?parent:Dynamic):Bool;
	/**
		removeRows(self, int, int, parent: QModelIndex = QModelIndex()) -> bool
	**/
	public function removeRows(int:Int, int:Int, ?parent:Dynamic):Bool;
	/**
		resetInternalData(self)
	**/
	public function resetInternalData():Void;
	/**
		revert(self)
	**/
	public function revert():Void;
	/**
		roleNames(self) -> object
	**/
	public function roleNames():Dynamic;
	/**
		rowCount(self, parent: QModelIndex = QModelIndex()) -> int
	**/
	public function rowCount(?parent:Dynamic):Int;
	/**
		rowsAboutToBeInserted(self, QModelIndex, int, int) [signal]
	**/
	public var rowsAboutToBeInserted : Dynamic;
	/**
		rowsAboutToBeMoved(self, QModelIndex, int, int, QModelIndex, int) [signal]
	**/
	public var rowsAboutToBeMoved : Dynamic;
	/**
		rowsAboutToBeRemoved(self, QModelIndex, int, int) [signal]
	**/
	public var rowsAboutToBeRemoved : Dynamic;
	/**
		rowsInserted(self, QModelIndex, int, int) [signal]
	**/
	public var rowsInserted : Dynamic;
	/**
		rowsMoved(self, QModelIndex, int, int, QModelIndex, int) [signal]
	**/
	public var rowsMoved : Dynamic;
	/**
		rowsRemoved(self, QModelIndex, int, int) [signal]
	**/
	public var rowsRemoved : Dynamic;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setData(self, QModelIndex, Any, role: int = Qt.EditRole) -> bool
	**/
	public function setData(QModelIndex:Dynamic, Any:Dynamic, ?role:Dynamic):Bool;
	/**
		setDynamicSortFilter(self, bool)
	**/
	public function setDynamicSortFilter(bool:Bool):Void;
	/**
		setFilterCaseSensitivity(self, Qt.CaseSensitivity)
	**/
	public function setFilterCaseSensitivity(Qt:Dynamic):Void;
	/**
		setFilterFixedString(self, str)
	**/
	public function setFilterFixedString(str:String):Void;
	/**
		setFilterKeyColumn(self, int)
	**/
	public function setFilterKeyColumn(int:Int):Void;
	/**
		setFilterRegExp(self, QRegExp)
		setFilterRegExp(self, str)
	**/
	public function setFilterRegExp(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setFilterRole(self, int)
	**/
	public function setFilterRole(int:Int):Void;
	/**
		setFilterWildcard(self, str)
	**/
	public function setFilterWildcard(str:String):Void;
	/**
		setHeaderData(self, int, Qt.Orientation, Any, role: int = Qt.EditRole) -> bool
	**/
	public function setHeaderData(int:Int, Qt:Dynamic, Any:Dynamic, ?role:Dynamic):Bool;
	/**
		setItemData(self, QModelIndex, Dict[int, Any]) -> bool
	**/
	public function setItemData(QModelIndex:Dynamic, Dict:Dynamic):Bool;
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
		setSortCaseSensitivity(self, Qt.CaseSensitivity)
	**/
	public function setSortCaseSensitivity(Qt:Dynamic):Void;
	/**
		setSortLocaleAware(self, bool)
	**/
	public function setSortLocaleAware(bool:Bool):Void;
	/**
		setSortRole(self, int)
	**/
	public function setSortRole(int:Int):Void;
	/**
		setSourceModel(self, QAbstractItemModel)
	**/
	public function setSourceModel(QAbstractItemModel:Dynamic):Void;
	/**
		sibling(self, int, int, QModelIndex) -> QModelIndex
	**/
	public function sibling(int:Int, int:Int, QModelIndex:Dynamic):Dynamic;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		sort(self, int, order: Qt.SortOrder = Qt.AscendingOrder)
	**/
	public function sort(int:Int, ?order:Dynamic):Void;
	/**
		sortCaseSensitivity(self) -> Qt.CaseSensitivity
	**/
	public function sortCaseSensitivity():Dynamic;
	/**
		sortColumn(self) -> int
	**/
	public function sortColumn():Int;
	/**
		sortOrder(self) -> Qt.SortOrder
	**/
	public function sortOrder():Dynamic;
	/**
		sortRole(self) -> int
	**/
	public function sortRole():Int;
	/**
		sourceModel(self) -> QAbstractItemModel
	**/
	public function sourceModel():Dynamic;
	/**
		sourceModelChanged(self) [signal]
	**/
	public var sourceModelChanged : Dynamic;
	/**
		span(self, QModelIndex) -> QSize
	**/
	public function span(QModelIndex:Dynamic):Dynamic;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	static public var staticMetaObject : Dynamic;
	/**
		submit(self) -> bool
	**/
	public function submit():Bool;
	/**
		supportedDragActions(self) -> Qt.DropActions
	**/
	public function supportedDragActions():Dynamic;
	/**
		supportedDropActions(self) -> Qt.DropActions
	**/
	public function supportedDropActions():Dynamic;
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
}