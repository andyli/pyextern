/* This file is generated, do not edit! */
package tensorflow.python.ops.tensor_array_ops;
@:pythonImport("tensorflow.python.ops.tensor_array_ops", "_GraphTensorArrayV2") extern class _GraphTensorArrayV2 {
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
		Constructs a graph mode TensorArray.
		
		Args:
		  dtype: (required) data type of the TensorArray.
		  size: (optional) int32 scalar `Tensor`: the size of the TensorArray.
		    Required if flow is not provided.
		  dynamic_size: (optional) Python bool: If true, writes to the TensorArray
		    can grow the TensorArray past its initial size.  Default: False.
		  clear_after_read: (optional) unused. Not supported in TensorLists.
		  tensor_array_name: (optional) unused.
		  handle: (optional) Must always be None.
		  flow: (optional) A variant `Tensor` scalar for a TensorList.
		  infer_shape: (optional, default: True) If True, shape inference is
		    enabled.  In this case, all elements must have the same shape.
		  element_shape: (optional, default: None) A `TensorShape` object specifying
		    the shape constraints of each of the elements of the TensorArray. Need
		    not be fully defined.
		  colocate_with_first_write_call: (optional). unused.
		  name: (optional) A name for the operation.
		
		Raises:
		  ValueError: if both handle and tensor_array_name are provided.
		  TypeError: if handle is provided but is not a Tensor.
	**/
	@:native("__init__")
	public function ___init__(dtype:Dynamic, ?size:Dynamic, ?dynamic_size:Dynamic, ?clear_after_read:Dynamic, ?tensor_array_name:Dynamic, ?handle:Dynamic, ?flow:Dynamic, ?infer_shape:Dynamic, ?element_shape:Dynamic, ?colocate_with_first_write_call:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Constructs a graph mode TensorArray.
		
		Args:
		  dtype: (required) data type of the TensorArray.
		  size: (optional) int32 scalar `Tensor`: the size of the TensorArray.
		    Required if flow is not provided.
		  dynamic_size: (optional) Python bool: If true, writes to the TensorArray
		    can grow the TensorArray past its initial size.  Default: False.
		  clear_after_read: (optional) unused. Not supported in TensorLists.
		  tensor_array_name: (optional) unused.
		  handle: (optional) Must always be None.
		  flow: (optional) A variant `Tensor` scalar for a TensorList.
		  infer_shape: (optional, default: True) If True, shape inference is
		    enabled.  In this case, all elements must have the same shape.
		  element_shape: (optional, default: None) A `TensorShape` object specifying
		    the shape constraints of each of the elements of the TensorArray. Need
		    not be fully defined.
		  colocate_with_first_write_call: (optional). unused.
		  name: (optional) A name for the operation.
		
		Raises:
		  ValueError: if both handle and tensor_array_name are provided.
		  TypeError: if handle is provided but is not a Tensor.
	**/
	public function new(dtype:Dynamic, ?size:Dynamic, ?dynamic_size:Dynamic, ?clear_after_read:Dynamic, ?tensor_array_name:Dynamic, ?handle:Dynamic, ?flow:Dynamic, ?infer_shape:Dynamic, ?element_shape:Dynamic, ?colocate_with_first_write_call:Dynamic, ?name:Dynamic):Void;
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
	/**
		Changes the element shape of the array given a shape to merge with.
		
		Args:
		  shape: A `TensorShape` object to merge with.
		
		Raises:
		  ValueError: if the provided shape is incompatible with the current
		      element shape of the `TensorArray`.
	**/
	public function _merge_element_shape(shape:Dynamic):Dynamic;
	/**
		See TensorArray.
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	public function close(?name:Dynamic):Dynamic;
	/**
		See TensorArray.
	**/
	public function concat(?name:Dynamic):Dynamic;
	public var dtype : Dynamic;
	public var flow : Dynamic;
	/**
		See TensorArray.
	**/
	public function gather(indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Not supported.
	**/
	public function grad(source:Dynamic, ?flow:Dynamic, ?name:Dynamic):Dynamic;
	public var handle : Dynamic;
	/**
		See TensorArray.
	**/
	public function identity():Dynamic;
	/**
		See TensorArray.
	**/
	public function read(index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		See TensorArray.
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	public function scatter(indices:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		See TensorArray.
	**/
	public function size(?name:Dynamic):Dynamic;
	/**
		See TensorArray.
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	public function split(value:Dynamic, lengths:Dynamic, ?name:Dynamic):Dynamic;
	/**
		See TensorArray.
	**/
	public function stack(?name:Dynamic):Dynamic;
	/**
		See TensorArray.
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	public function unstack(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		See TensorArray.
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	public function write(index:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
}