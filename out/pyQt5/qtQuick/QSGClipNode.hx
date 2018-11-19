/* This file is generated, do not edit! */
package pyQt5.qtQuick;
@:pythonImport("PyQt5.QtQuick", "QSGClipNode") extern class QSGClipNode {
	static public var BasicNodeType : Dynamic;
	static public var ClipNodeType : Dynamic;
	static public var DirtyGeometry : Dynamic;
	static public var DirtyMaterial : Dynamic;
	static public var DirtyMatrix : Dynamic;
	static public var DirtyNodeAdded : Dynamic;
	static public var DirtyNodeRemoved : Dynamic;
	static public var DirtyOpacity : Dynamic;
	/**
		QSGNode.DirtyState()
		QSGNode.DirtyState(Union[QSGNode.DirtyState, QSGNode.DirtyStateBit])
		QSGNode.DirtyState(QSGNode.DirtyState)
	**/
	static public function DirtyState(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function DirtyStateBit(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function Flag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QSGNode.Flags()
		QSGNode.Flags(Union[QSGNode.Flags, QSGNode.Flag])
		QSGNode.Flags(QSGNode.Flags)
	**/
	static public function Flags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var GeometryNodeType : Dynamic;
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
	public function NodeType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var OpacityNodeType : Dynamic;
	static public var OwnedByParent : Dynamic;
	static public var OwnsGeometry : Dynamic;
	static public var OwnsMaterial : Dynamic;
	static public var OwnsOpaqueMaterial : Dynamic;
	static public var TransformNodeType : Dynamic;
	static public var UsePreprocess : Dynamic;
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
		appendChildNode(self, QSGNode)
	**/
	public function appendChildNode(QSGNode:Dynamic):Void;
	/**
		childAtIndex(self, int) -> QSGNode
	**/
	public function childAtIndex(int:Int):Dynamic;
	/**
		childCount(self) -> int
	**/
	public function childCount():Int;
	/**
		clipRect(self) -> QRectF
	**/
	public function clipRect():Dynamic;
	/**
		firstChild(self) -> QSGNode
	**/
	public function firstChild():Dynamic;
	/**
		flags(self) -> QSGNode.Flags
	**/
	public function flags():Dynamic;
	/**
		geometry(self) -> QSGGeometry
	**/
	public function geometry():Dynamic;
	/**
		insertChildNodeAfter(self, QSGNode, QSGNode)
	**/
	public function insertChildNodeAfter(QSGNode:Dynamic, QSGNode:Dynamic):Void;
	/**
		insertChildNodeBefore(self, QSGNode, QSGNode)
	**/
	public function insertChildNodeBefore(QSGNode:Dynamic, QSGNode:Dynamic):Void;
	/**
		isRectangular(self) -> bool
	**/
	public function isRectangular():Bool;
	/**
		isSubtreeBlocked(self) -> bool
	**/
	public function isSubtreeBlocked():Bool;
	/**
		lastChild(self) -> QSGNode
	**/
	public function lastChild():Dynamic;
	/**
		markDirty(self, QSGNode.DirtyState)
	**/
	public function markDirty(QSGNode:Dynamic):Void;
	/**
		nextSibling(self) -> QSGNode
	**/
	public function nextSibling():Dynamic;
	/**
		parent(self) -> QSGNode
	**/
	public function parent():Dynamic;
	/**
		prependChildNode(self, QSGNode)
	**/
	public function prependChildNode(QSGNode:Dynamic):Void;
	/**
		preprocess(self)
	**/
	public function preprocess():Void;
	/**
		previousSibling(self) -> QSGNode
	**/
	public function previousSibling():Dynamic;
	/**
		removeAllChildNodes(self)
	**/
	public function removeAllChildNodes():Void;
	/**
		removeChildNode(self, QSGNode)
	**/
	public function removeChildNode(QSGNode:Dynamic):Void;
	/**
		setClipRect(self, QRectF)
	**/
	public function setClipRect(QRectF:Dynamic):Void;
	/**
		setFlag(self, QSGNode.Flag, enabled: bool = True)
	**/
	public function setFlag(QSGNode:Dynamic, ?enabled:Dynamic):Void;
	/**
		setFlags(self, QSGNode.Flags, enabled: bool = True)
	**/
	public function setFlags(QSGNode:Dynamic, ?enabled:Dynamic):Void;
	/**
		setGeometry(self, QSGGeometry)
	**/
	public function setGeometry(QSGGeometry:Dynamic):Void;
	/**
		setIsRectangular(self, bool)
	**/
	public function setIsRectangular(bool:Bool):Void;
	/**
		type(self) -> QSGNode.NodeType
	**/
	public function type():Dynamic;
}