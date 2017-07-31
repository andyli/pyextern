/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.feeder;
@:pythonImport("tensorflow.contrib.training.python.training.feeder", "Feeder") extern class Feeder {
	static public var REMOTE_QUEUE_RUNNERS : Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(dtypes:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(dtypes:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic):Void;
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
		Adds a remote queue runner to the graph.
		
		These queue runners differ from the standard in two ways: First,
		they never close their queue. Second, they are added to the
		`Feeder.REMOTE_QUEUE_RUNNERS` collection, rather than
		`ops.GraphKeys.QUEUE_RUNNERS`, so they can be started/stopped
		separately.
		
		Args:
		  queue: The queue.
		  enq_ops: A list of ops which perform enqueues (each on its own thread).
	**/
	public function _add_remote_queue_runner(queue:Dynamic, enq_ops:Dynamic):Dynamic;
	public function _feed_remote_queues_forever(sess_callback:Dynamic, outer_coordinator:Dynamic, tolerator:Dynamic):Dynamic;
	/**
		Requests that fed values are sent to `remote_device`.
	**/
	public function add_remote_device(remote_device:Dynamic):Dynamic;
	public function add_remote_devices(devices:Dynamic):Dynamic;
	/**
		Adds feeding for a range of replicas from `job_name`.
		
		Args:
		  job_name: The job name portion of the remote jobs
		  replica_count: The total number of remote jobs
		  feeder_task_num: Optional; if there is more than one feeder job
		    in the flock this is the task # of the current process.
		  replicas_per_feeder: How many replicas each feeder job should
		    push to. If present, `feeder_task_num` is required.
		  base_device_spec: Optional base device spec. If present, then
		    each replica device spec is derived from `base_device_spec`,
		    with the job and replica properties set.
		Raises:
		  ValueError: On invalid arguments.
	**/
	public function add_remote_replicas(job_name:Dynamic, replica_count:Dynamic, ?feeder_task_num:Dynamic, ?replicas_per_feeder:Dynamic, ?base_device_spec:Dynamic):Dynamic;
	/**
		Returns fed tensor values.
	**/
	public function get_fed_tensors():Dynamic;
	/**
		Returns a batch of fed tensor values.
	**/
	public function get_many_fed_tensors(batch_size:Dynamic):Dynamic;
	/**
		Runs feeding forever.
		
		This method exits only if `outer_coordinator` has a stop requested
		or if a remote feed encounters an un-tolerated error. The most
		likely cause of `outer_coordinator` stopping besides a manual call
		to `request_stop()` is a `QueueRunner` thread reaching the end of
		its queue or encountering an error.
		
		Returns only after joining `outer_coordinator`.
		
		Args:
		  sess_callback: A function which, when called, returns a Session
		    to use for feeding. Can be called multiple times due to retries.
		  outer_coordinator: If present, a `Coordinator` which the feeding
		    process will respect. Will be created if omitted.
		  tolerator: If present, a `failure_tolerator.FailureTolerator` which is
		    used to manage retries of feeding the remote devices.
		  start_queue_runners: Whether to start queue runners before
		    beginning to feed the remote devices. Defaults to True. If
		    False and no other mechanism is used to start queue runners, this
		    method will hang forever without doing work.
	**/
	public function run_feeding_forever(sess_callback:Dynamic, ?outer_coordinator:Dynamic, ?tolerator:Dynamic, ?start_queue_runners:Dynamic):Dynamic;
	/**
		Sets fed tensors.
	**/
	public function set_fed_tensors(tensors:Dynamic):Dynamic;
	/**
		Sets batches fed tensors.
	**/
	public function set_many_fed_tensors(tensors:Dynamic):Dynamic;
	/**
		Waits until run_feeding_forever() is entered.
		
		Does not return until it is safe to create new sessions against
		the same target as the feeder is using; see b/32749157.
		
		Args:
		  timeout: An optional timeout in seconds.
		Returns:
		  True if feeding has begun; False if the timeout was reached.
	**/
	public function wait_until_feeding(?timeout:Dynamic):Dynamic;
}