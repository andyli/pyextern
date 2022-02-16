/* This file is generated, do not edit! */
package tensorflow.python.util.lock_util;
@:pythonImport("tensorflow.python.util.lock_util", "GroupLock") extern class GroupLock {
	/**
		Context manager helper for `GroupLock`.
	**/
	static public function _Context(lock:Dynamic, group_id:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Initialize a group lock.
		
		Args:
		  num_groups: The number of groups that will be accessing the resource under
		    consideration. Should be a positive number.
		
		Returns:
		  A group lock that can then be used to synchronize code.
		
		Raises:
		  ValueError: If num_groups is less than 1.
	**/
	@:native("__init__")
	public function ___init__(?num_groups:Dynamic):Dynamic;
	/**
		Initialize a group lock.
		
		Args:
		  num_groups: The number of groups that will be accessing the resource under
		    consideration. Should be a positive number.
		
		Returns:
		  A group lock that can then be used to synchronize code.
		
		Raises:
		  ValueError: If num_groups is less than 1.
	**/
	public function new(?num_groups:Dynamic):Void;
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
	static public var __slots__ : Dynamic;
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
	public function _another_group_active(group_id:Dynamic):Dynamic;
	public var _group_member_counts : Dynamic;
	public var _num_groups : Dynamic;
	public var _ready : Dynamic;
	public function _validate_group_id(group_id:Dynamic):Dynamic;
	/**
		Acquire the group lock for a specific group `group_id`.
	**/
	public function acquire(group_id:Dynamic):Dynamic;
	/**
		Enter a context where the lock is with group `group_id`.
		
		Args:
		  group_id: The group for which to acquire and release the lock.
		
		Returns:
		  A context manager which will acquire the lock for `group_id`.
	**/
	public function group(group_id:Dynamic):Dynamic;
	/**
		Release the group lock for a specific group `group_id`.
	**/
	public function release(group_id:Dynamic):Dynamic;
}