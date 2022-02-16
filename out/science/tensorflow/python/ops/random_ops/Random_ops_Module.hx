/* This file is generated, do not edit! */
package tensorflow.python.ops.random_ops;
@:pythonImport("tensorflow.python.ops.random_ops") extern class Random_ops_Module {
	/**
		Draws samples from a multinomial distribution.
		
		Args:
		  logits: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    2-D Tensor with shape `[batch_size, num_classes]`.  Each slice `[i, :]`
		    represents the unnormalized log probabilities for all classes.
		  num_samples: A `Tensor` of type `int32`.
		    0-D.  Number of independent samples to draw for each row slice.
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 is set to be non-zero, the internal random number
		    generator is seeded by the given seed.  Otherwise, a random seed is used.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  output_dtype: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_dtype`.
	**/
	static public function Multinomial(logits:Dynamic, num_samples:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?output_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a normal distribution. The parameters may each be a
		
		scalar which applies to the entire output, or a vector of length shape[0] which
		stores the parameters for each batch.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor. Batches are indexed by the 0th dimension.
		  means: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    The mean parameter of each batch.
		  stdevs: A `Tensor`. Must have the same type as `means`.
		    The standard deviation parameter of each batch. Must be greater than 0.
		  minvals: A `Tensor`. Must have the same type as `means`.
		    The minimum cutoff. May be -infinity.
		  maxvals: A `Tensor`. Must have the same type as `means`.
		    The maximum cutoff. May be +infinity, and must be more than the minval
		    for each batch.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `means`.
	**/
	static public function ParameterizedTruncatedNormal(shape:Dynamic, means:Dynamic, stdevs:Dynamic, minvals:Dynamic, maxvals:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from the Gamma distribution(s) described by alpha.
		
		This op uses the algorithm by Marsaglia et al. to acquire samples via
		transformation-rejection from pairs of uniform and normal random variables.
		See http://dl.acm.org/citation.cfm?id=358414
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D integer tensor. Shape of independent samples to draw from each
		    distribution described by the shape parameters given in alpha.
		  alpha: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    A tensor in which each scalar is a "shape" parameter describing the
		    associated gamma distribution.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `alpha`.
	**/
	static public function RandomGamma(shape:Dynamic, alpha:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the derivative of a Gamma random sample w.r.t. `alpha`.
		
		Args:
		  alpha: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  sample: A `Tensor`. Must have the same type as `alpha`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `alpha`.
	**/
	static public function RandomGammaGrad(alpha:Dynamic, sample:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Use RandomPoissonV2 instead.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  rate: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		  seed: An optional `int`. Defaults to `0`.
		  seed2: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `rate`.
	**/
	static public function RandomPoisson(shape:Dynamic, rate:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from the Poisson distribution(s) described by rate.
		
		This op uses two algorithms, depending on rate. If rate >= 10, then
		the algorithm by Hormann is used to acquire samples via
		transformation-rejection.
		See http://www.sciencedirect.com/science/article/pii/0167668793909974.
		
		Otherwise, Knuth's algorithm is used to acquire samples via multiplying uniform
		random variables.
		See Donald E. Knuth (1969). Seminumerical Algorithms. The Art of Computer
		Programming, Volume 2. Addison Wesley
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D integer tensor. Shape of independent samples to draw from each
		    distribution described by the shape parameters given in rate.
		  rate: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`.
		    A tensor in which each scalar is a "rate" parameter describing the
		    associated poisson distribution.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  dtype: An optional `tf.DType` from: `tf.half, tf.float32, tf.float64, tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function RandomPoissonV2(shape:Dynamic, rate:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Randomly shuffles a tensor along its first dimension.
		
		  The tensor is shuffled along dimension 0, such that each `value[j]` is mapped
		  to one and only one `output[i]`. For example, a mapping that might occur for a
		  3x2 tensor is:
		
		```
		[[1, 2],       [[5, 6],
		 [3, 4],  ==>   [1, 2],
		 [5, 6]]        [3, 4]]
		```
		
		Args:
		  value: A `Tensor`. The tensor to be shuffled.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
	**/
	static public function RandomShuffle(value:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a normal distribution.
		
		The generated values will have mean 0 and standard deviation 1.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  dtype: A `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`.
		    The type of the output.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function RandomStandardNormal(shape:Dynamic, dtype:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a uniform distribution.
		
		The generated values follow a uniform distribution in the range `[0, 1)`. The
		lower bound 0 is included in the range, while the upper bound 1 is excluded.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  dtype: A `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`.
		    The type of the output.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function RandomUniform(shape:Dynamic, dtype:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random integers from a uniform distribution.
		
		The generated values are uniform integers in the range `[minval, maxval)`.
		The lower bound `minval` is included in the range, while the upper bound
		`maxval` is excluded.
		
		The random integers are slightly biased unless `maxval - minval` is an exact
		power of two.  The bias is small for values of `maxval - minval` significantly
		smaller than the range of the output (either `2^32` or `2^64`).
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  minval: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D.  Inclusive lower bound on the generated integers.
		  maxval: A `Tensor`. Must have the same type as `minval`.
		    0-D.  Exclusive upper bound on the generated integers.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `minval`.
	**/
	static public function RandomUniformInt(shape:Dynamic, minval:Dynamic, maxval:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a truncated normal distribution.
		
		The generated values follow a normal distribution with mean 0 and standard
		deviation 1, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  dtype: A `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`.
		    The type of the output.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function TruncatedNormal(shape:Dynamic, dtype:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _maybe_set_static_shape_helper(tensor:Dynamic, shape:Dynamic, postfix_tensor:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	static public var division : Dynamic;
	/**
		Draws samples from a multinomial distribution. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.random.categorical` instead.
		
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
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See `tf.random.set_seed` for behavior.
		  name: Optional name for the operation.
		  output_dtype: integer type to use for the output. Defaults to int64.
		
		Returns:
		  The drawn samples of shape `[batch_size, num_samples]`.
	**/
	static public function multinomial(logits:Dynamic, num_samples:Dynamic, ?seed:Dynamic, ?name:Dynamic, ?output_dtype:Dynamic):Dynamic;
	/**
		Implementation for random.categorical (v1) and random.categorical (v2).
	**/
	static public function multinomial_categorical_impl(logits:Dynamic, num_samples:Dynamic, dtype:Dynamic, seed:Dynamic):Dynamic;
	static public function multinomial_eager_fallback(logits:Dynamic, num_samples:Dynamic, seed:Dynamic, seed2:Dynamic, output_dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs random values from a truncated normal distribution.
		
		The generated values follow a normal distribution with specified mean and
		standard deviation, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  means: A 0-D Tensor or Python value of type `dtype`. The mean of the
		    truncated normal distribution.
		  stddevs: A 0-D Tensor or Python value of type `dtype`. The standard
		    deviation of the truncated normal distribution.
		  minvals: A 0-D Tensor or Python value of type `dtype`. The minimum value of
		    the truncated normal distribution.
		  maxvals: A 0-D Tensor or Python value of type `dtype`. The maximum value of
		    the truncated normal distribution.
		  dtype: The type of the output.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    `tf.random.set_seed`
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random truncated normal values.
	**/
	static public function parameterized_truncated_normal(shape:Dynamic, ?means:Dynamic, ?stddevs:Dynamic, ?minvals:Dynamic, ?maxvals:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	static public function parameterized_truncated_normal_eager_fallback(shape:Dynamic, means:Dynamic, stdevs:Dynamic, minvals:Dynamic, maxvals:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Randomly crops a tensor to a given size.
		
		Slices a shape `size` portion out of `value` at a uniformly chosen offset.
		Requires `value.shape >= size`.
		
		If a dimension should not be cropped, pass the full size of that dimension.
		For example, RGB images can be cropped with
		`size = [crop_height, crop_width, 3]`.
		
		Example usage:
		
		>>> image = [[1, 2, 3], [4, 5, 6]]
		>>> result = tf.image.random_crop(value=image, size=(1, 3))
		>>> result.shape.as_list()
		[1, 3]
		
		For producing deterministic results given a `seed` value, use
		`tf.image.stateless_random_crop`. Unlike using the `seed` param with
		`tf.image.random_*` ops, `tf.image.stateless_random_*` ops guarantee the same
		results given the same seed independent of how many times the function is
		called, and independent of global seed settings (e.g. tf.random.set_seed).
		
		Args:
		  value: Input tensor to crop.
		  size: 1-D tensor with size the rank of `value`.
		  seed: Python integer. Used to create a random seed. See
		    `tf.random.set_seed`
		    for behavior.
		  name: A name for this operation (optional).
		
		Returns:
		  A cropped tensor of the same rank as `value` and shape `size`.
	**/
	static public function random_crop(value:Dynamic, size:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function random_gamma(shape:Dynamic, alpha:Dynamic, ?beta:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	static public function random_gamma_eager_fallback(shape:Dynamic, alpha:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the derivative of a Gamma random sample w.r.t. `alpha`.
		
		Args:
		  alpha: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  sample: A `Tensor`. Must have the same type as `alpha`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `alpha`.
	**/
	static public function random_gamma_grad(alpha:Dynamic, sample:Dynamic, ?name:Dynamic):Dynamic;
	static public function random_gamma_grad_eager_fallback(alpha:Dynamic, sample:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function random_normal(shape:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Draws `shape` samples from each of the given Poisson distribution(s).
		
		`lam` is the rate parameter describing the distribution(s).
		
		Example:
		
		```python
		samples = tf.random.poisson([0.5, 1.5], [10])
		# samples has shape [10, 2], where each slice [:, 0] and [:, 1] represents
		# the samples drawn from each distribution
		
		samples = tf.random.poisson([12.2, 3.3], [7, 5])
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
		    `tf.random.set_seed`
		    for behavior.
		  name: Optional name for the operation.
		
		Returns:
		  samples: a `Tensor` of shape `tf.concat([shape, tf.shape(lam)], axis=0)`
		    with values of type `dtype`.
	**/
	static public function random_poisson(lam:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	static public function random_poisson_eager_fallback(shape:Dynamic, rate:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function random_poisson_v2(shape:Dynamic, lam:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	static public function random_poisson_v2_eager_fallback(shape:Dynamic, rate:Dynamic, seed:Dynamic, seed2:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function random_shuffle(value:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	static public function random_shuffle_eager_fallback(value:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs random values from a normal distribution.
		
		The generated values will have mean 0 and standard deviation 1.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  dtype: A `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`.
		    The type of the output.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function random_standard_normal(shape:Dynamic, dtype:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	static public function random_standard_normal_eager_fallback(shape:Dynamic, dtype:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function random_uniform(shape:Dynamic, ?minval:Dynamic, ?maxval:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	static public function random_uniform_eager_fallback(shape:Dynamic, dtype:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Outputs random integers from a uniform distribution.
		
		The generated values are uniform integers in the range `[minval, maxval)`.
		The lower bound `minval` is included in the range, while the upper bound
		`maxval` is excluded.
		
		The random integers are slightly biased unless `maxval - minval` is an exact
		power of two.  The bias is small for values of `maxval - minval` significantly
		smaller than the range of the output (either `2^32` or `2^64`).
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  minval: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D.  Inclusive lower bound on the generated integers.
		  maxval: A `Tensor`. Must have the same type as `minval`.
		    0-D.  Exclusive upper bound on the generated integers.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `minval`.
	**/
	static public function random_uniform_int(shape:Dynamic, minval:Dynamic, maxval:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	static public function random_uniform_int_eager_fallback(shape:Dynamic, minval:Dynamic, maxval:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Randomly crops a tensor to a given size in a deterministic manner.
		
		Slices a shape `size` portion out of `value` at a uniformly chosen offset.
		Requires `value.shape >= size`.
		
		If a dimension should not be cropped, pass the full size of that dimension.
		For example, RGB images can be cropped with
		`size = [crop_height, crop_width, 3]`.
		
		Guarantees the same results given the same `seed` independent of how many
		times the function is called, and independent of global seed settings (e.g.
		`tf.random.set_seed`).
		
		Usage Example:
		
		>>> image = [[[1, 2, 3], [4, 5, 6]], [[7, 8, 9], [10, 11, 12]]]
		>>> seed = (1, 2)
		>>> tf.image.stateless_random_crop(value=image, size=(1, 2, 3), seed=seed)
		<tf.Tensor: shape=(1, 2, 3), dtype=int32, numpy=
		array([[[1, 2, 3],
		        [4, 5, 6]]], dtype=int32)>
		
		Args:
		  value: Input tensor to crop.
		  size: 1-D tensor with size the rank of `value`.
		  seed: A shape [2] Tensor, the seed to the random number generator. Must have
		    dtype `int32` or `int64`. (When using XLA, only `int32` is allowed.)
		  name: A name for this operation (optional).
		
		Returns:
		  A cropped tensor of the same rank as `value` and shape `size`.
	**/
	static public function stateless_random_crop(value:Dynamic, size:Dynamic, seed:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function truncated_normal_eager_fallback(shape:Dynamic, dtype:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
}