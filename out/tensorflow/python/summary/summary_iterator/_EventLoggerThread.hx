/* This file is generated, do not edit! */
package tensorflow.python.summary.summary_iterator;
@:pythonImport("tensorflow.python.summary.summary_iterator", "_EventLoggerThread") extern class _EventLoggerThread {
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
		Creates an _EventLoggerThread.
		
		Args:
		  queue: A Queue from which to dequeue events.
		  ev_writer: An event writer. Used to log brain events for
		   the visualizer.
		  flush_secs: How often, in seconds, to flush the
		    pending file to disk.
	**/
	@:native("__init__")
	public function ___init__(queue:Dynamic, ev_writer:Dynamic, flush_secs:Dynamic):Dynamic;
	/**
		Creates an _EventLoggerThread.
		
		Args:
		  queue: A Queue from which to dequeue events.
		  ev_writer: An event writer. Used to log brain events for
		   the visualizer.
		  flush_secs: How often, in seconds, to flush the
		    pending file to disk.
	**/
	public function new(queue:Dynamic, ev_writer:Dynamic, flush_secs:Dynamic):Void;
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
	public function _bootstrap():Dynamic;
	public function _bootstrap_inner():Dynamic;
	/**
		Remove current thread from the dict of currently running threads.
	**/
	public function _delete():Dynamic;
	/**
		exc_info() -> (type, value, traceback)
		
		Return information about the most recent exception caught by an except
		clause in the current stack frame or in an older stack frame.
	**/
	static public function _exc_info(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _initialized : Dynamic;
	public function _reset_internal_locks(is_alive:Dynamic):Dynamic;
	public function _set_ident():Dynamic;
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
		
		The entire Python program exits when no alive non-daemon threads are
		left.
	**/
	public var daemon : Dynamic;
	public function getName():Dynamic;
	public function get_name():Dynamic;
	/**
		Thread identifier of this thread or None if it has not been started.
		
		This is a nonzero integer. See the thread.get_ident() function. Thread
		identifiers may be recycled when a thread exits and another thread is
		created. The identifier is available even after the thread has exited.
	**/
	public var ident : Dynamic;
	/**
		Return whether the thread is alive.
		
		This method returns True just before the run() method starts until just
		after the run() method terminates. The module function enumerate()
		returns a list of all alive threads.
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
		isAlive() after join() to decide whether a timeout happened -- if the
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