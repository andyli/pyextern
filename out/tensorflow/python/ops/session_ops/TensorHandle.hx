/* This file is generated, do not edit! */
package tensorflow.python.ops.session_ops;
@:pythonImport("tensorflow.python.ops.session_ops", "TensorHandle") extern class TensorHandle {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
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
		Constructs a new tensor handle.
		
		A tensor handle for a persistent tensor is a python string
		that has the form of "tensor_name;unique_id;device_name".
		
		Args:
		  handle: A tensor handle.
		  dtype: The data type of the tensor represented by `handle`.
		  session: The session in which the tensor is produced.
	**/
	@:native("__init__")
	public function ___init__(handle:Dynamic, dtype:Dynamic, session:Dynamic):Dynamic;
	/**
		Constructs a new tensor handle.
		
		A tensor handle for a persistent tensor is a python string
		that has the form of "tensor_name;unique_id;device_name".
		
		Args:
		  handle: A tensor handle.
		  dtype: The data type of the tensor represented by `handle`.
		  session: The session in which the tensor is produced.
	**/
	public function new(handle:Dynamic, dtype:Dynamic, session:Dynamic):Void;
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
		The device name encoded in the handle.
	**/
	static public function _get_device_name(handle:Dynamic):Dynamic;
	/**
		The graph key for mover.
	**/
	static public function _get_mover_key(feeder:Dynamic, handle:Dynamic):Dynamic;
	/**
		The graph key for reader.
	**/
	static public function _get_reader_key(handle:Dynamic):Dynamic;
	/**
		The ResourceHandle representation of this handle.
	**/
	public function _get_resource_handle():Dynamic;
	/**
		Force the deletion of this persistent tensor.
	**/
	public function delete():Dynamic;
	/**
		Return the value of the tensor represented by this handle.
	**/
	public function eval():Dynamic;
	/**
		Return the raw handle of the tensor.
		
		Note that the method disables the automatic garbage collection of this
		persistent tensor. The caller is now responsible for managing the life
		time of the tensor.
	**/
	public function get_raw_handle():Dynamic;
	/**
		The string representation of this handle.
	**/
	public var handle : Dynamic;
	/**
		Convert a TensorHandle object to a feedable numpy value.
		
		Returns:
		  A numpy array of a custom struct type that can be used as a feed value
		  to run().
	**/
	public function to_numpy_array():Dynamic;
}