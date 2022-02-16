/* This file is generated, do not edit! */
package torch.distributed.rpc.api;
@:pythonImport("torch.distributed.rpc.api") extern class Api_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var DEFAULT_SHUTDOWN_TIMEOUT : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function GenericWithOneTypeVar(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var T : Dynamic;
	static public var UNSET_RPC_TIMEOUT : Dynamic;
	static public var _ALL_WORKER_NAMES : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		This is similar to torch.distributed.all_gather(), but is using RPC. It
		picks the worker with the smallest name (alphabetic order) as the leader.
		Then all followers send their data ``obj`` to the leader. After the leader
		has received all, it will broadcast the results back to all followers. This
		function blocks until all workers have received the gathered results.
	**/
	static public function _all_gather(obj:Dynamic, ?worker_names:Dynamic, ?timeout:Dynamic):Dynamic;
	static public var _all_gather_dict_lock : Dynamic;
	static public var _all_gather_sequence_id : Dynamic;
	static public var _all_gather_sequence_id_to_states : Dynamic;
	/**
		Synchronizes local and remote RPC processes.
		
		This will block until all local and remote RPC processes specified under worker_names
		reach this method to wait for all outstanding work to complete.
		
		Args:
		    worker_names (List[str]): The set of workers to synchronize.
	**/
	static public function _barrier(worker_names:Dynamic):Dynamic;
	static public function _broadcast_to_followers(sequence_id:Dynamic, objects_map:Dynamic):Dynamic;
	/**
		Builds the key that RPC calls are profiled with using the autograd profiler.
		This will be the name of the corresponding Event recorded in the profiler.
		
		Args:
		    exec_type (RPCExecMode): Type of RPC/RRef call
		    func_name (str): Name of function being profiled.
		    current_worker_name (str): Name of current worker.
		    dst_worker_name (str): Name of the destination worker.
		
		Returns:
		    String representing profiling key
	**/
	static public function _build_rpc_profiling_key(exec_type:Dynamic, func_name:Dynamic, current_worker_name:Dynamic, dst_worker_name:Dynamic):Dynamic;
	/**
		_cleanup_python_rpc_handler() -> None
	**/
	static public function _cleanup_python_rpc_handler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _default_pickler : Dynamic;
	/**
		_delete_all_user_and_unforked_owner_rrefs(timeout: datetime.timedelta = datetime.timedelta(seconds=100)) -> None
	**/
	static public function _delete_all_user_and_unforked_owner_rrefs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_destroy_rref_context(arg0: bool) -> None
	**/
	static public function _destroy_rref_context(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _enable_rpc_profiler(should_profile:Dynamic, qualified_name:Dynamic, func:Dynamic, rpc_type:Dynamic, dst_worker_info:Dynamic):Dynamic;
	static public function _finalize_shutdown():Dynamic;
	static public function _gather_to_leader(sequence_id:Dynamic, worker_name:Dynamic, obj:Dynamic, ?worker_names:Dynamic):Dynamic;
	/**
		_get_current_rpc_agent() -> torch._C._distributed_rpc.RpcAgent
	**/
	static public function _get_current_rpc_agent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _ignore_rref_leak : Dynamic;
	static public function _init_rpc_states(agent:Dynamic):Dynamic;
	static public var _internal_rpc_pickler : Dynamic;
	/**
		_invoke_remote_builtin(arg0: torch._C._distributed_rpc.WorkerInfo, arg1: str, arg2: float, *args, **kwargs) -> torch._C._distributed_rpc.PyRRef
	**/
	static public function _invoke_remote_builtin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_invoke_remote_python_udf(arg0: torch._C._distributed_rpc.WorkerInfo, arg1: str, arg2: List[at::Tensor], arg3: float, arg4: bool) -> torch._C._distributed_rpc.PyRRef
	**/
	static public function _invoke_remote_python_udf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_invoke_remote_torchscript(arg0: str, arg1: str, arg2: float, arg3: bool, *args, **kwargs) -> torch._C._distributed_rpc.PyRRef
	**/
	static public function _invoke_remote_torchscript(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _invoke_rpc(to:Dynamic, func:Dynamic, rpc_type:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?rpc_timeout:Dynamic):Dynamic;
	/**
		_invoke_rpc_builtin(arg0: torch._C._distributed_rpc.WorkerInfo, arg1: str, arg2: float, *args, **kwargs) -> torch._C.Future
	**/
	static public function _invoke_rpc_builtin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_invoke_rpc_python_udf(arg0: torch._C._distributed_rpc.WorkerInfo, arg1: str, arg2: List[at::Tensor], arg3: float, arg4: bool) -> torch._C.Future
	**/
	static public function _invoke_rpc_python_udf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_invoke_rpc_torchscript(arg0: str, arg1: str, arg2: tuple, arg3: dict, arg4: float, arg5: bool) -> torch._C.Future
	**/
	static public function _invoke_rpc_torchscript(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_is_current_rpc_agent_set() -> bool
	**/
	static public function _is_current_rpc_agent_set(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _require_initialized(func:Dynamic):Dynamic;
	/**
		_reset_current_rpc_agent() -> None
	**/
	static public function _reset_current_rpc_agent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _rref_typeof_on_owner(rref:Dynamic, ?blocking:Dynamic):Dynamic;
	static public function _rref_typeof_on_user(rref:Dynamic, ?timeout:Dynamic, ?blocking:Dynamic):Dynamic;
	/**
		_set_and_start_rpc_agent(arg0: torch._C._distributed_rpc.RpcAgent) -> None
	**/
	static public function _set_and_start_rpc_agent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _thread_local_var : Dynamic;
	static public function _to_worker_info(to:Dynamic):Dynamic;
	/**
		rpc_pickler: (.internal._InternalRPCPickler) Overrides the default RPC pickler
	**/
	static public function _use_rpc_pickler(rpc_pickler:Dynamic):Dynamic;
	/**
		A context manager that collects all futures returned by ``rpc_async`` and
		waits them on the context manager's exit; relieving the user of needing
		to explicitly call wait.
		
		
		Example::
		    >>> # On worker 0:
		    >>> import torch
		    >>> import torch.distributed.rpc as rpc
		    >>> rpc.init_rpc("worker0", rank=0, world_size=2)
		    >>> with rpc._wait_all():
		    >>>    fut_1 = rpc.rpc_async(dst, torch.add, (torch.ones(2, 2), 1))
		    >>>    fut_2 = rpc.rpc_async(dst, torch.add, (torch.ones(2, 2), 1))
		    >>> #fut_1 and fut_2 are waited on
	**/
	static public function _wait_all():Dynamic;
	/**
		Block until all local and remote RPC processes reach this method and wait
		for all outstanding work to complete. Every RPC process must call this
		method before exit to perform a graceful shutdown. This should be used to
		terminate the RPC framework, and there is no guarantee that the RPC
		framework will work after this method returns.
	**/
	static public function _wait_all_workers():Dynamic;
	static public var docstring : Dynamic;
	/**
		get_rpc_timeout() -> float
		
		
		Retrieve the default timeout for all RPCs that was set during RPC initialization.
		The returned value will be in seconds.
		Returns:
		  ``float`` indicating the RPC timeout in seconds.
	**/
	static public function get_rpc_timeout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get :class:`~torch.distributed.rpc.WorkerInfo` of a given worker name.
		Use this :class:`~torch.distributed.rpc.WorkerInfo` to avoid passing an
		expensive string on every invocation.
		
		Args:
		    worker_name (str): the string name of a worker. If ``None``, return the
		                       the id of the current worker. (default ``None``)
		
		Returns:
		    :class:`~torch.distributed.rpc.WorkerInfo` instance for the given
		    ``worker_name`` or :class:`~torch.distributed.rpc.WorkerInfo` of the
		    current worker if ``worker_name`` is ``None``.
	**/
	static public function get_worker_info(?worker_name:Dynamic):Dynamic;
	static public var logger : Dynamic;
	/**
		to_here(self: torch._C._distributed_rpc.PyRRef, timeout: float = -1.0) -> object
		
		
		Blocking call that copies the value of the RRef from the owner
		to the local node and returns it. If the current node is the
		owner, returns a reference to the local value.
		
		Args:
		    timeout (float, optional): Timeout for ``to_here``. If
		        the call does not complete within this timeframe, an
		        exception indicating so will be raised. If this
		        argument is not provided, the default RPC timeout
		        (60s) will be used.
	**/
	static public function method(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function method_factory(method_name:Dynamic, docstring:Dynamic):Dynamic;
	static public var method_name : Dynamic;
	/**
		to_here(self: torch._C._distributed_rpc.PyRRef, timeout: float = -1.0) -> object
		
		
		Blocking call that copies the value of the RRef from the owner
		to the local node and returns it. If the current node is the
		owner, returns a reference to the local value.
		
		Args:
		    timeout (float, optional): Timeout for ``to_here``. If
		        the call does not complete within this timeframe, an
		        exception indicating so will be raised. If this
		        argument is not provided, the default RPC timeout
		        (60s) will be used.
	**/
	static public function new_method(self:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a remote call to run ``func`` on worker ``to`` and return an
		:class:`~torch.distributed.rpc.RRef` to the result value immediately.
		Worker ``to`` will be the owner of the returned
		:class:`~torch.distributed.rpc.RRef`, and the worker calling ``remote`` is
		a user. The owner manages the global reference count of its
		:class:`~torch.distributed.rpc.RRef`, and the owner
		:class:`~torch.distributed.rpc.RRef` is only destructed when globally there
		are no living references to it.
		
		Args:
		    to (str or WorkerInfo or int): name/rank/``WorkerInfo`` of the destination worker.
		    func (callable): a callable function, such as Python callables, builtin
		                     operators (e.g. :meth:`~torch.add`) and annotated
		                     TorchScript functions.
		    args (tuple): the argument tuple for the ``func`` invocation.
		    kwargs (dict): is a dictionary of keyword arguments for the ``func``
		                   invocation.
		
		    timeout (float, optional): timeout in seconds for this remote call. If the
		                               creation of this
		                               :class:`~torch.distributed.rpc.RRef` on worker
		                               ``to`` is not successfully processed on this
		                               worker within this timeout, then the next time
		                               there is an attempt to use the RRef (such as
		                               ``to_here()``), a timeout will be raised
		                               indicating this failure. A value of 0 indicates
		                               an infinite timeout, i.e. a timeout error will
		                               never be raised. If not provided, the default
		                               value set during initialization or with
		                               ``_set_rpc_timeout`` is used.
		
		Returns:
		    A user :class:`~torch.distributed.rpc.RRef` instance to the result
		    value. Use the blocking API :meth:`torch.distributed.rpc.RRef.to_here`
		    to retrieve the result value locally.
		
		.. warning ::
		    The ``remote`` API does not copy storages of argument tensors until
		    sending them over the wire, which could be done by a different thread
		    depending on the RPC backend type. The caller should make sure that the
		    contents of those tensors stay intact until the returned RRef is
		    confirmed by the owner, which can be checked using the
		    :meth:`torch.distributed.rpc.RRef.confirmed_by_owner` API.
		
		.. warning ::
		    Errors such as timeouts for the ``remote`` API are handled on a
		    best-effort basis. This means that when remote calls initiated by
		    ``remote`` fail, such as with a timeout error, we take a best-effort
		    approach to error handling. This means that errors are handled and set
		    on the resulting RRef on an asynchronous basis. If the RRef has not been
		    used by the application before this handling (such as ``to_here`` or
		    fork call), then future uses of the ``RRef`` will appropriately raise
		    errors. However, it is possible that the user application will use the
		    ``RRef`` before the errors are handled. In this case, errors may not be
		    raised as they have not yet been handled.
		
		Example::
		    Make sure that ``MASTER_ADDR`` and ``MASTER_PORT`` are set properly
		    on both workers. Refer to :meth:`~torch.distributed.init_process_group`
		    API for more details. For example,
		
		    >>> export MASTER_ADDR=localhost
		    >>> export MASTER_PORT=5678
		
		    Then run the following code in two different processes:
		
		    >>> # On worker 0:
		    >>> import torch
		    >>> import torch.distributed.rpc as rpc
		    >>> rpc.init_rpc("worker0", rank=0, world_size=2)
		    >>> rref1 = rpc.remote("worker1", torch.add, args=(torch.ones(2), 3))
		    >>> rref2 = rpc.remote("worker1", torch.add, args=(torch.ones(2), 1))
		    >>> x = rref1.to_here() + rref2.to_here()
		    >>> rpc.shutdown()
		
		    >>> # On worker 1:
		    >>> import torch.distributed.rpc as rpc
		    >>> rpc.init_rpc("worker1", rank=1, world_size=2)
		    >>> rpc.shutdown()
		
		    Below is an example of running a TorchScript function using RPC.
		
		    >>> # On both workers:
		    >>> @torch.jit.script
		    >>> def my_script_add(t1, t2):
		    >>>    return torch.add(t1, t2)
		
		    >>> # On worker 0:
		    >>> import torch.distributed.rpc as rpc
		    >>> rpc.init_rpc("worker0", rank=0, world_size=2)
		    >>> rref = rpc.remote("worker1", my_script_add, args=(torch.ones(2), 3))
		    >>> rref.to_here()
		    >>> rpc.shutdown()
		
		    >>> # On worker 1:
		    >>> import torch.distributed.rpc as rpc
		    >>> rpc.init_rpc("worker1", rank=1, world_size=2)
		    >>> rpc.shutdown()
	**/
	static public function remote(to:Dynamic, func:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		Make a non-blocking RPC call to run function ``func`` on worker ``to``. RPC
		messages are sent and received in parallel to execution of Python code. This
		method is thread-safe. This method will immediately return a
		:class:`~torch.futures.Future` that can be awaited on.
		
		Args:
		    to (str or WorkerInfo or int): name/rank/``WorkerInfo`` of the destination worker.
		    func (callable): a callable function, such as Python callables, builtin
		                     operators (e.g. :meth:`~torch.add`) and annotated
		                     TorchScript functions.
		    args (tuple): the argument tuple for the ``func`` invocation.
		    kwargs (dict): is a dictionary of keyword arguments for the ``func``
		                   invocation.
		    timeout (float, optional): timeout in seconds to use for this RPC. If
		                               the RPC does not complete in this amount of
		                               time, an exception indicating it has
		                               timed out will be raised. A value of 0
		                               indicates an infinite timeout, i.e. a timeout
		                               error will never be raised. If not provided,
		                               the default value set during initialization
		                               or with ``_set_rpc_timeout`` is used.
		
		
		Returns:
		    Returns a :class:`~torch.futures.Future` object that can be waited
		    on. When completed, the return value of ``func`` on ``args`` and
		    ``kwargs`` can be retrieved from the :class:`~torch.futures.Future`
		    object.
		
		.. warning ::
		    Using GPU tensors as arguments or return values of ``func`` is not
		    supported since we don't support sending GPU tensors over the wire. You
		    need to explicitly copy GPU tensors to CPU before using them as
		    arguments or return values of ``func``.
		
		.. warning ::
		    The ``rpc_async`` API does not copy storages of argument tensors until
		    sending them over the wire, which could be done by a different thread
		    depending on the RPC backend type. The caller should make sure that the
		    contents of those tensors stay intact until the returned
		    :class:`~torch.futures.Future` completes.
		
		Example::
		    Make sure that ``MASTER_ADDR`` and ``MASTER_PORT`` are set properly
		    on both workers. Refer to :meth:`~torch.distributed.init_process_group`
		    API for more details. For example,
		
		    >>> export MASTER_ADDR=localhost
		    >>> export MASTER_PORT=5678
		
		    Then run the following code in two different processes:
		
		    >>> # On worker 0:
		    >>> import torch
		    >>> import torch.distributed.rpc as rpc
		    >>> rpc.init_rpc("worker0", rank=0, world_size=2)
		    >>> fut1 = rpc.rpc_async("worker1", torch.add, args=(torch.ones(2), 3))
		    >>> fut2 = rpc.rpc_async("worker1", min, args=(1, 2))
		    >>> result = fut1.wait() + fut2.wait()
		    >>> rpc.shutdown()
		
		    >>> # On worker 1:
		    >>> import torch.distributed.rpc as rpc
		    >>> rpc.init_rpc("worker1", rank=1, world_size=2)
		    >>> rpc.shutdown()
		
		    Below is an example of running a TorchScript function using RPC.
		
		    >>> # On both workers:
		    >>> @torch.jit.script
		    >>> def my_script_add(t1, t2):
		    >>>    return torch.add(t1, t2)
		
		    >>> # On worker 0:
		    >>> import torch.distributed.rpc as rpc
		    >>> rpc.init_rpc("worker0", rank=0, world_size=2)
		    >>> fut = rpc.rpc_async("worker1", my_script_add, args=(torch.ones(2), 3))
		    >>> ret = fut.wait()
		    >>> rpc.shutdown()
		
		    >>> # On worker 1:
		    >>> import torch.distributed.rpc as rpc
		    >>> rpc.init_rpc("worker1", rank=1, world_size=2)
		    >>> rpc.shutdown()
	**/
	static public function rpc_async(to:Dynamic, func:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		Make a blocking RPC call to run function ``func`` on worker ``to``. RPC
		messages are sent and received in parallel to execution of Python code. This
		method is thread-safe.
		
		Args:
		    to (str or WorkerInfo or int): name/rank/``WorkerInfo`` of the destination worker.
		    func (callable): a callable function, such as Python callables, builtin
		                     operators (e.g. :meth:`~torch.add`) and annotated
		                     TorchScript functions.
		    args (tuple): the argument tuple for the ``func`` invocation.
		    kwargs (dict): is a dictionary of keyword arguments for the ``func``
		                   invocation.
		    timeout (float, optional): timeout in seconds to use for this RPC. If
		                               the RPC does not complete in this amount of
		                               time, an exception indicating it has
		                               timed out will be raised. A value of 0
		                               indicates an infinite timeout, i.e. a timeout
		                               error will never be raised. If not provided,
		                               the default value set during initialization
		                               or with ``_set_rpc_timeout`` is used.
		
		Returns:
		    Returns the result of running ``func`` with ``args`` and ``kwargs``.
		
		Example::
		    Make sure that ``MASTER_ADDR`` and ``MASTER_PORT`` are set properly
		    on both workers. Refer to :meth:`~torch.distributed.init_process_group`
		    API for more details. For example,
		
		    >>> export MASTER_ADDR=localhost
		    >>> export MASTER_PORT=5678
		
		    Then run the following code in two different processes:
		
		    >>> # On worker 0:
		    >>> import torch
		    >>> import torch.distributed.rpc as rpc
		    >>> rpc.init_rpc("worker0", rank=0, world_size=2)
		    >>> ret = rpc.rpc_sync("worker1", torch.add, args=(torch.ones(2), 3))
		    >>> rpc.shutdown()
		
		    >>> # On worker 1:
		    >>> import torch.distributed.rpc as rpc
		    >>> rpc.init_rpc("worker1", rank=1, world_size=2)
		    >>> rpc.shutdown()
		
		    Below is an example of running a TorchScript function using RPC.
		
		    >>> # On both workers:
		    >>> @torch.jit.script
		    >>> def my_script_add(t1, t2):
		    >>>    return torch.add(t1, t2)
		
		    >>> # On worker 0:
		    >>> import torch.distributed.rpc as rpc
		    >>> rpc.init_rpc("worker0", rank=0, world_size=2)
		    >>> ret = rpc.rpc_sync("worker1", my_script_add, args=(torch.ones(2), 3))
		    >>> rpc.shutdown()
		
		    >>> # On worker 1:
		    >>> import torch.distributed.rpc as rpc
		    >>> rpc.init_rpc("worker1", rank=1, world_size=2)
		    >>> rpc.shutdown()
	**/
	static public function rpc_sync(to:Dynamic, func:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		Perform a shutdown of the RPC agent, and then destroy the RPC agent. This
		stops the local agent from accepting outstanding requests, and shuts
		down the RPC framework by terminating all RPC threads. If ``graceful=True``,
		this will block until all local and remote RPC processes reach this method
		and wait for all outstanding work to complete. Otherwise, if
		``graceful=False``, this is a local shutdown, and it does not wait for other
		RPC processes to reach this method.
		
		.. warning::
		    For :class:`~torch.futures.Future` objects returned by
		    :meth:`~torch.distributed.rpc.rpc_async`, ``future.wait()`` should not
		    be called after ``shutdown()``.
		
		Args:
		    graceful (bool): Whether to do a graceful shutdown or not. If True,
		                     this will 1) wait until there is no pending system
		                     messages for ``UserRRefs`` and delete them; 2) block
		                     until all local and remote RPC processes have reached
		                     this method and wait for all outstanding work to
		                     complete.
		
		Example::
		    Make sure that ``MASTER_ADDR`` and ``MASTER_PORT`` are set properly
		    on both workers. Refer to :meth:`~torch.distributed.init_process_group`
		    API for more details. For example,
		
		    >>> export MASTER_ADDR=localhost
		    >>> export MASTER_PORT=5678
		
		    Then run the following code in two different processes:
		
		    >>> # On worker 0:
		    >>> import torch
		    >>> import torch.distributed.rpc as rpc
		    >>> rpc.init_rpc("worker0", rank=0, world_size=2)
		    >>> # do some work
		    >>> result = rpc.rpc_sync("worker1", torch.add, args=(torch.ones(1), 1))
		    >>> # ready to shutdown
		    >>> rpc.shutdown()
		
		    >>> # On worker 1:
		    >>> import torch.distributed.rpc as rpc
		    >>> rpc.init_rpc("worker1", rank=1, world_size=2)
		    >>> # wait for worker 0 to finish work, and then shutdown.
		    >>> rpc.shutdown()
	**/
	static public function shutdown(?graceful:Dynamic):Dynamic;
}