/* This file is generated, do not edit! */
package torch.distributed.elastic.rendezvous.static_tcp_rendezvous;
@:pythonImport("torch.distributed.elastic.rendezvous.static_tcp_rendezvous", "StaticTCPRendezvous") extern class StaticTCPRendezvous {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(master_addr:Dynamic, master_port:Dynamic, rank:Dynamic, world_size:Dynamic, run_id:Dynamic, timeout:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(master_addr:Dynamic, master_port:Dynamic, rank:Dynamic, world_size:Dynamic, run_id:Dynamic, timeout:Dynamic):Void;
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
	/**
		Returns the name of the rendezvous backend.
	**/
	public function get_backend():Dynamic;
	/**
		Returns the run id of the rendezvous.
		
		The run id is a user-defined id that uniquely identifies an instance of
		a distributed application. It typically maps to a job id and is used to
		allow nodes to join the correct distributed application.
	**/
	public function get_run_id():Dynamic;
	/**
		Checks whether the rendezvous has been closed.
		
		A closed rendezvous means all future attempts to re-rendezvous within
		same job will fail.
		
		``is_closed()`` and :py:meth:`set_closed` have semantics of eventual
		propagation and should not be used for synchronization. The intention is
		that if at least one node decides the job is finished, it will close the
		rendezvous, and other nodes will soon observe this and stop running as
		well.
	**/
	public function is_closed():Dynamic;
	/**
		Main entry-point into the rendezvous barrier.
		
		Blocks until the rendezvous is complete and the current process is
		included in the formed worker group, or a timeout occurs, or the
		rendezvous was marked closed.
		
		Returns:
		    A tuple of :py:class:`torch.distributed.Store`, ``rank``, and
		    ``world size``.
		
		Raises:
		    RendezvousClosedError:
		        The rendezvous is closed.
		    RendezvousConnectionError:
		        The connection to the rendezvous backend has failed.
		    RendezvousStateError:
		        The rendezvous state is corrupt.
		    RendezvousTimeoutError:
		        The rendezvous did not complete on time.
	**/
	public function next_rendezvous():Dynamic;
	/**
		Returns the number of nodes who arrived late at the rendezvous
		barrier, hence were not included in the current worker group.
		
		Callers should periodically call this method to check whether new
		nodes are waiting to join the job and if so admit them by calling
		:py:meth:`next_rendezvous()` (re-rendezvous).
	**/
	public function num_nodes_waiting():Dynamic;
	/**
		Marks the rendezvous as closed.
	**/
	public function set_closed():Dynamic;
	/**
		Closes all resources that were open for the rendezvous.
		
		Example::
		
		    rdzv_handler = ...
		    try:
		        store, rank, world_size = rdzv_handler.next_rendezvous()
		    finally:
		        rdzv_handler.shutdown()
	**/
	public function shutdown():Dynamic;
}