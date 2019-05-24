/* This file is generated, do not edit! */
package tensorflow.python.keras.metrics;
@:pythonImport("tensorflow.python.keras.metrics") extern class Metrics_Module {
	static public function MAE(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function MAPE(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function MSE(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function MSLE(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _assert_thresholds_range(thresholds:Dynamic):Dynamic;
	static public function _parse_init_thresholds(thresholds:Dynamic, ?default_threshold:Dynamic):Dynamic;
	/**
		Returns op to update the given confusion matrix variables.
		
		For every pair of values in y_true and y_pred:
		
		true_positive: y_true == True and y_pred > thresholds
		false_negatives: y_true == True and y_pred <= thresholds
		true_negatives: y_true == False and y_pred <= thresholds
		false_positive: y_true == False and y_pred > thresholds
		
		The results will be weighted and added together. When multiple thresholds are
		provided, we will repeat the same for every threshold.
		
		For estimation of these metrics over a stream of data, the function creates an
		`update_op` operation that updates the given variables.
		
		If `sample_weight` is `None`, weights default to 1.
		Use weights of 0 to mask values.
		
		Args:
		  variables_to_update: Dictionary with 'tp', 'fn', 'tn', 'fp' as valid keys
		    and corresponding variables to update as values.
		  y_true: A `Tensor` whose shape matches `y_pred`. Will be cast to `bool`.
		  y_pred: A floating point `Tensor` of arbitrary shape and whose values are in
		    the range `[0, 1]`.
		  thresholds: A float value or a python list or tuple of float thresholds in
		    `[0, 1]`.
		  sample_weight: Optional `Tensor` whose rank is either 0, or the same rank as
		    `y_true`, and must be broadcastable to `y_true` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `y_true` dimension).
		
		Returns:
		  Update op.
		
		Raises:
		  ValueError: If `y_pred` and `y_true` have mismatched shapes, or if
		    `sample_weight` is not `None` and its shape doesn't match `y_pred`, or if
		    `variables_to_update` contains invalid keys.
	**/
	static public function _update_confusion_matrix_variables(variables_to_update:Dynamic, y_true:Dynamic, y_pred:Dynamic, thresholds:Dynamic, ?sample_weight:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function accuracy(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function binary_accuracy(y_true:Dynamic, y_pred:Dynamic, ?threshold:Dynamic):Dynamic;
	static public function binary_crossentropy(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic):Dynamic;
	static public function categorical_accuracy(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function categorical_crossentropy(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic):Dynamic;
	/**
		Returns a clone of the metric if stateful, otherwise returns it as is.
	**/
	static public function clone_metric(metric:Dynamic):Dynamic;
	/**
		Clones the given metric list/dict.
	**/
	static public function clone_metrics(metrics:Dynamic):Dynamic;
	static public function cosine(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function cosine_proximity(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function deserialize(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	static public function deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function get(identifier:Dynamic):Dynamic;
	static public function hinge(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function kullback_leibler_divergence(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Logarithm of the hyperbolic cosine of the prediction error.
		
		`log(cosh(x))` is approximately equal to `(x ** 2) / 2` for small `x` and
		to `abs(x) - log(2)` for large `x`. This means that 'logcosh' works mostly
		like the mean squared error, but will not be so strongly affected by the
		occasional wildly incorrect prediction.
		
		Arguments:
		    y_true: tensor of true targets.
		    y_pred: tensor of predicted targets.
		
		Returns:
		    Tensor with one scalar loss entry per sample.
	**/
	static public function logcosh(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mae(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mape(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mean_absolute_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mean_absolute_percentage_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mean_squared_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mean_squared_logarithmic_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mse(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function msle(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function poisson(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Decorator to wrap metric `result()` function in `merge_call()`.
		
		Result computation is an idempotent operation that simply calculates the
		metric value using the state variables.
		
		If metric state variables are distributed across replicas/devices and
		`result()` is requested from the context of one device - This function wraps
		`result()` in a distribution strategy `merge_call()`. With this,
		the metric state variables will be aggregated across devices.
		
		Args:
		  result_fn: function that computes the metric result.
		
		Returns:
		  Decorated function that wraps `result_fn()` in distribution strategy
		  `merge_call()`.
	**/
	static public function result_wrapper(result_fn:Dynamic):Dynamic;
	static public function serialize(metric:Dynamic):Dynamic;
	static public function serialize_keras_object(instance:Dynamic):Dynamic;
	static public function sparse_categorical_accuracy(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function sparse_categorical_crossentropy(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic):Dynamic;
	static public function sparse_top_k_categorical_accuracy(y_true:Dynamic, y_pred:Dynamic, ?k:Dynamic):Dynamic;
	static public function squared_hinge(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Squeeze or expand last dimension if needed.
		
		1. Squeezes last dim of `y_pred` or `y_true` if their rank differs by 1
		(using `confusion_matrix.remove_squeezable_dimensions`).
		2. Squeezes or expands last dim of `sample_weight` if its rank differs by 1
		from the new rank of `y_pred`.
		If `sample_weight` is scalar, it is kept scalar.
		
		This will use static shape if available. Otherwise, it will add graph
		operations, which could result in a performance hit.
		
		Args:
		  y_pred: Predicted values, a `Tensor` of arbitrary dimensions.
		  y_true: Optional label `Tensor` whose dimensions match `y_pred`.
		  sample_weight: Optional weight scalar or `Tensor` whose dimensions match
		    `y_pred`.
		
		Returns:
		  Tuple of `y_pred`, `y_true` and `sample_weight`. Each of them possibly has
		  the last dimension squeezed,
		  `sample_weight` could be extended by one dimension.
	**/
	static public function squeeze_or_expand_dimensions(y_pred:Dynamic, y_true:Dynamic, sample_weight:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Normalizes a list/tensor into a list.
		
		If a tensor is passed, we return
		a list of size 1 containing the tensor.
		
		Arguments:
		    x: target object to be normalized.
		
		Returns:
		    A list.
	**/
	static public function to_list(x:Dynamic):Dynamic;
	static public function top_k_categorical_accuracy(y_true:Dynamic, y_pred:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Decorator to wrap metric `update_state()` with `add_update()`.
		
		Args:
		  update_state_fn: function that accumulates metric statistics.
		
		Returns:
		  Decorated function that wraps `update_state_fn()` with `add_update()`.
	**/
	static public function update_state_wrapper(update_state_fn:Dynamic):Dynamic;
	/**
		Creates a weak reference to the bound method.
	**/
	static public function weakmethod(method:Dynamic):Dynamic;
}