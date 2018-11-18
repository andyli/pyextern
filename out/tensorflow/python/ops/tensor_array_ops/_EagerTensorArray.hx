/* This file is generated, do not edit! */
package tensorflow.python.ops.tensor_array_ops;
@:pythonImport("tensorflow.python.ops.tensor_array_ops", "_EagerTensorArray") extern class _EagerTensorArray {
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
		Constructs a TensorArray compatible with eager execution.
		
		Args:
		  dtype: (required) data type of the TensorArray.
		  size: (optional) int32 scalar `Tensor`: the size of the TensorArray.
		    Required if handle is not provided.
		  dynamic_size: (optional) Python bool: If true, writes to the TensorArray
		    can grow the TensorArray past its initial size.  Default: False.
		  clear_after_read: Boolean (optional, default: True).  If True, clear
		    TensorArray values after reading them.  This disables read-many
		    semantics, but allows early release of memory.
		  tensor_array_name: unused.
		  handle: unsupported.
		  flow: unsupported.
		  infer_shape: used for error checking, same semantics as TensorArray.
		  element_shape: used for error checking, same semantics as TensorArray.
		  colocate_with_first_write_call: unsupported.
		  name: unsupported.
		
		Raises:
		  ValueError: handle or flow are supplied, or if size is not supplied.
	**/
	@:native("__init__")
	public function ___init__(dtype:Dynamic, ?size:Dynamic, ?dynamic_size:Dynamic, ?clear_after_read:Dynamic, ?tensor_array_name:Dynamic, ?handle:Dynamic, ?flow:Dynamic, ?infer_shape:Dynamic, ?element_shape:Dynamic, ?colocate_with_first_write_call:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Constructs a TensorArray compatible with eager execution.
		
		Args:
		  dtype: (required) data type of the TensorArray.
		  size: (optional) int32 scalar `Tensor`: the size of the TensorArray.
		    Required if handle is not provided.
		  dynamic_size: (optional) Python bool: If true, writes to the TensorArray
		    can grow the TensorArray past its initial size.  Default: False.
		  clear_after_read: Boolean (optional, default: True).  If True, clear
		    TensorArray values after reading them.  This disables read-many
		    semantics, but allows early release of memory.
		  tensor_array_name: unused.
		  handle: unsupported.
		  flow: unsupported.
		  infer_shape: used for error checking, same semantics as TensorArray.
		  element_shape: used for error checking, same semantics as TensorArray.
		  colocate_with_first_write_call: unsupported.
		  name: unsupported.
		
		Raises:
		  ValueError: handle or flow are supplied, or if size is not supplied.
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
	public function _maybe_zero(ix:Dynamic):Dynamic;
	/**
		Writes `value` into index named by `index`.
		
		Args:
		  index: 0-D.  int32 scalar with the index to write to.
		  value: N-D.  Tensor of type `dtype`.  The `Tensor` to write to `index`.
		
		Raises:
		  errors_impl.InvalidArgumentError: `value` dtype does not match dtype.
		  errors_impl.OutOfRangeError: `index` is out of bounds.
		  ValueError: shape of `value` is not consistent with inferred shape.
	**/
	public function _write(index:Dynamic, value:Dynamic):Dynamic;
	public function close(?name:Dynamic):Dynamic;
	/**
		See TensorArray.
	**/
	public function concat(?name:Dynamic):Dynamic;
	public var dtype : Dynamic;
	/**
		For compatibility; flows are not meaningful when eager is enabled.
	**/
	public var flow : Dynamic;
	/**
		See TensorArray.
	**/
	public function gather(indices:Dynamic, ?name:Dynamic):Dynamic;
	public function grad(source:Dynamic, ?flow:Dynamic, ?name:Dynamic):Dynamic;
	/**
		For compatibility; handles are not meaningful when eager is enabled.
	**/
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
	**/
	public function scatter(indices:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		See TensorArray.
	**/
	public function size(?name:Dynamic):Dynamic;
	/**
		See TensorArray.
	**/
	public function split(value:Dynamic, lengths:Dynamic, ?name:Dynamic):Dynamic;
	/**
		See TensorArray.
	**/
	public function stack(?name:Dynamic):Dynamic;
	/**
		See TensorArray.
	**/
	public function unstack(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		See TensorArray.
	**/
	public function write(index:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
}