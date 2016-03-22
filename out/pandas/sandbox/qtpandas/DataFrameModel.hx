/* This file is generated, do not edit! */
package pandas.sandbox.qtpandas;
@:pythonImport("pandas.sandbox.qtpandas", "DataFrameModel") extern class DataFrameModel {
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
		QObject.__getattr__(str) -> object
	**/
	static public function __getattr__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		QAbstractItemModel.beginInsertColumns(QModelIndex, int, int)
	**/
	static public function beginInsertColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.beginInsertRows(QModelIndex, int, int)
	**/
	static public function beginInsertRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.beginMoveColumns(QModelIndex, int, int, QModelIndex, int) -> bool
	**/
	static public function beginMoveColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.beginMoveRows(QModelIndex, int, int, QModelIndex, int) -> bool
	**/
	static public function beginMoveRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.beginRemoveColumns(QModelIndex, int, int)
	**/
	static public function beginRemoveColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.beginRemoveRows(QModelIndex, int, int)
	**/
	static public function beginRemoveRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.beginResetModel()
	**/
	static public function beginResetModel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.blockSignals(bool) -> bool
	**/
	static public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.buddy(QModelIndex) -> QModelIndex
	**/
	static public function buddy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.canFetchMore(QModelIndex) -> bool
	**/
	static public function canFetchMore(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.changePersistentIndex(QModelIndex, QModelIndex)
	**/
	static public function changePersistentIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.changePersistentIndexList(list-of-QModelIndex, list-of-QModelIndex)
	**/
	static public function changePersistentIndexList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.childEvent(QChildEvent)
	**/
	static public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.children() -> list-of-QObject
	**/
	static public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.columnCount(QModelIndex parent=QModelIndex()) -> int
	**/
	public function columnCount(?index:Dynamic):Dynamic;
	/**
		QAbstractItemModel.columnsAboutToBeInserted[QModelIndex, int, int] [signal]
	**/
	public function columnsAboutToBeInserted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.columnsAboutToBeMoved[QModelIndex, int, int, QModelIndex, int] [signal]
	**/
	public function columnsAboutToBeMoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.columnsAboutToBeRemoved[QModelIndex, int, int] [signal]
	**/
	public function columnsAboutToBeRemoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.columnsInserted[QModelIndex, int, int] [signal]
	**/
	public function columnsInserted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.columnsMoved[QModelIndex, int, int, QModelIndex, int] [signal]
	**/
	public function columnsMoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.columnsRemoved[QModelIndex, int, int] [signal]
	**/
	public function columnsRemoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.connect(QObject, SIGNAL(), QObject, SLOT(), Qt.ConnectionType=Qt.AutoConnection) -> bool
		QObject.connect(QObject, SIGNAL(), callable, Qt.ConnectionType=Qt.AutoConnection) -> bool
		QObject.connect(QObject, SIGNAL(), SLOT(), Qt.ConnectionType=Qt.AutoConnection) -> bool
	**/
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.connectNotify(SIGNAL())
	**/
	static public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.createIndex(int, int, object object=0) -> QModelIndex
	**/
	static public function createIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.customEvent(QEvent)
	**/
	static public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.data(QModelIndex, int role=Qt.DisplayRole) -> object
	**/
	public function data(index:Dynamic, ?role:Dynamic):Dynamic;
	/**
		QAbstractItemModel.dataChanged[QModelIndex, QModelIndex] [signal]
	**/
	public function dataChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.decodeData(int, int, QModelIndex, QDataStream) -> bool
	**/
	static public function decodeData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.deleteLater()
	**/
	static public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.destroyed[QObject] [signal]
		QObject.destroyed [signal]
	**/
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.disconnect(QObject, SIGNAL(), QObject, SLOT()) -> bool
		QObject.disconnect(QObject, SIGNAL(), callable) -> bool
	**/
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.disconnectNotify(SIGNAL())
	**/
	static public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractTableModel.dropMimeData(QMimeData, Qt.DropAction, int, int, QModelIndex) -> bool
	**/
	static public function dropMimeData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.dumpObjectInfo()
	**/
	static public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.dumpObjectTree()
	**/
	static public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.dynamicPropertyNames() -> list-of-QByteArray
	**/
	static public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.emit(SIGNAL(), ...)
	**/
	static public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.encodeData(list-of-QModelIndex, QDataStream)
	**/
	static public function encodeData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.endInsertColumns()
	**/
	static public function endInsertColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.endInsertRows()
	**/
	static public function endInsertRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.endMoveColumns()
	**/
	static public function endMoveColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.endMoveRows()
	**/
	static public function endMoveRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.endRemoveColumns()
	**/
	static public function endRemoveColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.endRemoveRows()
	**/
	static public function endRemoveRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.endResetModel()
	**/
	static public function endResetModel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.event(QEvent) -> bool
	**/
	static public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.eventFilter(QObject, QEvent) -> bool
	**/
	static public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.fetchMore(QModelIndex)
	**/
	static public function fetchMore(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.findChild(type, str name='') -> QObject
		QObject.findChild(tuple, str name='') -> QObject
	**/
	static public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.findChildren(type, str name='') -> list-of-QObject
		QObject.findChildren(tuple, str name='') -> list-of-QObject
		QObject.findChildren(type, QRegExp) -> list-of-QObject
		QObject.findChildren(tuple, QRegExp) -> list-of-QObject
	**/
	static public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.flags(QModelIndex) -> Qt.ItemFlags
	**/
	public function flags(index:Dynamic):Dynamic;
	static public function hasChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.hasIndex(int, int, QModelIndex parent=QModelIndex()) -> bool
	**/
	static public function hasIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.headerData(int, Qt.Orientation, int role=Qt.DisplayRole) -> object
	**/
	public function headerData(section:Dynamic, orientation:Dynamic, ?role:Dynamic):Dynamic;
	/**
		QAbstractItemModel.headerDataChanged[Qt.Orientation, int, int] [signal]
	**/
	public function headerDataChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractTableModel.index(int, int, QModelIndex parent=QModelIndex()) -> QModelIndex
	**/
	static public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.inherits(str) -> bool
	**/
	static public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.insertColumn(int, QModelIndex parent=QModelIndex()) -> bool
	**/
	static public function insertColumn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.insertColumns(int, int, QModelIndex parent=QModelIndex()) -> bool
	**/
	static public function insertColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.insertRow(int, QModelIndex parent=QModelIndex()) -> bool
	**/
	static public function insertRow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.insertRows(int, int, QModelIndex parent=QModelIndex()) -> bool
	**/
	static public function insertRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.installEventFilter(QObject)
	**/
	static public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.isWidgetType() -> bool
	**/
	static public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.itemData(QModelIndex) -> dict-of-int-object
	**/
	static public function itemData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.killTimer(int)
	**/
	static public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.layoutAboutToBeChanged [signal]
	**/
	public function layoutAboutToBeChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.layoutChanged [signal]
	**/
	public function layoutChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.match(QModelIndex, int, object, int hits=1, Qt.MatchFlags flags=Qt.MatchStartsWith|Qt.MatchWrap) -> list-of-QModelIndex
	**/
	static public function match(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.metaObject() -> QMetaObject
	**/
	static public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.mimeData(list-of-QModelIndex) -> QMimeData
	**/
	static public function mimeData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.mimeTypes() -> list-of-str
	**/
	static public function mimeTypes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.modelAboutToBeReset [signal]
	**/
	public function modelAboutToBeReset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.modelReset [signal]
	**/
	public function modelReset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.moveToThread(QThread)
	**/
	static public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.objectName() -> str
	**/
	static public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.persistentIndexList() -> list-of-QModelIndex
	**/
	static public function persistentIndexList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.property(str) -> object
	**/
	static public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.pyqtConfigure(...)
		
		Each keyword argument is either the name of a Qt property or a Qt signal.
		For properties the property is set to the given value which should be of an
		appropriate type.
		For signals the signal is connected to the given value which should be a
		callable.
	**/
	static public function pyqtConfigure(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.receivers(SIGNAL()) -> int
	**/
	static public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.removeColumn(int, QModelIndex parent=QModelIndex()) -> bool
	**/
	static public function removeColumn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.removeColumns(int, int, QModelIndex parent=QModelIndex()) -> bool
	**/
	static public function removeColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.removeEventFilter(QObject)
	**/
	static public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.removeRow(int, QModelIndex parent=QModelIndex()) -> bool
	**/
	static public function removeRow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.removeRows(int, int, QModelIndex parent=QModelIndex()) -> bool
	**/
	static public function removeRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.reset()
	**/
	static public function reset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.resetInternalData()
	**/
	static public function resetInternalData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.revert()
	**/
	static public function revert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.roleNames() -> dict-of-int-QByteArray
	**/
	static public function roleNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.rowCount(QModelIndex parent=QModelIndex()) -> int
	**/
	public function rowCount(?index:Dynamic):Dynamic;
	/**
		QAbstractItemModel.rowsAboutToBeInserted[QModelIndex, int, int] [signal]
	**/
	public function rowsAboutToBeInserted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.rowsAboutToBeMoved[QModelIndex, int, int, QModelIndex, int] [signal]
	**/
	public function rowsAboutToBeMoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.rowsAboutToBeRemoved[QModelIndex, int, int] [signal]
	**/
	public function rowsAboutToBeRemoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.rowsInserted[QModelIndex, int, int] [signal]
	**/
	public function rowsInserted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.rowsMoved[QModelIndex, int, int, QModelIndex, int] [signal]
	**/
	public function rowsMoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.rowsRemoved[QModelIndex, int, int] [signal]
	**/
	public function rowsRemoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.sender() -> QObject
	**/
	static public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.senderSignalIndex() -> int
	**/
	static public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.setData(QModelIndex, object, int role=Qt.EditRole) -> bool
	**/
	public function setData(index:Dynamic, value:Dynamic, role:Dynamic):Dynamic;
	public function setDataFrame(dataFrame:Dynamic):Dynamic;
	/**
		QAbstractItemModel.setHeaderData(int, Qt.Orientation, object, int role=Qt.EditRole) -> bool
	**/
	static public function setHeaderData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.setItemData(QModelIndex, dict-of-int-object) -> bool
	**/
	static public function setItemData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.setObjectName(str)
	**/
	static public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.setParent(QObject)
	**/
	static public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.setProperty(str, object) -> bool
	**/
	static public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.setRoleNames(dict-of-int-QByteArray)
	**/
	static public function setRoleNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.setSupportedDragActions(Qt.DropActions)
	**/
	static public function setSupportedDragActions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.sibling(int, int, QModelIndex) -> QModelIndex
	**/
	static public function sibling(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tell viewers to update their data (this is full update, not
		efficient)
	**/
	public function signalUpdate():Dynamic;
	/**
		QObject.signalsBlocked() -> bool
	**/
	static public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.sort(int, Qt.SortOrder order=Qt.AscendingOrder)
	**/
	static public function sort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.span(QModelIndex) -> QSize
	**/
	static public function span(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.startTimer(int) -> int
	**/
	static public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	/**
		QAbstractItemModel.submit() -> bool
	**/
	static public function submit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.supportedDragActions() -> Qt.DropActions
	**/
	static public function supportedDragActions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QAbstractItemModel.supportedDropActions() -> Qt.DropActions
	**/
	static public function supportedDropActions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.thread() -> QThread
	**/
	static public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.timerEvent(QTimerEvent)
	**/
	static public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.tr(str, str disambiguation=None, int n=-1) -> str
	**/
	static public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.trUtf8(str, str disambiguation=None, int n=-1) -> str
	**/
	static public function trUtf8(args:haxe.extern.Rest<Dynamic>):Dynamic;
}