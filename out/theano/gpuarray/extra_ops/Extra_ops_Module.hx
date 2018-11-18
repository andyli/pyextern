/* This file is generated, do not edit! */
package theano.gpuarray.extra_ops;
@:pythonImport("theano.gpuarray.extra_ops") extern class Extra_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public var division : Dynamic;
	static public function gpu_context_type(?name:Dynamic):Dynamic;
	static public function gpuarray_helper_inc_dir():Dynamic;
	/**
		Infer the context name to use from the inputs given
	**/
	static public function infer_context_name(?vars:python.VarArgs<Dynamic>):Dynamic;
	static public var local_gpua_cumop : Dynamic;
	/**
		OP(..., host_from_gpu(), ...) -> host_from_gpu(GpuOP(...))
		
		gpu_from_host(OP(inp0, ...)) -> GpuOP(inp0, ...)
	**/
	static public function op_lifter(OP:Dynamic, ?cuda_only:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function register_opt(?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Decorator for the new GraphToGPU optimizer.
		Takes an extra parameter(Op) compared to register_opt decorator.
		
		Parameters
		----------
		tracks : List of Op class Or Op instance or None
		    The Node's Op to which optimization is being applied.
		
		tags : String
		    The optimization tag to which the optimizer will be registered.
	**/
	static public function register_opt2(tracks:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}