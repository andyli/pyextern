/* This file is generated, do not edit! */
package tensorflow.python.training.supervisor;
@:pythonImport("tensorflow.python.training.supervisor", "Supervisor") extern class Supervisor {
	/**
		Start a LooperThread that calls a function periodically.
		
		If `timer_interval_secs` is None the thread calls `target(*args, **kwargs)`
		repeatedly.  Otherwise it calls it every `timer_interval_secs`
		seconds.  The thread terminates when a stop is requested.
		
		The started thread is added to the list of threads managed by the supervisor
		so it does not need to be passed to the `stop()` method.
		
		Args:
		  timer_interval_secs: Number. Time boundaries at which to call `target`.
		  target: A callable object.
		  args: Optional arguments to pass to `target` when calling it.
		  kwargs: Optional keyword arguments to pass to `target` when calling it.
		
		Returns:
		  The started thread.
	**/
	public function Loop(timer_interval_secs:Dynamic, target:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Make sure the model is ready to be used.
		
		Create a session on 'master', recovering or initializing the model as
		needed, or wait for a session to be ready.  If running as the chief
		and `start_standard_service` is set to True, also call the session
		manager to start the standard services.
		
		Args:
		  master: name of the TensorFlow master to use.  See the `tf.Session`
		    constructor for how this is interpreted.
		  config: Optional ConfigProto proto used to configure the session,
		    which is passed as-is to create the session.
		  wait_for_checkpoint: Whether we should wait for the availability of a
		    checkpoint before creating Session. Defaults to False.
		  max_wait_secs: Maximum time to wait for the session to become available.
		  start_standard_services: Whether to start the standard services and the
		    queue runners.
		
		Returns:
		  A Session object that can be used to drive the model.
	**/
	public function PrepareSession(?master:Dynamic, ?config:Dynamic, ?wait_for_checkpoint:Dynamic, ?max_wait_secs:Dynamic, ?start_standard_services:Dynamic):Dynamic;
	/**
		Request that the coordinator stop the threads.
		
		See `Coordinator.request_stop()`.
		
		Args:
		  ex: Optional `Exception`, or Python `exc_info` tuple as returned by
		    `sys.exc_info()`.  If this is the first call to `request_stop()` the
		    corresponding exception is recorded and re-raised from `join()`.
	**/
	public function RequestStop(?ex:Dynamic):Dynamic;
	/**
		Check if the coordinator was told to stop.
		
		See `Coordinator.should_stop()`.
		
		Returns:
		  True if the coordinator was told to stop, False otherwise.
	**/
	public function ShouldStop():Dynamic;
	/**
		Start threads for `QueueRunners`.
		
		Note that the queue runners collected in the graph key `QUEUE_RUNNERS`
		are already started automatically when you create a session with the
		supervisor, so unless you have non-collected queue runners to start
		you do not need to call this explicitly.
		
		Args:
		  sess: A `Session`.
		  queue_runners: A list of `QueueRunners`. If not specified, we'll use the
		    list of queue runners gathered in the graph under the key
		    `GraphKeys.QUEUE_RUNNERS`.
		
		Returns:
		  The list of threads started for the `QueueRunners`.
	**/
	public function StartQueueRunners(sess:Dynamic, ?queue_runners:Dynamic):Dynamic;
	/**
		Start the standard services for 'sess'.
		
		This starts services in the background.  The services started depend
		on the parameters to the constructor and may include:
		
		  - A Summary thread computing summaries every save_summaries_secs.
		  - A Checkpoint thread saving the model every save_model_secs.
		  - A StepCounter thread measure step time.
		
		Args:
		  sess: A Session.
		
		Returns:
		  A list of threads that are running the standard services.  You can use
		  the Supervisor's Coordinator to join these threads with:
		    sv.coord.Join(<list of threads>)
		
		Raises:
		  RuntimeError: If called with a non-chief Supervisor.
		  ValueError: If not `logdir` was passed to the constructor as the
		    services need a log directory.
	**/
	public function StartStandardServices(sess:Dynamic):Dynamic;
	/**
		Stop the services and the coordinator.
		
		This does not close the session.
		
		Args:
		  threads: Optional list of threads to join with the coordinator.  If
		    `None`, defaults to the threads running the standard services, the
		    threads started for `QueueRunners`, and the threads started by the
		    `loop()` method.  To wait on additional threads, pass the
		    list in this parameter.
		  close_summary_writer: Whether to close the `summary_writer`.  Defaults to
		    `True` if the summary writer was created by the supervisor, `False`
		    otherwise.
	**/
	public function Stop(?threads:Dynamic, ?close_summary_writer:Dynamic):Dynamic;
	/**
		Context handler to stop the supervisor when an exception is raised.
		
		See `Coordinator.stop_on_exception()`.
		
		Returns:
		  A context handler.
	**/
	public function StopOnException():Dynamic;
	/**
		Indicate that a summary was computed.
		
		Args:
		  sess: A `Session` object.
		  summary: A Summary proto, or a string holding a serialized summary proto.
		  global_step: Int. global step this summary is associated with. If `None`,
		    it will try to fetch the current step.
		
		Raises:
		  TypeError: if 'summary' is not a Summary proto or a string.
		  RuntimeError: if the Supervisor was created without a `logdir`.
	**/
	public function SummaryComputed(sess:Dynamic, summary:Dynamic, ?global_step:Dynamic):Dynamic;
	static public var USE_DEFAULT : Dynamic;
	/**
		Block waiting for the coordinator to stop.
	**/
	public function WaitForStop():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Create a `Supervisor`.
		
		Args:
		  graph: A `Graph`.  The graph that the model will use.  Defaults to the
		    default `Graph`.  The supervisor may add operations to the graph before
		    creating a session, but the graph should not be modified by the caller
		    after passing it to the supervisor.
		  ready_op: 1-D string `Tensor`.  This tensor is evaluated by supervisors in
		    `prepare_or_wait_for_session()` to check if the model is ready to use.
		    The model is considered ready if it returns an empty array.  Defaults to
		    the tensor returned from `tf.report_uninitialized_variables()`  If
		    `None`, the model is not checked for readiness.
		  ready_for_local_init_op: 1-D string `Tensor`.  This tensor is evaluated by
		    supervisors in `prepare_or_wait_for_session()` to check if the model is
		    ready to run the local_init_op.
		    The model is considered ready if it returns an empty array.  Defaults to
		    the tensor returned from
		    `tf.report_uninitialized_variables(tf.global_variables())`. If `None`,
		    the model is not checked for readiness before running local_init_op.
		  is_chief: If True, create a chief supervisor in charge of initializing
		    and restoring the model.  If False, create a supervisor that relies
		    on a chief supervisor for inits and restore.
		  init_op: `Operation`.  Used by chief supervisors to initialize the model
		    when it can not be recovered.  Defaults to an `Operation` that
		    initializes all global variables.  If `None`, no initialization is done
		    automatically unless you pass a value for `init_fn`, see below.
		  init_feed_dict: A dictionary that maps `Tensor` objects to feed values.
		    This feed dictionary will be used when `init_op` is evaluated.
		  local_init_op: `Operation`. Used by all supervisors to run initializations
		    that should run for every new supervisor instance. By default these
		    are table initializers and initializers for local variables.
		    If `None`, no further per supervisor-instance initialization is
		    done automatically.
		  logdir: A string.  Optional path to a directory where to checkpoint the
		    model and log events for the visualizer.  Used by chief supervisors.
		    The directory will be created if it does not exist.
		  summary_op: An `Operation` that returns a Summary for the event logs.
		    Used by chief supervisors if a `logdir` was specified.  Defaults to the
		    operation returned from summary.merge_all().  If `None`, summaries are
		    not computed automatically.
		  saver: A Saver object.  Used by chief supervisors if a `logdir` was
		    specified.  Defaults to the saved returned by Saver().
		    If `None`, the model is not saved automatically.
		  global_step: An integer Tensor of size 1 that counts steps.  The value
		    from 'global_step' is used in summaries and checkpoint filenames.
		    Default to the op named 'global_step' in the graph if it exists, is of
		    rank 1, size 1, and of type tf.int32 or tf.int64.  If `None` the global
		    step is not recorded in summaries and checkpoint files.  Used by chief
		    supervisors if a `logdir` was specified.
		  save_summaries_secs: Number of seconds between the computation of
		    summaries for the event log.  Defaults to 120 seconds.  Pass 0 to
		    disable summaries.
		  save_model_secs: Number of seconds between the creation of model
		    checkpoints.  Defaults to 600 seconds.  Pass 0 to disable checkpoints.
		  recovery_wait_secs: Number of seconds between checks that the model
		    is ready.  Used by supervisors when waiting for a chief supervisor
		    to initialize or restore the model.  Defaults to 30 seconds.
		  stop_grace_secs: Grace period, in seconds, given to running threads to
		    stop when `stop()` is called.  Defaults to 120 seconds.
		  checkpoint_basename: The basename for checkpoint saving.
		  session_manager: `SessionManager`, which manages Session creation and
		    recovery. If it is `None`, a default `SessionManager` will be created
		    with the set of arguments passed in for backwards compatibility.
		  summary_writer: `SummaryWriter` to use or `USE_DEFAULT`.  Can be `None`
		    to indicate that no summaries should be written.
		  init_fn: Optional callable used to initialize the model. Called
		    after the optional `init_op` is called.  The callable must accept one
		    argument, the session being initialized.
		
		Returns:
		  A `Supervisor`.
	**/
	@:native("__init__")
	public function ___init__(?graph:Dynamic, ?ready_op:Dynamic, ?ready_for_local_init_op:Dynamic, ?is_chief:Dynamic, ?init_op:Dynamic, ?init_feed_dict:Dynamic, ?local_init_op:Dynamic, ?logdir:Dynamic, ?summary_op:Dynamic, ?saver:Dynamic, ?global_step:Dynamic, ?save_summaries_secs:Dynamic, ?save_model_secs:Dynamic, ?recovery_wait_secs:Dynamic, ?stop_grace_secs:Dynamic, ?checkpoint_basename:Dynamic, ?session_manager:Dynamic, ?summary_writer:Dynamic, ?init_fn:Dynamic):Dynamic;
	/**
		Create a `Supervisor`.
		
		Args:
		  graph: A `Graph`.  The graph that the model will use.  Defaults to the
		    default `Graph`.  The supervisor may add operations to the graph before
		    creating a session, but the graph should not be modified by the caller
		    after passing it to the supervisor.
		  ready_op: 1-D string `Tensor`.  This tensor is evaluated by supervisors in
		    `prepare_or_wait_for_session()` to check if the model is ready to use.
		    The model is considered ready if it returns an empty array.  Defaults to
		    the tensor returned from `tf.report_uninitialized_variables()`  If
		    `None`, the model is not checked for readiness.
		  ready_for_local_init_op: 1-D string `Tensor`.  This tensor is evaluated by
		    supervisors in `prepare_or_wait_for_session()` to check if the model is
		    ready to run the local_init_op.
		    The model is considered ready if it returns an empty array.  Defaults to
		    the tensor returned from
		    `tf.report_uninitialized_variables(tf.global_variables())`. If `None`,
		    the model is not checked for readiness before running local_init_op.
		  is_chief: If True, create a chief supervisor in charge of initializing
		    and restoring the model.  If False, create a supervisor that relies
		    on a chief supervisor for inits and restore.
		  init_op: `Operation`.  Used by chief supervisors to initialize the model
		    when it can not be recovered.  Defaults to an `Operation` that
		    initializes all global variables.  If `None`, no initialization is done
		    automatically unless you pass a value for `init_fn`, see below.
		  init_feed_dict: A dictionary that maps `Tensor` objects to feed values.
		    This feed dictionary will be used when `init_op` is evaluated.
		  local_init_op: `Operation`. Used by all supervisors to run initializations
		    that should run for every new supervisor instance. By default these
		    are table initializers and initializers for local variables.
		    If `None`, no further per supervisor-instance initialization is
		    done automatically.
		  logdir: A string.  Optional path to a directory where to checkpoint the
		    model and log events for the visualizer.  Used by chief supervisors.
		    The directory will be created if it does not exist.
		  summary_op: An `Operation` that returns a Summary for the event logs.
		    Used by chief supervisors if a `logdir` was specified.  Defaults to the
		    operation returned from summary.merge_all().  If `None`, summaries are
		    not computed automatically.
		  saver: A Saver object.  Used by chief supervisors if a `logdir` was
		    specified.  Defaults to the saved returned by Saver().
		    If `None`, the model is not saved automatically.
		  global_step: An integer Tensor of size 1 that counts steps.  The value
		    from 'global_step' is used in summaries and checkpoint filenames.
		    Default to the op named 'global_step' in the graph if it exists, is of
		    rank 1, size 1, and of type tf.int32 or tf.int64.  If `None` the global
		    step is not recorded in summaries and checkpoint files.  Used by chief
		    supervisors if a `logdir` was specified.
		  save_summaries_secs: Number of seconds between the computation of
		    summaries for the event log.  Defaults to 120 seconds.  Pass 0 to
		    disable summaries.
		  save_model_secs: Number of seconds between the creation of model
		    checkpoints.  Defaults to 600 seconds.  Pass 0 to disable checkpoints.
		  recovery_wait_secs: Number of seconds between checks that the model
		    is ready.  Used by supervisors when waiting for a chief supervisor
		    to initialize or restore the model.  Defaults to 30 seconds.
		  stop_grace_secs: Grace period, in seconds, given to running threads to
		    stop when `stop()` is called.  Defaults to 120 seconds.
		  checkpoint_basename: The basename for checkpoint saving.
		  session_manager: `SessionManager`, which manages Session creation and
		    recovery. If it is `None`, a default `SessionManager` will be created
		    with the set of arguments passed in for backwards compatibility.
		  summary_writer: `SummaryWriter` to use or `USE_DEFAULT`.  Can be `None`
		    to indicate that no summaries should be written.
		  init_fn: Optional callable used to initialize the model. Called
		    after the optional `init_op` is called.  The callable must accept one
		    argument, the session being initialized.
		
		Returns:
		  A `Supervisor`.
	**/
	public function new(?graph:Dynamic, ?ready_op:Dynamic, ?ready_for_local_init_op:Dynamic, ?is_chief:Dynamic, ?init_op:Dynamic, ?init_feed_dict:Dynamic, ?local_init_op:Dynamic, ?logdir:Dynamic, ?summary_op:Dynamic, ?saver:Dynamic, ?global_step:Dynamic, ?save_summaries_secs:Dynamic, ?save_model_secs:Dynamic, ?recovery_wait_secs:Dynamic, ?stop_grace_secs:Dynamic, ?checkpoint_basename:Dynamic, ?session_manager:Dynamic, ?summary_writer:Dynamic, ?init_fn:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Returns the global_step from the default graph.
		
		Returns:
		  The global step `Tensor` or `None`.
	**/
	public function _default_global_step_tensor():Dynamic;
	/**
		Returns the first `Operation` from a collection.
		
		Args:
		  key: A string collection key.
		
		Returns:
		  The first Op found in a collection, or `None` if the collection is empty.
	**/
	public function _get_first_op_from_collection(key:Dynamic):Dynamic;
	/**
		Initializes global_step.
		
		Args:
		  global_step: An integer Tensor of size 1 that counts steps. If
		    set to USE_DEFAULT, creates global_step tensor.
	**/
	public function _init_global_step(?global_step:Dynamic):Dynamic;
	/**
		Initializes init_op.
		
		Args:
		  init_op: `Operation` to initialize the variables. If set to USE_DEFAULT,
		    create an op that initializes all variables and tables.
		  init_feed_dict: A dictionary that maps `Tensor` objects to feed values.
		    This feed dictionary will be used when `init_op` is evaluated.
	**/
	public function _init_init_op(?init_op:Dynamic, ?init_feed_dict:Dynamic):Dynamic;
	/**
		Initializes local_init_op.
		
		Args:
		  local_init_op: `Operation` run for every new supervisor instance. If set
		  to USE_DEFAULT, use the first op from the GraphKeys.LOCAL_INIT_OP
		  collection. If the collection is empty, create an op that initializes
		  all local variables and all tables.
	**/
	public function _init_local_init_op(?local_init_op:Dynamic):Dynamic;
	/**
		Initializes ready_op.
		
		Args:
		  ready_op: `Tensor` to check if the model is initialized.
		    If it's set to USE_DEFAULT, creates an op that checks all
		    the variables are initialized.
		  ready_for_local_init_op: `Tensor` to check if the model is ready to run
		    local_init_op.
		    If it's set to USE_DEFAULT, creates an op that checks all
		    the global variables are initialized.
	**/
	public function _init_ready_op(?ready_op:Dynamic, ?ready_for_local_init_op:Dynamic):Dynamic;
	/**
		Initializes saver.
		
		Args:
		  saver: A `Saver` object. If set to USE_DEFAULT, create one that
		    saves all the variables.
	**/
	public function _init_saver(?saver:Dynamic):Dynamic;
	public function _init_session_manager(?session_manager:Dynamic):Dynamic;
	/**
		Initializes summary_op.
		
		Args:
		  summary_op: An Operation that returns a Summary for the event logs.
		    If set to USE_DEFAULT, create an op that merges all the summaries.
	**/
	public function _init_summary_op(?summary_op:Dynamic):Dynamic;
	/**
		Check that all is good.
		
		Raises:
		  ValueError: If something is not good.
	**/
	public function _verify_setup():Dynamic;
	/**
		Writes graph_def to `logdir` and adds it to summary if applicable.
	**/
	public function _write_graph():Dynamic;
	/**
		Return the Coordinator used by the Supervisor.
		
		The Coordinator can be useful if you want to run multiple threads
		during your training.
		
		Returns:
		  A Coordinator object.
	**/
	public var coord : Dynamic;
	/**
		Return the global_step Tensor used by the supervisor.
		
		Returns:
		  An integer Tensor for the global_step.
	**/
	public var global_step : Dynamic;
	/**
		Return the feed dictionary used when evaluating the `init_op`.
		
		Returns:
		  A feed dictionary or `None`.
	**/
	public var init_feed_dict : Dynamic;
	/**
		Return the Init Op used by the supervisor.
		
		Returns:
		  An Op or `None`.
	**/
	public var init_op : Dynamic;
	/**
		Return True if this is a chief supervisor.
		
		Returns:
		  A bool.
	**/
	public var is_chief : Dynamic;
	/**
		Start a LooperThread that calls a function periodically.
		
		If `timer_interval_secs` is None the thread calls `target(*args, **kwargs)`
		repeatedly.  Otherwise it calls it every `timer_interval_secs`
		seconds.  The thread terminates when a stop is requested.
		
		The started thread is added to the list of threads managed by the supervisor
		so it does not need to be passed to the `stop()` method.
		
		Args:
		  timer_interval_secs: Number. Time boundaries at which to call `target`.
		  target: A callable object.
		  args: Optional arguments to pass to `target` when calling it.
		  kwargs: Optional keyword arguments to pass to `target` when calling it.
		
		Returns:
		  The started thread.
	**/
	public function loop(timer_interval_secs:Dynamic, target:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Returns a context manager for a managed session.
		
		This context manager creates and automatically recovers a session.  It
		optionally starts the standard services that handle checkpoints and
		summaries.  It monitors exceptions raised from the `with` block or from the
		services and stops the supervisor as needed.
		
		The context manager is typically used as follows:
		
		```python
		def train():
		  sv = tf.train.Supervisor(...)
		  with sv.managed_session(<master>) as sess:
		    for step in xrange(..):
		      if sv.should_stop():
		        break
		      sess.run(<my training op>)
		      ...do other things needed at each training step...
		```
		
		An exception raised from the `with` block or one of the service threads is
		raised again when the block exits.  This is done after stopping all threads
		and closing the session.  For example, an `AbortedError` exception, raised
		in case of preemption of one of the workers in a distributed model, is
		raised again when the block exits.
		
		If you want to retry the training loop in case of preemption you can do it
		as follows:
		
		```python
		def main(...):
		  while True
		    try:
		      train()
		    except tf.errors.Aborted:
		      pass
		```
		
		As a special case, exceptions used for control flow, such as
		`OutOfRangeError` which reports that input queues are exhausted, are not
		raised again from the `with` block: they indicate a clean termination of
		the training loop and are considered normal termination.
		
		Args:
		  master: name of the TensorFlow master to use.  See the `tf.Session`
		    constructor for how this is interpreted.
		  config: Optional `ConfigProto` proto used to configure the session.
		    Passed as-is to create the session.
		  start_standard_services: Whether to start the standard services,
		    such as checkpoint, summary and step counter.
		  close_summary_writer: Whether to close the summary writer when
		    closing the session.  Defaults to True.
		
		Returns:
		  A context manager that yields a `Session` restored from the latest
		  checkpoint or initialized from scratch if not checkpoint exists.  The
		  session is closed when the `with` block exits.
	**/
	public function managed_session(?master:Dynamic, ?config:Dynamic, ?start_standard_services:Dynamic, ?close_summary_writer:Dynamic):Dynamic;
	/**
		Make sure the model is ready to be used.
		
		Create a session on 'master', recovering or initializing the model as
		needed, or wait for a session to be ready.  If running as the chief
		and `start_standard_service` is set to True, also call the session
		manager to start the standard services.
		
		Args:
		  master: name of the TensorFlow master to use.  See the `tf.Session`
		    constructor for how this is interpreted.
		  config: Optional ConfigProto proto used to configure the session,
		    which is passed as-is to create the session.
		  wait_for_checkpoint: Whether we should wait for the availability of a
		    checkpoint before creating Session. Defaults to False.
		  max_wait_secs: Maximum time to wait for the session to become available.
		  start_standard_services: Whether to start the standard services and the
		    queue runners.
		
		Returns:
		  A Session object that can be used to drive the model.
	**/
	public function prepare_or_wait_for_session(?master:Dynamic, ?config:Dynamic, ?wait_for_checkpoint:Dynamic, ?max_wait_secs:Dynamic, ?start_standard_services:Dynamic):Dynamic;
	public var ready_for_local_init_op : Dynamic;
	/**
		Return the Ready Op used by the supervisor.
		
		Returns:
		  An Op or `None`.
	**/
	public var ready_op : Dynamic;
	/**
		Request that the coordinator stop the threads.
		
		See `Coordinator.request_stop()`.
		
		Args:
		  ex: Optional `Exception`, or Python `exc_info` tuple as returned by
		    `sys.exc_info()`.  If this is the first call to `request_stop()` the
		    corresponding exception is recorded and re-raised from `join()`.
	**/
	public function request_stop(?ex:Dynamic):Dynamic;
	/**
		Return the delay between checkpoints.
		
		Returns:
		  A timestamp.
	**/
	public var save_model_secs : Dynamic;
	/**
		Return the save path used by the supervisor.
		
		Returns:
		  A string.
	**/
	public var save_path : Dynamic;
	/**
		Return the delay between summary computations.
		
		Returns:
		  A timestamp.
	**/
	public var save_summaries_secs : Dynamic;
	/**
		Return the Saver used by the supervisor.
		
		Returns:
		  A Saver object.
	**/
	public var saver : Dynamic;
	/**
		Return the SessionManager used by the Supervisor.
		
		Returns:
		  A SessionManager object.
	**/
	public var session_manager : Dynamic;
	/**
		Check if the coordinator was told to stop.
		
		See `Coordinator.should_stop()`.
		
		Returns:
		  True if the coordinator was told to stop, False otherwise.
	**/
	public function should_stop():Dynamic;
	/**
		Start threads for `QueueRunners`.
		
		Note that the queue runners collected in the graph key `QUEUE_RUNNERS`
		are already started automatically when you create a session with the
		supervisor, so unless you have non-collected queue runners to start
		you do not need to call this explicitly.
		
		Args:
		  sess: A `Session`.
		  queue_runners: A list of `QueueRunners`. If not specified, we'll use the
		    list of queue runners gathered in the graph under the key
		    `GraphKeys.QUEUE_RUNNERS`.
		
		Returns:
		  The list of threads started for the `QueueRunners`.
	**/
	public function start_queue_runners(sess:Dynamic, ?queue_runners:Dynamic):Dynamic;
	/**
		Start the standard services for 'sess'.
		
		This starts services in the background.  The services started depend
		on the parameters to the constructor and may include:
		
		  - A Summary thread computing summaries every save_summaries_secs.
		  - A Checkpoint thread saving the model every save_model_secs.
		  - A StepCounter thread measure step time.
		
		Args:
		  sess: A Session.
		
		Returns:
		  A list of threads that are running the standard services.  You can use
		  the Supervisor's Coordinator to join these threads with:
		    sv.coord.Join(<list of threads>)
		
		Raises:
		  RuntimeError: If called with a non-chief Supervisor.
		  ValueError: If not `logdir` was passed to the constructor as the
		    services need a log directory.
	**/
	public function start_standard_services(sess:Dynamic):Dynamic;
	/**
		Stop the services and the coordinator.
		
		This does not close the session.
		
		Args:
		  threads: Optional list of threads to join with the coordinator.  If
		    `None`, defaults to the threads running the standard services, the
		    threads started for `QueueRunners`, and the threads started by the
		    `loop()` method.  To wait on additional threads, pass the
		    list in this parameter.
		  close_summary_writer: Whether to close the `summary_writer`.  Defaults to
		    `True` if the summary writer was created by the supervisor, `False`
		    otherwise.
	**/
	public function stop(?threads:Dynamic, ?close_summary_writer:Dynamic):Dynamic;
	/**
		Context handler to stop the supervisor when an exception is raised.
		
		See `Coordinator.stop_on_exception()`.
		
		Returns:
		  A context handler.
	**/
	public function stop_on_exception():Dynamic;
	/**
		Indicate that a summary was computed.
		
		Args:
		  sess: A `Session` object.
		  summary: A Summary proto, or a string holding a serialized summary proto.
		  global_step: Int. global step this summary is associated with. If `None`,
		    it will try to fetch the current step.
		
		Raises:
		  TypeError: if 'summary' is not a Summary proto or a string.
		  RuntimeError: if the Supervisor was created without a `logdir`.
	**/
	public function summary_computed(sess:Dynamic, summary:Dynamic, ?global_step:Dynamic):Dynamic;
	/**
		Return the Summary Tensor used by the chief supervisor.
		
		Returns:
		  A string Tensor for the summary or `None`.
	**/
	public var summary_op : Dynamic;
	/**
		Return the SummaryWriter used by the chief supervisor.
		
		Returns:
		  A SummaryWriter.
	**/
	public var summary_writer : Dynamic;
	/**
		Block waiting for the coordinator to stop.
	**/
	public function wait_for_stop():Dynamic;
}