/* This file is generated, do not edit! */
package selenium.webdriver.common.actions.pointer_actions;
@:pythonImport("selenium.webdriver.common.actions.pointer_actions", "PointerActions") extern class PointerActions {
	static public var PAUSE : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Args:
		- source: PointerInput instance
		- duration: override the default 250 msecs of DEFAULT_MOVE_DURATION in source
	**/
	@:native("__init__")
	public function ___init__(?source:Dynamic, ?duration:Dynamic):Dynamic;
	/**
		Args:
		- source: PointerInput instance
		- duration: override the default 250 msecs of DEFAULT_MOVE_DURATION in source
	**/
	public function new(?source:Dynamic, ?duration:Dynamic):Void;
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
	public function _button_action(action:Dynamic, ?button:Dynamic):Dynamic;
	public function click(?element:Dynamic):Dynamic;
	public function click_and_hold(?element:Dynamic):Dynamic;
	public function context_click(?element:Dynamic):Dynamic;
	public function double_click(?element:Dynamic):Dynamic;
	public function move_by(x:Dynamic, y:Dynamic):Dynamic;
	public function move_to(element:Dynamic, ?x:Dynamic, ?y:Dynamic):Dynamic;
	public function move_to_location(x:Dynamic, y:Dynamic):Dynamic;
	public function pause(?duration:Dynamic):Dynamic;
	public function pointer_down(?button:Dynamic):Dynamic;
	public function pointer_up(?button:Dynamic):Dynamic;
	public function release():Dynamic;
}