/* This file is generated, do not edit! */
package tensorflow.contrib.metrics;
@:pythonImport("tensorflow.contrib.metrics") extern class Metrics_Module {
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
		Computes the percentage of times that predictions matches labels.
		
		Args:
		  predictions: the predicted values, a `Tensor` whose dtype and shape
		               matches 'labels'.
		  labels: the ground truth values, a `Tensor` of any shape and
		          bool, integer, or string dtype.
		  weights: None or `Tensor` of float values to reweight the accuracy.
		  name: A name for the operation (optional).
		
		Returns:
		  Accuracy `Tensor`.
		
		Raises:
		  ValueError: if dtypes don't match or
		              if dtype is not bool, integer, or string.
	**/
	static public function accuracy(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Aggregates the metric names to tuple dictionary.
		
		This function is useful for pairing metric names with their associated value
		and update ops when the list of metrics is long. For example:
		
		```python
		  metrics_to_values, metrics_to_updates = slim.metrics.aggregate_metric_map({
		      'Mean Absolute Error': new_slim.metrics.streaming_mean_absolute_error(
		          predictions, labels, weights),
		      'Mean Relative Error': new_slim.metrics.streaming_mean_relative_error(
		          predictions, labels, labels, weights),
		      'RMSE Linear': new_slim.metrics.streaming_root_mean_squared_error(
		          predictions, labels, weights),
		      'RMSE Log': new_slim.metrics.streaming_root_mean_squared_error(
		          predictions, labels, weights),
		  })
		```
		
		Args:
		  names_to_tuples: a map of metric names to tuples, each of which contain the
		    pair of (value_tensor, update_op) from a streaming metric.
		
		Returns:
		  A dictionary from metric names to value ops and a dictionary from metric
		  names to update ops.
	**/
	static public function aggregate_metric_map(names_to_tuples:Dynamic):Dynamic;
	/**
		Aggregates the metric value tensors and update ops into two lists.
		
		Args:
		  *value_update_tuples: a variable number of tuples, each of which contain the
		    pair of (value_tensor, update_op) from a streaming metric.
		
		Returns:
		  A list of value `Tensor` objects and a list of update ops.
		
		Raises:
		  ValueError: if `value_update_tuples` is empty.
	**/
	static public function aggregate_metrics(?value_update_tuples:python.VarArgs<Dynamic>):Dynamic;
	/**
		AUC computed by maintaining histograms.
		
		Rather than computing AUC directly, this Op maintains Variables containing
		histograms of the scores associated with `True` and `False` labels.  By
		comparing these the AUC is generated, with some discretization error.
		See: "Efficient AUC Learning Curve Calculation" by Bouckaert.
		
		This AUC Op updates in `O(batch_size + nbins)` time and works well even with
		large class imbalance.  The accuracy is limited by discretization error due
		to finite number of bins.  If scores are concentrated in a fewer bins,
		accuracy is lower.  If this is a concern, we recommend trying different
		numbers of bins and comparing results.
		
		Args:
		  boolean_labels:  1-D boolean `Tensor`.  Entry is `True` if the corresponding
		    record is in class.
		  scores:  1-D numeric `Tensor`, same shape as boolean_labels.
		  score_range:  `Tensor` of shape `[2]`, same dtype as `scores`.  The min/max
		    values of score that we expect.  Scores outside range will be clipped.
		  nbins:  Integer number of bins to use.  Accuracy strictly increases as the
		    number of bins increases.
		  collections: List of graph collections keys. Internal histogram Variables
		    are added to these collections. Defaults to `[GraphKeys.LOCAL_VARIABLES]`.
		  check_shape:  Boolean.  If `True`, do a runtime shape check on the scores
		    and labels.
		  name:  A name for this Op.  Defaults to "auc_using_histogram".
		
		Returns:
		  auc:  `float32` scalar `Tensor`.  Fetching this converts internal histograms
		    to auc value.
		  update_op:  `Op`, when run, updates internal histograms.
	**/
	static public function auc_using_histogram(boolean_labels:Dynamic, scores:Dynamic, score_range:Dynamic, ?nbins:Dynamic, ?collections:Dynamic, ?check_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the AUC and asymptotic normally distributed confidence interval.
		
		USAGE NOTE: this approach requires storing all of the predictions and labels
		for a single evaluation in memory, so it may not be usable when the evaluation
		batch size and/or the number of evaluation steps is very large.
		
		Computes the area under the ROC curve and its confidence interval using
		placement values. This has the advantage of being resilient to the
		distribution of predictions by aggregating across batches, accumulating labels
		and predictions and performing the final calculation using all of the
		concatenated values.
		
		Args:
		  labels: A `Tensor` of ground truth labels with the same shape as `labels`
		    and with values of 0 or 1 whose values are castable to `int64`.
		  predictions: A `Tensor` of predictions whose values are castable to
		    `float64`. Will be flattened into a 1-D `Tensor`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`.
		  alpha: Confidence interval level desired.
		  logit_transformation: A boolean value indicating whether the estimate should
		    be logit transformed prior to calculating the confidence interval. Doing
		    so enforces the restriction that the AUC should never be outside the
		    interval [0,1].
		  metrics_collections: An optional iterable of collections that `auc` should
		    be added to.
		  updates_collections: An optional iterable of collections that `update_op`
		    should be added to.
		  name: An optional name for the variable_scope that contains the metric
		    variables.
		
		Returns:
		  auc: A 1-D `Tensor` containing the current area-under-curve, lower, and
		    upper confidence interval values.
		  update_op: An operation that concatenates the input labels and predictions
		    to the accumulated values.
		
		Raises:
		  ValueError: If `labels`, `predictions`, and `weights` have mismatched shapes
		  or if `alpha` isn't in the range (0,1).
	**/
	static public function auc_with_confidence_intervals(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?alpha:Dynamic, ?logit_transformation:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculates Cohen's kappa.
		
		[Cohen's kappa](https://en.wikipedia.org/wiki/Cohen's_kappa) is a statistic
		that measures inter-annotator agreement.
		
		The `cohen_kappa` function calculates the confusion matrix, and creates three
		local variables to compute the Cohen's kappa: `po`, `pe_row`, and `pe_col`,
		which refer to the diagonal part, rows and columns totals of the confusion
		matrix, respectively. This value is ultimately returned as `kappa`, an
		idempotent operation that is calculated by
		
		    pe = (pe_row * pe_col) / N
		    k = (sum(po) - sum(pe)) / (N - sum(pe))
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`kappa`. `update_op` weights each prediction by the corresponding value in
		`weights`.
		
		Class labels are expected to start at 0. E.g., if `num_classes`
		was three, then the possible labels would be [0, 1, 2].
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		NOTE: Equivalent to `sklearn.metrics.cohen_kappa_score`, but the method
		doesn't support weighted matrix yet.
		
		Args:
		  labels: 1-D `Tensor` of real labels for the classification task. Must be
		    one of the following types: int16, int32, int64.
		  predictions_idx: 1-D `Tensor` of predicted class indices for a given
		    classification. Must have the same type as `labels`.
		  num_classes: The possible number of labels.
		  weights: Optional `Tensor` whose shape matches `predictions`.
		  metrics_collections: An optional list of collections that `kappa` should
		    be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  kappa: Scalar float `Tensor` representing the current Cohen's kappa.
		  update_op: `Operation` that increments `po`, `pe_row` and `pe_col`
		    variables appropriately and whose value matches `kappa`.
		
		Raises:
		  ValueError: If `num_classes` is less than 2, or `predictions` and `labels`
		    have mismatched shapes, or if `weights` is not `None` and its shape
		    doesn't match `predictions`, or if either `metrics_collections` or
		    `updates_collections` are not a list or tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function cohen_kappa(labels:Dynamic, predictions_idx:Dynamic, num_classes:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use tf.confusion_matrix instead.
	**/
	static public function confusion_matrix(labels:Dynamic, predictions:Dynamic, ?num_classes:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Computes the number of examples, or sum of `weights`.
		
		This metric keeps track of the denominator in `tf.metrics.mean`.
		When evaluating some metric (e.g. mean) on one or more subsets of the data,
		this auxiliary metric is useful for keeping track of how many examples there
		are in each subset.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  values: A `Tensor` of arbitrary dimensions. Only it's shape is used.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions
		    must be either `1`, or the same as the corresponding `labels`
		    dimension).
		  metrics_collections: An optional list of collections that the metric
		    value variable should be added to.
		  updates_collections: An optional list of collections that the metric update
		    ops should be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  count: A `Tensor` representing the current value of the metric.
		  update_op: An operation that accumulates the metric from a batch of data.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match `values`,
		    or if either `metrics_collections` or `updates_collections` are not a list
		    or tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function count(values:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the approximately best F1-score across different thresholds.
		
		The f1_score function applies a range of thresholds to the predictions to
		convert them from [0, 1] to bool. Precision and recall are computed by
		comparing them to the labels. The F1-Score is then defined as
		2 * precision * recall / (precision + recall). The best one across the
		thresholds is returned.
		
		Disclaimer: In practice it may be desirable to choose the best threshold on
		the validation set and evaluate the F1 score with this threshold on a
		separate test set. Or it may be desirable to use a fixed threshold (e.g. 0.5).
		
		This function internally creates four local variables, `true_positives`,
		`true_negatives`, `false_positives` and `false_negatives` that are used to
		compute the pairs of recall and precision values for a linearly spaced set of
		thresholds from which the best f1-score is derived.
		
		This value is ultimately returned as `f1-score`, an idempotent operation that
		computes the F1-score (computed using the aforementioned variables). The
		`num_thresholds` variable controls the degree of discretization with larger
		numbers of thresholds more closely approximating the true best F1-score.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the F1-score.
		
		Example usage with a custom estimator:
		def model_fn(features, labels, mode):
		  predictions = make_predictions(features)
		  loss = make_loss(predictions, labels)
		  train_op = tf.contrib.training.create_train_op(
		        total_loss=loss,
		        optimizer='Adam')
		  eval_metric_ops = {'f1': f1_score(labels, predictions)}
		  return tf.estimator.EstimatorSpec(
		      mode=mode,
		      predictions=predictions,
		      loss=loss,
		      train_op=train_op,
		      eval_metric_ops=eval_metric_ops,
		      export_outputs=export_outputs)
		estimator = tf.estimator.Estimator(model_fn=model_fn)
		
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
		  metrics_collections: An optional list of collections that `f1_score` should
		    be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  f1_score: A scalar `Tensor` representing the current best f1-score across
		    different thresholds.
		  update_op: An operation that increments the `true_positives`,
		    `true_negatives`, `false_positives` and `false_negatives` variables
		    appropriately and whose value matches the `f1_score`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
	**/
	static public function f1_score(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?num_thresholds:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the precision at a given recall.
		
		This function creates variables to track the true positives, false positives,
		true negatives, and false negatives at a set of thresholds. Among those
		thresholds where recall is at least `target_recall`, precision is computed
		at the threshold where recall is closest to `target_recall`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		precision at `target_recall`. `update_op` increments the counts of true
		positives, false positives, true negatives, and false negatives with the
		weight of each case found in the `predictions` and `labels`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		For additional information about precision and recall, see
		http://en.wikipedia.org/wiki/Precision_and_recall
		
		Args:
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  target_recall: A scalar value in range `[0, 1]`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  num_thresholds: The number of thresholds to use for matching the given
		    recall.
		  metrics_collections: An optional list of collections to which `precision`
		    should be added.
		  updates_collections: An optional list of collections to which `update_op`
		    should be added.
		  name: An optional variable_scope name.
		
		Returns:
		  precision: A scalar `Tensor` representing the precision at the given
		    `target_recall` value.
		  update_op: An operation that increments the variables for tracking the
		    true positives, false positives, true negatives, and false negatives and
		    whose value matches `precision`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    `target_recall` is not between 0 and 1, or if either `metrics_collections`
		    or `updates_collections` are not a list or tuple.
		  RuntimeError: If eager execution is enabled.
	**/
	static public function precision_at_recall(labels:Dynamic, predictions:Dynamic, target_recall:Dynamic, ?weights:Dynamic, ?num_thresholds:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A helper method for creating metrics related to precision-recall curves.
		
		These values are true positives, false negatives, true negatives, false
		positives, precision, and recall. This function returns a data structure that
		contains ops within it.
		
		Unlike _streaming_confusion_matrix_at_thresholds (which exhibits O(T * N)
		space and run time), this op exhibits O(T + N) space and run time, where T is
		the number of thresholds and N is the size of the predictions tensor. Hence,
		it may be advantageous to use this function when `predictions` is big.
		
		For instance, prefer this method for per-pixel classification tasks, for which
		the predictions tensor may be very large.
		
		Each number in `predictions`, a float in `[0, 1]`, is compared with its
		corresponding label in `labels`, and counts as a single tp/fp/tn/fn value at
		each threshold. This is then multiplied with `weights` which can be used to
		reweight certain values, or more commonly used for masking values.
		
		Args:
		  labels: A bool `Tensor` whose shape matches `predictions`.
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  weights: Optional; If provided, a `Tensor` that has the same dtype as,
		    and broadcastable to, `predictions`. This tensor is multiplied by counts.
		  num_thresholds: Optional; Number of thresholds, evenly distributed in
		    `[0, 1]`. Should be `>= 2`. Defaults to 201. Note that the number of bins
		    is 1 less than `num_thresholds`. Using an even `num_thresholds` value
		    instead of an odd one may yield unfriendly edges for bins.
		  use_locking: Optional; If True, the op will be protected by a lock.
		    Otherwise, the behavior is undefined, but may exhibit less contention.
		    Defaults to True.
		  name: Optional; variable_scope name. If not provided, the string
		    'precision_recall_at_equal_threshold' is used.
		
		Returns:
		  result: A named tuple (See PrecisionRecallData within the implementation of
		    this function) with properties that are variables of shape
		    `[num_thresholds]`. The names of the properties are tp, fp, tn, fn,
		    precision, recall, thresholds. Types are same as that of predictions.
		  update_op: An op that accumulates values.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    `includes` contains invalid keys.
	**/
	static public function precision_recall_at_equal_thresholds(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?num_thresholds:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes `recall` at `precision`.
		
		The `recall_at_precision` function creates four local variables,
		`tp` (true positives), `fp` (false positives) and `fn` (false negatives)
		that are used to compute the `recall` at the given `precision` value. The
		threshold for the given `precision` value is computed and used to evaluate the
		corresponding `recall`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`recall`. `update_op` increments the `tp`, `fp` and `fn` counts with the
		weight of each case found in the `predictions` and `labels`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  precision: A scalar value in range `[0, 1]`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  num_thresholds: The number of thresholds to use for matching the given
		    `precision`.
		  metrics_collections: An optional list of collections that `recall`
		    should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		  strict_mode: If true and there exists a threshold where the precision is
		    above the target precision, return the corresponding recall at the
		    threshold. Otherwise, return 0. If false, find the threshold where the
		    precision is closest to the target precision and return the recall at the
		    threshold.
		
		Returns:
		  recall: A scalar `Tensor` representing the recall at the given
		    `precision` value.
		  update_op: An operation that increments the `tp`, `fp` and `fn`
		    variables appropriately and whose value matches `recall`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    `precision` is not between 0 and 1, or if either `metrics_collections`
		    or `updates_collections` are not a list or tuple.
	**/
	static public function recall_at_precision(labels:Dynamic, predictions:Dynamic, precision:Dynamic, ?weights:Dynamic, ?num_thresholds:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic, ?strict_mode:Dynamic):Dynamic;
	/**
		Compute set difference of elements in last dimension of `a` and `b`.
		
		All but the last dimension of `a` and `b` must match.
		
		Example:
		
		```python
		  import tensorflow as tf
		  import collections
		
		  # Represent the following array of sets as a sparse tensor:
		  # a = np.array([[{1, 2}, {3}], [{4}, {5, 6}]])
		  a = collections.OrderedDict([
		      ((0, 0, 0), 1),
		      ((0, 0, 1), 2),
		      ((0, 1, 0), 3),
		      ((1, 0, 0), 4),
		      ((1, 1, 0), 5),
		      ((1, 1, 1), 6),
		  ])
		  a = tf.SparseTensor(list(a.keys()), list(a.values()), dense_shape=[2, 2, 2])
		
		  # np.array([[{1, 3}, {2}], [{4, 5}, {5, 6, 7, 8}]])
		  b = collections.OrderedDict([
		      ((0, 0, 0), 1),
		      ((0, 0, 1), 3),
		      ((0, 1, 0), 2),
		      ((1, 0, 0), 4),
		      ((1, 0, 1), 5),
		      ((1, 1, 0), 5),
		      ((1, 1, 1), 6),
		      ((1, 1, 2), 7),
		      ((1, 1, 3), 8),
		  ])
		  b = tf.SparseTensor(list(b.keys()), list(b.values()), dense_shape=[2, 2, 4])
		
		  # `set_difference` is applied to each aligned pair of sets.
		  tf.sets.set_difference(a, b)
		
		  # The result will be equivalent to either of:
		  #
		  # np.array([[{2}, {3}], [{}, {}]])
		  #
		  # collections.OrderedDict([
		  #     ((0, 0, 0), 2),
		  #     ((0, 1, 0), 3),
		  # ])
		```
		
		Args:
		  a: `Tensor` or `SparseTensor` of the same type as `b`. If sparse, indices
		      must be sorted in row-major order.
		  b: `Tensor` or `SparseTensor` of the same type as `a`. If sparse, indices
		      must be sorted in row-major order.
		  aminusb: Whether to subtract `b` from `a`, vs vice versa.
		  validate_indices: Whether to validate the order and range of sparse indices
		     in `a` and `b`.
		
		Returns:
		  A `SparseTensor` whose shape is the same rank as `a` and `b`, and all but
		  the last dimension the same. Elements along the last dimension contain the
		  differences.
	**/
	static public function set_difference(a:Dynamic, b:Dynamic, ?aminusb:Dynamic, ?validate_indices:Dynamic):Dynamic;
	/**
		Compute set intersection of elements in last dimension of `a` and `b`.
		
		All but the last dimension of `a` and `b` must match.
		
		Example:
		
		```python
		  import tensorflow as tf
		  import collections
		
		  # Represent the following array of sets as a sparse tensor:
		  # a = np.array([[{1, 2}, {3}], [{4}, {5, 6}]])
		  a = collections.OrderedDict([
		      ((0, 0, 0), 1),
		      ((0, 0, 1), 2),
		      ((0, 1, 0), 3),
		      ((1, 0, 0), 4),
		      ((1, 1, 0), 5),
		      ((1, 1, 1), 6),
		  ])
		  a = tf.SparseTensor(list(a.keys()), list(a.values()), dense_shape=[2,2,2])
		
		  # b = np.array([[{1}, {}], [{4}, {5, 6, 7, 8}]])
		  b = collections.OrderedDict([
		      ((0, 0, 0), 1),
		      ((1, 0, 0), 4),
		      ((1, 1, 0), 5),
		      ((1, 1, 1), 6),
		      ((1, 1, 2), 7),
		      ((1, 1, 3), 8),
		  ])
		  b = tf.SparseTensor(list(b.keys()), list(b.values()), dense_shape=[2, 2, 4])
		
		  # `tf.sets.set_intersection` is applied to each aligned pair of sets.
		  tf.sets.set_intersection(a, b)
		
		  # The result will be equivalent to either of:
		  #
		  # np.array([[{1}, {}], [{4}, {5, 6}]])
		  #
		  # collections.OrderedDict([
		  #     ((0, 0, 0), 1),
		  #     ((1, 0, 0), 4),
		  #     ((1, 1, 0), 5),
		  #     ((1, 1, 1), 6),
		  # ])
		```
		
		Args:
		  a: `Tensor` or `SparseTensor` of the same type as `b`. If sparse, indices
		      must be sorted in row-major order.
		  b: `Tensor` or `SparseTensor` of the same type as `a`. If sparse, indices
		      must be sorted in row-major order.
		  validate_indices: Whether to validate the order and range of sparse indices
		     in `a` and `b`.
		
		Returns:
		  A `SparseTensor` whose shape is the same rank as `a` and `b`, and all but
		  the last dimension the same. Elements along the last dimension contain the
		  intersections.
	**/
	static public function set_intersection(a:Dynamic, b:Dynamic, ?validate_indices:Dynamic):Dynamic;
	/**
		Compute number of unique elements along last dimension of `a`.
		
		Args:
		  a: `SparseTensor`, with indices sorted in row-major order.
		  validate_indices: Whether to validate the order and range of sparse indices
		     in `a`.
		
		Returns:
		  `int32` `Tensor` of set sizes. For `a` ranked `n`, this is a `Tensor` with
		  rank `n-1`, and the same 1st `n-1` dimensions as `a`. Each value is the
		  number of unique elements in the corresponding `[0...n-1]` dimension of `a`.
		
		Raises:
		  TypeError: If `a` is an invalid types.
	**/
	static public function set_size(a:Dynamic, ?validate_indices:Dynamic):Dynamic;
	/**
		Compute set union of elements in last dimension of `a` and `b`.
		
		All but the last dimension of `a` and `b` must match.
		
		Example:
		
		```python
		  import tensorflow as tf
		  import collections
		
		  # [[{1, 2}, {3}], [{4}, {5, 6}]]
		  a = collections.OrderedDict([
		      ((0, 0, 0), 1),
		      ((0, 0, 1), 2),
		      ((0, 1, 0), 3),
		      ((1, 0, 0), 4),
		      ((1, 1, 0), 5),
		      ((1, 1, 1), 6),
		  ])
		  a = tf.SparseTensor(list(a.keys()), list(a.values()), dense_shape=[2, 2, 2])
		
		  # [[{1, 3}, {2}], [{4, 5}, {5, 6, 7, 8}]]
		  b = collections.OrderedDict([
		      ((0, 0, 0), 1),
		      ((0, 0, 1), 3),
		      ((0, 1, 0), 2),
		      ((1, 0, 0), 4),
		      ((1, 0, 1), 5),
		      ((1, 1, 0), 5),
		      ((1, 1, 1), 6),
		      ((1, 1, 2), 7),
		      ((1, 1, 3), 8),
		  ])
		  b = tf.SparseTensor(list(b.keys()), list(b.values()), dense_shape=[2, 2, 4])
		
		  # `set_union` is applied to each aligned pair of sets.
		  tf.sets.set_union(a, b)
		
		  # The result will be a equivalent to either of:
		  #
		  # np.array([[{1, 2, 3}, {2, 3}], [{4, 5}, {5, 6, 7, 8}]])
		  #
		  # collections.OrderedDict([
		  #     ((0, 0, 0), 1),
		  #     ((0, 0, 1), 2),
		  #     ((0, 0, 2), 3),
		  #     ((0, 1, 0), 2),
		  #     ((0, 1, 1), 3),
		  #     ((1, 0, 0), 4),
		  #     ((1, 0, 1), 5),
		  #     ((1, 1, 0), 5),
		  #     ((1, 1, 1), 6),
		  #     ((1, 1, 2), 7),
		  #     ((1, 1, 3), 8),
		  # ])
		```
		
		Args:
		  a: `Tensor` or `SparseTensor` of the same type as `b`. If sparse, indices
		      must be sorted in row-major order.
		  b: `Tensor` or `SparseTensor` of the same type as `a`. If sparse, indices
		      must be sorted in row-major order.
		  validate_indices: Whether to validate the order and range of sparse indices
		     in `a` and `b`.
		
		Returns:
		  A `SparseTensor` whose shape is the same rank as `a` and `b`, and all but
		  the last dimension the same. Elements along the last dimension contain the
		  unions.
	**/
	static public function set_union(a:Dynamic, b:Dynamic, ?validate_indices:Dynamic):Dynamic;
	/**
		Computes recall@k of top-k predictions with respect to sparse labels.
		
		If `class_id` is specified, we calculate recall by considering only the
		    entries in the batch for which `class_id` is in the label, and computing
		    the fraction of them for which `class_id` is in the top-k `predictions`.
		If `class_id` is not specified, we'll calculate recall as how often on
		    average a class among the labels of a batch entry is in the top-k
		    `predictions`.
		
		`sparse_recall_at_top_k` creates two local variables, `true_positive_at_<k>`
		and `false_negative_at_<k>`, that are used to compute the recall_at_k
		frequency. This frequency is ultimately returned as `recall_at_<k>`: an
		idempotent operation that simply divides `true_positive_at_<k>` by total
		(`true_positive_at_<k>` + `false_negative_at_<k>`).
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`recall_at_<k>`. Set operations applied to `top_k` and `labels` calculate the
		true positives and false negatives weighted by `weights`. Then `update_op`
		increments `true_positive_at_<k>` and `false_negative_at_<k>` using these
		values.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels], where N >= 1 and num_labels is the number of
		    target classes for the associated prediction. Commonly, N=1 and `labels`
		    has shape [batch_size, num_labels]. [D1, ... DN] must match
		    `top_k_predictions`. Values should be in range [0, num_classes), where
		    num_classes is the last dimension of `predictions`. Values outside this
		    range always count towards `false_negative_at_<k>`.
		  top_k_predictions: Integer `Tensor` with shape [D1, ... DN, k] where
		    N >= 1. Commonly, N=1 and top_k_predictions has shape [batch size, k].
		    The final dimension contains the indices of top-k labels. [D1, ... DN]
		    must match `labels`.
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
	static public function sparse_recall_at_top_k(labels:Dynamic, top_k_predictions:Dynamic, ?class_id:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculates how often `predictions` matches `labels`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.metrics.accuracy. Note that the order of the labels and predictions arguments has been switched.
		
		The `streaming_accuracy` function creates two local variables, `total` and
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
		  predictions: The predicted values, a `Tensor` of any shape.
		  labels: The ground truth values, a `Tensor` whose shape matches
		    `predictions`.
		  weights: `Tensor` whose rank is either 0, or the same rank as `labels`, and
		    must be broadcastable to `labels` (i.e., all dimensions must be either
		    `1`, or the same as the corresponding `labels` dimension).
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
	static public function streaming_accuracy(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the approximate AUC via a Riemann sum. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.metrics.auc. Note that the order of the labels and predictions arguments has been switched.
		
		The `streaming_auc` function creates four local variables, `true_positives`,
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
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  labels: A `bool` `Tensor` whose shape matches `predictions`.
		  weights: `Tensor` whose rank is either 0, or the same rank as `labels`, and
		    must be broadcastable to `labels` (i.e., all dimensions must be either
		    `1`, or the same as the corresponding `labels` dimension).
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
	static public function streaming_auc(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?num_thresholds:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?curve:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Concatenate values along an axis across batches.
		
		The function `streaming_concat` creates two local variables, `array` and
		`size`, that are used to store concatenated values. Internally, `array` is
		used as storage for a dynamic array (if `maxsize` is `None`), which ensures
		that updates can be run in amortized constant time.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that appends the values of a tensor and returns the
		length of the concatenated axis.
		
		This op allows for evaluating metrics that cannot be updated incrementally
		using the same framework as other streaming metrics.
		
		Args:
		  values: `Tensor` to concatenate. Rank and the shape along all axes other
		    than the axis to concatenate along must be statically known.
		  axis: optional integer axis to concatenate along.
		  max_size: optional integer maximum size of `value` along the given axis.
		    Once the maximum size is reached, further updates are no-ops. By default,
		    there is no maximum size: the array is resized as necessary.
		  metrics_collections: An optional list of collections that `value`
		    should be added to.
		  updates_collections: An optional list of collections `update_op` should be
		    added to.
		  name: An optional variable_scope name.
		
		Returns:
		  value: A `Tensor` representing the concatenated values.
		  update_op: An operation that concatenates the next values.
		
		Raises:
		  ValueError: if `values` does not have a statically known rank, `axis` is
		    not in the valid range or the size of `values` is not statically known
		    along any axis other than `axis`.
	**/
	static public function streaming_concat(values:Dynamic, ?axis:Dynamic, ?max_size:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the unbiased sample covariance between `predictions` and `labels`.
		
		The `streaming_covariance` function creates four local variables,
		`comoment`, `mean_prediction`, `mean_label`, and `count`, which are used to
		compute the sample covariance between predictions and labels across multiple
		batches of data. The covariance is ultimately returned as an idempotent
		operation that simply divides `comoment` by `count` - 1. We use `count` - 1
		in order to get an unbiased estimate.
		
		The algorithm used for this online computation is described in
		https://en.wikipedia.org/wiki/Algorithms_for_calculating_variance.
		Specifically, the formula used to combine two sample comoments is
		`C_AB = C_A + C_B + (E[x_A] - E[x_B]) * (E[y_A] - E[y_B]) * n_A * n_B / n_AB`
		The comoment for a single batch of data is simply
		`sum((x - E[x]) * (y - E[y]))`, optionally weighted.
		
		If `weights` is not None, then it is used to compute weighted comoments,
		means, and count. NOTE: these weights are treated as "frequency weights", as
		opposed to "reliability weights". See discussion of the difference on
		https://wikipedia.org/wiki/Weighted_arithmetic_mean#Weighted_sample_variance
		
		To facilitate the computation of covariance across multiple batches of data,
		the function creates an `update_op` operation, which updates underlying
		variables and returns the updated covariance.
		
		Args:
		  predictions: A `Tensor` of arbitrary size.
		  labels: A `Tensor` of the same size as `predictions`.
		  weights: Optional `Tensor` indicating the frequency with which an example is
		    sampled. Rank must be 0, or the same rank as `labels`, and must be
		    broadcastable to `labels` (i.e., all dimensions must be either `1`, or
		    the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that the metric
		    value variable should be added to.
		  updates_collections: An optional list of collections that the metric update
		    ops should be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  covariance: A `Tensor` representing the current unbiased sample covariance,
		    `comoment` / (`count` - 1).
		  update_op: An operation that updates the local variables appropriately.
		
		Raises:
		  ValueError: If labels and predictions are of different sizes or if either
		    `metrics_collections` or `updates_collections` are not a list or tuple.
	**/
	static public function streaming_covariance(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes curve (ROC or PR) values for a prespecified number of points.
		
		The `streaming_curve_points` function creates four local variables,
		`true_positives`, `true_negatives`, `false_positives` and `false_negatives`
		that are used to compute the curve values. To discretize the curve, a linearly
		spaced set of thresholds is used to compute pairs of recall and precision
		values.
		
		For best results, `predictions` should be distributed approximately uniformly
		in the range [0, 1] and not peaked around 0 or 1.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables.
		
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
		  points: A `Tensor` with shape [num_thresholds, 2] that contains points of
		    the curve.
		  update_op: An operation that increments the `true_positives`,
		    `true_negatives`, `false_positives` and `false_negatives` variables.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
		
		TODO(chizeng): Consider rewriting this method to make use of logic within the
		precision_recall_at_equal_thresholds method (to improve run time).
	**/
	static public function streaming_curve_points(?labels:Dynamic, ?predictions:Dynamic, ?weights:Dynamic, ?num_thresholds:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?curve:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the apporixmate AUC by a Riemann sum with data-derived thresholds.
		
		USAGE NOTE: this approach requires storing all of the predictions and labels
		for a single evaluation in memory, so it may not be usable when the evaluation
		batch size and/or the number of evaluation steps is very large.
		
		Computes the area under the ROC or PR curve using each prediction as a
		threshold. This has the advantage of being resilient to the distribution of
		predictions by aggregating across batches, accumulating labels and predictions
		and performing the final calculation using all of the concatenated values.
		
		Args:
		  labels: A `Tensor` of ground truth labels with the same shape as `labels`
		    and with values of 0 or 1 whose values are castable to `int64`.
		  predictions: A `Tensor` of predictions whose values are castable to
		    `float64`. Will be flattened into a 1-D `Tensor`.
		  curve: The name of the curve for which to compute AUC, 'ROC' for the
		    Receiving Operating Characteristic or 'PR' for the Precision-Recall curve.
		  metrics_collections: An optional iterable of collections that `auc` should
		    be added to.
		  updates_collections: An optional iterable of collections that `update_op`
		    should be added to.
		  name: An optional name for the variable_scope that contains the metric
		    variables.
		  weights: A 'Tensor' of non-negative weights whose values are castable to
		    `float64`. Will be flattened into a 1-D `Tensor`.
		
		Returns:
		  auc: A scalar `Tensor` containing the current area-under-curve value.
		  update_op: An operation that concatenates the input labels and predictions
		    to the accumulated values.
		
		Raises:
		  ValueError: If `labels` and `predictions` have mismatched shapes or if
		    `curve` isn't a recognized curve type.
	**/
	static public function streaming_dynamic_auc(labels:Dynamic, predictions:Dynamic, ?curve:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Computes the false negative rate of predictions with respect to labels.
		
		The `false_negative_rate` function creates two local variables,
		`false_negatives` and `true_positives`, that are used to compute the
		false positive rate. This value is ultimately returned as
		`false_negative_rate`, an idempotent operation that simply divides
		`false_negatives` by the sum of `false_negatives` and `true_positives`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`false_negative_rate`. `update_op` weights each prediction by the
		corresponding value in `weights`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  predictions: The predicted values, a `Tensor` of arbitrary dimensions. Will
		    be cast to `bool`.
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that
		    `false_negative_rate` should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  false_negative_rate: Scalar float `Tensor` with the value of
		    `false_negatives` divided by the sum of `false_negatives` and
		    `true_positives`.
		  update_op: `Operation` that increments `false_negatives` and
		    `true_positives` variables appropriately and whose value matches
		    `false_negative_rate`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
	**/
	static public function streaming_false_negative_rate(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes various fnr values for different `thresholds` on `predictions`.
		
		The `streaming_false_negative_rate_at_thresholds` function creates two
		local variables, `false_negatives`, `true_positives`, for various values of
		thresholds. `false_negative_rate[i]` is defined as the total weight
		of values in `predictions` above `thresholds[i]` whose corresponding entry in
		`labels` is `False`, divided by the total weight of `True` values in `labels`
		(`false_negatives[i] / (false_negatives[i] + true_positives[i])`).
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`false_positive_rate`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  labels: A `bool` `Tensor` whose shape matches `predictions`.
		  thresholds: A python list or tuple of float thresholds in `[0, 1]`.
		  weights: `Tensor` whose rank is either 0, or the same rank as `labels`, and
		    must be broadcastable to `labels` (i.e., all dimensions must be either
		    `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that
		    `false_negative_rate` should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  false_negative_rate: A float `Tensor` of shape `[len(thresholds)]`.
		  update_op: An operation that increments the `false_negatives` and
		    `true_positives` variables that are used in the computation of
		    `false_negative_rate`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
	**/
	static public function streaming_false_negative_rate_at_thresholds(predictions:Dynamic, labels:Dynamic, thresholds:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the total number of false negatives. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.metrics.false_negatives. Note that the order of the labels and predictions arguments has been switched.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  predictions: The predicted values, a `Tensor` of arbitrary dimensions. Will
		    be cast to `bool`.
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions
		    must be either `1`, or the same as the corresponding `labels`
		    dimension).
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
	static public function streaming_false_negatives(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	static public function streaming_false_negatives_at_thresholds(predictions:Dynamic, labels:Dynamic, thresholds:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Computes the false positive rate of predictions with respect to labels.
		
		The `false_positive_rate` function creates two local variables,
		`false_positives` and `true_negatives`, that are used to compute the
		false positive rate. This value is ultimately returned as
		`false_positive_rate`, an idempotent operation that simply divides
		`false_positives` by the sum of `false_positives` and `true_negatives`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`false_positive_rate`. `update_op` weights each prediction by the
		corresponding value in `weights`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  predictions: The predicted values, a `Tensor` of arbitrary dimensions. Will
		    be cast to `bool`.
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that
		   `false_positive_rate` should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  false_positive_rate: Scalar float `Tensor` with the value of
		    `false_positives` divided by the sum of `false_positives` and
		    `true_negatives`.
		  update_op: `Operation` that increments `false_positives` and
		    `true_negatives` variables appropriately and whose value matches
		    `false_positive_rate`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
	**/
	static public function streaming_false_positive_rate(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes various fpr values for different `thresholds` on `predictions`.
		
		The `streaming_false_positive_rate_at_thresholds` function creates two
		local variables, `false_positives`, `true_negatives`, for various values of
		thresholds. `false_positive_rate[i]` is defined as the total weight
		of values in `predictions` above `thresholds[i]` whose corresponding entry in
		`labels` is `False`, divided by the total weight of `False` values in `labels`
		(`false_positives[i] / (false_positives[i] + true_negatives[i])`).
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`false_positive_rate`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  labels: A `bool` `Tensor` whose shape matches `predictions`.
		  thresholds: A python list or tuple of float thresholds in `[0, 1]`.
		  weights: `Tensor` whose rank is either 0, or the same rank as `labels`, and
		    must be broadcastable to `labels` (i.e., all dimensions must be either
		    `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that
		    `false_positive_rate` should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  false_positive_rate: A float `Tensor` of shape `[len(thresholds)]`.
		  update_op: An operation that increments the `false_positives` and
		    `true_negatives` variables that are used in the computation of
		    `false_positive_rate`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
	**/
	static public function streaming_false_positive_rate_at_thresholds(predictions:Dynamic, labels:Dynamic, thresholds:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sum the weights of false positives. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.metrics.false_positives. Note that the order of the labels and predictions arguments has been switched.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  predictions: The predicted values, a `Tensor` of arbitrary dimensions. Will
		    be cast to `bool`.
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions
		    must be either `1`, or the same as the corresponding `labels`
		    dimension).
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
	static public function streaming_false_positives(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	static public function streaming_false_positives_at_thresholds(predictions:Dynamic, labels:Dynamic, thresholds:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Computes the (weighted) mean of the given values. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.metrics.mean
		
		The `streaming_mean` function creates two local variables, `total` and `count`
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
		  weights: `Tensor` whose rank is either 0, or the same rank as `values`, and
		    must be broadcastable to `values` (i.e., all dimensions must be either
		    `1`, or the same as the corresponding `values` dimension).
		  metrics_collections: An optional list of collections that `mean`
		    should be added to.
		  updates_collections: An optional list of collections that `update_op`
		    should be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  mean: A `Tensor` representing the current mean, the value of `total` divided
		    by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `mean`.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match `values`,
		    or if either `metrics_collections` or `updates_collections` are not a list
		    or tuple.
	**/
	static public function streaming_mean(values:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean absolute error between the labels and predictions. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.metrics.mean_absolute_error. Note that the order of the labels and predictions arguments has been switched.
		
		The `streaming_mean_absolute_error` function creates two local variables,
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
		  predictions: A `Tensor` of arbitrary shape.
		  labels: A `Tensor` of the same shape as `predictions`.
		  weights: Optional `Tensor` indicating the frequency with which an example is
		    sampled. Rank must be 0, or the same rank as `labels`, and must be
		    broadcastable to `labels` (i.e., all dimensions must be either `1`, or
		    the same as the corresponding `labels` dimension).
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
	static public function streaming_mean_absolute_error(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the cosine distance between the labels and predictions.
		
		The `streaming_mean_cosine_distance` function creates two local variables,
		`total` and `count` that are used to compute the average cosine distance
		between `predictions` and `labels`. This average is weighted by `weights`,
		and it is ultimately returned as `mean_distance`, which is an idempotent
		operation that simply divides `total` by `count`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`mean_distance`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  predictions: A `Tensor` of the same shape as `labels`.
		  labels: A `Tensor` of arbitrary shape.
		  dim: The dimension along which the cosine distance is computed.
		  weights: An optional `Tensor` whose shape is broadcastable to `predictions`,
		    and whose dimension `dim` is 1.
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
	static public function streaming_mean_cosine_distance(predictions:Dynamic, labels:Dynamic, dim:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
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
		  predictions: A `Tensor` of prediction results for semantic labels, whose
		    shape is [batch size] and type `int32` or `int64`. The tensor will be
		    flattened, if its rank > 1.
		  labels: A `Tensor` of ground truth labels with shape [batch size] and of
		    type `int32` or `int64`. The tensor will be flattened, if its rank > 1.
		  num_classes: The possible number of labels the prediction task can
		    have. This value must be provided, since a confusion matrix of
		    dimension = [num_classes, num_classes] will be allocated.
		  weights: An optional `Tensor` whose shape is broadcastable to `predictions`.
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
	static public function streaming_mean_iou(predictions:Dynamic, labels:Dynamic, num_classes:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean relative error by normalizing with the given values.
		
		The `streaming_mean_relative_error` function creates two local variables,
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
		  predictions: A `Tensor` of arbitrary shape.
		  labels: A `Tensor` of the same shape as `predictions`.
		  normalizer: A `Tensor` of the same shape as `predictions`.
		  weights: Optional `Tensor` indicating the frequency with which an example is
		    sampled. Rank must be 0, or the same rank as `labels`, and must be
		    broadcastable to `labels` (i.e., all dimensions must be either `1`, or
		    the same as the corresponding `labels` dimension).
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
	static public function streaming_mean_relative_error(predictions:Dynamic, labels:Dynamic, normalizer:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean squared error between the labels and predictions. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.metrics.mean_squared_error. Note that the order of the labels and predictions arguments has been switched.
		
		The `streaming_mean_squared_error` function creates two local variables,
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
		  predictions: A `Tensor` of arbitrary shape.
		  labels: A `Tensor` of the same shape as `predictions`.
		  weights: Optional `Tensor` indicating the frequency with which an example is
		    sampled. Rank must be 0, or the same rank as `labels`, and must be
		    broadcastable to `labels` (i.e., all dimensions must be either `1`, or
		    the same as the corresponding `labels` dimension).
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
	static public function streaming_mean_squared_error(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the element-wise (weighted) mean of the given tensors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.metrics.mean_tensor
		
		In contrast to the `streaming_mean` function which returns a scalar with the
		mean,  this function returns an average tensor with the same shape as the
		input tensors.
		
		The `streaming_mean_tensor` function creates two local variables,
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
		  weights: `Tensor` whose rank is either 0, or the same rank as `values`, and
		    must be broadcastable to `values` (i.e., all dimensions must be either
		    `1`, or the same as the corresponding `values` dimension).
		  metrics_collections: An optional list of collections that `mean`
		    should be added to.
		  updates_collections: An optional list of collections that `update_op`
		    should be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  mean: A float `Tensor` representing the current mean, the value of `total`
		    divided by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `mean`.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match `values`,
		    or if either `metrics_collections` or `updates_collections` are not a list
		    or tuple.
	**/
	static public function streaming_mean_tensor(values:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Pearson correlation coefficient between `predictions`, `labels`.
		
		The `streaming_pearson_correlation` function delegates to
		`streaming_covariance` the tracking of three [co]variances:
		
		- `streaming_covariance(predictions, labels)`, i.e. covariance
		- `streaming_covariance(predictions, predictions)`, i.e. variance
		- `streaming_covariance(labels, labels)`, i.e. variance
		
		The product-moment correlation ultimately returned is an idempotent operation
		`cov(predictions, labels) / sqrt(var(predictions) * var(labels))`. To
		facilitate correlation computation across multiple batches, the function
		groups the `update_op`s of the underlying streaming_covariance and returns an
		`update_op`.
		
		If `weights` is not None, then it is used to compute a weighted correlation.
		NOTE: these weights are treated as "frequency weights", as opposed to
		"reliability weights". See discussion of the difference on
		https://wikipedia.org/wiki/Weighted_arithmetic_mean#Weighted_sample_variance
		
		Args:
		  predictions: A `Tensor` of arbitrary size.
		  labels: A `Tensor` of the same size as predictions.
		  weights: Optional `Tensor` indicating the frequency with which an example is
		    sampled. Rank must be 0, or the same rank as `labels`, and must be
		    broadcastable to `labels` (i.e., all dimensions must be either `1`, or
		    the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that the metric
		    value variable should be added to.
		  updates_collections: An optional list of collections that the metric update
		    ops should be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  pearson_r: A `Tensor` representing the current Pearson product-moment
		    correlation coefficient, the value of
		    `cov(predictions, labels) / sqrt(var(predictions) * var(labels))`.
		  update_op: An operation that updates the underlying variables appropriately.
		
		Raises:
		  ValueError: If `labels` and `predictions` are of different sizes, or if
		    `weights` is the wrong size, or if either `metrics_collections` or
		    `updates_collections` are not a `list` or `tuple`.
	**/
	static public function streaming_pearson_correlation(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the percentage of values less than the given threshold.
		
		The `streaming_percentage_less` function creates two local variables,
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
		  weights: An optional `Tensor` whose shape is broadcastable to `values`.
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
	static public function streaming_percentage_less(values:Dynamic, threshold:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the precision of the predictions with respect to the labels. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.metrics.precision. Note that the order of the labels and predictions arguments has been switched.
		
		The `streaming_precision` function creates two local variables,
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
		  predictions: The predicted values, a `bool` `Tensor` of arbitrary shape.
		  labels: The ground truth values, a `bool` `Tensor` whose dimensions must
		    match `predictions`.
		  weights: `Tensor` whose rank is either 0, or the same rank as `labels`, and
		    must be broadcastable to `labels` (i.e., all dimensions must be either
		    `1`, or the same as the corresponding `labels` dimension).
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
	static public function streaming_precision(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes precision values for different `thresholds` on `predictions`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.metrics.precision_at_thresholds. Note that the order of the labels and predictions arguments are switched.
		
		The `streaming_precision_at_thresholds` function creates four local variables,
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
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  labels: A `bool` `Tensor` whose shape matches `predictions`.
		  thresholds: A python list or tuple of float thresholds in `[0, 1]`.
		  weights: `Tensor` whose rank is either 0, or the same rank as `labels`, and
		    must be broadcastable to `labels` (i.e., all dimensions must be either
		    `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that `precision` should
		    be added to.
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
	static public function streaming_precision_at_thresholds(predictions:Dynamic, labels:Dynamic, thresholds:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the recall of the predictions with respect to the labels. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.metrics.recall. Note that the order of the labels and predictions arguments has been switched.
		
		The `streaming_recall` function creates two local variables, `true_positives`
		and `false_negatives`, that are used to compute the recall. This value is
		ultimately returned as `recall`, an idempotent operation that simply divides
		`true_positives` by the sum of `true_positives`  and `false_negatives`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` that updates these variables and returns the `recall`. `update_op`
		weights each prediction by the corresponding value in `weights`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  predictions: The predicted values, a `bool` `Tensor` of arbitrary shape.
		  labels: The ground truth values, a `bool` `Tensor` whose dimensions must
		    match `predictions`.
		  weights: `Tensor` whose rank is either 0, or the same rank as `labels`, and
		    must be broadcastable to `labels` (i.e., all dimensions must be either
		    `1`, or the same as the corresponding `labels` dimension).
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
	static public function streaming_recall(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the recall@k of the predictions with respect to dense labels. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-08.
		Instructions for updating:
		Please use `streaming_sparse_recall_at_k`, and reshape labels from [batch_size] to [batch_size, 1].
		
		The `streaming_recall_at_k` function creates two local variables, `total` and
		`count`, that are used to compute the recall@k frequency. This frequency is
		ultimately returned as `recall_at_<k>`: an idempotent operation that simply
		divides `total` by `count`.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`recall_at_<k>`. Internally, an `in_top_k` operation computes a `Tensor` with
		shape [batch_size] whose elements indicate whether or not the corresponding
		label is in the top `k` `predictions`. Then `update_op` increments `total`
		with the reduced sum of `weights` where `in_top_k` is `True`, and it
		increments `count` with the reduced sum of `weights`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  predictions: A float `Tensor` of dimension [batch_size, num_classes].
		  labels: A `Tensor` of dimension [batch_size] whose type is in `int32`,
		    `int64`.
		  k: The number of top elements to look at for computing recall.
		  weights: `Tensor` whose rank is either 0, or the same rank as `labels`, and
		    must be broadcastable to `labels` (i.e., all dimensions must be either
		    `1`, or the same as the corresponding `labels` dimension).
		  metrics_collections: An optional list of collections that `recall_at_k`
		    should be added to.
		  updates_collections: An optional list of collections `update_op` should be
		    added to.
		  name: An optional variable_scope name.
		
		Returns:
		  recall_at_k: A `Tensor` representing the recall@k, the fraction of labels
		    which fall into the top `k` predictions.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `recall_at_k`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
	**/
	static public function streaming_recall_at_k(predictions:Dynamic, labels:Dynamic, k:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes various recall values for different `thresholds` on `predictions`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.metrics.recall_at_thresholds. Note that the order of the labels and predictions arguments has been switched.
		
		The `streaming_recall_at_thresholds` function creates four local variables,
		`true_positives`, `true_negatives`, `false_positives` and `false_negatives`
		for various values of thresholds. `recall[i]` is defined as the total weight
		of values in `predictions` above `thresholds[i]` whose corresponding entry in
		`labels` is `True`, divided by the total weight of `True` values in `labels`
		(`true_positives[i] / (true_positives[i] + false_negatives[i])`).
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the `recall`.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  labels: A `bool` `Tensor` whose shape matches `predictions`.
		  thresholds: A python list or tuple of float thresholds in `[0, 1]`.
		  weights: `Tensor` whose rank is either 0, or the same rank as `labels`, and
		    must be broadcastable to `labels` (i.e., all dimensions must be either
		    `1`, or the same as the corresponding `labels` dimension).
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
	static public function streaming_recall_at_thresholds(predictions:Dynamic, labels:Dynamic, thresholds:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the root mean squared error between the labels and predictions. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.metrics.root_mean_squared_error. Note that the order of the labels and predictions arguments has been switched.
		
		The `streaming_root_mean_squared_error` function creates two local variables,
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
		  predictions: A `Tensor` of arbitrary shape.
		  labels: A `Tensor` of the same shape as `predictions`.
		  weights: Optional `Tensor` indicating the frequency with which an example is
		    sampled. Rank must be 0, or the same rank as `labels`, and must be
		    broadcastable to `labels` (i.e., all dimensions must be either `1`, or
		    the same as the corresponding `labels` dimension).
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
	static public function streaming_root_mean_squared_error(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sensitivity at a given specificity.
		
		The `streaming_sensitivity_at_specificity` function creates four local
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
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  labels: A `bool` `Tensor` whose shape matches `predictions`.
		  specificity: A scalar value in range `[0, 1]`.
		  weights: `Tensor` whose rank is either 0, or the same rank as `labels`, and
		    must be broadcastable to `labels` (i.e., all dimensions must be either
		    `1`, or the same as the corresponding `labels` dimension).
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
	static public function streaming_sensitivity_at_specificity(predictions:Dynamic, labels:Dynamic, specificity:Dynamic, ?weights:Dynamic, ?num_thresholds:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes average precision@k of predictions with respect to sparse labels.
		
		See `sparse_average_precision_at_k` for details on formula. `weights` are
		applied to the result of `sparse_average_precision_at_k`
		
		`streaming_sparse_average_precision_at_k` creates two local variables,
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
		  predictions: Float `Tensor` with shape [D1, ... DN, num_classes] where
		    N >= 1. Commonly, N=1 and `predictions` has shape
		    [batch size, num_classes]. The final dimension contains the logit values
		    for each class. [D1, ... DN] must match `labels`.
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels], where N >= 1 and num_labels is the number of
		    target classes for the associated prediction. Commonly, N=1 and `labels`
		    has shape [batch_size, num_labels]. [D1, ... DN] must match
		    `predictions_`. Values should be in range [0, num_classes), where
		    num_classes is the last dimension of `predictions`. Values outside this
		    range are ignored.
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
	**/
	static public function streaming_sparse_average_precision_at_k(predictions:Dynamic, labels:Dynamic, k:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes average precision@k of predictions with respect to sparse labels.
		
		`streaming_sparse_average_precision_at_top_k` creates two local variables,
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
		  top_k_predictions: Integer `Tensor` with shape [D1, ... DN, k] where N >= 1.
		    Commonly, N=1 and `predictions_idx` has shape [batch size, k]. The final
		    dimension must be set and contains the top `k` predicted class indices.
		    [D1, ... DN] must match `labels`. Values should be in range
		    [0, num_classes).
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels] or [D1, ... DN], where the latter implies
		    num_labels=1. N >= 1 and num_labels is the number of target classes for
		    the associated prediction. Commonly, N=1 and `labels` has shape
		    [batch_size, num_labels]. [D1, ... DN] must match `top_k_predictions`.
		    Values should be in range [0, num_classes).
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
		  ValueError: if the last dimension of top_k_predictions is not set.
	**/
	static public function streaming_sparse_average_precision_at_top_k(top_k_predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes precision@k of the predictions with respect to sparse labels.
		
		If `class_id` is not specified, we calculate precision as the ratio of true
		    positives (i.e., correct predictions, items in the top `k` highest
		    `predictions` that are found in the corresponding row in `labels`) to
		    positives (all top `k` `predictions`).
		If `class_id` is specified, we calculate precision by considering only the
		    rows in the batch for which `class_id` is in the top `k` highest
		    `predictions`, and computing the fraction of them for which `class_id` is
		    in the corresponding row in `labels`.
		
		We expect precision to decrease as `k` increases.
		
		`streaming_sparse_precision_at_k` creates two local variables,
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
		  predictions: Float `Tensor` with shape [D1, ... DN, num_classes] where
		    N >= 1. Commonly, N=1 and predictions has shape [batch size, num_classes].
		    The final dimension contains the logit values for each class. [D1, ... DN]
		    must match `labels`.
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels], where N >= 1 and num_labels is the number of
		    target classes for the associated prediction. Commonly, N=1 and `labels`
		    has shape [batch_size, num_labels]. [D1, ... DN] must match
		    `predictions`. Values should be in range [0, num_classes), where
		    num_classes is the last dimension of `predictions`. Values outside this
		    range are ignored.
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
	static public function streaming_sparse_precision_at_k(predictions:Dynamic, labels:Dynamic, k:Dynamic, ?class_id:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes precision@k of top-k predictions with respect to sparse labels.
		
		If `class_id` is not specified, we calculate precision as the ratio of
		    true positives (i.e., correct predictions, items in `top_k_predictions`
		    that are found in the corresponding row in `labels`) to positives (all
		    `top_k_predictions`).
		If `class_id` is specified, we calculate precision by considering only the
		    rows in the batch for which `class_id` is in the top `k` highest
		    `predictions`, and computing the fraction of them for which `class_id` is
		    in the corresponding row in `labels`.
		
		We expect precision to decrease as `k` increases.
		
		`streaming_sparse_precision_at_top_k` creates two local variables,
		`true_positive_at_k` and `false_positive_at_k`, that are used to compute
		the precision@k frequency. This frequency is ultimately returned as
		`precision_at_k`: an idempotent operation that simply divides
		`true_positive_at_k` by total (`true_positive_at_k` + `false_positive_at_k`).
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the
		`precision_at_k`. Internally, set operations applied to `top_k_predictions`
		and `labels` calculate the true positives and false positives weighted by
		`weights`. Then `update_op` increments `true_positive_at_k` and
		`false_positive_at_k` using these values.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  top_k_predictions: Integer `Tensor` with shape [D1, ... DN, k] where
		    N >= 1. Commonly, N=1 and top_k_predictions has shape [batch size, k].
		    The final dimension contains the indices of top-k labels. [D1, ... DN]
		    must match `labels`.
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels], where N >= 1 and num_labels is the number of
		    target classes for the associated prediction. Commonly, N=1 and `labels`
		    has shape [batch_size, num_labels]. [D1, ... DN] must match
		    `top_k_predictions`. Values should be in range [0, num_classes), where
		    num_classes is the last dimension of `predictions`. Values outside this
		    range are ignored.
		  class_id: Integer class ID for which we want binary metrics. This should be
		    in range [0, num_classes), where num_classes is the last dimension of
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
		  ValueError: If `top_k_predictions` has rank < 2.
	**/
	static public function streaming_sparse_precision_at_top_k(top_k_predictions:Dynamic, labels:Dynamic, ?class_id:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes recall@k of the predictions with respect to sparse labels.
		
		If `class_id` is not specified, we'll calculate recall as the ratio of true
		    positives (i.e., correct predictions, items in the top `k` highest
		    `predictions` that are found in the corresponding row in `labels`) to
		    actual positives (the full `labels` row).
		If `class_id` is specified, we calculate recall by considering only the rows
		    in the batch for which `class_id` is in `labels`, and computing the
		    fraction of them for which `class_id` is in the corresponding row in
		    `labels`.
		
		`streaming_sparse_recall_at_k` creates two local variables,
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
		  predictions: Float `Tensor` with shape [D1, ... DN, num_classes] where
		    N >= 1. Commonly, N=1 and predictions has shape [batch size, num_classes].
		    The final dimension contains the logit values for each class. [D1, ... DN]
		    must match `labels`.
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels], where N >= 1 and num_labels is the number of
		    target classes for the associated prediction. Commonly, N=1 and `labels`
		    has shape [batch_size, num_labels]. [D1, ... DN] must match `predictions`.
		    Values should be in range [0, num_classes), where num_classes is the last
		    dimension of `predictions`. Values outside this range always count
		    towards `false_negative_at_<k>`.
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
	static public function streaming_sparse_recall_at_k(predictions:Dynamic, labels:Dynamic, k:Dynamic, ?class_id:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the specificity at a given sensitivity.
		
		The `streaming_specificity_at_sensitivity` function creates four local
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
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  labels: A `bool` `Tensor` whose shape matches `predictions`.
		  sensitivity: A scalar value in range `[0, 1]`.
		  weights: `Tensor` whose rank is either 0, or the same rank as `labels`, and
		    must be broadcastable to `labels` (i.e., all dimensions must be either
		    `1`, or the same as the corresponding `labels` dimension).
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
	static public function streaming_specificity_at_sensitivity(predictions:Dynamic, labels:Dynamic, sensitivity:Dynamic, ?weights:Dynamic, ?num_thresholds:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sum the weights of true_negatives. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.metrics.true_negatives. Note that the order of the labels and predictions arguments has been switched.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  predictions: The predicted values, a `Tensor` of arbitrary dimensions. Will
		    be cast to `bool`.
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions
		    must be either `1`, or the same as the corresponding `labels`
		    dimension).
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
	static public function streaming_true_negatives(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	static public function streaming_true_negatives_at_thresholds(predictions:Dynamic, labels:Dynamic, thresholds:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Sum the weights of true_positives. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.metrics.true_positives. Note that the order of the labels and predictions arguments has been switched.
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  predictions: The predicted values, a `Tensor` of arbitrary dimensions. Will
		    be cast to `bool`.
		  labels: The ground truth values, a `Tensor` whose dimensions must match
		    `predictions`. Will be cast to `bool`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions
		    must be either `1`, or the same as the corresponding `labels`
		    dimension).
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
	static public function streaming_true_positives(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	static public function streaming_true_positives_at_thresholds(predictions:Dynamic, labels:Dynamic, thresholds:Dynamic, ?weights:Dynamic):Dynamic;
}