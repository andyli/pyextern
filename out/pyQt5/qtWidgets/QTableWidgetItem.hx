/* This file is generated, do not edit! */
package pyQt5.qtWidgets;
@:pythonImport("PyQt5.QtWidgets", "QTableWidgetItem") extern class QTableWidgetItem {
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
	public function ItemType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Type : Dynamic;
	static public var UserType : Dynamic;
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
		background(self) -> QBrush
	**/
	public function background():Dynamic;
	/**
		checkState(self) -> Qt.CheckState
	**/
	public function checkState():Dynamic;
	/**
		clone(self) -> QTableWidgetItem
	**/
	public function clone():Dynamic;
	/**
		column(self) -> int
	**/
	public function column():Int;
	/**
		data(self, int) -> Any
	**/
	public function data(int:Int):Dynamic;
	/**
		flags(self) -> Qt.ItemFlags
	**/
	public function flags():Dynamic;
	/**
		font(self) -> QFont
	**/
	public function font():Dynamic;
	/**
		foreground(self) -> QBrush
	**/
	public function foreground():Dynamic;
	/**
		icon(self) -> QIcon
	**/
	public function icon():Dynamic;
	/**
		isSelected(self) -> bool
	**/
	public function isSelected():Bool;
	/**
		read(self, QDataStream)
	**/
	public function read(QDataStream:Dynamic):Void;
	/**
		row(self) -> int
	**/
	public function row():Int;
	/**
		setBackground(self, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setBackground(Union:Dynamic):Void;
	/**
		setCheckState(self, Qt.CheckState)
	**/
	public function setCheckState(Qt:Dynamic):Void;
	/**
		setData(self, int, Any)
	**/
	public function setData(int:Int, Any:Dynamic):Void;
	/**
		setFlags(self, Union[Qt.ItemFlags, Qt.ItemFlag])
	**/
	public function setFlags(Union:Dynamic):Void;
	/**
		setFont(self, QFont)
	**/
	public function setFont(QFont:Dynamic):Void;
	/**
		setForeground(self, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setForeground(Union:Dynamic):Void;
	/**
		setIcon(self, QIcon)
	**/
	public function setIcon(QIcon:Dynamic):Void;
	/**
		setSelected(self, bool)
	**/
	public function setSelected(bool:Bool):Void;
	/**
		setSizeHint(self, QSize)
	**/
	public function setSizeHint(QSize:Dynamic):Void;
	/**
		setStatusTip(self, str)
	**/
	public function setStatusTip(str:String):Void;
	/**
		setText(self, str)
	**/
	public function setText(str:String):Void;
	/**
		setTextAlignment(self, int)
	**/
	public function setTextAlignment(int:Int):Void;
	/**
		setToolTip(self, str)
	**/
	public function setToolTip(str:String):Void;
	/**
		setWhatsThis(self, str)
	**/
	public function setWhatsThis(str:String):Void;
	/**
		sizeHint(self) -> QSize
	**/
	public function sizeHint():Dynamic;
	/**
		statusTip(self) -> str
	**/
	public function statusTip():String;
	/**
		tableWidget(self) -> QTableWidget
	**/
	public function tableWidget():Dynamic;
	/**
		text(self) -> str
	**/
	public function text():String;
	/**
		textAlignment(self) -> int
	**/
	public function textAlignment():Int;
	/**
		toolTip(self) -> str
	**/
	public function toolTip():String;
	/**
		type(self) -> int
	**/
	public function type():Int;
	/**
		whatsThis(self) -> str
	**/
	public function whatsThis():String;
	/**
		write(self, QDataStream)
	**/
	public function write(QDataStream:Dynamic):Void;
}