/* This file is generated, do not edit! */
package torch.random;
@:pythonImport("torch.random") extern class Random_Module {
	static public function Generator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _fork_rng_warned_already : Dynamic;
	static public var default_generator : Dynamic;
	/**
		Forks the RNG, so that when you return, the RNG is reset
		to the state that it was previously in.
		
		Args:
		    devices (iterable of CUDA IDs): CUDA devices for which to fork
		        the RNG.  CPU RNG state is always forked.  By default, :meth:`fork_rng` operates
		        on all devices, but will emit a warning if your machine has a lot
		        of devices, since this function will run very slowly in that case.
		        If you explicitly specify devices, this warning will be suppressed
		    enabled (bool): if ``False``, the RNG is not forked.  This is a convenience
		        argument for easily disabling the context manager without having
		        to delete it and unindent your Python code under it.
	**/
	static public function fork_rng(?devices:Dynamic, ?enabled:Dynamic, ?_caller:Dynamic, ?_devices_kw:Dynamic):Dynamic;
	/**
		Returns the random number generator state as a `torch.ByteTensor`.
	**/
	static public function get_rng_state():Dynamic;
	/**
		Returns the initial seed for generating random numbers as a
		Python `long`.
	**/
	static public function initial_seed():Dynamic;
	/**
		Sets the seed for generating random numbers. Returns a
		`torch.Generator` object.
		
		Args:
		    seed (int): The desired seed. Value must be within the inclusive range
		        `[-0x8000_0000_0000_0000, 0xffff_ffff_ffff_ffff]`. Otherwise, a RuntimeError
		        is raised. Negative inputs are remapped to positive values with the formula
		        `0xffff_ffff_ffff_ffff + seed`.
	**/
	static public function manual_seed(seed:Dynamic):Dynamic;
	/**
		Sets the seed for generating random numbers to a non-deterministic
		random number. Returns a 64 bit number used to seed the RNG.
	**/
	static public function seed():Dynamic;
	/**
		Sets the random number generator state.
		
		.. note: This function only works for CPU. For CUDA, please use
		         torch.manual_seed(seed), which works for both CPU and CUDA.
		
		Args:
		    new_state (torch.ByteTensor): The desired state
	**/
	static public function set_rng_state(new_state:Dynamic):Dynamic;
}