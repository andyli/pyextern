/* This file is generated, do not edit! */
package pySide2.qtWidgets;
@:pythonImport("PySide2.QtWidgets", "QGraphicsLayout") extern class QGraphicsLayout {
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
	public function activate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addChildLayoutItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contentsRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function effectiveSizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function geometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function graphicsItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function instantInvalidatePropagation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function invalidate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isActivated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function itemAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ownedByLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parentLayoutItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function preferredHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function preferredSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function preferredWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGraphicsItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setInstantInvalidatePropagation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMaximumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMaximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMaximumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMinimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMinimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMinimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOwnedByLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParentLayoutItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPreferredHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPreferredSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPreferredWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSizePolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sizePolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function updateGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function widgetEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
}