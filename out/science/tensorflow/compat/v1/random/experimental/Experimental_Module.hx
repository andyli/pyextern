/* This file is generated, do not edit! */
package tensorflow.compat.v1.random.experimental;
@:pythonImport("tensorflow.compat.v1.random.experimental") extern class Experimental_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	/**
		Folds in data to an RNG seed to form a new RNG seed.
		
		For example, in a distributed-training setting, suppose we have a master seed
		and a replica ID. We want to fold the replica ID into the master seed to
		form a "replica seed" to be used by that replica later on, so that different
		replicas will generate different random numbers but the reproducibility of the
		whole system can still be controlled by the master seed:
		
		>>> master_seed = [1, 2]
		>>> replica_id = 3
		>>> replica_seed = tf.random.experimental.stateless_fold_in(
		...   master_seed, replica_id)
		>>> print(replica_seed)
		tf.Tensor([1105988140          3], shape=(2,), dtype=int32)
		>>> tf.random.stateless_normal(shape=[3], seed=replica_seed)
		<tf.Tensor: shape=(3,), dtype=float32, numpy=array([0.03197195, 0.8979765 ,
		0.13253039], dtype=float32)>
		
		Args:
		  seed: an RNG seed (a tensor with shape [2] and dtype `int32` or
		    `int64`). (When using XLA, only `int32` is allowed.)
		  data: an `int32` or `int64` scalar representing data to be folded in to the
		    seed.
		  alg: The RNG algorithm used to generate the random numbers. See
		    `tf.random.stateless_uniform` for a detailed explanation.
		
		Returns:
		  A new RNG seed that is a deterministic function of the inputs and is
		  statistically safe for producing a stream of new pseudo-random values. It
		  will have the same dtype as `data` (if `data` doesn't have an explict dtype,
		  the dtype will be determined by `tf.convert_to_tensor`).
	**/
	static public function stateless_fold_in(seed:Dynamic, data:Dynamic, ?alg:Dynamic):Dynamic;
	/**
		Splits an RNG seed into `num` new seeds by adding a leading axis.
		
		Example:
		
		>>> seed = [1, 2]
		>>> new_seeds = tf.random.experimental.stateless_split(seed, num=3)
		>>> print(new_seeds)
		tf.Tensor(
		[[1105988140 1738052849]
		 [-335576002  370444179]
		 [  10670227 -246211131]], shape=(3, 2), dtype=int32)
		>>> tf.random.stateless_normal(shape=[3], seed=new_seeds[0, :])
		<tf.Tensor: shape=(3,), dtype=float32, numpy=array([-0.59835213, -0.9578608 ,
		0.9002807 ], dtype=float32)>
		
		Args:
		  seed: an RNG seed (a tensor with shape [2] and dtype `int32` or
		    `int64`). (When using XLA, only `int32` is allowed.)
		  num: optional, a positive integer or scalar tensor indicating the number of
		    seeds to produce (default 2).
		  alg: The RNG algorithm used to generate the random numbers. See
		    `tf.random.stateless_uniform` for a detailed explanation.
		
		Returns:
		  A tensor with shape [num, 2] representing `num` new seeds. It will have the
		  same dtype as `seed` (if `seed` doesn't have an explict dtype, the dtype
		  will be determined by `tf.convert_to_tensor`).
	**/
	static public function stateless_split(seed:Dynamic, ?num:Dynamic, ?alg:Dynamic):Dynamic;
}