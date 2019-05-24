/* This file is generated, do not edit! */
package tensorflow.contrib.distributions;
@:pythonImport("tensorflow.contrib.distributions") extern class Distributions_Module {
	static public var FULLY_REPARAMETERIZED : Dynamic;
	static public var NOT_REPARAMETERIZED : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Compute the log of the exponentially weighted moving mean of the exp.
		
		If `log_value` is a draw from a stationary random variable, this function
		approximates `log(E[exp(log_value)])`, i.e., a weighted log-sum-exp. More
		precisely, a `tf.Variable`, `log_mean_exp_var`, is updated by `log_value`
		using the following identity:
		
		```none
		log_mean_exp_var =
		= log(decay exp(log_mean_exp_var) + (1 - decay) exp(log_value))
		= log(exp(log_mean_exp_var + log(decay)) + exp(log_value + log1p(-decay)))
		= log_mean_exp_var
		  + log(  exp(log_mean_exp_var   - log_mean_exp_var + log(decay))
		        + exp(log_value - log_mean_exp_var + log1p(-decay)))
		= log_mean_exp_var
		  + log_sum_exp([log(decay), log_value - log_mean_exp_var + log1p(-decay)]).
		```
		
		In addition to numerical stability, this formulation is advantageous because
		`log_mean_exp_var` can be updated in a lock-free manner, i.e., using
		`assign_add`. (Note: the updates are not thread-safe; it's just that the
		update to the tf.Variable is presumed efficient due to being lock-free.)
		
		Args:
		  log_mean_exp_var: `float`-like `Variable` representing the log of the
		    exponentially weighted moving mean of the exp. Same shape as `log_value`.
		  log_value: `float`-like `Tensor` representing a new (streaming) observation.
		    Same shape as `log_mean_exp_var`.
		  decay: A `float`-like `Tensor`. The moving mean decay. Typically close to
		    `1.`, e.g., `0.999`.
		  name: Optional name of the returned operation.
		
		Returns:
		  log_mean_exp_var: A reference to the input 'Variable' tensor with the
		    `log_value`-updated log of the exponentially weighted moving mean of exp.
		
		Raises:
		  TypeError: if `log_mean_exp_var` does not have float type `dtype`.
		  TypeError: if `log_mean_exp_var`, `log_value`, `decay` have different
		    `base_dtype`.
	**/
	static public function assign_log_moving_mean_exp(log_mean_exp_var:Dynamic, log_value:Dynamic, decay:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute exponentially weighted moving {mean,variance} of a streaming value.
		
		The `value` updated exponentially weighted moving `mean_var` and
		`variance_var` are given by the following recurrence relations:
		
		```python
		variance_var = decay * (variance_var + (1-decay) * (value - mean_var)**2)
		mean_var     = decay * mean_var + (1 - decay) * value
		```
		
		Note: `mean_var` is updated *after* `variance_var`, i.e., `variance_var` uses
		the lag-1 mean.
		
		For derivation justification, see [Finch (2009; Eq. 143)][1].
		
		Args:
		  mean_var: `float`-like `Variable` representing the exponentially weighted
		    moving mean. Same shape as `variance_var` and `value`.
		  variance_var: `float`-like `Variable` representing the
		    exponentially weighted moving variance. Same shape as `mean_var` and
		    `value`.
		  value: `float`-like `Tensor`. Same shape as `mean_var` and `variance_var`.
		  decay: A `float`-like `Tensor`. The moving mean decay. Typically close to
		    `1.`, e.g., `0.999`.
		  name: Optional name of the returned operation.
		
		Returns:
		  mean_var: `Variable` representing the `value`-updated exponentially weighted
		    moving mean.
		  variance_var: `Variable` representing the `value`-updated
		    exponentially weighted moving variance.
		
		Raises:
		  TypeError: if `mean_var` does not have float type `dtype`.
		  TypeError: if `mean_var`, `variance_var`, `value`, `decay` have different
		    `base_dtype`.
		
		#### References
		
		[1]: Tony Finch. Incremental calculation of weighted mean and variance.
		     _Technical Report_, 2009.
		     http://people.ds.cam.ac.uk/fanf2/hermes/doc/antiforgery/stats.pdf
	**/
	static public function assign_moving_mean_variance(mean_var:Dynamic, variance_var:Dynamic, value:Dynamic, decay:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Auto correlation along one axis.
		
		Given a `1-D` wide sense stationary (WSS) sequence `X`, the auto correlation
		`RXX` may be defined as  (with `E` expectation and `Conj` complex conjugate)
		
		```
		RXX[m] := E{ W[m] Conj(W[0]) } = E{ W[0] Conj(W[-m]) },
		W[n]   := (X[n] - MU) / S,
		MU     := E{ X[0] },
		S**2   := E{ (X[0] - MU) Conj(X[0] - MU) }.
		```
		
		This function takes the viewpoint that `x` is (along one axis) a finite
		sub-sequence of a realization of (WSS) `X`, and then uses `x` to produce an
		estimate of `RXX[m]` as follows:
		
		After extending `x` from length `L` to `inf` by zero padding, the auto
		correlation estimate `rxx[m]` is computed for `m = 0, 1, ..., max_lags` as
		
		```
		rxx[m] := (L - m)**-1 sum_n w[n + m] Conj(w[n]),
		w[n]   := (x[n] - mu) / s,
		mu     := L**-1 sum_n x[n],
		s**2   := L**-1 sum_n (x[n] - mu) Conj(x[n] - mu)
		```
		
		The error in this estimate is proportional to `1 / sqrt(len(x) - m)`, so users
		often set `max_lags` small enough so that the entire output is meaningful.
		
		Note that since `mu` is an imperfect estimate of `E{ X[0] }`, and we divide by
		`len(x) - m` rather than `len(x) - m - 1`, our estimate of auto correlation
		contains a slight bias, which goes to zero as `len(x) - m --> infinity`.
		
		Args:
		  x:  `float32` or `complex64` `Tensor`.
		  axis:  Python `int`. The axis number along which to compute correlation.
		    Other dimensions index different batch members.
		  max_lags:  Positive `int` tensor.  The maximum value of `m` to consider
		    (in equation above).  If `max_lags >= x.shape[axis]`, we effectively
		    re-set `max_lags` to `x.shape[axis] - 1`.
		  center:  Python `bool`.  If `False`, do not subtract the mean estimate `mu`
		    from `x[n]` when forming `w[n]`.
		  normalize:  Python `bool`.  If `False`, do not divide by the variance
		    estimate `s**2` when forming `w[n]`.
		  name:  `String` name to prepend to created ops.
		
		Returns:
		  `rxx`: `Tensor` of same `dtype` as `x`.  `rxx.shape[i] = x.shape[i]` for
		    `i != axis`, and `rxx.shape[axis] = max_lags + 1`.
		
		Raises:
		  TypeError:  If `x` is not a supported type.
	**/
	static public function auto_correlation(x:Dynamic, ?axis:Dynamic, ?max_lags:Dynamic, ?center:Dynamic, ?normalize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `Head` for regression under a generic distribution. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		Args:
		  make_distribution_fn: Python `callable` which returns a `tf.Distribution`
		    instance created using only logits.
		  label_dimension: Number of regression labels per example. This is the size
		    of the last dimension of the labels `Tensor` (typically, this has shape
		    `[batch_size, label_dimension]`).
		  logits_dimension: Number of logits per example. This is the size of the last
		    dimension of the logits `Tensor` (typically, this has shape
		    `[batch_size, logits_dimension]`).
		    Default value: `label_dimension`.
		  label_name: Python `str`, name of the key in label `dict`. Can be `None` if
		    label is a `Tensor` (single headed models).
		  weight_column_name: Python `str` defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  enable_centered_bias: Python `bool`. If `True`, estimator will learn a
		    centered bias variable for each class. Rest of the model structure learns
		    the residual after centered bias.
		  head_name: Python `str`, name of the head. Predictions, summary and metrics
		    keys are suffixed by `"/" + head_name` and the default variable scope is
		    `head_name`.
		
		Returns:
		  An instance of `Head` for generic regression.
	**/
	static public function estimator_head_distribution_regression(make_distribution_fn:Dynamic, ?label_dimension:Dynamic, ?logits_dimension:Dynamic, ?label_name:Dynamic, ?weight_column_name:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic):Dynamic;
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
		Get the KL-divergence KL(distribution_a || distribution_b). (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2019-01-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.distributions`.
		
		If there is no KL method registered specifically for `type(distribution_a)`
		and `type(distribution_b)`, then the class hierarchies of these types are
		searched.
		
		If one KL method is registered between any pairs of classes in these two
		parent hierarchies, it is used.
		
		If more than one such registered method exists, the method whose registered
		classes have the shortest sum MRO paths to the input types is used.
		
		If more than one such shortest path exists, the first method
		identified in the search is used (favoring a shorter MRO distance to
		`type(distribution_a)`).
		
		Args:
		  distribution_a: The first distribution.
		  distribution_b: The second distribution.
		  allow_nan_stats: Python `bool`, default `True`. When `True`,
		    statistics (e.g., mean, mode, variance) use the value "`NaN`" to
		    indicate the result is undefined. When `False`, an exception is raised
		    if one or more of the statistic's batch members are undefined.
		  name: Python `str` name prefixed to Ops created by this class.
		
		Returns:
		  A Tensor with the batchwise KL-divergence between `distribution_a`
		  and `distribution_b`.
		
		Raises:
		  NotImplementedError: If no KL method is defined for distribution types
		    of `distribution_a` and `distribution_b`.
	**/
	static public function kl_divergence(distribution_a:Dynamic, distribution_b:Dynamic, ?allow_nan_stats:Dynamic, ?name:Dynamic):Dynamic;
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
		Compute exponentially weighted moving {mean,variance} of a streaming value.
		
		The exponentially-weighting moving `mean_var` and `variance_var` are updated
		by `value` according to the following recurrence:
		
		```python
		variance_var = decay * (variance_var + (1-decay) * (value - mean_var)**2)
		mean_var     = decay * mean_var + (1 - decay) * value
		```
		
		Note: `mean_var` is updated *after* `variance_var`, i.e., `variance_var` uses
		the lag-`1` mean.
		
		For derivation justification, see [Finch (2009; Eq. 143)][1].
		
		Unlike `assign_moving_mean_variance`, this function handles
		variable creation.
		
		Args:
		  value: `float`-like `Tensor`. Same shape as `mean_var` and `variance_var`.
		  decay: A `float`-like `Tensor`. The moving mean decay. Typically close to
		    `1.`, e.g., `0.999`.
		  collections: Python list of graph-collections keys to which the internal
		    variables `mean_var` and `variance_var` are added.
		    Default value is `[GraphKeys.GLOBAL_VARIABLES]`.
		  name: Optional name of the returned operation.
		
		Returns:
		  mean_var: `Variable` representing the `value`-updated exponentially weighted
		    moving mean.
		  variance_var: `Variable` representing the `value`-updated
		    exponentially weighted moving variance.
		
		Raises:
		  TypeError: if `value_var` does not have float type `dtype`.
		  TypeError: if `value`, `decay` have different `base_dtype`.
		
		#### References
		
		[1]: Tony Finch. Incremental calculation of weighted mean and variance.
		     _Technical Report_, 2009.
		     http://people.ds.cam.ac.uk/fanf2/hermes/doc/antiforgery/stats.pdf
	**/
	static public function moving_mean_variance(value:Dynamic, decay:Dynamic, ?collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Posterior Normal distribution with conjugate prior on the mean.
		
		This model assumes that `n` observations (with sum `s`) come from a
		Normal with unknown mean `loc` (described by the Normal `prior`)
		and known variance `scale**2`. The "known scale posterior" is
		the distribution of the unknown `loc`.
		
		Accepts a prior Normal distribution object, having parameters
		`loc0` and `scale0`, as well as known `scale` values of the predictive
		distribution(s) (also assumed Normal),
		and statistical estimates `s` (the sum(s) of the observations) and
		`n` (the number(s) of observations).
		
		Returns a posterior (also Normal) distribution object, with parameters
		`(loc', scale'**2)`, where:
		
		```
		mu ~ N(mu', sigma'**2)
		sigma'**2 = 1/(1/sigma0**2 + n/sigma**2),
		mu' = (mu0/sigma0**2 + s/sigma**2) * sigma'**2.
		```
		
		Distribution parameters from `prior`, as well as `scale`, `s`, and `n`.
		will broadcast in the case of multidimensional sets of parameters.
		
		Args:
		  prior: `Normal` object of type `dtype`:
		    the prior distribution having parameters `(loc0, scale0)`.
		  scale: tensor of type `dtype`, taking values `scale > 0`.
		    The known stddev parameter(s).
		  s: Tensor of type `dtype`. The sum(s) of observations.
		  n: Tensor of type `int`. The number(s) of observations.
		
		Returns:
		  A new Normal posterior distribution object for the unknown observation
		  mean `loc`.
		
		Raises:
		  TypeError: if dtype of `s` does not match `dtype`, or `prior` is not a
		    Normal object.
	**/
	static public function normal_conjugates_known_scale_posterior(prior:Dynamic, scale:Dynamic, s:Dynamic, n:Dynamic):Dynamic;
	/**
		Posterior predictive Normal distribution w. conjugate prior on the mean.
		
		This model assumes that `n` observations (with sum `s`) come from a
		Normal with unknown mean `loc` (described by the Normal `prior`)
		and known variance `scale**2`. The "known scale predictive"
		is the distribution of new observations, conditioned on the existing
		observations and our prior.
		
		Accepts a prior Normal distribution object, having parameters
		`loc0` and `scale0`, as well as known `scale` values of the predictive
		distribution(s) (also assumed Normal),
		and statistical estimates `s` (the sum(s) of the observations) and
		`n` (the number(s) of observations).
		
		Calculates the Normal distribution(s) `p(x | sigma**2)`:
		
		```
		p(x | sigma**2) = int N(x | mu, sigma**2)N(mu | prior.loc, prior.scale**2) dmu
		                = N(x | prior.loc, 1 / (sigma**2 + prior.scale**2))
		```
		
		Returns the predictive posterior distribution object, with parameters
		`(loc', scale'**2)`, where:
		
		```
		sigma_n**2 = 1/(1/sigma0**2 + n/sigma**2),
		mu' = (mu0/sigma0**2 + s/sigma**2) * sigma_n**2.
		sigma'**2 = sigma_n**2 + sigma**2,
		```
		
		Distribution parameters from `prior`, as well as `scale`, `s`, and `n`.
		will broadcast in the case of multidimensional sets of parameters.
		
		Args:
		  prior: `Normal` object of type `dtype`:
		    the prior distribution having parameters `(loc0, scale0)`.
		  scale: tensor of type `dtype`, taking values `scale > 0`.
		    The known stddev parameter(s).
		  s: Tensor of type `dtype`. The sum(s) of observations.
		  n: Tensor of type `int`. The number(s) of observations.
		
		Returns:
		  A new Normal predictive distribution object.
		
		Raises:
		  TypeError: if dtype of `s` does not match `dtype`, or `prior` is not a
		    Normal object.
	**/
	static public function normal_conjugates_known_scale_predictive(prior:Dynamic, scale:Dynamic, s:Dynamic, n:Dynamic):Dynamic;
	/**
		Compute the `q`-th percentile of `x`.
		
		Given a vector `x`, the `q`-th percentile of `x` is the value `q / 100` of the
		way from the minimum to the maximum in a sorted copy of `x`.
		
		The values and distances of the two nearest neighbors as well as the
		`interpolation` parameter will determine the percentile if the normalized
		ranking does not match the location of `q` exactly.
		
		This function is the same as the median if `q = 50`, the same as the minimum
		if `q = 0` and the same as the maximum if `q = 100`.
		
		
		```python
		# Get 30th percentile with default ('nearest') interpolation.
		x = [1., 2., 3., 4.]
		percentile(x, q=30.)
		==> 2.0
		
		# Get 30th percentile with 'lower' interpolation
		x = [1., 2., 3., 4.]
		percentile(x, q=30., interpolation='lower')
		==> 1.0
		
		# Get 100th percentile (maximum).  By default, this is computed over every dim
		x = [[1., 2.]
		     [3., 4.]]
		percentile(x, q=100.)
		==> 4.0
		
		# Treat the leading dim as indexing samples, and find the 100th quantile (max)
		# over all such samples.
		x = [[1., 2.]
		     [3., 4.]]
		percentile(x, q=100., axis=[0])
		==> [3., 4.]
		```
		
		Compare to `numpy.percentile`.
		
		Args:
		  x:  Floating point `N-D` `Tensor` with `N > 0`.  If `axis` is not `None`,
		    `x` must have statically known number of dimensions.
		  q:  Scalar `Tensor` in `[0, 100]`. The percentile.
		  axis:  Optional `0-D` or `1-D` integer `Tensor` with constant values.
		    The axis that hold independent samples over which to return the desired
		    percentile.  If `None` (the default), treat every dimension as a sample
		    dimension, returning a scalar.
		  interpolation : {"lower", "higher", "nearest"}.  Default: "nearest"
		    This optional parameter specifies the interpolation method to
		    use when the desired quantile lies between two data points `i < j`:
		      * lower: `i`.
		      * higher: `j`.
		      * nearest: `i` or `j`, whichever is nearest.
		  keep_dims:  Python `bool`. If `True`, the last dimension is kept with size 1
		    If `False`, the last dimension is removed from the output shape.
		  validate_args:  Whether to add runtime checks of argument validity.
		    If False, and arguments are incorrect, correct behavior is not guaranteed.
		  name:  A Python string name to give this `Op`.  Default is "percentile"
		
		Returns:
		  A `(N - len(axis))` dimensional `Tensor` of same dtype as `x`, or, if
		    `axis` is `None`, a scalar.
		
		Raises:
		  ValueError:  If argument 'interpolation' is not an allowed type.
	**/
	static public function percentile(x:Dynamic, q:Dynamic, ?axis:Dynamic, ?interpolation:Dynamic, ?keep_dims:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Use Gauss-Hermite quadrature to form quadrature on positive-reals. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		Note: for a given `quadrature_size`, this method is generally less accurate
		than `quadrature_scheme_lognormal_quantiles`.
		
		Args:
		  loc: `float`-like (batch of) scalar `Tensor`; the location parameter of
		    the LogNormal prior.
		  scale: `float`-like (batch of) scalar `Tensor`; the scale parameter of
		    the LogNormal prior.
		  quadrature_size: Python `int` scalar representing the number of quadrature
		    points.
		  validate_args: Python `bool`, default `False`. When `True` distribution
		    parameters are checked for validity despite possibly degrading runtime
		    performance. When `False` invalid inputs may silently render incorrect
		    outputs.
		  name: Python `str` name prefixed to Ops created by this class.
		
		Returns:
		  grid: (Batch of) length-`quadrature_size` vectors representing the
		    `log_rate` parameters of a `Poisson`.
		  probs: (Batch of) length-`quadrature_size` vectors representing the
		    weight associate with each `grid` value.
	**/
	static public function quadrature_scheme_lognormal_gauss_hermite(loc:Dynamic, scale:Dynamic, quadrature_size:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Use LogNormal quantiles to form quadrature on positive-reals. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		Args:
		  loc: `float`-like (batch of) scalar `Tensor`; the location parameter of
		    the LogNormal prior.
		  scale: `float`-like (batch of) scalar `Tensor`; the scale parameter of
		    the LogNormal prior.
		  quadrature_size: Python `int` scalar representing the number of quadrature
		    points.
		  validate_args: Python `bool`, default `False`. When `True` distribution
		    parameters are checked for validity despite possibly degrading runtime
		    performance. When `False` invalid inputs may silently render incorrect
		    outputs.
		  name: Python `str` name prefixed to Ops created by this class.
		
		Returns:
		  grid: (Batch of) length-`quadrature_size` vectors representing the
		    `log_rate` parameters of a `Poisson`.
		  probs: (Batch of) length-`quadrature_size` vectors representing the
		    weight associate with each `grid` value.
	**/
	static public function quadrature_scheme_lognormal_quantiles(loc:Dynamic, scale:Dynamic, quadrature_size:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Use Gauss-Hermite quadrature to form quadrature on `K - 1` simplex. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		A `SoftmaxNormal` random variable `Y` may be generated via
		
		```
		Y = SoftmaxCentered(X),
		X = Normal(normal_loc, normal_scale)
		```
		
		Note: for a given `quadrature_size`, this method is generally less accurate
		than `quadrature_scheme_softmaxnormal_quantiles`.
		
		Args:
		  normal_loc: `float`-like `Tensor` with shape `[b1, ..., bB, K-1]`, B>=0.
		    The location parameter of the Normal used to construct the SoftmaxNormal.
		  normal_scale: `float`-like `Tensor`. Broadcastable with `normal_loc`.
		    The scale parameter of the Normal used to construct the SoftmaxNormal.
		  quadrature_size: Python `int` scalar representing the number of quadrature
		    points.
		  validate_args: Python `bool`, default `False`. When `True` distribution
		    parameters are checked for validity despite possibly degrading runtime
		    performance. When `False` invalid inputs may silently render incorrect
		    outputs.
		  name: Python `str` name prefixed to Ops created by this class.
		
		Returns:
		  grid: Shape `[b1, ..., bB, K, quadrature_size]` `Tensor` representing the
		    convex combination of affine parameters for `K` components.
		    `grid[..., :, n]` is the `n`-th grid point, living in the `K - 1` simplex.
		  probs:  Shape `[b1, ..., bB, K, quadrature_size]` `Tensor` representing the
		    associated with each grid point.
	**/
	static public function quadrature_scheme_softmaxnormal_gauss_hermite(normal_loc:Dynamic, normal_scale:Dynamic, quadrature_size:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Use SoftmaxNormal quantiles to form quadrature on `K - 1` simplex. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		A `SoftmaxNormal` random variable `Y` may be generated via
		
		```
		Y = SoftmaxCentered(X),
		X = Normal(normal_loc, normal_scale)
		```
		
		Args:
		  normal_loc: `float`-like `Tensor` with shape `[b1, ..., bB, K-1]`, B>=0.
		    The location parameter of the Normal used to construct the SoftmaxNormal.
		  normal_scale: `float`-like `Tensor`. Broadcastable with `normal_loc`.
		    The scale parameter of the Normal used to construct the SoftmaxNormal.
		  quadrature_size: Python `int` scalar representing the number of quadrature
		    points.
		  validate_args: Python `bool`, default `False`. When `True` distribution
		    parameters are checked for validity despite possibly degrading runtime
		    performance. When `False` invalid inputs may silently render incorrect
		    outputs.
		  name: Python `str` name prefixed to Ops created by this class.
		
		Returns:
		  grid: Shape `[b1, ..., bB, K, quadrature_size]` `Tensor` representing the
		    convex combination of affine parameters for `K` components.
		    `grid[..., :, n]` is the `n`-th grid point, living in the `K - 1` simplex.
		  probs:  Shape `[b1, ..., bB, K, quadrature_size]` `Tensor` representing the
		    associated with each grid point.
	**/
	static public function quadrature_scheme_softmaxnormal_quantiles(normal_loc:Dynamic, normal_scale:Dynamic, quadrature_size:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
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