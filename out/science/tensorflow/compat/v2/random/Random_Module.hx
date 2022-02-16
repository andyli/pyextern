/* This file is generated, do not edit! */
package tensorflow.compat.v2.random;
@:pythonImport("tensorflow.compat.v2.random") extern class Random_Module {
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
		Generate the set of all classes.
		
		Deterministically generates and returns the set of all possible classes.
		For testing purposes.  There is no need to use this, since you might as
		well use full softmax or full logistic regression.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  num_true: An `int`.  The number of target classes per training example.
		  num_sampled: An `int`.  The number of possible classes.
		  unique: A `bool`. Ignored.
		    unique.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.
		    This operation deterministically returns the entire range
		    `[0, num_sampled]`.
		  true_expected_count: A tensor of type `float`.  Same shape as
		    `true_classes`. The expected counts under the sampling distribution
		    of each of `true_classes`. All returned values are 1.0.
		  sampled_expected_count: A tensor of type `float`. Same shape as
		    `sampled_candidates`. The expected counts under the sampling distribution
		    of each of `sampled_candidates`. All returned values are 1.0.
	**/
	static public function all_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Draws samples from a categorical distribution.
		
		Example:
		
		```python
		# samples has shape [1, 5], where each value is either 0 or 1 with equal
		# probability.
		samples = tf.random.categorical(tf.math.log([[0.5, 0.5]]), 5)
		```
		
		Args:
		  logits: 2-D Tensor with shape `[batch_size, num_classes]`.  Each slice
		    `[i, :]` represents the unnormalized log-probabilities for all classes.
		  num_samples: 0-D.  Number of independent samples to draw for each row slice.
		  dtype: integer type to use for the output. Defaults to int64.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See `tf.random.set_seed` for behavior.
		  name: Optional name for the operation.
		
		Returns:
		  The drawn samples of shape `[batch_size, num_samples]`.
	**/
	static public function categorical(logits:Dynamic, num_samples:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
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
		Samples a set of classes using the provided (fixed) base distribution.
		
		This operation randomly samples a tensor of sampled classes
		(`sampled_candidates`) from the range of integers `[0, range_max)`.
		
		The elements of `sampled_candidates` are drawn without replacement
		(if `unique=True`) or with replacement (if `unique=False`) from
		the base distribution.
		
		The base distribution is read from a file or passed in as an
		in-memory array. There is also an option to skew the distribution by
		applying a distortion power to the weights.
		
		In addition, this operation returns tensors `true_expected_count`
		and `sampled_expected_count` representing the number of times each
		of the target classes (`true_classes`) and the sampled
		classes (`sampled_candidates`) is expected to occur in an average
		tensor of sampled classes.  These values correspond to `Q(y|x)`
		defined in [this
		document](http://www.tensorflow.org/extras/candidate_sampling.pdf).
		If `unique=True`, then these are post-rejection probabilities and we
		compute them approximately.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  num_true: An `int`.  The number of target classes per training example.
		  num_sampled: An `int`.  The number of classes to randomly sample.
		  unique: A `bool`. Determines whether all sampled classes in a batch are
		    unique.
		  range_max: An `int`. The number of possible classes.
		  vocab_file: Each valid line in this file (which should have a CSV-like
		    format) corresponds to a valid word ID. IDs are in sequential order,
		    starting from num_reserved_ids. The last entry in each line is expected
		    to be a value corresponding to the count or relative probability. Exactly
		    one of `vocab_file` and `unigrams` needs to be passed to this operation.
		  distortion: The distortion is used to skew the unigram probability
		    distribution.  Each weight is first raised to the distortion's power
		    before adding to the internal unigram distribution. As a result,
		    `distortion = 1.0` gives regular unigram sampling (as defined by the vocab
		    file), and `distortion = 0.0` gives a uniform distribution.
		  num_reserved_ids: Optionally some reserved IDs can be added in the range
		    `[0, num_reserved_ids)` by the users. One use case is that a special
		    unknown word token is used as ID 0. These IDs will have a sampling
		    probability of 0.
		  num_shards: A sampler can be used to sample from a subset of the original
		    range in order to speed up the whole computation through parallelism. This
		    parameter (together with `shard`) indicates the number of partitions that
		    are being used in the overall computation.
		  shard: A sampler can be used to sample from a subset of the original range
		    in order to speed up the whole computation through parallelism. This
		    parameter (together with `num_shards`) indicates the particular partition
		    number of the operation, when partitioning is being used.
		  unigrams: A list of unigram counts or probabilities, one per ID in
		    sequential order. Exactly one of `vocab_file` and `unigrams` should be
		    passed to this operation.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.
		    The sampled classes.
		  true_expected_count: A tensor of type `float`.  Same shape as
		    `true_classes`. The expected counts under the sampling distribution
		    of each of `true_classes`.
		  sampled_expected_count: A tensor of type `float`. Same shape as
		    `sampled_candidates`. The expected counts under the sampling distribution
		    of each of `sampled_candidates`.
	**/
	static public function fixed_unigram_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?vocab_file:Dynamic, ?distortion:Dynamic, ?num_reserved_ids:Dynamic, ?num_shards:Dynamic, ?shard:Dynamic, ?unigrams:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Draws `shape` samples from each of the given Gamma distribution(s).
		
		`alpha` is the shape parameter describing the distribution(s), and `beta` is
		the inverse scale parameter(s).
		
		Note: Because internal calculations are done using `float64` and casting has
		`floor` semantics, we must manually map zero outcomes to the smallest
		possible positive floating-point value, i.e., `np.finfo(dtype).tiny`.  This
		means that `np.finfo(dtype).tiny` occurs more frequently than it otherwise
		should.  This bias can only happen for small values of `alpha`, i.e.,
		`alpha << 1` or large values of `beta`, i.e., `beta >> 1`.
		
		The samples are differentiable w.r.t. alpha and beta.
		The derivatives are computed using the approach described in
		(Figurnov et al., 2018).
		
		Example:
		
		```python
		samples = tf.random.gamma([10], [0.5, 1.5])
		# samples has shape [10, 2], where each slice [:, 0] and [:, 1] represents
		# the samples drawn from each distribution
		
		samples = tf.random.gamma([7, 5], [0.5, 1.5])
		# samples has shape [7, 5, 2], where each slice [:, :, 0] and [:, :, 1]
		# represents the 7x5 samples drawn from each of the two distributions
		
		alpha = tf.constant([[1.],[3.],[5.]])
		beta = tf.constant([[3., 4.]])
		samples = tf.random.gamma([30], alpha=alpha, beta=beta)
		# samples has shape [30, 3, 2], with 30 samples each of 3x2 distributions.
		
		loss = tf.reduce_mean(tf.square(samples))
		dloss_dalpha, dloss_dbeta = tf.gradients(loss, [alpha, beta])
		# unbiased stochastic derivatives of the loss function
		alpha.shape == dloss_dalpha.shape  # True
		beta.shape == dloss_dbeta.shape  # True
		```
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output samples
		    to be drawn per alpha/beta-parameterized distribution.
		  alpha: A Tensor or Python value or N-D array of type `dtype`. `alpha`
		    provides the shape parameter(s) describing the gamma distribution(s) to
		    sample. Must be broadcastable with `beta`.
		  beta: A Tensor or Python value or N-D array of type `dtype`. Defaults to 1.
		    `beta` provides the inverse scale parameter(s) of the gamma
		    distribution(s) to sample. Must be broadcastable with `alpha`.
		  dtype: The type of alpha, beta, and the output: `float16`, `float32`, or
		    `float64`.
		  seed: A Python integer. Used to create a random seed for the distributions.
		    See
		    `tf.random.set_seed`
		    for behavior.
		  name: Optional name for the operation.
		
		Returns:
		  samples: a `Tensor` of shape
		    `tf.concat([shape, tf.shape(alpha + beta)], axis=0)` with values of type
		    `dtype`.
		
		References:
		  Implicit Reparameterization Gradients:
		    [Figurnov et al., 2018]
		    (http://papers.nips.cc/paper/7326-implicit-reparameterization-gradients)
		    ([pdf]
		    (http://papers.nips.cc/paper/7326-implicit-reparameterization-gradients.pdf))
	**/
	static public function gamma(shape:Dynamic, alpha:Dynamic, ?beta:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
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
		Samples a set of classes from a distribution learned during training.
		
		This operation randomly samples a tensor of sampled classes
		(`sampled_candidates`) from the range of integers `[0, range_max)`.
		
		The elements of `sampled_candidates` are drawn without replacement
		(if `unique=True`) or with replacement (if `unique=False`) from
		the base distribution.
		
		The base distribution for this operation is constructed on the fly
		during training.  It is a unigram distribution over the target
		classes seen so far during training.  Every integer in `[0, range_max)`
		begins with a weight of 1, and is incremented by 1 each time it is
		seen as a target class.  The base distribution is not saved to checkpoints,
		so it is reset when the model is reloaded.
		
		In addition, this operation returns tensors `true_expected_count`
		and `sampled_expected_count` representing the number of times each
		of the target classes (`true_classes`) and the sampled
		classes (`sampled_candidates`) is expected to occur in an average
		tensor of sampled classes.  These values correspond to `Q(y|x)`
		defined in [this
		document](http://www.tensorflow.org/extras/candidate_sampling.pdf).
		If `unique=True`, then these are post-rejection probabilities and we
		compute them approximately.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  num_true: An `int`.  The number of target classes per training example.
		  num_sampled: An `int`.  The number of classes to randomly sample.
		  unique: A `bool`. Determines whether all sampled classes in a batch are
		    unique.
		  range_max: An `int`. The number of possible classes.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.
		    The sampled classes.
		  true_expected_count: A tensor of type `float`.  Same shape as
		    `true_classes`. The expected counts under the sampling distribution
		    of each of `true_classes`.
		  sampled_expected_count: A tensor of type `float`. Same shape as
		    `sampled_candidates`. The expected counts under the sampling distribution
		    of each of `sampled_candidates`.
	**/
	static public function learned_unigram_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Samples a set of classes using a log-uniform (Zipfian) base distribution.
		
		This operation randomly samples a tensor of sampled classes
		(`sampled_candidates`) from the range of integers `[0, range_max)`.
		
		The elements of `sampled_candidates` are drawn without replacement
		(if `unique=True`) or with replacement (if `unique=False`) from
		the base distribution.
		
		The base distribution for this operation is an approximately log-uniform
		or Zipfian distribution:
		
		`P(class) = (log(class + 2) - log(class + 1)) / log(range_max + 1)`
		
		This sampler is useful when the target classes approximately follow such
		a distribution - for example, if the classes represent words in a lexicon
		sorted in decreasing order of frequency. If your classes are not ordered by
		decreasing frequency, do not use this op.
		
		In addition, this operation returns tensors `true_expected_count`
		and `sampled_expected_count` representing the number of times each
		of the target classes (`true_classes`) and the sampled
		classes (`sampled_candidates`) is expected to occur in an average
		tensor of sampled classes.  These values correspond to `Q(y|x)`
		defined in [this
		document](http://www.tensorflow.org/extras/candidate_sampling.pdf).
		If `unique=True`, then these are post-rejection probabilities and we
		compute them approximately.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  num_true: An `int`.  The number of target classes per training example.
		  num_sampled: An `int`.  The number of classes to randomly sample.
		  unique: A `bool`. Determines whether all sampled classes in a batch are
		    unique.
		  range_max: An `int`. The number of possible classes.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.
		    The sampled classes.
		  true_expected_count: A tensor of type `float`.  Same shape as
		    `true_classes`. The expected counts under the sampling distribution
		    of each of `true_classes`.
		  sampled_expected_count: A tensor of type `float`. Same shape as
		    `sampled_candidates`. The expected counts under the sampling distribution
		    of each of `sampled_candidates`.
	**/
	static public function log_uniform_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a normal distribution.
		
		Example that generates a new set of random values every time:
		
		>>> tf.random.set_seed(5);
		>>> tf.random.normal([4], 0, 1, tf.float32)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=..., dtype=float32)>
		
		Example that outputs a reproducible result:
		
		>>> tf.random.set_seed(5);
		>>> tf.random.normal([2,2], 0, 1, tf.float32, seed=1)
		<tf.Tensor: shape=(2, 2), dtype=float32, numpy=
		array([[-1.3768897 , -0.01258316],
		      [-0.169515   ,  1.0824056 ]], dtype=float32)>
		
		In this case, we are setting both the global and operation-level seed to
		ensure this result is reproducible.  See `tf.random.set_seed` for more
		information.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  mean: A Tensor or Python value of type `dtype`, broadcastable with `stddev`.
		    The mean of the normal distribution.
		  stddev: A Tensor or Python value of type `dtype`, broadcastable with `mean`.
		    The standard deviation of the normal distribution.
		  dtype: The type of the output.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    `tf.random.set_seed`
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random normal values.
	**/
	static public function normal(shape:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Draws `shape` samples from each of the given Poisson distribution(s).
		
		`lam` is the rate parameter describing the distribution(s).
		
		Example:
		
		```python
		samples = tf.random.poisson([10], [0.5, 1.5])
		# samples has shape [10, 2], where each slice [:, 0] and [:, 1] represents
		# the samples drawn from each distribution
		
		samples = tf.random.poisson([7, 5], [12.2, 3.3])
		# samples has shape [7, 5, 2], where each slice [:, :, 0] and [:, :, 1]
		# represents the 7x5 samples drawn from each of the two distributions
		```
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output samples
		    to be drawn per "rate"-parameterized distribution.
		  lam: A Tensor or Python value or N-D array of type `dtype`.
		    `lam` provides the rate parameter(s) describing the poisson
		    distribution(s) to sample.
		  dtype: The type of the output: `float16`, `float32`, `float64`, `int32` or
		    `int64`.
		  seed: A Python integer. Used to create a random seed for the distributions.
		    See
		    `tf.random.set_seed`
		    for behavior.
		  name: Optional name for the operation.
		
		Returns:
		  samples: a `Tensor` of shape `tf.concat([shape, tf.shape(lam)], axis=0)`
		    with values of type `dtype`.
	**/
	static public function poisson(shape:Dynamic, lam:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
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
		Sets the global random seed.
		
		Operations that rely on a random seed actually derive it from two seeds:
		the global and operation-level seeds. This sets the global seed.
		
		Its interactions with operation-level seeds is as follows:
		
		  1. If neither the global seed nor the operation seed is set: A randomly
		    picked seed is used for this op.
		  2. If the global seed is set, but the operation seed is not:
		    The system deterministically picks an operation seed in conjunction with
		    the global seed so that it gets a unique random sequence. Within the
		    same version of tensorflow and user code, this sequence is deterministic.
		    However across different versions, this sequence might change. If the
		    code depends on particular seeds to work, specify both global
		    and operation-level seeds explicitly.
		  3. If the operation seed is set, but the global seed is not set:
		    A default global seed and the specified operation seed are used to
		    determine the random sequence.
		  4. If both the global and the operation seed are set:
		    Both seeds are used in conjunction to determine the random sequence.
		
		To illustrate the user-visible effects, consider these examples:
		
		If neither the global seed nor the operation seed is set, we get different
		results for every call to the random op and every re-run of the program:
		
		```python
		print(tf.random.uniform([1]))  # generates 'A1'
		print(tf.random.uniform([1]))  # generates 'A2'
		```
		
		(now close the program and run it again)
		
		```python
		print(tf.random.uniform([1]))  # generates 'A3'
		print(tf.random.uniform([1]))  # generates 'A4'
		```
		
		If the global seed is set but the operation seed is not set, we get different
		results for every call to the random op, but the same sequence for every
		re-run of the program:
		
		```python
		tf.random.set_seed(1234)
		print(tf.random.uniform([1]))  # generates 'A1'
		print(tf.random.uniform([1]))  # generates 'A2'
		```
		
		(now close the program and run it again)
		
		```python
		tf.random.set_seed(1234)
		print(tf.random.uniform([1]))  # generates 'A1'
		print(tf.random.uniform([1]))  # generates 'A2'
		```
		
		The reason we get 'A2' instead 'A1' on the second call of `tf.random.uniform`
		above is because the second call uses a different operation seed.
		
		Note that `tf.function` acts like a re-run of a program in this case. When
		the global seed is set but operation seeds are not set, the sequence of random
		numbers are the same for each `tf.function`. For example:
		
		```python
		tf.random.set_seed(1234)
		
		@tf.function
		def f():
		  a = tf.random.uniform([1])
		  b = tf.random.uniform([1])
		  return a, b
		
		@tf.function
		def g():
		  a = tf.random.uniform([1])
		  b = tf.random.uniform([1])
		  return a, b
		
		print(f())  # prints '(A1, A2)'
		print(g())  # prints '(A1, A2)'
		```
		
		If the operation seed is set, we get different results for every call to the
		random op, but the same sequence for every re-run of the program:
		
		```python
		print(tf.random.uniform([1], seed=1))  # generates 'A1'
		print(tf.random.uniform([1], seed=1))  # generates 'A2'
		```
		
		(now close the program and run it again)
		
		```python
		print(tf.random.uniform([1], seed=1))  # generates 'A1'
		print(tf.random.uniform([1], seed=1))  # generates 'A2'
		```
		
		The reason we get 'A2' instead 'A1' on the second call of `tf.random.uniform`
		above is because the same `tf.random.uniform` kernel (i.e. internal
		representation) is used by TensorFlow for all calls of it with the same
		arguments, and the kernel maintains an internal counter which is incremented
		every time it is executed, generating different results.
		
		Calling `tf.random.set_seed` will reset any such counters:
		
		```python
		tf.random.set_seed(1234)
		print(tf.random.uniform([1], seed=1))  # generates 'A1'
		print(tf.random.uniform([1], seed=1))  # generates 'A2'
		tf.random.set_seed(1234)
		print(tf.random.uniform([1], seed=1))  # generates 'A1'
		print(tf.random.uniform([1], seed=1))  # generates 'A2'
		```
		
		When multiple identical random ops are wrapped in a `tf.function`, their
		behaviors change because the ops no long share the same counter. For example:
		
		```python
		@tf.function
		def foo():
		  a = tf.random.uniform([1], seed=1)
		  b = tf.random.uniform([1], seed=1)
		  return a, b
		print(foo())  # prints '(A1, A1)'
		print(foo())  # prints '(A2, A2)'
		
		@tf.function
		def bar():
		  a = tf.random.uniform([1])
		  b = tf.random.uniform([1])
		  return a, b
		print(bar())  # prints '(A1, A2)'
		print(bar())  # prints '(A3, A4)'
		```
		
		The second call of `foo` returns '(A2, A2)' instead of '(A1, A1)' because
		`tf.random.uniform` maintains an internal counter. If you want `foo` to return
		'(A1, A1)' every time, use the stateless random ops such as
		`tf.random.stateless_uniform`. Also see `tf.random.experimental.Generator` for
		a new set of stateful random ops that use external variables to manage their
		states.
		
		Args:
		  seed: integer.
	**/
	static public function set_seed(seed:Dynamic):Dynamic;
	/**
		Randomly shuffles a tensor along its first dimension.
		
		The tensor is shuffled along dimension 0, such that each `value[j]` is mapped
		to one and only one `output[i]`. For example, a mapping that might occur for a
		3x2 tensor is:
		
		```python
		[[1, 2],       [[5, 6],
		 [3, 4],  ==>   [1, 2],
		 [5, 6]]        [3, 4]]
		```
		
		Args:
		  value: A Tensor to be shuffled.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    `tf.random.set_seed`
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of same shape and type as `value`, shuffled along its first
		  dimension.
	**/
	static public function shuffle(value:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values from a binomial distribution.
		
		The generated values follow a binomial distribution with specified count and
		probability of success parameters.
		
		This is a stateless version of `tf.random.Generator.binomial`: if run twice
		with the same seeds and shapes, it will produce the same pseudorandom numbers.
		The output is consistent across multiple runs on the same hardware (and
		between CPU and GPU), but may change between versions of TensorFlow or on
		non-CPU/GPU hardware.
		
		Example:
		
		```python
		counts = [10., 20.]
		# Probability of success.
		probs = [0.8]
		
		binomial_samples = tf.random.stateless_binomial(
		    shape=[2], seed=[123, 456], counts=counts, probs=probs)
		
		counts = ... # Shape [3, 1, 2]
		probs = ...  # Shape [1, 4, 2]
		shape = [3, 4, 3, 4, 2]
		# Sample shape will be [3, 4, 3, 4, 2]
		binomial_samples = tf.random.stateless_binomial(
		    shape=shape, seed=[123, 456], counts=counts, probs=probs)
		```
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		  counts: Tensor. The counts of the binomial distribution. Must be
		    broadcastable with `probs`, and broadcastable with the rightmost
		    dimensions of `shape`.
		  probs: Tensor. The probability of success for the binomial distribution.
		    Must be broadcastable with `counts` and broadcastable with the rightmost
		    dimensions of `shape`.
		  output_dtype: The type of the output. Default: tf.int32
		  name: A name for the operation (optional).
		
		Returns:
		  samples: A Tensor of the specified shape filled with random binomial
		    values.  For each i, each samples[..., i] is an independent draw from
		    the binomial distribution on counts[i] trials with probability of
		    success probs[i].
	**/
	static public function stateless_binomial(shape:Dynamic, seed:Dynamic, counts:Dynamic, probs:Dynamic, ?output_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Draws deterministic pseudorandom samples from a categorical distribution.
		
		This is a stateless version of `tf.categorical`: if run twice with the
		same seeds and shapes, it will produce the same pseudorandom numbers.  The
		output is consistent across multiple runs on the same hardware (and between
		CPU and GPU), but may change between versions of TensorFlow or on non-CPU/GPU
		hardware.
		
		
		Example:
		
		```python
		# samples has shape [1, 5], where each value is either 0 or 1 with equal
		# probability.
		samples = tf.random.stateless_categorical(
		    tf.math.log([[0.5, 0.5]]), 5, seed=[7, 17])
		```
		
		Args:
		  logits: 2-D Tensor with shape `[batch_size, num_classes]`.  Each slice
		    `[i, :]` represents the unnormalized log-probabilities for all classes.
		  num_samples: 0-D.  Number of independent samples to draw for each row slice.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		  dtype: integer type to use for the output. Defaults to int64.
		  name: Optional name for the operation.
		
		Returns:
		  The drawn samples of shape `[batch_size, num_samples]`.
	**/
	static public function stateless_categorical(logits:Dynamic, num_samples:Dynamic, seed:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values from a gamma distribution.
		
		The generated values follow a gamma distribution with specified concentration
		(`alpha`) and inverse scale (`beta`) parameters.
		
		This is a stateless version of `tf.random.gamma`: if run twice with the same
		seeds and shapes, it will produce the same pseudorandom numbers. The output is
		consistent across multiple runs on the same hardware (and between CPU and
		GPU),
		but may change between versions of TensorFlow or on non-CPU/GPU hardware.
		
		A slight difference exists in the interpretation of the `shape` parameter
		between `stateless_gamma` and `gamma`: in `gamma`, the `shape` is always
		prepended to the shape of the broadcast of `alpha` with `beta`; whereas in
		`stateless_gamma` the `shape` parameter must always encompass the shapes of
		each of `alpha` and `beta` (which must broadcast together to match the
		trailing dimensions of `shape`).
		
		Note: Because internal calculations are done using `float64` and casting has
		`floor` semantics, we must manually map zero outcomes to the smallest
		possible positive floating-point value, i.e., `np.finfo(dtype).tiny`.  This
		means that `np.finfo(dtype).tiny` occurs more frequently than it otherwise
		should.  This bias can only happen for small values of `alpha`, i.e.,
		`alpha << 1` or large values of `beta`, i.e., `beta >> 1`.
		
		The samples are differentiable w.r.t. alpha and beta.
		The derivatives are computed using the approach described in
		(Figurnov et al., 2018).
		
		Example:
		
		```python
		samples = tf.random.stateless_gamma([10, 2], seed=[12, 34], alpha=[0.5, 1.5])
		# samples has shape [10, 2], where each slice [:, 0] and [:, 1] represents
		# the samples drawn from each distribution
		
		samples = tf.random.stateless_gamma([7, 5, 2], seed=[12, 34], alpha=[.5, 1.5])
		# samples has shape [7, 5, 2], where each slice [:, :, 0] and [:, :, 1]
		# represents the 7x5 samples drawn from each of the two distributions
		
		alpha = tf.constant([[1.], [3.], [5.]])
		beta = tf.constant([[3., 4.]])
		samples = tf.random.stateless_gamma(
		    [30, 3, 2], seed=[12, 34], alpha=alpha, beta=beta)
		# samples has shape [30, 3, 2], with 30 samples each of 3x2 distributions.
		
		with tf.GradientTape() as tape:
		  tape.watch([alpha, beta])
		  loss = tf.reduce_mean(tf.square(tf.random.stateless_gamma(
		      [30, 3, 2], seed=[12, 34], alpha=alpha, beta=beta)))
		dloss_dalpha, dloss_dbeta = tape.gradient(loss, [alpha, beta])
		# unbiased stochastic derivatives of the loss function
		alpha.shape == dloss_dalpha.shape  # True
		beta.shape == dloss_dbeta.shape  # True
		```
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		  alpha: Tensor. The concentration parameter of the gamma distribution. Must
		    be broadcastable with `beta`, and broadcastable with the rightmost
		    dimensions of `shape`.
		  beta: Tensor. The inverse scale parameter of the gamma distribution. Must be
		    broadcastable with `alpha` and broadcastable with the rightmost dimensions
		    of `shape`.
		  dtype: Floating point dtype of `alpha`, `beta`, and the output.
		  name: A name for the operation (optional).
		
		Returns:
		  samples: A Tensor of the specified shape filled with random gamma values.
		    For each i, each `samples[..., i] is an independent draw from the gamma
		    distribution with concentration alpha[i] and scale beta[i].
	**/
	static public function stateless_gamma(shape:Dynamic, seed:Dynamic, alpha:Dynamic, ?beta:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values from a normal distribution.
		
		This is a stateless version of `tf.random.normal`: if run twice with the
		same seeds and shapes, it will produce the same pseudorandom numbers.  The
		output is consistent across multiple runs on the same hardware (and between
		CPU and GPU), but may change between versions of TensorFlow or on non-CPU/GPU
		hardware.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		  mean: A 0-D Tensor or Python value of type `dtype`. The mean of the normal
		    distribution.
		  stddev: A 0-D Tensor or Python value of type `dtype`. The standard deviation
		    of the normal distribution.
		  dtype: The type of the output.
		  name: A name for the operation (optional).
		  alg: The RNG algorithm used to generate the random numbers. See
		    `tf.random.stateless_uniform` for a detailed explanation.
		
		Returns:
		  A tensor of the specified shape filled with random normal values.
	**/
	static public function stateless_normal(shape:Dynamic, seed:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?alg:Dynamic):Dynamic;
	/**
		Outputs random values from a truncated normal distribution.
		
		The generated values follow a normal distribution with specified mean and
		standard deviation, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		
		Examples:
		
		Sample from a Truncated normal, with deferring shape parameters that
		broadcast.
		
		>>> means = 0.
		>>> stddevs = tf.math.exp(tf.random.uniform(shape=[2, 3]))
		>>> minvals = [-1., -2., -1000.]
		>>> maxvals = [[10000.], [1.]]
		>>> y = tf.random.stateless_parameterized_truncated_normal(
		...   shape=[10, 2, 3], seed=[7, 17],
		...   means=means, stddevs=stddevs, minvals=minvals, maxvals=maxvals)
		>>> y.shape
		TensorShape([10, 2, 3])
		
		Args:
		  shape: A 1-D integer `Tensor` or Python array. The shape of the output
		    tensor.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		  means: A `Tensor` or Python value of type `dtype`. The mean of the truncated
		    normal distribution. This must broadcast with `stddevs`, `minvals` and
		    `maxvals`, and the broadcasted shape must be dominated by `shape`.
		  stddevs: A `Tensor` or Python value of type `dtype`. The standard deviation
		    of the truncated normal distribution. This must broadcast with `means`,
		    `minvals` and `maxvals`, and the broadcasted shape must be dominated by
		    `shape`.
		  minvals: A `Tensor` or Python value of type `dtype`. The minimum value of
		    the truncated normal distribution. This must broadcast with `means`,
		    `stddevs` and `maxvals`, and the broadcasted shape must be dominated by
		    `shape`.
		  maxvals: A `Tensor` or Python value of type `dtype`. The maximum value of
		    the truncated normal distribution. This must broadcast with `means`,
		    `stddevs` and `minvals`, and the broadcasted shape must be dominated by
		    `shape`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random truncated normal values.
	**/
	static public function stateless_parameterized_truncated_normal(shape:Dynamic, seed:Dynamic, ?means:Dynamic, ?stddevs:Dynamic, ?minvals:Dynamic, ?maxvals:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values from a Poisson distribution.
		
		The generated values follow a Poisson distribution with specified rate
		parameter.
		
		This is a stateless version of `tf.random.poisson`: if run twice with the same
		seeds and shapes, it will produce the same pseudorandom numbers. The output is
		consistent across multiple runs on the same hardware, but may change between
		versions of TensorFlow or on non-CPU/GPU hardware.
		
		A slight difference exists in the interpretation of the `shape` parameter
		between `stateless_poisson` and `poisson`: in `poisson`, the `shape` is always
		prepended to the shape of `lam`; whereas in `stateless_poisson` the shape of
		`lam` must match the trailing dimensions of `shape`.
		
		Example:
		
		```python
		samples = tf.random.stateless_poisson([10, 2], seed=[12, 34], lam=[5, 15])
		# samples has shape [10, 2], where each slice [:, 0] and [:, 1] represents
		# the samples drawn from each distribution
		
		samples = tf.random.stateless_poisson([7, 5, 2], seed=[12, 34], lam=[5, 15])
		# samples has shape [7, 5, 2], where each slice [:, :, 0] and [:, :, 1]
		# represents the 7x5 samples drawn from each of the two distributions
		
		rate = tf.constant([[1.], [3.], [5.]])
		samples = tf.random.stateless_poisson([30, 3, 1], seed=[12, 34], lam=rate)
		# samples has shape [30, 3, 1], with 30 samples each of 3x1 distributions.
		```
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		  lam: Tensor. The rate parameter "lambda" of the Poisson distribution. Shape
		    must match the rightmost dimensions of `shape`.
		  dtype: Dtype of the samples (int or float dtypes are permissible, as samples
		    are discrete). Default: int32.
		  name: A name for the operation (optional).
		
		Returns:
		  samples: A Tensor of the specified shape filled with random Poisson values.
		    For each i, each `samples[..., i]` is an independent draw from the Poisson
		    distribution with rate `lam[i]`.
	**/
	static public function stateless_poisson(shape:Dynamic, seed:Dynamic, lam:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values, truncated normally distributed.
		
		This is a stateless version of `tf.random.truncated_normal`: if run twice with
		the same seeds and shapes, it will produce the same pseudorandom numbers.  The
		output is consistent across multiple runs on the same hardware (and between
		CPU and GPU), but may change between versions of TensorFlow or on non-CPU/GPU
		hardware.
		
		The generated values follow a normal distribution with specified mean and
		standard deviation, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		  mean: A 0-D Tensor or Python value of type `dtype`. The mean of the
		    truncated normal distribution.
		  stddev: A 0-D Tensor or Python value of type `dtype`. The standard deviation
		    of the normal distribution, before truncation.
		  dtype: The type of the output.
		  name: A name for the operation (optional).
		  alg: The RNG algorithm used to generate the random numbers. See
		    `tf.random.stateless_uniform` for a detailed explanation.
		
		Returns:
		  A tensor of the specified shape filled with random truncated normal values.
	**/
	static public function stateless_truncated_normal(shape:Dynamic, seed:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?alg:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values from a uniform distribution.
		
		This is a stateless version of `tf.random.uniform`: if run twice with the
		same seeds and shapes, it will produce the same pseudorandom numbers.  The
		output is consistent across multiple runs on the same hardware (and between
		CPU and GPU), but may change between versions of TensorFlow or on non-CPU/GPU
		hardware.
		
		The generated values follow a uniform distribution in the range
		`[minval, maxval)`. The lower bound `minval` is included in the range, while
		the upper bound `maxval` is excluded.
		
		For floats, the default range is `[0, 1)`.  For ints, at least `maxval` must
		be specified explicitly.
		
		In the integer case, the random integers are slightly biased unless
		`maxval - minval` is an exact power of two.  The bias is small for values of
		`maxval - minval` significantly smaller than the range of the output (either
		`2**32` or `2**64`).
		
		For full-range (i.e. inclusive of both max and min) random integers, pass
		`minval=None` and `maxval=None` with an integer `dtype`. For an integer dtype
		either both `minval` and `maxval` must be `None` or neither may be `None`. For
		example:
		```python
		ints = tf.random.stateless_uniform(
		    [10], seed=(2, 3), minval=None, maxval=None, dtype=tf.int32)
		```
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		  minval: A Tensor or Python value of type `dtype`, broadcastable with
		    `shape` (for integer types, broadcasting is not supported, so it needs to
		    be a scalar). The lower bound on the range of random values to
		    generate. Pass `None` for full-range integers.  Defaults to 0.
		  maxval: A Tensor or Python value of type `dtype`, broadcastable with
		    `shape` (for integer types, broadcasting is not supported, so it needs to
		    be a scalar). The upper bound on the range of random values to generate.
		    Defaults to 1 if `dtype` is floating point. Pass `None` for full-range
		    integers.
		  dtype: The type of the output: `float16`, `float32`, `float64`, `int32`, or
		    `int64`. For unbounded uniform ints (`minval`, `maxval` both `None`),
		    `uint32` and `uint64` may be used.
		  name: A name for the operation (optional).
		  alg: The RNG algorithm used to generate the random numbers. Valid
		    choices are `"philox"` for [the Philox
		    algorithm](https://www.thesalmons.org/john/random123/papers/random123sc11.pdf),
		    `"threefry"` for [the ThreeFry
		    algorithm](https://www.thesalmons.org/john/random123/papers/random123sc11.pdf),
		    and `"auto_select"` (default) for the system to automatically
		    select an algorithm based the device type. Values of
		    `tf.random.Algorithm` can also be used. Note that with
		    `"auto_select"`, the outputs of this function may change when
		    it is running on a different device.
		
		Returns:
		  A tensor of the specified shape filled with random uniform values.
		
		Raises:
		  ValueError: If `dtype` is integral and only one of `minval` or `maxval` is
		    specified.
	**/
	static public function stateless_uniform(shape:Dynamic, seed:Dynamic, ?minval:Dynamic, ?maxval:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?alg:Dynamic):Dynamic;
	/**
		Outputs random values from a truncated normal distribution.
		
		The values are drawn from a normal distribution with specified mean and
		standard deviation, discarding and re-drawing any samples that are more than
		two standard deviations from the mean.
		
		Examples:
		
		>>> tf.random.truncated_normal(shape=[2])
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([..., ...], dtype=float32)>
		
		>>> tf.random.truncated_normal(shape=[2], mean=3, stddev=1, dtype=tf.float32)
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([..., ...], dtype=float32)>
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  mean: A 0-D Tensor or Python value of type `dtype`. The mean of the
		    truncated normal distribution.
		  stddev: A 0-D Tensor or Python value of type `dtype`. The standard deviation
		    of the normal distribution, before truncation.
		  dtype: The type of the output. Restricted to floating-point types:
		    `tf.half`, `tf.float`, `tf.double`, etc.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See `tf.random.set_seed` for more information.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random truncated normal values.
	**/
	static public function truncated_normal(shape:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a uniform distribution.
		
		The generated values follow a uniform distribution in the range
		`[minval, maxval)`. The lower bound `minval` is included in the range, while
		the upper bound `maxval` is excluded.
		
		For floats, the default range is `[0, 1)`.  For ints, at least `maxval` must
		be specified explicitly.
		
		In the integer case, the random integers are slightly biased unless
		`maxval - minval` is an exact power of two.  The bias is small for values of
		`maxval - minval` significantly smaller than the range of the output (either
		`2**32` or `2**64`).
		
		Examples:
		
		>>> tf.random.uniform(shape=[2])
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([..., ...], dtype=float32)>
		>>> tf.random.uniform(shape=[], minval=-1., maxval=0.)
		<tf.Tensor: shape=(), dtype=float32, numpy=-...>
		>>> tf.random.uniform(shape=[], minval=5, maxval=10, dtype=tf.int64)
		<tf.Tensor: shape=(), dtype=int64, numpy=...>
		
		The `seed` argument produces a deterministic sequence of tensors across
		multiple calls. To repeat that sequence, use `tf.random.set_seed`:
		
		>>> tf.random.set_seed(5)
		>>> tf.random.uniform(shape=[], maxval=3, dtype=tf.int32, seed=10)
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		>>> tf.random.uniform(shape=[], maxval=3, dtype=tf.int32, seed=10)
		<tf.Tensor: shape=(), dtype=int32, numpy=0>
		>>> tf.random.set_seed(5)
		>>> tf.random.uniform(shape=[], maxval=3, dtype=tf.int32, seed=10)
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		>>> tf.random.uniform(shape=[], maxval=3, dtype=tf.int32, seed=10)
		<tf.Tensor: shape=(), dtype=int32, numpy=0>
		
		Without `tf.random.set_seed` but with a `seed` argument is specified, small
		changes to function graphs or previously executed operations will change the
		returned value. See `tf.random.set_seed` for details.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  minval: A Tensor or Python value of type `dtype`, broadcastable with
		    `shape` (for integer types, broadcasting is not supported, so it needs to
		    be a scalar). The lower bound on the range of random values to generate
		    (inclusive).  Defaults to 0.
		  maxval: A Tensor or Python value of type `dtype`, broadcastable with
		    `shape` (for integer types, broadcasting is not supported, so it needs to
		    be a scalar). The upper bound on the range of random values to generate
		    (exclusive). Defaults to 1 if `dtype` is floating point.
		  dtype: The type of the output: `float16`, `float32`, `float64`, `int32`,
		    or `int64`.
		  seed: A Python integer. Used in combination with `tf.random.set_seed` to
		    create a reproducible sequence of tensors across multiple calls.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random uniform values.
		
		Raises:
		  ValueError: If `dtype` is integral and `maxval` is not specified.
	**/
	static public function uniform(shape:Dynamic, ?minval:Dynamic, ?maxval:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Samples a set of classes using a uniform base distribution.
		
		This operation randomly samples a tensor of sampled classes
		(`sampled_candidates`) from the range of integers `[0, range_max)`.
		
		The elements of `sampled_candidates` are drawn without replacement
		(if `unique=True`) or with replacement (if `unique=False`) from
		the base distribution.
		
		The base distribution for this operation is the uniform distribution
		over the range of integers `[0, range_max)`.
		
		In addition, this operation returns tensors `true_expected_count`
		and `sampled_expected_count` representing the number of times each
		of the target classes (`true_classes`) and the sampled
		classes (`sampled_candidates`) is expected to occur in an average
		tensor of sampled classes.  These values correspond to `Q(y|x)`
		defined in [this
		document](http://www.tensorflow.org/extras/candidate_sampling.pdf).
		If `unique=True`, then these are post-rejection probabilities and we
		compute them approximately.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  num_true: An `int`.  The number of target classes per training example.
		  num_sampled: An `int`.  The number of classes to randomly sample. The
		    `sampled_candidates` return value will have shape `[num_sampled]`. If
		    `unique=True`, `num_sampled` must be less than or equal to `range_max`.
		  unique: A `bool`. Determines whether all sampled classes in a batch are
		    unique.
		  range_max: An `int`. The number of possible classes.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.  The
		    sampled classes, either with possible duplicates (`unique=False`) or all
		    unique (`unique=True`). In either case, `sampled_candidates` is
		    independent of the true classes.
		  true_expected_count: A tensor of type `float`.  Same shape as
		    `true_classes`. The expected counts under the sampling distribution
		    of each of `true_classes`.
		  sampled_expected_count: A tensor of type `float`. Same shape as
		    `sampled_candidates`. The expected counts under the sampling distribution
		    of each of `sampled_candidates`.
	**/
	static public function uniform_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
}