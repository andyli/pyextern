/* This file is generated, do not edit! */
package theano.sandbox.cuda.basic_ops;
@:pythonImport("theano.sandbox.cuda.basic_ops") extern class Basic_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	static public var _logger_name : Dynamic;
	static public var absolute_import : Dynamic;
	static public function as_cuda_array(obj:Dynamic):Dynamic;
	static public function as_cuda_ndarray_variable(x:Dynamic):Dynamic;
	/**
		Return a symbolic column variable (ndim=2, broadcastable=[False,True]).
		
		Parameters
		----------
		dtype
		    Numeric type (None means to use theano.config.floatX).
		name : str
		    A name to attach to this variable.
	**/
	static public function col(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var config : Dynamic;
	static public function cp_on_negative_strides(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function fcol(?name:Dynamic):Dynamic;
	static public function fmatrix(?name:Dynamic):Dynamic;
	static public function frow(?name:Dynamic):Dynamic;
	static public function fscalar(?name:Dynamic):Dynamic;
	static public function ftensor3(?name:Dynamic):Dynamic;
	static public function ftensor4(?name:Dynamic):Dynamic;
	static public function fvector(?name:Dynamic):Dynamic;
	static public function gpu_alloc(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_alloc_empty(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_contiguous(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_eye(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implement flatten on the gpu.
		Reshapes the variable x by keeping
		the first outdim-1 dimension size(s) of x the same,
		and making the last dimension size of x equal to
		the multiplication of its remaining dimension size(s).
		
		Parameters
		----------
		    x : theano.tensor.var.TensorVariable
		        the variable that should be reshaped.
		
		    outdim : int
		        the number of dimensions of the returned variable
		
		Returns
		-------
		theano.tensor.var.TensorVariable
		    the flattend variable with dimensionality of outdim
	**/
	static public function gpu_flatten(x:Dynamic, ?outdim:Dynamic):Dynamic;
	static public function gpu_from_host(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_join(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_shape(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an un-computable symbolic variable of type `x.type`.
		
		If any call to tensor.grad results in an expression containing this
		un-computable variable, an exception (GradUndefinedError) will be
		raised indicating that the gradient on the
		`x_pos`'th input of `op` is mathematically undefined. Likewise if
		any call to theano.function involves this variable.
		
		Optionally adds a comment to the exception explaining why this
		gradient is not defined.
	**/
	static public function grad_undefined(op:Dynamic, x_pos:Dynamic, x:Dynamic, ?comment:Dynamic):Dynamic;
	static public function host_from_gpu(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a symbolic matrix variable.
		
		Parameters
		----------
		dtype
		    Numeric type (None means to use theano.config.floatX).
		name
		    A name to attach to this variable.
	**/
	static public function matrix(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function profile_printer(fct_name:Dynamic, compile_time:Dynamic, fct_call_time:Dynamic, fct_call:Dynamic, apply_time:Dynamic, apply_cimpl:Dynamic, message:Dynamic, outputs_size:Dynamic, other_time:Dynamic):Dynamic;
	/**
		Return a symbolic row variable (ndim=2, broadcastable=[True,False]).
		
		Parameters
		----------
		dtype
		    Numeric type (None means to use theano.config.floatX).
		name : str
		    A name to attach to this variable.
	**/
	static public function row(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Return a symbolic scalar variable.
		
		Parameters
		----------
		dtype
		    Numeric type (None means to use theano.config.floatX).
		name : str
		    A name to attach to this variable.
	**/
	static public function scalar(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Return a symbolic 3-D variable.
		
		Parameters
		----------
		dtype
		    Numeric type (None means to use theano.config.floatX).
		name : str
		    A name to attach to this variable.
	**/
	static public function tensor3(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Return a symbolic 4-D variable.
		
		Parameters
		----------
		dtype
		    Numeric type (None means to use theano.config.floatX).
		name : str
		    A name to attach to this variable.
	**/
	static public function tensor4(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Return a symbolic vector variable.
		
		Parameters
		----------
		dtype
		    Numeric type (None means to use theano.config.floatX).
		name
		    A name to attach to this variable.
	**/
	static public function vector(?name:Dynamic, ?dtype:Dynamic):Dynamic;
}