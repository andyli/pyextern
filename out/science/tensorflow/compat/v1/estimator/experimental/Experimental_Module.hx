/* This file is generated, do not edit! */
package tensorflow.compat.v1.estimator.experimental;
@:pythonImport("tensorflow.compat.v1.estimator.experimental") extern class Experimental_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Build a supervised_input_receiver_fn for raw features and labels.
		
		This function wraps tensor placeholders in a supervised_receiver_fn
		with the expectation that the features and labels appear precisely as
		the model_fn expects them. Features and labels can therefore be dicts of
		tensors, or raw tensors.
		
		Args:
		  features: a dict of string to `Tensor` or `Tensor`.
		  labels: a dict of string to `Tensor` or `Tensor`.
		  default_batch_size: the number of query examples expected per batch. Leave
		    unset for variable batch size (recommended).
		
		Returns:
		  A supervised_input_receiver_fn.
		
		Raises:
		  ValueError: if features and labels have overlapping keys.
	**/
	static public function build_raw_supervised_input_receiver_fn(features:Dynamic, labels:Dynamic, ?default_batch_size:Dynamic):Dynamic;
	/**
		Calls logit_fn (experimental).
		
		THIS FUNCTION IS EXPERIMENTAL. Keras layers/models are the recommended APIs
		for logit and model composition.
		
		A utility function that calls the provided logit_fn with the relevant subset
		of provided arguments. Similar to tf.estimator._call_model_fn().
		
		Args:
		  logit_fn: A logit_fn as defined above.
		  features: The features dict.
		  mode: TRAIN / EVAL / PREDICT ModeKeys.
		  params: The hyperparameter dict.
		  config: The configuration object.
		
		Returns:
		  A logit Tensor, the output of logit_fn.
		
		Raises:
		  ValueError: if logit_fn does not return a Tensor or a dictionary mapping
		    strings to Tensors.
	**/
	static public function call_logit_fn(logit_fn:Dynamic, features:Dynamic, mode:Dynamic, params:Dynamic, config:Dynamic):Dynamic;
	/**
		Function builder for a dnn logit_fn.
		
		Args:
		  units: An int indicating the dimension of the logit layer.  In the MultiHead
		    case, this should be the sum of all component Heads' logit dimensions.
		  hidden_units: Iterable of integer number of hidden units per layer.
		  feature_columns: Iterable of `feature_column._FeatureColumn` model inputs.
		  activation_fn: Activation function applied to each layer.
		  dropout: When not `None`, the probability we will drop out a given
		    coordinate.
		  input_layer_partitioner: Partitioner for input layer.
		  batch_norm: Whether to use batch normalization after each hidden layer.
		
		Returns:
		  A logit_fn (see below).
		
		Raises:
		  ValueError: If units is not an int.
	**/
	static public function dnn_logit_fn_builder(units:Dynamic, hidden_units:Dynamic, feature_columns:Dynamic, activation_fn:Dynamic, dropout:Dynamic, input_layer_partitioner:Dynamic, batch_norm:Dynamic):Dynamic;
	/**
		Function builder for a linear logit_fn.
		
		Args:
		  units: An int indicating the dimension of the logit layer.
		  feature_columns: An iterable containing all the feature columns used by the
		    model.
		  sparse_combiner: A string specifying how to reduce if a categorical column
		    is multivalent.  One of "mean", "sqrtn", and "sum".
		
		Returns:
		  A logit_fn (see below).
	**/
	static public function linear_logit_fn_builder(units:Dynamic, feature_columns:Dynamic, ?sparse_combiner:Dynamic):Dynamic;
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
	/**
		Creates a proper StopAtCheckpointStepHook based on chief status.
	**/
	static public function make_stop_at_checkpoint_step_hook(estimator:Dynamic, last_step:Dynamic, ?wait_after_file_check_secs:Dynamic):Dynamic;
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