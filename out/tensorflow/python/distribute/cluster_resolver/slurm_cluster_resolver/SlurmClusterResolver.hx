/* This file is generated, do not edit! */
package tensorflow.python.distribute.cluster_resolver.slurm_cluster_resolver;
@:pythonImport("tensorflow.python.distribute.cluster_resolver.slurm_cluster_resolver", "SlurmClusterResolver") extern class SlurmClusterResolver {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Creates a new SlurmClusterResolver object.
		
		This takes in parameters and creates a SlurmClusterResolver object. It uses
		those parameters to check which nodes will processes reside and resolves
		their hostnames. With the number of the GPUs on each node and number of GPUs
		for each task it offsets the port number for each processes and allocate
		GPUs to tasks by setting environment variables. The resolver currently
		supports homogeneous tasks and default Slurm process allocation.
		
		Args:
		  jobs: Dictionary with job names as key and number of tasks in the job as
		    value
		  port_base: The first port number to start with for processes on a node.
		  gpus_per_node: Number of GPUs available on each node.
		  gpus_per_task: Number of GPUs to be used for each task.
		  tasks_per_node: Number of tasks to run on each node, if not set defaults
		    to Slurm's output environment variable SLURM_NTASKS_PER_NODE.
		  auto_set_gpu: Set the visible CUDA devices automatically while resolving
		    the cluster by setting CUDA_VISIBLE_DEVICES environment variable.
		    Defaults to True.
		  rpc_layer: (Optional) The protocol TensorFlow uses to communicate between
		    nodes. Defaults to 'grpc'.
		
		Returns:
		  A ClusterResolver object which can be used with distributed TensorFlow.
		
		Raises:
		  RuntimeError: If requested more GPUs per node then available or requested
		  more tasks then assigned tasks.
	**/
	@:native("__init__")
	public function ___init__(jobs:Dynamic, ?port_base:Dynamic, ?gpus_per_node:Dynamic, ?gpus_per_task:Dynamic, ?tasks_per_node:Dynamic, ?auto_set_gpu:Dynamic, ?rpc_layer:Dynamic):Dynamic;
	/**
		Creates a new SlurmClusterResolver object.
		
		This takes in parameters and creates a SlurmClusterResolver object. It uses
		those parameters to check which nodes will processes reside and resolves
		their hostnames. With the number of the GPUs on each node and number of GPUs
		for each task it offsets the port number for each processes and allocate
		GPUs to tasks by setting environment variables. The resolver currently
		supports homogeneous tasks and default Slurm process allocation.
		
		Args:
		  jobs: Dictionary with job names as key and number of tasks in the job as
		    value
		  port_base: The first port number to start with for processes on a node.
		  gpus_per_node: Number of GPUs available on each node.
		  gpus_per_task: Number of GPUs to be used for each task.
		  tasks_per_node: Number of tasks to run on each node, if not set defaults
		    to Slurm's output environment variable SLURM_NTASKS_PER_NODE.
		  auto_set_gpu: Set the visible CUDA devices automatically while resolving
		    the cluster by setting CUDA_VISIBLE_DEVICES environment variable.
		    Defaults to True.
		  rpc_layer: (Optional) The protocol TensorFlow uses to communicate between
		    nodes. Defaults to 'grpc'.
		
		Returns:
		  A ClusterResolver object which can be used with distributed TensorFlow.
		
		Raises:
		  RuntimeError: If requested more GPUs per node then available or requested
		  more tasks then assigned tasks.
	**/
	public function new(jobs:Dynamic, ?port_base:Dynamic, ?gpus_per_node:Dynamic, ?gpus_per_task:Dynamic, ?tasks_per_node:Dynamic, ?auto_set_gpu:Dynamic, ?rpc_layer:Dynamic):Void;
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	/**
		Resolve host names of nodes allocated in current jobs.
		
		Returns:
		  A list of node names as strings.
	**/
	public function _resolve_hostnames():Dynamic;
	/**
		Returns a ClusterSpec object based on the latest instance group info.
		
		This returns a ClusterSpec object for use based on information from the
		specified initialization parameters and Slurm environment variables. The
		cluster specification is resolved each time this function is called. The
		resolver extract hostnames of nodes by scontrol and pack tasks in that
		order until a node a has number of tasks that is equal to specification.
		GPUs on nodes are allocated to tasks by specification through setting
		CUDA_VISIBLE_DEVICES environment variable.
		
		Returns:
		  A ClusterSpec containing host information retrieved from Slurm's
		    environment variables.
	**/
	public function cluster_spec():Dynamic;
	/**
		Returns the current environment which TensorFlow is running in.
		
		For users in the Slurm environment, the environment property is always an
		empty string, and Google users will not use this ClusterResolver for running
		on internal systems.
	**/
	public var environment : Dynamic;
	/**
		Returns job name and task_index for the process which calls this.
		
		This returns the job name and task index for the process which calls this
		function according to its rank and cluster specification. The job name and
		task index are set after a cluster is constructed by cluster_spec otherwise
		defaults to None.
		
		Returns:
		  A string specifying job name the process belongs to and an integner
		    specifying the task index the process belongs to in that job.
	**/
	public function get_task_info():Dynamic;
	/**
		Returns the master string for connecting to a TensorFlow master.
		
		Args:
		  task_type: (Optional) Overrides the default auto-selected task type.
		  task_index: (Optional) Overrides the default auto-slected task index.
		  rpc_layer: (Optional) Overrides the default RPC protocol TensorFlow uses
		    to communicate across nodes.
		
		Returns:
		  A connection string for connecting to a TensorFlow master.
	**/
	public function master(?task_type:Dynamic, ?task_index:Dynamic, ?rpc_layer:Dynamic):Dynamic;
	/**
		Returns the number of accelerator cores per worker.
		
		This returns the number of accelerator cores (such as GPUs and TPUs)
		available per worker. If workers only has CPU cores available, then this
		should return 0. This method will query the master for this information
		if it is not otherwise known.
		
		Optionally, we allow callers to specify the task_type, task_index, and
		rpc_layer, if they want to target a specific TensorFlow process to query
		the number of accelerators. This is to support heterogenous environments,
		where the number of accelerators cores per host is different.
		
		Args:
		  task_type: (Optional) The type of the TensorFlow task of the machine we
		    want to query.
		  task_index: (Optional) The index of the TensorFlow task of the machine we
		    want to query.
		  accelerator_type: (Optional) The type of accelerator we are trying to
		    query (defaults to 'GPU').
		  config_proto: (Optional) Configuration for starting a new session to
		    query how many accelerator cores it has.
	**/
	public function num_accelerators(?task_type:Dynamic, ?task_index:Dynamic, ?accelerator_type:Dynamic, ?config_proto:Dynamic):Dynamic;
}