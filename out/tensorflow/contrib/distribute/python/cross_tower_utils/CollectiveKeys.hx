/* This file is generated, do not edit! */
package tensorflow.contrib.distribute.python.cross_tower_utils;
@:pythonImport("tensorflow.contrib.distribute.python.cross_tower_utils", "CollectiveKeys") extern class CollectiveKeys {
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
		Initializes the object.
		
		Args:
		  group_key_start: the starting integer of group key.
		  instance_key_start: the starting integer of instance key.
		  instance_key_with_id_start: the starting integer of instance key that is
		    recorded with an id.
	**/
	@:native("__init__")
	public function ___init__(?group_key_start:Dynamic, ?instance_key_start:Dynamic, ?instance_key_with_id_start:Dynamic):Dynamic;
	/**
		Initializes the object.
		
		Args:
		  group_key_start: the starting integer of group key.
		  instance_key_start: the starting integer of instance key.
		  instance_key_with_id_start: the starting integer of instance key that is
		    recorded with an id.
	**/
	public function new(?group_key_start:Dynamic, ?instance_key_start:Dynamic, ?instance_key_with_id_start:Dynamic):Void;
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
	public function _get_thread_local_object():Dynamic;
	/**
		Returns a group key for the set of devices.
		
		Args:
		  devices: list of strings naming devices in a collective group.
		
		Returns:
		  int key uniquely identifying the set of device names.
	**/
	public function get_group_key(devices:Dynamic):Dynamic;
	/**
		Returns a new instance key for use in defining a collective op.
		
		Args:
		  key_id: optional string. If set, key will be recorded and the same key
		    will be returned when the same key_id is provided. If not, an increasing
		    instance key will be returned.
	**/
	public function get_instance_key(?key_id:Dynamic):Dynamic;
}