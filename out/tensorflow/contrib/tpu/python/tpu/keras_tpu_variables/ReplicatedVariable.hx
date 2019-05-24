/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.keras_tpu_variables;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.keras_tpu_variables", "ReplicatedVariable") extern class ReplicatedVariable {
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
	public function __getitem__(?args:python.VarArgs<Dynamic>):Dynamic;
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
	public function ___init__(name:Dynamic, variables:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(name:Dynamic, variables:Dynamic):Void;
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
		Makes assignments depend on the cached value, if any.
		
		This prevents undefined behavior with reads not ordered wrt writes.
		
		Yields:
		  None.
	**/
	public function _assign_dependencies():Dynamic;
	/**
		Converts a variable to a tensor.
	**/
	public function _dense_var_to_tensor(?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	public var _in_graph_mode : Dynamic;
	public function _read_variable_op():Dynamic;
	public var _shared_name : Dynamic;
	/**
		Pass resource_variable_ops.is_resource_variable check.
	**/
	public function _should_act_as_resource_variable():Dynamic;
	public var _unique_id : Dynamic;
	/**
		Assign `value` to all replicas.
		
		Outside of the tpu.rewrite context, assign explicitly to all replicas.
		Inside of the tpu.rewrite context, assigns to the local replica.
		
		Arguments:
		  value: Tensor to assign
		  use_locking: ignored
		  name: ignored
		  read_value: return the value from the assignment
		Returns:
		  Assignment operation, or new value of the variable if `read_value` is True
	**/
	public function assign(value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	public function assign_add(delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	public function assign_sub(delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	public var constraint : Dynamic;
	public var dtype : Dynamic;
	public function get():Dynamic;
	public function get_shape():Dynamic;
	public var graph : Dynamic;
	public var handle : Dynamic;
	public var initializer : Dynamic;
	public function is_initialized(?name:Dynamic):Dynamic;
	public var is_tensor_like : Dynamic;
	public var name : Dynamic;
	public var op : Dynamic;
	public function read_value():Dynamic;
	public var shape : Dynamic;
	public function to_proto(?export_scope:Dynamic):Dynamic;
}