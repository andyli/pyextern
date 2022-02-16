/* This file is generated, do not edit! */
package torch.multiprocessing.pool;
@:pythonImport("torch.multiprocessing.pool", "Pool") extern class Pool {
	static public function Process(ctx:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__(?_warn:Dynamic, ?RUN:Dynamic):Dynamic;
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
	public function __exit__(exc_type:Dynamic, exc_val:Dynamic, exc_tb:Dynamic):Dynamic;
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
	public function ___init__(?processes:Dynamic, ?initializer:Dynamic, ?initargs:Dynamic, ?maxtasksperchild:Dynamic, ?context:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?processes:Dynamic, ?initializer:Dynamic, ?initargs:Dynamic, ?maxtasksperchild:Dynamic, ?context:Dynamic):Void;
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
	public function _check_running():Dynamic;
	public function _get_sentinels():Dynamic;
	static public function _get_tasks(func:Dynamic, it:Dynamic, size:Dynamic):Dynamic;
	static public function _get_worker_sentinels(workers:Dynamic):Dynamic;
	/**
		Provides a generator of tasks for imap and imap_unordered with
		appropriate handling for iterables which throw exceptions during
		iteration.
	**/
	public function _guarded_task_generation(result_job:Dynamic, func:Dynamic, iterable:Dynamic):Dynamic;
	static public function _handle_results(outqueue:Dynamic, get:Dynamic, cache:Dynamic):Dynamic;
	static public function _handle_tasks(taskqueue:Dynamic, put:Dynamic, outqueue:Dynamic, pool:Dynamic, cache:Dynamic):Dynamic;
	static public function _handle_workers(cache:Dynamic, taskqueue:Dynamic, ctx:Dynamic, Process:Dynamic, processes:Dynamic, pool:Dynamic, inqueue:Dynamic, outqueue:Dynamic, initializer:Dynamic, initargs:Dynamic, maxtasksperchild:Dynamic, wrap_exception:Dynamic, sentinels:Dynamic, change_notifier:Dynamic):Dynamic;
	static public function _help_stuff_finish(inqueue:Dynamic, task_handler:Dynamic, size:Dynamic):Dynamic;
	/**
		Cleanup after any worker processes which have exited due to reaching
		their specified lifetime.  Returns True if any workers were cleaned up.
	**/
	static public function _join_exited_workers(pool:Dynamic):Dynamic;
	/**
		Clean up any exited workers and start replacements for them.
		        
	**/
	static public function _maintain_pool(ctx:Dynamic, Process:Dynamic, processes:Dynamic, pool:Dynamic, inqueue:Dynamic, outqueue:Dynamic, initializer:Dynamic, initargs:Dynamic, maxtasksperchild:Dynamic, wrap_exception:Dynamic):Dynamic;
	/**
		Helper function to implement map, starmap and their async counterparts.
	**/
	public function _map_async(func:Dynamic, iterable:Dynamic, mapper:Dynamic, ?chunksize:Dynamic, ?callback:Dynamic, ?error_callback:Dynamic):Dynamic;
	/**
		Bring the number of pool processes up to the specified number,
		for use after reaping workers which have exited.
	**/
	public function _repopulate_pool():Dynamic;
	/**
		Bring the number of pool processes up to the specified number,
		for use after reaping workers which have exited.
	**/
	static public function _repopulate_pool_static(ctx:Dynamic, Process:Dynamic, processes:Dynamic, pool:Dynamic, inqueue:Dynamic, outqueue:Dynamic, initializer:Dynamic, initargs:Dynamic, maxtasksperchild:Dynamic, wrap_exception:Dynamic):Dynamic;
	public function _setup_queues():Dynamic;
	static public function _terminate_pool(taskqueue:Dynamic, inqueue:Dynamic, outqueue:Dynamic, pool:Dynamic, change_notifier:Dynamic, worker_handler:Dynamic, task_handler:Dynamic, result_handler:Dynamic, cache:Dynamic):Dynamic;
	static public function _wait_for_updates(sentinels:Dynamic, change_notifier:Dynamic, ?timeout:Dynamic):Dynamic;
	static public var _wrap_exception : Dynamic;
	/**
		Equivalent of `func(*args, **kwds)`.
		Pool must be running.
	**/
	public function apply(func:Dynamic, ?args:Dynamic, ?kwds:Dynamic):Dynamic;
	/**
		Asynchronous version of `apply()` method.
	**/
	public function apply_async(func:Dynamic, ?args:Dynamic, ?kwds:Dynamic, ?callback:Dynamic, ?error_callback:Dynamic):Dynamic;
	public function close():Dynamic;
	/**
		Equivalent of `map()` -- can be MUCH slower than `Pool.map()`.
	**/
	public function imap(func:Dynamic, iterable:Dynamic, ?chunksize:Dynamic):Dynamic;
	/**
		Like `imap()` method but ordering of results is arbitrary.
	**/
	public function imap_unordered(func:Dynamic, iterable:Dynamic, ?chunksize:Dynamic):Dynamic;
	public function join():Dynamic;
	/**
		Apply `func` to each element in `iterable`, collecting the results
		in a list that is returned.
	**/
	public function map(func:Dynamic, iterable:Dynamic, ?chunksize:Dynamic):Dynamic;
	/**
		Asynchronous version of `map()` method.
	**/
	public function map_async(func:Dynamic, iterable:Dynamic, ?chunksize:Dynamic, ?callback:Dynamic, ?error_callback:Dynamic):Dynamic;
	/**
		Like `map()` method but the elements of the `iterable` are expected to
		be iterables as well and will be unpacked as arguments. Hence
		`func` and (a, b) becomes func(a, b).
	**/
	public function starmap(func:Dynamic, iterable:Dynamic, ?chunksize:Dynamic):Dynamic;
	/**
		Asynchronous version of `starmap()` method.
	**/
	public function starmap_async(func:Dynamic, iterable:Dynamic, ?chunksize:Dynamic, ?callback:Dynamic, ?error_callback:Dynamic):Dynamic;
	public function terminate():Dynamic;
}