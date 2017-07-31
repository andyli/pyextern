/* This file is generated, do not edit! */
package tensorflow.python.estimator.inputs.queues.feeding_queue_runner;
@:pythonImport("tensorflow.python.estimator.inputs.queues.feeding_queue_runner", "_FeedingQueueRunner") extern class _FeedingQueueRunner {
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
		Initialize the queue runner.
		
		For further documentation, see `queue_runner.py`. Note that
		`FeedingQueueRunner` does not support construction from protobuffer nor
		serialization to protobuffer.
		
		Args:
		  queue: A `Queue`.
		  enqueue_ops: List of enqueue ops to run in threads later.
		  close_op: Op to close the queue. Pending enqueue ops are preserved.
		  cancel_op: Op to close the queue and cancel pending enqueue ops.
		  feed_fns: a list of functions that return a dictionary mapping fed
		    `Tensor`s to values. Must be the same length as `enqueue_ops`.
		  queue_closed_exception_types: Optional tuple of Exception types that
		    indicate that the queue has been closed when raised during an enqueue
		    operation.  Defaults to
		    `(tf.errors.OutOfRangeError, tf.errors.CancelledError)`.
		
		Raises:
		  ValueError: `feed_fns` is not `None` and has different length than
		    `enqueue_ops`.
	**/
	@:native("__init__")
	public function ___init__(?queue:Dynamic, ?enqueue_ops:Dynamic, ?close_op:Dynamic, ?cancel_op:Dynamic, ?feed_fns:Dynamic, ?queue_closed_exception_types:Dynamic):Dynamic;
	/**
		Initialize the queue runner.
		
		For further documentation, see `queue_runner.py`. Note that
		`FeedingQueueRunner` does not support construction from protobuffer nor
		serialization to protobuffer.
		
		Args:
		  queue: A `Queue`.
		  enqueue_ops: List of enqueue ops to run in threads later.
		  close_op: Op to close the queue. Pending enqueue ops are preserved.
		  cancel_op: Op to close the queue and cancel pending enqueue ops.
		  feed_fns: a list of functions that return a dictionary mapping fed
		    `Tensor`s to values. Must be the same length as `enqueue_ops`.
		  queue_closed_exception_types: Optional tuple of Exception types that
		    indicate that the queue has been closed when raised during an enqueue
		    operation.  Defaults to
		    `(tf.errors.OutOfRangeError, tf.errors.CancelledError)`.
		
		Raises:
		  ValueError: `feed_fns` is not `None` and has different length than
		    `enqueue_ops`.
	**/
	public function new(?queue:Dynamic, ?enqueue_ops:Dynamic, ?close_op:Dynamic, ?cancel_op:Dynamic, ?feed_fns:Dynamic, ?queue_closed_exception_types:Dynamic):Void;
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
		Close the queue when the Coordinator requests stop.
		
		Args:
		  sess: A Session.
		  cancel_op: The Operation to run.
		  coord: Coordinator.
	**/
	public function _close_on_stop(sess:Dynamic, cancel_op:Dynamic, coord:Dynamic):Dynamic;
	/**
		Create a QueueRunner from arguments.
		
		Args:
		  queue: A `Queue`.
		  enqueue_ops: List of enqueue ops to run in threads later.
		  close_op: Op to close the queue. Pending enqueue ops are preserved.
		  cancel_op: Op to close the queue and cancel pending enqueue ops.
		  queue_closed_exception_types: Tuple of exception types, which indicate
		    the queue has been safely closed.
		
		Raises:
		  ValueError: If `queue` or `enqueue_ops` are not provided when not
		    restoring from `queue_runner_def`.
		  TypeError: If `queue_closed_exception_types` is provided, but is not
		    a non-empty tuple of error types (subclasses of `tf.errors.OpError`).
	**/
	public function _init_from_args(?queue:Dynamic, ?enqueue_ops:Dynamic, ?close_op:Dynamic, ?cancel_op:Dynamic, ?queue_closed_exception_types:Dynamic):Dynamic;
	/**
		Create a QueueRunner from `QueueRunnerDef`.
		
		Args:
		  queue_runner_def: Optional `QueueRunnerDef` protocol buffer.
		  import_scope: Optional `string`. Name scope to add.
	**/
	public function _init_from_proto(queue_runner_def:Dynamic):Dynamic;
	/**
		Execute the enqueue op in a loop, close the queue in case of error.
		
		Args:
		  sess: A `Session`.
		  enqueue_op: The `Operation` to run.
		  feed_fn: the feed function to pass to `sess.run`.
		  coord: Optional `Coordinator` object for reporting errors and checking
		    for stop conditions.
	**/
	public function _run(sess:Dynamic, enqueue_op:Dynamic, feed_fn:Dynamic, ?coord:Dynamic):Dynamic;
	public var cancel_op : Dynamic;
	public var close_op : Dynamic;
	/**
		Create threads to run the enqueue ops for the given session.
		
		This method requires a session in which the graph was launched.  It creates
		a list of threads, optionally starting them.  There is one thread for each
		op passed in `enqueue_ops`.
		
		The `coord` argument is an optional coordinator, that the threads will use
		to terminate together and report exceptions.  If a coordinator is given,
		this method starts an additional thread to close the queue when the
		coordinator requests a stop.
		
		If previously created threads for the given session are still running, no
		new threads will be created.
		
		Args:
		  sess: A `Session`.
		  coord: Optional `Coordinator` object for reporting errors and checking
		    stop conditions.
		  daemon: Boolean.  If `True` make the threads daemon threads.
		  start: Boolean.  If `True` starts the threads.  If `False` the
		    caller must call the `start()` method of the returned threads.
		
		Returns:
		  A list of threads.
	**/
	public function create_threads(sess:Dynamic, ?coord:Dynamic, ?daemon:Dynamic, ?start:Dynamic):Dynamic;
	public var enqueue_ops : Dynamic;
	/**
		Exceptions raised but not handled by the `QueueRunner` threads.
		
		Exceptions raised in queue runner threads are handled in one of two ways
		depending on whether or not a `Coordinator` was passed to
		`create_threads()`:
		
		* With a `Coordinator`, exceptions are reported to the coordinator and
		  forgotten by the `QueueRunner`.
		* Without a `Coordinator`, exceptions are captured by the `QueueRunner` and
		  made available in this `exceptions_raised` property.
		
		Returns:
		  A list of Python `Exception` objects.  The list is empty if no exception
		  was captured.  (No exceptions are captured when using a Coordinator.)
	**/
	public var exceptions_raised : Dynamic;
	/**
		Returns a `QueueRunner` object created from `queue_runner_def`.
	**/
	static public function from_proto(queue_runner_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		The string name of the underlying Queue.
	**/
	public var name : Dynamic;
	public var queue : Dynamic;
	public var queue_closed_exception_types : Dynamic;
	/**
		Converts this `QueueRunner` to a `QueueRunnerDef` protocol buffer.
		
		Args:
		  export_scope: Optional `string`. Name scope to remove.
		
		Returns:
		  A `QueueRunnerDef` protocol buffer, or `None` if the `Variable` is not in
		  the specified name scope.
	**/
	public function to_proto():Dynamic;
}