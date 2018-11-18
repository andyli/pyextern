/* This file is generated, do not edit! */
package tensorflow.contrib.estimator.python.estimator.extenders;
@:pythonImport("tensorflow.contrib.estimator.python.estimator.extenders") extern class Extenders_Module {
	static public var _VALID_METRIC_FN_ARGS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Calls metric fn with proper arguments.
	**/
	static public function _call_metric_fn(metric_fn:Dynamic, features:Dynamic, labels:Dynamic, predictions:Dynamic, config:Dynamic):Dynamic;
	static public function _verify_metric_fn_args(metric_fn:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a new `tf.estimator.Estimator` which has given metrics.
		
		Example:
		
		```python
		  def my_auc(labels, predictions):
		    return {'auc': tf.metrics.auc(labels, predictions['logistic'])}
		
		  estimator = tf.estimator.DNNClassifier(...)
		  estimator = tf.contrib.estimator.add_metrics(estimator, my_auc)
		  estimator.train(...)
		  estimator.evaluate(...)
		```
		Example usage of custom metric which uses features:
		
		```python
		  def my_auc(features, labels, predictions):
		    return {'auc': tf.metrics.auc(
		      labels, predictions['logistic'], weights=features['weight'])}
		
		  estimator = tf.estimator.DNNClassifier(...)
		  estimator = tf.contrib.estimator.add_metrics(estimator, my_auc)
		  estimator.train(...)
		  estimator.evaluate(...)
		```
		
		Args:
		  estimator: A `tf.estimator.Estimator` object.
		  metric_fn: A function which should obey the following signature:
		    - Args: can only have following four arguments in any order:
		      * predictions: Predictions `Tensor` or dict of `Tensor` created by given
		        `estimator`.
		      * features: Input `dict` of `Tensor` objects created by `input_fn` which
		        is given to `estimator.evaluate` as an argument.
		      * labels:  Labels `Tensor` or dict of `Tensor` created by `input_fn`
		        which is given to `estimator.evaluate` as an argument.
		      * config: config attribute of the `estimator`.
		     - Returns:
		       Dict of metric results keyed by name. Final metrics are a union of this
		       and `estimator's` existing metrics. If there is a name conflict between
		       this and `estimator`s existing metrics, this will override the existing
		       one. The values of the dict are the results of calling a metric
		       function, namely a `(metric_tensor, update_op)` tuple.
		
		Returns:
		    A new `tf.estimator.Estimator` which has a union of original metrics with
		      given ones.
	**/
	static public function add_metrics(estimator:Dynamic, metric_fn:Dynamic):Dynamic;
	/**
		Returns an optimizer which clips gradients before applying them.
		
		Example:
		
		```python
		optimizer = tf.train.ProximalAdagradOptimizer(
		    learning_rate=0.1,
		    l1_regularization_strength=0.001)
		optimizer = tf.contrib.estimator.clip_gradients_by_norm(
		    optimizer, clip_norm)
		estimator = tf.estimator.DNNClassifier(
		    feature_columns=[...],
		    hidden_units=[1024, 512, 256],
		    optimizer=optimizer)
		```
		
		Args:
		  optimizer: An `tf.Optimizer` object to apply gradients.
		  clip_norm: A 0-D (scalar) `Tensor` > 0. The clipping ratio.
		
		Returns:
		  A `tf.Optimizer`.
	**/
	static public function clip_gradients_by_norm(optimizer:Dynamic, clip_norm:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Forward features to predictions dictionary.
		
		In some cases, user wants to see some of the features in estimators prediction
		output. As an example, consider a batch prediction service: The service simply
		runs inference on the users graph and returns the results. Keys are essential
		because there is no order guarantee on the outputs so they need to be rejoined
		to the inputs via keys or transclusion of the inputs in the outputs.
		Example:
		```python
		  def input_fn():
		    features, labels = ...
		    features['unique_example_id'] = ...
		    features, labels
		  estimator = tf.estimator.LinearClassifier(...)
		  estimator = tf.contrib.estimator.forward_features(
		      estimator, 'unique_example_id')
		  estimator.train(...)
		  assert 'unique_example_id' in estimator.predict(...)
		```
		Args:
		  estimator: A `tf.estimator.Estimator` object.
		  keys: A `string` or a `list` of `string`. If it is `None`, all of the
		    `features` in `dict` is forwarded to the `predictions`. If it is a
		    `string`, only given key is forwarded. If it is a `list` of strings, all
		    the given `keys` are forwarded.
		  sparse_default_values: A dict of `str` keys mapping the name of the sparse
		    features to be converted to dense, to the default value to use. Only
		    sparse features indicated in the dictionary are converted to dense and the
		    provided default value is used.
		
		Returns:
		    A new `tf.estimator.Estimator` which forwards features to predictions.
		Raises:
		  ValueError:
		    * if `keys` is already part of `predictions`. We don't allow
		      override.
		    * if 'keys' does not exist in `features`.
		  TypeError: if `keys` type is not one of `string` or list/tuple of `string`.
	**/
	static public function forward_features(estimator:Dynamic, ?keys:Dynamic, ?sparse_default_values:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}