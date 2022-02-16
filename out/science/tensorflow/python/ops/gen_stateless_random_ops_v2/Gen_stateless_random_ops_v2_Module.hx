/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_stateless_random_ops_v2;
@:pythonImport("tensorflow.python.ops.gen_stateless_random_ops_v2") extern class Gen_stateless_random_ops_v2_Module {
	/**
		Picks the best counter-based RNG algorithm based on device.
		
		This op picks the best counter-based RNG algorithm based on device.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function StatelessRandomGetAlg(?name:Dynamic):Dynamic;
	/**
		Scrambles seed into key and counter, using the best algorithm based on device.
		
		This op scrambles a shape-[2] seed into a key and a counter, both needed by counter-based RNG algorithms. The scrambing uses the best algorithm based on device. The scrambling is opaque but approximately satisfies the property that different seed results in different key/counter pair (which will in turn result in different random numbers).
		
		Args:
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (key, counter).
		
		  key: A `Tensor` of type `uint64`.
		  counter: A `Tensor` of type `uint64`.
	**/
	static public function StatelessRandomGetKeyCounter(seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Picks the best algorithm based on device, and scrambles seed into key and counter.
		
		This op picks the best counter-based RNG algorithm based on device, and scrambles a shape-[2] seed into a key and a counter, both needed by the counter-based algorithm. The scrambling is opaque but approximately satisfies the property that different seed results in different key/counter pair (which will in turn result in different random numbers).
		
		Args:
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (key, counter, alg).
		
		  key: A `Tensor` of type `uint64`.
		  counter: A `Tensor` of type `uint64`.
		  alg: A `Tensor` of type `int32`.
	**/
	static public function StatelessRandomGetKeyCounterAlg(seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values from a normal distribution.
		
		The generated values will have mean 0 and standard deviation 1.
		
		The outputs are a deterministic function of `shape`, `key`, `counter` and `alg`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  key: A `Tensor` of type `uint64`.
		    Key for the counter-based RNG algorithm (shape uint64[1]).
		  counter: A `Tensor` of type `uint64`.
		    Initial counter for the counter-based RNG algorithm (shape uint64[2] or uint64[1] depending on the algorithm). If a larger vector is given, only the needed portion on the left (i.e. [:N]) will be used.
		  alg: A `Tensor` of type `int32`. The RNG algorithm (shape int32[]).
		  dtype: An optional `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function StatelessRandomNormalV2(shape:Dynamic, key:Dynamic, counter:Dynamic, alg:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random integers from a uniform distribution.
		
		The generated values are uniform integers covering the whole range of `dtype`.
		
		The outputs are a deterministic function of `shape`, `key`, `counter` and `alg`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  key: A `Tensor` of type `uint64`.
		    Key for the counter-based RNG algorithm (shape uint64[1]).
		  counter: A `Tensor` of type `uint64`.
		    Initial counter for the counter-based RNG algorithm (shape uint64[2] or uint64[1] depending on the algorithm). If a larger vector is given, only the needed portion on the left (i.e. [:N]) will be used.
		  alg: A `Tensor` of type `int32`. The RNG algorithm (shape int32[]).
		  dtype: An optional `tf.DType` from: `tf.int32, tf.int64, tf.uint32, tf.uint64`. Defaults to `tf.uint64`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function StatelessRandomUniformFullIntV2(shape:Dynamic, key:Dynamic, counter:Dynamic, alg:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random integers from a uniform distribution.
		
		The generated values follow a uniform distribution in the range `[minval, maxval)`.
		
		The outputs are a deterministic function of `shape`, `key`, `counter`, `alg`, `minval` and `maxval`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  key: A `Tensor` of type `uint64`.
		    Key for the counter-based RNG algorithm (shape uint64[1]).
		  counter: A `Tensor` of type `uint64`.
		    Initial counter for the counter-based RNG algorithm (shape uint64[2] or uint64[1] depending on the algorithm). If a larger vector is given, only the needed portion on the left (i.e. [:N]) will be used.
		  alg: A `Tensor` of type `int32`. The RNG algorithm (shape int32[]).
		  minval: A `Tensor`. Must be one of the following types: `int32`, `int64`, `uint32`, `uint64`.
		    Minimum value (inclusive, scalar).
		  maxval: A `Tensor`. Must have the same type as `minval`.
		    Maximum value (exclusive, scalar).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `minval`.
	**/
	static public function StatelessRandomUniformIntV2(shape:Dynamic, key:Dynamic, counter:Dynamic, alg:Dynamic, minval:Dynamic, maxval:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random values from a uniform distribution.
		
		The generated values follow a uniform distribution in the range `[0, 1)`. The
		lower bound 0 is included in the range, while the upper bound 1 is excluded.
		
		The outputs are a deterministic function of `shape`, `key`, `counter` and `alg`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  key: A `Tensor` of type `uint64`.
		    Key for the counter-based RNG algorithm (shape uint64[1]).
		  counter: A `Tensor` of type `uint64`.
		    Initial counter for the counter-based RNG algorithm (shape uint64[2] or uint64[1] depending on the algorithm). If a larger vector is given, only the needed portion on the left (i.e. [:N]) will be used.
		  alg: A `Tensor` of type `int32`. The RNG algorithm (shape int32[]).
		  dtype: An optional `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function StatelessRandomUniformV2(shape:Dynamic, key:Dynamic, counter:Dynamic, alg:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values from a truncated normal distribution.
		
		The generated values follow a normal distribution with mean 0 and standard
		deviation 1, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		The outputs are a deterministic function of `shape`, `key`, `counter` and `alg`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  key: A `Tensor` of type `uint64`.
		    Key for the counter-based RNG algorithm (shape uint64[1]).
		  counter: A `Tensor` of type `uint64`.
		    Initial counter for the counter-based RNG algorithm (shape uint64[2] or uint64[1] depending on the algorithm). If a larger vector is given, only the needed portion on the left (i.e. [:N]) will be used.
		  alg: A `Tensor` of type `int32`. The RNG algorithm (shape int32[]).
		  dtype: An optional `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function StatelessTruncatedNormalV2(shape:Dynamic, key:Dynamic, counter:Dynamic, alg:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
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
		Picks the best counter-based RNG algorithm based on device.
		
		This op picks the best counter-based RNG algorithm based on device.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function stateless_random_get_alg(?name:Dynamic):Dynamic;
	static public function stateless_random_get_alg_eager_fallback(name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Scrambles seed into key and counter, using the best algorithm based on device.
		
		This op scrambles a shape-[2] seed into a key and a counter, both needed by counter-based RNG algorithms. The scrambing uses the best algorithm based on device. The scrambling is opaque but approximately satisfies the property that different seed results in different key/counter pair (which will in turn result in different random numbers).
		
		Args:
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (key, counter).
		
		  key: A `Tensor` of type `uint64`.
		  counter: A `Tensor` of type `uint64`.
	**/
	static public function stateless_random_get_key_counter(seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Picks the best algorithm based on device, and scrambles seed into key and counter.
		
		This op picks the best counter-based RNG algorithm based on device, and scrambles a shape-[2] seed into a key and a counter, both needed by the counter-based algorithm. The scrambling is opaque but approximately satisfies the property that different seed results in different key/counter pair (which will in turn result in different random numbers).
		
		Args:
		  seed: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2 seeds (shape [2]).
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (key, counter, alg).
		
		  key: A `Tensor` of type `uint64`.
		  counter: A `Tensor` of type `uint64`.
		  alg: A `Tensor` of type `int32`.
	**/
	static public function stateless_random_get_key_counter_alg(seed:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_random_get_key_counter_alg_eager_fallback(seed:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function stateless_random_get_key_counter_eager_fallback(seed:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values from a normal distribution.
		
		The generated values will have mean 0 and standard deviation 1.
		
		The outputs are a deterministic function of `shape`, `key`, `counter` and `alg`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  key: A `Tensor` of type `uint64`.
		    Key for the counter-based RNG algorithm (shape uint64[1]).
		  counter: A `Tensor` of type `uint64`.
		    Initial counter for the counter-based RNG algorithm (shape uint64[2] or uint64[1] depending on the algorithm). If a larger vector is given, only the needed portion on the left (i.e. [:N]) will be used.
		  alg: A `Tensor` of type `int32`. The RNG algorithm (shape int32[]).
		  dtype: An optional `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function stateless_random_normal_v2(shape:Dynamic, key:Dynamic, counter:Dynamic, alg:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_random_normal_v2_eager_fallback(shape:Dynamic, key:Dynamic, counter:Dynamic, alg:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random integers from a uniform distribution.
		
		The generated values are uniform integers covering the whole range of `dtype`.
		
		The outputs are a deterministic function of `shape`, `key`, `counter` and `alg`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  key: A `Tensor` of type `uint64`.
		    Key for the counter-based RNG algorithm (shape uint64[1]).
		  counter: A `Tensor` of type `uint64`.
		    Initial counter for the counter-based RNG algorithm (shape uint64[2] or uint64[1] depending on the algorithm). If a larger vector is given, only the needed portion on the left (i.e. [:N]) will be used.
		  alg: A `Tensor` of type `int32`. The RNG algorithm (shape int32[]).
		  dtype: An optional `tf.DType` from: `tf.int32, tf.int64, tf.uint32, tf.uint64`. Defaults to `tf.uint64`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function stateless_random_uniform_full_int_v2(shape:Dynamic, key:Dynamic, counter:Dynamic, alg:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_random_uniform_full_int_v2_eager_fallback(shape:Dynamic, key:Dynamic, counter:Dynamic, alg:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random integers from a uniform distribution.
		
		The generated values follow a uniform distribution in the range `[minval, maxval)`.
		
		The outputs are a deterministic function of `shape`, `key`, `counter`, `alg`, `minval` and `maxval`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  key: A `Tensor` of type `uint64`.
		    Key for the counter-based RNG algorithm (shape uint64[1]).
		  counter: A `Tensor` of type `uint64`.
		    Initial counter for the counter-based RNG algorithm (shape uint64[2] or uint64[1] depending on the algorithm). If a larger vector is given, only the needed portion on the left (i.e. [:N]) will be used.
		  alg: A `Tensor` of type `int32`. The RNG algorithm (shape int32[]).
		  minval: A `Tensor`. Must be one of the following types: `int32`, `int64`, `uint32`, `uint64`.
		    Minimum value (inclusive, scalar).
		  maxval: A `Tensor`. Must have the same type as `minval`.
		    Maximum value (exclusive, scalar).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `minval`.
	**/
	static public function stateless_random_uniform_int_v2(shape:Dynamic, key:Dynamic, counter:Dynamic, alg:Dynamic, minval:Dynamic, maxval:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_random_uniform_int_v2_eager_fallback(shape:Dynamic, key:Dynamic, counter:Dynamic, alg:Dynamic, minval:Dynamic, maxval:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random values from a uniform distribution.
		
		The generated values follow a uniform distribution in the range `[0, 1)`. The
		lower bound 0 is included in the range, while the upper bound 1 is excluded.
		
		The outputs are a deterministic function of `shape`, `key`, `counter` and `alg`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  key: A `Tensor` of type `uint64`.
		    Key for the counter-based RNG algorithm (shape uint64[1]).
		  counter: A `Tensor` of type `uint64`.
		    Initial counter for the counter-based RNG algorithm (shape uint64[2] or uint64[1] depending on the algorithm). If a larger vector is given, only the needed portion on the left (i.e. [:N]) will be used.
		  alg: A `Tensor` of type `int32`. The RNG algorithm (shape int32[]).
		  dtype: An optional `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function stateless_random_uniform_v2(shape:Dynamic, key:Dynamic, counter:Dynamic, alg:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_random_uniform_v2_eager_fallback(shape:Dynamic, key:Dynamic, counter:Dynamic, alg:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values from a truncated normal distribution.
		
		The generated values follow a normal distribution with mean 0 and standard
		deviation 1, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		The outputs are a deterministic function of `shape`, `key`, `counter` and `alg`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  key: A `Tensor` of type `uint64`.
		    Key for the counter-based RNG algorithm (shape uint64[1]).
		  counter: A `Tensor` of type `uint64`.
		    Initial counter for the counter-based RNG algorithm (shape uint64[2] or uint64[1] depending on the algorithm). If a larger vector is given, only the needed portion on the left (i.e. [:N]) will be used.
		  alg: A `Tensor` of type `int32`. The RNG algorithm (shape int32[]).
		  dtype: An optional `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function stateless_truncated_normal_v2(shape:Dynamic, key:Dynamic, counter:Dynamic, alg:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_truncated_normal_v2_eager_fallback(shape:Dynamic, key:Dynamic, counter:Dynamic, alg:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}