/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QTextBlock") extern class QTextBlock {
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
		begin(self) -> QTextBlock.iterator
	**/
	public function begin():Dynamic;
	/**
		blockFormat(self) -> QTextBlockFormat
	**/
	public function blockFormat():Dynamic;
	/**
		blockFormatIndex(self) -> int
	**/
	public function blockFormatIndex():Int;
	/**
		blockNumber(self) -> int
	**/
	public function blockNumber():Int;
	/**
		charFormat(self) -> QTextCharFormat
	**/
	public function charFormat():Dynamic;
	/**
		charFormatIndex(self) -> int
	**/
	public function charFormatIndex():Int;
	/**
		clearLayout(self)
	**/
	public function clearLayout():Void;
	/**
		contains(self, int) -> bool
	**/
	public function contains(int:Int):Bool;
	/**
		document(self) -> QTextDocument
	**/
	public function document():Dynamic;
	/**
		end(self) -> QTextBlock.iterator
	**/
	public function end():Dynamic;
	/**
		firstLineNumber(self) -> int
	**/
	public function firstLineNumber():Int;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		isVisible(self) -> bool
	**/
	public function isVisible():Bool;
	/**
		QTextBlock.iterator()
		QTextBlock.iterator(QTextBlock.iterator)
	**/
	static public function iterator(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		layout(self) -> QTextLayout
	**/
	public function layout():Dynamic;
	/**
		length(self) -> int
	**/
	public function length():Int;
	/**
		lineCount(self) -> int
	**/
	public function lineCount():Int;
	/**
		next(self) -> QTextBlock
	**/
	public function next():Dynamic;
	/**
		position(self) -> int
	**/
	public function position():Int;
	/**
		previous(self) -> QTextBlock
	**/
	public function previous():Dynamic;
	/**
		revision(self) -> int
	**/
	public function revision():Int;
	/**
		setLineCount(self, int)
	**/
	public function setLineCount(int:Int):Void;
	/**
		setRevision(self, int)
	**/
	public function setRevision(int:Int):Void;
	/**
		setUserData(self, QTextBlockUserData)
	**/
	public function setUserData(QTextBlockUserData:Dynamic):Void;
	/**
		setUserState(self, int)
	**/
	public function setUserState(int:Int):Void;
	/**
		setVisible(self, bool)
	**/
	public function setVisible(bool:Bool):Void;
	/**
		text(self) -> str
	**/
	public function text():String;
	/**
		textDirection(self) -> Qt.LayoutDirection
	**/
	public function textDirection():Dynamic;
	/**
		textFormats(self) -> List[QTextLayout.FormatRange]
	**/
	public function textFormats():Dynamic;
	/**
		textList(self) -> QTextList
	**/
	public function textList():Dynamic;
	/**
		userData(self) -> QTextBlockUserData
	**/
	public function userData():Dynamic;
	/**
		userState(self) -> int
	**/
	public function userState():Int;
}