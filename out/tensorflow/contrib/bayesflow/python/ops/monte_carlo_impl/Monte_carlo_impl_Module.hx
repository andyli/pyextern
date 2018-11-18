/* This file is generated, do not edit! */
package tensorflow.contrib.bayesflow.python.ops.monte_carlo_impl;
@:pythonImport("tensorflow.contrib.bayesflow.python.ops.monte_carlo_impl") extern class Monte_carlo_impl_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check args and return samples.
	**/
	static public function _get_samples(dist:Dynamic, z:Dynamic, n:Dynamic, seed:Dynamic):Dynamic;
	/**
		Evaluate `Log[E[values]]` in a stable manner.
		
		Args:
		  log_values:  `Tensor` holding `Log[values]`.
		
		Returns:
		  `Tensor` of same `dtype` as `log_values`, reduced across dim 0.
		    `Log[Mean[values]]`.
	**/
	static public function _logspace_mean(log_values:Dynamic):Dynamic;
	/**
		Max over sample indices.  In this module this is always [0].
	**/
	static public function _sample_max(values:Dynamic):Dynamic;
	/**
		Mean over sample indices.  In this module this is always [0].
	**/
	static public function _sample_mean(values:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Computes the Monte-Carlo approximation of \\(E_p[f(X)]\\). (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The tf.contrib.bayesflow library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). Use `tfp.monte_carlo.expectation` instead.
		
		This function computes the Monte-Carlo approximation of an expectation, i.e.,
		
		\\(E_p[f(X)] \approx= m^{-1} sum_i^m f(x_j),  x_j\  ~iid\ p(X)\\)
		
		where:
		
		- `x_j = samples[j, ...]`,
		- `log(p(samples)) = log_prob(samples)` and
		- `m = prod(shape(samples)[axis])`.
		
		Tricks: Reparameterization and Score-Gradient
		
		When p is "reparameterized", i.e., a diffeomorphic transformation of a
		parameterless distribution (e.g.,
		`Normal(Y; m, s) <=> Y = sX + m, X ~ Normal(0,1)`), we can swap gradient and
		expectation, i.e.,
		grad[ Avg{ \\(s_i : i=1...n\\) } ] = Avg{ grad[\\(s_i\\)] : i=1...n } where
		S_n = Avg{\\(s_i\\)}` and `\\(s_i = f(x_i), x_i ~ p\\).
		
		However, if p is not reparameterized, TensorFlow's gradient will be incorrect
		since the chain-rule stops at samples of non-reparameterized distributions.
		(The non-differentiated result, `approx_expectation`, is the same regardless
		of `use_reparametrization`.) In this circumstance using the Score-Gradient
		trick results in an unbiased gradient, i.e.,
		
		```none
		grad[ E_p[f(X)] ]
		= grad[ int dx p(x) f(x) ]
		= int dx grad[ p(x) f(x) ]
		= int dx [ p'(x) f(x) + p(x) f'(x) ]
		= int dx p(x) [p'(x) / p(x) f(x) + f'(x) ]
		= int dx p(x) grad[ f(x) p(x) / stop_grad[p(x)] ]
		= E_p[ grad[ f(x) p(x) / stop_grad[p(x)] ] ]
		```
		
		Unless p is not reparametrized, it is usually preferable to
		`use_reparametrization = True`.
		
		Warning: users are responsible for verifying `p` is a "reparameterized"
		distribution.
		
		Example Use:
		
		```python
		import tensorflow_probability as tfp
		tfd = tfp.distributions
		
		# Monte-Carlo approximation of a reparameterized distribution, e.g., Normal.
		
		num_draws = int(1e5)
		p = tfd.Normal(loc=0., scale=1.)
		q = tfd.Normal(loc=1., scale=2.)
		exact_kl_normal_normal = tfd.kl_divergence(p, q)
		# ==> 0.44314718
		approx_kl_normal_normal = tfp.monte_carlo.expectation(
		    f=lambda x: p.log_prob(x) - q.log_prob(x),
		    samples=p.sample(num_draws, seed=42),
		    log_prob=p.log_prob,
		    use_reparametrization=(p.reparameterization_type
		                           == distribution.FULLY_REPARAMETERIZED))
		# ==> 0.44632751
		# Relative Error: <1%
		
		# Monte-Carlo approximation of non-reparameterized distribution, e.g., Gamma.
		
		num_draws = int(1e5)
		p = ds.Gamma(concentration=1., rate=1.)
		q = ds.Gamma(concentration=2., rate=3.)
		exact_kl_gamma_gamma = tfd.kl_divergence(p, q)
		# ==> 0.37999129
		approx_kl_gamma_gamma = tfp.monte_carlo.expectation(
		    f=lambda x: p.log_prob(x) - q.log_prob(x),
		    samples=p.sample(num_draws, seed=42),
		    log_prob=p.log_prob,
		    use_reparametrization=(p.reparameterization_type
		                           == distribution.FULLY_REPARAMETERIZED))
		# ==> 0.37696719
		# Relative Error: <1%
		
		# For comparing the gradients, see `monte_carlo_test.py`.
		```
		
		Note: The above example is for illustration only. To compute approximate
		KL-divergence, the following is preferred:
		
		```python
		approx_kl_p_q = tfp.vi.monte_carlo_csiszar_f_divergence(
		    f=bf.kl_reverse,
		    p_log_prob=q.log_prob,
		    q=p,
		    num_draws=num_draws)
		```
		
		Args:
		  f: Python callable which can return `f(samples)`.
		  samples: `Tensor` of samples used to form the Monte-Carlo approximation of
		    \\(E_p[f(X)]\\).  A batch of samples should be indexed by `axis`
		    dimensions.
		  log_prob: Python callable which can return `log_prob(samples)`. Must
		    correspond to the natural-logarithm of the pdf/pmf of each sample. Only
		    required/used if `use_reparametrization=False`.
		    Default value: `None`.
		  use_reparametrization: Python `bool` indicating that the approximation
		    should use the fact that the gradient of samples is unbiased. Whether
		    `True` or `False`, this arg only affects the gradient of the resulting
		    `approx_expectation`.
		    Default value: `True`.
		  axis: The dimensions to average. If `None`, averages all
		    dimensions.
		    Default value: `0` (the left-most dimension).
		  keep_dims: If True, retains averaged dimensions using size `1`.
		    Default value: `False`.
		  name: A `name_scope` for operations created by this function.
		    Default value: `None` (which implies "expectation").
		
		Returns:
		  approx_expectation: `Tensor` corresponding to the Monte-Carlo approximation
		    of \\(E_p[f(X)]\\).
		
		Raises:
		  ValueError: if `f` is not a Python `callable`.
		  ValueError: if `use_reparametrization=False` and `log_prob` is not a Python
		    `callable`.
	**/
	static public function expectation(f:Dynamic, samples:Dynamic, ?log_prob:Dynamic, ?use_reparametrization:Dynamic, ?axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Monte Carlo estimate of \\(E_p[f(Z)] = E_q[f(Z) p(Z) / q(Z)]\\).
		
		With \\(p(z) := exp^{log_p(z)}\\), this `Op` returns
		
		\\(n^{-1} sum_{i=1}^n [ f(z_i) p(z_i) / q(z_i) ],  z_i ~ q,\\)
		\\(\approx E_q[ f(Z) p(Z) / q(Z) ]\\)
		\\(=       E_p[f(Z)]\\)
		
		This integral is done in log-space with max-subtraction to better handle the
		often extreme values that `f(z) p(z) / q(z)` can take on.
		
		If `f >= 0`, it is up to 2x more efficient to exponentiate the result of
		`expectation_importance_sampler_logspace` applied to `Log[f]`.
		
		User supplies either `Tensor` of samples `z`, or number of samples to draw `n`
		
		Args:
		  f: Callable mapping samples from `sampling_dist_q` to `Tensors` with shape
		    broadcastable to `q.batch_shape`.
		    For example, `f` works "just like" `q.log_prob`.
		  log_p:  Callable mapping samples from `sampling_dist_q` to `Tensors` with
		    shape broadcastable to `q.batch_shape`.
		    For example, `log_p` works "just like" `sampling_dist_q.log_prob`.
		  sampling_dist_q:  The sampling distribution.
		    `tfp.distributions.Distribution`.
		    `float64` `dtype` recommended.
		    `log_p` and `q` should be supported on the same set.
		  z:  `Tensor` of samples from `q`, produced by `q.sample` for some `n`.
		  n:  Integer `Tensor`.  Number of samples to generate if `z` is not provided.
		  seed:  Python integer to seed the random number generator.
		  name:  A name to give this `Op`.
		
		Returns:
		  The importance sampling estimate.  `Tensor` with `shape` equal
		    to batch shape of `q`, and `dtype` = `q.dtype`.
	**/
	static public function expectation_importance_sampler(f:Dynamic, log_p:Dynamic, sampling_dist_q:Dynamic, ?z:Dynamic, ?n:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Importance sampling with a positive function, in log-space.
		
		With \\(p(z) := exp^{log_p(z)}\\), and \\(f(z) = exp{log_f(z)}\\),
		this `Op` returns
		
		\\(Log[ n^{-1} sum_{i=1}^n [ f(z_i) p(z_i) / q(z_i) ] ],  z_i ~ q,\\)
		\\(\approx Log[ E_q[ f(Z) p(Z) / q(Z) ] ]\\)
		\\(=       Log[E_p[f(Z)]]\\)
		
		This integral is done in log-space with max-subtraction to better handle the
		often extreme values that `f(z) p(z) / q(z)` can take on.
		
		In contrast to `expectation_importance_sampler`, this `Op` returns values in
		log-space.
		
		
		User supplies either `Tensor` of samples `z`, or number of samples to draw `n`
		
		Args:
		  log_f: Callable mapping samples from `sampling_dist_q` to `Tensors` with
		    shape broadcastable to `q.batch_shape`.
		    For example, `log_f` works "just like" `sampling_dist_q.log_prob`.
		  log_p:  Callable mapping samples from `sampling_dist_q` to `Tensors` with
		    shape broadcastable to `q.batch_shape`.
		    For example, `log_p` works "just like" `q.log_prob`.
		  sampling_dist_q:  The sampling distribution.
		    `tfp.distributions.Distribution`.
		    `float64` `dtype` recommended.
		    `log_p` and `q` should be supported on the same set.
		  z:  `Tensor` of samples from `q`, produced by `q.sample` for some `n`.
		  n:  Integer `Tensor`.  Number of samples to generate if `z` is not provided.
		  seed:  Python integer to seed the random number generator.
		  name:  A name to give this `Op`.
		
		Returns:
		  Logarithm of the importance sampling estimate.  `Tensor` with `shape` equal
		    to batch shape of `q`, and `dtype` = `q.dtype`.
	**/
	static public function expectation_importance_sampler_logspace(log_f:Dynamic, log_p:Dynamic, sampling_dist_q:Dynamic, ?z:Dynamic, ?n:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}