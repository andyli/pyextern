/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QTextDocument") extern class QTextDocument {
	static public var DocumentTitle : Dynamic;
	static public var DocumentUrl : Dynamic;
	static public var FindBackward : Dynamic;
	static public var FindCaseSensitively : Dynamic;
	public function FindFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function FindFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var FindWholeWords : Dynamic;
	static public var HtmlResource : Dynamic;
	static public var ImageResource : Dynamic;
	public function MetaInformation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var RedoStack : Dynamic;
	public function ResourceType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Stacks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var StyleSheetResource : Dynamic;
	static public var UndoAndRedoStacks : Dynamic;
	static public var UndoStack : Dynamic;
	static public var UserResource : Dynamic;
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
	public function addResource(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function adjustSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function allFormats(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function availableRedoSteps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function availableUndoSteps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function baseUrl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function baseUrlChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function begin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockCountChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function characterAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function characterCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clearUndoRedoStacks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contentsChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contentsChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function createObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cursorPositionChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function defaultCursorMoveStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function defaultFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function defaultStyleSheet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function defaultTextOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function documentLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function documentLayoutChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function documentMargin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawContents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function end(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function find(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findBlock(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findBlockByLineNumber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findBlockByNumber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function firstBlock(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function frameAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function idealWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function indentWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEmpty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isModified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isRedoAvailable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSignalConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isUndoAvailable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isUndoRedoEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lastBlock(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lineCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function loadResource(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function markContentsDirty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumBlockCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaInformation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function modificationChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectForFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pageCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pageSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function print_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function redo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function redoAvailable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function registerUserData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resource(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function revision(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rootFrame(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBaseUrl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDefaultCursorMoveStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDefaultFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDefaultStyleSheet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDefaultTextOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDocumentLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDocumentMargin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHtml(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setIndentWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMaximumBlockCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMetaInformation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setModified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPageSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPlainText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTextWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUndoRedoEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUseDesignMetrics(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	public function textWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toHtml(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toPlainText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function undo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function undoAvailable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function undoCommandAdded(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function useDesignMetrics(args:haxe.extern.Rest<Dynamic>):Dynamic;
}