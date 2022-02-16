/* This file is generated, do not edit! */
package torch.cuda.random;
@:pythonImport("torch.cuda.random") extern class Random_Module {
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _lazy_call(callable:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _lazy_init():Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		Returns the index of a currently selected device.
	**/
	static public function current_device():Dynamic;
	/**
		Returns the number of GPUs available.
	**/
	static public function device_count():Dynamic;
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
}