/* This file is generated, do not edit! */
package tensorflow.contrib.distributions;
@:pythonImport("tensorflow.contrib.distributions") extern class Distributions_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Transform diagonal of [batch-]matrix, leave rest of matrix unchanged.
		
		Create a trainable covariance defined by a Cholesky factor:
		
		```python
		# Transform network layer into 2 x 2 array.
		matrix_values = tf.contrib.layers.fully_connected(activations, 4)
		matrix = tf.reshape(matrix_values, (batch_size, 2, 2))
		
		# Make the diagonal positive.  If the upper triangle was zero, this would be a
		# valid Cholesky factor.
		chol = batch_matrix_diag_transform(matrix, transform=tf.nn.softplus)
		
		# OperatorPDCholesky ignores the upper triangle.
		operator = OperatorPDCholesky(chol)
		```
		
		Example of heteroskedastic 2-D linear regression.
		
		```python
		# Get a trainable Cholesky factor.
		matrix_values = tf.contrib.layers.fully_connected(activations, 4)
		matrix = tf.reshape(matrix_values, (batch_size, 2, 2))
		chol = batch_matrix_diag_transform(matrix, transform=tf.nn.softplus)
		
		# Get a trainable mean.
		mu = tf.contrib.layers.fully_connected(activations, 2)
		
		# This is a fully trainable multivariate normal!
		dist = tf.contrib.distributions.MVNCholesky(mu, chol)
		
		# Standard log loss.  Minimizing this will "train" mu and chol, and then dist
		# will be a distribution predicting labels as multivariate Gaussians.
		loss = -1 * tf.reduce_mean(dist.log_pdf(labels))
		```
		
		Args:
		  matrix:  Rank `R` `Tensor`, `R >= 2`, where the last two dimensions are
		    equal.
		  transform:  Element-wise function mapping `Tensors` to `Tensors`.  To
		    be applied to the diagonal of `matrix`.  If `None`, `matrix` is returned
		    unchanged.  Defaults to `None`.
		  name:  A name to give created ops.
		    Defaults to "batch_matrix_diag_transform".
		
		Returns:
		  A `Tensor` with same shape and `dtype` as `matrix`.
	**/
	static public function batch_matrix_diag_transform(matrix:Dynamic, ?transform:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Get the KL-divergence KL(dist_a || dist_b).
		
		Args:
		  dist_a: instance of distributions.Distribution.
		  dist_b: instance of distributions.Distribution.
		  allow_nan: If `False` (default), a runtime error is raised
		    if the KL returns NaN values for any batch entry of the given
		    distributions.  If `True`, the KL may return a NaN for the given entry.
		  name: (optional) Name scope to use for created operations.
		
		Returns:
		  A Tensor with the batchwise KL-divergence between dist_a and dist_b.
		
		Raises:
		  TypeError: If dist_a or dist_b is not an instance of Distribution.
		  NotImplementedError: If no KL method is defined for distribution types
		    of dist_a and dist_b.
	**/
	static public function kl(dist_a:Dynamic, dist_b:Dynamic, ?allow_nan:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Posterior predictive Normal distribution w. conjugate prior on the mean.
		
		This model assumes that `n` observations (with sum `s`) come from a
		Normal with unknown mean `mu` (described by the Normal `prior`)
		and known variance `sigma^2`.  The "known sigma predictive"
		is the distribution of new observations, conditioned on the existing
		observations and our prior.
		
		Accepts a prior Normal distribution object, having parameters
		`mu0` and `sigma0`, as well as known `sigma` values of the predictive
		distribution(s) (also assumed Normal),
		and statistical estimates `s` (the sum(s) of the observations) and
		`n` (the number(s) of observations).
		
		Calculates the Normal distribution(s) `p(x | sigma^2)`:
		
		```
		  p(x | sigma^2) = int N(x | mu, sigma^2) N(mu | prior.mu, prior.sigma^2) dmu
		                 = N(x | prior.mu, 1/(sigma^2 + prior.sigma^2))
		```
		
		Returns the predictive posterior distribution object, with parameters
		`(mu', sigma'^2)`, where:
		
		```
		sigma_n^2 = 1/(1/sigma0^2 + n/sigma^2),
		mu' = (mu0/sigma0^2 + s/sigma^2) * sigma_n^2.
		sigma'^2 = sigma_n^2 + sigma^2,
		```
		
		Distribution parameters from `prior`, as well as `sigma`, `s`, and `n`.
		will broadcast in the case of multidimensional sets of parameters.
		
		Args:
		  prior: `Normal` object of type `dtype`:
		    the prior distribution having parameters `(mu0, sigma0)`.
		  sigma: tensor of type `dtype`, taking values `sigma > 0`.
		    The known stddev parameter(s).
		  s: Tensor of type `dtype`.  The sum(s) of observations.
		  n: Tensor of type `int`.  The number(s) of observations.
		
		Returns:
		  A new Normal predictive distribution object.
		
		Raises:
		  TypeError: if dtype of `s` does not match `dtype`, or `prior` is not a
		    Normal object.
	**/
	static public function normal_congugates_known_sigma_predictive(prior:Dynamic, sigma:Dynamic, s:Dynamic, n:Dynamic):Dynamic;
	/**
		Posterior Normal distribution with conjugate prior on the mean.
		
		This model assumes that `n` observations (with sum `s`) come from a
		Normal with unknown mean `mu` (described by the Normal `prior`)
		and known variance `sigma^2`.  The "known sigma posterior" is
		the distribution of the unknown `mu`.
		
		Accepts a prior Normal distribution object, having parameters
		`mu0` and `sigma0`, as well as known `sigma` values of the predictive
		distribution(s) (also assumed Normal),
		and statistical estimates `s` (the sum(s) of the observations) and
		`n` (the number(s) of observations).
		
		Returns a posterior (also Normal) distribution object, with parameters
		`(mu', sigma'^2)`, where:
		
		```
		mu ~ N(mu', sigma'^2)
		sigma'^2 = 1/(1/sigma0^2 + n/sigma^2),
		mu' = (mu0/sigma0^2 + s/sigma^2) * sigma'^2.
		```
		
		Distribution parameters from `prior`, as well as `sigma`, `s`, and `n`.
		will broadcast in the case of multidimensional sets of parameters.
		
		Args:
		  prior: `Normal` object of type `dtype`:
		    the prior distribution having parameters `(mu0, sigma0)`.
		  sigma: tensor of type `dtype`, taking values `sigma > 0`.
		    The known stddev parameter(s).
		  s: Tensor of type `dtype`.  The sum(s) of observations.
		  n: Tensor of type `int`.  The number(s) of observations.
		
		Returns:
		  A new Normal posterior distribution object for the unknown observation
		  mean `mu`.
		
		Raises:
		  TypeError: if dtype of `s` does not match `dtype`, or `prior` is not a
		    Normal object.
	**/
	static public function normal_conjugates_known_sigma_posterior(prior:Dynamic, sigma:Dynamic, s:Dynamic, n:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}