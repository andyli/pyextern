/* This file is generated, do not edit! */
package tensorflow.python.ops.stateful_random_ops;
@:pythonImport("tensorflow.python.ops.stateful_random_ops") extern class Stateful_random_ops_Module {
	static public var ALGORITHM_TYPE : Dynamic;
	static public var DEFAULT_ALGORITHM : Dynamic;
	static public var MAX_INT64 : Dynamic;
	static public var MIN_INT64 : Dynamic;
	static public var PHILOX_STATE_SIZE : Dynamic;
	static public var RNG_ALG_PHILOX : Dynamic;
	static public var RNG_ALG_THREEFRY : Dynamic;
	static public var SEED_BIT_MASK : Dynamic;
	static public var SEED_MAX : Dynamic;
	static public var SEED_MIN : Dynamic;
	static public var SEED_SIZE : Dynamic;
	static public var SEED_TYPE : Dynamic;
	static public var SEED_TYPE_BITS : Dynamic;
	static public var SEED_UINT_SPAN : Dynamic;
	static public var STATE_TYPE : Dynamic;
	static public var THREEFRY_STATE_SIZE : Dynamic;
	static public var UINT64_HALF_SPAN : Dynamic;
	static public var UINT64_SPAN : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_state_shape(shape:Dynamic, alg:Dynamic):Dynamic;
	static public function _convert_to_state_tensor(t:Dynamic):Dynamic;
	static public function _get_counter_size(alg:Dynamic):Dynamic;
	static public function _get_state_size(alg:Dynamic):Dynamic;
	/**
		Makes a 1-D RNG state.
		
		Args:
		  state_size: an integer.
		  seed: an integer or 1-D tensor.
		
		Returns:
		  a 1-D tensor of shape [state_size] and dtype STATE_TYPE.
	**/
	static public function _make_1d_state(state_size:Dynamic, seed:Dynamic):Dynamic;
	static public function _make_state_from_seed(seed:Dynamic, alg:Dynamic):Dynamic;
	/**
		Convert to an int32 or int64 tensor, defaulting to int64 if empty.
	**/
	static public function _shape_tensor(shape:Dynamic):Dynamic;
	static public function _uint_to_int(n:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a RNG state from an integer or a vector.
		
		Example:
		
		>>> tf.random.create_rng_state(
		...     1234, "philox")
		<tf.Tensor: shape=(3,), dtype=int64, numpy=array([1234,    0,    0])>
		>>> tf.random.create_rng_state(
		...     [12, 34], "threefry")
		<tf.Tensor: shape=(2,), dtype=int64, numpy=array([12, 34])>
		
		Args:
		  seed: an integer or 1-D numpy array.
		  alg: the RNG algorithm. Can be a string, an `Algorithm` or an integer.
		
		Returns:
		  a 1-D numpy array whose size depends on the algorithm.
	**/
	static public function create_rng_state(seed:Dynamic, alg:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Retrieves the global generator.
		
		This function will create the global generator the first time it is called,
		and the generator will be placed at the default device at that time, so one
		needs to be careful when this function is first called. Using a generator
		placed on a less-ideal device will incur performance regression.
		
		Returns:
		  The global `tf.random.Generator` object.
	**/
	static public function get_global_generator():Dynamic;
	static public function get_replica_id():Dynamic;
	static public var global_generator : Dynamic;
	/**
		Non-deterministically generates some integers.
		
		This op may use some OS-provided source of non-determinism (e.g. an RNG), so
		each execution will give different results.
		
		Args:
		  shape: the shape of the result.
		  dtype: (optional) the dtype of the result.
		
		Returns:
		  a tensor whose element values are non-deterministically chosen.
	**/
	static public function non_deterministic_ints(shape:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Replaces the global generator with another `Generator` object.
		
		This function creates a new Generator object (and the Variable object within),
		which does not work well with tf.function because (1) tf.function puts
		restrictions on Variable creation thus reset_global_generator can't be freely
		used inside tf.function; (2) redirecting a global variable to
		a new object is problematic with tf.function because the old object may be
		captured by a 'tf.function'ed function and still be used by it.
		A 'tf.function'ed function only keeps weak references to variables,
		so deleting a variable and then calling that function again may raise an
		error, as demonstrated by
		random_test.py/RandomTest.testResetGlobalGeneratorBadWithDefun .
		
		Args:
		  generator: the new `Generator` object.
	**/
	static public function set_global_generator(generator:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}