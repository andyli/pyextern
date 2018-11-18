/* This file is generated, do not edit! */
package theano.gpuarray.subtensor;
@:pythonImport("theano.gpuarray.subtensor") extern class Subtensor_Module {
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
	static public function bool_t(?name:Dynamic):Dynamic;
	/**
		This function checks if the boolean mask arrays in the index have
		the right shape and converts them to index arrays by calling nonzero.
		For each boolean mask, we check if the mask has the
		same shape as the input. This is enforced in NumPy 0.13.0 and
		newer, but not by earlier versions. If the size is not the same,
		this method raises an IndexError.
	**/
	static public function check_and_convert_boolean_masks(input:Dynamic, idx_list:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function get_iadd(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Given a list of inputs to the subtensor and its idx_list reorders
		the inputs according to the idx list to get the right values.
		
		If get_counts=True, instead returns the number of inputs consumed
		during this process.
	**/
	static public function get_idx_list(inputs:Dynamic, idx_list:Dynamic, ?get_count:Dynamic):Dynamic;
	static public function gpu_context_type(?name:Dynamic):Dynamic;
	static public function gpu_contiguous(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpuarray_helper_inc_dir():Dynamic;
	/**
		Return an un-computable symbolic variable of type `x.type`.
		
		If any call to tensor.grad results in an expression containing this
		un-computable variable, an exception (NotImplementedError) will be
		raised indicating that the gradient on the
		`x_pos`'th input of `op` has not been implemented. Likewise if
		any call to theano.function involves this variable.
		
		Optionally adds a comment to the exception explaining why this
		gradient is not implemented.
	**/
	static public function grad_not_implemented(op:Dynamic, x_pos:Dynamic, x:Dynamic, ?comment:Dynamic):Dynamic;
	static public var iadd_reg : Dynamic;
	/**
		Infer the context name to use from the inputs given
	**/
	static public function infer_context_name(?vars:python.VarArgs<Dynamic>):Dynamic;
	static public function int_t(?name:Dynamic):Dynamic;
	static public var integer_types : Dynamic;
	static public var print_function : Dynamic;
	static public function size_t(?name:Dynamic):Dynamic;
}