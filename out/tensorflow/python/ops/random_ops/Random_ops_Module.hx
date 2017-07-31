/* This file is generated, do not edit! */
package tensorflow.python.ops.random_ops;
@:pythonImport("tensorflow.python.ops.random_ops") extern class Random_ops_Module {
	/**
		Convert to an int32 or int64 tensor, defaulting to int32 if empty.
	**/
	static public function _ShapeTensor(shape:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Draws samples from a multinomial distribution.
		
		Example:
		
		```python
		# samples has shape [1, 5], where each value is either 0 or 1 with equal
		# probability.
		samples = tf.multinomial(tf.log([[10., 10.]]), 5)
		```
		
		Args:
		  logits: 2-D Tensor with shape `[batch_size, num_classes]`.  Each slice
		    `[i, :]` represents the log-odds for all classes.
		  num_samples: 0-D.  Number of independent samples to draw for each row slice.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    @{tf.set_random_seed}
		    for behavior.
		  name: Optional name for the operation.
		
		Returns:
		  The drawn samples of shape `[batch_size, num_samples]`.
	**/
	static public function multinomial(logits:Dynamic, num_samples:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
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
		    @{tf.set_random_seed}
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random truncated normal values.
	**/
	static public function parameterized_truncated_normal(shape:Dynamic, ?means:Dynamic, ?stddevs:Dynamic, ?minvals:Dynamic, ?maxvals:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Randomly crops a tensor to a given size.
		
		Slices a shape `size` portion out of `value` at a uniformly chosen offset.
		Requires `value.shape >= size`.
		
		If a dimension should not be cropped, pass the full size of that dimension.
		For example, RGB images can be cropped with
		`size = [crop_height, crop_width, 3]`.
		
		Args:
		  value: Input tensor to crop.
		  size: 1-D tensor with size the rank of `value`.
		  seed: Python integer. Used to create a random seed. See
		    @{tf.set_random_seed}
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
		
		Example:
		
		  samples = tf.random_gamma([10], [0.5, 1.5])
		  # samples has shape [10, 2], where each slice [:, 0] and [:, 1] represents
		  # the samples drawn from each distribution
		
		  samples = tf.random_gamma([7, 5], [0.5, 1.5])
		  # samples has shape [7, 5, 2], where each slice [:, :, 0] and [:, :, 1]
		  # represents the 7x5 samples drawn from each of the two distributions
		
		  samples = tf.random_gamma([30], [[1.],[3.],[5.]], beta=[[3., 4.]])
		  # samples has shape [30, 3, 2], with 30 samples each of 3x2 distributions.
		
		  Note: Because internal calculations are done using `float64` and casting has
		  `floor` semantics, we must manually map zero outcomes to the smallest
		  possible positive floating-point value, i.e., `np.finfo(dtype).tiny`.  This
		  means that `np.finfo(dtype).tiny` occurs more frequently than it otherwise
		  should.  This bias can only happen for small values of `alpha`, i.e.,
		  `alpha << 1` or large values of `beta`, i.e., `beta >> 1`.
		
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
		    @{tf.set_random_seed}
		    for behavior.
		  name: Optional name for the operation.
		
		Returns:
		  samples: a `Tensor` of shape `tf.concat(shape, tf.shape(alpha + beta))`
		    with values of type `dtype`.
	**/
	static public function random_gamma(shape:Dynamic, alpha:Dynamic, ?beta:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
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
		    @{tf.set_random_seed}
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
		
		  samples = tf.random_poisson([0.5, 1.5], [10])
		  # samples has shape [10, 2], where each slice [:, 0] and [:, 1] represents
		  # the samples drawn from each distribution
		
		  samples = tf.random_poisson([12.2, 3.3], [7, 5])
		  # samples has shape [7, 5, 2], where each slice [:, :, 0] and [:, :, 1]
		  # represents the 7x5 samples drawn from each of the two distributions
		
		Args:
		  lam: A Tensor or Python value or N-D array of type `dtype`.
		    `lam` provides the rate parameter(s) describing the poisson
		    distribution(s) to sample.
		  shape: A 1-D integer Tensor or Python array. The shape of the output samples
		    to be drawn per "rate"-parameterized distribution.
		  dtype: The type of `lam` and the output: `float16`, `float32`, or
		    `float64`.
		  seed: A Python integer. Used to create a random seed for the distributions.
		    See
		    @{tf.set_random_seed}
		    for behavior.
		  name: Optional name for the operation.
		
		Returns:
		  samples: a `Tensor` of shape `tf.concat(shape, tf.shape(lam))` with
		    values of type `dtype`.
	**/
	static public function random_poisson(lam:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
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
		    @{tf.set_random_seed}
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of same shape and type as `value`, shuffled along its first
		  dimension.
	**/
	static public function random_shuffle(value:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
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
		  dtype: The type of the output: `float32`, `float64`, `int32`, or `int64`.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See @{tf.set_random_seed}
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random uniform values.
		
		Raises:
		  ValueError: If `dtype` is integral and `maxval` is not specified.
	**/
	static public function random_uniform(shape:Dynamic, ?minval:Dynamic, ?maxval:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
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
		    of the truncated normal distribution.
		  dtype: The type of the output.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    @{tf.set_random_seed}
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random truncated normal values.
	**/
	static public function truncated_normal(shape:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
}