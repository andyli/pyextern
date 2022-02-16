/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.losses_utils;
@:pythonImport("tensorflow.python.keras.utils.losses_utils") extern class Losses_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes the number of elements in `losses` tensor.
	**/
	static public function _num_elements(losses:Dynamic):Dynamic;
	/**
		Computes a safe mean of the losses.
		
		Args:
		  losses: `Tensor` whose elements contain individual loss measurements.
		  num_present: The number of measurable elements in `losses`.
		
		Returns:
		  A scalar representing the mean of `losses`. If `num_present` is zero,
		    then zero is returned.
	**/
	static public function _safe_mean(losses:Dynamic, num_present:Dynamic):Dynamic;
	/**
		Cast a list of losses to a common dtype.
		
		If any loss is floating-point, they will all be casted to the most-precise
		floating-point loss. Otherwise the losses are not casted. We also skip casting
		losses if there are any complex losses.
		
		Args:
		  losses: A list of losses.
		
		Returns:
		  `losses`, but they have been casted to a common dtype.
	**/
	static public function cast_losses_to_common_dtype(losses:Dynamic):Dynamic;
	/**
		Computes the weighted loss.
		
		Args:
		  losses: `Tensor` of shape `[batch_size, d1, ... dN]`.
		  sample_weight: Optional `Tensor` whose rank is either 0, or the same rank as
		    `losses`, or be broadcastable to `losses`.
		  reduction: (Optional) Type of `tf.keras.losses.Reduction` to apply to loss.
		    Default value is `SUM_OVER_BATCH_SIZE`.
		  name: Optional name for the op.
		
		Raises:
		  ValueError: If the shape of `sample_weight` is not compatible with `losses`.
		
		Returns:
		  Weighted loss `Tensor` of the same type as `losses`. If `reduction` is
		  `NONE`, this has the same shape as `losses`; otherwise, it is scalar.
	**/
	static public function compute_weighted_loss(losses:Dynamic, ?sample_weight:Dynamic, ?reduction:Dynamic, ?name:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Reduces the individual weighted loss measurements.
	**/
	static public function reduce_weighted_loss(weighted_losses:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Squeeze last dim if ranks differ from expected by exactly 1.
		
		In the common case where we expect shapes to match, `expected_rank_diff`
		defaults to 0, and we squeeze the last dimension of the larger rank if they
		differ by 1.
		
		But, for example, if `labels` contains class IDs and `predictions` contains 1
		probability per class, we expect `predictions` to have 1 more dimension than
		`labels`, so `expected_rank_diff` would be 1. In this case, we'd squeeze
		`labels` if `rank(predictions) - rank(labels) == 0`, and
		`predictions` if `rank(predictions) - rank(labels) == 2`.
		
		This will use static shape if available. Otherwise, it will add graph
		operations, which could result in a performance hit.
		
		Args:
		  labels: Label values, a `Tensor` whose dimensions match `predictions`.
		  predictions: Predicted values, a `Tensor` of arbitrary dimensions.
		  expected_rank_diff: Expected result of `rank(predictions) - rank(labels)`.
		  name: Name of the op.
		
		Returns:
		  Tuple of `labels` and `predictions`, possibly with last dim squeezed.
	**/
	static public function remove_squeezable_dimensions(labels:Dynamic, predictions:Dynamic, ?expected_rank_diff:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Scales and returns the given loss value by the number of replicas.
	**/
	static public function scale_loss_for_distribution(loss_value:Dynamic):Dynamic;
	/**
		Squeeze or expand last dimension if needed.
		
		1. Squeezes last dim of `y_pred` or `y_true` if their rank differs by 1
		(using `remove_squeezable_dimensions`).
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
		  If `sample_weight` is None, (y_pred, y_true) is returned.
	**/
	static public function squeeze_or_expand_dimensions(y_pred:Dynamic, ?y_true:Dynamic, ?sample_weight:Dynamic):Dynamic;
}