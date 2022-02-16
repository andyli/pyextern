/* This file is generated, do not edit! */
package torch.distributed.rpc.options;
@:pythonImport("torch.distributed.rpc.options", "TensorPipeRpcBackendOptions") extern class TensorPipeRpcBackendOptions {
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
		__init__(self: torch._C._distributed_rpc._TensorPipeRpcBackendOptionsBase, num_worker_threads: int = 16, _transports: Optional[List[str]] = None, _channels: Optional[List[str]] = None, rpc_timeout: float = 60.0, init_method: str = 'env://', device_maps: Dict[str, Dict[at::Device, at::Device]] = {}, devices: List[at::Device] = []) -> None
	**/
	@:native("__init__")
	public function ___init__(?num_worker_threads:Dynamic, ?rpc_timeout:Dynamic, ?init_method:Dynamic, ?device_maps:Dynamic, ?devices:Dynamic, ?_transports:Dynamic, ?_channels:Dynamic):Dynamic;
	/**
		__init__(self: torch._C._distributed_rpc._TensorPipeRpcBackendOptionsBase, num_worker_threads: int = 16, _transports: Optional[List[str]] = None, _channels: Optional[List[str]] = None, rpc_timeout: float = 60.0, init_method: str = 'env://', device_maps: Dict[str, Dict[at::Device, at::Device]] = {}, devices: List[at::Device] = []) -> None
	**/
	public function new(?num_worker_threads:Dynamic, ?rpc_timeout:Dynamic, ?init_method:Dynamic, ?device_maps:Dynamic, ?devices:Dynamic, ?_transports:Dynamic, ?_channels:Dynamic):Void;
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
		_set_device_map(self: torch._C._distributed_rpc._TensorPipeRpcBackendOptionsBase, arg0: str, arg1: Dict[at::Device, at::Device]) -> None
	**/
	public function _set_device_map(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The device map locations.
	**/
	public var device_maps : Dynamic;
	/**
		All devices used by the local agent.
	**/
	public var devices : Dynamic;
	/**
		URL specifying how to initialize the process group.
		Default is ``env://``
	**/
	public var init_method : Dynamic;
	/**
		The number of threads in the thread-pool used by
		:class:`~torch.distributed.rpc.TensorPipeAgent` to execute
		requests.
	**/
	public var num_worker_threads : Dynamic;
	/**
		A float indicating the timeout to use for all
		RPCs. If an RPC does not complete in this timeframe, it will
		complete with an exception indicating that it has timed out.
	**/
	public var rpc_timeout : Dynamic;
	/**
		Set device mapping between each RPC caller and callee pair. This
		function can be called multiple times to incrementally add
		device placement configurations.
		
		Args:
		    worker_name (str): Callee name.
		    device_map (Dict of int, str, or torch.device): Device placement
		        mappings from this worker to the callee. This map must be
		        invertible.
		
		Example::
		    >>> # both workers
		    >>> def add(x, y):
		    >>>     print(x)  # tensor([1., 1.], device='cuda:1')
		    >>>     return x + y, (x + y).to(2)
		    >>>
		    >>> # on worker 0
		    >>> options = TensorPipeRpcBackendOptions(
		    >>>     num_worker_threads=8,
		    >>>     device_maps={"worker1": {0: 1}}
		    >>>     # maps worker0's cuda:0 to worker1's cuda:1
		    >>> )
		    >>> options.set_device_map("worker1", {1: 2})
		    >>> # maps worker0's cuda:1 to worker1's cuda:2
		    >>>
		    >>> rpc.init_rpc(
		    >>>     "worker0",
		    >>>     rank=0,
		    >>>     world_size=2,
		    >>>     backend=rpc.BackendType.TENSORPIPE,
		    >>>     rpc_backend_options=options
		    >>> )
		    >>>
		    >>> x = torch.ones(2)
		    >>> rets = rpc.rpc_sync("worker1", add, args=(x.to(0), 1))
		    >>> # The first argument will be moved to cuda:1 on worker1. When
		    >>> # sending the return value back, it will follow the invert of
		    >>> # the device map, and hence will be moved back to cuda:0 and
		    >>> # cuda:1 on worker0
		    >>> print(rets[0])  # tensor([2., 2.], device='cuda:0')
		    >>> print(rets[1])  # tensor([2., 2.], device='cuda:1')
	**/
	public function set_device_map(to:Dynamic, device_map:Dynamic):Dynamic;
	/**
		Set local devices used by the TensorPipe RPC agent. When processing
		CUDA RPC requests, the TensorPipe RPC agent will properly synchronize
		CUDA streams for all devices in this ``List``.
		
		Args:
		    devices (List of int, str, or torch.device): local devices used by
		        the TensorPipe RPC agent.
	**/
	public function set_devices(devices:Dynamic):Dynamic;
}