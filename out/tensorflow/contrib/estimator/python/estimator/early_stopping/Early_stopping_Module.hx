/* This file is generated, do not edit! */
package tensorflow.contrib.estimator.python.estimator.early_stopping;
@:pythonImport("tensorflow.contrib.estimator.python.estimator.early_stopping") extern class Early_stopping_Module {
	static public var _EVENT_FILE_GLOB_PATTERN : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_or_create_stop_var():Dynamic;
	/**
		Returns hook to stop training if given metric shows no improvement.
	**/
	static public function _stop_if_no_metric_improvement_hook(estimator:Dynamic, metric_name:Dynamic, max_steps_without_improvement:Dynamic, higher_is_better:Dynamic, eval_dir:Dynamic, min_steps:Dynamic, run_every_secs:Dynamic, run_every_steps:Dynamic):Dynamic;
	/**
		Creates early-stopping hook to stop training if threshold is crossed.
	**/
	static public function _stop_if_threshold_crossed_hook(estimator:Dynamic, metric_name:Dynamic, threshold:Dynamic, higher_is_better:Dynamic, eval_dir:Dynamic, min_steps:Dynamic, run_every_secs:Dynamic, run_every_steps:Dynamic):Dynamic;
	/**
		Yields `tensorflow.Event` protos from event files in the eval dir.
		
		Args:
		  eval_dir: Directory containing summary files with eval metrics.
		
		Yields:
		  `tensorflow.Event` object read from the event files.
	**/
	static public function _summaries(eval_dir:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Creates early-stopping hook.
		
		Returns a `SessionRunHook` that stops training when `should_stop_fn` returns
		`True`.
		
		Usage example:
		
		```python
		estimator = ...
		hook = early_stopping.make_early_stopping_hook(
		    estimator, should_stop_fn=make_stop_fn(...))
		train_spec = tf.estimator.TrainSpec(..., hooks=[hook])
		tf.estimator.train_and_evaluate(estimator, train_spec, ...)
		```
		
		Caveat: Current implementation supports early-stopping both training and
		evaluation in local mode. In distributed mode, training can be stopped but
		evaluation (where it's a separate job) will indefinitely wait for new model
		checkpoints to evaluate, so you will need other means to detect and stop it.
		Early-stopping evaluation in distributed mode requires changes in
		`train_and_evaluate` API and will be addressed in a future revision.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance.
		  should_stop_fn: `callable`, function that takes no arguments and returns a
		    `bool`. If the function returns `True`, stopping will be initiated by the
		    chief.
		  run_every_secs: If specified, calls `should_stop_fn` at an interval of
		    `run_every_secs` seconds. Defaults to 60 seconds. Either this or
		    `run_every_steps` must be set.
		  run_every_steps: If specified, calls `should_stop_fn` every
		    `run_every_steps` steps. Either this or `run_every_secs` must be set.
		
		Returns:
		  A `SessionRunHook` that periodically executes `should_stop_fn` and initiates
		  early stopping if the function returns `True`.
		
		Raises:
		  TypeError: If `estimator` is not of type `tf.estimator.Estimator`.
		  ValueError: If both `run_every_secs` and `run_every_steps` are set.
	**/
	static public function make_early_stopping_hook(estimator:Dynamic, should_stop_fn:Dynamic, ?run_every_secs:Dynamic, ?run_every_steps:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Helper to read eval metrics from eval summary files.
		
		Args:
		  eval_dir: Directory containing summary files with eval metrics.
		
		Returns:
		  A `dict` with global steps mapping to `dict` of metric names and values.
	**/
	static public function read_eval_metrics(eval_dir:Dynamic):Dynamic;
	/**
		Creates hook to stop if the given metric is higher than the threshold.
		
		Usage example:
		
		```python
		estimator = ...
		# Hook to stop training if accuracy becomes higher than 0.9.
		hook = early_stopping.stop_if_higher_hook(estimator, "accuracy", 0.9)
		train_spec = tf.estimator.TrainSpec(..., hooks=[hook])
		tf.estimator.train_and_evaluate(estimator, train_spec, ...)
		```
		
		Caveat: Current implementation supports early-stopping both training and
		evaluation in local mode. In distributed mode, training can be stopped but
		evaluation (where it's a separate job) will indefinitely wait for new model
		checkpoints to evaluate, so you will need other means to detect and stop it.
		Early-stopping evaluation in distributed mode requires changes in
		`train_and_evaluate` API and will be addressed in a future revision.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance.
		  metric_name: `str`, metric to track. "loss", "accuracy", etc.
		  threshold: Numeric threshold for the given metric.
		  eval_dir: If set, directory containing summary files with eval metrics. By
		    default, `estimator.eval_dir()` will be used.
		  min_steps: `int`, stop is never requested if global step is less than this
		    value. Defaults to 0.
		  run_every_secs: If specified, calls `should_stop_fn` at an interval of
		    `run_every_secs` seconds. Defaults to 60 seconds. Either this or
		    `run_every_steps` must be set.
		  run_every_steps: If specified, calls `should_stop_fn` every
		    `run_every_steps` steps. Either this or `run_every_secs` must be set.
		
		Returns:
		  An early-stopping hook of type `SessionRunHook` that periodically checks
		  if the given metric is higher than specified threshold and initiates
		  early stopping if true.
	**/
	static public function stop_if_higher_hook(estimator:Dynamic, metric_name:Dynamic, threshold:Dynamic, ?eval_dir:Dynamic, ?min_steps:Dynamic, ?run_every_secs:Dynamic, ?run_every_steps:Dynamic):Dynamic;
	/**
		Creates hook to stop if the given metric is lower than the threshold.
		
		Usage example:
		
		```python
		estimator = ...
		# Hook to stop training if loss becomes lower than 100.
		hook = early_stopping.stop_if_lower_hook(estimator, "loss", 100)
		train_spec = tf.estimator.TrainSpec(..., hooks=[hook])
		tf.estimator.train_and_evaluate(estimator, train_spec, ...)
		```
		
		Caveat: Current implementation supports early-stopping both training and
		evaluation in local mode. In distributed mode, training can be stopped but
		evaluation (where it's a separate job) will indefinitely wait for new model
		checkpoints to evaluate, so you will need other means to detect and stop it.
		Early-stopping evaluation in distributed mode requires changes in
		`train_and_evaluate` API and will be addressed in a future revision.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance.
		  metric_name: `str`, metric to track. "loss", "accuracy", etc.
		  threshold: Numeric threshold for the given metric.
		  eval_dir: If set, directory containing summary files with eval metrics. By
		    default, `estimator.eval_dir()` will be used.
		  min_steps: `int`, stop is never requested if global step is less than this
		    value. Defaults to 0.
		  run_every_secs: If specified, calls `should_stop_fn` at an interval of
		    `run_every_secs` seconds. Defaults to 60 seconds. Either this or
		    `run_every_steps` must be set.
		  run_every_steps: If specified, calls `should_stop_fn` every
		    `run_every_steps` steps. Either this or `run_every_secs` must be set.
		
		Returns:
		  An early-stopping hook of type `SessionRunHook` that periodically checks
		  if the given metric is lower than specified threshold and initiates
		  early stopping if true.
	**/
	static public function stop_if_lower_hook(estimator:Dynamic, metric_name:Dynamic, threshold:Dynamic, ?eval_dir:Dynamic, ?min_steps:Dynamic, ?run_every_secs:Dynamic, ?run_every_steps:Dynamic):Dynamic;
	/**
		Creates hook to stop if metric does not decrease within given max steps.
		
		Usage example:
		
		```python
		estimator = ...
		# Hook to stop training if loss does not decrease in over 100000 steps.
		hook = early_stopping.stop_if_no_decrease_hook(estimator, "loss", 100000)
		train_spec = tf.estimator.TrainSpec(..., hooks=[hook])
		tf.estimator.train_and_evaluate(estimator, train_spec, ...)
		```
		
		Caveat: Current implementation supports early-stopping both training and
		evaluation in local mode. In distributed mode, training can be stopped but
		evaluation (where it's a separate job) will indefinitely wait for new model
		checkpoints to evaluate, so you will need other means to detect and stop it.
		Early-stopping evaluation in distributed mode requires changes in
		`train_and_evaluate` API and will be addressed in a future revision.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance.
		  metric_name: `str`, metric to track. "loss", "accuracy", etc.
		  max_steps_without_decrease: `int`, maximum number of training steps with no
		    decrease in the given metric.
		  eval_dir: If set, directory containing summary files with eval metrics. By
		    default, `estimator.eval_dir()` will be used.
		  min_steps: `int`, stop is never requested if global step is less than this
		    value. Defaults to 0.
		  run_every_secs: If specified, calls `should_stop_fn` at an interval of
		    `run_every_secs` seconds. Defaults to 60 seconds. Either this or
		    `run_every_steps` must be set.
		  run_every_steps: If specified, calls `should_stop_fn` every
		    `run_every_steps` steps. Either this or `run_every_secs` must be set.
		
		Returns:
		  An early-stopping hook of type `SessionRunHook` that periodically checks
		  if the given metric shows no decrease over given maximum number of
		  training steps, and initiates early stopping if true.
	**/
	static public function stop_if_no_decrease_hook(estimator:Dynamic, metric_name:Dynamic, max_steps_without_decrease:Dynamic, ?eval_dir:Dynamic, ?min_steps:Dynamic, ?run_every_secs:Dynamic, ?run_every_steps:Dynamic):Dynamic;
	/**
		Creates hook to stop if metric does not increase within given max steps.
		
		Usage example:
		
		```python
		estimator = ...
		# Hook to stop training if accuracy does not increase in over 100000 steps.
		hook = early_stopping.stop_if_no_increase_hook(estimator, "accuracy", 100000)
		train_spec = tf.estimator.TrainSpec(..., hooks=[hook])
		tf.estimator.train_and_evaluate(estimator, train_spec, ...)
		```
		
		Caveat: Current implementation supports early-stopping both training and
		evaluation in local mode. In distributed mode, training can be stopped but
		evaluation (where it's a separate job) will indefinitely wait for new model
		checkpoints to evaluate, so you will need other means to detect and stop it.
		Early-stopping evaluation in distributed mode requires changes in
		`train_and_evaluate` API and will be addressed in a future revision.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance.
		  metric_name: `str`, metric to track. "loss", "accuracy", etc.
		  max_steps_without_increase: `int`, maximum number of training steps with no
		    increase in the given metric.
		  eval_dir: If set, directory containing summary files with eval metrics. By
		    default, `estimator.eval_dir()` will be used.
		  min_steps: `int`, stop is never requested if global step is less than this
		    value. Defaults to 0.
		  run_every_secs: If specified, calls `should_stop_fn` at an interval of
		    `run_every_secs` seconds. Defaults to 60 seconds. Either this or
		    `run_every_steps` must be set.
		  run_every_steps: If specified, calls `should_stop_fn` every
		    `run_every_steps` steps. Either this or `run_every_secs` must be set.
		
		Returns:
		  An early-stopping hook of type `SessionRunHook` that periodically checks
		  if the given metric shows no increase over given maximum number of
		  training steps, and initiates early stopping if true.
	**/
	static public function stop_if_no_increase_hook(estimator:Dynamic, metric_name:Dynamic, max_steps_without_increase:Dynamic, ?eval_dir:Dynamic, ?min_steps:Dynamic, ?run_every_secs:Dynamic, ?run_every_steps:Dynamic):Dynamic;
}