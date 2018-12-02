/* This file is generated, do not edit! */
package pySide2.qtHelp;
@:pythonImport("PySide2.QtHelp", "QHelpIndexModel") extern class QHelpIndexModel {
	static public var HorizontalSortHint : Dynamic;
	public function LayoutChangeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NoLayoutChangeHint : Dynamic;
	static public var VerticalSortHint : Dynamic;
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
	public function beginInsertColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function beginInsertRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function beginMoveColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function beginMoveRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function beginRemoveColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function beginRemoveRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function beginResetModel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function buddy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function canDropMimeData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function canFetchMore(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function changePersistentIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function changePersistentIndexList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function columnCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function columnsAboutToBeInserted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function columnsAboutToBeMoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function columnsAboutToBeRemoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function columnsInserted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function columnsMoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function columnsRemoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function createIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dataChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function decodeData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dropMimeData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function encodeData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function endInsertColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function endInsertRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function endMoveColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function endMoveRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function endRemoveColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function endRemoveRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function endResetModel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fetchMore(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function filter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function flags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function headerData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function headerDataChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function indexCreated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function indexCreationStarted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertColumn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertRow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isCreatingIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSignalConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function itemData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function layoutAboutToBeChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function layoutChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function linksForKeyword(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function match(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mimeData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mimeTypes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function modelAboutToBeReset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function modelReset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveColumn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveRow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function persistentIndexList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function registerUserData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeColumn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeRow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resetInternalData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function revert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function roleNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rowCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rowsAboutToBeInserted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rowsAboutToBeMoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rowsAboutToBeRemoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rowsInserted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rowsMoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rowsRemoved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHeaderData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setItemData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStringList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sibling(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function span(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	public function stringList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function submit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportedDragActions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportedDropActions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
}