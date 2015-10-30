/* This file is generated, do not edit! */
package matplotlib.blocking_input;
@:pythonImport("matplotlib.blocking_input", "BlockingKeyMouseInput") extern class BlockingKeyMouseInput {
	/**
		Blocking call to retrieve a single mouse or key click
		Returns True if key click, False if mouse, or None if timeout
	**/
	public function __call__(?timeout:Dynamic):Dynamic;
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
	public function ___init__(fig:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		For base class, this just appends an event to events.
	**/
	public function add_event(event:Dynamic):Dynamic;
	/**
		Disconnect all callbacks
	**/
	public function cleanup():Dynamic;
	/**
		Event handler that will be passed to the current figure to
		retrieve events.
	**/
	public function on_event(event:Dynamic):Dynamic;
	/**
		This removes an event from the event list.  Defaults to
		removing last event, but an index can be supplied.  Note that
		this does not check that there are events, much like the
		normal pop method.  If not events exist, this will throw an
		exception.
	**/
	public function pop(?index:Dynamic):Dynamic;
	/**
		This removes an event from the event list.  Defaults to
		removing last event, but an index can be supplied.  Note that
		this does not check that there are events, much like the
		normal pop method.  If not events exist, this will throw an
		exception.
	**/
	public function pop_event(?index:Dynamic):Dynamic;
	/**
		Determines if it is a key event
	**/
	public function post_event():Dynamic;
}