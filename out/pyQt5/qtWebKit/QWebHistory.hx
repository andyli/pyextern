/* This file is generated, do not edit! */
package pyQt5.qtWebKit;
@:pythonImport("PyQt5.QtWebKit", "QWebHistory") extern class QWebHistory {
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
		back(self)
	**/
	public function back():Void;
	/**
		backItem(self) -> QWebHistoryItem
	**/
	public function backItem():Dynamic;
	/**
		backItems(self, int) -> List[QWebHistoryItem]
	**/
	public function backItems(int:Int):Dynamic;
	/**
		canGoBack(self) -> bool
	**/
	public function canGoBack():Bool;
	/**
		canGoForward(self) -> bool
	**/
	public function canGoForward():Bool;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		count(self) -> int
	**/
	public function count():Int;
	/**
		currentItem(self) -> QWebHistoryItem
	**/
	public function currentItem():Dynamic;
	/**
		currentItemIndex(self) -> int
	**/
	public function currentItemIndex():Int;
	/**
		forward(self)
	**/
	public function forward():Void;
	/**
		forwardItem(self) -> QWebHistoryItem
	**/
	public function forwardItem():Dynamic;
	/**
		forwardItems(self, int) -> List[QWebHistoryItem]
	**/
	public function forwardItems(int:Int):Dynamic;
	/**
		goToItem(self, QWebHistoryItem)
	**/
	public function goToItem(QWebHistoryItem:Dynamic):Void;
	/**
		itemAt(self, int) -> QWebHistoryItem
	**/
	public function itemAt(int:Int):Dynamic;
	/**
		items(self) -> object
	**/
	public function items():Dynamic;
	/**
		maximumItemCount(self) -> int
	**/
	public function maximumItemCount():Int;
	/**
		setMaximumItemCount(self, int)
	**/
	public function setMaximumItemCount(int:Int):Void;
}