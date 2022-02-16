/* This file is generated, do not edit! */
package torch.distributed.rpc.api;
@:pythonImport("torch.distributed.rpc.api", "RRef") extern class RRef {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __class_getitem__(params:Dynamic):Dynamic;
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
		__getstate__(self: torch._C._distributed_rpc.PyRRef) -> tuple
	**/
	public function __getstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		__init__(self: torch._C._distributed_rpc.PyRRef, value: object, type_hint: object = None) -> None
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__init__(self: torch._C._distributed_rpc.PyRRef, value: object, type_hint: object = None) -> None
	**/
	public function new(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var __orig_bases__ : Dynamic;
	static public var __parameters__ : Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		__repr__(self: torch._C._distributed_rpc.PyRRef) -> str
	**/
	public function __repr__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__setstate__(self: torch._C._distributed_rpc.PyRRef, arg0: tuple) -> None
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
	/**
		Return str(self).
	**/
	public function __str__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_deserialize(arg0: tuple) -> torch._C._distributed_rpc.PyRRef
	**/
	static public function _deserialize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_get_future(self: torch._C._distributed_rpc.PyRRef) -> torch._C.Future
		
		
		Returns the future that corresponds to the creation of this RRef
		on the remote node. This is for internal use cases such as profiling
		only.
	**/
	public function _get_future(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_get_profiling_future(self: torch._C._distributed_rpc.PyRRef) -> torch._C.Future
		
		
		Returns future that completes when the profiling event corresponding
		to the creation of this RRef on the remote node has been recorded.
	**/
	public function _get_profiling_future(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_get_type(self: torch._C._distributed_rpc.PyRRef, timeout: float = -1.0, blocking: bool = True) -> object
		
		
		If ``blocking=True``, returns the type of the data object
		referenced by this ``RRef``. On the owner, this is same as
		``type(rref.local_value())``. Otherwise, returns a future to
		this result. On a user, this will trigger an RPC to fetch the
		``type`` object from the owner. After this function is run
		once, the ``type`` object is cached by the ``RRef``, and
		subsequent invocations no longer trigger RPC. Note that this is
		true regardless of the ``blocking`` argument of subsequent
		calls.
		
		Args:
		  rref (torch.distributed.rpc.RRef): The RRef to get type of.
		  timeout (float, optional): Timeout, in seconds for
		        ``_get_type``. If the call does not complete within
		        this timeframe, an exception indicating so will be
		        raised. If this argument is not provided, the default
		        RPC timeout will be used.
		  blocking (bool, optional): Whether to synchronously wait on
		        the RPC triggered by the first call and return the
		        type. If ``False``, will return a future. Default is
		        ``True``.
	**/
	public function _get_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _is_protocol : Dynamic;
	/**
		_serialize(self: torch._C._distributed_rpc.PyRRef) -> tuple
	**/
	public function _serialize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_set_profiling_future(self: torch._C._distributed_rpc.PyRRef, arg0: torch._C.Future) -> None
		
		
		Set future that is completed when the profiling event corresponding
		to the creation of this RRef on the remote node has been recorded.
	**/
	public function _set_profiling_future(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		backward(self: torch._C._distributed_rpc.PyRRef, dist_autograd_ctx_id: int = -1, retain_graph: bool = False) -> None
		
		
		  Runs the backward pass using the RRef as the root of the
		  backward pass. If ``dist_autograd_ctx_id`` is provided,
		  we perform a distributed backward pass using the provided
		  ctx_id starting from the owner of the RRef. In this case,
		  :meth:`~torch.distributed.autograd.get_gradients` should be
		  used to retrieve the gradients. If ``dist_autograd_ctx_id``
		  is ``None``, it is assumed that this is a local autograd graph
		  and we only perform a local backward pass. In the local case,
		  the node calling this API has to be the owner of the RRef.
		  The value of the RRef is expected to be a scalar Tensor.
		
		Args:
		    dist_autograd_ctx_id (int, optional): The distributed
		        autograd context id for which we should retrieve the
		        gradients (default: -1).
		    retain_graph(bool, optional): If ``False``, the graph used to
		        compute the grad will be freed. Note that in nearly all
		        cases setting this option to ``True`` is not needed and
		        often can be worked around in a much more efficient way.
		        Usually, you need to set this to ``True`` to run backward
		        multiple times (default: False).
		
		Example::
		    >>> import torch.distributed.autograd as dist_autograd
		    >>> with dist_autograd.context() as context_id:
		    >>>     rref.backward(context_id)
	**/
	public function backward(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		confirmed_by_owner(self: torch._C._distributed_rpc.PyRRef) -> bool
		
		
		Returns whether this ``RRef`` has been confirmed by the owner.
		``OwnerRRef`` always returns true, while ``UserRRef`` only
		returns true when the owner knowns about this ``UserRRef``.
	**/
	public function confirmed_by_owner(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		is_owner(self: torch._C._distributed_rpc.PyRRef) -> bool
		
		
		Returns whether or not the current node is the owner of this
		``RRef``.
	**/
	public function is_owner(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		local_value(self: torch._C._distributed_rpc.PyRRef) -> object
		
		
		If the current node is the owner, returns a reference to the
		local value. Otherwise, throws an exception.
	**/
	public function local_value(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		owner(self: torch._C._distributed_rpc.PyRRef) -> torch._C._distributed_rpc.WorkerInfo
		
		
		Returns worker information of the node that owns this ``RRef``.
	**/
	public function owner(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		owner_name(self: torch._C._distributed_rpc.PyRRef) -> str
		
		
		Returns worker name of the node that owns this ``RRef``.
	**/
	public function owner_name(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		remote(self: torch._C._distributed_rpc.PyRRef, timeout: float = -1.0) -> object
		
		
		Create a helper proxy to easily launch a ``remote`` using
		the owner of the RRef as the destination to run functions on
		the object referenced by this RRef. More specifically,
		``rref.remote().func_name(*args, **kwargs)`` is the same as
		the following:
		
		>>> def run(rref, func_name, args, kwargs):
		>>>   return getattr(rref.local_value(), func_name)(*args, **kwargs)
		>>>
		>>> rpc.remote(rref.owner(), run, args=(rref, func_name, args, kwargs))
		
		Args:
		    timeout (float, optional): Timeout for ``rref.remote()``. If
		        the creation of this :class:`~torch.distributed.rpc.RRef`
		        is not successfully completed within the timeout, then the
		        next time there is an attempt to use the RRef
		        (such as ``to_here``), a timeout will be raised. If not
		        provided, the default RPC timeout will be used. Please see
		        ``rpc.remote()`` for specific timeout semantics for
		        :class:`~torch.distributed.rpc.RRef`.
		
		Example::
		    >>> from torch.distributed import rpc
		    >>> rref = rpc.remote("worker1", torch.add, args=(torch.zeros(2, 2), 1))
		    >>> rref.remote().size().to_here()  # returns torch.Size([2, 2])
		    >>> rref.remote().view(1, 4).to_here()  # returns tensor([[1., 1., 1., 1.]])
	**/
	public function remote(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		rpc_async(self: torch._C._distributed_rpc.PyRRef, timeout: float = -1.0) -> object
		
		
		Create a helper proxy to easily launch an ``rpc_async`` using
		the owner of the RRef as the destination to run functions on
		the object referenced by this RRef. More specifically,
		``rref.rpc_async().func_name(*args, **kwargs)`` is the same as
		the following:
		
		>>> def run(rref, func_name, args, kwargs):
		>>>   return getattr(rref.local_value(), func_name)(*args, **kwargs)
		>>>
		>>> rpc.rpc_async(rref.owner(), run, args=(rref, func_name, args, kwargs))
		
		Args:
		    timeout (float, optional): Timeout for ``rref.rpc_async()``.
		        If the call does not complete within this timeframe, an
		        exception indicating so will be raised. If this argument
		        is not provided, the default RPC timeout will be used.
		
		Example::
		    >>> from torch.distributed import rpc
		    >>> rref = rpc.remote("worker1", torch.add, args=(torch.zeros(2, 2), 1))
		    >>> rref.rpc_async().size().wait()  # returns torch.Size([2, 2])
		    >>> rref.rpc_async().view(1, 4).wait()  # returns tensor([[1., 1., 1., 1.]])
	**/
	public function rpc_async(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		rpc_sync(self: torch._C._distributed_rpc.PyRRef, timeout: float = -1.0) -> object
		
		
		Create a helper proxy to easily launch an ``rpc_sync`` using
		the owner of the RRef as the destination to run functions on
		the object referenced by this RRef. More specifically,
		``rref.rpc_sync().func_name(*args, **kwargs)`` is the same as
		the following:
		
		>>> def run(rref, func_name, args, kwargs):
		>>>   return getattr(rref.local_value(), func_name)(*args, **kwargs)
		>>>
		>>> rpc.rpc_sync(rref.owner(), run, args=(rref, func_name, args, kwargs))
		
		Args:
		    timeout (float, optional): Timeout for ``rref.rpc_sync()``.
		        If the call does not complete within this timeframe, an
		        exception indicating so will be raised. If this argument
		        is not provided, the default RPC timeout will be used.
		
		Example::
		    >>> from torch.distributed import rpc
		    >>> rref = rpc.remote("worker1", torch.add, args=(torch.zeros(2, 2), 1))
		    >>> rref.rpc_sync().size()  # returns torch.Size([2, 2])
		    >>> rref.rpc_sync().view(1, 4)  # returns tensor([[1., 1., 1., 1.]])
	**/
	public function rpc_sync(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function to_here(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}