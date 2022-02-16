/* This file is generated, do not edit! */
package torch.distributed.algorithms.join;
@:pythonImport("torch.distributed.algorithms.join", "Join") extern class Join {
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Repeatedly runs the main hooks until all processes join; then, runs
		the post-hooks.
		
		Raises:
		    RuntimeError
		        If ``throw_on_early_termination=True``.
	**/
	public function __exit__(type:Dynamic, value:Dynamic, traceback:Dynamic):Dynamic;
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
	public function ___init__(joinables:Dynamic, ?enable:Dynamic, ?throw_on_early_termination:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(joinables:Dynamic, ?enable:Dynamic, ?throw_on_early_termination:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Extracts the process group and device information from the joinables.
		If there are multiple joinables, then the context manager uses the
		first specified device.
		
		Preconditions:
		    ``self._joinables`` is not ``None`` and is non-empty.
		
		Raises:
		    ValueError
		        If there are multiple conflicting ``process_group`` attributes
		        among the ``Joinable`` objects.
	**/
	public function _extract_dist_info():Dynamic;
	/**
		Returns the number of non-joined processes by shadowing an all-reduce
		in the non-joined processes.
	**/
	public function _get_num_nonjoined_procs():Dynamic;
	/**
		Schedules an all-reduce to notify non-joined processes to terminate
		and raises a ``RuntimeError`` indicating that the current process has
		exhausted its inputs.
	**/
	public function _notify_procs_to_terminate():Dynamic;
	/**
		Sets the :class:`_JoinConfig` of each participating :class:`Joinable`.
	**/
	public function _set_joinable_configs():Dynamic;
	/**
		Notifies the join context manager that the calling process has not yet
		joined; then, if ``throw_on_early_termination=True``, checks if uneven
		inputs have been detected (i.e. if one process has already joined) and
		throws an exception if so.
		
		This method should be called from a :class:`Joinable` object before
		its per-iteration collective communications. For example, this should
		be called at the beginning of the forward pass in
		:class:`DistributedDataParallel`.
		
		Only the first :class:`Joinable` object passed into the context
		manager performs the collective communications in this method, and
		for the others, this method is vacuous.
		
		Arguments:
		    joinable (Joinable): the :class:`Joinable` object calling this
		        method.
		
		Returns:
		    An async work handle for the all-reduce meant to notify the context
		    manager that the process has not yet joined if ``joinable`` is the
		    first one passed into the context manager; ``None`` otherwise.
	**/
	static public function notify_join_context(joinable:Dynamic):Dynamic;
}