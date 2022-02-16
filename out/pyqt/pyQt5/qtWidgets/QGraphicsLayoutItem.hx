/* This file is generated, do not edit! */
package pyQt5.qtWidgets;
@:pythonImport("PyQt5.QtWidgets", "QGraphicsLayoutItem") extern class QGraphicsLayoutItem {
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
		contentsRect(self) -> QRectF
	**/
	public function contentsRect():Dynamic;
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
		isLayout(self) -> bool
	**/
	public function isLayout():Bool;
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
		setGeometry(self, QRectF)
	**/
	public function setGeometry(QRectF:Dynamic):Void;
	/**
		setGraphicsItem(self, QGraphicsItem)
	**/
	public function setGraphicsItem(QGraphicsItem:Dynamic):Void;
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
		setSizePolicy(self, QSizePolicy)
		setSizePolicy(self, QSizePolicy.Policy, QSizePolicy.Policy, controlType: QSizePolicy.ControlType = QSizePolicy.DefaultType)
	**/
	public function setSizePolicy(QSizePolicy:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
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
}