/* This file is generated, do not edit! */
package tensorflow.metrics;
@:pythonImport("tensorflow.metrics") extern class Metrics_Module {
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
		Calculates how often `predictions` matches `labels`.
		
		The `accuracy` function creates two local variables, `total` and
		`count` that are used to compute the frequency with which `predictions`
		matches `labels`. This frequency is ultimately returned as `accuracy`: an
		idempotent operation that simply divides `total` by `count`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the `accuracy`.
		Internally, an `is_correct` operation computes a `Tensor` with elements 1.0
		where the corresponding elements of `predictions` and `labels` match and 0.0
		otherwise. Then `update_op` increments `total` with the reduced sum of the
		product of `weights` and `is_correct`, and it increments `count` with the
		reduced sum of `weights`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: The ground truth values, a `Tensor` whose shape matches
		    `predictions`.
		  predictions: The predicted values, a `Tensor` of any shape.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that `accuracy` should
		    be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  accuracy: A `Tensor` representing the accuracy, the value of `total` divided
		    by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `accuracy`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function accuracy(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the approximate AUC via a Riemann sum.
		
		The `auc` function creates four local variables, `true_positives`,
		`true_negatives`, `false_positives` and `false_negatives` that are used to
		compute the AUC. To discretize the AUC curve, a linearly spaced set of
		thresholds is used to compute pairs of recall and precision values. The area
		under the ROC-curve is therefore computed using the height of the recall
		values by the false positive rate, while the area under the PR-curve is the
		computed using the height of the precision values by the recall.
		
		This value is ultimately returned as `auc`, an idempotent operation that
		computes the area under a discretized curve of precision versus recall values
		(computed using the aforementioned variables). The `num_thresholds` variable
		controls the degree of discretization with larger numbers of thresholds more
		closely approximating the true AUC. The quality of the approximation may vary
		dramatically depending on `num_thresholds`.
		
		For best results, `predictions` should be distributed approximately uniformly
		in the range [0, 1] and not peaked around 0 or 1. The quality of the AUC
		approximation may be poor if this is not the case. Setting `summation_method`
		to 'minoring' or 'majoring' can help quantify the error in the approximation
		by providing lower or upper bound estimate of the AUC.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the `auc`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: A `Tensor` whose shape matches `predictions`. Will be cast to
		    `bool`.
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  num_thresholds: The number of thresholds to use when discretizing the roc
		    curve.
		  metrics_collections: An optional list of collections that `auc` should be
		    added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  curve: Specifies the name of the curve to be computed, 'ROC' [default] or
		    'PR' for the Precision-Recall-curve.
		  name: An optional variable_scope name.
		  summation_method: Specifies the Riemann summation method used
		    (https://en.wikipedia.org/wiki/Riemann_sum): 'trapezoidal' [default] that
		    applies the trapezoidal rule; 'careful_interpolation', a variant of it
		    differing only by a more correct interpolation scheme for PR-AUC -
		    interpolating (true/false) positives but not the ratio that is precision;
		    'minoring' that applies left summation for increasing intervals and right
		    summation for decreasing intervals; 'majoring' that does the opposite.
		    Note that 'careful_interpolation' is strictly preferred to 'trapezoidal'
		    (to be deprecated soon) as it applies the same method for ROC, and a
		    better one (see Davis & Goadrich 2006 for details) for the PR curve.
		
		Returns:
		  auc: A scalar `Tensor` representing the current area-under-curve.
		  update_op: An operation that increments the `true_positives`,
		    `true_negatives`, `false_positives` and `false_negatives` variables
		    appropriately and whose value matches `auc`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function auc(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?num_thresholds:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?curve:Dynamic, ?name:Dynamic, ?summation_method:Dynamic):Dynamic;
	/**
		Computes average precision@k of predictions with respect to sparse labels.
		
		`average_precision_at_k` creates two local variables,
		`average_precision_at_<k>/total` and `average_precision_at_<k>/max`, that
		are used to compute the frequency. This frequency is ultimately returned as
		`average_precision_at_<k>`: an idempotent operation that simply divides
		`average_precision_at_<k>/total` by `average_precision_at_<k>/max`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`precision_at_<k>`. Internally, a `top_k` operation computes a `Tensor`
		indicating the top `k` `predictions`. Set operations applied to `top_k` and
		`labels` calculate the true positives and false positives weighted by
		`weights`. Then `update_op` increments `true_positive_at_<k>` and
		`false_positive_at_<k>` using these values.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels] or [D1, ... DN], where the latter implies
		    num_labels=1. N >= 1 and num_labels is the number of target classes for
		    the associated prediction. Commonly, N=1 and `labels` has shape
		    [batch_size, num_labels]. [D1, ... DN] must match `predictions`. Values
		    should be in range [0, num_classes), where num_classes is the last
		    dimension of `predictions`. Values outside this range are ignored.
		  predictions: Float `Tensor` with shape [D1, ... DN, num_classes] where
		    N >= 1. Commonly, N=1 and `predictions` has shape
		    [batch size, num_classes]. The final dimension contains the logit values
		    for each class. [D1, ... DN] must match `labels`.
		  k: Integer, k for @k metric. This will calculate an average precision for
		    range `[1,k]`, as documented above.
		  weights: `Tensor` whose rank is either 0, or n-1, where n is the rank of
		    `labels`. If the latter, it must be broadcastable to `labels` (i.e., all
		    dimensions must be either `1`, or the same as the corresponding `labels`
		    dimension).
		  metrics_collections: An optional list of collections that values should
		    be added to.
		  updates_collections: An optional list of collections that updates should
		    be added to.
		  name: Name of new update operation, and namespace for other dependent ops.
		
		Returns:
		  mean_average_precision: Scalar `float64` `Tensor` with the mean average
		    precision values.
		  update: `Operation` that increments variables appropriately, and whose
		    value matches `metric`.
		
		Raises:
		  ValueError: if k is invalid.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function average_precision_at_k(labels:Dynamic, predictions:Dynamic, k:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the total number of false negatives.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  predictions: The predicted values, a `Tensor` of arbitrary dimensions. Will
		    be cast to `bool`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that the metric
		    value variable should be added to.
		  updates_collections: An optional list of collections that the metric update
		    ops should be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  value_tensor: A `Tensor` representing the current value of the metric.
		  update_op: An operation that accumulates the error from a batch of data.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match `values`,
		    or if either `metrics_collections` or `updates_collections` are not a list
		    or tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function false_negatives(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes false negatives at provided threshold values.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: A `Tensor` whose shape matches `predictions`. Will be cast to
		    `bool`.
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  thresholds: A python list or tuple of float thresholds in `[0, 1]`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that `false_negatives`
		    should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  false_negatives:  A float `Tensor` of shape `[len(thresholds)]`.
		  update_op: An operation that updates the `false_negatives` variable and
		    returns its current value.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function false_negatives_at_thresholds(labels:Dynamic, predictions:Dynamic, thresholds:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sum the weights of false positives.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  predictions: The predicted values, a `Tensor` of arbitrary dimensions. Will
		    be cast to `bool`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that the metric
		    value variable should be added to.
		  updates_collections: An optional list of collections that the metric update
		    ops should be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  value_tensor: A `Tensor` representing the current value of the metric.
		  update_op: An operation that accumulates the error from a batch of data.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function false_positives(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes false positives at provided threshold values.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: A `Tensor` whose shape matches `predictions`. Will be cast to
		    `bool`.
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  thresholds: A python list or tuple of float thresholds in `[0, 1]`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that `false_positives`
		    should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  false_positives:  A float `Tensor` of shape `[len(thresholds)]`.
		  update_op: An operation that updates the `false_positives` variable and
		    returns its current value.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function false_positives_at_thresholds(labels:Dynamic, predictions:Dynamic, thresholds:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the (weighted) mean of the given values.
		
		The `mean` function creates two local variables, `total` and `count`
		that are used to compute the average of `values`. This average is ultimately
		returned as `mean` which is an idempotent operation that simply divides
		`total` by `count`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the `mean`.
		`update_op` increments `total` with the reduced sum of the product of `values`
		and `weights`, and it increments `count` with the reduced sum of `weights`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  values: A `Tensor` of arbitrary dimensions.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `values`, and must be broadcastable to `values` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `values` dimension).
		  metrics_collections: An optional list of collections that `mean`
		    should be added to.
		  updates_collections: An optional list of collections that `update_op`
		    should be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  mean: A `Tensor` representing the current mean, the value of `total` divided
		    by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `mean_value`.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match `values`,
		    or if either `metrics_collections` or `updates_collections` are not a list
		    or tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function mean(values:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean absolute error between the labels and predictions.
		
		The `mean_absolute_error` function creates two local variables,
		`total` and `count` that are used to compute the mean absolute error. This
		average is weighted by `weights`, and it is ultimately returned as
		`mean_absolute_error`: an idempotent operation that simply divides `total` by
		`count`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`mean_absolute_error`. Internally, an `absolute_errors` operation computes the
		absolute value of the differences between `predictions` and `labels`. Then
		`update_op` increments `total` with the reduced sum of the product of
		`weights` and `absolute_errors`, and it increments `count` with the reduced
		sum of `weights`
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: A `Tensor` of the same shape as `predictions`.
		  predictions: A `Tensor` of arbitrary shape.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that
		    `mean_absolute_error` should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  mean_absolute_error: A `Tensor` representing the current mean, the value of
		    `total` divided by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `mean_absolute_error`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function mean_absolute_error(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the cosine distance between the labels and predictions.
		
		The `mean_cosine_distance` function creates two local variables,
		`total` and `count` that are used to compute the average cosine distance
		between `predictions` and `labels`. This average is weighted by `weights`,
		and it is ultimately returned as `mean_distance`, which is an idempotent
		operation that simply divides `total` by `count`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`mean_distance`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: A `Tensor` of arbitrary shape.
		  predictions: A `Tensor` of the same shape as `labels`.
		  dim: The dimension along which the cosine distance is computed.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension). Also,
		    dimension `dim` must be `1`.
		  metrics_collections: An optional list of collections that the metric
		    value variable should be added to.
		  updates_collections: An optional list of collections that the metric update
		    ops should be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  mean_distance: A `Tensor` representing the current mean, the value of
		    `total` divided by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function mean_cosine_distance(labels:Dynamic, predictions:Dynamic, dim:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculate per-step mean Intersection-Over-Union (mIOU).
		
		Mean Intersection-Over-Union is a common evaluation metric for
		semantic image segmentation, which first computes the IOU for each
		semantic class and then computes the average over classes.
		IOU is defined as follows:
		  IOU = true_positive / (true_positive + false_positive + false_negative).
		The predictions are accumulated in a confusion matrix, weighted by `weights`,
		and mIOU is then calculated from it.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the `mean_iou`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: A `Tensor` of ground truth labels with shape [batch size] and of
		    type `int32` or `int64`. The tensor will be flattened if its rank > 1.
		  predictions: A `Tensor` of prediction results for semantic labels, whose
		    shape is [batch size] and type `int32` or `int64`. The tensor will be
		    flattened if its rank > 1.
		  num_classes: The possible number of labels the prediction task can
		    have. This value must be provided, since a confusion matrix of
		    dimension = [num_classes, num_classes] will be allocated.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that `mean_iou`
		    should be added to.
		  updates_collections: An optional list of collections `update_op` should be
		    added to.
		  name: An optional variable_scope name.
		
		Returns:
		  mean_iou: A `Tensor` representing the mean intersection-over-union.
		  update_op: An operation that increments the confusion matrix.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function mean_iou(labels:Dynamic, predictions:Dynamic, num_classes:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculates the mean of the per-class accuracies.
		
		Calculates the accuracy for each class, then takes the mean of that.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates the accuracy of each class and returns
		them.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: A `Tensor` of ground truth labels with shape [batch size] and of
		    type `int32` or `int64`. The tensor will be flattened if its rank > 1.
		  predictions: A `Tensor` of prediction results for semantic labels, whose
		    shape is [batch size] and type `int32` or `int64`. The tensor will be
		    flattened if its rank > 1.
		  num_classes: The possible number of labels the prediction task can
		    have. This value must be provided, since two variables with shape =
		    [num_classes] will be allocated.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that
		    `mean_per_class_accuracy'
		    should be added to.
		  updates_collections: An optional list of collections `update_op` should be
		    added to.
		  name: An optional variable_scope name.
		
		Returns:
		  mean_accuracy: A `Tensor` representing the mean per class accuracy.
		  update_op: An operation that updates the accuracy tensor.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function mean_per_class_accuracy(labels:Dynamic, predictions:Dynamic, num_classes:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean relative error by normalizing with the given values.
		
		The `mean_relative_error` function creates two local variables,
		`total` and `count` that are used to compute the mean relative absolute error.
		This average is weighted by `weights`, and it is ultimately returned as
		`mean_relative_error`: an idempotent operation that simply divides `total` by
		`count`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`mean_reative_error`. Internally, a `relative_errors` operation divides the
		absolute value of the differences between `predictions` and `labels` by the
		`normalizer`. Then `update_op` increments `total` with the reduced sum of the
		product of `weights` and `relative_errors`, and it increments `count` with the
		reduced sum of `weights`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: A `Tensor` of the same shape as `predictions`.
		  predictions: A `Tensor` of arbitrary shape.
		  normalizer: A `Tensor` of the same shape as `predictions`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that
		    `mean_relative_error` should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  mean_relative_error: A `Tensor` representing the current mean, the value of
		    `total` divided by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `mean_relative_error`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function mean_relative_error(labels:Dynamic, predictions:Dynamic, normalizer:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean squared error between the labels and predictions.
		
		The `mean_squared_error` function creates two local variables,
		`total` and `count` that are used to compute the mean squared error.
		This average is weighted by `weights`, and it is ultimately returned as
		`mean_squared_error`: an idempotent operation that simply divides `total` by
		`count`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`mean_squared_error`. Internally, a `squared_error` operation computes the
		element-wise square of the difference between `predictions` and `labels`. Then
		`update_op` increments `total` with the reduced sum of the product of
		`weights` and `squared_error`, and it increments `count` with the reduced sum
		of `weights`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: A `Tensor` of the same shape as `predictions`.
		  predictions: A `Tensor` of arbitrary shape.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that
		    `mean_squared_error` should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  mean_squared_error: A `Tensor` representing the current mean, the value of
		    `total` divided by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `mean_squared_error`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function mean_squared_error(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the element-wise (weighted) mean of the given tensors.
		
		In contrast to the `mean` function which returns a scalar with the
		mean,  this function returns an average tensor with the same shape as the
		input tensors.
		
		The `mean_tensor` function creates two local variables,
		`total_tensor` and `count_tensor` that are used to compute the average of
		`values`. This average is ultimately returned as `mean` which is an idempotent
		operation that simply divides `total` by `count`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the `mean`.
		`update_op` increments `total` with the reduced sum of the product of `values`
		and `weights`, and it increments `count` with the reduced sum of `weights`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  values: A `Tensor` of arbitrary dimensions.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `values`, and must be broadcastable to `values` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `values` dimension).
		  metrics_collections: An optional list of collections that `mean`
		    should be added to.
		  updates_collections: An optional list of collections that `update_op`
		    should be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  mean: A float `Tensor` representing the current mean, the value of `total`
		    divided by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `mean_value`.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match `values`,
		    or if either `metrics_collections` or `updates_collections` are not a list
		    or tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function mean_tensor(values:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the percentage of values less than the given threshold.
		
		The `percentage_below` function creates two local variables,
		`total` and `count` that are used to compute the percentage of `values` that
		fall below `threshold`. This rate is weighted by `weights`, and it is
		ultimately returned as `percentage` which is an idempotent operation that
		simply divides `total` by `count`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`percentage`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  values: A numeric `Tensor` of arbitrary size.
		  threshold: A scalar threshold.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `values`, and must be broadcastable to `values` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `values` dimension).
		  metrics_collections: An optional list of collections that the metric
		    value variable should be added to.
		  updates_collections: An optional list of collections that the metric update
		    ops should be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  percentage: A `Tensor` representing the current mean, the value of `total`
		    divided by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match `values`,
		    or if either `metrics_collections` or `updates_collections` are not a list
		    or tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function percentage_below(values:Dynamic, threshold:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the precision of the predictions with respect to the labels.
		
		The `precision` function creates two local variables,
		`true_positives` and `false_positives`, that are used to compute the
		precision. This value is ultimately returned as `precision`, an idempotent
		operation that simply divides `true_positives` by the sum of `true_positives`
		and `false_positives`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`precision`. `update_op` weights each prediction by the corresponding value in
		`weights`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  predictions: The predicted values, a `Tensor` of arbitrary dimensions. Will
		    be cast to `bool`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that `precision` should
		    be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  precision: Scalar float `Tensor` with the value of `true_positives`
		    divided by the sum of `true_positives` and `false_positives`.
		  update_op: `Operation` that increments `true_positives` and
		    `false_positives` variables appropriately and whose value matches
		    `precision`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function precision(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes precision@k of the predictions with respect to sparse labels.
		
		If `class_id` is specified, we calculate precision by considering only the
		    entries in the batch for which `class_id` is in the top-k highest
		    `predictions`, and computing the fraction of them for which `class_id` is
		    indeed a correct label.
		If `class_id` is not specified, we'll calculate precision as how often on
		    average a class among the top-k classes with the highest predicted values
		    of a batch entry is correct and can be found in the label for that entry.
		
		`precision_at_k` creates two local variables,
		`true_positive_at_<k>` and `false_positive_at_<k>`, that are used to compute
		the precision@k frequency. This frequency is ultimately returned as
		`precision_at_<k>`: an idempotent operation that simply divides
		`true_positive_at_<k>` by total (`true_positive_at_<k>` +
		`false_positive_at_<k>`).
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`precision_at_<k>`. Internally, a `top_k` operation computes a `Tensor`
		indicating the top `k` `predictions`. Set operations applied to `top_k` and
		`labels` calculate the true positives and false positives weighted by
		`weights`. Then `update_op` increments `true_positive_at_<k>` and
		`false_positive_at_<k>` using these values.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels] or [D1, ... DN], where the latter implies
		    num_labels=1. N >= 1 and num_labels is the number of target classes for
		    the associated prediction. Commonly, N=1 and `labels` has shape
		    [batch_size, num_labels]. [D1, ... DN] must match `predictions`. Values
		    should be in range [0, num_classes), where num_classes is the last
		    dimension of `predictions`. Values outside this range are ignored.
		  predictions: Float `Tensor` with shape [D1, ... DN, num_classes] where
		    N >= 1. Commonly, N=1 and predictions has shape [batch size, num_classes].
		    The final dimension contains the logit values for each class. [D1, ... DN]
		    must match `labels`.
		  k: Integer, k for @k metric.
		  class_id: Integer class ID for which we want binary metrics. This should be
		    in range [0, num_classes], where num_classes is the last dimension of
		    `predictions`. If `class_id` is outside this range, the method returns
		    NAN.
		  weights: `Tensor` whose rank is either 0, or n-1, where n is the rank of
		    `labels`. If the latter, it must be broadcastable to `labels` (i.e., all
		    dimensions must be either `1`, or the same as the corresponding `labels`
		    dimension).
		  metrics_collections: An optional list of collections that values should
		    be added to.
		  updates_collections: An optional list of collections that updates should
		    be added to.
		  name: Name of new update operation, and namespace for other dependent ops.
		
		Returns:
		  precision: Scalar `float64` `Tensor` with the value of `true_positives`
		    divided by the sum of `true_positives` and `false_positives`.
		  update_op: `Operation` that increments `true_positives` and
		    `false_positives` variables appropriately, and whose value matches
		    `precision`.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match
		    `predictions`, or if either `metrics_collections` or `updates_collections`
		    are not a list or tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function precision_at_k(labels:Dynamic, predictions:Dynamic, k:Dynamic, ?class_id:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes precision values for different `thresholds` on `predictions`.
		
		The `precision_at_thresholds` function creates four local variables,
		`true_positives`, `true_negatives`, `false_positives` and `false_negatives`
		for various values of thresholds. `precision[i]` is defined as the total
		weight of values in `predictions` above `thresholds[i]` whose corresponding
		entry in `labels` is `True`, divided by the total weight of values in
		`predictions` above `thresholds[i]` (`true_positives[i] / (true_positives[i] +
		false_positives[i])`).
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`precision`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  thresholds: A python list or tuple of float thresholds in `[0, 1]`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that `auc` should be
		    added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  precision: A float `Tensor` of shape `[len(thresholds)]`.
		  update_op: An operation that increments the `true_positives`,
		    `true_negatives`, `false_positives` and `false_negatives` variables that
		    are used in the computation of `precision`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function precision_at_thresholds(labels:Dynamic, predictions:Dynamic, thresholds:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes precision@k of the predictions with respect to sparse labels.
		
		Differs from `sparse_precision_at_k` in that predictions must be in the form
		of top `k` class indices, whereas `sparse_precision_at_k` expects logits.
		Refer to `sparse_precision_at_k` for more details.
		
		Args:
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels] or [D1, ... DN], where the latter implies
		    num_labels=1. N >= 1 and num_labels is the number of target classes for
		    the associated prediction. Commonly, N=1 and `labels` has shape
		    [batch_size, num_labels]. [D1, ... DN] must match `predictions`. Values
		    should be in range [0, num_classes), where num_classes is the last
		    dimension of `predictions`. Values outside this range are ignored.
		  predictions_idx: Integer `Tensor` with shape [D1, ... DN, k] where
		    N >= 1. Commonly, N=1 and predictions has shape [batch size, k].
		    The final dimension contains the top `k` predicted class indices.
		    [D1, ... DN] must match `labels`.
		  k: Integer, k for @k metric. Only used for the default op name.
		  class_id: Integer class ID for which we want binary metrics. This should be
		    in range [0, num_classes], where num_classes is the last dimension of
		    `predictions`. If `class_id` is outside this range, the method returns
		    NAN.
		  weights: `Tensor` whose rank is either 0, or n-1, where n is the rank of
		    `labels`. If the latter, it must be broadcastable to `labels` (i.e., all
		    dimensions must be either `1`, or the same as the corresponding `labels`
		    dimension).
		  metrics_collections: An optional list of collections that values should
		    be added to.
		  updates_collections: An optional list of collections that updates should
		    be added to.
		  name: Name of new update operation, and namespace for other dependent ops.
		
		Returns:
		  precision: Scalar `float64` `Tensor` with the value of `true_positives`
		    divided by the sum of `true_positives` and `false_positives`.
		  update_op: `Operation` that increments `true_positives` and
		    `false_positives` variables appropriately, and whose value matches
		    `precision`.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match
		    `predictions`, or if either `metrics_collections` or `updates_collections`
		    are not a list or tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function precision_at_top_k(labels:Dynamic, predictions_idx:Dynamic, ?k:Dynamic, ?class_id:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the recall of the predictions with respect to the labels.
		
		The `recall` function creates two local variables, `true_positives`
		and `false_negatives`, that are used to compute the recall. This value is
		ultimately returned as `recall`, an idempotent operation that simply divides
		`true_positives` by the sum of `true_positives` and `false_negatives`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` that updates these variables and returns the `recall`. `update_op`
		weights each prediction by the corresponding value in `weights`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  predictions: The predicted values, a `Tensor` of arbitrary dimensions. Will
		    be cast to `bool`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that `recall` should
		    be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  recall: Scalar float `Tensor` with the value of `true_positives` divided
		    by the sum of `true_positives` and `false_negatives`.
		  update_op: `Operation` that increments `true_positives` and
		    `false_negatives` variables appropriately and whose value matches
		    `recall`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function recall(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes recall@k of the predictions with respect to sparse labels.
		
		If `class_id` is specified, we calculate recall by considering only the
		    entries in the batch for which `class_id` is in the label, and computing
		    the fraction of them for which `class_id` is in the top-k `predictions`.
		If `class_id` is not specified, we'll calculate recall as how often on
		    average a class among the labels of a batch entry is in the top-k
		    `predictions`.
		
		`sparse_recall_at_k` creates two local variables,
		`true_positive_at_<k>` and `false_negative_at_<k>`, that are used to compute
		the recall_at_k frequency. This frequency is ultimately returned as
		`recall_at_<k>`: an idempotent operation that simply divides
		`true_positive_at_<k>` by total (`true_positive_at_<k>` +
		`false_negative_at_<k>`).
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`recall_at_<k>`. Internally, a `top_k` operation computes a `Tensor`
		indicating the top `k` `predictions`. Set operations applied to `top_k` and
		`labels` calculate the true positives and false negatives weighted by
		`weights`. Then `update_op` increments `true_positive_at_<k>` and
		`false_negative_at_<k>` using these values.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels] or [D1, ... DN], where the latter implies
		    num_labels=1. N >= 1 and num_labels is the number of target classes for
		    the associated prediction. Commonly, N=1 and `labels` has shape
		    [batch_size, num_labels]. [D1, ... DN] must match `predictions`. Values
		    should be in range [0, num_classes), where num_classes is the last
		    dimension of `predictions`. Values outside this range always count
		    towards `false_negative_at_<k>`.
		  predictions: Float `Tensor` with shape [D1, ... DN, num_classes] where
		    N >= 1. Commonly, N=1 and predictions has shape [batch size, num_classes].
		    The final dimension contains the logit values for each class. [D1, ... DN]
		    must match `labels`.
		  k: Integer, k for @k metric.
		  class_id: Integer class ID for which we want binary metrics. This should be
		    in range [0, num_classes), where num_classes is the last dimension of
		    `predictions`. If class_id is outside this range, the method returns NAN.
		  weights: `Tensor` whose rank is either 0, or n-1, where n is the rank of
		    `labels`. If the latter, it must be broadcastable to `labels` (i.e., all
		    dimensions must be either `1`, or the same as the corresponding `labels`
		    dimension).
		  metrics_collections: An optional list of collections that values should
		    be added to.
		  updates_collections: An optional list of collections that updates should
		    be added to.
		  name: Name of new update operation, and namespace for other dependent ops.
		
		Returns:
		  recall: Scalar `float64` `Tensor` with the value of `true_positives` divided
		    by the sum of `true_positives` and `false_negatives`.
		  update_op: `Operation` that increments `true_positives` and
		    `false_negatives` variables appropriately, and whose value matches
		    `recall`.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match
		  `predictions`, or if either `metrics_collections` or `updates_collections`
		  are not a list or tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function recall_at_k(labels:Dynamic, predictions:Dynamic, k:Dynamic, ?class_id:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes various recall values for different `thresholds` on `predictions`.
		
		The `recall_at_thresholds` function creates four local variables,
		`true_positives`, `true_negatives`, `false_positives` and `false_negatives`
		for various values of thresholds. `recall[i]` is defined as the total weight
		of values in `predictions` above `thresholds[i]` whose corresponding entry in
		`labels` is `True`, divided by the total weight of `True` values in `labels`
		(`true_positives[i] / (true_positives[i] + false_negatives[i])`).
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the `recall`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  thresholds: A python list or tuple of float thresholds in `[0, 1]`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that `recall` should be
		    added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  recall: A float `Tensor` of shape `[len(thresholds)]`.
		  update_op: An operation that increments the `true_positives`,
		    `true_negatives`, `false_positives` and `false_negatives` variables that
		    are used in the computation of `recall`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function recall_at_thresholds(labels:Dynamic, predictions:Dynamic, thresholds:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes recall@k of top-k predictions with respect to sparse labels.
		
		Differs from `recall_at_k` in that predictions must be in the form of top `k`
		class indices, whereas `recall_at_k` expects logits. Refer to `recall_at_k`
		for more details.
		
		Args:
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels] or [D1, ... DN], where the latter implies
		    num_labels=1. N >= 1 and num_labels is the number of target classes for
		    the associated prediction. Commonly, N=1 and `labels` has shape
		    [batch_size, num_labels]. [D1, ... DN] must match `predictions`. Values
		    should be in range [0, num_classes), where num_classes is the last
		    dimension of `predictions`. Values outside this range always count
		    towards `false_negative_at_<k>`.
		  predictions_idx: Integer `Tensor` with shape [D1, ... DN, k] where N >= 1.
		    Commonly, N=1 and predictions has shape [batch size, k]. The final
		    dimension contains the top `k` predicted class indices. [D1, ... DN] must
		    match `labels`.
		  k: Integer, k for @k metric. Only used for the default op name.
		  class_id: Integer class ID for which we want binary metrics. This should be
		    in range [0, num_classes), where num_classes is the last dimension of
		    `predictions`. If class_id is outside this range, the method returns NAN.
		  weights: `Tensor` whose rank is either 0, or n-1, where n is the rank of
		    `labels`. If the latter, it must be broadcastable to `labels` (i.e., all
		    dimensions must be either `1`, or the same as the corresponding `labels`
		    dimension).
		  metrics_collections: An optional list of collections that values should
		    be added to.
		  updates_collections: An optional list of collections that updates should
		    be added to.
		  name: Name of new update operation, and namespace for other dependent ops.
		
		Returns:
		  recall: Scalar `float64` `Tensor` with the value of `true_positives` divided
		    by the sum of `true_positives` and `false_negatives`.
		  update_op: `Operation` that increments `true_positives` and
		    `false_negatives` variables appropriately, and whose value matches
		    `recall`.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match
		  `predictions`, or if either `metrics_collections` or `updates_collections`
		  are not a list or tuple.
	**/
	static public function recall_at_top_k(labels:Dynamic, predictions_idx:Dynamic, ?k:Dynamic, ?class_id:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the root mean squared error between the labels and predictions.
		
		The `root_mean_squared_error` function creates two local variables,
		`total` and `count` that are used to compute the root mean squared error.
		This average is weighted by `weights`, and it is ultimately returned as
		`root_mean_squared_error`: an idempotent operation that takes the square root
		of the division of `total` by `count`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`root_mean_squared_error`. Internally, a `squared_error` operation computes
		the element-wise square of the difference between `predictions` and `labels`.
		Then `update_op` increments `total` with the reduced sum of the product of
		`weights` and `squared_error`, and it increments `count` with the reduced sum
		of `weights`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: A `Tensor` of the same shape as `predictions`.
		  predictions: A `Tensor` of arbitrary shape.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that
		    `root_mean_squared_error` should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  root_mean_squared_error: A `Tensor` representing the current mean, the value
		    of `total` divided by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `root_mean_squared_error`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function root_mean_squared_error(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the specificity at a given sensitivity.
		
		The `sensitivity_at_specificity` function creates four local
		variables, `true_positives`, `true_negatives`, `false_positives` and
		`false_negatives` that are used to compute the sensitivity at the given
		specificity value. The threshold for the given specificity value is computed
		and used to evaluate the corresponding sensitivity.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`sensitivity`. `update_op` increments the `true_positives`, `true_negatives`,
		`false_positives` and `false_negatives` counts with the weight of each case
		found in the `predictions` and `labels`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		For additional information about specificity and sensitivity, see the
		following: https://en.wikipedia.org/wiki/Sensitivity_and_specificity
		
		Args:
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  specificity: A scalar value in range `[0, 1]`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  num_thresholds: The number of thresholds to use for matching the given
		    specificity.
		  metrics_collections: An optional list of collections that `sensitivity`
		    should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  sensitivity: A scalar `Tensor` representing the sensitivity at the given
		    `specificity` value.
		  update_op: An operation that increments the `true_positives`,
		    `true_negatives`, `false_positives` and `false_negatives` variables
		    appropriately and whose value matches `sensitivity`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    `specificity` is not between 0 and 1, or if either `metrics_collections`
		    or `updates_collections` are not a list or tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function sensitivity_at_specificity(labels:Dynamic, predictions:Dynamic, specificity:Dynamic, ?weights:Dynamic, ?num_thresholds:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Renamed to `average_precision_at_k`, please use that method instead. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use average_precision_at_k instead
	**/
	static public function sparse_average_precision_at_k(labels:Dynamic, predictions:Dynamic, k:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Renamed to `precision_at_k`, please use that method instead. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use precision_at_k instead
	**/
	static public function sparse_precision_at_k(labels:Dynamic, predictions:Dynamic, k:Dynamic, ?class_id:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the specificity at a given sensitivity.
		
		The `specificity_at_sensitivity` function creates four local
		variables, `true_positives`, `true_negatives`, `false_positives` and
		`false_negatives` that are used to compute the specificity at the given
		sensitivity value. The threshold for the given sensitivity value is computed
		and used to evaluate the corresponding specificity.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`specificity`. `update_op` increments the `true_positives`, `true_negatives`,
		`false_positives` and `false_negatives` counts with the weight of each case
		found in the `predictions` and `labels`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		For additional information about specificity and sensitivity, see the
		following: https://en.wikipedia.org/wiki/Sensitivity_and_specificity
		
		Args:
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  sensitivity: A scalar value in range `[0, 1]`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  num_thresholds: The number of thresholds to use for matching the given
		    sensitivity.
		  metrics_collections: An optional list of collections that `specificity`
		    should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  specificity: A scalar `Tensor` representing the specificity at the given
		    `specificity` value.
		  update_op: An operation that increments the `true_positives`,
		    `true_negatives`, `false_positives` and `false_negatives` variables
		    appropriately and whose value matches `specificity`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    `sensitivity` is not between 0 and 1, or if either `metrics_collections`
		    or `updates_collections` are not a list or tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function specificity_at_sensitivity(labels:Dynamic, predictions:Dynamic, sensitivity:Dynamic, ?weights:Dynamic, ?num_thresholds:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sum the weights of true_negatives.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  predictions: The predicted values, a `Tensor` of arbitrary dimensions. Will
		    be cast to `bool`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that the metric
		    value variable should be added to.
		  updates_collections: An optional list of collections that the metric update
		    ops should be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  value_tensor: A `Tensor` representing the current value of the metric.
		  update_op: An operation that accumulates the error from a batch of data.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function true_negatives(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes true negatives at provided threshold values.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: A `Tensor` whose shape matches `predictions`. Will be cast to
		    `bool`.
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  thresholds: A python list or tuple of float thresholds in `[0, 1]`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that `true_negatives`
		    should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  true_negatives:  A float `Tensor` of shape `[len(thresholds)]`.
		  update_op: An operation that updates the `true_negatives` variable and
		    returns its current value.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function true_negatives_at_thresholds(labels:Dynamic, predictions:Dynamic, thresholds:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sum the weights of true_positives.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  predictions: The predicted values, a `Tensor` of arbitrary dimensions. Will
		    be cast to `bool`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that the metric
		    value variable should be added to.
		  updates_collections: An optional list of collections that the metric update
		    ops should be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  value_tensor: A `Tensor` representing the current value of the metric.
		  update_op: An operation that accumulates the error from a batch of data.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function true_positives(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes true positives at provided threshold values.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: A `Tensor` whose shape matches `predictions`. Will be cast to
		    `bool`.
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  thresholds: A python list or tuple of float thresholds in `[0, 1]`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that `true_positives`
		    should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  true_positives:  A float `Tensor` of shape `[len(thresholds)]`.
		  update_op: An operation that updates the `true_positives` variable and
		    returns its current value.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function true_positives_at_thresholds(labels:Dynamic, predictions:Dynamic, thresholds:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
}