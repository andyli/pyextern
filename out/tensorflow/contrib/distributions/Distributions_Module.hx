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
		Get the KL-divergence KL(distribution_a || distribution_b).
		
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
		way from the minimum to the maximum in in a sorted copy of `x`.
		
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