/* This file is generated, do not edit! */
package tensorflow.python.ops.distributions.util;
@:pythonImport("tensorflow.python.ops.distributions.util") extern class Util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper returning True if dtype.is_integer or is `bool`.
	**/
	static public function _is_integer_like_by_dtype(dt:Dynamic):Dynamic;
	/**
		Helper returning True if dtype is known.
	**/
	static public function _is_known_dtype(dt:Dynamic):Dynamic;
	/**
		Helper returning True if dtype is known to be signed.
	**/
	static public function _is_known_signed_by_dtype(dt:Dynamic):Dynamic;
	/**
		Helper returning True if dtype is known to be unsigned.
	**/
	static public function _is_known_unsigned_by_dtype(dt:Dynamic):Dynamic;
	/**
		Helper returning the largest integer exactly representable by dtype.
	**/
	static public function _largest_integer_by_dtype(dt:Dynamic):Dynamic;
	/**
		Helper returning the smallest integer exactly representable by dtype.
	**/
	static public function _smallest_integer_by_dtype(dt:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Assert that x has integer components (or floats equal to integers).
		
		Args:
		  x: Floating-point `Tensor`
		  data: The tensors to print out if the condition is `False`. Defaults to
		    error message and first few entries of `x` and `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  int_dtype: A `tf.dtype` used to cast the float to. The default (`None`)
		    implies the smallest possible signed int will be used for casting.
		  name: A name for this operation (optional).
		
		Returns:
		  Op raising `InvalidArgumentError` if `cast(x, int_dtype) != x`.
	**/
	static public function assert_integer_form(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?int_dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function assert_symmetric(matrix:Dynamic):Dynamic;
	/**
		Returns the size of a specific dimension.
	**/
	static public function dimension_size(x:Dynamic, axis:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Embeds checks that categorical distributions don't have too many classes.
		
		A categorical-type distribution is one which, e.g., returns the class label
		rather than a one-hot encoding.  E.g., `Categorical(probs)`.
		
		Since distributions output samples in the same dtype as the parameters, we
		must ensure that casting doesn't lose precision. That is, the
		`parameter.dtype` implies a maximum number of classes. However, since shape is
		`int32` and categorical variables are presumed to be indexes into a `Tensor`,
		we must also ensure that the number of classes is no larger than the largest
		possible `int32` index, i.e., `2**31-1`.
		
		In other words the number of classes, `K`, must satisfy the following
		condition:
		
		```python
		K <= min(
		    int(2**31 - 1),  # Largest float as an index.
		    {
		        dtypes.float16: int(2**11),   # Largest int as a float16.
		        dtypes.float32: int(2**24),
		        dtypes.float64: int(2**53),
		    }.get(categorical_param.dtype.base_dtype, 0))
		```
		
		Args:
		  categorical_param: Floating-point `Tensor` representing parameters of
		    distribution over categories. The rightmost shape is presumed to be the
		    number of categories.
		  name: A name for this operation (optional).
		
		Returns:
		  categorical_param: Input `Tensor` with appropriate assertions embedded.
		
		Raises:
		  TypeError: if `categorical_param` has an unknown `dtype`.
		  ValueError: if we can statically identify `categorical_param` as being too
		    large (for being closed under int32/float casting).
	**/
	static public function embed_check_categorical_event_shape(categorical_param:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Ensures integers remain unaffected despite casting to/from int/float types.
		
		Example integer-types: `uint8`, `int32`, `bool`.
		Example floating-types: `float32`, `float64`.
		
		The largest possible integer representable by an IEEE754 floating-point is
		`2**(1 + mantissa_bits)` yet the largest possible integer as an int-type is
		`2**(bits - 1) - 1`. This function ensures that a `Tensor` purporting to have
		integer-form values can be cast to some other type without loss of precision.
		
		The smallest representable integer is the negative of the largest
		representable integer, except for types: `uint8`, `uint16`, `bool`. For these
		types, the smallest representable integer is `0`.
		
		Args:
		  x: `Tensor` representing integer-form values.
		  target_dtype: TF `dtype` under which `x` should have identical values.
		  assert_nonnegative: `bool` indicating `x` should contain nonnegative values.
		  name: A name for this operation (optional).
		
		Returns:
		  x: Input `Tensor` with appropriate assertions embedded.
		
		Raises:
		  TypeError: if `x` is neither integer- nor floating-type.
		  TypeError: if `target_dtype` is neither integer- nor floating-type.
		  TypeError: if neither `x` nor `target_dtype` are integer-type.
	**/
	static public function embed_check_integer_casting_closed(x:Dynamic, target_dtype:Dynamic, ?assert_nonnegative:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert x is a non-negative tensor, and optionally of integers.
	**/
	static public function embed_check_nonnegative_integer_form(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a (batch of) triangular matrix from a vector of inputs.
		
		Created matrix can be lower- or upper-triangular. (It is more efficient to
		create the matrix as upper or lower, rather than transpose.)
		
		Triangular matrix elements are filled in a clockwise spiral. See example,
		below.
		
		If `x.get_shape()` is `[b1, b2, ..., bB, d]` then the output shape is
		`[b1, b2, ..., bB, n, n]` where `n` is such that `d = n(n+1)/2`, i.e.,
		`n = int(np.sqrt(0.25 + 2. * m) - 0.5)`.
		
		Example:
		
		```python
		fill_triangular([1, 2, 3, 4, 5, 6])
		# ==> [[4, 0, 0],
		#      [6, 5, 0],
		#      [3, 2, 1]]
		
		fill_triangular([1, 2, 3, 4, 5, 6], upper=True)
		# ==> [[1, 2, 3],
		#      [0, 5, 6],
		#      [0, 0, 4]]
		```
		
		For comparison, a pure numpy version of this function can be found in
		`util_test.py`, function `_fill_triangular`.
		
		Args:
		  x: `Tensor` representing lower (or upper) triangular elements.
		  upper: Python `bool` representing whether output matrix should be upper
		    triangular (`True`) or lower triangular (`False`, default).
		  name: Python `str`. The name to give this op.
		
		Returns:
		  tril: `Tensor` with lower (or upper) triangular elements filled from `x`.
		
		Raises:
		  ValueError: if `x` cannot be mapped to a triangular matrix.
	**/
	static public function fill_triangular(x:Dynamic, ?upper:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a vector from a (batch of) triangular matrix.
		
		The vector is created from the lower-triangular or upper-triangular portion
		depending on the value of the parameter `upper`.
		
		If `x.shape` is `[b1, b2, ..., bB, n, n]` then the output shape is
		`[b1, b2, ..., bB, d]` where `d = n (n + 1) / 2`.
		
		Example:
		
		```python
		fill_triangular_inverse(
		  [[4, 0, 0],
		   [6, 5, 0],
		   [3, 2, 1]])
		
		# ==> [1, 2, 3, 4, 5, 6]
		
		fill_triangular_inverse(
		  [[1, 2, 3],
		   [0, 5, 6],
		   [0, 0, 4]], upper=True)
		
		# ==> [1, 2, 3, 4, 5, 6]
		```
		
		Args:
		  x: `Tensor` representing lower (or upper) triangular elements.
		  upper: Python `bool` representing whether output matrix should be upper
		    triangular (`True`) or lower triangular (`False`, default).
		  name: Python `str`. The name to give this op.
		
		Returns:
		  flat_tril: (Batch of) vector-shaped `Tensor` representing vectorized lower
		    (or upper) triangular elements from `x`.
	**/
	static public function fill_triangular_inverse(x:Dynamic, ?upper:Dynamic, ?name:Dynamic):Dynamic;
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
		  dtype: `tf.DType` to prefer when converting args to `Tensor`s.
		
		Returns:
		  logits, probs: Tuple of `Tensor`s. If `probs` has an entry that is `0` or
		    `1`, then the corresponding entry in the returned logit will be `-Inf` and
		    `Inf` respectively.
		
		Raises:
		  ValueError: if neither `probs` nor `logits` were passed in, or both were.
	**/
	static public function get_logits_and_probs(?logits:Dynamic, ?probs:Dynamic, ?multidimensional:Dynamic, ?validate_args:Dynamic, ?name:Dynamic, ?dtype:Dynamic):Dynamic;
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
		Transform diagonal of [batch-]matrix, leave rest of matrix unchanged.
		
		Create a trainable covariance defined by a Cholesky factor:
		
		```python
		# Transform network layer into 2 x 2 array.
		matrix_values = tf.contrib.layers.fully_connected(activations, 4)
		matrix = tf.reshape(matrix_values, (batch_size, 2, 2))
		
		# Make the diagonal positive. If the upper triangle was zero, this would be a
		# valid Cholesky factor.
		chol = matrix_diag_transform(matrix, transform=tf.nn.softplus)
		
		# LinearOperatorLowerTriangular ignores the upper triangle.
		operator = LinearOperatorLowerTriangular(chol)
		```
		
		Example of heteroskedastic 2-D linear regression.
		
		```python
		tfd = tfp.distributions
		
		# Get a trainable Cholesky factor.
		matrix_values = tf.contrib.layers.fully_connected(activations, 4)
		matrix = tf.reshape(matrix_values, (batch_size, 2, 2))
		chol = matrix_diag_transform(matrix, transform=tf.nn.softplus)
		
		# Get a trainable mean.
		mu = tf.contrib.layers.fully_connected(activations, 2)
		
		# This is a fully trainable multivariate normal!
		dist = tfd.MultivariateNormalTriL(mu, chol)
		
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
		Helper which tries to return a static value.
		
		Given `x`, extract it's value statically, optionally casting to a specific
		dtype. If this is not possible, None is returned.
		
		Args:
		  x: `Tensor` for which to extract a value statically.
		  dtype: Optional dtype to cast to.
		
		Returns:
		  Statically inferred value if possible, otherwise None.
	**/
	static public function maybe_get_static_value(x:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Pads `value` to the front and/or back of a `Tensor` dim, `count` times.
		
		Args:
		  x: `Tensor` input.
		  axis: Scalar `int`-like `Tensor` representing the single dimension to pad.
		    (Negative indexing is supported.)
		  front: Python `bool`; if `True` the beginning of the `axis` dimension is
		    padded with `value`, `count` times. If `False` no front padding is made.
		  back: Python `bool`; if `True` the end of the `axis` dimension is
		    padded with `value`, `count` times. If `False` no end padding is made.
		  value: Scalar `int`-like `Tensor` representing the actual value added to the
		    front and/or back of the `axis` dimension of `x`.
		  count: Scalar `int`-like `Tensor` representing number of elements added to
		    the front and/or back of the `axis` dimension of `x`. E.g., if
		    `front = back = True` then `2 * count` elements are added.
		  name: Python `str` name prefixed to Ops created by this function.
		
		Returns:
		  pad: The padded version of input `x`.
		
		Raises:
		  ValueError: if both `front` and `back` are `False`.
		  TypeError: if `count` is not `int`-like.
	**/
	static public function pad(x:Dynamic, axis:Dynamic, ?front:Dynamic, ?back:Dynamic, ?value:Dynamic, ?count:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns parent frame arguments.
		
		When called inside a function, returns a dictionary with the caller's function
		arguments. These are positional arguments and keyword arguments (**kwargs),
		while variable arguments (*varargs) are excluded.
		
		When called at global scope, this will return an empty dictionary, since there
		are no arguments.
		
		WARNING: If caller function argument names are overloaded before invoking
		this method, then values will reflect the overloaded value. For this reason,
		we recommend calling `parent_frame_arguments` at the beginning of the
		function.
	**/
	static public function parent_frame_arguments():Dynamic;
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
		pick_vector(tf.less(0, 5), tf.range(10, 12), tf.range(15, 18))  # [10, 11]
		pick_vector(tf.less(5, 0), tf.range(10, 12), tf.range(15, 18))  # [15, 16, 17]
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
	/**
		Return static rank of tensor `x` if available, else `tf.rank(x)`.
		
		Args:
		  x: `Tensor` (already converted).
		
		Returns:
		  Numpy array (if static rank is obtainable), else `Tensor`.
	**/
	static public function prefer_static_rank(x:Dynamic):Dynamic;
	/**
		Return static shape of tensor `x` if available, else `tf.shape(x)`.
		
		Args:
		  x: `Tensor` (already converted).
		
		Returns:
		  Numpy array (if static shape is obtainable), else `Tensor`.
	**/
	static public function prefer_static_shape(x:Dynamic):Dynamic;
	/**
		Return static value of tensor `x` if available, else `x`.
		
		Args:
		  x: `Tensor` (already converted).
		
		Returns:
		  Numpy array (if static value is obtainable), else `Tensor`.
	**/
	static public function prefer_static_value(x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Validates quadrature grid, probs or computes them as necessary.
		
		Args:
		  quadrature_grid_and_probs: Python pair of `float`-like `Tensor`s
		    representing the sample points and the corresponding (possibly
		    normalized) weight.  When `None`, defaults to:
		    `np.polynomial.hermite.hermgauss(deg=8)`.
		  dtype: The expected `dtype` of `grid` and `probs`.
		  validate_args: Python `bool`, default `False`. When `True` distribution
		    parameters are checked for validity despite possibly degrading runtime
		    performance. When `False` invalid inputs may silently render incorrect
		    outputs.
		  name: Python `str` name prefixed to Ops created by this class.
		
		Returns:
		   quadrature_grid_and_probs: Python pair of `float`-like `Tensor`s
		    representing the sample points and the corresponding (possibly
		    normalized) weight.
		
		Raises:
		  ValueError: if `quadrature_grid_and_probs is not None` and
		    `len(quadrature_grid_and_probs[0]) != len(quadrature_grid_and_probs[1])`
	**/
	static public function process_quadrature_grid_and_probs(quadrature_grid_and_probs:Dynamic, dtype:Dynamic, validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes `log(abs(sum(weight * exp(elements across tensor dimensions))))`.
		
		If all weights `w` are known to be positive, it is more efficient to directly
		use `reduce_logsumexp`, i.e., `tf.reduce_logsumexp(logx + tf.log(w))` is more
		efficient than `du.reduce_weighted_logsumexp(logx, w)`.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keep_dims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keep_dims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` has no entries, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		This function is more numerically stable than log(sum(w * exp(input))). It
		avoids overflows caused by taking the exp of large inputs and underflows
		caused by taking the log of small inputs.
		
		For example:
		
		```python
		x = tf.constant([[0., 0, 0],
		                 [0, 0, 0]])
		
		w = tf.constant([[-1., 1, 1],
		                 [1, 1, 1]])
		
		du.reduce_weighted_logsumexp(x, w)
		# ==> log(-1*1 + 1*1 + 1*1 + 1*1 + 1*1 + 1*1) = log(4)
		
		du.reduce_weighted_logsumexp(x, w, axis=0)
		# ==> [log(-1+1), log(1+1), log(1+1)]
		
		du.reduce_weighted_logsumexp(x, w, axis=1)
		# ==> [log(-1+1+1), log(1+1+1)]
		
		du.reduce_weighted_logsumexp(x, w, axis=1, keep_dims=True)
		# ==> [[log(-1+1+1)], [log(1+1+1)]]
		
		du.reduce_weighted_logsumexp(x, w, axis=[0, 1])
		# ==> log(-1+5)
		```
		
		Args:
		  logx: The tensor to reduce. Should have numeric type.
		  w: The weight tensor. Should have numeric type identical to `logx`.
		  axis: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions. Must be in the range
		    `[-rank(input_tensor), rank(input_tensor))`.
		  keep_dims: If true, retains reduced dimensions with length 1.
		  return_sign: If `True`, returns the sign of the result.
		  name: A name for the operation (optional).
		
		Returns:
		  lswe: The `log(abs(sum(weight * exp(x))))` reduced tensor.
		  sign: (Optional) The sign of `sum(weight * exp(x))`.
	**/
	static public function reduce_weighted_logsumexp(logx:Dynamic, ?w:Dynamic, ?axis:Dynamic, ?keep_dims:Dynamic, ?return_sign:Dynamic, ?name:Dynamic):Dynamic;
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
		x = tf.random_normal([1, 2, 3, 4])  # Tensor of shape [1, 2, 3, 4].
		rotate_transpose(x, -1).shape == [2, 3, 4, 1]
		rotate_transpose(x, -2).shape == [3, 4, 1, 2]
		rotate_transpose(x,  1).shape == [4, 1, 2, 3]
		rotate_transpose(x,  2).shape == [3, 4, 1, 2]
		rotate_transpose(x,  7).shape == rotate_transpose(x, 3).shape  # [2, 3, 4, 1]
		rotate_transpose(x, -7).shape == rotate_transpose(x, -3).shape  # [4, 1, 2, 3]
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
	/**
		Creates a matrix with values set above, below, and on the diagonal.
		
		Example:
		
		```python
		tridiag(below=[1., 2., 3.],
		        diag=[4., 5., 6., 7.],
		        above=[8., 9., 10.])
		# ==> array([[  4.,   8.,   0.,   0.],
		#            [  1.,   5.,   9.,   0.],
		#            [  0.,   2.,   6.,  10.],
		#            [  0.,   0.,   3.,   7.]], dtype=float32)
		```
		
		Warning: This Op is intended for convenience, not efficiency.
		
		Args:
		  below: `Tensor` of shape `[B1, ..., Bb, d-1]` corresponding to the below
		    diagonal part. `None` is logically equivalent to `below = 0`.
		  diag: `Tensor` of shape `[B1, ..., Bb, d]` corresponding to the diagonal
		    part.  `None` is logically equivalent to `diag = 0`.
		  above: `Tensor` of shape `[B1, ..., Bb, d-1]` corresponding to the above
		    diagonal part.  `None` is logically equivalent to `above = 0`.
		  name: Python `str`. The name to give this op.
		
		Returns:
		  tridiag: `Tensor` with values set above, below and on the diagonal.
		
		Raises:
		  ValueError: if all inputs are `None`.
	**/
	static public function tridiag(?below:Dynamic, ?diag:Dynamic, ?above:Dynamic, ?name:Dynamic):Dynamic;
}