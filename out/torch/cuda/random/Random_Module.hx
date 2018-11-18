/* This file is generated, do not edit! */
package torch.cuda.random;
@:pythonImport("torch.cuda.random") extern class Random_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _lazy_call(callable:Dynamic):Dynamic;
	static public function _lazy_init():Dynamic;
	/**
		Returns the number of GPUs available.
	**/
	static public function device_count():Dynamic;
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
		Returns the current random seed of the current GPU.
		
		.. warning::
		    This function eagerly initializes CUDA.
	**/
	static public function initial_seed():Dynamic;
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
}