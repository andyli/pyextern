/* This file is generated, do not edit! */
package tensorflow.compat.v1.random;
@:pythonImport("tensorflow.compat.v1.random") extern class Random_Module {
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
		samples = tf.random.categorical(tf.log([[10., 10.]]), 5)
		```
		
		Args:
		  logits: 2-D Tensor with shape `[batch_size, num_classes]`.  Each slice
		    `[i, :]` represents the unnormalized log-probabilities for all classes.
		  num_samples: 0-D.  Number of independent samples to draw for each row slice.
		  dtype: integer type to use for the output. Defaults to int64.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See `tf.set_random_seed` for behavior.
		  name: Optional name for the operation.
		
		Returns:
		  The drawn samples of shape `[batch_size, num_samples]`.
	**/
	static public function categorical(logits:Dynamic, num_samples:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
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
		The derivatives are computed using the approach described in the paper
		
		[Michael Figurnov, Shakir Mohamed, Andriy Mnih.
		Implicit Reparameterization Gradients, 2018](https://arxiv.org/abs/1805.08498)
		
		Example:
		
		```python
		samples = tf.random_gamma([10], [0.5, 1.5])
		# samples has shape [10, 2], where each slice [:, 0] and [:, 1] represents
		# the samples drawn from each distribution
		
		samples = tf.random_gamma([7, 5], [0.5, 1.5])
		# samples has shape [7, 5, 2], where each slice [:, :, 0] and [:, :, 1]
		# represents the 7x5 samples drawn from each of the two distributions
		
		alpha = tf.constant([[1.],[3.],[5.]])
		beta = tf.constant([[3., 4.]])
		samples = tf.random_gamma([30], alpha=alpha, beta=beta)
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
		    `tf.set_random_seed`
		    for behavior.
		  name: Optional name for the operation.
		
		Returns:
		  samples: a `Tensor` of shape
		    `tf.concat([shape, tf.shape(alpha + beta)], axis=0)` with values of type
		    `dtype`.
	**/
	static public function gamma(shape:Dynamic, alpha:Dynamic, ?beta:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the local seeds an operation should use given an op-specific seed.
		
		Given operation-specific seed, `op_seed`, this helper function returns two
		seeds derived from graph-level and op-level seeds. Many random operations
		internally use the two seeds to allow user to change the seed globally for a
		graph, or for only specific operations.
		
		For details on how the graph-level seed interacts with op seeds, see
		`tf.random.set_random_seed`.
		
		Args:
		  op_seed: integer.
		
		Returns:
		  A tuple of two integers that should be used for the local seed of this
		  operation.
	**/
	static public function get_seed(op_seed:Dynamic):Dynamic;
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
		Draws samples from a multinomial distribution. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.random.categorical instead.
		
		Example:
		
		```python
		# samples has shape [1, 5], where each value is either 0 or 1 with equal
		# probability.
		samples = tf.multinomial(tf.log([[10., 10.]]), 5)
		```
		
		Args:
		  logits: 2-D Tensor with shape `[batch_size, num_classes]`.  Each slice
		    `[i, :]` represents the unnormalized log-probabilities for all classes.
		  num_samples: 0-D.  Number of independent samples to draw for each row slice.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See `tf.set_random_seed` for behavior.
		  name: Optional name for the operation.
		  output_dtype: integer type to use for the output. Defaults to int64.
		
		Returns:
		  The drawn samples of shape `[batch_size, num_samples]`.
	**/
	static public function multinomial(logits:Dynamic, num_samples:Dynamic, ?seed:Dynamic, ?name:Dynamic, ?output_dtype:Dynamic):Dynamic;
	/**
		Outputs random values from a normal distribution.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  mean: A 0-D Tensor or Python value of type `dtype`. The mean of the normal
		    distribution.
		  stddev: A 0-D Tensor or Python value of type `dtype`. The standard deviation
		    of the normal distribution.
		  dtype: The type of the output.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    `tf.set_random_seed`
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
		samples = tf.random_poisson([0.5, 1.5], [10])
		# samples has shape [10, 2], where each slice [:, 0] and [:, 1] represents
		# the samples drawn from each distribution
		
		samples = tf.random_poisson([12.2, 3.3], [7, 5])
		# samples has shape [7, 5, 2], where each slice [:, :, 0] and [:, :, 1]
		# represents the 7x5 samples drawn from each of the two distributions
		```
		
		Args:
		  lam: A Tensor or Python value or N-D array of type `dtype`.
		    `lam` provides the rate parameter(s) describing the poisson
		    distribution(s) to sample.
		  shape: A 1-D integer Tensor or Python array. The shape of the output samples
		    to be drawn per "rate"-parameterized distribution.
		  dtype: The type of the output: `float16`, `float32`, `float64`, `int32` or
		    `int64`.
		  seed: A Python integer. Used to create a random seed for the distributions.
		    See
		    `tf.set_random_seed`
		    for behavior.
		  name: Optional name for the operation.
		
		Returns:
		  samples: a `Tensor` of shape `tf.concat([shape, tf.shape(lam)], axis=0)`
		    with values of type `dtype`.
	**/
	static public function poisson(lam:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sets the graph-level random seed.
		
		Operations that rely on a random seed actually derive it from two seeds:
		the graph-level and operation-level seeds. This sets the graph-level seed.
		
		Its interactions with operation-level seeds is as follows:
		
		  1. If neither the graph-level nor the operation seed is set:
		    A random seed is used for this op.
		  2. If the graph-level seed is set, but the operation seed is not:
		    The system deterministically picks an operation seed in conjunction
		    with the graph-level seed so that it gets a unique random sequence.
		  3. If the graph-level seed is not set, but the operation seed is set:
		    A default graph-level seed and the specified operation seed are used to
		    determine the random sequence.
		  4. If both the graph-level and the operation seed are set:
		    Both seeds are used in conjunction to determine the random sequence.
		
		To illustrate the user-visible effects, consider these examples:
		
		To generate different sequences across sessions, set neither
		graph-level nor op-level seeds:
		
		```python
		a = tf.random_uniform([1])
		b = tf.random_normal([1])
		
		print("Session 1")
		with tf.Session() as sess1:
		  print(sess1.run(a))  # generates 'A1'
		  print(sess1.run(a))  # generates 'A2'
		  print(sess1.run(b))  # generates 'B1'
		  print(sess1.run(b))  # generates 'B2'
		
		print("Session 2")
		with tf.Session() as sess2:
		  print(sess2.run(a))  # generates 'A3'
		  print(sess2.run(a))  # generates 'A4'
		  print(sess2.run(b))  # generates 'B3'
		  print(sess2.run(b))  # generates 'B4'
		```
		
		To generate the same repeatable sequence for an op across sessions, set the
		seed for the op:
		
		```python
		a = tf.random_uniform([1], seed=1)
		b = tf.random_normal([1])
		
		# Repeatedly running this block with the same graph will generate the same
		# sequence of values for 'a', but different sequences of values for 'b'.
		print("Session 1")
		with tf.Session() as sess1:
		  print(sess1.run(a))  # generates 'A1'
		  print(sess1.run(a))  # generates 'A2'
		  print(sess1.run(b))  # generates 'B1'
		  print(sess1.run(b))  # generates 'B2'
		
		print("Session 2")
		with tf.Session() as sess2:
		  print(sess2.run(a))  # generates 'A1'
		  print(sess2.run(a))  # generates 'A2'
		  print(sess2.run(b))  # generates 'B3'
		  print(sess2.run(b))  # generates 'B4'
		```
		
		To make the random sequences generated by all ops be repeatable across
		sessions, set a graph-level seed:
		
		```python
		tf.random.set_random_seed(1234)
		a = tf.random_uniform([1])
		b = tf.random_normal([1])
		
		# Repeatedly running this block with the same graph will generate the same
		# sequences of 'a' and 'b'.
		print("Session 1")
		with tf.Session() as sess1:
		  print(sess1.run(a))  # generates 'A1'
		  print(sess1.run(a))  # generates 'A2'
		  print(sess1.run(b))  # generates 'B1'
		  print(sess1.run(b))  # generates 'B2'
		
		print("Session 2")
		with tf.Session() as sess2:
		  print(sess2.run(a))  # generates 'A1'
		  print(sess2.run(a))  # generates 'A2'
		  print(sess2.run(b))  # generates 'B1'
		  print(sess2.run(b))  # generates 'B2'
		```
		
		Args:
		  seed: integer.
	**/
	static public function set_random_seed(seed:Dynamic):Dynamic;
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
		    `tf.set_random_seed`
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of same shape and type as `value`, shuffled along its first
		  dimension.
	**/
	static public function shuffle(value:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Draws deterministic pseudorandom samples from a categorical distribution.
		
		This is a stateless version of `tf.categorical`: if run twice with the
		same seeds, it will produce the same pseudorandom numbers.  The output is
		consistent across multiple runs on the same hardware (and between CPU
		and GPU), but may change between versions of TensorFlow or on non-CPU/GPU
		hardware.
		
		Example:
		
		```python
		# samples has shape [1, 5], where each value is either 0 or 1 with equal
		# probability.
		samples = tf.random.stateless_categorical(
		    tf.log([[10., 10.]]), 5, seed=[7, 17])
		```
		
		Args:
		  logits: 2-D Tensor with shape `[batch_size, num_classes]`.  Each slice
		    `[i, :]` represents the unnormalized log-probabilities for all classes.
		  num_samples: 0-D.  Number of independent samples to draw for each row slice.
		  seed: A shape [2] integer Tensor of seeds to the random number generator.
		  dtype: integer type to use for the output. Defaults to int64.
		  name: Optional name for the operation.
		
		Returns:
		  The drawn samples of shape `[batch_size, num_samples]`.
	**/
	static public function stateless_categorical(logits:Dynamic, num_samples:Dynamic, seed:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Draws deterministic pseudorandom samples from a multinomial distribution. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.random.stateless_categorical instead.
		
		This is a stateless version of `tf.multinomial`: if run twice with the
		same seeds, it will produce the same pseudorandom numbers.  The output is
		consistent across multiple runs on the same hardware (and between CPU
		and GPU), but may change between versions of TensorFlow or on non-CPU/GPU
		hardware.
		
		Example:
		
		```python
		# samples has shape [1, 5], where each value is either 0 or 1 with equal
		# probability.
		samples = tf.random.stateless_multinomial(
		    tf.log([[10., 10.]]), 5, seed=[7, 17])
		```
		
		Args:
		  logits: 2-D Tensor with shape `[batch_size, num_classes]`.  Each slice
		    `[i, :]` represents the unnormalized log-probabilities for all classes.
		  num_samples: 0-D.  Number of independent samples to draw for each row slice.
		  seed: A shape [2] integer Tensor of seeds to the random number generator.
		  output_dtype: integer type to use for the output. Defaults to int64.
		  name: Optional name for the operation.
		
		Returns:
		  The drawn samples of shape `[batch_size, num_samples]`.
	**/
	static public function stateless_multinomial(logits:Dynamic, num_samples:Dynamic, seed:Dynamic, ?output_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values from a normal distribution.
		
		This is a stateless version of `tf.random_normal`: if run twice with the
		same seeds, it will produce the same pseudorandom numbers.  The output is
		consistent across multiple runs on the same hardware (and between CPU
		and GPU), but may change between versions of TensorFlow or on non-CPU/GPU
		hardware.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  seed: A shape [2] integer Tensor of seeds to the random number generator.
		  mean: A 0-D Tensor or Python value of type `dtype`. The mean of the normal
		    distribution.
		  stddev: A 0-D Tensor or Python value of type `dtype`. The standard deviation
		    of the normal distribution.
		  dtype: The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random normal values.
	**/
	static public function stateless_normal(shape:Dynamic, seed:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values, truncated normally distributed.
		
		This is a stateless version of `tf.truncated_normal`: if run twice with the
		same seeds, it will produce the same pseudorandom numbers.  The output is
		consistent across multiple runs on the same hardware (and between CPU
		and GPU), but may change between versions of TensorFlow or on non-CPU/GPU
		hardware.
		
		The generated values follow a normal distribution with specified mean and
		standard deviation, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  seed: A shape [2] integer Tensor of seeds to the random number generator.
		  mean: A 0-D Tensor or Python value of type `dtype`. The mean of the
		    truncated normal distribution.
		  stddev: A 0-D Tensor or Python value of type `dtype`. The standard deviation
		    of the normal distribution, before truncation.
		  dtype: The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random truncated normal values.
	**/
	static public function stateless_truncated_normal(shape:Dynamic, seed:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values from a uniform distribution.
		
		This is a stateless version of `tf.random_uniform`: if run twice with the
		same seeds, it will produce the same pseudorandom numbers.  The output is
		consistent across multiple runs on the same hardware (and between CPU
		and GPU), but may change between versions of TensorFlow or on non-CPU/GPU
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
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  seed: A shape [2] integer Tensor of seeds to the random number generator.
		  minval: A 0-D Tensor or Python value of type `dtype`. The lower bound on the
		    range of random values to generate.  Defaults to 0.
		  maxval: A 0-D Tensor or Python value of type `dtype`. The upper bound on the
		    range of random values to generate.  Defaults to 1 if `dtype` is floating
		    point.
		  dtype: The type of the output: `float16`, `float32`, `float64`, `int32`, or
		    `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random uniform values.
		
		Raises:
		  ValueError: If `dtype` is integral and `maxval` is not specified.
	**/
	static public function stateless_uniform(shape:Dynamic, seed:Dynamic, ?minval:Dynamic, ?maxval:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a truncated normal distribution.
		
		The generated values follow a normal distribution with specified mean and
		standard deviation, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  mean: A 0-D Tensor or Python value of type `dtype`. The mean of the
		    truncated normal distribution.
		  stddev: A 0-D Tensor or Python value of type `dtype`. The standard deviation
		    of the normal distribution, before truncation.
		  dtype: The type of the output.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    `tf.set_random_seed`
		    for behavior.
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
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  minval: A 0-D Tensor or Python value of type `dtype`. The lower bound on the
		    range of random values to generate.  Defaults to 0.
		  maxval: A 0-D Tensor or Python value of type `dtype`. The upper bound on
		    the range of random values to generate.  Defaults to 1 if `dtype` is
		    floating point.
		  dtype: The type of the output: `float16`, `float32`, `float64`, `int32`,
		    or `int64`.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See `tf.set_random_seed`
		    for behavior.
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