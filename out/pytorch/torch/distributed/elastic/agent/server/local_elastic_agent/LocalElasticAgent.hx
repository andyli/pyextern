/* This file is generated, do not edit! */
package torch.distributed.elastic.agent.server.local_elastic_agent;
@:pythonImport("torch.distributed.elastic.agent.server.local_elastic_agent", "LocalElasticAgent") extern class LocalElasticAgent {
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
	public function ___init__(spec:Dynamic, ?start_method:Dynamic, ?exit_barrier_timeout:Dynamic, ?log_dir:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(spec:Dynamic, ?start_method:Dynamic, ?exit_barrier_timeout:Dynamic, ?log_dir:Dynamic):Void;
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
		Determines proper ranks for worker processes. The rank assignment
		is done according to the following algorithm:
		
		1. Each agent writes its configuration(group_rank, group_world_size
		   , num_workers) to the common store.
		2. Each agent retrieves configuration for all agents
		   and performs two level sort using role and rank.
		3. Determine the global rank: the global rank of the workers for the current
		   agent is the offset of the infos array up to group_rank of the agent.
		   The offset is computed as a sum of local_world_size of all agents that
		   have rank less than the group_rank. The workers would have the ranks:
		   [offset, offset+local_world_size)
		4. Determine the role rank: The role rank is determined using the algorithms
		   in the point 3 with the exception that the offset is done from the first
		   agent that has the same role as current one and has the minimum group rank.
	**/
	public function _assign_worker_ranks(store:Dynamic, group_rank:Dynamic, group_world_size:Dynamic, spec:Dynamic):Dynamic;
	public function _construct_event(state:Dynamic, source:Dynamic, ?worker:Dynamic, ?raw_error:Dynamic):Dynamic;
	/**
		Wait for ``exit_barrier_timeout`` seconds for all agents to finish
		executing their local workers (either successfully or not). This
		acts as a safety guard against user scripts that terminate at different
		times. This barrier keeps the agent process alive until all workers finish.
	**/
	public function _exit_barrier():Dynamic;
	static public function _get_master_addr_port(store:Dynamic):Dynamic;
	public function _get_ranks(role_infos:Dynamic, role_idx:Dynamic, ?start_idx:Dynamic, ?end_idx:Dynamic):Dynamic;
	public function _get_worker_state(worker:Dynamic, result:Dynamic):Dynamic;
	/**
		Starts a fresh set of workers for the worker_group.
		Essentially a rendezvous followed by a start_workers.
		
		The caller should first call ``_stop_workers()`` to stop running workers
		prior to calling this method.
		
		Optimistically sets the state of the worker group that
		just started as ``HEALTHY`` and delegates the actual monitoring
		of state to ``_monitor_workers()`` method
	**/
	public function _initialize_workers(worker_group:Dynamic):Dynamic;
	public function _invoke_run(?role:Dynamic):Dynamic;
	public function _make_log_dir(log_dir:Dynamic, rdzv_run_id:Dynamic):Dynamic;
	/**
		Checks on the workers for the ``worker_group`` and returns
		the new state of the worker group.
	**/
	public function _monitor_workers(worker_group:Dynamic):Dynamic;
	public function _record_flakiness_metric(?is_failed:Dynamic):Dynamic;
	public function _record_metric_with_condition(metric_name:Dynamic, condition:Dynamic):Dynamic;
	public function _record_metrics(group_results:Dynamic):Dynamic;
	public function _record_worker_events(result:Dynamic):Dynamic;
	/**
		Runs rendezvous for the workers specified by worker spec.
		Assigns workers a new global rank and world size.
		Updates the rendezvous store for the worker group.
	**/
	public function _rendezvous(worker_group:Dynamic):Dynamic;
	/**
		Restarts (stops, rendezvous, starts) all local workers in the group.
	**/
	public function _restart_workers(worker_group:Dynamic):Dynamic;
	static public function _set_master_addr_port(store:Dynamic, master_addr:Dynamic, master_port:Dynamic):Dynamic;
	public function _share_and_gather(store:Dynamic, group_rank:Dynamic, group_world_size:Dynamic, spec:Dynamic):Dynamic;
	/**
		Cleans up any resources that were allocated during the agent's work.
		
		Args:
		    death_sig: Signal to send to the child process, SIGTERM is default
	**/
	public function _shutdown(?death_sig:Dynamic):Dynamic;
	/**
		Starts ``worker_group.spec.local_world_size`` number of workers
		according to worker spec for the worker group .
		
		Returns a map of ``local_rank`` to worker ``id``.
	**/
	public function _start_workers(worker_group:Dynamic):Dynamic;
	/**
		Stops all workers in the given worker group. Implementors
		must deal with workers in all states defined by ``WorkerState``.
		That is, it must gracefully handle stopping non-existent workers,
		unhealthy (stuck) workers, etc.
	**/
	public function _stop_workers(worker_group:Dynamic):Dynamic;
	public function get_agent_status_event(state:Dynamic):Dynamic;
	/**
		Returns:
		    The ``WorkerGroup`` for the given ``role``.
		    Note that the worker group is a mutable object and hence in a
		    multi-threaded/process environment it may change state.
		    Implementors are encouraged (but not required) to return
		    a defensive read-only copy.
	**/
	public function get_worker_group(?role:Dynamic):Dynamic;
	/**
		Runs the agent, retrying the worker group on failures up to
		``max_restarts``.
		
		Returns:
		    The result of the execution, containing the return values or
		    failure details for each worker mapped by the worker's global rank.
		
		Raises:
		    Exception - any other failures NOT related to worker process
	**/
	public function run(?role:Dynamic):Dynamic;
}