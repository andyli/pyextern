/* This file is generated, do not edit! */
package theano.gpuarray.nerv;
@:pythonImport("theano.gpuarray.nerv") extern class Nerv_Module {
	static public var GPUTensor : Dynamic;
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
		Decorator to merge multiplication by a scalar on the output.
		
		This will find a pattern of `scal * <yourop>(some, params, alpha,
		beta)` and update it so that the scalar multiplication happens as
		part of your op.
		
		The op needs to accept an alpha and a beta scalar which act this way::
		
		   out = Op() * alpha + out_like * beta
		
		Where out_like is a buffer that has the same size as the output
		and gets added to the "real" output of the operation.  An example
		of an operation that respects this pattern is GEMM from blas.
		
		The decorated function must have this signature::
		
		    maker(node, *inputs)
		
		The `node` argument you recieve is the original apply node that
		contains your op.  You should use it to grab relevant properties
		for your op so that the new version performs the same computation.
		The `*inputs` parameters contains the new inputs for your op.  You
		MUST use those inputs instead of the ones on `node`.  Note that
		this function can be as simple as::
		
		    def maker(node, *inputs):
		        return node.op(*inputs)
		
		Parameters
		----------
		cls : op class
		    The class of the op you want to merge
		alpha_in : int
		    The input index for the alpha scalar for your op (in node.inputs).
		beta_in : int
		    The input index for the beta scalar for your op (in node.inputs).
		
		Returns
		-------
		local optimizer
		    an unregistered local optimizer that has the same name as the
		    decorated function.
		
		Notes
		-----
		This was factored out since the code to deal with intervening
		transfers and correctness in the presence of different values of
		alpha and beta scaling factors is not trivial.
	**/
	static public function alpha_merge(cls:Dynamic, alpha_in:Dynamic, beta_in:Dynamic):Dynamic;
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
	static public function as_scalar(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function constant(x:Dynamic, ?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function ensure_float(val:Dynamic, name:Dynamic):Dynamic;
	static public function gpu_alloc_empty(ctx:Dynamic, dtype:Dynamic):Dynamic;
	static public function gpu_context_type(?name:Dynamic):Dynamic;
	/**
		Infer the context name to use from the inputs given
	**/
	static public function infer_context_name(?vars:python.VarArgs<Dynamic>):Dynamic;
	static public var local_gemm16_alpha_merge : Dynamic;
	static public var local_gemm16_inplace : Dynamic;
	static public var local_gemm16_output_merge : Dynamic;
	static public var local_gpua_dot_to_gemm16 : Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
	static public var nerv : Dynamic;
	static public var optdb : Dynamic;
	/**
		Decorator to merge addition by a value on the output.
		
		This will find a pattern of `val * <yourop>(some, params, alpha,
		beta, out_like)` and update it so that the addtition happens as
		part of your op.
		
		The op needs to accept an alpha and a beta scalar which act this way::
		
		   out = Op() * alpha + out_like * beta
		
		Where out_like is a buffer that has the same size as the output
		and gets added to the "real" output of the operation.  An example
		of an operation that respects this pattern is GEMM from blas.
		
		The decorated function must have this signature::
		
		    maker(node, *inputs)
		
		The `node` argument you recieve is the original apply node that
		contains your op.  You should use it to grab relevant properties
		for your op so that the new version performs the same computation.
		The `*inputs` parameters contains the new inputs for your op.  You
		MUST use those inputs instead of the ones on `node`.  Note that
		this function can be as simple as::
		
		    def maker(node, *inputs):
		        return node.op(*inputs)
		
		Parameters
		----------
		cls : op class
		    The class of the op you want to merge
		alpha_in : int
		    The input index for the alpha scalar for your op (in node.inputs).
		beta_in : int
		    The input index for the beta scalar for your op (in node.inputs).
		out_in : int
		    The input index for the out_like input for your op (in node.inputs).
		
		Returns
		-------
		local optimizer
		    an unregistered local optimizer that has the same name as the
		    decorated function.
		
		Notes
		-----
		This was factored out since the code to deal with intervening
		transfers and correctness in the presence of different values of
		alpha and beta scaling factors is not trivial.
		
		This also correctly handles the case where the added value is
		broadcasted (by not performing the replacement).
	**/
	static public function output_merge(cls:Dynamic, alpha_in:Dynamic, beta_in:Dynamic, out_in:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Equivalent of var.shape[i], but apply if possible the shape feature
		optimization.
		
		This is useful in optimization that need to get the shape. This
		remove the need of the following shape_feature optimization that
		convert it. So this speed up optimization and remove Equilibrium
		max iteration problems.
		
		Parameters
		----------
		var
		    The variable we want to take the shape of.
		i
		    The shape dimensions we want
		fgraph : optional
		    If var.fgraph do not exist, the fgraph that have the shape_feature to
		    introduce var in to get the optimized shape.
	**/
	static public function shape_i(_var:Dynamic, i:Dynamic, ?fgraph:Dynamic):Dynamic;
	static public function to_gputensor(a:Dynamic):Dynamic;
}