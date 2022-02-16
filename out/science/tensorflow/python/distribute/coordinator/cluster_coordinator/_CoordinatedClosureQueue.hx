/* This file is generated, do not edit! */
package tensorflow.python.distribute.coordinator.cluster_coordinator;
@:pythonImport("tensorflow.python.distribute.coordinator.cluster_coordinator", "_CoordinatedClosureQueue") extern class _CoordinatedClosureQueue {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
		Clears the queue and sets remaining closures cancelled error.
		
		This method expects self._queue_lock to be held prior to entry.
	**/
	public function _cancel_all_closures():Dynamic;
	/**
		Raises the error if one exists.
		
		If an error exists, cancel the closures in queue, raises it, and clear
		the error.
		
		This method expects self._queue_lock to be held prior to entry.
	**/
	public function _raise_if_error():Dynamic;
	/**
		Returns true if the queue is empty and there is no inflight closure.
		
		If `mark_failed` was called before `done`, the error from the first
		invocation of `mark_failed` will be raised.
	**/
	public function done():Dynamic;
	/**
		Return a closure from the queue to be executed.
	**/
	public function get(?timeout:Dynamic):Dynamic;
	/**
		Sets error and unblocks any wait() call.
	**/
	public function mark_failed(e:Dynamic):Dynamic;
	/**
		Let the queue know that a closure has been successfully executed.
	**/
	public function mark_finished():Dynamic;
	/**
		Put a closure into the queue for later execution.
		
		If `mark_failed` was called before `put`, the error from the first
		invocation of `mark_failed` will be raised.
		
		Args:
		  closure: The `Closure` to put into the queue.
	**/
	public function put(closure:Dynamic):Dynamic;
	/**
		Put the closure back into the queue as it was not properly executed.
	**/
	public function put_back(closure:Dynamic):Dynamic;
	public function stop():Dynamic;
	/**
		Wait for all closures to be finished before returning.
		
		If `mark_failed` was called before or during `wait`, the error from the
		first invocation of `mark_failed` will be raised.
		
		Args:
		  timeout: A float specifying a timeout for the wait in seconds.
		
		Returns:
		  True unless the given timeout expired, in which case it returns False.
	**/
	public function wait(?timeout:Dynamic):Dynamic;
}