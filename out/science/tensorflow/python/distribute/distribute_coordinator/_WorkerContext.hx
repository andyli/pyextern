/* This file is generated, do not edit! */
package tensorflow.python.distribute.distribute_coordinator;
@:pythonImport("tensorflow.python.distribute.distribute_coordinator", "_WorkerContext") extern class _WorkerContext {
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(unused_exception_type:Dynamic, unused_exception_value:Dynamic, unused_traceback:Dynamic):Dynamic;
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
		Initialize the worker context object.
		
		Args:
		  strategy: a `DistributionStrategy` object.
		  cluster_spec: a ClusterSpec object. It can be empty or None in the local
		    training case.
		  task_type: a string indicating the role of the corresponding task, such as
		    "worker" or "ps". It can be None if it is local training or in-graph
		    replicated training.
		  task_id: an integer indicating id of the corresponding task. It can be
		    None if it is local training or in-graph replicated training.
		  session_config: an optional `tf.compat.v1.ConfigProto` object.
		  rpc_layer: optional string specifying the RPC protocol for communication
		    with worker masters. If None or empty, hosts in the `cluster_spec` will
		    be used directly.
		  worker_barrier: optional, the barrier object for worker synchronization.
	**/
	@:native("__init__")
	public function ___init__(strategy:Dynamic, cluster_spec:Dynamic, task_type:Dynamic, task_id:Dynamic, ?session_config:Dynamic, ?rpc_layer:Dynamic, ?worker_barrier:Dynamic):Dynamic;
	/**
		Initialize the worker context object.
		
		Args:
		  strategy: a `DistributionStrategy` object.
		  cluster_spec: a ClusterSpec object. It can be empty or None in the local
		    training case.
		  task_type: a string indicating the role of the corresponding task, such as
		    "worker" or "ps". It can be None if it is local training or in-graph
		    replicated training.
		  task_id: an integer indicating id of the corresponding task. It can be
		    None if it is local training or in-graph replicated training.
		  session_config: an optional `tf.compat.v1.ConfigProto` object.
		  rpc_layer: optional string specifying the RPC protocol for communication
		    with worker masters. If None or empty, hosts in the `cluster_spec` will
		    be used directly.
		  worker_barrier: optional, the barrier object for worker synchronization.
	**/
	public function new(strategy:Dynamic, cluster_spec:Dynamic, task_type:Dynamic, task_id:Dynamic, ?session_config:Dynamic, ?rpc_layer:Dynamic, ?worker_barrier:Dynamic):Void;
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
	public function _debug_message():Dynamic;
	/**
		Return the master target for a task.
	**/
	public function _get_master_target():Dynamic;
	/**
		Return whether the task is the chief worker.
	**/
	public function _is_chief():Dynamic;
	/**
		Returns a copy of the cluster_spec object.
	**/
	public var cluster_spec : Dynamic;
	/**
		Whether it is distributed training or not.
	**/
	public var distributed_mode : Dynamic;
	/**
		Whether to run init ops.
	**/
	public var experimental_should_init : Dynamic;
	/**
		Whether the barrier is set or not.
	**/
	public var has_barrier : Dynamic;
	/**
		Returns whether the task is a chief node.
	**/
	public var is_chief : Dynamic;
	/**
		Returns the session master for the corresponding task to connect to.
	**/
	public var master_target : Dynamic;
	/**
		Returns number of workers in the cluster, including chief.
	**/
	public var num_workers : Dynamic;
	public var session_config : Dynamic;
	/**
		Returns a session creator.
		
		The returned session creator will be configured with the correct master
		target and session configs. It will also run either init ops or ready ops
		by querying the `strategy` object when `create_session` is called on it.
		
		Args:
		  scaffold: A `Scaffold` used for gathering or building supportive ops. If
		    not specified a default one is created. It's used to finalize the graph.
		  config: `ConfigProto` proto used to configure the session.
		  checkpoint_dir: A string. Optional path to a directory where to restore
		    variables.
		  checkpoint_filename_with_path: Full file name path to the checkpoint file.
		    Only one of `checkpoint_dir` or `checkpoint_filename_with_path` can be
		    specified.
		  max_wait_secs: Maximum time to wait for the session to become available.
		
		Returns:
		  a descendant of SessionCreator.
	**/
	public function session_creator(?scaffold:Dynamic, ?config:Dynamic, ?checkpoint_dir:Dynamic, ?checkpoint_filename_with_path:Dynamic, ?max_wait_secs:Dynamic):Dynamic;
	/**
		Whether to save checkpoint.
	**/
	public var should_checkpoint : Dynamic;
	/**
		Whether to save summaries.
	**/
	public var should_save_summary : Dynamic;
	/**
		Returns the id or index of the corresponding task.
	**/
	public var task_id : Dynamic;
	/**
		Returns the role of the corresponding task.
	**/
	public var task_type : Dynamic;
	/**
		Waits for other workers to reach the same call to this method.
		
		Raises:
		  ValueError: if `worker_barrier` is not passed to the __init__ method.
	**/
	public function wait_for_other_workers():Dynamic;
}