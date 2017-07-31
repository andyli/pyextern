/* This file is generated, do not edit! */
package tensorflow.contrib.bayesflow.python.ops.monte_carlo;
@:pythonImport("tensorflow.contrib.bayesflow.python.ops.monte_carlo") extern class Monte_carlo_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Monte Carlo estimate of an expectation:  `E_p[f(Z)]` with sample mean.
		
		This `Op` returns
		
		```
		n^{-1} sum_{i=1}^n f(z_i),  where z_i ~ p
		\approx E_p[f(Z)]
		```
		
		User supplies either `Tensor` of samples `z`, or number of samples to draw `n`
		
		Args:
		  f: Callable mapping samples from `p` to `Tensors`.
		  p:  `tf.contrib.distributions.Distribution`.
		  z:  `Tensor` of samples from `p`, produced by `p.sample` for some `n`.
		  n:  Integer `Tensor`.  Number of samples to generate if `z` is not provided.
		  seed:  Python integer to seed the random number generator.
		  name:  A name to give this `Op`.
		
		Returns:
		  A `Tensor` with the same `dtype` as `p`.
		
		Example:
		
		```python
		N_samples = 10000
		
		distributions = tf.contrib.distributions
		
		dist = distributions.Uniform([0.0, 0.0], [1.0, 2.0])
		elementwise_mean = lambda x: x
		mean_sum = lambda x: tf.reduce_sum(x, 1)
		
		estimate_elementwise_mean_tf = monte_carlo.expectation(elementwise_mean,
		                                                       dist,
		                                                       n=N_samples)
		estimate_mean_sum_tf = monte_carlo.expectation(mean_sum,
		                                               dist,
		                                               n=N_samples)
		
		with tf.Session() as sess:
		  estimate_elementwise_mean, estimate_mean_sum = (
		      sess.run([estimate_elementwise_mean_tf, estimate_mean_sum_tf]))
		print estimate_elementwise_mean
		>>> np.array([ 0.50018013  1.00097895], dtype=np.float32)
		print estimate_mean_sum
		>>> 1.49571
		
		```
	**/
	static public function expectation(f:Dynamic, p:Dynamic, ?z:Dynamic, ?n:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Monte Carlo estimate of `E_p[f(Z)] = E_q[f(Z) p(Z) / q(Z)]`.
		
		With `p(z) := exp{log_p(z)}`, this `Op` returns
		
		```
		n^{-1} sum_{i=1}^n [ f(z_i) p(z_i) / q(z_i) ],  z_i ~ q,
		\approx E_q[ f(Z) p(Z) / q(Z) ]
		=       E_p[f(Z)]
		```
		
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
		    `tf.contrib.distributions.Distribution`.
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
		
		With `p(z) := exp{log_p(z)}`, and `f(z) = exp{log_f(z)}`, this `Op`
		returns
		
		```
		Log[ n^{-1} sum_{i=1}^n [ f(z_i) p(z_i) / q(z_i) ] ],  z_i ~ q,
		\approx Log[ E_q[ f(Z) p(Z) / q(Z) ] ]
		=       Log[E_p[f(Z)]]
		```
		
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
		    `tf.contrib.distributions.Distribution`.
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
}