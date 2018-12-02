/* This file is generated, do not edit! */
package pySide2.qtQuick;
@:pythonImport("PySide2.QtQuick", "QSGSimpleRectNode") extern class QSGSimpleRectNode {
	static public var BasicNodeType : Dynamic;
	static public var ClipNodeType : Dynamic;
	static public var DirtyForceUpdate : Dynamic;
	static public var DirtyGeometry : Dynamic;
	static public var DirtyMaterial : Dynamic;
	static public var DirtyMatrix : Dynamic;
	static public var DirtyNodeAdded : Dynamic;
	static public var DirtyNodeRemoved : Dynamic;
	static public var DirtyOpacity : Dynamic;
	static public var DirtyPropagationMask : Dynamic;
	public function DirtyState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function DirtyStateBit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DirtySubtreeBlocked : Dynamic;
	static public var DirtyUsePreprocess : Dynamic;
	public function Flag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Flags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var GeometryNodeType : Dynamic;
	static public var IsVisitableNode : Dynamic;
	public function NodeType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var OpacityNodeType : Dynamic;
	static public var OwnedByParent : Dynamic;
	static public var OwnsGeometry : Dynamic;
	static public var OwnsMaterial : Dynamic;
	static public var OwnsOpaqueMaterial : Dynamic;
	static public var RenderNodeType : Dynamic;
	static public var RootNodeType : Dynamic;
	static public var TransformNodeType : Dynamic;
	static public var UsePreprocess : Dynamic;
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
	public function appendChildNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childAtIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clearDirty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clipList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function color(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dirtyState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function firstChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function flags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function geometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inheritedOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertChildNodeAfter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertChildNodeBefore(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSubtreeBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lastChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function markDirty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function matrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nextSibling(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function prependChildNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function preprocess(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function previousSibling(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeAllChildNodes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeChildNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function renderOrder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function reparentChildNodesTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setInheritedOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRenderOrder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function type(args:haxe.extern.Rest<Dynamic>):Dynamic;
}