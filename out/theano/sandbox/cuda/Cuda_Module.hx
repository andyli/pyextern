/* This file is generated, do not edit! */
package theano.sandbox.cuda;
@:pythonImport("theano.sandbox.cuda") extern class Cuda_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	static public var _logger_name : Dynamic;
	static public var absolute_import : Dynamic;
	static public var config : Dynamic;
	static public var cuda_available : Dynamic;
	static public var cuda_enabled : Dynamic;
	static public var cuda_initialization_error_message : Dynamic;
	static public var cuda_ndarray_loc : Dynamic;
	static public var cuda_ndarray_so : Dynamic;
	static public var cuda_path : Dynamic;
	static public var cuda_warning_is_displayed : Dynamic;
	static public var division : Dynamic;
	static public function dnn_available():Dynamic;
	/**
		Return the current cuDNN version we compile with.
		
		This returns a tuple with the header version and the library
		version we link with. For older cudnn version without version
		information, we return -1.
	**/
	static public function dnn_version():Dynamic;
	/**
		SharedVariable Constructor for CudaNdarrayType from numpy.ndarray or
		CudaNdarray.
	**/
	static public function float32_shared_constructor(value:Dynamic, ?name:Dynamic, ?strict:Dynamic, ?allow_downcast:Dynamic, ?borrow:Dynamic, ?broadcastable:Dynamic, ?target:Dynamic):Dynamic;
	/**
		Return the platform-dependent extension for compiled modules.
	**/
	static public function get_lib_extension():Dynamic;
	/**
		Obtain lock on compilation directory.
		
		Parameters
		----------
		kw
		    Additional arguments to be forwarded to the `lock` function when
		    acquiring the lock.
		
		Notes
		-----
		We can lock only on 1 directory at a time.
	**/
	static public function get_lock(?lock_dir:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function get_unbound_function(unbound:Dynamic):Dynamic;
	static public var gpu_optimizer : Dynamic;
	static public var gpu_seqopt : Dynamic;
	/**
		Set the default shared type for float32 tensor to CudaNdarrayType.
		
		This function is intended to be called from use(gpu_index), not directly.
	**/
	static public function handle_shared_float32(tf:Dynamic):Dynamic;
	static public var libcuda_ndarray_so : Dynamic;
	static public var optdb : Dynamic;
	static public var print_function : Dynamic;
	static public function register_inplace(?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function register_opt(?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Register a transfer function for alternative targets.
		
		Parameters
		----------
		fn : callable
	**/
	static public function register_transfer(fn:Dynamic):Dynamic;
	/**
		Release lock on compilation directory.
	**/
	static public function release_lock():Dynamic;
	/**
		Function used to disable cuda.
		
		A warning is displayed, so that the user is aware that cuda-based code is
		not going to work.
		Note that there is no point calling this function from outside of
		`cuda.__init__`, since it has no effect once the module is loaded.
	**/
	static public function set_cuda_disabled():Dynamic;
	/**
		Load the cuda_ndarray module if present and up to date.
		Return True if loaded correctly, otherwise return False.
	**/
	static public function try_import():Dynamic;
	/**
		This undo what was done by the call to.
		
		use('gpu[0-9]', default_to_move_computation_to_gpu=True,
		    move_shared_float32_to_gpu=True,
		    enable_cuda=True)
		
		This is used in Pylearn2 tests to enable/disable the GPU when needed.
		
		After this call, the rest of Theano think the GPU shouldn't be used by
		default.
	**/
	static public function unuse():Dynamic;
	/**
		Error and warning about CUDA should be displayed only when this
		function is called. We need to be able to load this module only
		to check if it is available!
		
		Parameters
		----------
		device : string
		    "cpu", "gpu", "gpuN" (N is the device number to use).
		force
		    Will always raise an exception if we can't use the gpu.
		default_to_move_computation_to_gpu
		    If gpu init succeeded, enable by default optimizations to move
		    computations to the gpu.
		move_shared_float32_to_gpu
		    If gpu init succeeded, put new shared variables in float32 on the gpu.
		enable_cuda
		    If the gpu is correctly enabled, set the variable cuda_enabled to True.
	**/
	static public function use(device:Dynamic, ?force:Dynamic, ?default_to_move_computation_to_gpu:Dynamic, ?move_shared_float32_to_gpu:Dynamic, ?enable_cuda:Dynamic, ?test_driver:Dynamic):Dynamic;
}