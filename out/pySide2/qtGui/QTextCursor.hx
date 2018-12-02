/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QTextCursor") extern class QTextCursor {
	static public var BlockUnderCursor : Dynamic;
	static public var Document : Dynamic;
	static public var Down : Dynamic;
	static public var End : Dynamic;
	static public var EndOfBlock : Dynamic;
	static public var EndOfLine : Dynamic;
	static public var EndOfWord : Dynamic;
	static public var KeepAnchor : Dynamic;
	static public var Left : Dynamic;
	static public var LineUnderCursor : Dynamic;
	static public var MoveAnchor : Dynamic;
	public function MoveMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function MoveOperation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NextBlock : Dynamic;
	static public var NextCell : Dynamic;
	static public var NextCharacter : Dynamic;
	static public var NextRow : Dynamic;
	static public var NextWord : Dynamic;
	static public var NoMove : Dynamic;
	static public var PreviousBlock : Dynamic;
	static public var PreviousCell : Dynamic;
	static public var PreviousCharacter : Dynamic;
	static public var PreviousRow : Dynamic;
	static public var PreviousWord : Dynamic;
	static public var Right : Dynamic;
	public function SelectionType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Start : Dynamic;
	static public var StartOfBlock : Dynamic;
	static public var StartOfLine : Dynamic;
	static public var StartOfWord : Dynamic;
	static public var Up : Dynamic;
	static public var WordLeft : Dynamic;
	static public var WordRight : Dynamic;
	static public var WordUnderCursor : Dynamic;
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var __hash__ : Dynamic;
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
	public function anchor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function atBlockEnd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function atBlockStart(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function atEnd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function atStart(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function beginEditBlock(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function block(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockCharFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockNumber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function charFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clearSelection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function columnNumber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function createList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentFrame(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentTable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deleteChar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deletePreviousChar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function document(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function endEditBlock(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasComplexSelection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasSelection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertBlock(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertFragment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertFrame(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertHtml(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertImage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertTable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isCopyOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isNull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function joinPreviousEditBlock(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function keepPositionOnInsert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mergeBlockCharFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mergeBlockFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mergeCharFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function movePosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function position(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function positionInBlock(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeSelectedText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function select(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selectedTableCells(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selectedText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selectionEnd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selectionStart(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBlockCharFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBlockFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCharFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setKeepPositionOnInsert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setVerticalMovementX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setVisualNavigation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function verticalMovementX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function visualNavigation(args:haxe.extern.Rest<Dynamic>):Dynamic;
}