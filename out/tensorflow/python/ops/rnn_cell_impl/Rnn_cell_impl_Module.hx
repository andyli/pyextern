/* This file is generated, do not edit! */
package tensorflow.python.ops.rnn_cell_impl;
@:pythonImport("tensorflow.python.ops.rnn_cell_impl") extern class Rnn_cell_impl_Module {
	static public var _BIAS_VARIABLE_NAME : Dynamic;
	static public var _WEIGHTS_VARIABLE_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Concat that enables int, Tensor, or TensorShape values.
		
		This function takes a size specification, which can be an integer, a
		TensorShape, or a Tensor, and converts it into a concatenated Tensor
		(if static = False) or a list of integers (if static = True).
		
		Args:
		  prefix: The prefix; usually the batch size (and/or time step size).
		    (TensorShape, int, or Tensor.)
		  suffix: TensorShape, int, or Tensor.
		  static: If `True`, return a python list with possibly unknown dimensions.
		    Otherwise return a `Tensor`.
		
		Returns:
		  shape: the concatenation of prefix and suffix.
		
		Raises:
		  ValueError: if `suffix` is not a scalar or vector (or TensorShape).
		  ValueError: if prefix or suffix was `None` and asked for dynamic
		    Tensors out.
	**/
	static public function _concat(prefix:Dynamic, suffix:Dynamic, ?_static:Dynamic):Dynamic;
	static public function _enumerated_map_structure(map_fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Checks that a given object is an RNNCell by using duck typing.
	**/
	static public function _like_rnncell(cell:Dynamic):Dynamic;
	/**
		Linear map: sum_i(args[i] * W[i]), where W[i] is a variable.
		
		Args:
		  args: a 2D Tensor or a list of 2D, batch x n, Tensors.
		  output_size: int, second dimension of W[i].
		  bias: boolean, whether to add a bias term or not.
		  bias_initializer: starting value to initialize the bias
		    (default is all zeros).
		  kernel_initializer: starting value to initialize the weight.
		
		Returns:
		  A 2D Tensor with shape [batch x output_size] equal to
		  sum_i(args[i] * W[i]), where W[i]s are newly created matrices.
		
		Raises:
		  ValueError: if some of the arguments has unspecified or wrong shape.
	**/
	static public function _linear(args:Dynamic, output_size:Dynamic, bias:Dynamic, ?bias_initializer:Dynamic, ?kernel_initializer:Dynamic):Dynamic;
	/**
		Create tensors of zeros based on state_size, batch_size, and dtype.
	**/
	static public function _zero_state_tensors(state_size:Dynamic, batch_size:Dynamic, dtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}