/* This file is generated, do not edit! */
package tensorflow.python.distribute.distribute_coordinator;
@:pythonImport("tensorflow.python.distribute.distribute_coordinator") extern class Distribute_coordinator_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Call strategy's `configure` to mutate the session_config.
		
		The session_config is currently needed as default config for a TensorFlow
		server. In the future, we should be able to remove this method and only pass
		the session config to a client session.
	**/
	static public function _configure_session_config_for_std_servers(strategy:Dynamic, eval_strategy:Dynamic, session_config:Dynamic, cluster_spec:Dynamic, task_type:Dynamic, task_id:Dynamic):Dynamic;
	/**
		Gets number of workers including chief.
	**/
	static public function _get_num_workers(cluster_spec:Dynamic):Dynamic;
	/**
		Runs a standalone client for between-graph replication.
	**/
	static public function _run_between_graph_client(worker_fn:Dynamic, strategy:Dynamic, eval_fn:Dynamic, eval_strategy:Dynamic, cluster_spec:Dynamic, session_config:Dynamic, rpc_layer:Dynamic):Dynamic;
	/**
		Runs a standalone client for in-graph replication.
	**/
	static public function _run_in_graph_client(worker_fn:Dynamic, strategy:Dynamic, eval_fn:Dynamic, eval_strategy:Dynamic, cluster_spec:Dynamic, session_config:Dynamic, rpc_layer:Dynamic):Dynamic;
	/**
		Runs a single worker by calling `worker_fn` under context.
	**/
	static public function _run_single_worker(worker_fn:Dynamic, strategy:Dynamic, cluster_spec:Dynamic, task_type:Dynamic, task_id:Dynamic, session_config:Dynamic, ?rpc_layer:Dynamic, ?worker_barrier:Dynamic, ?coord:Dynamic):Dynamic;
	/**
		Runs a standard server.
	**/
	static public function _run_std_server(?cluster_spec:Dynamic, ?task_type:Dynamic, ?task_id:Dynamic, ?session_config:Dynamic, ?rpc_layer:Dynamic, ?environment:Dynamic):Dynamic;
	/**
		Split the cluster for evaluator since it needn't talk to other tasks.
	**/
	static public function _split_cluster_for_evaluator(cluster_spec:Dynamic, task_type:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Runs the coordinator for distributed TensorFlow.
		
		This function runs a split coordinator for distributed TensorFlow in its
		default mode, i.e the STANDALONE_CLIENT mode. Given a `cluster_spec`
		specifying server addresses and their roles in a cluster, this coordinator
		will figure out how to set them up, give the underlying function the right
		targets for master sessions via a scope object and coordinate their training.
		The cluster consisting of standard servers needs to be brought up either with
		the standard server binary or with a binary running distribute coordinator
		with `task_type` set to non-client type which will then turn into standard
		servers.
		
		In addition to be the distribute coordinator, this is also the source of
		configurations for each job in the distributed training. As there are multiple
		ways to configure a distributed TensorFlow cluster, its context object
		provides these configurations so that users or higher-level APIs don't have to
		figure out the configuration for each job by themselves.
		
		In the between-graph replicated training, this coordinator will create
		multiple threads and each calls the `worker_fn` which is supposed to create
		its own graph and connect to one worker master given by its context object. In
		the in-graph replicated training, it has only one thread calling this
		`worker_fn`.
		
		Another mode is the INDEPENDENT_WORKER mode where each server runs a
		distribute coordinator which will start a standard server and optionally runs
		`worker_fn` depending whether it is between-graph training or in-graph
		replicated training.
		
		The `strategy` object is expected to be a DistributionStrategy object which
		has implemented methods needed by distributed coordinator such as
		`configure(session_config, cluster_spec, task_type, task_id)` which configures
		the strategy object for a specific task and `experimental_should_init`
		property which instructs the distribute coordinator whether to run init ops
		for a task. The distribute coordinator will make a copy of the `strategy`
		object, call its `configure` method and pass it to `worker_fn` as an argument.
		
		The `worker_fn` defines the training logic and is called under a its own
		worker context which can be accessed to via `get_current_worker_context`. A
		worker context provides access to configurations for each task, e.g. the
		task_type, task_id, master target and so on. Since `worker_fn` will be called
		in a thread and possibly multiple times, caller should be careful when it
		accesses global data. For example, it is unsafe to define flags in a
		`worker_fn` or to define different environment variables for different
		`worker_fn`s.
		
		The `worker_fn` for the between-graph replication is defined as if there is
		only one worker corresponding to the `worker_fn` and possibly ps jobs. For
		example, when training with parameter servers, it assigns variables to
		parameter servers and all other operations to that worker. In the in-graph
		replication case, the `worker_fn` has to define operations for all worker
		jobs. Using a distribution strategy can simplify the `worker_fn` by not having
		to worry about the replication and device assignment of variables and
		operations.
		
		This method is intended to be invoked by high-level APIs so that users don't
		have to explictly call it to run this coordinator. For those who don't use
		high-level APIs, to change a program to use this coordinator, wrap everything
		in a the program after global data definitions such as commandline flag
		definition into the `worker_fn` and get task-specific configurations from
		the worker context.
		
		The `cluster_spec` can be either passed by the argument or parsed from the
		"TF_CONFIG" envrionment variable. Example of a TF_CONFIG:
		```
		  cluster = {'chief': ['host0:2222'],
		             'ps': ['host1:2222', 'host2:2222'],
		             'worker': ['host3:2222', 'host4:2222', 'host5:2222']}
		  os.environ['TF_CONFIG'] = json.dumps({'cluster': cluster})
		```
		
		If `cluster_spec` is not given in any format, it becomes local training and
		this coordinator will connect to a local session.
		
		For evaluation, if "evaluator" exists in the cluster_spec, a separate thread
		will be created to call `eval_fn` with its `task_type` set to "evaluator". If
		`eval_fn` is not defined, fall back to `worker_fn`. This implies that
		evaluation will be done on a single machine if there is an "evaluator" task.
		If "evaluator" doesn't exit in the cluster_spec, it entirely depends on the
		`worker_fn` for how to do evaluation.
		
		Args:
		  worker_fn: the function to be called. The function should accept a
		    `strategy` object and will be given access to a context object via a
		    context manager scope.
		  strategy: a DistributionStrategy object which specifying whether it should
		    run between-graph replicated training or not, whether to run init ops,
		    etc. This object will also be configured given `session_config`,
		    `cluster_spec`, `task_type` and `task_id`.
		  eval_fn: optional function for "evaluator" task. If `eval_fn` is not passed
		    in but a "evaluator" task found in the `cluster_spec`, the `worker_fn`
		    will be used for this task.
		  eval_strategy: optional DistributionStrategy object for "evaluator" task.
		  mode: in which mode this distribute coordinator runs.
		  cluster_spec: a dict, ClusterDef or ClusterSpec specifying servers and roles
		    in a cluster. If not set or empty, fall back to local training.
		  task_type: the current task type, optional if this is a client.
		  task_id: the current task id, optional if this is a client.
		  session_config: an optional `tf.ConfigProto` object which will be passed
		    to `strategy`'s `configure` method and used to create a session.
		  rpc_layer: optional string, the protocol for RPC, e.g. "grpc".
		
		Raises:
		  ValueError: if `cluster_spec` is supplied but not a dict or a ClusterDef or
		    a ClusterSpec.
		
		Returns:
		  In the client job, return the value returned by `worker_fn` if
		  it is in-graph replication; return None otherwise.
	**/
	static public function run_distribute_coordinator(worker_fn:Dynamic, strategy:Dynamic, ?eval_fn:Dynamic, ?eval_strategy:Dynamic, ?mode:Dynamic, ?cluster_spec:Dynamic, ?task_type:Dynamic, ?task_id:Dynamic, ?session_config:Dynamic, ?rpc_layer:Dynamic):Dynamic;
	/**
		Starts a standard TensorFlow server.
		
		This method parses configurations from "TF_CONFIG" environment variable and
		starts a TensorFlow server. The "TF_CONFIG" is typically a json string and
		must have information of the cluster and the role of the server in the
		cluster. One example is:
		
		TF_CONFIG='{
		    "cluster": {
		        "worker": ["host1:2222", "host2:2222", "host3:2222"],
		        "ps": ["host4:2222", "host5:2222"]
		    },
		    "task": {"type": "worker", "index": 1}
		}'
		
		This "TF_CONFIG" specifies there are 3 workers and 2 ps tasks in the cluster
		and the current role is worker 1.
		
		Valid task types are "chief", "worker", "ps" and "evaluator" and you can have
		at most one "chief" and at most one "evaluator".
		
		An optional key-value can be specified is "rpc_layer". The default value is
		"grpc".
		
		Args:
		  session_config: an optional `tf.ConfigProto` object. Users can pass in
		    the session config object to configure server-local devices.
		
		Returns:
		  a `tf.train.Server` object which has already been started.
		
		Raises:
		  ValueError: if the "TF_CONFIG" environment is not complete.
	**/
	static public function run_standard_tensorflow_server(?session_config:Dynamic):Dynamic;
}