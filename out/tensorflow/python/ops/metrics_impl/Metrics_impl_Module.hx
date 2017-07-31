/* This file is generated, do not edit! */
package tensorflow.python.ops.metrics_impl;
@:pythonImport("tensorflow.python.ops.metrics_impl") extern class Metrics_impl_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _at_k_name(name:Dynamic, ?k:Dynamic, ?class_id:Dynamic):Dynamic;
	/**
		Computes true_positives, false_negatives, true_negatives, false_positives.
		
		This function creates up to four local variables, `true_positives`,
		`true_negatives`, `false_positives` and `false_negatives`.
		`true_positive[i]` is defined as the total weight of values in `predictions`
		above `thresholds[i]` whose corresponding entry in `labels` is `True`.
		`false_negatives[i]` is defined as the total weight of values in `predictions`
		at most `thresholds[i]` whose corresponding entry in `labels` is `True`.
		`true_negatives[i]` is defined as the total weight of values in `predictions`
		at most `thresholds[i]` whose corresponding entry in `labels` is `False`.
		`false_positives[i]` is defined as the total weight of values in `predictions`
		above `thresholds[i]` whose corresponding entry in `labels` is `False`.
		
		For estimation of these metrics over a stream of data, for each metric the
		function respectively creates an `update_op` operation that updates the
		variable and returns its value.
		
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
		  includes: Tuple of keys to return, from 'tp', 'fn', 'tn', fp'. If `None`,
		      default to all four.
		
		Returns:
		  values: Dict of variables of shape `[len(thresholds)]`. Keys are from
		      `includes`.
		  update_ops: Dict of operations that increments the `values`. Keys are from
		      `includes`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    `includes` contains invalid keys.
	**/
	static public function _confusion_matrix_at_thresholds(labels:Dynamic, predictions:Dynamic, thresholds:Dynamic, ?weights:Dynamic, ?includes:Dynamic):Dynamic;
	/**
		Sums the weights of cases where the given values are True.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  values: A `bool` `Tensor` of arbitrary size.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `values`, and must be broadcastable to `values` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `values` dimension).
		  metrics_collections: An optional list of collections that the metric
		    value variable should be added to.
		  updates_collections: An optional list of collections that the metric update
		    ops should be added to.
		
		Returns:
		  value_tensor: A `Tensor` representing the current value of the metric.
		  update_op: An operation that accumulates the error from a batch of data.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match `values`,
		    or if either `metrics_collections` or `updates_collections` are not a list
		    or tuple.
	**/
	static public function _count_condition(values:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic):Dynamic;
	/**
		Creates a new local variable.
		
		Args:
		  name: The name of the new or existing variable.
		  shape: Shape of the new or existing variable.
		  collections: A list of collection names to which the Variable will be added.
		  validate_shape: Whether to validate the shape of the variable.
		  dtype: Data type of the variables.
		
		Returns:
		  The created variable.
	**/
	static public function _create_local(name:Dynamic, shape:Dynamic, ?collections:Dynamic, ?validate_shape:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Slice `tensor` shape in 2, then tile along the sliced dimension.
		
		A new dimension is inserted in shape of `tensor` before `dim`, then values are
		tiled `multiple` times along the new dimension.
		
		Args:
		  tensor: Input `Tensor` or `SparseTensor`.
		  multiple: Integer, number of times to tile.
		  dim: Integer, dimension along which to tile.
		  name: Name of operation.
		
		Returns:
		  `Tensor` result of expanding and tiling `tensor`.
		
		Raises:
		  ValueError: if `multiple` is less than 1, or `dim` is not in
		  `[-rank(tensor), rank(tensor)]`.
	**/
	static public function _expand_and_tile(tensor:Dynamic, multiple:Dynamic, ?dim:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create variable and add it to `GraphKeys.LOCAL_VARIABLES` collection.
		
		Args:
		  initial_value: See variables.Variable.__init__.
		  validate_shape: See variables.Variable.__init__.
		  name: See variables.Variable.__init__.
		Returns:
		  New variable.
	**/
	static public function _local_variable(initial_value:Dynamic, ?validate_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		If necessary, expand `labels` along last dimension to match `predictions`.
		
		Args:
		  labels: `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels] or [D1, ... DN]. The latter implies
		    num_labels=1, in which case the result is an expanded `labels` with shape
		    [D1, ... DN, 1].
		  predictions: `Tensor` with shape [D1, ... DN, num_classes].
		
		Returns:
		  `labels` with the same rank as `predictions`.
		
		Raises:
		  ValueError: if `labels` has invalid shape.
	**/
	static public function _maybe_expand_labels(labels:Dynamic, predictions:Dynamic):Dynamic;
	/**
		If class ID is specified, filter all other classes.
		
		Args:
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels], where N >= 1 and num_labels is the number of
		    target classes for the associated prediction. Commonly, N=1 and `labels`
		    has shape [batch_size, num_labels]. [D1, ... DN] must match
		    `predictions_idx`.
		  predictions_idx: `int64` `Tensor` of class IDs, with shape [D1, ... DN, k]
		    where N >= 1. Commonly, N=1 and `predictions_idx` has shape
		    [batch size, k].
		  selected_id: Int id to select.
		
		Returns:
		  Tuple of `labels` and `predictions_idx`, possibly with classes removed.
	**/
	static public function _maybe_select_class_id(labels:Dynamic, predictions_idx:Dynamic, ?selected_id:Dynamic):Dynamic;
	/**
		Computes number of relevant values for each row in labels.
		
		For labels with shape [D1, ... DN, num_labels], this is the minimum of
		`num_labels` and `k`.
		
		Args:
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels], where N >= 1 and num_labels is the number of
		    target classes for the associated prediction. Commonly, N=1 and `labels`
		    has shape [batch_size, num_labels].
		  k: Integer, k for @k metric.
		
		Returns:
		  Integer `Tensor` of shape [D1, ... DN], where each value is the number of
		  relevant values for that row.
		
		Raises:
		  ValueError: if inputs have invalid dtypes or values.
	**/
	static public function _num_relevant(labels:Dynamic, k:Dynamic):Dynamic;
	/**
		Internal version of `remove_squeezable_dimensions` which handles weights.
		
		Squeezes `predictions` and `labels` if their rank differs by 1.
		Squeezes `weights` if its rank is 1 more than the new rank of `predictions`
		
		This will use static shape if available. Otherwise, it will add graph
		operations, which could result in a performance hit.
		
		Args:
		  predictions: Predicted values, a `Tensor` of arbitrary dimensions.
		  labels: Optional label `Tensor` whose dimensions match `predictions`.
		  weights: Optional weight `Tensor`. It will be squeezed if its rank is 1
		    more than the new rank of `predictions`
		
		Returns:
		  Tuple of `predictions`, `labels` and `weights`, possibly with the last
		  dimension squeezed.
	**/
	static public function _remove_squeezable_dimensions(predictions:Dynamic, labels:Dynamic, weights:Dynamic):Dynamic;
	/**
		Divides two values, returning 0 if the denominator is <= 0.
		
		Args:
		  numerator: A real `Tensor`.
		  denominator: A real `Tensor`, with dtype matching `numerator`.
		  name: Name for the returned op.
		
		Returns:
		  0 if `denominator` <= 0, else `numerator` / `denominator`
	**/
	static public function _safe_div(numerator:Dynamic, denominator:Dynamic, name:Dynamic):Dynamic;
	/**
		Divides two values, returning 0 if the denominator is 0.
		
		Args:
		  numerator: A scalar `float64` `Tensor`.
		  denominator: A scalar `float64` `Tensor`.
		  name: Name for the returned op.
		
		Returns:
		  0 if `denominator` == 0, else `numerator` / `denominator`
	**/
	static public function _safe_scalar_div(numerator:Dynamic, denominator:Dynamic, name:Dynamic):Dynamic;
	/**
		Filter all but `selected_id` out of `ids`.
		
		Args:
		  ids: `int64` `Tensor` or `SparseTensor` of IDs.
		  selected_id: Int id to select.
		
		Returns:
		  `SparseTensor` of same dimensions as `ids`. This contains only the entries
		  equal to `selected_id`.
	**/
	static public function _select_class_id(ids:Dynamic, selected_id:Dynamic):Dynamic;
	/**
		Computes average precision@k of predictions with respect to sparse labels.
		
		From en.wikipedia.org/wiki/Information_retrieval#Average_precision, formula
		for each row is:
		
		  AveP = sum_{i=1...k} P_{i} * rel_{i} / num_relevant_items
		
		A "row" is the elements in dimension [D1, ... DN] of `predictions_idx`,
		`labels`, and the result `Tensors`. In the common case, this is [batch_size].
		Each row of the results contains the average precision for that row.
		
		Args:
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels] or [D1, ... DN], where the latter implies
		    num_labels=1. N >= 1 and num_labels is the number of target classes for
		    the associated prediction. Commonly, N=1 and `labels` has shape
		    [batch_size, num_labels]. [D1, ... DN] must match `predictions_idx`.
		    Values should be in range [0, num_classes).
		  predictions_idx: Integer `Tensor` with shape [D1, ... DN, k] where N >= 1.
		    Commonly, N=1 and `predictions_idx` has shape [batch size, k]. The final
		    dimension must be set and contains the top `k` predicted class indices.
		    [D1, ... DN] must match `labels`. Values should be in range
		    [0, num_classes).
		
		Returns:
		  `float64` `Tensor` of shape [D1, ... DN], where each value is the average
		  precision for that row.
		
		Raises:
		  ValueError: if the last dimension of predictions_idx is not set.
	**/
	static public function _sparse_average_precision_at_top_k(labels:Dynamic, predictions_idx:Dynamic):Dynamic;
	/**
		Calculates false negatives for recall@k.
		
		If `class_id` is specified, calculate binary true positives for `class_id`
		    only.
		If `class_id` is not specified, calculate metrics for `k` predicted vs
		    `n` label classes, where `n` is the 2nd dimension of `labels_sparse`.
		
		Args:
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels], where N >= 1 and num_labels is the number of
		    target classes for the associated prediction. Commonly, N=1 and `labels`
		    has shape [batch_size, num_labels]. [D1, ... DN] must match
		    `predictions_idx`.
		  predictions_idx: 1-D or higher `int64` `Tensor` with last dimension `k`,
		    top `k` predicted classes. For rank `n`, the first `n-1` dimensions must
		    match `labels`.
		  class_id: Class for which we want binary metrics.
		  weights: `Tensor` whose rank is either 0, or n-1, where n is the rank of
		    `labels`. If the latter, it must be broadcastable to `labels` (i.e., all
		    dimensions must be either `1`, or the same as the corresponding `labels`
		    dimension).
		
		Returns:
		  A [D1, ... DN] `Tensor` of false negative counts.
	**/
	static public function _sparse_false_negative_at_k(labels:Dynamic, predictions_idx:Dynamic, ?class_id:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Calculates false positives for precision@k.
		
		If `class_id` is specified, calculate binary true positives for `class_id`
		    only.
		If `class_id` is not specified, calculate metrics for `k` predicted vs
		    `n` label classes, where `n` is the 2nd dimension of `labels_sparse`.
		
		Args:
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels], where N >= 1 and num_labels is the number of
		    target classes for the associated prediction. Commonly, N=1 and `labels`
		    has shape [batch_size, num_labels]. [D1, ... DN] must match
		    `predictions_idx`.
		  predictions_idx: 1-D or higher `int64` `Tensor` with last dimension `k`,
		    top `k` predicted classes. For rank `n`, the first `n-1` dimensions must
		    match `labels`.
		  class_id: Class for which we want binary metrics.
		  weights: `Tensor` whose rank is either 0, or n-1, where n is the rank of
		    `labels`. If the latter, it must be broadcastable to `labels` (i.e., all
		    dimensions must be either `1`, or the same as the corresponding `labels`
		    dimension).
		
		Returns:
		  A [D1, ... DN] `Tensor` of false positive counts.
	**/
	static public function _sparse_false_positive_at_k(labels:Dynamic, predictions_idx:Dynamic, ?class_id:Dynamic, ?weights:Dynamic):Dynamic;
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
	**/
	static public function _sparse_precision_at_top_k(labels:Dynamic, predictions_idx:Dynamic, ?k:Dynamic, ?class_id:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
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
	**/
	static public function _sparse_recall_at_top_k(labels:Dynamic, predictions_idx:Dynamic, ?k:Dynamic, ?class_id:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculates true positives for recall@k and precision@k.
		
		If `class_id` is specified, calculate binary true positives for `class_id`
		    only.
		If `class_id` is not specified, calculate metrics for `k` predicted vs
		    `n` label classes, where `n` is the 2nd dimension of `labels_sparse`.
		
		Args:
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels], where N >= 1 and num_labels is the number of
		    target classes for the associated prediction. Commonly, N=1 and `labels`
		    has shape [batch_size, num_labels]. [D1, ... DN] must match
		    `predictions_idx`.
		  predictions_idx: 1-D or higher `int64` `Tensor` with last dimension `k`,
		    top `k` predicted classes. For rank `n`, the first `n-1` dimensions must
		    match `labels`.
		  class_id: Class for which we want binary metrics.
		  weights: `Tensor` whose rank is either 0, or n-1, where n is the rank of
		    `labels`. If the latter, it must be broadcastable to `labels` (i.e., all
		    dimensions must be either `1`, or the same as the corresponding `labels`
		    dimension).
		  name: Name of operation.
		
		Returns:
		  A [D1, ... DN] `Tensor` of true positive counts.
	**/
	static public function _sparse_true_positive_at_k(labels:Dynamic, predictions_idx:Dynamic, ?class_id:Dynamic, ?weights:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculate a streaming confusion matrix.
		
		Calculates a confusion matrix. For estimation over a stream of data,
		the function creates an  `update_op` operation.
		
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
		
		Returns:
		  total_cm: A `Tensor` representing the confusion matrix.
		  update_op: An operation that increments the confusion matrix.
	**/
	static public function _streaming_confusion_matrix(labels:Dynamic, predictions:Dynamic, num_classes:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Computes average precision@k of predictions with respect to sparse labels.
		
		`sparse_average_precision_at_top_k` creates two local variables,
		`average_precision_at_<k>/total` and `average_precision_at_<k>/max`, that
		are used to compute the frequency. This frequency is ultimately returned as
		`average_precision_at_<k>`: an idempotent operation that simply divides
		`average_precision_at_<k>/total` by `average_precision_at_<k>/max`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`precision_at_<k>`. Set operations applied to `top_k` and `labels` calculate
		the true positives and false positives weighted by `weights`. Then `update_op`
		increments `true_positive_at_<k>` and `false_positive_at_<k>` using these
		values.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels] or [D1, ... DN], where the latter implies
		    num_labels=1. N >= 1 and num_labels is the number of target classes for
		    the associated prediction. Commonly, N=1 and `labels` has shape
		    [batch_size, num_labels]. [D1, ... DN] must match `predictions_idx`.
		    Values should be in range [0, num_classes).
		  predictions_idx: Integer `Tensor` with shape [D1, ... DN, k] where N >= 1.
		    Commonly, N=1 and `predictions_idx` has shape [batch size, k]. The final
		    dimension contains the top `k` predicted class indices. [D1, ... DN] must
		    match `labels`. Values should be in range [0, num_classes).
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
		  update: `Operation` that increments  variables appropriately, and whose
		    value matches `metric`.
	**/
	static public function _streaming_sparse_average_precision_at_top_k(labels:Dynamic, predictions_idx:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculates weighted per step false negatives for recall@k.
		
		If `class_id` is specified, calculate binary true positives for `class_id`
		    only.
		If `class_id` is not specified, calculate metrics for `k` predicted vs
		    `n` label classes, where `n` is the 2nd dimension of `labels`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels], where N >= 1 and num_labels is the number of
		    target classes for the associated prediction. Commonly, N=1 and `labels`
		    has shape [batch_size, num_labels]. [D1, ... DN] must match
		    `predictions_idx`.
		  predictions_idx: 1-D or higher `int64` `Tensor` with last dimension `k`,
		    top `k` predicted classes. For rank `n`, the first `n-1` dimensions must
		    match `labels`.
		  k: Integer, k for @k metric. This is only used for default op name.
		  class_id: Class for which we want binary metrics.
		  weights: `Tensor` whose rank is either 0, or n-1, where n is the rank of
		    `labels`. If the latter, it must be broadcastable to `labels` (i.e., all
		    dimensions must be either `1`, or the same as the corresponding `labels`
		    dimension).
		  name: Name of new variable, and namespace for other dependent ops.
		
		Returns:
		  A tuple of `Variable` and update `Operation`.
		
		Raises:
		  ValueError: If `weights` is not `None` and has an incompatible shape.
	**/
	static public function _streaming_sparse_false_negative_at_k(labels:Dynamic, predictions_idx:Dynamic, k:Dynamic, ?class_id:Dynamic, ?weights:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculates weighted per step false positives for precision@k.
		
		If `class_id` is specified, calculate binary true positives for `class_id`
		    only.
		If `class_id` is not specified, calculate metrics for `k` predicted vs
		    `n` label classes, where `n` is the 2nd dimension of `labels`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels], where N >= 1 and num_labels is the number of
		    target classes for the associated prediction. Commonly, N=1 and `labels`
		    has shape [batch_size, num_labels]. [D1, ... DN] must match
		    `predictions_idx`.
		  predictions_idx: 1-D or higher `int64` `Tensor` with last dimension `k`,
		    top `k` predicted classes. For rank `n`, the first `n-1` dimensions must
		    match `labels`.
		  k: Integer, k for @k metric. This is only used for default op name.
		  class_id: Class for which we want binary metrics.
		  weights: `Tensor` whose rank is either 0, or n-1, where n is the rank of
		    `labels`. If the latter, it must be broadcastable to `labels` (i.e., all
		    dimensions must be either `1`, or the same as the corresponding `labels`
		    dimension).
		  name: Name of new variable, and namespace for other dependent ops.
		
		Returns:
		  A tuple of `Variable` and update `Operation`.
		
		Raises:
		  ValueError: If `weights` is not `None` and has an incompatible shape.
	**/
	static public function _streaming_sparse_false_positive_at_k(labels:Dynamic, predictions_idx:Dynamic, ?k:Dynamic, ?class_id:Dynamic, ?weights:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculates weighted per step true positives for recall@k and precision@k.
		
		If `class_id` is specified, calculate binary true positives for `class_id`
		    only.
		If `class_id` is not specified, calculate metrics for `k` predicted vs
		    `n` label classes, where `n` is the 2nd dimension of `labels`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels], where N >= 1 and num_labels is the number of
		    target classes for the associated prediction. Commonly, N=1 and `labels`
		    has shape [batch_size, num_labels]. [D1, ... DN] must match
		    `predictions_idx`.
		  predictions_idx: 1-D or higher `int64` `Tensor` with last dimension `k`,
		    top `k` predicted classes. For rank `n`, the first `n-1` dimensions must
		    match `labels`.
		  k: Integer, k for @k metric. This is only used for default op name.
		  class_id: Class for which we want binary metrics.
		  weights: `Tensor` whose rank is either 0, or n-1, where n is the rank of
		    `labels`. If the latter, it must be broadcastable to `labels` (i.e., all
		    dimensions must be either `1`, or the same as the corresponding `labels`
		    dimension).
		  name: Name of new variable, and namespace for other dependent ops.
		
		Returns:
		  A tuple of `Variable` and update `Operation`.
		
		Raises:
		  ValueError: If `weights` is not `None` and has an incompatible shape.
	**/
	static public function _streaming_sparse_true_positive_at_k(labels:Dynamic, predictions_idx:Dynamic, ?k:Dynamic, ?class_id:Dynamic, ?weights:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Calculates how often `predictions` matches `labels`.
		
		The `accuracy` function creates two local variables, `total` and
		`count` that are used to compute the frequency with which `predictions`
		matches `labels`. This frequency is ultimately returned as `accuracy`: an
		idempotent operation that simply divides `total` by `count`.
		
		For estimation of the metric  over a stream of data, the function creates an
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
		approximation may be poor if this is not the case.
		
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
	**/
	static public function auc(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?num_thresholds:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?curve:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
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
	**/
	static public function false_negatives(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
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
	**/
	static public function false_positives(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the (weighted) mean of the given values.
		
		The `mean` function creates two local variables, `total` and `count`
		that are used to compute the average of `values`. This average is ultimately
		returned as `mean` which is an idempotent operation that simply divides
		`total` by `count`.
		
		For estimation of the metric  over a stream of data, the function creates an
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
	**/
	static public function mean_iou(labels:Dynamic, predictions:Dynamic, num_classes:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculates the mean of the per-class accuracies.
		
		Calculates the accuracy for each class, then takes the mean of that.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`mean_accuracy`.
		
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
		  metrics_collections: An optional list of collections that
		    `mean_per_class_accuracy'
		    should be added to.
		  updates_collections: An optional list of collections `update_op` should be
		    added to.
		  name: An optional variable_scope name.
		
		Returns:
		  mean_accuracy: A `Tensor` representing the mean per class accuracy.
		  update_op: An operation that increments the confusion matrix.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
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
		
		For estimation of the metric  over a stream of data, the function creates an
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
	**/
	static public function percentage_below(values:Dynamic, threshold:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the precision of the predictions with respect to the labels.
		
		The `precision` function creates two local variables,
		`true_positives` and `false_positives`, that are used to compute the
		precision. This value is ultimately returned as `precision`, an idempotent
		operation that simply divides `true_positives` by the sum of `true_positives`
		and `false_positives`.
		
		For estimation of the metric  over a stream of data, the function creates an
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
	**/
	static public function precision(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
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
	**/
	static public function precision_at_thresholds(labels:Dynamic, predictions:Dynamic, thresholds:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Computes the recall of the predictions with respect to the labels.
		
		The `recall` function creates two local variables, `true_positives`
		and `false_negatives`, that are used to compute the recall. This value is
		ultimately returned as `recall`, an idempotent operation that simply divides
		`true_positives` by the sum of `true_positives`  and `false_negatives`.
		
		For estimation of the metric  over a stream of data, the function creates an
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
	**/
	static public function recall_at_thresholds(labels:Dynamic, predictions:Dynamic, thresholds:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
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
	**/
	static public function sensitivity_at_specificity(labels:Dynamic, predictions:Dynamic, specificity:Dynamic, ?weights:Dynamic, ?num_thresholds:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes average precision@k of predictions with respect to sparse labels.
		
		`sparse_average_precision_at_k` creates two local variables,
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
		  update: `Operation` that increments  variables appropriately, and whose
		    value matches `metric`.
		
		Raises:
		  ValueError: if k is invalid.
	**/
	static public function sparse_average_precision_at_k(labels:Dynamic, predictions:Dynamic, k:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes precision@k of the predictions with respect to sparse labels.
		
		If `class_id` is specified, we calculate precision by considering only the
		    entries in the batch for which `class_id` is in the top-k highest
		    `predictions`, and computing the fraction of them for which `class_id` is
		    indeed a correct label.
		If `class_id` is not specified, we'll calculate precision as how often on
		    average a class among the top-k classes with the highest predicted values
		    of a batch entry is correct and can be found in the label for that entry.
		
		`sparse_precision_at_k` creates two local variables,
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
	**/
	static public function specificity_at_sensitivity(labels:Dynamic, predictions:Dynamic, sensitivity:Dynamic, ?weights:Dynamic, ?num_thresholds:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
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
	**/
	static public function true_positives(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
}