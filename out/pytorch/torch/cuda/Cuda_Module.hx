/* This file is generated, do not edit! */
package torch.cuda;
@:pythonImport("torch.cuda") extern class Cuda_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Device(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_capability():Dynamic;
	static public function _check_cubins():Dynamic;
	static public var _cudart : Dynamic;
	static public function _device_t(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _dummy_type(name:Dynamic):Dynamic;
	/**
		Gets the device index from :attr:`device`, which can be a torch.device
		object, a Python integer, or ``None``.
		
		If :attr:`device` is a torch.device object, returns the device index if it
		is a CUDA device. Note that for a CUDA device without a specified index,
		i.e., ``torch.device('cuda')``, this will return the current default CUDA
		device if :attr:`optional` is ``True``. If :attr:`allow_cpu` is ``True``,
		CPU devices will be accepted and ``-1`` will be returned in this case.
		
		If :attr:`device` is a Python integer, it is returned as is.
		
		If :attr:`device` is ``None``, this will return the current default CUDA
		device if :attr:`optional` is ``True``.
	**/
	static public function _get_device_index(device:Dynamic, ?optional:Dynamic, ?allow_cpu:Dynamic):Dynamic;
	static public var _initialization_lock : Dynamic;
	static public var _initialized : Dynamic;
	static public function _is_in_bad_fork():Dynamic;
	static public function _lazy_call(callable:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _lazy_init():Dynamic;
	static public var _lazy_new : Dynamic;
	static public var _lazy_seed_tracker : Dynamic;
	static public var _queued_calls : Dynamic;
	static public function _sleep(cycles:Dynamic):Dynamic;
	static public var _tls : Dynamic;
	/**
		Performs a memory allocation using the CUDA memory allocator.
		
		Memory is allocated for a given device and a stream, this
		function is intended to be used for interoperability with other
		frameworks. Allocated memory is released through
		:func:`~torch.cuda.caching_allocator_delete`.
		
		Args:
		    size (int): number of bytes to be allocated.
		    device (torch.device or int, optional): selected device. If it is
		        ``None`` the default CUDA device is used.
		    stream (torch.cuda.Stream or int, optional): selected stream. If is ``None`` then
		        the default stream for the selected device is used.
		
		.. note::
		    See :ref:`cuda-memory-management` for more details about GPU memory
		    management.
	**/
	static public function caching_allocator_alloc(size:Dynamic, ?device:Dynamic, ?stream:Dynamic):Dynamic;
	/**
		Deletes memory allocated using the CUDA memory allocator.
		
		Memory allocated with :func:`~torch.cuda.caching_allocator_alloc`.
		is freed here. The associated device and stream are tracked inside
		the allocator.
		
		Args:
		    mem_ptr (int): memory address to be freed by the allocator.
		
		.. note::
		    See :ref:`cuda-memory-management` for more details about GPU memory
		    management.
	**/
	static public function caching_allocator_delete(mem_ptr:Dynamic):Dynamic;
	/**
		Checks if peer access between two devices is possible.
		    
	**/
	static public function can_device_access_peer(device:Dynamic, peer_device:Dynamic):Dynamic;
	static public function check_error(res:Dynamic):Dynamic;
	static public function cudart():Dynamic;
	/**
		Returns cublasHandle_t pointer to current cuBLAS handle
	**/
	static public function current_blas_handle():Dynamic;
	/**
		Returns the index of a currently selected device.
	**/
	static public function current_device():Dynamic;
	/**
		Returns the currently selected :class:`Stream` for a given device.
		
		Args:
		    device (torch.device or int, optional): selected device. Returns
		        the currently selected :class:`Stream` for the current device, given
		        by :func:`~torch.cuda.current_device`, if :attr:`device` is ``None``
		        (default).
	**/
	static public function current_stream(?device:Dynamic):Dynamic;
	static public var default_generators : Dynamic;
	/**
		Returns the default :class:`Stream` for a given device.
		
		Args:
		    device (torch.device or int, optional): selected device. Returns
		        the default :class:`Stream` for the current device, given by
		        :func:`~torch.cuda.current_device`, if :attr:`device` is ``None``
		        (default).
	**/
	static public function default_stream(?device:Dynamic):Dynamic;
	/**
		Returns the number of GPUs available.
	**/
	static public function device_count():Dynamic;
	/**
		Releases all unoccupied cached memory currently held by the caching
		allocator so that those can be used in other GPU application and visible in
		`nvidia-smi`.
		
		.. note::
		    :func:`~torch.cuda.empty_cache` doesn't increase the amount of GPU
		    memory available for PyTorch. However, it may help reduce fragmentation
		    of GPU memory in certain cases. See :ref:`cuda-memory-management` for
		    more details about GPU memory management.
	**/
	static public function empty_cache():Dynamic;
	/**
		Returns list CUDA architectures this library was compiled for.
	**/
	static public function get_arch_list():Dynamic;
	/**
		Gets the cuda capability of a device.
		
		Args:
		    device (torch.device or int, optional): device for which to return the
		        device capability. This function is a no-op if this argument is
		        a negative integer. It uses the current device, given by
		        :func:`~torch.cuda.current_device`, if :attr:`device` is ``None``
		        (default).
		
		Returns:
		    tuple(int, int): the major and minor cuda capability of the device
	**/
	static public function get_device_capability(?device:Dynamic):Dynamic;
	/**
		Gets the name of a device.
		
		Args:
		    device (torch.device or int, optional): device for which to return the
		        name. This function is a no-op if this argument is a negative
		        integer. It uses the current device, given by :func:`~torch.cuda.current_device`,
		        if :attr:`device` is ``None`` (default).
		
		Returns:
		    str: the name of the device
	**/
	static public function get_device_name(?device:Dynamic):Dynamic;
	/**
		Gets the properties of a device.
		
		Args:
		    device (torch.device or int or str): device for which to return the
		        properties of the device.
		
		Returns:
		    _CudaDeviceProperties: the properties of the device
	**/
	static public function get_device_properties(device:Dynamic):Dynamic;
	/**
		Returns NVCC gencode flags this library was compiled with.
	**/
	static public function get_gencode_flags():Dynamic;
	/**
		Returns the random number generator state of the specified GPU as a ByteTensor.
		
		Args:
		    device (torch.device or int, optional): The device to return the RNG state of.
		        Default: ``'cuda'`` (i.e., ``torch.device('cuda')``, the current CUDA device).
		
		.. warning::
		    This function eagerly initializes CUDA.
	**/
	static public function get_rng_state(?device:Dynamic):Dynamic;
	/**
		Returns a list of ByteTensor representing the random number states of all devices.
	**/
	static public function get_rng_state_all():Dynamic;
	/**
		Returns current value of debug mode for cuda synchronizing operations.
	**/
	static public function get_sync_debug_mode():Dynamic;
	/**
		Returns an opaque token representing the id of a graph memory pool.
		See :ref:`Graph memory management<graph-memory-management>`.
		
		.. warning::
		    This API is in beta and may change in future releases.
	**/
	static public function graph_pool_handle():Dynamic;
	static public var has_half : Dynamic;
	static public var has_magma : Dynamic;
	/**
		Initialize PyTorch's CUDA state.  You may need to call
		this explicitly if you are interacting with PyTorch via
		its C API, as Python bindings for CUDA functionality will not
		be available until this initialization takes place.  Ordinary users
		should not need this, as all of PyTorch's CUDA methods
		automatically initialize CUDA state on-demand.
		
		Does nothing if the CUDA state is already initialized.
	**/
	static public function init():Dynamic;
	/**
		Returns the current random seed of the current GPU.
		
		.. warning::
		    This function eagerly initializes CUDA.
	**/
	static public function initial_seed():Dynamic;
	/**
		Force collects GPU memory after it has been released by CUDA IPC.
		
		.. note::
		    Checks if any sent CUDA tensors could be cleaned from the memory. Force
		    closes shared memory file used for reference counting if there is no
		    active counters. Useful when the producer process stopped actively sending
		    tensors and want to release unused memory.
	**/
	static public function ipc_collect():Dynamic;
	/**
		Returns a bool indicating if CUDA is currently available.
	**/
	static public function is_available():Dynamic;
	/**
		Returns a bool indicating if the current CUDA device supports dtype bfloat16
	**/
	static public function is_bf16_supported():Dynamic;
	/**
		Returns whether PyTorch's CUDA state has been initialized.
	**/
	static public function is_initialized():Dynamic;
	/**
		Returns a human-readable printout of the running processes
		and their GPU memory use for a given device.
		
		This can be useful to display periodically during training, or when
		handling out-of-memory exceptions.
		
		Args:
		    device (torch.device or int, optional): selected device. Returns
		        printout for the current device, given by :func:`~torch.cuda.current_device`,
		        if :attr:`device` is ``None`` (default).
	**/
	static public function list_gpu_processes(?device:Dynamic):Dynamic;
	/**
		Accepts callables (functions or :class:`nn.Module<torch.nn.Module>`\ s)
		and returns graphed versions.
		
		Each graphed callable's forward pass runs its source callable's
		forward CUDA work as a CUDA graph inside a single autograd node.
		
		The graphed callable's forward pass also appends
		a backward node to the autograd graph. During backward, this node runs the
		callable's backward work as a CUDA graph.
		
		Therefore, each graphed callable should be a drop-in replacement for its source callable
		in an autograd-enabled training loop.
		
		See :ref:`Partial-network capture<partial-network-capture>` for detailed use and constraints.
		
		If you pass a tuple of several callables, their captures will use the same memory pool.
		See :ref:`Graph memory management<graph-memory-management>` for when this is appropriate.
		
		Arguments:
		    callables (torch.nn.Module or Python function, or tuple of these): Callable or callables to graph.
		        See :ref:`Graph memory management<graph-memory-management>` for when passing a tuple of callables
		        is appropriate.  If you pass a tuple of callables, their order in the tuple must be the same order
		        they'll run in the live workload.
		    sample_args (tuple of Tensors, or tuple of tuples of Tensors): Samples args for each callable.
		        If a single callable was passed, ``sample_args`` must be a single tuple of argument Tensors.
		        If a tuple of callables was passed, ``sample_args`` must be tuple of tuples of argument Tensors.
		
		.. note::
		    The ``requires_grad`` state of each Tensor in ``sample_args`` must match the state
		    that's expected for the corresponding real input in the training loop.
		
		.. warning::
		    This API is in beta and may change in future releases.
		
		.. warning::
		    ``sample_args`` for each callable must be a tuple of Tensors. Other types and keyword args
		    are not allowed.
		
		.. warning::
		    Returned callables do not support higher order differentiation (e.g., double backward).
		
		.. warning::
		    In any :class:`~torch.nn.Module` passed to :func:`~make_graphed_callables`, only parameters
		    may be trainable. Buffers must have ``requires_grad=False``.
		
		.. warning::
		    After you pass a :class:`torch.nn.Module` through :func:`~make_graphed_callables`,
		    you may not add or remove any of that Module's parameters or buffers.
		
		.. warning::
		    :class:`torch.nn.Module`\s passed to :func:`~torch.cuda.make_graphed_callables` must not have module hooks
		    registered on them at the time they are passed. However, registering hooks on modules *after* passing them
		    through :func:`~torch.cuda.make_graphed_callables` is allowed.
		
		.. warning::
		    When running a graphed callable, you must pass its arguments in the same order and format
		    they appeared in that callable's ``sample_args``.
		
		.. warning::
		    All Tensor outputs of graphed callables must require grad.
	**/
	static public function make_graphed_callables(callables:Dynamic, sample_args:Dynamic):Dynamic;
	/**
		Sets the seed for generating random numbers for the current GPU.
		It's safe to call this function if CUDA is not available; in that
		case, it is silently ignored.
		
		Args:
		    seed (int): The desired seed.
		
		.. warning::
		    If you are working with a multi-GPU model, this function is insufficient
		    to get determinism.  To seed all GPUs, use :func:`manual_seed_all`.
	**/
	static public function manual_seed(seed:Dynamic):Dynamic;
	/**
		Sets the seed for generating random numbers on all GPUs.
		It's safe to call this function if CUDA is not available; in that
		case, it is silently ignored.
		
		Args:
		    seed (int): The desired seed.
	**/
	static public function manual_seed_all(seed:Dynamic):Dynamic;
	/**
		Returns the maximum GPU memory occupied by tensors in bytes for a given
		device.
		
		By default, this returns the peak allocated memory since the beginning of
		this program. :func:`~torch.cuda.reset_peak_memory_stats` can be used to
		reset the starting point in tracking this metric. For example, these two
		functions can measure the peak allocated memory usage of each iteration in a
		training loop.
		
		Args:
		    device (torch.device or int, optional): selected device. Returns
		        statistic for the current device, given by :func:`~torch.cuda.current_device`,
		        if :attr:`device` is ``None`` (default).
		
		.. note::
		    See :ref:`cuda-memory-management` for more details about GPU memory
		    management.
	**/
	static public function max_memory_allocated(?device:Dynamic):Dynamic;
	/**
		Deprecated; see :func:`~torch.cuda.max_memory_reserved`.
	**/
	static public function max_memory_cached(?device:Dynamic):Dynamic;
	/**
		Returns the maximum GPU memory managed by the caching allocator in bytes
		for a given device.
		
		By default, this returns the peak cached memory since the beginning of this
		program. :func:`~torch.cuda.reset_peak_memory_stats` can be used to reset
		the starting point in tracking this metric. For example, these two functions
		can measure the peak cached memory amount of each iteration in a training
		loop.
		
		Args:
		    device (torch.device or int, optional): selected device. Returns
		        statistic for the current device, given by :func:`~torch.cuda.current_device`,
		        if :attr:`device` is ``None`` (default).
		
		.. note::
		    See :ref:`cuda-memory-management` for more details about GPU memory
		    management.
	**/
	static public function max_memory_reserved(?device:Dynamic):Dynamic;
	/**
		Returns the global free and total GPU memory occupied for a given
		device using cudaMemGetInfo.
		
		Args:
		    device (torch.device or int, optional): selected device. Returns
		        statistic for the current device, given by :func:`~torch.cuda.current_device`,
		        if :attr:`device` is ``None`` (default).
		
		.. note::
		    See :ref:`cuda-memory-management` for more
		    details about GPU memory management.
	**/
	static public function mem_get_info(?device:Dynamic):Dynamic;
	/**
		Returns the current GPU memory occupied by tensors in bytes for a given
		device.
		
		Args:
		    device (torch.device or int, optional): selected device. Returns
		        statistic for the current device, given by :func:`~torch.cuda.current_device`,
		        if :attr:`device` is ``None`` (default).
		
		.. note::
		    This is likely less than the amount shown in `nvidia-smi` since some
		    unused memory can be held by the caching allocator and some context
		    needs to be created on GPU. See :ref:`cuda-memory-management` for more
		    details about GPU memory management.
	**/
	static public function memory_allocated(?device:Dynamic):Dynamic;
	/**
		Deprecated; see :func:`~torch.cuda.memory_reserved`.
	**/
	static public function memory_cached(?device:Dynamic):Dynamic;
	/**
		Returns the current GPU memory managed by the caching allocator in bytes
		for a given device.
		
		Args:
		    device (torch.device or int, optional): selected device. Returns
		        statistic for the current device, given by :func:`~torch.cuda.current_device`,
		        if :attr:`device` is ``None`` (default).
		
		.. note::
		    See :ref:`cuda-memory-management` for more details about GPU memory
		    management.
	**/
	static public function memory_reserved(?device:Dynamic):Dynamic;
	/**
		Returns a snapshot of the CUDA memory allocator state across all devices.
		
		Interpreting the output of this function requires familiarity with the
		memory allocator internals.
		
		.. note::
		    See :ref:`cuda-memory-management` for more details about GPU memory
		    management.
	**/
	static public function memory_snapshot():Dynamic;
	/**
		Returns a dictionary of CUDA memory allocator statistics for a
		given device.
		
		The return value of this function is a dictionary of statistics, each of
		which is a non-negative integer.
		
		Core statistics:
		
		- ``"allocated.{all,large_pool,small_pool}.{current,peak,allocated,freed}"``:
		  number of allocation requests received by the memory allocator.
		- ``"allocated_bytes.{all,large_pool,small_pool}.{current,peak,allocated,freed}"``:
		  amount of allocated memory.
		- ``"segment.{all,large_pool,small_pool}.{current,peak,allocated,freed}"``:
		  number of reserved segments from ``cudaMalloc()``.
		- ``"reserved_bytes.{all,large_pool,small_pool}.{current,peak,allocated,freed}"``:
		  amount of reserved memory.
		- ``"active.{all,large_pool,small_pool}.{current,peak,allocated,freed}"``:
		  number of active memory blocks.
		- ``"active_bytes.{all,large_pool,small_pool}.{current,peak,allocated,freed}"``:
		  amount of active memory.
		- ``"inactive_split.{all,large_pool,small_pool}.{current,peak,allocated,freed}"``:
		  number of inactive, non-releasable memory blocks.
		- ``"inactive_split_bytes.{all,large_pool,small_pool}.{current,peak,allocated,freed}"``:
		  amount of inactive, non-releasable memory.
		
		For these core statistics, values are broken down as follows.
		
		Pool type:
		
		- ``all``: combined statistics across all memory pools.
		- ``large_pool``: statistics for the large allocation pool
		  (as of October 2019, for size >= 1MB allocations).
		- ``small_pool``: statistics for the small allocation pool
		  (as of October 2019, for size < 1MB allocations).
		
		Metric type:
		
		- ``current``: current value of this metric.
		- ``peak``: maximum value of this metric.
		- ``allocated``: historical total increase in this metric.
		- ``freed``: historical total decrease in this metric.
		
		In addition to the core statistics, we also provide some simple event
		counters:
		
		- ``"num_alloc_retries"``: number of failed ``cudaMalloc`` calls that
		  result in a cache flush and retry.
		- ``"num_ooms"``: number of out-of-memory errors thrown.
		
		The caching allocator can be configured via ENV to not split blocks larger than a
		defined size (see Memory Management section of the Cuda Semantics documentation).
		This helps avoid memory framentation but may have a performance
		penalty. Additional outputs to assist with tuning and evaluating impact:
		
		- ``"max_split_size"``: blocks above this size will not be split.
		- ``"oversize_allocations.{current,peak,allocated,freed}"``:
		  number of over-size allocation requests received by the memory allocator.
		- ``"oversize_segments.{current,peak,allocated,freed}"``:
		  number of over-size reserved segments from ``cudaMalloc()``.
		
		Args:
		    device (torch.device or int, optional): selected device. Returns
		        statistics for the current device, given by :func:`~torch.cuda.current_device`,
		        if :attr:`device` is ``None`` (default).
		
		.. note::
		    See :ref:`cuda-memory-management` for more details about GPU memory
		    management.
	**/
	static public function memory_stats(?device:Dynamic):Dynamic;
	/**
		Returns the result of :func:`~torch.cuda.memory_stats` as a nested dictionary.
	**/
	static public function memory_stats_as_nested_dict(?device:Dynamic):Dynamic;
	/**
		Returns a human-readable printout of the current memory allocator
		statistics for a given device.
		
		This can be useful to display periodically during training, or when
		handling out-of-memory exceptions.
		
		Args:
		    device (torch.device or int, optional): selected device. Returns
		        printout for the current device, given by :func:`~torch.cuda.current_device`,
		        if :attr:`device` is ``None`` (default).
		    abbreviated (bool, optional): whether to return an abbreviated summary
		        (default: False).
		
		.. note::
		    See :ref:`cuda-memory-management` for more details about GPU memory
		    management.
	**/
	static public function memory_summary(?device:Dynamic, ?abbreviated:Dynamic):Dynamic;
	/**
		Resets the "accumulated" (historical) stats tracked by the CUDA memory allocator.
		
		See :func:`~torch.cuda.memory_stats` for details. Accumulated stats correspond to
		the `"allocated"` and `"freed"` keys in each individual stat dict, as well as
		`"num_alloc_retries"` and `"num_ooms"`.
		
		Args:
		    device (torch.device or int, optional): selected device. Returns
		        statistic for the current device, given by :func:`~torch.cuda.current_device`,
		        if :attr:`device` is ``None`` (default).
		
		.. note::
		    See :ref:`cuda-memory-management` for more details about GPU memory
		    management.
	**/
	static public function reset_accumulated_memory_stats(?device:Dynamic):Dynamic;
	/**
		Resets the starting point in tracking maximum GPU memory occupied by
		tensors for a given device.
		
		See :func:`~torch.cuda.max_memory_allocated` for details.
		
		Args:
		    device (torch.device or int, optional): selected device. Returns
		        statistic for the current device, given by :func:`~torch.cuda.current_device`,
		        if :attr:`device` is ``None`` (default).
		
		.. warning::
		    This function now calls :func:`~torch.cuda.reset_peak_memory_stats`, which resets
		    /all/ peak memory stats.
		
		.. note::
		    See :ref:`cuda-memory-management` for more details about GPU memory
		    management.
	**/
	static public function reset_max_memory_allocated(?device:Dynamic):Dynamic;
	/**
		Resets the starting point in tracking maximum GPU memory managed by the
		caching allocator for a given device.
		
		See :func:`~torch.cuda.max_memory_cached` for details.
		
		Args:
		    device (torch.device or int, optional): selected device. Returns
		        statistic for the current device, given by :func:`~torch.cuda.current_device`,
		        if :attr:`device` is ``None`` (default).
		
		.. warning::
		    This function now calls :func:`~torch.cuda.reset_peak_memory_stats`, which resets
		    /all/ peak memory stats.
		
		.. note::
		    See :ref:`cuda-memory-management` for more details about GPU memory
		    management.
	**/
	static public function reset_max_memory_cached(?device:Dynamic):Dynamic;
	/**
		Resets the "peak" stats tracked by the CUDA memory allocator.
		
		See :func:`~torch.cuda.memory_stats` for details. Peak stats correspond to the
		`"peak"` key in each individual stat dict.
		
		Args:
		    device (torch.device or int, optional): selected device. Returns
		        statistic for the current device, given by :func:`~torch.cuda.current_device`,
		        if :attr:`device` is ``None`` (default).
		
		.. note::
		    See :ref:`cuda-memory-management` for more details about GPU memory
		    management.
	**/
	static public function reset_peak_memory_stats(?device:Dynamic):Dynamic;
	/**
		Sets the seed for generating random numbers to a random number for the current GPU.
		It's safe to call this function if CUDA is not available; in that
		case, it is silently ignored.
		
		.. warning::
		    If you are working with a multi-GPU model, this function will only initialize
		    the seed on one GPU.  To initialize all GPUs, use :func:`seed_all`.
	**/
	static public function seed():Dynamic;
	/**
		Sets the seed for generating random numbers to a random number on all GPUs.
		It's safe to call this function if CUDA is not available; in that
		case, it is silently ignored.
	**/
	static public function seed_all():Dynamic;
	/**
		Sets the current device.
		
		Usage of this function is discouraged in favor of :any:`device`. In most
		cases it's better to use ``CUDA_VISIBLE_DEVICES`` environmental variable.
		
		Args:
		    device (torch.device or int): selected device. This function is a no-op
		        if this argument is negative.
	**/
	static public function set_device(device:Dynamic):Dynamic;
	/**
		Set memory fraction for a process.
		The fraction is used to limit an caching allocator to allocated memory on a CUDA device.
		The allowed value equals the total visible memory multiplied fraction.
		If trying to allocate more than the allowed value in a process, will raise an out of
		memory error in allocator.
		
		Args:
		    fraction(float): Range: 0~1. Allowed memory equals total_memory * fraction.
		    device (torch.device or int, optional): selected device. If it is
		        ``None`` the default CUDA device is used.
		.. note::
		    In general, the total available free memory is less than the total capacity.
	**/
	static public function set_per_process_memory_fraction(fraction:Dynamic, ?device:Dynamic):Dynamic;
	/**
		Sets the random number generator state of the specified GPU.
		
		Args:
		    new_state (torch.ByteTensor): The desired state
		    device (torch.device or int, optional): The device to set the RNG state.
		        Default: ``'cuda'`` (i.e., ``torch.device('cuda')``, the current CUDA device).
	**/
	static public function set_rng_state(new_state:Dynamic, ?device:Dynamic):Dynamic;
	/**
		Sets the random number generator state of all devices.
		
		Args:
		    new_states (Iterable of torch.ByteTensor): The desired state for each device
	**/
	static public function set_rng_state_all(new_states:Dynamic):Dynamic;
	/**
		Sets the current stream.This is a wrapper API to set the stream.
		    Usage of this function is discouraged in favor of the ``stream``
		    context manager.
		
		Args:
		    stream (Stream): selected stream. This function is a no-op
		        if this argument is ``None``.
	**/
	static public function set_stream(stream:Dynamic):Dynamic;
	/**
		Sets the debug mode for cuda synchronizing operations.
		
		Args:
		    debug_mode(str or int): if "default" or 0, don't error or warn on synchronizing operations,
		        if "warn" or 1, warn on synchronizing operations, if "error" or 2, error out synchronizing operations.
		
		Warning:
		    This is an experimental feature, and not all synchronizing operations will trigger warning or error. In
		    particular, operations in torch.distributed and torch.sparse namespaces are not covered yet.
	**/
	static public function set_sync_debug_mode(debug_mode:Dynamic):Dynamic;
	static public var storage_name : Dynamic;
	/**
		Wrapper around the Context-manager StreamContext that
		selects a given stream.
		
		Arguments:
		    stream (Stream): selected stream. This manager is a no-op if it's
		        ``None``.
		..Note:: In eager mode stream is of type Stream class while in JIT it is
		an object of the custom class ``torch.classes.cuda.Stream``.
	**/
	static public function stream(stream:Dynamic):Dynamic;
	/**
		Waits for all kernels in all streams on a CUDA device to complete.
		
		Args:
		    device (torch.device or int, optional): device for which to synchronize.
		        It uses the current device, given by :func:`~torch.cuda.current_device`,
		        if :attr:`device` is ``None`` (default).
	**/
	static public function synchronize(?device:Dynamic):Dynamic;
	static public var t : Dynamic;
	static public var tensor_name : Dynamic;
}