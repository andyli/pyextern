/* This file is generated, do not edit! */
package torch.distributed.elastic.timer.api;
@:pythonImport("torch.distributed.elastic.timer.api", "TimerServer") extern class TimerServer {
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
		:param request_queue: Consumer ``RequestQueue``
		:param max_interval: max time (in seconds) to wait
		                     for an item in the request_queue
		:param daemon: whether to run the watchdog thread as a daemon
	**/
	@:native("__init__")
	public function ___init__(request_queue:Dynamic, max_interval:Dynamic, ?daemon:Dynamic):Dynamic;
	/**
		:param request_queue: Consumer ``RequestQueue``
		:param max_interval: max time (in seconds) to wait
		                     for an item in the request_queue
		:param daemon: whether to run the watchdog thread as a daemon
	**/
	public function new(request_queue:Dynamic, max_interval:Dynamic, ?daemon:Dynamic):Void;
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
	static public var __slots__ : Dynamic;
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
	public function _get_scopes(timer_requests:Dynamic):Dynamic;
	/**
		Reaps the given worker. Returns True if the worker has been
		successfully reaped, False otherwise. If any uncaught exception
		is thrown from this method, the worker is considered reaped
		and all associated timers will be removed.
	**/
	public function _reap_worker(worker_id:Dynamic):Dynamic;
	/**
		Wraps ``_reap_worker(worker_id)``, if an uncaught exception is
		thrown, then it considers the worker as reaped.
	**/
	public function _reap_worker_no_throw(worker_id:Dynamic):Dynamic;
	public function _run_watchdog():Dynamic;
	public function _watchdog_loop():Dynamic;
	/**
		Clears all timers for the given ``worker_ids``.
	**/
	public function clear_timers(worker_ids:Dynamic):Dynamic;
	/**
		Returns all expired timers for each worker_id. An expired timer
		is a timer for which the expiration_time is less than or equal to
		the provided deadline.
	**/
	public function get_expired_timers(deadline:Dynamic):Dynamic;
	/**
		Processes the incoming timer requests and registers them with the server.
		The timer request can either be a acquire-timer or release-timer request.
		Timer requests with a negative expiration_time should be interpreted
		as a release-timer request.
	**/
	public function register_timers(timer_requests:Dynamic):Dynamic;
	public function start():Dynamic;
	public function stop():Dynamic;
}