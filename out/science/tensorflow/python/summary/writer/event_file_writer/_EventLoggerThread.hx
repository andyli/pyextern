/* This file is generated, do not edit! */
package tensorflow.python.summary.writer.event_file_writer;
@:pythonImport("tensorflow.python.summary.writer.event_file_writer", "_EventLoggerThread") extern class _EventLoggerThread {
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
		Creates an _EventLoggerThread.
		
		Args:
		  queue: A CloseableQueue from which to dequeue events. The queue will be
		    closed just before the thread exits, whether due to `close_sentinel` or
		    any exception raised in the writing loop.
		  ev_writer: An event writer. Used to log brain events for
		    the visualizer.
		  flush_secs: How often, in seconds, to flush the
		    pending file to disk.
		  flush_complete: A threading.Event that will be set whenever a flush
		    operation requested via `flush_sentinel` has been completed.
		  flush_sentinel: A sentinel element in queue that tells this thread to
		    flush the writer and mark the current flush operation complete.
		  close_sentinel: A sentinel element in queue that tells this thread to
		    terminate and close the queue.
	**/
	@:native("__init__")
	public function ___init__(queue:Dynamic, ev_writer:Dynamic, flush_secs:Dynamic, flush_complete:Dynamic, flush_sentinel:Dynamic, close_sentinel:Dynamic):Dynamic;
	/**
		Creates an _EventLoggerThread.
		
		Args:
		  queue: A CloseableQueue from which to dequeue events. The queue will be
		    closed just before the thread exits, whether due to `close_sentinel` or
		    any exception raised in the writing loop.
		  ev_writer: An event writer. Used to log brain events for
		    the visualizer.
		  flush_secs: How often, in seconds, to flush the
		    pending file to disk.
		  flush_complete: A threading.Event that will be set whenever a flush
		    operation requested via `flush_sentinel` has been completed.
		  flush_sentinel: A sentinel element in queue that tells this thread to
		    flush the writer and mark the current flush operation complete.
		  close_sentinel: A sentinel element in queue that tells this thread to
		    terminate and close the queue.
	**/
	public function new(queue:Dynamic, ev_writer:Dynamic, flush_secs:Dynamic, flush_complete:Dynamic, flush_sentinel:Dynamic, close_sentinel:Dynamic):Void;
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
	public function _bootstrap():Dynamic;
	public function _bootstrap_inner():Dynamic;
	/**
		Remove current thread from the dict of currently running threads.
	**/
	public function _delete():Dynamic;
	static public var _initialized : Dynamic;
	public function _reset_internal_locks(is_alive:Dynamic):Dynamic;
	public function _set_ident():Dynamic;
	public function _set_native_id():Dynamic;
	/**
		Set a lock object which will be released by the interpreter when
		the underlying thread state (see pystate.h) gets deleted.
	**/
	public function _set_tstate_lock():Dynamic;
	public function _stop():Dynamic;
	public function _wait_for_tstate_lock(?block:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		A boolean value indicating whether this thread is a daemon thread.
		
		This must be set before start() is called, otherwise RuntimeError is
		raised. Its initial value is inherited from the creating thread; the
		main thread is not a daemon thread and therefore all threads created in
		the main thread default to daemon = False.
		
		The entire Python program exits when only daemon threads are left.
	**/
	public var daemon : Dynamic;
	public function getName():Dynamic;
	/**
		Thread identifier of this thread or None if it has not been started.
		
		This is a nonzero integer. See the get_ident() function. Thread
		identifiers may be recycled when a thread exits and another thread is
		created. The identifier is available even after the thread has exited.
	**/
	public var ident : Dynamic;
	/**
		Return whether the thread is alive.
		
		This method is deprecated, use is_alive() instead.
	**/
	public function isAlive():Dynamic;
	public function isDaemon():Dynamic;
	/**
		Return whether the thread is alive.
		
		This method returns True just before the run() method starts until just
		after the run() method terminates. The module function enumerate()
		returns a list of all alive threads.
	**/
	public function is_alive():Dynamic;
	/**
		Wait until the thread terminates.
		
		This blocks the calling thread until the thread whose join() method is
		called terminates -- either normally or through an unhandled exception
		or until the optional timeout occurs.
		
		When the timeout argument is present and not None, it should be a
		floating point number specifying a timeout for the operation in seconds
		(or fractions thereof). As join() always returns None, you must call
		is_alive() after join() to decide whether a timeout happened -- if the
		thread is still alive, the join() call timed out.
		
		When the timeout argument is not present or None, the operation will
		block until the thread terminates.
		
		A thread can be join()ed many times.
		
		join() raises a RuntimeError if an attempt is made to join the current
		thread as that would cause a deadlock. It is also an error to join() a
		thread before it has been started and attempts to do so raises the same
		exception.
	**/
	public function join(?timeout:Dynamic):Dynamic;
	/**
		A string used for identification purposes only.
		
		It has no semantics. Multiple threads may be given the same name. The
		initial name is set by the constructor.
	**/
	public var name : Dynamic;
	/**
		Native integral thread ID of this thread, or None if it has not been started.
		
		This is a non-negative integer. See the get_native_id() function.
		This represents the Thread ID as reported by the kernel.
	**/
	public var native_id : Dynamic;
	/**
		Method representing the thread's activity.
		
		You may override this method in a subclass. The standard run() method
		invokes the callable object passed to the object's constructor as the
		target argument, if any, with sequential and keyword arguments taken
		from the args and kwargs arguments, respectively.
	**/
	public function run():Dynamic;
	public function setDaemon(daemonic:Dynamic):Dynamic;
	public function setName(name:Dynamic):Dynamic;
	/**
		Start the thread's activity.
		
		It must be called at most once per thread object. It arranges for the
		object's run() method to be invoked in a separate thread of control.
		
		This method will raise a RuntimeError if called more than once on the
		same thread object.
	**/
	public function start():Dynamic;
}