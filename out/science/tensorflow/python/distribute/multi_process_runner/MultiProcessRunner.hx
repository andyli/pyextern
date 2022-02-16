/* This file is generated, do not edit! */
package tensorflow.python.distribute.multi_process_runner;
@:pythonImport("tensorflow.python.distribute.multi_process_runner", "MultiProcessRunner") extern class MultiProcessRunner {
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
		Instantiation of a `MultiProcessRunner`.
		
		Args:
		  fn: Function to be run on child processes. This will be run on processes
		    for all task types.
		  cluster_spec: Dict for cluster spec. The utility function
		    `tf.__internal__.distribute.multi_process_runner.create_cluster_spec`
		    can be conveniently used to create such dict. The following is an
		    example of cluster with three workers and two ps's.
		    {"worker": ["worker0.example.com:2222",
		                "worker1.example.com:2222",
		                "worker2.example.com:2222"],
		     "ps": ["ps0.example.com:2222",
		            "ps1.example.com:2222"]}
		  rpc_layer: RPC layer to use. Default value is 'grpc'.
		  max_run_time: `None` or integer. If not `None`, child processes are forced
		    to exit at approximately this many seconds after this utility is called.
		    We achieve this through `signal.alarm()` api. Note that this is best
		    effort at Python level since Python signal handler does not get executed
		    when it runs lower level C/C++ code. So it can be delayed for
		    arbitrarily long time. If any of the child process is still running when
		    `max_run_time` is up, they will be force-terminated and an
		    `UnexpectedSubprocessExitError` may be raised. If `None`, child
		    processes are not forced to exit.
		  grpc_fail_fast: Whether GRPC connection between processes should fail
		    without retrying. Defaults to None, in which case the environment
		    variable is not explicitly set.
		  stream_output: True if the output/error from the subprocesses should be
		    streamed to be printed in parent process' log. Defaults to True.
		  return_output: If True, the output/error from the subprocesses should be
		    collected to be attached to the resulting namedtuple returned from
		    `join()`. The list of output can be retrieved via `stdout` attribute.
		    Defaults to False.
		  use_dill_for_args: Whether to use dill to pickle `args` and `kwargs`. dill
		    can pickle more objects, but doesn't work with types in
		    `multiprocessing` library like `Mutex`.
		  daemon: Whether to start processes as daemons.
		  dependence_on_chief: Whether to terminates the cluster if the chief exits.
		    If auto_restart is True, it only terminates the cluster if the chief
		    exits with a zero exit code.
		  auto_restart: Whether to automatically restart processes that exit with
		    non-zero exit code.
		  share_gpu: Whether to share GPUs among workers. If False, each worker is
		    assigned different GPUs in a roundrobin fashion. This should be True
		    whenever possible for better test execution coverage; some situations
		    that need it to be False are tests that runs NCCL.
		  args: Positional arguments to be sent to `fn` run on subprocesses.
		  kwargs: Keyword arguments to be sent to `fn` run on subprocesses.
		
		Raises:
		  RuntimeError: if `multi_process_runner.test_main()` is not called.
		  ValueError: if there are more than one chief in the `cluster_spec`.
		  SkipTest: if thread sanitizer is enabled (which is incompatible with MPR).
	**/
	@:native("__init__")
	public function ___init__(fn:Dynamic, cluster_spec:Dynamic, ?rpc_layer:Dynamic, ?max_run_time:Dynamic, ?grpc_fail_fast:Dynamic, ?stream_output:Dynamic, ?return_output:Dynamic, ?use_dill_for_args:Dynamic, ?daemon:Dynamic, ?dependence_on_chief:Dynamic, ?auto_restart:Dynamic, ?share_gpu:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Instantiation of a `MultiProcessRunner`.
		
		Args:
		  fn: Function to be run on child processes. This will be run on processes
		    for all task types.
		  cluster_spec: Dict for cluster spec. The utility function
		    `tf.__internal__.distribute.multi_process_runner.create_cluster_spec`
		    can be conveniently used to create such dict. The following is an
		    example of cluster with three workers and two ps's.
		    {"worker": ["worker0.example.com:2222",
		                "worker1.example.com:2222",
		                "worker2.example.com:2222"],
		     "ps": ["ps0.example.com:2222",
		            "ps1.example.com:2222"]}
		  rpc_layer: RPC layer to use. Default value is 'grpc'.
		  max_run_time: `None` or integer. If not `None`, child processes are forced
		    to exit at approximately this many seconds after this utility is called.
		    We achieve this through `signal.alarm()` api. Note that this is best
		    effort at Python level since Python signal handler does not get executed
		    when it runs lower level C/C++ code. So it can be delayed for
		    arbitrarily long time. If any of the child process is still running when
		    `max_run_time` is up, they will be force-terminated and an
		    `UnexpectedSubprocessExitError` may be raised. If `None`, child
		    processes are not forced to exit.
		  grpc_fail_fast: Whether GRPC connection between processes should fail
		    without retrying. Defaults to None, in which case the environment
		    variable is not explicitly set.
		  stream_output: True if the output/error from the subprocesses should be
		    streamed to be printed in parent process' log. Defaults to True.
		  return_output: If True, the output/error from the subprocesses should be
		    collected to be attached to the resulting namedtuple returned from
		    `join()`. The list of output can be retrieved via `stdout` attribute.
		    Defaults to False.
		  use_dill_for_args: Whether to use dill to pickle `args` and `kwargs`. dill
		    can pickle more objects, but doesn't work with types in
		    `multiprocessing` library like `Mutex`.
		  daemon: Whether to start processes as daemons.
		  dependence_on_chief: Whether to terminates the cluster if the chief exits.
		    If auto_restart is True, it only terminates the cluster if the chief
		    exits with a zero exit code.
		  auto_restart: Whether to automatically restart processes that exit with
		    non-zero exit code.
		  share_gpu: Whether to share GPUs among workers. If False, each worker is
		    assigned different GPUs in a roundrobin fashion. This should be True
		    whenever possible for better test execution coverage; some situations
		    that need it to be False are tests that runs NCCL.
		  args: Positional arguments to be sent to `fn` run on subprocesses.
		  kwargs: Keyword arguments to be sent to `fn` run on subprocesses.
		
		Raises:
		  RuntimeError: if `multi_process_runner.test_main()` is not called.
		  ValueError: if there are more than one chief in the `cluster_spec`.
		  SkipTest: if thread sanitizer is enabled (which is incompatible with MPR).
	**/
	public function new(fn:Dynamic, cluster_spec:Dynamic, ?rpc_layer:Dynamic, ?max_run_time:Dynamic, ?grpc_fail_fast:Dynamic, ?stream_output:Dynamic, ?return_output:Dynamic, ?use_dill_for_args:Dynamic, ?daemon:Dynamic, ?dependence_on_chief:Dynamic, ?auto_restart:Dynamic, ?share_gpu:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Void;
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
	/**
		Function to continuously read lines from subprocesses.
	**/
	public function _continuously_readline_from_sub(pipe_r:Dynamic, task_type:Dynamic, task_id:Dynamic):Dynamic;
	public function _get_mpr_result(process_statuses:Dynamic):Dynamic;
	public function _get_process_statuses():Dynamic;
	/**
		Simulates a cluster management system.
		
		- If auto_restart is True, it restarts processes that exit with a non-zero
		  exit code. Note that when join() times out it overrides auto_restart to
		  False.
		- If dependence_on_chief is True, it terminates all processes once the chief
		  exits. If auto_restart is also True, it only terminates all processes if
		  the chief exit with a zero exit code, otherwise it restarts the chief.
		
		This runs in self._watchdog_thread.
	**/
	public function _process_watchdog():Dynamic;
	/**
		Convert `queue.Queue` to `list`.
	**/
	public function _queue_to_list(queue_to_convert:Dynamic):Dynamic;
	public function _reraise_if_subprocess_error(process_statuses:Dynamic):Dynamic;
	/**
		Start a subprocess and a thread the reads lines from the subprocess.
	**/
	public function _start_subprocess_and_reading_thread(task_type:Dynamic, task_id:Dynamic, ?cluster_spec:Dynamic, ?fn:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Terminates all subprocesses.
		
		The caller is required to hold self._process_lock.
		
		Args:
		  sig: the signal used to terminate the process. The default is SIGKILL.
	**/
	public function _terminate_all(?sig:Dynamic):Dynamic;
	/**
		Returns the subprocess exit code given the task type and task id.
		
		Args:
		  task_type: The task type.
		  task_id: The task id.
		
		Returns:
		  The subprocess exit code; `None` if the subprocess has not exited yet.
		
		Raises:
		  KeyError: If the corresponding subprocess is not found with `task_type`
		    and `task_id`.
	**/
	public function get_process_exit_code(task_type:Dynamic, task_id:Dynamic):Dynamic;
	/**
		Returns the subprocess id given the task type and task id.
	**/
	public function get_process_id(task_type:Dynamic, task_id:Dynamic):Dynamic;
	/**
		Joins all the processes with timeout.
		
		If any of the subprocesses does not exit approximately after `timeout`
		seconds has passed after `join` call, this raises a
		`SubprocessTimeoutError`.
		
		Note: At timeout, it uses SIGTERM to terminate the subprocesses, in order to
		log the stack traces of the subprocesses when they exit. However, this
		results in timeout when the test runs with tsan (thread sanitizer); if tsan
		is being run on the test targets that rely on timeout to assert information,
		`MultiProcessRunner.terminate_all()` must be called after `join()`, before
		the test exits, so the subprocesses are terminated with SIGKILL, and data
		race is removed.
		
		Args:
		  timeout: optional integer or `None`. If provided as an integer, and not
		  all processes report status within roughly `timeout` seconds, a
		  `SubprocessTimeoutError` exception will be raised. If `None`, `join` never
		  times out.
		
		Returns:
		  A `MultiProcessRunnerResult` object, which has two attributes,
		  `return_value` and `stdout`. `return_value` always contains a list of
		  return values from the subprocesses, although the order is not meaningful.
		  If `return_output` argument is True at `__init__`, `stdout` is available
		  that contains a list of all messages from subprocesses' stdout and stderr.
		
		Raises:
		  SubprocessTimeoutError: if not all processes report status approximately
		    within `timeout` seconds. When this is raised, a
		    `MultiProcessRunnerResult` object can be retrieved by
		    `SubprocessTimeoutError`'s mpr_result attribute, which has the same
		    structure as above 'Returns' section describes.
		  UnexpectedSubprocessExitError: If any of the subprocesses did not exit
		    properly (for example, they exit on SIGTERM or SIGKILL signal). When
		    this is raised, a `MultiProcessRunnerResult` object can be retrieved by
		    `UnexpectedSubprocessExitError`'s mpr_result attribute, which has the
		    same structure as above 'Returns' section describes. If `max_run_time`
		    is not `None`, it is expected that some subprocesses may be
		    force-killed when `max_run_time` is up, and this is raised in those
		    cases.
		  Exception: if there is an Exception propagated from any subprocess. When
		    this is raised, a `MultiProcessRunnerResult` object can be retrieved by
		    `UnexpectedSubprocessExitError`'s mpr_result attribute, which has the
		    same structure as above 'Returns' section describes.
	**/
	public function join(?timeout:Dynamic):Dynamic;
	/**
		Returns whether the subprocess still exists given the task type and id.
		
		Args:
		  task_type: The task type.
		  task_id: The task id.
		
		Returns:
		  Boolean; whether the subprocess still exists. If the subprocess has
		  exited, this returns False.
	**/
	public function process_exists(task_type:Dynamic, task_id:Dynamic):Dynamic;
	public function set_args(?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Starts processes, one for each task in `cluster_spec`.
		
		Note that this is best effort by the applicable multiprocessing library,
		and it may take up to seconds for a subprocess to be successfully started.
	**/
	public function start():Dynamic;
	/**
		Start the processes, with the specified task run in main process.
		
		This is similar to `start()` except that the task with task_type
		`as_task_type` and task_id `as_task_id` is run in the main process.
		This method is particularly useful when debugging tool such as `pdb` is
		needed in some specific task. Note that since this method is blocking until
		that specific task exits, additional actions would need a thread to be
		called:
		
		```python
		def fn():
		  # user code to be run
		  import pdb; pdb.set_trace()
		
		def follow_ups():
		  time.sleep(5)
		  mpr.start_single_process(
		      task_type='evaluator',
		      task_id=0)
		
		mpr = multi_process_runner.MultiProcessRunner(
		    fn,
		    multi_worker_test_base.create_cluster_spec(
		        has_chief=True, num_workers=1))
		threading.Thread(target=follow_ups).start()
		mpr.start_in_process_as(as_task_type='chief', as_task_id=0)
		mpr.join()
		```
		
		Note that if `return_output=True`, the logs/stdout by task
		run by the main process is not available in result.stdout.
		
		Args:
		  as_task_type: The task type to be run in the main process.
		  as_task_id: The task id to be run in the main process.
	**/
	public function start_in_process_as(as_task_type:Dynamic, as_task_id:Dynamic):Dynamic;
	/**
		Starts a single process.
		
		This starts a process in the cluster with the task type, task id, and the
		process function (`fn`). If process function is `None`, the function
		provided at `__init__` will be used. If `cluster_spec` is `None`, the
		cluster spec provided at `__init__` will be used.
		
		TODO(rchao): It is meant that all subprocesses will be updated with the new
		cluster spec, but this has yet to be implemented. At this time only the
		newly started subprocess picks up this updated cluster spec.
		
		Args:
		  task_type: The task type.
		  task_id: The task id.
		  cluster_spec: The cluster spec to be used on the newly started
		    process. If `None`, the cluster spec provided at `__init__` will be
		    used.
		  fn: The process function to be run on the newly started
		    process. If specified, specify `args` and `kwargs` as well. If `None`,
		    the function provided at `__init__` will be used.
		  args: Optional positional arguments to be supplied in `fn`.
		  kwargs: Optional keyword arguments to be supplied in `fn`.
	**/
	public function start_single_process(task_type:Dynamic, task_id:Dynamic, ?cluster_spec:Dynamic, ?fn:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Terminates the process with `task_type` and `task_id`.
		
		If auto_retart=True, the terminated task will be restarted unless the chief
		has already exited with zero exit code.
		
		Args:
		  task_type: the task type.
		  task_id: the task id.
	**/
	public function terminate(task_type:Dynamic, task_id:Dynamic):Dynamic;
	/**
		Terminates all subprocesses.
	**/
	public function terminate_all(?sig:Dynamic):Dynamic;
}