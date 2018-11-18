/* This file is generated, do not edit! */
package tensorflow.python.training.coordinator;
@:pythonImport("tensorflow.python.training.coordinator", "Coordinator") extern class Coordinator {
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
		Create a new Coordinator.
		
		Args:
		  clean_stop_exception_types: Optional tuple of Exception types that should
		    cause a clean stop of the coordinator. If an exception of one of these
		    types is reported to `request_stop(ex)` the coordinator will behave as
		    if `request_stop(None)` was called.  Defaults to
		    `(tf.errors.OutOfRangeError,)` which is used by input queues to signal
		    the end of input. When feeding training data from a Python iterator it
		    is common to add `StopIteration` to this list.
	**/
	@:native("__init__")
	public function ___init__(?clean_stop_exception_types:Dynamic):Dynamic;
	/**
		Create a new Coordinator.
		
		Args:
		  clean_stop_exception_types: Optional tuple of Exception types that should
		    cause a clean stop of the coordinator. If an exception of one of these
		    types is reported to `request_stop(ex)` the coordinator will behave as
		    if `request_stop(None)` was called.  Defaults to
		    `(tf.errors.OutOfRangeError,)` which is used by input queues to signal
		    the end of input. When feeding training data from a Python iterator it
		    is common to add `StopIteration` to this list.
	**/
	public function new(?clean_stop_exception_types:Dynamic):Void;
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
	/**
		Check if the exception indicated in 'ex' should be ignored.
		
		This method examines `ex` to check if it is an exception that should be
		reported to the users.  If yes, it returns `ex` as is, otherwise it returns
		None.
		
		The code returns None for exception types listed in
		`_clean_stop_exception_types`.
		
		Args:
		  ex: None, an `Exception`, or a Python `exc_info` tuple as returned by
		    `sys.exc_info()`.
		
		Returns:
		  ex or None.
	**/
	public function _filter_exception(ex:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Clears the stop flag.
		
		After this is called, calls to `should_stop()` will return `False`.
	**/
	public function clear_stop():Dynamic;
	/**
		Wait for threads to terminate.
		
		This call blocks until a set of threads have terminated.  The set of thread
		is the union of the threads passed in the `threads` argument and the list
		of threads that registered with the coordinator by calling
		`Coordinator.register_thread()`.
		
		After the threads stop, if an `exc_info` was passed to `request_stop`, that
		exception is re-raised.
		
		Grace period handling: When `request_stop()` is called, threads are given
		'stop_grace_period_secs' seconds to terminate.  If any of them is still
		alive after that period expires, a `RuntimeError` is raised.  Note that if
		an `exc_info` was passed to `request_stop()` then it is raised instead of
		that `RuntimeError`.
		
		Args:
		  threads: List of `threading.Threads`. The started threads to join in
		    addition to the registered threads.
		  stop_grace_period_secs: Number of seconds given to threads to stop after
		    `request_stop()` has been called.
		  ignore_live_threads: If `False`, raises an error if any of the threads are
		    still alive after `stop_grace_period_secs`.
		
		Raises:
		  RuntimeError: If any thread is still alive after `request_stop()`
		    is called and the grace period expires.
	**/
	public function join(?threads:Dynamic, ?stop_grace_period_secs:Dynamic, ?ignore_live_threads:Dynamic):Dynamic;
	public var joined : Dynamic;
	/**
		If an exception has been passed to `request_stop`, this raises it.
	**/
	public function raise_requested_exception():Dynamic;
	/**
		Register a thread to join.
		
		Args:
		  thread: A Python thread to join.
	**/
	public function register_thread(thread:Dynamic):Dynamic;
	/**
		Request that the threads stop.
		
		After this is called, calls to `should_stop()` will return `True`.
		
		Note: If an exception is being passed in, in must be in the context of
		handling the exception (i.e. `try: ... except Exception as ex: ...`) and not
		a newly created one.
		
		Args:
		  ex: Optional `Exception`, or Python `exc_info` tuple as returned by
		    `sys.exc_info()`.  If this is the first call to `request_stop()` the
		    corresponding exception is recorded and re-raised from `join()`.
	**/
	public function request_stop(?ex:Dynamic):Dynamic;
	/**
		Check if stop was requested.
		
		Returns:
		  True if a stop was requested.
	**/
	public function should_stop():Dynamic;
	/**
		Context manager to request stop when an Exception is raised.
		
		Code that uses a coordinator must catch exceptions and pass
		them to the `request_stop()` method to stop the other threads
		managed by the coordinator.
		
		This context handler simplifies the exception handling.
		Use it as follows:
		
		```python
		with coord.stop_on_exception():
		  # Any exception raised in the body of the with
		  # clause is reported to the coordinator before terminating
		  # the execution of the body.
		  ...body...
		```
		
		This is completely equivalent to the slightly longer code:
		
		```python
		try:
		  ...body...
		except:
		  coord.request_stop(sys.exc_info())
		```
		
		Yields:
		  nothing.
	**/
	public function stop_on_exception():Dynamic;
	/**
		Wait till the Coordinator is told to stop.
		
		Args:
		  timeout: Float.  Sleep for up to that many seconds waiting for
		    should_stop() to become True.
		
		Returns:
		  True if the Coordinator is told stop, False if the timeout expired.
	**/
	public function wait_for_stop(?timeout:Dynamic):Dynamic;
}