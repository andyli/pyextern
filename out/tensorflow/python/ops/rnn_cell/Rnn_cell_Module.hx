/* This file is generated, do not edit! */
package tensorflow.python.ops.rnn_cell;
@:pythonImport("tensorflow.python.ops.rnn_cell") extern class Rnn_cell_Module {
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
	/**
		Helper function that enables int or TensorShape shape specification.
		
		This function takes a size specification, which can be an integer or a
		TensorShape, and converts it into a list of integers. One may specify any
		additional dimensions that precede the final state size specification.
		
		Args:
		  state_size: TensorShape or int that specifies the size of a tensor.
		  prefix: optional additional list of dimensions to prepend.
		
		Returns:
		  result_state_size: list of dimensions the resulting tensor size.
	**/
	static public function _state_size_with_prefix(state_size:Dynamic, ?prefix:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Computes sigmoid of `x` element-wise.
		
		Specifically, `y = 1 / (1 + exp(-x))`.
		
		Args:
		  x: A Tensor with type `float32`, `float64`, `int32`, `complex64`, `int64`,
		    or `qint32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor with the same type as `x` if `x.dtype != qint32`
		    otherwise the return type is `quint8`.
	**/
	static public function sigmoid(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes hyperbolic tangent of `x` element-wise.
		
		Args:
		  x: A Tensor or SparseTensor with type `float`, `double`, `int32`,
		    `complex64`, `int64`, or `qint32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor or SparseTensor respectively with the same type as `x` if
		  `x.dtype != qint32` otherwise the return type is `quint8`.
	**/
	static public function tanh(x:Dynamic, ?name:Dynamic):Dynamic;
}