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
		Creates a new SlurmClusterResolver object.
		
		For any parameter not set it will query the environment for the value.
		It uses those parameters to check which nodes have processes reside on and
		resolves their hostnames.
		With the number tasks per node it offsets the port number for each process.
		With the number of GPUs per node and per task it allocates GPUs to tasks by
		setting environment variables.
		Using the resolver works best (and is easier) with homogeneous tasks but
		heterogeneous tasks (number of tasks varying per node) are also possible as
		long as the number of GPUs per task stays constant.
		
		Used environment variables:
		  - SLURM_PROCID
		  - (opt) SLURM_STEP_NUM_TASKS
		  - (opt) SLURM_STEP_NODELIST
		  - (opt) SLURM_STEP_TASKS_PER_NODE
		
		Args:
		  jobs: Dictionary with job names as key and number of tasks in the job as
		    value. Defaults to as many 'worker's as there are (Slurm) tasks.
		  port_base: The first port number to start with for processes on a node.
		  gpus_per_node: Number of GPUs available on each node. Defaults to the
		    number of GPUs reported by nvidia-smi
		  gpus_per_task: Number of GPUs to be used for each task. Default is to
		    evenly distribute the gpus_per_node to tasks_per_node.
		  tasks_per_node: Number of tasks running on each node. Can be an integer if
		    the number of tasks per node is constant or a dictionary mapping
		    hostnames to number of tasks on that node. If not set the Slurm
		    environment is queried for the correct mapping.
		  auto_set_gpu: Set the visible CUDA devices automatically while resolving
		    the cluster by setting CUDA_VISIBLE_DEVICES environment variable.
		    Defaults to True.
		  rpc_layer: The protocol TensorFlow used to communicate between nodes.
		    Defaults to 'grpc'.
		
		Returns:
		  A ClusterResolver object which can be used with distributed TensorFlow.
		
		Raises:
		  RuntimeError: If requested more GPUs per node then available or
		    requested more tasks then assigned tasks or
		    resolving missing values from the environment failed.
	**/
	@:native("__init__")
	public function ___init__(?jobs:Dynamic, ?port_base:Dynamic, ?gpus_per_node:Dynamic, ?gpus_per_task:Dynamic, ?tasks_per_node:Dynamic, ?auto_set_gpu:Dynamic, ?rpc_layer:Dynamic):Dynamic;
	/**
		Creates a new SlurmClusterResolver object.
		
		For any parameter not set it will query the environment for the value.
		It uses those parameters to check which nodes have processes reside on and
		resolves their hostnames.
		With the number tasks per node it offsets the port number for each process.
		With the number of GPUs per node and per task it allocates GPUs to tasks by
		setting environment variables.
		Using the resolver works best (and is easier) with homogeneous tasks but
		heterogeneous tasks (number of tasks varying per node) are also possible as
		long as the number of GPUs per task stays constant.
		
		Used environment variables:
		  - SLURM_PROCID
		  - (opt) SLURM_STEP_NUM_TASKS
		  - (opt) SLURM_STEP_NODELIST
		  - (opt) SLURM_STEP_TASKS_PER_NODE
		
		Args:
		  jobs: Dictionary with job names as key and number of tasks in the job as
		    value. Defaults to as many 'worker's as there are (Slurm) tasks.
		  port_base: The first port number to start with for processes on a node.
		  gpus_per_node: Number of GPUs available on each node. Defaults to the
		    number of GPUs reported by nvidia-smi
		  gpus_per_task: Number of GPUs to be used for each task. Default is to
		    evenly distribute the gpus_per_node to tasks_per_node.
		  tasks_per_node: Number of tasks running on each node. Can be an integer if
		    the number of tasks per node is constant or a dictionary mapping
		    hostnames to number of tasks on that node. If not set the Slurm
		    environment is queried for the correct mapping.
		  auto_set_gpu: Set the visible CUDA devices automatically while resolving
		    the cluster by setting CUDA_VISIBLE_DEVICES environment variable.
		    Defaults to True.
		  rpc_layer: The protocol TensorFlow used to communicate between nodes.
		    Defaults to 'grpc'.
		
		Returns:
		  A ClusterResolver object which can be used with distributed TensorFlow.
		
		Raises:
		  RuntimeError: If requested more GPUs per node then available or
		    requested more tasks then assigned tasks or
		    resolving missing values from the environment failed.
	**/
	public function new(?jobs:Dynamic, ?port_base:Dynamic, ?gpus_per_node:Dynamic, ?gpus_per_task:Dynamic, ?tasks_per_node:Dynamic, ?auto_set_gpu:Dynamic, ?rpc_layer:Dynamic):Void;
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
	static public var _abc_impl : Dynamic;
	/**
		Returns a list of hostnames for nodes running the current job step.
	**/
	public function _resolve_hostlist():Dynamic;
	/**
		Returns the number of tasks for the current job step.
	**/
	public function _resolve_num_tasks():Dynamic;
	/**
		Returns the rank of the current task in range [0, num_tasks).
	**/
	public function _resolve_own_rank():Dynamic;
	/**
		Creates a mapping of hostnames to the number of tasks allocated on it.
		
		Reads the SLURM environment to determine the nodes involved in the current
		job step and number of tasks running on each node.
		
		Returns a dictionary mapping each hostname to the number of tasks.
	**/
	public function _resolve_task_configuration():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
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
		
		There are two possible return values, "google" (when TensorFlow is running
		in a Google-internal environment) or an empty string (when TensorFlow is
		running elsewhere).
		
		If you are implementing a ClusterResolver that works in both the Google
		environment and the open-source world (for instance, a TPU ClusterResolver
		or similar), you will have to return the appropriate string depending on the
		environment, which you will have to detect.
		
		Otherwise, if you are implementing a ClusterResolver that will only work
		in open-source TensorFlow, you do not need to implement this property.
	**/
	public var environment : Dynamic;
	/**
		Returns job name and task_id for the process which calls this.
		
		This returns the job name and task index for the process which calls this
		function according to its rank and cluster specification. The job name and
		task index are set after a cluster is constructed by cluster_spec otherwise
		defaults to None.
		
		Returns:
		  A string specifying job name the process belongs to and an integer
		    specifying the task index the process belongs to in that job.
	**/
	public function get_task_info():Dynamic;
	/**
		Returns the master string for connecting to a TensorFlow master.
		
		Args:
		  task_type: (Optional) Overrides the default auto-selected task type.
		  task_id: (Optional) Overrides the default auto-selected task index.
		  rpc_layer: (Optional) Overrides the default RPC protocol TensorFlow uses
		    to communicate across nodes.
		
		Returns:
		  A connection string for connecting to a TensorFlow master.
	**/
	public function master(?task_type:Dynamic, ?task_id:Dynamic, ?rpc_layer:Dynamic):Dynamic;
	/**
		Returns the number of accelerator cores per worker.
		
		This returns the number of accelerator cores (such as GPUs and TPUs)
		available per worker.
		
		Optionally, we allow callers to specify the task_type, and task_id, for
		if they want to target a specific TensorFlow task to query
		the number of accelerators. This is to support heterogenous environments,
		where the number of accelerators cores per host is different.
		
		Args:
		  task_type: (Optional) The type of the TensorFlow task of the machine we
		    want to query.
		  task_id: (Optional) The index of the TensorFlow task of the machine we
		    want to query.
		  config_proto: (Optional) Configuration for starting a new session to
		    query how many accelerator cores it has.
		
		Returns:
		  A map of accelerator types to number of cores.
	**/
	public function num_accelerators(?task_type:Dynamic, ?task_id:Dynamic, ?config_proto:Dynamic):Dynamic;
	/**
		Returns the task id this `ClusterResolver` indicates.
		
		In TensorFlow distributed environment, each job may have an applicable
		task id, which is the index of the instance within its task type. This is
		useful when user needs to run specific code according to task index. For
		example,
		
		```python
		cluster_spec = tf.train.ClusterSpec({
		    "ps": ["localhost:2222", "localhost:2223"],
		    "worker": ["localhost:2224", "localhost:2225", "localhost:2226"]
		})
		
		# SimpleClusterResolver is used here for illustration; other cluster
		# resolvers may be used for other source of task type/id.
		simple_resolver = SimpleClusterResolver(cluster_spec, task_type="worker",
		                                        task_id=0)
		
		...
		
		if cluster_resolver.task_type == 'worker' and cluster_resolver.task_id == 0:
		  # Perform something that's only applicable on 'worker' type, id 0. This
		  # block will run on this particular instance since we've specified this
		  # task to be a 'worker', id 0 in above cluster resolver.
		else:
		  # Perform something that's only applicable on other ids. This block will
		  # not run on this particular instance.
		```
		
		Returns `None` if such information is not available or is not applicable
		in the current distributed environment, such as training with
		`tf.distribute.cluster_resolver.TPUClusterResolver`.
		
		For more information, please see
		`tf.distribute.cluster_resolver.ClusterResolver`'s class docstring.
	**/
	public var task_id : Dynamic;
	/**
		Returns the task type this `ClusterResolver` indicates.
		
		In TensorFlow distributed environment, each job may have an applicable
		task type. Valid task types in TensorFlow include
		'chief': a worker that is designated with more responsibility,
		'worker': a regular worker for training/evaluation,
		'ps': a parameter server, or
		'evaluator': an evaluator that evaluates the checkpoints for metrics.
		
		See [Multi-worker configuration](
		https://www.tensorflow.org/tutorials/distribute/multi_worker_with_keras#multi-worker_configuration)
		for more information about 'chief' and 'worker' task type, which are most
		commonly used.
		
		Having access to such information is useful when user needs to run specific
		code according to task types. For example,
		
		```python
		cluster_spec = tf.train.ClusterSpec({
		    "ps": ["localhost:2222", "localhost:2223"],
		    "worker": ["localhost:2224", "localhost:2225", "localhost:2226"]
		})
		
		# SimpleClusterResolver is used here for illustration; other cluster
		# resolvers may be used for other source of task type/id.
		simple_resolver = SimpleClusterResolver(cluster_spec, task_type="worker",
		                                        task_id=1)
		
		...
		
		if cluster_resolver.task_type == 'worker':
		  # Perform something that's only applicable on workers. This block
		  # will run on this particular instance since we've specified this task to
		  # be a worker in above cluster resolver.
		elif cluster_resolver.task_type == 'ps':
		  # Perform something that's only applicable on parameter servers. This
		  # block will not run on this particular instance.
		```
		
		Returns `None` if such information is not available or is not applicable
		in the current distributed environment, such as training with
		`tf.distribute.experimental.TPUStrategy`.
		
		For more information, please see
		`tf.distribute.cluster_resolver.ClusterResolver`'s class doc.
	**/
	public var task_type : Dynamic;
}