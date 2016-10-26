/* This file is generated, do not edit! */
package tensorflow.contrib.rnn.python.ops.rnn_cell;
@:pythonImport("tensorflow.contrib.rnn.python.ops.rnn_cell") extern class Rnn_cell_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get a sharded variable concatenated into one tensor.
	**/
	static public function _get_concat_variable(name:Dynamic, shape:Dynamic, dtype:Dynamic, num_shards:Dynamic):Dynamic;
	/**
		Get a list of sharded variables with the given dtype.
	**/
	static public function _get_sharded_variable(name:Dynamic, shape:Dynamic, dtype:Dynamic, num_shards:Dynamic):Dynamic;
	/**
		Linear map: sum_i(args[i] * W[i]), where W[i] is a variable.
		
		Args:
		  args: a 2D Tensor or a list of 2D, batch x n, Tensors.
		  output_size: int, second dimension of W[i].
		  bias: boolean, whether to add a bias term or not.
		  bias_start: starting value to initialize the bias; 0 by default.
		  scope: VariableScope for the created subgraph; defaults to "Linear".
		
		Returns:
		  A 2D Tensor with shape [batch x output_size] equal to
		  sum_i(args[i] * W[i]), where W[i]s are newly created matrices.
		
		Raises:
		  ValueError: if some of the arguments has unspecified or wrong shape.
	**/
	static public function _linear(args:Dynamic, output_size:Dynamic, bias:Dynamic, ?bias_start:Dynamic, ?scope:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}