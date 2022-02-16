/* This file is generated, do not edit! */
package tensorflow.python.distribute.packed_distributed_variable;
@:pythonImport("tensorflow.python.distribute.packed_distributed_variable", "PackedVarAndDevice") extern class PackedVarAndDevice {
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
	public function __getattr__(name:Dynamic):Dynamic;
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
	public function ___init__(_var:Dynamic, device:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(_var:Dynamic, device:Dynamic):Void;
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
	public function _as_graph_element():Dynamic;
	public function _dense_var_to_tensor(?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	public function assign(value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	public function assign_add(delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	public function assign_sub(delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	public var device : Dynamic;
	public var handle : Dynamic;
	public var initial_value : Dynamic;
	public function initialized_value():Dynamic;
	public function on_device_handle():Dynamic;
	public var op : Dynamic;
	public function read_value():Dynamic;
	public function scatter_add(sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	public function scatter_div(sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	public function scatter_max(sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	public function scatter_min(sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	public function scatter_mul(sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	public function scatter_sub(sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	public function scatter_update(sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	public function value():Dynamic;
	@:native("var")
	public function _var():Dynamic;
}