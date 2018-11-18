/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.moving_stats;
@:pythonImport("tensorflow.contrib.distributions.python.ops.moving_stats") extern class Moving_stats_Module {
	static public var __all__ : Dynamic;
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
	static public var division : Dynamic;
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
	static public var print_function : Dynamic;
}