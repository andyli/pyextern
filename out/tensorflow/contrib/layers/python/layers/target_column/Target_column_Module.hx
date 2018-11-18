/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.target_column;
@:pythonImport("tensorflow.contrib.layers.python.layers.target_column") extern class Target_column_Module {
	/**
		DEPRECATED FUNCTION
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-12.
		Instructions for updating:
		This file will be removed after the deprecation date.Please switch to third_party/tensorflow/contrib/learn/python/learn/estimators/head.py
	**/
	static public function ProblemType():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _accuracy_at_threshold(threshold:Dynamic):Dynamic;
	static public function _float_weights_or_none(weights:Dynamic):Dynamic;
	static public function _labels_streaming_mean(unused_predictions:Dynamic, labels:Dynamic, ?weights:Dynamic):Dynamic;
	static public function _log_loss_with_two_classes(logits:Dynamic, target:Dynamic):Dynamic;
	static public function _mean_squared_loss(logits:Dynamic, target:Dynamic):Dynamic;
	static public function _predictions_streaming_mean(predictions:Dynamic, unused_labels:Dynamic, ?weights:Dynamic):Dynamic;
	static public function _run_metrics(predictions:Dynamic, labels:Dynamic, metrics:Dynamic, weights:Dynamic):Dynamic;
	static public function _softmax_cross_entropy_loss(logits:Dynamic, target:Dynamic):Dynamic;
	static public function _streaming_at_threshold(streaming_metrics_fn:Dynamic, threshold:Dynamic):Dynamic;
	static public function _streaming_auc(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a _TargetColumn for binary classification with SVMs. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-12.
		Instructions for updating:
		This file will be removed after the deprecation date.Please switch to third_party/tensorflow/contrib/learn/python/learn/estimators/head.py
		
		The target column uses binary hinge loss.
		
		Args:
		  label_name: String, name of the key in label dict. Can be null if label
		    is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		
		Returns:
		  An instance of _TargetColumn.
	**/
	static public function binary_svm_target(?label_name:Dynamic, ?weight_column_name:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns a dictionary of basic metrics for logistic regression. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-12.
		Instructions for updating:
		This file will be removed after the deprecation date.Please switch to third_party/tensorflow/contrib/learn/python/learn/estimators/head.py
		
		Args:
		  thresholds: List of floating point thresholds to use for accuracy,
		    precision, and recall metrics. If None, defaults to [0.5].
		
		Returns:
		  Dictionary mapping metrics string names to metrics functions.
	**/
	static public function get_default_binary_metrics_for_eval(thresholds:Dynamic):Dynamic;
	/**
		Creates a _TargetColumn for multi class single label classification. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-12.
		Instructions for updating:
		This file will be removed after the deprecation date.Please switch to third_party/tensorflow/contrib/learn/python/learn/estimators/head.py
		
		The target column uses softmax cross entropy loss.
		
		Args:
		  n_classes: Integer, number of classes, must be >= 2
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		
		Returns:
		  An instance of _MultiClassTargetColumn.
		
		Raises:
		  ValueError: if n_classes is < 2
	**/
	static public function multi_class_target(n_classes:Dynamic, ?label_name:Dynamic, ?weight_column_name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a _TargetColumn for linear regression. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-12.
		Instructions for updating:
		This file will be removed after the deprecation date.Please switch to third_party/tensorflow/contrib/learn/python/learn/estimators/head.py
		
		Args:
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  label_dimension: dimension of the target for multilabels.
		
		Returns:
		  An instance of _TargetColumn
	**/
	static public function regression_target(?label_name:Dynamic, ?weight_column_name:Dynamic, ?label_dimension:Dynamic):Dynamic;
}