/* This file is generated, do not edit! */
package torch.cuda;
@:pythonImport("torch.cuda") extern class Cuda_Module {
	static public var PIPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _after_fork(arg:Dynamic):Dynamic;
	static public function _check_capability():Dynamic;
	static public function _check_driver():Dynamic;
	static public var _cudart : Dynamic;
	static public function _dummy_type(name:Dynamic):Dynamic;
	static public function _free_mutex():Dynamic;
	static public function _host_allocator():Dynamic;
	static public var _in_bad_fork : Dynamic;
	static public var _initialized : Dynamic;
	static public function _lazy_call(callable:Dynamic):Dynamic;
	static public function _lazy_init():Dynamic;
	static public var _lazy_new : Dynamic;
	static public function _load_cudart():Dynamic;
	static public var _original_pid : Dynamic;
	static public var _queued_calls : Dynamic;
	static public function _register_after_fork(obj:Dynamic, func:Dynamic):Dynamic;
	static public function _sleep(cycles:Dynamic):Dynamic;
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
		Returns a currently selected :class:`Stream`.
	**/
	static public function current_stream():Dynamic;
	/**
		Returns the number of GPUs available.
	**/
	static public function device_count():Dynamic;
	/**
		Releases all unoccupied cached memory currently held by the caching
		allocator so that those can be used in other GPU application and visible in
		`nvidia-smi`.
		
		.. note::
		    :meth:`~torch.cuda.empty_cache` doesn't increase the amount of GPU
		    memory available for PyTorch. See :ref:`cuda-memory-management` for
		    more details about GPU memory management.
	**/
	static public function empty_cache():Dynamic;
	static public function find_cuda_windows_lib():Dynamic;
	/**
		Gets the cuda capability of a device.
		
		Arguments:
		    device (int): device for which to return the name. This function is a
		        no-op if this argument is negative.
		Returns:
		    tuple(int, int): the major and minor cuda capability of the device
	**/
	static public function get_device_capability(device:Dynamic):Dynamic;
	/**
		Gets the name of a device.
		
		Arguments:
		    device (int): device for which to return the name. This function is a
		        no-op if this argument is negative.
	**/
	static public function get_device_name(device:Dynamic):Dynamic;
	static public function get_device_properties(device:Dynamic):Dynamic;
	/**
		Returns the random number generator state of the current
		GPU as a ByteTensor.
		
		Args:
		    device (int, optional): The device to return the RNG state of.
		        Default: -1 (i.e., use the current device).
		
		.. warning::
		    This function eagerly initializes CUDA.
	**/
	static public function get_rng_state(?device:Dynamic):Dynamic;
	/**
		Returns a tuple of ByteTensor representing the random number states of all devices.
	**/
	static public function get_rng_state_all():Dynamic;
	/**
		Initialize PyTorch's CUDA state.  You may need to call
		this explicitly if you are interacting with PyTorch via
		its C API, as Python bindings for CUDA functionality will not
		be until this initialization takes place.  Ordinary users
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
		Returns a bool indicating if CUDA is currently available.
	**/
	static public function is_available():Dynamic;
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
		Returns the maximum GPU memory usage by tensors in bytes for a given
		device.
		
		Arguments:
		    device (int, optional): selected device. Returns statistic for the
		                            current device, given by
		                            :meth:`~torch.cuda.current_device`, if
		                            :attr:`device` is ``None`` (default).
		
		.. note::
		    See :ref:`cuda-memory-management` for more details about GPU memory
		    management.
	**/
	static public function max_memory_allocated(?device:Dynamic):Dynamic;
	/**
		Returns the maximum GPU memory managed by the caching allocator in bytes
		for a given device.
		
		Arguments:
		    device (int, optional): selected device. Returns statistic for the
		                            current device, given by
		                            :meth:`~torch.cuda.current_device`, if
		                            :attr:`device` is ``None`` (default).
		
		.. note::
		    See :ref:`cuda-memory-management` for more details about GPU memory
		    management.
	**/
	static public function max_memory_cached(?device:Dynamic):Dynamic;
	/**
		Returns the current GPU memory usage by tensors in bytes for a given
		device.
		
		Arguments:
		    device (int, optional): selected device. Returns statistic for the
		                            current device, given by
		                            :meth:`~torch.cuda.current_device`, if
		                            :attr:`device` is ``None`` (default).
		
		.. note::
		    This is likely less than the amount shown in `nvidia-smi` since some
		    unused memory can be held by the caching allocator and some context
		    needs to be created on GPU. See :ref:`cuda-memory-management` for more
		    details about GPU memory management.
	**/
	static public function memory_allocated(?device:Dynamic):Dynamic;
	/**
		Returns the current GPU memory managed by the caching allocator in bytes
		for a given device.
		
		Arguments:
		    device (int, optional): selected device. Returns statistic for the
		                            current device, given by
		                            :meth:`~torch.cuda.current_device`, if
		                            :attr:`device` is ``None`` (default).
		
		.. note::
		    See :ref:`cuda-memory-management` for more details about GPU memory
		    management.
	**/
	static public function memory_cached(?device:Dynamic):Dynamic;
	static public function raise_from(value:Dynamic, from_value:Dynamic):Dynamic;
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
		
		Arguments:
		    device (int): selected device. This function is a no-op if this
		        argument is negative.
	**/
	static public function set_device(device:Dynamic):Dynamic;
	/**
		Sets the random number generator state of the current GPU.
		
		Args:
		    new_state (torch.ByteTensor): The desired state
	**/
	static public function set_rng_state(new_state:Dynamic, ?device:Dynamic):Dynamic;
	/**
		Sets the random number generator state of all devices.
		
		Args:
		    new_state (tuple of torch.ByteTensor): The desired state for each device
	**/
	static public function set_rng_state_all(new_states:Dynamic):Dynamic;
	static public var storage_name : Dynamic;
	/**
		Context-manager that selects a given stream.
		
		All CUDA kernels queued within its context will be enqueued on a selected
		stream.
		
		Arguments:
		    stream (Stream): selected stream. This manager is a no-op if it's
		        ``None``.
		
		.. note:: Streams are per-device, and this function changes the "current
		   stream" only for the currently selected device.  It is illegal to select
		   a stream that belongs to a different device.
	**/
	static public function stream(stream:Dynamic):Dynamic;
	/**
		Waits for all kernels in all streams on current device to complete.
	**/
	static public function synchronize():Dynamic;
	static public var t : Dynamic;
	static public var tensor_name : Dynamic;
}