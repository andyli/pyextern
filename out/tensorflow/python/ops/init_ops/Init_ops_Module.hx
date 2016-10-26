/* This file is generated, do not edit! */
package tensorflow.python.ops.init_ops;
@:pythonImport("tensorflow.python.ops.init_ops") extern class Init_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Validate and return floating point type based on `dtype`.
		
		`dtype` must be a floating point type.
		
		Args:
		  dtype: The data type to validate.
		
		Returns:
		  Validated type.
		
		Raises:
		  ValueError: if `dtype` is not a floating point type.
	**/
	static public function _assert_float_dtype(dtype:Dynamic):Dynamic;
	/**
		Create a random tensor such that backprop neither vanishes nor explodes.
		
		Args:
		  shape: a python array of int or a 1-d tensor. Sizes of the Tensor.
		  nonlinearity: the brain python function for implementing the
		    nonlinearity in tensor flow.
		  dtype: The type of the output.
		  seed: A Python integer. Used to create random seeds. See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  name: string.  Optional name for the op.
		
		Returns:
		  A Tensor of the specified sizes filled with random values.
	**/
	static public function _random_walk(shape:Dynamic, nonlinearity:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns an initializer that generates tensors with a single value.
		
		Args:
		  value: A Python scalar. All elements of the initialized variable
		    will be set to this value.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer that generates tensors with a single value.
		
		Raises:
		  ValueError: if `dtype` is not a floating point type.
	**/
	static public function constant_initializer(?value:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		An adaptor for ones() to match the Initializer spec.
	**/
	static public function ones_initializer(shape:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns an initializer that generates tensors with a normal distribution.
		
		Args:
		  mean: a python scalar or a scalar tensor. Mean of the random values
		    to generate.
		  stddev: a python scalar or a scalar tensor. Standard deviation of the
		    random values to generate.
		  seed: A Python integer. Used to create random seeds. See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer that generates tensors with a normal distribution.
		
		Raises:
		  ValueError: if `dtype` is not a floating point type.
	**/
	static public function random_normal_initializer(?mean:Dynamic, ?stddev:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns an initializer that generates tensors with a uniform distribution.
		
		Args:
		  minval: a python scalar or a scalar tensor. lower bound of the range
		    of random values to generate.
		  maxval: a python scalar or a scalar tensor. upper bound of the range
		    of random values to generate.
		  seed: A Python integer. Used to create random seeds. See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer that generates tensors with a uniform distribution.
		
		Raises:
		  ValueError: if `dtype` is not a floating point type.
	**/
	static public function random_uniform_initializer(?minval:Dynamic, ?maxval:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns an initializer that generates a truncated normal distribution.
		
		These values are similar to values from a `random_normal_initializer`
		except that values more than two standard deviations from the mean
		are discarded and re-drawn. This is the recommended initializer for
		neural network weights and filters.
		
		Args:
		  mean: a python scalar or a scalar tensor. Mean of the random values
		    to generate.
		  stddev: a python scalar or a scalar tensor. Standard deviation of the
		    random values to generate.
		  seed: A Python integer. Used to create random seeds. See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer that generates tensors with a truncated normal
		  distribution.
		
		Raises:
		  ValueError: if `dtype` is not a floating point type.
	**/
	static public function truncated_normal_initializer(?mean:Dynamic, ?stddev:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns an initializer that generates tensors without scaling variance.
		
		When initializing a deep network, it is in principle advantageous to keep
		the scale of the input variance constant, so it does not explode or diminish
		by reaching the final layer. If the input is `x` and the operation `x * W`,
		and we want to initialize `W` uniformly at random, we need to pick `W` from
		
		    [-sqrt(3) / sqrt(dim), sqrt(3) / sqrt(dim)]
		
		to keep the scale intact, where `dim = W.shape[0]` (the size of the input).
		A similar calculation for convolutional networks gives an analogous result
		with `dim` equal to the product of the first 3 dimensions.  When
		nonlinearities are present, we need to multiply this by a constant `factor`.
		See [Sussillo et al., 2014](https://arxiv.org/abs/1412.6558)
		([pdf](http://arxiv.org/pdf/1412.6558.pdf)) for deeper motivation, experiments
		and the calculation of constants. In section 2.3 there, the constants were
		numerically computed: for a linear layer it's 1.0, relu: ~1.43, tanh: ~1.15.
		
		If the shape tuple `full_shape` is provided, the scale will be calculated from
		this predefined shape.  This is useful when a `Variable` is being partitioned
		across several shards, and each shard has a smaller shape than the whole.
		Since the shards are usually concatenated when used, the scale should be
		based on the shape of the whole.
		
		Args:
		  factor: Float.  A multiplicative factor by which the values will be scaled.
		  seed: A Python integer. Used to create random seeds. See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  dtype: The data type. Only floating point types are supported.
		  full_shape: Tuple or list of integers.  The shape used for calculating
		    scale normalization (instead of the shape passed at creation time).
		    Useful when creating sharded variables via partitioning.
		
		Returns:
		  An initializer that generates tensors with unit variance.
		
		Raises:
		  ValueError: if `dtype` is not a floating point type.
	**/
	static public function uniform_unit_scaling_initializer(?factor:Dynamic, ?seed:Dynamic, ?dtype:Dynamic, ?full_shape:Dynamic):Dynamic;
	/**
		An adaptor for zeros() to match the Initializer spec.
	**/
	static public function zeros_initializer(shape:Dynamic, ?dtype:Dynamic):Dynamic;
}