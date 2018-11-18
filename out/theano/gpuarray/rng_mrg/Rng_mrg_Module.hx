/* This file is generated, do not edit! */
package theano.gpuarray.rng_mrg;
@:pythonImport("theano.gpuarray.rng_mrg") extern class Rng_mrg_Module {
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
	/**
		Return `x`, transformed into a `TensorType`.
		
		This function is often used by `make_node` methods of `Op` subclasses
		to turn ndarrays, numbers, `Scalar` instances, `Apply` instances and
		`TensorType` instances into valid input list elements.
		
		Parameters
		----------
		x : Apply instance, Variable instance, numpy.ndarray, or number
		    This thing will be transformed into a `Variable` in a sensible way. An
		    ndarray argument will not be copied, but a list of numbers will be
		    copied to make an ndarray.
		name : str or None
		    If a new `Variable` instance is created, it will be named with this
		    string.
		ndim : None or integer
		    Return a Variable with this many dimensions.
		
		Raises
		------
		ValueError
		    If an `Apply` with more than one output is fetched or
		    if `x` cannot be made into a Variable with `ndim` dimensions.
		AsTensorError
		    If `x` cannot be converted to a TensorType Variable.
	**/
	static public function as_tensor_variable(x:Dynamic, ?name:Dynamic, ?ndim:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return the run-time length of a symbolic vector.
		
		Parameters
		----------
		v
		    A rank-1 TensorType variable.
		
		Raises
		------
		TypeError
		    `v` hasn't the proper type.
		ValueError
		    No special case applies, the length is not known.
		    In general this is not possible, but for a number of special cases
		    the length can be determined at compile / graph-construction time.
		    This function implements these special cases.
	**/
	static public function get_vector_length(v:Dynamic):Dynamic;
	static public function gpu_context_type(?name:Dynamic):Dynamic;
	static public function host_from_gpu(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Infer the context name to use from the inputs given
	**/
	static public function infer_context_name(?vars:python.VarArgs<Dynamic>):Dynamic;
	static public function int_t(?name:Dynamic):Dynamic;
	static public var local_gpua_mrg : Dynamic;
	static public function local_gpua_mrg_graph(op:Dynamic, context_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
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
	/**
		Return the function name to write data.
		
		This should be used like this::
		
		    code = 'res = %s(oval)' % (write_w(output_type),)
	**/
	static public function write_w(dtype:Dynamic):Dynamic;
}