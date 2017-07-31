/* This file is generated, do not edit! */
package tensorflow.python.client.timeline;
@:pythonImport("tensorflow.python.client.timeline", "_TensorTracker") extern class _TensorTracker {
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
		Creates an object to track tensor references.
		
		This class is not thread safe and is intended only for internal use by
		the 'Timeline' class in this file.
		
		Args:
		  name:  The name of the Tensor as a string.
		  object_id:  Chrome Trace object identifier assigned for this Tensor.
		  timestamp:  The creation timestamp of this event as a long integer.
		  pid:  Process identifier of the assicaiated device, as an integer.
		  allocator:  Name of the allocator used to create the Tensor.
		  num_bytes:  Number of bytes allocated (long integer).
		
		Returns:
		  A 'TensorTracker' object.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, object_id:Dynamic, timestamp:Dynamic, pid:Dynamic, allocator:Dynamic, num_bytes:Dynamic):Dynamic;
	/**
		Creates an object to track tensor references.
		
		This class is not thread safe and is intended only for internal use by
		the 'Timeline' class in this file.
		
		Args:
		  name:  The name of the Tensor as a string.
		  object_id:  Chrome Trace object identifier assigned for this Tensor.
		  timestamp:  The creation timestamp of this event as a long integer.
		  pid:  Process identifier of the assicaiated device, as an integer.
		  allocator:  Name of the allocator used to create the Tensor.
		  num_bytes:  Number of bytes allocated (long integer).
		
		Returns:
		  A 'TensorTracker' object.
	**/
	public function new(name:Dynamic, object_id:Dynamic, timestamp:Dynamic, pid:Dynamic, allocator:Dynamic, num_bytes:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Adds a reference to this tensor with the specified timestamp.
		
		Args:
		  timestamp:  Timestamp of object reference as an integer.
	**/
	public function add_ref(timestamp:Dynamic):Dynamic;
	/**
		Adds an unref to this tensor with the specified timestamp.
		
		Args:
		  timestamp:  Timestamp of object unreference as an integer.
	**/
	public function add_unref(timestamp:Dynamic):Dynamic;
	/**
		Name of the allocator used to create this tensor (string).
	**/
	public var allocator : Dynamic;
	/**
		Timestamp when this tensor was created (long integer).
	**/
	public var create_time : Dynamic;
	/**
		Last unreference timestamp of this tensor (long integer).
	**/
	public var last_unref : Dynamic;
	/**
		Name of this tensor.
	**/
	public var name : Dynamic;
	/**
		Size of this tensor in bytes (long integer).
	**/
	public var num_bytes : Dynamic;
	/**
		Returns the object identifier of this tensor (integer).
	**/
	public var object_id : Dynamic;
	/**
		ID of the process which created this tensor (an integer).
	**/
	public var pid : Dynamic;
}