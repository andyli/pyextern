/* This file is generated, do not edit! */
package tensorflow.contrib.rnn.python.ops.rnn_cell;
@:pythonImport("tensorflow.contrib.rnn.python.ops.rnn_cell") extern class Rnn_cell_Module {
	static public var _REGISTERED_OPS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convolution.
		
		Args:
		  args: a Tensor or a list of Tensors of dimension 3D, 4D or 5D,
		  batch x n, Tensors.
		  filter_size: int tuple of filter height and width.
		  num_features: int, number of features.
		  bias: Whether to use biases in the convolution layer.
		  bias_start: starting value to initialize the bias; 0 by default.
		
		Returns:
		  A 3D, 4D, or 5D Tensor with shape [batch ... num_features]
		
		Raises:
		  ValueError: if some of the arguments has unspecified or wrong shape.
	**/
	static public function _conv(args:Dynamic, filter_size:Dynamic, num_features:Dynamic, bias:Dynamic, ?bias_start:Dynamic):Dynamic;
	/**
		Get a sharded variable concatenated into one tensor.
	**/
	static public function _get_concat_variable(name:Dynamic, shape:Dynamic, dtype:Dynamic, num_shards:Dynamic):Dynamic;
	/**
		Get a list of sharded variables with the given dtype.
	**/
	static public function _get_sharded_variable(name:Dynamic, shape:Dynamic, dtype:Dynamic, num_shards:Dynamic):Dynamic;
	static public function _norm(g:Dynamic, b:Dynamic, inp:Dynamic, scope:Dynamic):Dynamic;
	/**
		Returns an exponential distribution initializer.
		
		Args:
		  minval: float or a scalar float Tensor. With value > 0. Lower bound of the
		      range of random values to generate.
		  maxval: float or a scalar float Tensor. With value > minval. Upper bound of
		      the range of random values to generate.
		  seed: An integer. Used to create random seeds.
		  dtype: The data type.
		
		Returns:
		  An initializer that generates tensors with an exponential distribution.
	**/
	static public function _random_exp_initializer(minval:Dynamic, maxval:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}