/* This file is generated, do not edit! */
package theano.gpuarray.elemwise;
@:pythonImport("theano.gpuarray.elemwise") extern class Elemwise_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function as_C_string_const(s:Dynamic):Dynamic;
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
	static public var complex_types : Dynamic;
	static public var config : Dynamic;
	static public var division : Dynamic;
	/**
		dtype_to_typecode(dtype)
		
		Get the internal typecode for a type.
		
		Parameters
		----------
		dtype: numpy.dtype
		    type to get the code for
	**/
	static public function dtype_to_typecode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_scal(dt:Dynamic):Dynamic;
	static public function gpu_ca_reduce_cuda(scalar_op:Dynamic, ?axis:Dynamic, ?reduce_mask:Dynamic, ?dtype:Dynamic, ?acc_dtype:Dynamic, ?pre_scalar_op:Dynamic):Dynamic;
	static public function gpu_context_type(?name:Dynamic):Dynamic;
	static public function gpu_erfcinv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_erfinv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Infer the context name to use from the inputs given
	**/
	static public function infer_context_name(?vars:python.VarArgs<Dynamic>):Dynamic;
	static public function load_w(dtype:Dynamic):Dynamic;
	static public function make_argument(v:Dynamic, name:Dynamic):Dynamic;
	/**
		Compute the maximum number of inputs that fit in a kernel call.
	**/
	static public function max_inputs_to_GpuElemwise(node_or_outputs:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Don't accept complex, otherwise call upgrade_to_float().
	**/
	static public function upgrade_to_float_no_complex(?types:python.VarArgs<Dynamic>):Dynamic;
	static public function write_w(dtype:Dynamic):Dynamic;
}