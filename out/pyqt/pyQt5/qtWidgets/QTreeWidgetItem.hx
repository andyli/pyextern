/* This file is generated, do not edit! */
package pyQt5.qtWidgets;
@:pythonImport("PyQt5.QtWidgets", "QTreeWidgetItem") extern class QTreeWidgetItem {
	/**
		int([x]) -> integer
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
	public function ChildIndicatorPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DontShowIndicator : Dynamic;
	static public var DontShowIndicatorWhenChildless : Dynamic;
	/**
		int([x]) -> integer
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
	static public var ShowIndicator : Dynamic;
	static public var Type : Dynamic;
	static public var UserType : Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		addChild(self, QTreeWidgetItem)
	**/
	public function addChild(QTreeWidgetItem:Dynamic):Void;
	/**
		addChildren(self, Iterable[QTreeWidgetItem])
	**/
	public function addChildren(Iterable:Dynamic):Void;
	/**
		background(self, int) -> QBrush
	**/
	public function background(int:Int):Dynamic;
	/**
		checkState(self, int) -> Qt.CheckState
	**/
	public function checkState(int:Int):Dynamic;
	/**
		child(self, int) -> QTreeWidgetItem
	**/
	public function child(int:Int):Dynamic;
	/**
		childCount(self) -> int
	**/
	public function childCount():Int;
	/**
		childIndicatorPolicy(self) -> QTreeWidgetItem.ChildIndicatorPolicy
	**/
	public function childIndicatorPolicy():Dynamic;
	/**
		clone(self) -> QTreeWidgetItem
	**/
	public function clone():Dynamic;
	/**
		columnCount(self) -> int
	**/
	public function columnCount():Int;
	/**
		data(self, int, int) -> Any
	**/
	public function data(int:Int, int:Int):Dynamic;
	/**
		emitDataChanged(self)
	**/
	public function emitDataChanged():Void;
	/**
		flags(self) -> Qt.ItemFlags
	**/
	public function flags():Dynamic;
	/**
		font(self, int) -> QFont
	**/
	public function font(int:Int):Dynamic;
	/**
		foreground(self, int) -> QBrush
	**/
	public function foreground(int:Int):Dynamic;
	/**
		icon(self, int) -> QIcon
	**/
	public function icon(int:Int):Dynamic;
	/**
		indexOfChild(self, QTreeWidgetItem) -> int
	**/
	public function indexOfChild(QTreeWidgetItem:Dynamic):Int;
	/**
		insertChild(self, int, QTreeWidgetItem)
	**/
	public function insertChild(int:Int, QTreeWidgetItem:Dynamic):Void;
	/**
		insertChildren(self, int, Iterable[QTreeWidgetItem])
	**/
	public function insertChildren(int:Int, Iterable:Dynamic):Void;
	/**
		isDisabled(self) -> bool
	**/
	public function isDisabled():Bool;
	/**
		isExpanded(self) -> bool
	**/
	public function isExpanded():Bool;
	/**
		isFirstColumnSpanned(self) -> bool
	**/
	public function isFirstColumnSpanned():Bool;
	/**
		isHidden(self) -> bool
	**/
	public function isHidden():Bool;
	/**
		isSelected(self) -> bool
	**/
	public function isSelected():Bool;
	/**
		parent(self) -> QTreeWidgetItem
	**/
	public function parent():Dynamic;
	/**
		read(self, QDataStream)
	**/
	public function read(QDataStream:Dynamic):Void;
	/**
		removeChild(self, QTreeWidgetItem)
	**/
	public function removeChild(QTreeWidgetItem:Dynamic):Void;
	/**
		setBackground(self, int, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setBackground(int:Int, Union:Dynamic):Void;
	/**
		setCheckState(self, int, Qt.CheckState)
	**/
	public function setCheckState(int:Int, Qt:Dynamic):Void;
	/**
		setChildIndicatorPolicy(self, QTreeWidgetItem.ChildIndicatorPolicy)
	**/
	public function setChildIndicatorPolicy(QTreeWidgetItem:Dynamic):Void;
	/**
		setData(self, int, int, Any)
	**/
	public function setData(int:Int, int:Int, Any:Dynamic):Void;
	/**
		setDisabled(self, bool)
	**/
	public function setDisabled(bool:Bool):Void;
	/**
		setExpanded(self, bool)
	**/
	public function setExpanded(bool:Bool):Void;
	/**
		setFirstColumnSpanned(self, bool)
	**/
	public function setFirstColumnSpanned(bool:Bool):Void;
	/**
		setFlags(self, Union[Qt.ItemFlags, Qt.ItemFlag])
	**/
	public function setFlags(Union:Dynamic):Void;
	/**
		setFont(self, int, QFont)
	**/
	public function setFont(int:Int, QFont:Dynamic):Void;
	/**
		setForeground(self, int, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setForeground(int:Int, Union:Dynamic):Void;
	/**
		setHidden(self, bool)
	**/
	public function setHidden(bool:Bool):Void;
	/**
		setIcon(self, int, QIcon)
	**/
	public function setIcon(int:Int, QIcon:Dynamic):Void;
	/**
		setSelected(self, bool)
	**/
	public function setSelected(bool:Bool):Void;
	/**
		setSizeHint(self, int, QSize)
	**/
	public function setSizeHint(int:Int, QSize:Dynamic):Void;
	/**
		setStatusTip(self, int, str)
	**/
	public function setStatusTip(int:Int, str:String):Void;
	/**
		setText(self, int, str)
	**/
	public function setText(int:Int, str:String):Void;
	/**
		setTextAlignment(self, int, int)
	**/
	public function setTextAlignment(int:Int, int:Int):Void;
	/**
		setToolTip(self, int, str)
	**/
	public function setToolTip(int:Int, str:String):Void;
	/**
		setWhatsThis(self, int, str)
	**/
	public function setWhatsThis(int:Int, str:String):Void;
	/**
		sizeHint(self, int) -> QSize
	**/
	public function sizeHint(int:Int):Dynamic;
	/**
		sortChildren(self, int, Qt.SortOrder)
	**/
	public function sortChildren(int:Int, Qt:Dynamic):Void;
	/**
		statusTip(self, int) -> str
	**/
	public function statusTip(int:Int):String;
	/**
		takeChild(self, int) -> QTreeWidgetItem
	**/
	public function takeChild(int:Int):Dynamic;
	/**
		takeChildren(self) -> List[QTreeWidgetItem]
	**/
	public function takeChildren():Dynamic;
	/**
		text(self, int) -> str
	**/
	public function text(int:Int):String;
	/**
		textAlignment(self, int) -> int
	**/
	public function textAlignment(int:Int):Int;
	/**
		toolTip(self, int) -> str
	**/
	public function toolTip(int:Int):String;
	/**
		treeWidget(self) -> QTreeWidget
	**/
	public function treeWidget():Dynamic;
	/**
		type(self) -> int
	**/
	public function type():Int;
	/**
		whatsThis(self, int) -> str
	**/
	public function whatsThis(int:Int):String;
	/**
		write(self, QDataStream)
	**/
	public function write(QDataStream:Dynamic):Void;
}