/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.distribution_util;
@:pythonImport("tensorflow.contrib.distributions.python.ops.distribution_util") extern class Distribution_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Assert that that x and y are within machine epsilon of each other.
		
		Args:
		  x: Floating-point `Tensor`
		  y: Floating-point `Tensor`
		  data: The tensors to print out if the condition is `False`. Defaults to
		    error message and first few entries of `x` and `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).
		
		Returns:
		  Op raising `InvalidArgumentError` if |x - y| > machine epsilon.
	**/
	static public function assert_close(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert that x has integer components (or floats equal to integers).
		
		Args:
		  x: Floating-point `Tensor`
		  data: The tensors to print out if the condition is `False`. Defaults to
		    error message and first few entries of `x` and `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).
		
		Returns:
		  Op raising `InvalidArgumentError` if round(x) != x.
	**/
	static public function assert_integer_form(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	static public function assert_symmetric(matrix:Dynamic):Dynamic;
	/**
		Returns the size of a specific dimension.
	**/
	static public function dimension_size(x:Dynamic, axis:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Assert x is a non-negative tensor, and optionally of integers.
	**/
	static public function embed_check_nonnegative_discrete(x:Dynamic, ?check_integer:Dynamic):Dynamic;
	/**
		Creates a (batch of) lower triangular matrix from a vector of inputs.
		
		If `x.get_shape()` is `[b1, b2, ..., bK, d]` then the output shape is `[b1,
		b2, ..., bK, n, n]` where `n` is such that `d = n(n+1)/2`, i.e.,
		`n = int(0.5 * (math.sqrt(1. + 8. * d) - 1.))`.
		
		Although the non-batch complexity is O(n**2), large constants and sub-optimal
		vectorization means the complexity of this function is 5x slower than zeroing
		out the upper triangular, i.e., `tf.matrix_band_part(X, -1, 0)`. This
		function becomes competitive only when several matmul/cholesky/etc ops can be
		ellided in constructing the input. Example: wiring a fully connected layer as
		a covariance matrix; this function reduces the final layer by 2x and possibly
		reduces the network arch complexity considerably. In most cases it is better
		to simply build a full matrix and zero out the upper triangular elements,
		e.g., `tril = tf.matrix_band_part(full, -1, 0)`, rather than directly
		construct a lower triangular.
		
		Example:
		
		```python
		fill_lower_triangular([1, 2, 3, 4, 5, 6])
		# Returns: [[1, 0, 0],
		#           [2, 3, 0],
		#           [4, 5, 6]]
		```
		
		For comparison, a pure numpy version of this function can be found in
		`distribution_util_test.py`, function `_fill_lower_triangular`.
		
		Args:
		  x: `Tensor` representing lower triangular elements.
		  validate_args: Python `bool`, default `False`. Whether to ensure the shape
		    of `x` can be mapped to a lower triangular matrix (controls non-static
		    checks only).
		  name: Python `str`. The name to give this op.
		
		Returns:
		  tril: `Tensor` with lower triangular elements filled from `x`.
		
		Raises:
		  ValueError: if shape if `x` has static shape which cannot be mapped to a
		    lower triangular matrix.
	**/
	static public function fill_lower_triangular(x:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generate a new seed, from the given seed and salt.
	**/
	static public function gen_new_seed(seed:Dynamic, salt:Dynamic):Dynamic;
	/**
		Converts logit to probabilities (or vice-versa), and returns both.
		
		Args:
		  logits: Floating-point `Tensor` representing log-odds.
		  probs: Floating-point `Tensor` representing probabilities.
		  multidimensional: Python `bool`, default `False`.
		    If `True`, represents whether the last dimension of `logits` or `probs`,
		    a `[N1, N2, ...  k]` dimensional tensor, representing the
		    logit or probability of `shape[-1]` classes.
		  validate_args: Python `bool`, default `False`. When `True`, either assert
		    `0 <= probs <= 1` (if not `multidimensional`) or that the last dimension
		    of `probs` sums to one.
		  name: A name for this operation (optional).
		
		Returns:
		  logits, probs: Tuple of `Tensor`s. If `probs` has an entry that is `0` or
		    `1`, then the corresponding entry in the returned logit will be `-Inf` and
		    `Inf` respectively.
		
		Raises:
		  ValueError: if neither `probs` nor `logits` were passed in, or both were.
	**/
	static public function get_logits_and_probs(?logits:Dynamic, ?probs:Dynamic, ?multidimensional:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns `True` if `scale` is a `LinearOperator` that is known to be diag.
		
		Args:
		  scale:  `LinearOperator` instance.
		
		Returns:
		  Python `bool`.
		
		Raises:
		  TypeError:  If `scale` is not a `LinearOperator`.
	**/
	static public function is_diagonal_scale(scale:Dynamic):Dynamic;
	/**
		Multinomial coefficient.
		
		Given `n` and `counts`, where `counts` has last dimension `k`, we compute
		the multinomial coefficient as:
		
		```n! / sum_i n_i!```
		
		where `i` runs over all `k` classes.
		
		Args:
		  n: Floating-point `Tensor` broadcastable with `counts`. This represents `n`
		    outcomes.
		  counts: Floating-point `Tensor` broadcastable with `n`. This represents
		    counts in `k` classes, where `k` is the last dimension of the tensor.
		  name: A name for this operation (optional).
		
		Returns:
		  `Tensor` representing the multinomial coefficient between `n` and `counts`.
	**/
	static public function log_combinations(n:Dynamic, counts:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a LinOp from `scale_diag`, `scale_identity_multiplier` kwargs.
	**/
	static public function make_diag_scale(loc:Dynamic, scale_diag:Dynamic, scale_identity_multiplier:Dynamic, validate_args:Dynamic, assert_positive:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transform diagonal of [batch-]matrix, leave rest of matrix unchanged.
		
		Create a trainable covariance defined by a Cholesky factor:
		
		```python
		# Transform network layer into 2 x 2 array.
		matrix_values = tf.contrib.layers.fully_connected(activations, 4)
		matrix = tf.reshape(matrix_values, (batch_size, 2, 2))
		
		# Make the diagonal positive. If the upper triangle was zero, this would be a
		# valid Cholesky factor.
		chol = matrix_diag_transform(matrix, transform=tf.nn.softplus)
		
		# OperatorPDCholesky ignores the upper triangle.
		operator = OperatorPDCholesky(chol)
		```
		
		Example of heteroskedastic 2-D linear regression.
		
		```python
		# Get a trainable Cholesky factor.
		matrix_values = tf.contrib.layers.fully_connected(activations, 4)
		matrix = tf.reshape(matrix_values, (batch_size, 2, 2))
		chol = matrix_diag_transform(matrix, transform=tf.nn.softplus)
		
		# Get a trainable mean.
		mu = tf.contrib.layers.fully_connected(activations, 2)
		
		# This is a fully trainable multivariate normal!
		dist = tf.contrib.distributions.MVNCholesky(mu, chol)
		
		# Standard log loss. Minimizing this will "train" mu and chol, and then dist
		# will be a distribution predicting labels as multivariate Gaussians.
		loss = -1 * tf.reduce_mean(dist.log_prob(labels))
		```
		
		Args:
		  matrix:  Rank `R` `Tensor`, `R >= 2`, where the last two dimensions are
		    equal.
		  transform:  Element-wise function mapping `Tensors` to `Tensors`. To
		    be applied to the diagonal of `matrix`. If `None`, `matrix` is returned
		    unchanged. Defaults to `None`.
		  name:  A name to give created ops.
		    Defaults to "matrix_diag_transform".
		
		Returns:
		  A `Tensor` with same shape and `dtype` as `matrix`.
	**/
	static public function matrix_diag_transform(matrix:Dynamic, ?transform:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Picks possibly different length row `Tensor`s based on condition.
		
		Value `Tensor`s should have exactly one dimension.
		
		If `cond` is a python Boolean or `tf.constant` then either `true_vector` or
		`false_vector` is immediately returned. I.e., no graph nodes are created and
		no validation happens.
		
		Args:
		  cond: `Tensor`. Must have `dtype=tf.bool` and be scalar.
		  true_vector: `Tensor` of one dimension. Returned when cond is `True`.
		  false_vector: `Tensor` of one dimension. Returned when cond is `False`.
		  name: Python `str`. The name to give this op.
		
		Example:
		
		```python
		pick_vector(tf.less(0, 5), tf.range(10, 12), tf.range(15, 18))
		# result is tensor: [10, 11].
		pick_vector(tf.less(5, 0), tf.range(10, 12), tf.range(15, 18))
		# result is tensor: [15, 16, 17].
		```
		
		Returns:
		  true_or_false_vector: `Tensor`.
		
		Raises:
		  TypeError: if `cond.dtype != tf.bool`
		  TypeError: if `cond` is not a constant and
		    `true_vector.dtype != false_vector.dtype`
	**/
	static public function pick_vector(cond:Dynamic, true_vector:Dynamic, false_vector:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convenience function which statically broadcasts shape when possible.
		
		Args:
		  shape1:  `1-D` integer `Tensor`.  Already converted to tensor!
		  shape2:  `1-D` integer `Tensor`.  Already converted to tensor!
		  name:  A string name to prepend to created ops.
		
		Returns:
		  The broadcast shape, either as `TensorShape` (if broadcast can be done
		    statically), or as a `Tensor`.
	**/
	static public function prefer_static_broadcast_shape(shape1:Dynamic, shape2:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Circularly moves dims left or right.
		
		Effectively identical to:
		
		```python
		numpy.transpose(x, numpy.roll(numpy.arange(len(x.shape)), shift))
		```
		
		When `validate_args=False` additional graph-runtime checks are
		performed. These checks entail moving data from to GPU to CPU.
		
		Example:
		
		  ```python
		  x = ...  # Tensor of shape [1, 2, 3, 4].
		  rotate_transpose(x, -1)  # result shape: [2, 3, 4, 1]
		  rotate_transpose(x, -2)  # result shape: [3, 4, 1, 2]
		  rotate_transpose(x,  1)  # result shape: [4, 1, 2, 3]
		  rotate_transpose(x,  2)  # result shape: [3, 4, 1, 2]
		  rotate_transpose(x, 7) == rotate_transpose(x, 3)
		  rotate_transpose(x, -7) == rotate_transpose(x, -3)
		  ```
		
		Args:
		  x: `Tensor`.
		  shift: `Tensor`. Number of dimensions to transpose left (shift<0) or
		    transpose right (shift>0).
		  name: Python `str`. The name to give this op.
		
		Returns:
		  rotated_x: Input `Tensor` with dimensions circularly rotated by shift.
		
		Raises:
		  TypeError: if shift is not integer type.
	**/
	static public function rotate_transpose(x:Dynamic, shift:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns whether a and b have the same dynamic shape.
		
		Args:
		  a: `Tensor`
		  b: `Tensor`
		
		Returns:
		  `bool` `Tensor` representing if both tensors have the same shape.
	**/
	static public function same_dynamic_shape(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Infer distribution batch and event shapes from a location and scale.
		
		Location and scale family distributions determine their batch/event shape by
		broadcasting the `loc` and `scale` args.  This helper does that broadcast,
		statically if possible.
		
		Batch shape broadcasts as per the normal rules.
		We allow the `loc` event shape to broadcast up to that of `scale`.  We do not
		allow `scale`'s event shape to change.  Therefore, the last dimension of `loc`
		must either be size `1`, or the same as `scale.range_dimension`.
		
		See `MultivariateNormalLinearOperator` for a usage example.
		
		Args:
		  loc:  `N-D` `Tensor` with `N >= 1` (already converted to tensor) or `None`.
		    If `None`, both batch and event shape are determined by `scale`.
		  scale:  A `LinearOperator` instance.
		  name:  A string name to prepend to created ops.
		
		Returns:
		  batch_shape:  `TensorShape` (if broadcast is done statically), or `Tensor`.
		  event_shape:  `TensorShape` (if broadcast is done statically), or `Tensor`.
		
		Raises:
		  ValueError:  If the last dimension of `loc` is determined statically to be
		    different than the range of `scale`.
	**/
	static public function shapes_from_loc_and_scale(loc:Dynamic, scale:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the inverse softplus, i.e., x = softplus_inverse(softplus(x)).
		
		Mathematically this op is equivalent to:
		
		```none
		softplus_inverse = log(exp(x) - 1.)
		```
		
		Args:
		  x: `Tensor`. Non-negative (not enforced), floating-point.
		  name: A name for the operation (optional).
		
		Returns:
		  `Tensor`. Has the same type/shape as input `x`.
	**/
	static public function softplus_inverse(x:Dynamic, ?name:Dynamic):Dynamic;
}