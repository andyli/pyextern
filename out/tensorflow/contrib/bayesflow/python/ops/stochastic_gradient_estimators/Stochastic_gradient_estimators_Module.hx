/* This file is generated, do not edit! */
package tensorflow.contrib.bayesflow.python.ops.stochastic_gradient_estimators;
@:pythonImport("tensorflow.contrib.bayesflow.python.ops.stochastic_gradient_estimators") extern class Stochastic_gradient_estimators_Module {
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
		Stably calculate log(exp(x)-1).
	**/
	static public function _logexpm1(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		ExponentialMovingAverage baseline.
		
		Args:
		  ema_decay: decay rate for the ExponentialMovingAverage.
		  name: name for variable scope of the ExponentialMovingAverage.
		
		Returns:
		  Callable baseline function that takes the `StochasticTensor` (unused) and
		  the downstream `loss`, and returns an EMA of the loss.
	**/
	static public function get_mean_baseline(?ema_decay:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Score function estimator with advantage function.
		
		Args:
		  advantage_fn: callable that takes the `StochasticTensor` and the
		    downstream `loss` and returns a `Tensor` advantage
		    (e.g. `loss - baseline`).
		  name: name to prepend ops with.
		
		Returns:
		  Callable score function estimator that takes the `StochasticTensor`, the
		  sampled `value`, and the downstream `loss`, and uses the provided advantage.
	**/
	static public function get_score_function_with_advantage(?advantage_fn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Score function estimator with baseline function.
		
		Args:
		  baseline_fn: callable that takes the `StochasticTensor` and the downstream
		    `loss` and returns a `Tensor` baseline to be subtracted from the `loss`.
		    If None, defaults to `get_mean_baseline`, which is an EMA of the loss.
		  name: name to prepend ops with.
		
		Returns:
		  Callable score function estimator that takes the `StochasticTensor`, the
		  sampled `value`, and the downstream `loss`, and subtracts the provided
		  `baseline` from the `loss`.
	**/
	static public function get_score_function_with_baseline(?baseline_fn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Score function estimator with constant baseline.
		
		Args:
		  baseline: `Tensor` to be subtracted from loss.
		  name: name to prepend ops with.
		
		Returns:
		  Callable score function estimator that takes the `StochasticTensor`, the
		  sampled `value`, and the downstream `loss`, and subtracts the provided
		  `baseline` from the `loss`.
	**/
	static public function get_score_function_with_constant_baseline(baseline:Dynamic, ?name:Dynamic):Dynamic;
	/**
		VIMCO (Variational Inference for Monte Carlo Objectives) baseline.
		
		Implements VIMCO baseline from the article of the same name:
		
		https://arxiv.org/pdf/1602.06725v2.pdf
		
		Given a `loss` tensor (containing non-negative probabilities or ratios),
		calculates the advantage VIMCO advantage via Eq. 9 of the above paper.
		
		The tensor `loss` should be shaped `[n, ...]`, with rank at least 1.  Here,
		the first axis is considered the single sampling dimension and `n` must
		be at least 2.  Specifically, the `StochasticTensor` is assumed to have
		used the `SampleValue(n)` value type with `n > 1`.
		
		Args:
		  have_log_loss: Python `Boolean`.  If `True`, the loss is assumed to be the
		    log loss.  If `False` (the default), it is assumed to be a nonnegative
		    probability or probability ratio.
		
		Returns:
		  Callable baseline function that takes the `StochasticTensor` (unused) and
		  the downstream `loss`, and returns the VIMCO baseline for the loss.
	**/
	static public function get_vimco_advantage_fn(?have_log_loss:Dynamic):Dynamic;
	/**
		Generates `__all__` from the docstring of one or more modules.
		
		Usage: `make_all(__name__)` or
		`make_all(__name__, [sys.modules(__name__), other_module])`. The doc string
		modules must each a docstring, and `__all__` will contain all symbols with
		`@@` references, where that symbol currently exists in the module named
		`module_name`.
		
		Args:
		  module_name: The name of the module (usually `__name__`).
		  doc_string_modules: a list of modules from which to take docstring.
		  If None, then a list containing only the module named `module_name` is used.
		
		Returns:
		  A list suitable for use as `__all__`.
	**/
	static public function make_all(module_name:Dynamic, ?doc_string_modules:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Score function estimator.
		
		Computes the integrand of the score function with a baseline:
		`p.log_prob(value) * (loss - baseline)`.
		
		It will add a `stop_gradient` to the advantage `(loss - baseline)`.
		
		Args:
		  stochastic_tensor: `StochasticTensor` p(x).
		  value: `Tensor` x. Samples from p(x).
		  loss: `Tensor`.
		  baseline: `Tensor` broadcastable to `loss`.
		  name: name to prepend ops with.
		
		Returns:
		  `Tensor` `p.log_prob(x) * (loss - b)`. Taking the gradient yields the score
		  function estimator.
	**/
	static public function score_function(stochastic_tensor:Dynamic, value:Dynamic, loss:Dynamic, ?baseline:Dynamic, ?name:Dynamic):Dynamic;
}