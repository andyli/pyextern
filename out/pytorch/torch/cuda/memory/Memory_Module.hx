/* This file is generated, do not edit! */
package torch.cuda.memory;
@:pythonImport("torch.cuda.memory") extern class Memory_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Device(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _free_mutex():Dynamic;
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
	static public function _host_allocator():Dynamic;
	static public function _lazy_init():Dynamic;
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
}