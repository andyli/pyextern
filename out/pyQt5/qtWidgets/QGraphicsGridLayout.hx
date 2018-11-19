/* This file is generated, do not edit! */
package pyQt5.qtWidgets;
@:pythonImport("PyQt5.QtWidgets", "QGraphicsGridLayout") extern class QGraphicsGridLayout {
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
		Return len(self).
	**/
	public function __len__():Dynamic;
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
		activate(self)
	**/
	public function activate():Void;
	/**
		addChildLayoutItem(self, QGraphicsLayoutItem)
	**/
	public function addChildLayoutItem(QGraphicsLayoutItem:Dynamic):Void;
	/**
		addItem(self, QGraphicsLayoutItem, int, int, int, int, alignment: Union[Qt.Alignment, Qt.AlignmentFlag] = Qt.Alignment())
		addItem(self, QGraphicsLayoutItem, int, int, alignment: Union[Qt.Alignment, Qt.AlignmentFlag] = Qt.Alignment())
	**/
	public function addItem(QGraphicsLayoutItem:Dynamic, int:Int, int:Int, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		alignment(self, QGraphicsLayoutItem) -> Qt.Alignment
	**/
	public function alignment(QGraphicsLayoutItem:Dynamic):Dynamic;
	/**
		columnAlignment(self, int) -> Qt.Alignment
	**/
	public function columnAlignment(int:Int):Dynamic;
	/**
		columnCount(self) -> int
	**/
	public function columnCount():Int;
	/**
		columnMaximumWidth(self, int) -> float
	**/
	public function columnMaximumWidth(int:Int):Float;
	/**
		columnMinimumWidth(self, int) -> float
	**/
	public function columnMinimumWidth(int:Int):Float;
	/**
		columnPreferredWidth(self, int) -> float
	**/
	public function columnPreferredWidth(int:Int):Float;
	/**
		columnSpacing(self, int) -> float
	**/
	public function columnSpacing(int:Int):Float;
	/**
		columnStretchFactor(self, int) -> int
	**/
	public function columnStretchFactor(int:Int):Int;
	/**
		contentsRect(self) -> QRectF
	**/
	public function contentsRect():Dynamic;
	/**
		count(self) -> int
	**/
	public function count():Int;
	/**
		effectiveSizeHint(self, Qt.SizeHint, constraint: QSizeF = QSizeF()) -> QSizeF
	**/
	public function effectiveSizeHint(Qt:Dynamic, ?constraint:Dynamic):Dynamic;
	/**
		geometry(self) -> QRectF
	**/
	public function geometry():Dynamic;
	/**
		getContentsMargins(self) -> Tuple[float, float, float, float]
	**/
	public function getContentsMargins():Dynamic;
	/**
		graphicsItem(self) -> QGraphicsItem
	**/
	public function graphicsItem():Dynamic;
	/**
		horizontalSpacing(self) -> float
	**/
	public function horizontalSpacing():Float;
	/**
		invalidate(self)
	**/
	public function invalidate():Void;
	/**
		isActivated(self) -> bool
	**/
	public function isActivated():Bool;
	/**
		isLayout(self) -> bool
	**/
	public function isLayout():Bool;
	/**
		itemAt(self, int, int) -> QGraphicsLayoutItem
		itemAt(self, int) -> QGraphicsLayoutItem
	**/
	public function itemAt(int:Int, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		maximumHeight(self) -> float
	**/
	public function maximumHeight():Float;
	/**
		maximumSize(self) -> QSizeF
	**/
	public function maximumSize():Dynamic;
	/**
		maximumWidth(self) -> float
	**/
	public function maximumWidth():Float;
	/**
		minimumHeight(self) -> float
	**/
	public function minimumHeight():Float;
	/**
		minimumSize(self) -> QSizeF
	**/
	public function minimumSize():Dynamic;
	/**
		minimumWidth(self) -> float
	**/
	public function minimumWidth():Float;
	/**
		ownedByLayout(self) -> bool
	**/
	public function ownedByLayout():Bool;
	/**
		parentLayoutItem(self) -> QGraphicsLayoutItem
	**/
	public function parentLayoutItem():Dynamic;
	/**
		preferredHeight(self) -> float
	**/
	public function preferredHeight():Float;
	/**
		preferredSize(self) -> QSizeF
	**/
	public function preferredSize():Dynamic;
	/**
		preferredWidth(self) -> float
	**/
	public function preferredWidth():Float;
	/**
		removeAt(self, int)
	**/
	public function removeAt(int:Int):Void;
	/**
		removeItem(self, QGraphicsLayoutItem)
	**/
	public function removeItem(QGraphicsLayoutItem:Dynamic):Void;
	/**
		rowAlignment(self, int) -> Qt.Alignment
	**/
	public function rowAlignment(int:Int):Dynamic;
	/**
		rowCount(self) -> int
	**/
	public function rowCount():Int;
	/**
		rowMaximumHeight(self, int) -> float
	**/
	public function rowMaximumHeight(int:Int):Float;
	/**
		rowMinimumHeight(self, int) -> float
	**/
	public function rowMinimumHeight(int:Int):Float;
	/**
		rowPreferredHeight(self, int) -> float
	**/
	public function rowPreferredHeight(int:Int):Float;
	/**
		rowSpacing(self, int) -> float
	**/
	public function rowSpacing(int:Int):Float;
	/**
		rowStretchFactor(self, int) -> int
	**/
	public function rowStretchFactor(int:Int):Int;
	/**
		setAlignment(self, QGraphicsLayoutItem, Union[Qt.Alignment, Qt.AlignmentFlag])
	**/
	public function setAlignment(QGraphicsLayoutItem:Dynamic, Union:Dynamic):Void;
	/**
		setColumnAlignment(self, int, Union[Qt.Alignment, Qt.AlignmentFlag])
	**/
	public function setColumnAlignment(int:Int, Union:Dynamic):Void;
	/**
		setColumnFixedWidth(self, int, float)
	**/
	public function setColumnFixedWidth(int:Int, float:Float):Void;
	/**
		setColumnMaximumWidth(self, int, float)
	**/
	public function setColumnMaximumWidth(int:Int, float:Float):Void;
	/**
		setColumnMinimumWidth(self, int, float)
	**/
	public function setColumnMinimumWidth(int:Int, float:Float):Void;
	/**
		setColumnPreferredWidth(self, int, float)
	**/
	public function setColumnPreferredWidth(int:Int, float:Float):Void;
	/**
		setColumnSpacing(self, int, float)
	**/
	public function setColumnSpacing(int:Int, float:Float):Void;
	/**
		setColumnStretchFactor(self, int, int)
	**/
	public function setColumnStretchFactor(int:Int, int:Int):Void;
	/**
		setContentsMargins(self, float, float, float, float)
	**/
	public function setContentsMargins(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		setGeometry(self, QRectF)
	**/
	public function setGeometry(QRectF:Dynamic):Void;
	/**
		setGraphicsItem(self, QGraphicsItem)
	**/
	public function setGraphicsItem(QGraphicsItem:Dynamic):Void;
	/**
		setHorizontalSpacing(self, float)
	**/
	public function setHorizontalSpacing(float:Float):Void;
	/**
		setMaximumHeight(self, float)
	**/
	public function setMaximumHeight(float:Float):Void;
	/**
		setMaximumSize(self, QSizeF)
		setMaximumSize(self, float, float)
	**/
	public function setMaximumSize(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setMaximumWidth(self, float)
	**/
	public function setMaximumWidth(float:Float):Void;
	/**
		setMinimumHeight(self, float)
	**/
	public function setMinimumHeight(float:Float):Void;
	/**
		setMinimumSize(self, QSizeF)
		setMinimumSize(self, float, float)
	**/
	public function setMinimumSize(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setMinimumWidth(self, float)
	**/
	public function setMinimumWidth(float:Float):Void;
	/**
		setOwnedByLayout(self, bool)
	**/
	public function setOwnedByLayout(bool:Bool):Void;
	/**
		setParentLayoutItem(self, QGraphicsLayoutItem)
	**/
	public function setParentLayoutItem(QGraphicsLayoutItem:Dynamic):Void;
	/**
		setPreferredHeight(self, float)
	**/
	public function setPreferredHeight(float:Float):Void;
	/**
		setPreferredSize(self, QSizeF)
		setPreferredSize(self, float, float)
	**/
	public function setPreferredSize(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setPreferredWidth(self, float)
	**/
	public function setPreferredWidth(float:Float):Void;
	/**
		setRowAlignment(self, int, Union[Qt.Alignment, Qt.AlignmentFlag])
	**/
	public function setRowAlignment(int:Int, Union:Dynamic):Void;
	/**
		setRowFixedHeight(self, int, float)
	**/
	public function setRowFixedHeight(int:Int, float:Float):Void;
	/**
		setRowMaximumHeight(self, int, float)
	**/
	public function setRowMaximumHeight(int:Int, float:Float):Void;
	/**
		setRowMinimumHeight(self, int, float)
	**/
	public function setRowMinimumHeight(int:Int, float:Float):Void;
	/**
		setRowPreferredHeight(self, int, float)
	**/
	public function setRowPreferredHeight(int:Int, float:Float):Void;
	/**
		setRowSpacing(self, int, float)
	**/
	public function setRowSpacing(int:Int, float:Float):Void;
	/**
		setRowStretchFactor(self, int, int)
	**/
	public function setRowStretchFactor(int:Int, int:Int):Void;
	/**
		setSizePolicy(self, QSizePolicy)
		setSizePolicy(self, QSizePolicy.Policy, QSizePolicy.Policy, controlType: QSizePolicy.ControlType = QSizePolicy.DefaultType)
	**/
	public function setSizePolicy(QSizePolicy:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setSpacing(self, float)
	**/
	public function setSpacing(float:Float):Void;
	/**
		setVerticalSpacing(self, float)
	**/
	public function setVerticalSpacing(float:Float):Void;
	/**
		sizeHint(self, Qt.SizeHint, constraint: QSizeF = QSizeF()) -> QSizeF
	**/
	public function sizeHint(Qt:Dynamic, ?constraint:Dynamic):Dynamic;
	/**
		sizePolicy(self) -> QSizePolicy
	**/
	public function sizePolicy():Dynamic;
	/**
		updateGeometry(self)
	**/
	public function updateGeometry():Void;
	/**
		verticalSpacing(self) -> float
	**/
	public function verticalSpacing():Float;
	/**
		widgetEvent(self, QEvent)
	**/
	public function widgetEvent(QEvent:Dynamic):Void;
}