/* This file is generated, do not edit! */
package torch.cuda;
@:pythonImport("torch.cuda") extern class Cuda_Module {
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
	static public function _check_driver():Dynamic;
	static public var _cudart : Dynamic;
	static public function _dummy_type(name:Dynamic):Dynamic;
	static public function _free_mutex():Dynamic;
	static public function _host_allocator():Dynamic;
	static public var _in_bad_fork : Dynamic;
	static public var _initialized : Dynamic;
	static public function _lazy_init():Dynamic;
	static public function _load_cudart():Dynamic;
	static public var _original_pid : Dynamic;
	static public function _register_after_fork(obj:Dynamic, func:Dynamic):Dynamic;
	static public function _sleep(cycles:Dynamic):Dynamic;
	static public var _state_cdata : Dynamic;
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
		Returns the random number generator state as a ByteTensor.
	**/
	static public function get_rng_state():Dynamic;
	static public var has_half : Dynamic;
	static public var has_magma : Dynamic;
	/**
		Returns the current random seed
	**/
	static public function initial_seed():Dynamic;
	/**
		Returns a bool indicating if CUDA is currently available.
	**/
	static public function is_available():Dynamic;
	/**
		Sets the seed for generating random numbers.
		
		Args:
		    seed (int or long): The desired seed.
	**/
	static public function manual_seed(seed:Dynamic):Dynamic;
	/**
		Sets the seed for generating random numbers on all GPUs.
		
		Args:
		    seed (int or long): The desired seed.
	**/
	static public function manual_seed_all(seed:Dynamic):Dynamic;
	/**
		Sets the seed for generating random numbers to a random number.
	**/
	static public function seed():Dynamic;
	/**
		Sets the seed for generating random numbers to a random number on all GPUs.
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
		Sets the random number generator state.
		
		Args:
		    new_state (torch.ByteTensor): The desired state
	**/
	static public function set_rng_state(new_state:Dynamic):Dynamic;
	/**
		Context-manager that selects a given stream.
		
		All CUDA kernels queued within its context will be enqueued on a selected
		stream.
		
		Arguments:
		    stream (Stream): selected stream. This manager is a no-op if it's
		        ``None``.
	**/
	static public function stream(stream:Dynamic):Dynamic;
	/**
		Waits for all kernels in all streams on current device to complete.
	**/
	static public function synchronize():Dynamic;
}