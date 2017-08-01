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
	static public function _lazy_init():Dynamic;
	/**
		Returns the random number generator state as a ByteTensor.
	**/
	static public function get_rng_state():Dynamic;
	/**
		Returns the current random seed
	**/
	static public function initial_seed():Dynamic;
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
		Sets the random number generator state.
		
		Args:
		    new_state (torch.ByteTensor): The desired state
	**/
	static public function set_rng_state(new_state:Dynamic):Dynamic;
}