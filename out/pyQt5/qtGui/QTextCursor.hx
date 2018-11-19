/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QTextCursor") extern class QTextCursor {
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
	public function MoveMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function SelectionType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Start : Dynamic;
	static public var StartOfBlock : Dynamic;
	static public var StartOfLine : Dynamic;
	static public var StartOfWord : Dynamic;
	static public var Up : Dynamic;
	static public var WordLeft : Dynamic;
	static public var WordRight : Dynamic;
	static public var WordUnderCursor : Dynamic;
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
		anchor(self) -> int
	**/
	public function anchor():Int;
	/**
		atBlockEnd(self) -> bool
	**/
	public function atBlockEnd():Bool;
	/**
		atBlockStart(self) -> bool
	**/
	public function atBlockStart():Bool;
	/**
		atEnd(self) -> bool
	**/
	public function atEnd():Bool;
	/**
		atStart(self) -> bool
	**/
	public function atStart():Bool;
	/**
		beginEditBlock(self)
	**/
	public function beginEditBlock():Void;
	/**
		block(self) -> QTextBlock
	**/
	public function block():Dynamic;
	/**
		blockCharFormat(self) -> QTextCharFormat
	**/
	public function blockCharFormat():Dynamic;
	/**
		blockFormat(self) -> QTextBlockFormat
	**/
	public function blockFormat():Dynamic;
	/**
		blockNumber(self) -> int
	**/
	public function blockNumber():Int;
	/**
		charFormat(self) -> QTextCharFormat
	**/
	public function charFormat():Dynamic;
	/**
		clearSelection(self)
	**/
	public function clearSelection():Void;
	/**
		columnNumber(self) -> int
	**/
	public function columnNumber():Int;
	/**
		createList(self, QTextListFormat) -> QTextList
		createList(self, QTextListFormat.Style) -> QTextList
	**/
	public function createList(QTextListFormat:Dynamic):Dynamic;
	/**
		currentFrame(self) -> QTextFrame
	**/
	public function currentFrame():Dynamic;
	/**
		currentList(self) -> QTextList
	**/
	public function currentList():Dynamic;
	/**
		currentTable(self) -> QTextTable
	**/
	public function currentTable():Dynamic;
	/**
		deleteChar(self)
	**/
	public function deleteChar():Void;
	/**
		deletePreviousChar(self)
	**/
	public function deletePreviousChar():Void;
	/**
		document(self) -> QTextDocument
	**/
	public function document():Dynamic;
	/**
		endEditBlock(self)
	**/
	public function endEditBlock():Void;
	/**
		hasComplexSelection(self) -> bool
	**/
	public function hasComplexSelection():Bool;
	/**
		hasSelection(self) -> bool
	**/
	public function hasSelection():Bool;
	/**
		insertBlock(self)
		insertBlock(self, QTextBlockFormat)
		insertBlock(self, QTextBlockFormat, QTextCharFormat)
	**/
	public function insertBlock(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		insertFragment(self, QTextDocumentFragment)
	**/
	public function insertFragment(QTextDocumentFragment:Dynamic):Void;
	/**
		insertFrame(self, QTextFrameFormat) -> QTextFrame
	**/
	public function insertFrame(QTextFrameFormat:Dynamic):Dynamic;
	/**
		insertHtml(self, str)
	**/
	public function insertHtml(str:String):Void;
	/**
		insertImage(self, QTextImageFormat)
		insertImage(self, QTextImageFormat, QTextFrameFormat.Position)
		insertImage(self, str)
		insertImage(self, QImage, name: str = '')
	**/
	public function insertImage(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		insertList(self, QTextListFormat) -> QTextList
		insertList(self, QTextListFormat.Style) -> QTextList
	**/
	public function insertList(QTextListFormat:Dynamic):Dynamic;
	/**
		insertTable(self, int, int, QTextTableFormat) -> QTextTable
		insertTable(self, int, int) -> QTextTable
	**/
	public function insertTable(int:Int, int:Int, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		insertText(self, str)
		insertText(self, str, QTextCharFormat)
	**/
	public function insertText(str:String, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		isCopyOf(self, QTextCursor) -> bool
	**/
	public function isCopyOf(QTextCursor:Dynamic):Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		joinPreviousEditBlock(self)
	**/
	public function joinPreviousEditBlock():Void;
	/**
		keepPositionOnInsert(self) -> bool
	**/
	public function keepPositionOnInsert():Bool;
	/**
		mergeBlockCharFormat(self, QTextCharFormat)
	**/
	public function mergeBlockCharFormat(QTextCharFormat:Dynamic):Void;
	/**
		mergeBlockFormat(self, QTextBlockFormat)
	**/
	public function mergeBlockFormat(QTextBlockFormat:Dynamic):Void;
	/**
		mergeCharFormat(self, QTextCharFormat)
	**/
	public function mergeCharFormat(QTextCharFormat:Dynamic):Void;
	/**
		movePosition(self, QTextCursor.MoveOperation, mode: QTextCursor.MoveMode = QTextCursor.MoveAnchor, n: int = 1) -> bool
	**/
	public function movePosition(QTextCursor:Dynamic, ?mode:Dynamic, ?n:Dynamic):Bool;
	/**
		position(self) -> int
	**/
	public function position():Int;
	/**
		positionInBlock(self) -> int
	**/
	public function positionInBlock():Int;
	/**
		removeSelectedText(self)
	**/
	public function removeSelectedText():Void;
	/**
		select(self, QTextCursor.SelectionType)
	**/
	public function select(QTextCursor:Dynamic):Void;
	/**
		selectedTableCells(self) -> Tuple[int, int, int, int]
	**/
	public function selectedTableCells():Dynamic;
	/**
		selectedText(self) -> str
	**/
	public function selectedText():String;
	/**
		selection(self) -> QTextDocumentFragment
	**/
	public function selection():Dynamic;
	/**
		selectionEnd(self) -> int
	**/
	public function selectionEnd():Int;
	/**
		selectionStart(self) -> int
	**/
	public function selectionStart():Int;
	/**
		setBlockCharFormat(self, QTextCharFormat)
	**/
	public function setBlockCharFormat(QTextCharFormat:Dynamic):Void;
	/**
		setBlockFormat(self, QTextBlockFormat)
	**/
	public function setBlockFormat(QTextBlockFormat:Dynamic):Void;
	/**
		setCharFormat(self, QTextCharFormat)
	**/
	public function setCharFormat(QTextCharFormat:Dynamic):Void;
	/**
		setKeepPositionOnInsert(self, bool)
	**/
	public function setKeepPositionOnInsert(bool:Bool):Void;
	/**
		setPosition(self, int, mode: QTextCursor.MoveMode = QTextCursor.MoveAnchor)
	**/
	public function setPosition(int:Int, ?mode:Dynamic):Void;
	/**
		setVerticalMovementX(self, int)
	**/
	public function setVerticalMovementX(int:Int):Void;
	/**
		setVisualNavigation(self, bool)
	**/
	public function setVisualNavigation(bool:Bool):Void;
	/**
		swap(self, QTextCursor)
	**/
	public function swap(QTextCursor:Dynamic):Void;
	/**
		verticalMovementX(self) -> int
	**/
	public function verticalMovementX():Int;
	/**
		visualNavigation(self) -> bool
	**/
	public function visualNavigation():Bool;
}