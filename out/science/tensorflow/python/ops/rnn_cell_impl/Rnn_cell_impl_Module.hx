/* This file is generated, do not edit! */
package tensorflow.python.ops.rnn_cell_impl;
@:pythonImport("tensorflow.python.ops.rnn_cell_impl") extern class Rnn_cell_impl_Module {
	static public var ASSERT_LIKE_RNNCELL_ERROR_REGEXP : Dynamic;
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
	/**
		Create tensors of zeros based on state_size, batch_size, and dtype.
	**/
	static public function _zero_state_tensors(state_size:Dynamic, batch_size:Dynamic, dtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Raises a TypeError if cell is not like an RNNCell.
		
		NOTE: Do not rely on the error message (in particular in tests) which can be
		subject to change to increase readability. Use
		ASSERT_LIKE_RNNCELL_ERROR_REGEXP.
		
		Args:
		  cell_name: A string to give a meaningful error referencing to the name of
		    the functionargument.
		  cell: The object which should behave like an RNNCell.
		
		Raises:
		  TypeError: A human-friendly exception.
	**/
	static public function assert_like_rnncell(cell_name:Dynamic, cell:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}