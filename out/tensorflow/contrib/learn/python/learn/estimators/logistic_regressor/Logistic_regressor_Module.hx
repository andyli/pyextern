/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.logistic_regressor;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.logistic_regressor") extern class Logistic_regressor_Module {
	/**
		Builds a logistic regression Estimator for binary classification.
		
		THIS CLASS IS DEPRECATED. See
		[contrib/learn/README.md](https://www.tensorflow.org/code/tensorflow/contrib/learn/README.md)
		for general migration instructions.
		
		This method provides a basic Estimator with some additional metrics for custom
		binary classification models, including AUC, precision/recall and accuracy.
		
		Example:
		
		```python
		  # See tf.contrib.learn.Estimator(...) for details on model_fn structure
		  def my_model_fn(...):
		    pass
		
		  estimator = LogisticRegressor(model_fn=my_model_fn)
		
		  # Input builders
		  def input_fn_train:
		    pass
		
		  estimator.fit(input_fn=input_fn_train)
		  estimator.predict(x=x)
		```
		
		Args:
		  model_fn: Model function with the signature:
		    `(features, labels, mode) -> (predictions, loss, train_op)`.
		    Expects the returned predictions to be probabilities in [0.0, 1.0].
		  thresholds: List of floating point thresholds to use for accuracy,
		    precision, and recall metrics. If `None`, defaults to `[0.5]`.
		  model_dir: Directory to save model parameters, graphs, etc. This can also
		    be used to load checkpoints from the directory into a estimator to
		    continue training a previously saved model.
		  config: A RunConfig configuration object.
		  feature_engineering_fn: Feature engineering function. Takes features and
		                    labels which are the output of `input_fn` and
		                    returns features and labels which will be fed
		                    into the model.
		
		Returns:
		  An `Estimator` instance.
	**/
	static public function LogisticRegressor(model_fn:Dynamic, ?thresholds:Dynamic, ?model_dir:Dynamic, ?config:Dynamic, ?feature_engineering_fn:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a model_fn with additional logistic metrics.
		
		Args:
		  model_fn: Model function with the signature:
		    `(features, labels, mode) -> (predictions, loss, train_op)`.
		    Expects the returned predictions to be probabilities in [0.0, 1.0].
		
		Returns:
		  model_fn that can be used with Estimator.
	**/
	static public function _get_model_fn_with_logistic_metrics(model_fn:Dynamic):Dynamic;
	/**
		Returns a dictionary of evaluation metric ops for logistic regression.
		
		Args:
		  labels: The labels `Tensor`, or a dict with only one `Tensor` keyed by name.
		  predictions: The predictions `Tensor`.
		  thresholds: List of floating point thresholds to use for accuracy,
		    precision, and recall metrics.
		
		Returns:
		  A dict of metric results keyed by name.
	**/
	static public function _make_logistic_eval_metric_ops(labels:Dynamic, predictions:Dynamic, thresholds:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}