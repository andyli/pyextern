/* This file is generated, do not edit! */
package pyQt5.qtDesigner;
@:pythonImport("PyQt5.QtDesigner", "QDesignerPropertySheetExtension") extern class QDesignerPropertySheetExtension {
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
		count(self) -> int
	**/
	public function count():Int;
	/**
		hasReset(self, int) -> bool
	**/
	public function hasReset(int:Int):Bool;
	/**
		indexOf(self, str) -> int
	**/
	public function indexOf(str:String):Int;
	/**
		isAttribute(self, int) -> bool
	**/
	public function isAttribute(int:Int):Bool;
	/**
		isChanged(self, int) -> bool
	**/
	public function isChanged(int:Int):Bool;
	/**
		isEnabled(self, int) -> bool
	**/
	public function isEnabled(int:Int):Bool;
	/**
		isVisible(self, int) -> bool
	**/
	public function isVisible(int:Int):Bool;
	/**
		property(self, int) -> Any
	**/
	public function property(int:Int):Dynamic;
	/**
		propertyGroup(self, int) -> str
	**/
	public function propertyGroup(int:Int):String;
	/**
		propertyName(self, int) -> str
	**/
	public function propertyName(int:Int):String;
	/**
		reset(self, int) -> bool
	**/
	public function reset(int:Int):Bool;
	/**
		setAttribute(self, int, bool)
	**/
	public function setAttribute(int:Int, bool:Bool):Void;
	/**
		setChanged(self, int, bool)
	**/
	public function setChanged(int:Int, bool:Bool):Void;
	/**
		setProperty(self, int, Any)
	**/
	public function setProperty(int:Int, Any:Dynamic):Void;
	/**
		setPropertyGroup(self, int, str)
	**/
	public function setPropertyGroup(int:Int, str:String):Void;
	/**
		setVisible(self, int, bool)
	**/
	public function setVisible(int:Int, bool:Bool):Void;
}