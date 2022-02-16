/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_stateless_random_ops;
@:pythonImport("tensorflow.python.ops.gen_stateless_random_ops") extern class Gen_stateless_random_ops_Module {
	/**
		Draws samples from a multinomial distribution.
		
		Args:
		  logits: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    2-D Tensor with shape `[batch_size, num_classes]`.  Each slice `[i, :]`
		    represents the unnormalized log probabilities for all classes.
		  num_samples: A `Tensor` of type `int32`.
		    0-D.  Number of independent samples to draw for each row slice.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  output_dtype: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_dtype`.
	**/
	static public function StatelessMultinomial(logits:Dynamic, num_samples:Dynamic, seed:Dynamic, ?output_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  means: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    The mean parameter of each batch.
		  stddevs: A `Tensor`. Must have the same type as `means`.
		    The standard deviation parameter of each batch. Must be greater than 0.
		  minvals: A `Tensor`. Must have the same type as `means`.
		    The minimum cutoff. May be -infinity.
		  maxvals: A `Tensor`. Must have the same type as `means`.
		    The maximum cutoff. May be +infinity, and must be more than the minval
		    for each batch.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `means`.
	**/
	static public function StatelessParameterizedTruncatedNormal(shape:Dynamic, seed:Dynamic, means:Dynamic, stddevs:Dynamic, minvals:Dynamic, maxvals:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random numbers from a binomial distribution.
		
		Outputs random values from a binomial distribution.
		
		The outputs are a deterministic function of `shape`, `seed`, `counts`, and `probs`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  counts: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`.
		    The counts of the binomial distribution. Must be broadcastable with `probs`,
		    and broadcastable with the rightmost dimensions of `shape`.
		  probs: A `Tensor`. Must have the same type as `counts`.
		    The probability of success for the binomial distribution. Must be broadcastable
		    with `counts` and broadcastable with the rightmost dimensions of `shape`.
		  dtype: An optional `tf.DType` from: `tf.half, tf.float32, tf.float64, tf.int32, tf.int64`. Defaults to `tf.int64`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function StatelessRandomBinomial(shape:Dynamic, seed:Dynamic, counts:Dynamic, probs:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random numbers from a gamma distribution.
		
		Outputs random values from a gamma distribution.
		
		The outputs are a deterministic function of `shape`, `seed`, and `alpha`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  alpha: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    The concentration of the gamma distribution. Shape must match the rightmost
		    dimensions of `shape`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `alpha`.
	**/
	static public function StatelessRandomGammaV2(shape:Dynamic, seed:Dynamic, alpha:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values from a normal distribution.
		
		The generated values will have mean 0 and standard deviation 1.
		
		The outputs are a deterministic function of `shape` and `seed`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  dtype: An optional `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function StatelessRandomNormal(shape:Dynamic, seed:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random numbers from a Poisson distribution.
		
		Outputs random values from a Poisson distribution.
		
		The outputs are a deterministic function of `shape`, `seed`, and `lam`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  lam: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`.
		    The rate of the Poisson distribution. Shape must match the rightmost dimensions
		    of `shape`.
		  dtype: A `tf.DType` from: `tf.half, tf.float32, tf.float64, tf.int32, tf.int64`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function StatelessRandomPoisson(shape:Dynamic, seed:Dynamic, lam:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random values from a uniform distribution.
		
		The generated values follow a uniform distribution in the range `[0, 1)`. The
		lower bound 0 is included in the range, while the upper bound 1 is excluded.
		
		The outputs are a deterministic function of `shape` and `seed`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  dtype: An optional `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function StatelessRandomUniform(shape:Dynamic, seed:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random integers from a uniform distribution.
		
		The generated values are uniform integers covering the whole range of `dtype`.
		
		The outputs are a deterministic function of `shape` and `seed`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`, `uint32`, `uint64`.
		    2 seeds (shape [2]).
		  dtype: An optional `tf.DType` from: `tf.int32, tf.int64, tf.uint32, tf.uint64`. Defaults to `tf.uint64`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function StatelessRandomUniformFullInt(shape:Dynamic, seed:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random integers from a uniform distribution.
		
		The generated values follow a uniform distribution in the range `[minval, maxval)`.
		
		The outputs are a deterministic function of `shape`, `seed`, `minval`, and `maxval`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  minval: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Minimum value (inclusive, scalar).
		  maxval: A `Tensor`. Must have the same type as `minval`.
		    Maximum value (exclusive, scalar).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `minval`.
	**/
	static public function StatelessRandomUniformInt(shape:Dynamic, seed:Dynamic, minval:Dynamic, maxval:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values from a truncated normal distribution.
		
		The generated values follow a normal distribution with mean 0 and standard
		deviation 1, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		The outputs are a deterministic function of `shape` and `seed`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  dtype: An optional `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function StatelessTruncatedNormal(shape:Dynamic, seed:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Draws samples from a multinomial distribution.
		
		Args:
		  logits: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    2-D Tensor with shape `[batch_size, num_classes]`.  Each slice `[i, :]`
		    represents the unnormalized log probabilities for all classes.
		  num_samples: A `Tensor` of type `int32`.
		    0-D.  Number of independent samples to draw for each row slice.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  output_dtype: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_dtype`.
	**/
	static public function stateless_multinomial(logits:Dynamic, num_samples:Dynamic, seed:Dynamic, ?output_dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_multinomial_eager_fallback(logits:Dynamic, num_samples:Dynamic, seed:Dynamic, output_dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  means: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    The mean parameter of each batch.
		  stddevs: A `Tensor`. Must have the same type as `means`.
		    The standard deviation parameter of each batch. Must be greater than 0.
		  minvals: A `Tensor`. Must have the same type as `means`.
		    The minimum cutoff. May be -infinity.
		  maxvals: A `Tensor`. Must have the same type as `means`.
		    The maximum cutoff. May be +infinity, and must be more than the minval
		    for each batch.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `means`.
	**/
	static public function stateless_parameterized_truncated_normal(shape:Dynamic, seed:Dynamic, means:Dynamic, stddevs:Dynamic, minvals:Dynamic, maxvals:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_parameterized_truncated_normal_eager_fallback(shape:Dynamic, seed:Dynamic, means:Dynamic, stddevs:Dynamic, minvals:Dynamic, maxvals:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random numbers from a binomial distribution.
		
		Outputs random values from a binomial distribution.
		
		The outputs are a deterministic function of `shape`, `seed`, `counts`, and `probs`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  counts: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`.
		    The counts of the binomial distribution. Must be broadcastable with `probs`,
		    and broadcastable with the rightmost dimensions of `shape`.
		  probs: A `Tensor`. Must have the same type as `counts`.
		    The probability of success for the binomial distribution. Must be broadcastable
		    with `counts` and broadcastable with the rightmost dimensions of `shape`.
		  dtype: An optional `tf.DType` from: `tf.half, tf.float32, tf.float64, tf.int32, tf.int64`. Defaults to `tf.int64`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function stateless_random_binomial(shape:Dynamic, seed:Dynamic, counts:Dynamic, probs:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_random_binomial_eager_fallback(shape:Dynamic, seed:Dynamic, counts:Dynamic, probs:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random numbers from a gamma distribution.
		
		Outputs random values from a gamma distribution.
		
		The outputs are a deterministic function of `shape`, `seed`, and `alpha`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  alpha: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    The concentration of the gamma distribution. Shape must match the rightmost
		    dimensions of `shape`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `alpha`.
	**/
	static public function stateless_random_gamma_v2(shape:Dynamic, seed:Dynamic, alpha:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_random_gamma_v2_eager_fallback(shape:Dynamic, seed:Dynamic, alpha:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values from a normal distribution.
		
		The generated values will have mean 0 and standard deviation 1.
		
		The outputs are a deterministic function of `shape` and `seed`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  dtype: An optional `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function stateless_random_normal(shape:Dynamic, seed:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_random_normal_eager_fallback(shape:Dynamic, seed:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random numbers from a Poisson distribution.
		
		Outputs random values from a Poisson distribution.
		
		The outputs are a deterministic function of `shape`, `seed`, and `lam`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  lam: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`.
		    The rate of the Poisson distribution. Shape must match the rightmost dimensions
		    of `shape`.
		  dtype: A `tf.DType` from: `tf.half, tf.float32, tf.float64, tf.int32, tf.int64`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function stateless_random_poisson(shape:Dynamic, seed:Dynamic, lam:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_random_poisson_eager_fallback(shape:Dynamic, seed:Dynamic, lam:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random values from a uniform distribution.
		
		The generated values follow a uniform distribution in the range `[0, 1)`. The
		lower bound 0 is included in the range, while the upper bound 1 is excluded.
		
		The outputs are a deterministic function of `shape` and `seed`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  dtype: An optional `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function stateless_random_uniform(shape:Dynamic, seed:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_random_uniform_eager_fallback(shape:Dynamic, seed:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random integers from a uniform distribution.
		
		The generated values are uniform integers covering the whole range of `dtype`.
		
		The outputs are a deterministic function of `shape` and `seed`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`, `uint32`, `uint64`.
		    2 seeds (shape [2]).
		  dtype: An optional `tf.DType` from: `tf.int32, tf.int64, tf.uint32, tf.uint64`. Defaults to `tf.uint64`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function stateless_random_uniform_full_int(shape:Dynamic, seed:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_random_uniform_full_int_eager_fallback(shape:Dynamic, seed:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random integers from a uniform distribution.
		
		The generated values follow a uniform distribution in the range `[minval, maxval)`.
		
		The outputs are a deterministic function of `shape`, `seed`, `minval`, and `maxval`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  minval: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Minimum value (inclusive, scalar).
		  maxval: A `Tensor`. Must have the same type as `minval`.
		    Maximum value (exclusive, scalar).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `minval`.
	**/
	static public function stateless_random_uniform_int(shape:Dynamic, seed:Dynamic, minval:Dynamic, maxval:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_random_uniform_int_eager_fallback(shape:Dynamic, seed:Dynamic, minval:Dynamic, maxval:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values from a truncated normal distribution.
		
		The generated values follow a normal distribution with mean 0 and standard
		deviation 1, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		The outputs are a deterministic function of `shape` and `seed`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  dtype: An optional `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function stateless_truncated_normal(shape:Dynamic, seed:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_truncated_normal_eager_fallback(shape:Dynamic, seed:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}