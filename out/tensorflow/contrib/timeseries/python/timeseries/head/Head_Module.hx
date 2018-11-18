/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.head;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.head") extern class Head_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks all features are compatible with the given time-like feature.
	**/
	static public function _check_feature_shapes_compatible_with(features:Dynamic, compatible_with_name:Dynamic, compatible_with_value:Dynamic, ?ignore:Dynamic):Dynamic;
	/**
		Raise errors if features are not suitable for training/evaluation.
	**/
	static public function _check_train_eval_features(features:Dynamic, model:Dynamic):Dynamic;
	/**
		Create identity metrics for a nested tuple of Tensors.
	**/
	static public function _identity_metric_nested(name:Dynamic, input_tensors:Dynamic):Dynamic;
	/**
		A metric which takes on its last updated value.
		
		This keeps evaluation metrics in sync with one another, since update ops are
		run separately from their result Tensors. Simply returning (input_tensor,
		no_op) as a metric with a value but no update means that a metric will come
		from a different batch of data than metrics which cache values in a Variable
		(e.g. the default loss metric).
		
		Args:
		  name: A name for the metric.
		  input_tensor: Any Tensor.
		Returns:
		  A tuple of (value, update_op).
	**/
	static public function _identity_metric_single(name:Dynamic, input_tensor:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Flatten model state into a dictionary with string keys.
	**/
	static public function state_to_dictionary(state_tuple:Dynamic):Dynamic;
}