/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.target_column;
@:pythonImport("tensorflow.contrib.layers.python.layers.target_column") extern class Target_column_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a dictionary of basic metrics for logistic regression.
		
		Args:
		  thresholds: List of floating point thresholds to use for accuracy,
		    precision, and recall metrics. If None, defaults to [0.5].
		
		Returns:
		  Dictionary mapping metrics string names to metrics functions.
	**/
	static public function _get_default_binary_metrics_for_eval(thresholds:Dynamic):Dynamic;
	static public function _log_loss_with_two_classes(logits:Dynamic, target:Dynamic):Dynamic;
	static public function _mean_squared_loss(logits:Dynamic, target:Dynamic):Dynamic;
	static public function _predictions_streaming_mean(predictions:Dynamic, unused_targets:Dynamic):Dynamic;
	static public function _run_metrics(predictions:Dynamic, targets:Dynamic, metrics:Dynamic, weights:Dynamic):Dynamic;
	static public function _softmax_cross_entropy_loss(logits:Dynamic, target:Dynamic):Dynamic;
	static public function _streaming_with_threshold(streaming_metrics_fn:Dynamic, threshold:Dynamic):Dynamic;
	static public function _targets_streaming_mean(unused_predictions:Dynamic, targets:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a _TargetColumn for binary classification with SVMs.
		
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
	static public var division : Dynamic;
	/**
		Creates a _TargetColumn for multi class single label classification.
		
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
		Creates a _TargetColumn for linear regression.
		
		Args:
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  target_dimension: dimension of the target for multilabels.
		
		Returns:
		  An instance of _TargetColumn
	**/
	static public function regression_target(?label_name:Dynamic, ?weight_column_name:Dynamic, ?target_dimension:Dynamic):Dynamic;
}