/* This file is generated, do not edit! */
package tensorflow.python.distribute.distribute_lib;
@:pythonImport("tensorflow.python.distribute.distribute_lib", "InputContext") extern class InputContext {
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
		Initializes an InputContext object.
		
		Args:
		  num_input_pipelines: the number of input pipelines in a cluster.
		  input_pipeline_id: the current input pipeline id, should be an int in
		    [0,`num_input_pipelines`).
		  num_replicas_in_sync: the number of replicas that are in sync.
	**/
	@:native("__init__")
	public function ___init__(?num_input_pipelines:Dynamic, ?input_pipeline_id:Dynamic, ?num_replicas_in_sync:Dynamic):Dynamic;
	/**
		Initializes an InputContext object.
		
		Args:
		  num_input_pipelines: the number of input pipelines in a cluster.
		  input_pipeline_id: the current input pipeline id, should be an int in
		    [0,`num_input_pipelines`).
		  num_replicas_in_sync: the number of replicas that are in sync.
	**/
	public function new(?num_input_pipelines:Dynamic, ?input_pipeline_id:Dynamic, ?num_replicas_in_sync:Dynamic):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Returns the per-replica batch size.
		
		Args:
		  global_batch_size: the global batch size which should be divisible by
		    `num_replicas_in_sync`.
		
		Returns:
		  the per-replica batch size.
		
		Raises:
		  ValueError: if `global_batch_size` not divisible by
		    `num_replicas_in_sync`.
	**/
	public function get_per_replica_batch_size(global_batch_size:Dynamic):Dynamic;
	/**
		Returns the input pipeline ID.
	**/
	public var input_pipeline_id : Dynamic;
	/**
		Returns the number of input pipelines.
	**/
	public var num_input_pipelines : Dynamic;
	/**
		Returns the number of compute replicas in sync.
	**/
	public var num_replicas_in_sync : Dynamic;
}