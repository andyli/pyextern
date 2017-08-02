/* This file is generated, do not edit! */
package theano.gpuarray.blas;
@:pythonImport("theano.gpuarray.blas") extern class Blas_Module {
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
	static public var config : Dynamic;
	static public var division : Dynamic;
	static public function gpu_contiguous(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_dot22(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpuablas_opt_inplace(fgraph:Dynamic):Dynamic;
	static public function gpugemm_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpugemm_no_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpugemmbatch_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpugemmbatch_no_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpugemv_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpugemv_no_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpuger_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpuger_no_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Uses the TopoOptimizer from the input nodes to output nodes of the graph.
	**/
	static public function in2out(?local_opts:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Infer the context name to use from the inputs given
	**/
	static public function infer_context_name(?vars:python.VarArgs<Dynamic>):Dynamic;
	/**
		Wrapper to make an inplace optimization that deals with AllocEmpty
		
		This will duplicate the alloc input if it has more than one client
		to allow the op to work on it inplace.
		
		The decorated function must have this signature::
		
		    maker(node, inputs)
		
		The `node` argument you recieve is the original apply node that
		contains your op.  You should use it to grab relevant properties
		for your op so that the new version performs the same computation.
		You should also switch the op to work inplace.  The `*inputs`
		parameters contains the new inputs for your op.  You MUST use
		those inputs instead of the ones on `node`.  Note that this
		function can be as simple as::
		
		    def maker(node, inputs):
		        return [node.op.__class__(inplace=True)(*inputs)]
		
		Parameters
		----------
		op : op class
		    The op class to look for to make inplace
		idx : int
		    The index of the (possibly) AllocEmpty input (in node.inputs).
		
		Returns
		-------
		local optimizer
		    an unregistered inplace local optimizer that has the same name
		    as the decorated function.
	**/
	static public function inplace_allocempty(op:Dynamic, idx:Dynamic):Dynamic;
	static public var integer_types : Dynamic;
	static public var local_inplace_gpuagemm : Dynamic;
	static public var local_inplace_gpuagemv : Dynamic;
	static public var local_inplace_gpuager : Dynamic;
	static public var optdb : Dynamic;
	static public var print_function : Dynamic;
}