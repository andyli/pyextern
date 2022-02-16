/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_stateful_random_ops;
@:pythonImport("tensorflow.python.ops.gen_stateful_random_ops") extern class Gen_stateful_random_ops_Module {
	/**
		Non-deterministically generates some integers.
		
		This op may use some OS-provided source of non-determinism (e.g. an RNG), so each execution will give different results.
		
		Args:
		  shape: A `Tensor`. The shape of the output tensor.
		  dtype: An optional `tf.DType`. Defaults to `tf.int64`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function NonDeterministicInts(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Advance the counter of a counter-based RNG.
		
		The state of the RNG after
		`rng_read_and_skip(n)` will be the same as that after `uniform([n])`
		(or any other distribution). The actual increment added to the
		counter is an unspecified implementation choice.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    The handle of the resource variable that stores the state of the RNG.
		  alg: A `Tensor` of type `int32`. The RNG algorithm.
		  delta: A `Tensor` of type `uint64`. The amount of advancement.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function RngReadAndSkip(resource:Dynamic, alg:Dynamic, delta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Advance the counter of a counter-based RNG.
		
		The state of the RNG after
		`rng_skip(n)` will be the same as that after `stateful_uniform([n])`
		(or any other distribution). The actual increment added to the
		counter is an unspecified implementation detail.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    The handle of the resource variable that stores the state of the RNG.
		  algorithm: A `Tensor` of type `int64`. The RNG algorithm.
		  delta: A `Tensor` of type `int64`. The amount of advancement.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function RngSkip(resource:Dynamic, algorithm:Dynamic, delta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		  algorithm: A `Tensor` of type `int64`.
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  counts: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`.
		  probs: A `Tensor`. Must have the same type as `counts`.
		  dtype: An optional `tf.DType` from: `tf.half, tf.float32, tf.float64, tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function StatefulRandomBinomial(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, counts:Dynamic, probs:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a normal distribution. This op is deprecated in favor of op 'StatefulStandardNormalV2'
		
		The generated values will have mean 0 and standard deviation 1.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    The handle of the resource variable that stores the state of the RNG.
		  shape: A `Tensor`. The shape of the output tensor.
		  dtype: An optional `tf.DType`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function StatefulStandardNormal(resource:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a normal distribution.
		
		The generated values will have mean 0 and standard deviation 1.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    The handle of the resource variable that stores the state of the RNG.
		  algorithm: A `Tensor` of type `int64`. The RNG algorithm.
		  shape: A `Tensor`. The shape of the output tensor.
		  dtype: An optional `tf.DType`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function StatefulStandardNormalV2(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a truncated normal distribution.
		
		The generated values follow a normal distribution with mean 0 and standard
		deviation 1, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    The handle of the resource variable that stores the state of the RNG.
		  algorithm: A `Tensor` of type `int64`. The RNG algorithm.
		  shape: A `Tensor`. The shape of the output tensor.
		  dtype: An optional `tf.DType`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function StatefulTruncatedNormal(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a uniform distribution.
		
		The generated values follow a uniform distribution in the range `[0, 1)`. The
		lower bound 0 is included in the range, while the upper bound 1 is excluded.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    The handle of the resource variable that stores the state of the RNG.
		  algorithm: A `Tensor` of type `int64`. The RNG algorithm.
		  shape: A `Tensor`. The shape of the output tensor.
		  dtype: An optional `tf.DType`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function StatefulUniform(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random integers from a uniform distribution.
		
		The generated values are uniform integers covering the whole range of `dtype`.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    The handle of the resource variable that stores the state of the RNG.
		  algorithm: A `Tensor` of type `int64`. The RNG algorithm.
		  shape: A `Tensor`. The shape of the output tensor.
		  dtype: An optional `tf.DType`. Defaults to `tf.uint64`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function StatefulUniformFullInt(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random integers from a uniform distribution.
		
		The generated values are uniform integers in the range `[minval, maxval)`.
		The lower bound `minval` is included in the range, while the upper bound
		`maxval` is excluded.
		
		The random integers are slightly biased unless `maxval - minval` is an exact
		power of two.  The bias is small for values of `maxval - minval` significantly
		smaller than the range of the output (either `2^32` or `2^64`).
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    The handle of the resource variable that stores the state of the RNG.
		  algorithm: A `Tensor` of type `int64`. The RNG algorithm.
		  shape: A `Tensor`. The shape of the output tensor.
		  minval: A `Tensor`. Minimum value (inclusive, scalar).
		  maxval: A `Tensor`. Must have the same type as `minval`.
		    Maximum value (exclusive, scalar).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `minval`.
	**/
	static public function StatefulUniformInt(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, minval:Dynamic, maxval:Dynamic, ?name:Dynamic):Dynamic;
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
		Non-deterministically generates some integers.
		
		This op may use some OS-provided source of non-determinism (e.g. an RNG), so each execution will give different results.
		
		Args:
		  shape: A `Tensor`. The shape of the output tensor.
		  dtype: An optional `tf.DType`. Defaults to `tf.int64`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function non_deterministic_ints(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function non_deterministic_ints_eager_fallback(shape:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Advance the counter of a counter-based RNG.
		
		The state of the RNG after
		`rng_read_and_skip(n)` will be the same as that after `uniform([n])`
		(or any other distribution). The actual increment added to the
		counter is an unspecified implementation choice.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    The handle of the resource variable that stores the state of the RNG.
		  alg: A `Tensor` of type `int32`. The RNG algorithm.
		  delta: A `Tensor` of type `uint64`. The amount of advancement.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function rng_read_and_skip(resource:Dynamic, alg:Dynamic, delta:Dynamic, ?name:Dynamic):Dynamic;
	static public function rng_read_and_skip_eager_fallback(resource:Dynamic, alg:Dynamic, delta:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Advance the counter of a counter-based RNG.
		
		The state of the RNG after
		`rng_skip(n)` will be the same as that after `stateful_uniform([n])`
		(or any other distribution). The actual increment added to the
		counter is an unspecified implementation detail.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    The handle of the resource variable that stores the state of the RNG.
		  algorithm: A `Tensor` of type `int64`. The RNG algorithm.
		  delta: A `Tensor` of type `int64`. The amount of advancement.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function rng_skip(resource:Dynamic, algorithm:Dynamic, delta:Dynamic, ?name:Dynamic):Dynamic;
	static public function rng_skip_eager_fallback(resource:Dynamic, algorithm:Dynamic, delta:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		  algorithm: A `Tensor` of type `int64`.
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  counts: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`.
		  probs: A `Tensor`. Must have the same type as `counts`.
		  dtype: An optional `tf.DType` from: `tf.half, tf.float32, tf.float64, tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function stateful_random_binomial(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, counts:Dynamic, probs:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateful_random_binomial_eager_fallback(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, counts:Dynamic, probs:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs random values from a normal distribution. This op is deprecated in favor of op 'StatefulStandardNormalV2'
		
		The generated values will have mean 0 and standard deviation 1.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    The handle of the resource variable that stores the state of the RNG.
		  shape: A `Tensor`. The shape of the output tensor.
		  dtype: An optional `tf.DType`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function stateful_standard_normal(resource:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateful_standard_normal_eager_fallback(resource:Dynamic, shape:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs random values from a normal distribution.
		
		The generated values will have mean 0 and standard deviation 1.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    The handle of the resource variable that stores the state of the RNG.
		  algorithm: A `Tensor` of type `int64`. The RNG algorithm.
		  shape: A `Tensor`. The shape of the output tensor.
		  dtype: An optional `tf.DType`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function stateful_standard_normal_v2(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateful_standard_normal_v2_eager_fallback(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs random values from a truncated normal distribution.
		
		The generated values follow a normal distribution with mean 0 and standard
		deviation 1, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    The handle of the resource variable that stores the state of the RNG.
		  algorithm: A `Tensor` of type `int64`. The RNG algorithm.
		  shape: A `Tensor`. The shape of the output tensor.
		  dtype: An optional `tf.DType`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function stateful_truncated_normal(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateful_truncated_normal_eager_fallback(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs random values from a uniform distribution.
		
		The generated values follow a uniform distribution in the range `[0, 1)`. The
		lower bound 0 is included in the range, while the upper bound 1 is excluded.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    The handle of the resource variable that stores the state of the RNG.
		  algorithm: A `Tensor` of type `int64`. The RNG algorithm.
		  shape: A `Tensor`. The shape of the output tensor.
		  dtype: An optional `tf.DType`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function stateful_uniform(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateful_uniform_eager_fallback(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs random integers from a uniform distribution.
		
		The generated values are uniform integers covering the whole range of `dtype`.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    The handle of the resource variable that stores the state of the RNG.
		  algorithm: A `Tensor` of type `int64`. The RNG algorithm.
		  shape: A `Tensor`. The shape of the output tensor.
		  dtype: An optional `tf.DType`. Defaults to `tf.uint64`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function stateful_uniform_full_int(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateful_uniform_full_int_eager_fallback(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs random integers from a uniform distribution.
		
		The generated values are uniform integers in the range `[minval, maxval)`.
		The lower bound `minval` is included in the range, while the upper bound
		`maxval` is excluded.
		
		The random integers are slightly biased unless `maxval - minval` is an exact
		power of two.  The bias is small for values of `maxval - minval` significantly
		smaller than the range of the output (either `2^32` or `2^64`).
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    The handle of the resource variable that stores the state of the RNG.
		  algorithm: A `Tensor` of type `int64`. The RNG algorithm.
		  shape: A `Tensor`. The shape of the output tensor.
		  minval: A `Tensor`. Minimum value (inclusive, scalar).
		  maxval: A `Tensor`. Must have the same type as `minval`.
		    Maximum value (exclusive, scalar).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `minval`.
	**/
	static public function stateful_uniform_int(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, minval:Dynamic, maxval:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateful_uniform_int_eager_fallback(resource:Dynamic, algorithm:Dynamic, shape:Dynamic, minval:Dynamic, maxval:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}