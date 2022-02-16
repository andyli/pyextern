/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.data_utils;
@:pythonImport("tensorflow.python.keras.utils.data_utils", "OrderedEnqueuer") extern class OrderedEnqueuer {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(sequence:Dynamic, ?use_multiprocessing:Dynamic, ?shuffle:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(sequence:Dynamic, ?use_multiprocessing:Dynamic, ?shuffle:Dynamic):Void;
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
		Gets the Pool initializer for multiprocessing.
		
		Args:
		    workers: Number of workers.
		
		Returns:
		    Function, a Function to initialize the pool
	**/
	public function _get_executor_init(workers:Dynamic):Dynamic;
	static public var _keras_api_names : Dynamic;
	static public var _keras_api_names_v1 : Dynamic;
	/**
		Submits request to the executor and queue the `Future` objects.
	**/
	public function _run():Dynamic;
	/**
		Sends current Iterable to all workers.
	**/
	public function _send_sequence():Dynamic;
	/**
		Wait for the queue to be empty.
	**/
	public function _wait_queue():Dynamic;
	/**
		Creates a generator to extract data from the queue.
		
		Skip the data if it is `None`.
		
		Yields:
		    The next element in the queue, i.e. a tuple
		    `(inputs, targets)` or
		    `(inputs, targets, sample_weights)`.
	**/
	public function get():Dynamic;
	public function is_running():Dynamic;
	/**
		Starts the handler's workers.
		
		Args:
		    workers: Number of workers.
		    max_queue_size: queue size
		        (when full, workers could block on `put()`)
	**/
	public function start(?workers:Dynamic, ?max_queue_size:Dynamic):Dynamic;
	/**
		Stops running threads and wait for them to exit, if necessary.
		
		Should be called by the same thread which called `start()`.
		
		Args:
		    timeout: maximum time to wait on `thread.join()`
	**/
	public function stop(?timeout:Dynamic):Dynamic;
}