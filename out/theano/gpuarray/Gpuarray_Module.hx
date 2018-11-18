/* This file is generated, do not edit! */
package theano.gpuarray;
@:pythonImport("theano.gpuarray") extern class Gpuarray_Module {
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
	/**
		This will attempt to convert `x` into a variable on the GPU.
		
		It can take either a value of another variable.  If `x` is already
		suitable, it will be returned as-is.
		
		Parameters
		----------
		x
		    Object to convert
		context_name : str or None
		    target context name for the result
	**/
	static public function as_gpuarray_variable(x:Dynamic, context_name:Dynamic):Dynamic;
	static public var config : Dynamic;
	static public var division : Dynamic;
	/**
		Log 'msg % args' with severity 'ERROR'.
		
		To pass exception information, use the keyword argument exc_info with
		a true value, e.g.
		
		logger.error("Houston, we have a %s", "major problem", exc_info=1)
	**/
	static public function error(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Retrive the context associated with a name.
		
		Return the context object mapped to `ref` that was previously
		register through :func:`reg_context`. Trying to get the context
		for an unregistered `ref` will raise a exception.
		
		Parameters
		----------
		name : hashable object
		    Name associated with the context we want (usually a string)
	**/
	static public function get_context(name:Dynamic):Dynamic;
	/**
		SharedVariable constructor for GpuArrayType.
		
		See :func:`theano.shared`.
		
		:target: default None
		    The device target. As None is a valid value and we need to
		    differentiate from the parameter notset and None, we use a
		    notset object.
	**/
	static public function gpuarray_shared_constructor(value:Dynamic, ?name:Dynamic, ?strict:Dynamic, ?allow_downcast:Dynamic, ?borrow:Dynamic, ?broadcastable:Dynamic, ?target:Dynamic):Dynamic;
	static public function host_from_gpu(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Log 'msg % args' with severity 'INFO'.
		
		To pass exception information, use the keyword argument exc_info with
		a true value, e.g.
		
		logger.info("Houston, we have a %s", "interesting problem", exc_info=1)
	**/
	static public function info(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function init_dev(dev:Dynamic, ?name:Dynamic, ?preallocate:Dynamic):Dynamic;
	static public var optdb : Dynamic;
	static public var print_function : Dynamic;
	static public var pygpu_activated : Dynamic;
	static public function pygpu_parse_version(version_string:Dynamic):Dynamic;
	/**
		Register a context by mapping it to a name.
		
		The context must be of type `GpuContext` and the name can be
		anything hashable (but is usually a string). Only one context can
		be registered per name and the second registration for a given
		name will raise an error.
		
		Parameters
		----------
		name : hashable object
		    Name to associate the context with (usually a string)
		ctx : GpuContext
		    Context instance
	**/
	static public function reg_context(name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Register a transfer function for alternative targets.
		
		Parameters
		----------
		fn : callable
	**/
	static public function register_transfer(fn:Dynamic):Dynamic;
	static public var theano_gpu_is_already_active : Dynamic;
	static public function transfer(x:Dynamic, target:Dynamic):Dynamic;
	/**
		Error and warning about CUDA should be displayed only when this
		function is called. We need to be able to load this module only
		to check if it is available!
		
		Parameters
		----------
		device : string
		    "cuda", "cuda0", "cudaN", "" (N is the device number to use).
		    "" mean do all the rest and don't init a device.
		force
		    Will always raise an exception if we can't use the gpu.
		default_to_move_computation_to_gpu
		    If gpu init succeeded, enable by default optimizations to move
		    computations to the gpu.
		move_shared_to_gpu
		    If gpu init succeeded, put new shared variables on the gpu.
		preallocate
		    If specified, will use this value for preallocation instead of
		    gpuarray.preallocate.
	**/
	static public function use(device:Dynamic, ?force:Dynamic, ?default_to_move_computation_to_gpu:Dynamic, ?move_shared_to_gpu:Dynamic, ?preallocate:Dynamic):Dynamic;
}