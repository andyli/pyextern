/* This file is generated, do not edit! */
package tensorflow.contrib.bayesflow.python.ops.entropy_impl;
@:pythonImport("tensorflow.contrib.bayesflow.python.ops.entropy_impl") extern class Entropy_impl_Module {
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
		Mean over sample indices.  In this module this is always [0].
	**/
	static public function _sample_mean(values:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Estimate of the ratio appearing in the `ELBO` and `KL` divergence.
		
		With `p(z) := exp{log_p(z)}`, this `Op` returns an approximation of
		
		```
		E_q[ Log[p(Z) / q(Z)] ]
		```
		
		The term `E_q[ Log[p(Z)] ]` is always computed as a sample mean.
		The term `E_q[ Log[q(z)] ]` can be computed with samples, or an exact formula
		if `q.entropy()` is defined.  This is controlled with the kwarg `form`.
		
		This log-ratio appears in different contexts:
		
		#### `KL[q || p]`
		
		If `log_p(z) = Log[p(z)]` for distribution `p`, this `Op` approximates
		the negative Kullback-Leibler divergence.
		
		```
		elbo_ratio(log_p, q, n=100) = -1 * KL[q || p],
		KL[q || p] = E[ Log[q(Z)] - Log[p(Z)] ]
		```
		
		Note that if `p` is a `Distribution`, then
		`distributions.kl_divergence(q, p)` may be defined and available as an
		exact result.
		
		#### ELBO
		
		If `log_p(z) = Log[p(z, x)]` is the log joint of a distribution `p`, this is
		the Evidence Lower BOund (ELBO):
		
		```
		ELBO ~= E[ Log[p(Z, x)] - Log[q(Z)] ]
		      = Log[p(x)] - KL[q || p]
		     <= Log[p(x)]
		```
		
		User supplies either `Tensor` of samples `z`, or number of samples to draw `n`
		
		Args:
		  log_p:  Callable mapping samples from `q` to `Tensors` with
		    shape broadcastable to `q.batch_shape`.
		    For example, `log_p` works "just like" `q.log_prob`.
		  q:  `tf.contrib.distributions.Distribution`.
		  z:  `Tensor` of samples from `q`, produced by `q.sample(n)` for some `n`.
		  n:  Integer `Tensor`.  Number of samples to generate if `z` is not provided.
		  seed:  Python integer to seed the random number generator.
		  form:  Either `ELBOForms.analytic_entropy` (use formula for entropy of `q`)
		    or `ELBOForms.sample` (sample estimate of entropy), or `ELBOForms.default`
		    (attempt analytic entropy, fallback on sample).
		    Default value is `ELBOForms.default`.
		  name:  A name to give this `Op`.
		
		Returns:
		  Scalar `Tensor` holding sample mean KL divergence.  `shape` is the batch
		    shape of `q`, and `dtype` is the same as `q`.
		
		Raises:
		  ValueError:  If `form` is not handled by this function.
	**/
	static public function elbo_ratio(log_p:Dynamic, q:Dynamic, ?z:Dynamic, ?n:Dynamic, ?seed:Dynamic, ?form:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Monte Carlo or deterministic computation of Shannon's entropy.
		
		Depending on the kwarg `form`, this `Op` returns either the analytic entropy
		of the distribution `p`, or the sampled entropy:
		
		```
		-n^{-1} sum_{i=1}^n p.log_prob(z_i),  where z_i ~ p,
		    \approx - E_p[ Log[p(Z)] ]
		    = Entropy[p]
		```
		
		User supplies either `Tensor` of samples `z`, or number of samples to draw `n`
		
		Args:
		  p:  `tf.contrib.distributions.Distribution`
		  z:  `Tensor` of samples from `p`, produced by `p.sample(n)` for some `n`.
		  n:  Integer `Tensor`.  Number of samples to generate if `z` is not provided.
		  seed:  Python integer to seed the random number generator.
		  form:  Either `ELBOForms.analytic_entropy` (use formula for entropy of `q`)
		    or `ELBOForms.sample` (sample estimate of entropy), or `ELBOForms.default`
		    (attempt analytic entropy, fallback on sample).
		    Default value is `ELBOForms.default`.
		  name:  A name to give this `Op`.
		
		Returns:
		  A `Tensor` with same `dtype` as `p`, and shape equal to `p.batch_shape`.
		
		Raises:
		  ValueError:  If `form` not handled by this function.
		  ValueError:  If `form` is `ELBOForms.analytic_entropy` and `n` was provided.
	**/
	static public function entropy_shannon(p:Dynamic, ?z:Dynamic, ?n:Dynamic, ?seed:Dynamic, ?form:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Check args and return samples.
	**/
	static public function get_samples(dist:Dynamic, z:Dynamic, n:Dynamic, seed:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Exponentially decaying `Tensor` appropriate for Renyi ratios.
		
		When minimizing the Renyi divergence for `0 <= alpha < 1` (or maximizing the
		Renyi equivalent of elbo) in high dimensions, it is not uncommon to experience
		`NaN` and `inf` values when `alpha` is far from `1`.
		
		For that reason, it is often desirable to start the optimization with `alpha`
		very close to 1, and reduce it to a final `alpha_min` according to some
		schedule.  The user may even want to optimize using `elbo_ratio` for
		some fixed time before switching to Renyi based methods.
		
		This `Op` returns an `alpha` decaying exponentially with step:
		
		```
		s(step) = (exp{step / decay_time} - 1) / (e - 1)
		t(s) = max(0, min(s, 1)),  (smooth growth from 0 to 1)
		alpha(t) = (1 - t) alpha_min + t alpha_max
		```
		
		Args:
		  step:  Non-negative scalar `Tensor`.  Typically the global step or an
		    offset version thereof.
		  decay_time:  Positive scalar `Tensor`.
		  alpha_min:  `float` or `double` `Tensor`.
		    The minimal, final value of `alpha`, achieved when `step >= decay_time`
		  alpha_max:  `Tensor` of same `dtype` as `alpha_min`.
		    The maximal, beginning value of `alpha`, achieved when `step == 0`
		  name:  A name to give this `Op`.
		
		Returns:
		  alpha:  A `Tensor` of same `dtype` as `alpha_min`.
	**/
	static public function renyi_alpha(step:Dynamic, decay_time:Dynamic, alpha_min:Dynamic, ?alpha_max:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Monte Carlo estimate of the ratio appearing in Renyi divergence.
		
		This can be used to compute the Renyi (alpha) divergence, or a log evidence
		approximation based on Renyi divergence.
		
		#### Definition
		
		With `z_i` iid samples from `q`, and `exp{log_p(z)} = p(z)`, this `Op` returns
		the (biased for finite `n`) estimate:
		
		```
		(1 - alpha)^{-1} Log[ n^{-1} sum_{i=1}^n ( p(z_i) / q(z_i) )^{1 - alpha},
		\approx (1 - alpha)^{-1} Log[ E_q[ (p(Z) / q(Z))^{1 - alpha} ]  ]
		```
		
		This ratio appears in different contexts:
		
		#### Renyi divergence
		
		If `log_p(z) = Log[p(z)]` is the log prob of a distribution, and
		`alpha > 0`, `alpha != 1`, this `Op` approximates `-1` times Renyi divergence:
		
		```
		# Choose reasonably high n to limit bias, see below.
		renyi_ratio(log_p, q, alpha, n=100)
		                \approx -1 * D_alpha[q || p],  where
		D_alpha[q || p] := (1 - alpha)^{-1} Log E_q[(p(Z) / q(Z))^{1 - alpha}]
		```
		
		The Renyi (or "alpha") divergence is non-negative and equal to zero iff
		`q = p`.  Various limits of `alpha` lead to different special case results:
		
		```
		alpha       D_alpha[q || p]
		-----       ---------------
		--> 0       Log[ int_{q > 0} p(z) dz ]
		= 0.5,      -2 Log[1 - Hel^2[q || p]],  (\propto squared Hellinger distance)
		--> 1       KL[q || p]
		= 2         Log[ 1 + chi^2[q || p] ],   (\propto squared Chi-2 divergence)
		--> infty   Log[ max_z{q(z) / p(z)} ],  (min description length principle).
		```
		
		See "Renyi Divergence Variational Inference", by Li and Turner.
		
		#### Log evidence approximation
		
		If `log_p(z) = Log[p(z, x)]` is the log of the joint distribution `p`, this is
		an alternative to the ELBO common in variational inference.
		
		```
		L_alpha(q, p) = Log[p(x)] - D_alpha[q || p]
		```
		
		If `q` and `p` have the same support, and `0 < a <= b < 1`, one can show
		`ELBO <= D_b <= D_a <= Log[p(x)]`.  Thus, this `Op` allows a smooth
		interpolation between the ELBO and the true evidence.
		
		#### Stability notes
		
		Note that when `1 - alpha` is not small, the ratio `(p(z) / q(z))^{1 - alpha}`
		is subject to underflow/overflow issues.  For that reason, it is evaluated in
		log-space after centering.  Nonetheless, infinite/NaN results may occur.  For
		that reason, one may wish to shrink `alpha` gradually.  See the `Op`
		`renyi_alpha`.  Using `float64` will also help.
		
		
		#### Bias for finite sample size
		
		Due to nonlinearity of the logarithm, for random variables `{X_1,...,X_n}`,
		`E[ Log[sum_{i=1}^n X_i] ] != Log[ E[sum_{i=1}^n X_i] ]`.  As a result, this
		estimate is biased for finite `n`.  For `alpha < 1`, it is non-decreasing
		with `n` (in expectation).  For example, if `n = 1`, this estimator yields the
		same result as `elbo_ratio`, and as `n` increases the expected value
		of the estimator increases.
		
		#### Call signature
		
		User supplies either `Tensor` of samples `z`, or number of samples to draw `n`
		
		Args:
		  log_p:  Callable mapping samples from `q` to `Tensors` with
		    shape broadcastable to `q.batch_shape`.
		    For example, `log_p` works "just like" `q.log_prob`.
		  q: `tf.contrib.distributions.Distribution`.
		     `float64` `dtype` recommended.
		     `log_p` and `q` should be supported on the same set.
		  alpha:  `Tensor` with shape `q.batch_shape` and values not equal to 1.
		  z:  `Tensor` of samples from `q`, produced by `q.sample` for some `n`.
		  n:  Integer `Tensor`.  The number of samples to use if `z` is not provided.
		    Note that this can be highly biased for small `n`, see docstring.
		  seed:  Python integer to seed the random number generator.
		  name:  A name to give this `Op`.
		
		Returns:
		  renyi_result:  The scaled log of sample mean.  `Tensor` with `shape` equal
		    to batch shape of `q`, and `dtype` = `q.dtype`.
	**/
	static public function renyi_ratio(log_p:Dynamic, q:Dynamic, alpha:Dynamic, ?z:Dynamic, ?n:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
}