/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QTextLayout") extern class QTextLayout {
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
	public function CursorMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QTextLayout.FormatRange()
		QTextLayout.FormatRange(QTextLayout.FormatRange)
	**/
	static public function FormatRange(args:haxe.extern.Rest<Dynamic>):Void;
	static public var SkipCharacters : Dynamic;
	static public var SkipWords : Dynamic;
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
		additionalFormats(self) -> List[QTextLayout.FormatRange]
	**/
	public function additionalFormats():Dynamic;
	/**
		beginLayout(self)
	**/
	public function beginLayout():Void;
	/**
		boundingRect(self) -> QRectF
	**/
	public function boundingRect():Dynamic;
	/**
		cacheEnabled(self) -> bool
	**/
	public function cacheEnabled():Bool;
	/**
		clearAdditionalFormats(self)
	**/
	public function clearAdditionalFormats():Void;
	/**
		clearFormats(self)
	**/
	public function clearFormats():Void;
	/**
		clearLayout(self)
	**/
	public function clearLayout():Void;
	/**
		createLine(self) -> QTextLine
	**/
	public function createLine():Dynamic;
	/**
		cursorMoveStyle(self) -> Qt.CursorMoveStyle
	**/
	public function cursorMoveStyle():Dynamic;
	/**
		draw(self, QPainter, Union[QPointF, QPoint], selections: object = QVector&lt;QTextLayout.FormatRange&gt;(), clip: QRectF = QRectF())
	**/
	public function draw(QPainter:Dynamic, Union:Dynamic, ?selections:Dynamic, ?clip:Dynamic):Void;
	/**
		drawCursor(self, QPainter, Union[QPointF, QPoint], int)
		drawCursor(self, QPainter, Union[QPointF, QPoint], int, int)
	**/
	public function drawCursor(QPainter:Dynamic, Union:Dynamic, int:Int, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		endLayout(self)
	**/
	public function endLayout():Void;
	/**
		font(self) -> QFont
	**/
	public function font():Dynamic;
	/**
		formats(self) -> List[QTextLayout.FormatRange]
	**/
	public function formats():Dynamic;
	/**
		glyphRuns(self, from_: int = -1, length: int = -1) -> object
	**/
	public function glyphRuns(?from:Dynamic, ?length:Dynamic):Dynamic;
	/**
		isValidCursorPosition(self, int) -> bool
	**/
	public function isValidCursorPosition(int:Int):Bool;
	/**
		leftCursorPosition(self, int) -> int
	**/
	public function leftCursorPosition(int:Int):Int;
	/**
		lineAt(self, int) -> QTextLine
	**/
	public function lineAt(int:Int):Dynamic;
	/**
		lineCount(self) -> int
	**/
	public function lineCount():Int;
	/**
		lineForTextPosition(self, int) -> QTextLine
	**/
	public function lineForTextPosition(int:Int):Dynamic;
	/**
		maximumWidth(self) -> float
	**/
	public function maximumWidth():Float;
	/**
		minimumWidth(self) -> float
	**/
	public function minimumWidth():Float;
	/**
		nextCursorPosition(self, int, mode: QTextLayout.CursorMode = QTextLayout.SkipCharacters) -> int
	**/
	public function nextCursorPosition(int:Int, ?mode:Dynamic):Int;
	/**
		position(self) -> QPointF
	**/
	public function position():Dynamic;
	/**
		preeditAreaPosition(self) -> int
	**/
	public function preeditAreaPosition():Int;
	/**
		preeditAreaText(self) -> str
	**/
	public function preeditAreaText():String;
	/**
		previousCursorPosition(self, int, mode: QTextLayout.CursorMode = QTextLayout.SkipCharacters) -> int
	**/
	public function previousCursorPosition(int:Int, ?mode:Dynamic):Int;
	/**
		rightCursorPosition(self, int) -> int
	**/
	public function rightCursorPosition(int:Int):Int;
	/**
		setAdditionalFormats(self, object)
	**/
	public function setAdditionalFormats(object:Dynamic):Void;
	/**
		setCacheEnabled(self, bool)
	**/
	public function setCacheEnabled(bool:Bool):Void;
	/**
		setCursorMoveStyle(self, Qt.CursorMoveStyle)
	**/
	public function setCursorMoveStyle(Qt:Dynamic):Void;
	/**
		setFont(self, QFont)
	**/
	public function setFont(QFont:Dynamic):Void;
	/**
		setFormats(self, Iterable[QTextLayout.FormatRange])
	**/
	public function setFormats(Iterable:Dynamic):Void;
	/**
		setPosition(self, Union[QPointF, QPoint])
	**/
	public function setPosition(Union:Dynamic):Void;
	/**
		setPreeditArea(self, int, str)
	**/
	public function setPreeditArea(int:Int, str:String):Void;
	/**
		setText(self, str)
	**/
	public function setText(str:String):Void;
	/**
		setTextOption(self, QTextOption)
	**/
	public function setTextOption(QTextOption:Dynamic):Void;
	/**
		text(self) -> str
	**/
	public function text():String;
	/**
		textOption(self) -> QTextOption
	**/
	public function textOption():Dynamic;
}