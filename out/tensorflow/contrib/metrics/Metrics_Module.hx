/* This file is generated, do not edit! */
package tensorflow.contrib.metrics;
@:pythonImport("tensorflow.contrib.metrics") extern class Metrics_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Computes the percentage of times that predictions matches labels.
		
		Args:
		  predictions: the predicted values, a `Tensor` whose dtype and shape
		               matches 'labels'.
		  labels: the ground truth values, a `Tensor` of any shape and
		          bool, integer, or string dtype.
		  weights: None or `Tensor` of float values to reweight the accuracy.
		
		Returns:
		  Accuracy `Tensor`.
		
		Raises:
		  ValueError: if dtypes don't match or
		              if dtype is not bool, integer, or string.
	**/
	static public function accuracy(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Aggregates the metric names to tuple dictionary.
		
		This function is useful for pairing metric names with their associated value
		and update ops when the list of metrics is long. For example:
		
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
		  a list of value tensors and a list of update ops.
		
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
		Computes the confusion matrix from predictions and labels.
		
		Calculate the Confusion Matrix for a pair of prediction and
		label 1-D int arrays.
		
		Considering a prediction array such as: `[1, 2, 3]`
		And a label array such as: `[2, 2, 3]`
		
		The confusion matrix returned would be the following one:
		    [[0, 0, 0]
		     [0, 1, 0]
		     [0, 1, 0]
		     [0, 0, 1]]
		
		Where the matrix rows represent the prediction labels and the columns
		represents the real labels. The confusion matrix is always a 2-D array
		of shape [n, n], where n is the number of valid labels for a given
		classification task. Both prediction and labels must be 1-D arrays of
		the same shape in order for this function to work.
		
		Args:
		  predictions: A 1-D array represeting the predictions for a given
		               classification.
		  labels: A 1-D represeting the real labels for the classification task.
		  num_classes: The possible number of labels the classification task can
		               have. If this value is not provided, it will be calculated
		               using both predictions and labels array.
		  dtype: Data type of the confusion matrix.
		  name: Scope name.
		
		Returns:
		  A l X l matrix represeting the confusion matrix, where l in the number of
		  possible labels in the classification task.
		
		Raises:
		  ValueError: If both predictions and labels are not 1-D vectors and do not
		              have the same size.
	**/
	static public function confusion_matrix(predictions:Dynamic, labels:Dynamic, ?num_classes:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Generate `__all__` from the docstring of one or more modules.
		
		Usage: `make_all(__name__)` or
		`make_all(__name__, [sys.modules(__name__), other_module])`. The doc string
		modules must each a docstring, and `__all__` will contain all symbols with
		`@@` references, where that symbol currently exists in the module named
		`module_name`.
		
		Args:
		  module_name: The name of the module (usually `__name__`).
		  doc_string_modules: a list of modules from which to take docstring.
		  If None, then a list containing only the module named `module_name` is used.
		
		Returns:
		  A list suitable for use as `__all__`.
	**/
	static public function make_all(module_name:Dynamic, ?doc_string_modules:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute set difference of elements in last dimension of `a` and `b`.
		
		All but the last dimension of `a` and `b` must match.
		
		Args:
		  a: `Tensor` or `SparseTensor` of the same type as `b`. If sparse, indices
		      must be sorted in row-major order.
		  b: `Tensor` or `SparseTensor` of the same type as `a`. Must be
		      `SparseTensor` if `a` is `SparseTensor`. If sparse, indices must be
		      sorted in row-major order.
		  aminusb: Whether to subtract `b` from `a`, vs vice versa.
		  validate_indices: Whether to validate the order and range of sparse indices
		     in `a` and `b`.
		
		Returns:
		  A `SparseTensor` with the same rank as `a` and `b`, and all but the last
		  dimension the same. Elements along the last dimension contain the
		  differences.
	**/
	static public function set_difference(a:Dynamic, b:Dynamic, ?aminusb:Dynamic, ?validate_indices:Dynamic):Dynamic;
	/**
		Compute set intersection of elements in last dimension of `a` and `b`.
		
		All but the last dimension of `a` and `b` must match.
		
		Args:
		  a: `Tensor` or `SparseTensor` of the same type as `b`. If sparse, indices
		      must be sorted in row-major order.
		  b: `Tensor` or `SparseTensor` of the same type as `a`. Must be
		      `SparseTensor` if `a` is `SparseTensor`. If sparse, indices must be
		      sorted in row-major order.
		  validate_indices: Whether to validate the order and range of sparse indices
		     in `a` and `b`.
		
		Returns:
		  A `SparseTensor` with the same rank as `a` and `b`, and all but the last
		  dimension the same. Elements along the last dimension contain the
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
		  For `a` ranked `n`, this is a `Tensor` with rank `n-1`, and the same 1st
		  `n-1` dimensions as `a`. Each value is the number of unique elements in
		  the corresponding `[0...n-1]` dimension of `a`.
		
		Raises:
		  TypeError: If `a` is an invalid types.
	**/
	static public function set_size(a:Dynamic, ?validate_indices:Dynamic):Dynamic;
	/**
		Compute set union of elements in last dimension of `a` and `b`.
		
		All but the last dimension of `a` and `b` must match.
		
		Args:
		  a: `Tensor` or `SparseTensor` of the same type as `b`. If sparse, indices
		      must be sorted in row-major order.
		  b: `Tensor` or `SparseTensor` of the same type as `a`. Must be
		      `SparseTensor` if `a` is `SparseTensor`. If sparse, indices must be
		      sorted in row-major order.
		  validate_indices: Whether to validate the order and range of sparse indices
		     in `a` and `b`.
		
		Returns:
		  A `SparseTensor` with the same rank as `a` and `b`, and all but the last
		  dimension the same. Elements along the last dimension contain the
		  unions.
	**/
	static public function set_union(a:Dynamic, b:Dynamic, ?validate_indices:Dynamic):Dynamic;
	/**
		Calculates how often `predictions` matches `labels`.
		
		The `streaming_accuracy` function creates two local variables, `total` and
		`count` that are used to compute the frequency with which `predictions`
		matches `labels`. This frequency is ultimately returned as `accuracy`: an
		idempotent operation that simply divides `total` by `count`.
		To facilitate the estimation of the accuracy over a stream of data, the
		function utilizes two operations. First, an `is_correct` operation that
		computes a tensor whose shape matches `predictions` and whose elements are
		set to 1.0 when the corresponding values of `predictions` and `labels match
		and 0.0 otherwise. Second, an `update_op` operation whose behavior is
		dependent on the value of `weights`. If `weights` is None, then `update_op`
		increments `total` with the number of elements of `predictions` that match
		`labels` and increments `count` with the number of elements in `values`. If
		`weights` is not `None`, then `update_op` increments `total` with the reduced
		sum of the product of `weights` and `is_correct` and increments `count` with
		the reduced sum of `weights`. In addition to performing the updates,
		`update_op` also returns the `accuracy` value.
		
		Args:
		  predictions: The predicted values, a `Tensor` of any shape.
		  labels: The ground truth values, a `Tensor` whose shape matches
		    `predictions`.
		  weights: An optional set of weights whose shape matches `predictions`
		    which, when not `None`, produces a weighted mean accuracy.
		  metrics_collections: An optional list of collections that `accuracy` should
		    be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_op_scope name.
		
		Returns:
		  accuracy: A tensor representing the accuracy, the value of `total` divided
		    by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `accuracy`.
		
		Raises:
		  ValueError: If the dimensions of `predictions` and `labels` don't match or
		    if `weight` is not `None` and its shape doesn't match `predictions` or
		    if either `metrics_collections` or `updates_collections` are not
		    a list or tuple.
	**/
	static public function streaming_accuracy(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the approximate AUC via a Riemann sum.
		
		The `streaming_auc` function creates four local variables, `true_positives`,
		`true_negatives`, `false_positives` and `false_negatives` that are used to
		compute the AUC. To discretize the AUC curve, a linearly spaced set of
		thresholds is used to compute pairs of recall and precision values. The area
		under the ROC-curve is therefore computed using the height of the recall
		values by the false positive rate, while the area under the PR-curve is the
		computed using the height of the precision values by the recall.
		
		This value is ultimately returned as `auc`, an idempotent
		operation the computes the area under a discretized curve of precision versus
		recall values (computed using the afformentioned variables). The
		`num_thresholds` variable controls the degree of discretization with larger
		numbers of thresholds more closely approximating the true AUC.
		
		To faciliate the estimation of the AUC over a stream of data, the function
		creates an `update_op` operation whose behavior is dependent on the value of
		`ignore_mask`. If `ignore_mask` is None, then `update_op` increments the
		`true_positives`, `true_negatives`, `false_positives` and `false_negatives`
		counts with the number of each found in the current `predictions` and `labels`
		`Tensors`. If `ignore_mask` is not `None`, then the increment is performed
		using only the elements of `predictions` and `labels` whose corresponding
		value in `ignore_mask` is `False`. In addition to performing the updates,
		`update_op` also returns the `auc`.
		
		Args:
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  labels: A binary `Tensor` whose shape matches `predictions`.
		  ignore_mask: An optional, binary tensor whose size matches `predictions`.
		  num_thresholds: The number of thresholds to use when discretizing the roc
		    curve.
		  metrics_collections: An optional list of collections that `auc` should be
		    added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  curve: Specifies the name of the curve to be computed, 'ROC' [default] or
		  'PR' for the Precision-Recall-curve.
		  name: An optional variable_op_scope name.
		
		Returns:
		  auc: A scalar tensor representing the current area-under-curve.
		  update_op: An operation that increments the `true_positives`,
		    `true_negatives`, `false_positives` and `false_negatives` variables
		    appropriately and whose value matches `auc`.
		
		Raises:
		  ValueError: If the shape of `predictions` and `labels` do not match or if
		    `ignore_mask` is not `None` and its shape doesn't match `predictions` or
		    if either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
	**/
	static public function streaming_auc(predictions:Dynamic, labels:Dynamic, ?ignore_mask:Dynamic, ?num_thresholds:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?curve:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the (weighted) mean of the given values.
		
		The `streaming_mean` function creates two local variables, `total` and `count`
		that are used to compute the average of `values`. This average is ultimately
		returned as `mean` which is an idempotent operation that simply divides
		`total` by `count`. To facilitate the estimation of a mean over a stream
		of data, the function creates an `update_op` operation whose behavior is
		dependent on the value of `weights`. If `weights` is None, then `update_op`
		increments `total` with the reduced sum of `values` and increments `count`
		with the number of elements in `values`. If `weights` is not `None`, then
		`update_op` increments `total` with the reduced sum of the product of `values`
		and `weights` and increments `count` with the reduced sum of weights.
		In addition to performing the updates, `update_op` also returns the
		`mean`.
		
		Args:
		  values: A `Tensor` of arbitrary dimensions.
		  weights: An optional set of weights of the same shape as `values`. If
		    `weights` is not None, the function computes a weighted mean.
		  metrics_collections: An optional list of collections that `mean`
		    should be added to.
		  updates_collections: An optional list of collections that `update_op`
		    should be added to.
		  name: An optional variable_op_scope name.
		
		Returns:
		  mean: A tensor representing the current mean, the value of `total` divided
		    by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `mean_value`.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match `values`
		    or if either `metrics_collections` or `updates_collections` are not a list
		    or tuple.
	**/
	static public function streaming_mean(values:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean absolute error between the labels and predictions.
		
		The `streaming_mean_absolute_error` function creates two local variables,
		`total` and `count` that are used to compute the mean absolute error. This
		average is ultimately returned as `mean_absolute_error`: an idempotent
		operation that simply divides `total` by `count`. To facilitate the estimation
		of the mean absolute error over a stream of data, the function utilizes two
		operations. First, an `absolute_errors` operation computes the absolute value
		of the differences between `predictions` and `labels`. Second, an `update_op`
		operation whose behavior is dependent on the value of `weights`. If `weights`
		is None, then `update_op` increments `total` with the reduced sum of
		`absolute_errors` and increments `count` with the number of elements in
		`absolute_errors`. If `weights` is not `None`, then `update_op` increments
		`total` with the reduced sum of the product of `weights` and `absolute_errors`
		and increments `count` with the reduced sum of `weights`. In addition to
		performing the updates, `update_op` also returns the `mean_absolute_error`
		value.
		
		Args:
		  predictions: A `Tensor` of arbitrary shape.
		  labels: A `Tensor` of the same shape as `predictions`.
		  weights: An optional set of weights of the same shape as `predictions`. If
		    `weights` is not None, the function computes a weighted mean.
		  metrics_collections: An optional list of collections that
		    `mean_absolute_error` should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_op_scope name.
		
		Returns:
		  mean_absolute_error: A tensor representing the current mean, the value of
		    `total` divided by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `mean_absolute_error`.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match
		    `predictions` or if either `metrics_collections` or `updates_collections`
		    are not a list or tuple.
	**/
	static public function streaming_mean_absolute_error(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the cosine distance between the labels and predictions.
		
		The `streaming_mean_cosine_distance` function creates two local variables,
		`total` and `count` that are used to compute the average cosine distance
		between `predictions` and `labels`. This average is ultimately returned as
		`mean_distance` which is an idempotent operation that simply divides `total`
		by `count. To facilitate the estimation of a mean over multiple batches
		of data, the function creates an `update_op` operation whose behavior is
		dependent on the value of `weights`. If `weights` is None, then `update_op`
		increments `total` with the reduced sum of `values and increments `count` with
		the number of elements in `values`. If `weights` is not `None`, then
		`update_op` increments `total` with the reduced sum of the product of `values`
		and `weights` and increments `count` with the reduced sum of weights.
		
		Args:
		  predictions: A tensor of the same size as labels.
		  labels: A tensor of arbitrary size.
		  dim: The dimension along which the cosine distance is computed.
		  weights: An optional set of weights which indicates which predictions to
		    ignore during metric computation. Its size matches that of labels except
		    for the value of 'dim' which should be 1. For example if labels has
		    dimensions [32, 100, 200, 3], then `weights` should have dimensions
		    [32, 100, 200, 1].
		  metrics_collections: An optional list of collections that the metric
		    value variable should be added to.
		  updates_collections: An optional list of collections that the metric update
		    ops should be added to.
		  name: An optional variable_op_scope name.
		
		Returns:
		  mean_distance: A tensor representing the current mean, the value of `total`
		    divided by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately.
		
		Raises:
		  ValueError: If labels and predictions are of different sizes or if the
		    ignore_mask is of the wrong size or if either `metrics_collections` or
		    `updates_collections` are not a list or tuple.
	**/
	static public function streaming_mean_cosine_distance(predictions:Dynamic, labels:Dynamic, dim:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculate per-step mean Intersection-Over-Union (mIOU).
		
		Mean Intersection-Over-Union is a common evaluation metric for
		semantic image segmentation, which first computes the IOU for each
		semantic class and then computes the average over classes.
		IOU is defined as follows:
		  IOU = true_positive / (true_positive + false_positive + false_negative).
		The predictions are accumulated in a confusion matrix, and mIOU is then
		calculated from it.
		
		Args:
		  predictions: A tensor of prediction results for semantic labels, whose
		    shape is [batch size] and type `int32` or `int64`. The tensor will be
		    flattened, if its rank > 1.
		  labels: A tensor of ground truth labels with shape [batch size] and of
		    type `int32` or `int64`. The tensor will be flattened, if its rank > 1.
		  num_classes: The possible number of labels the prediction task can
		    have. This value must be provided, since a confusion matrix of
		    dimension = [num_classes, num_classes] will be allocated.
		  ignore_mask: An optional, boolean tensor whose size matches `labels`. If an
		    element of `ignore_mask` is True, the corresponding prediction and label
		    pair is NOT used to compute the metrics. Otherwise, the pair is included.
		  metrics_collections: An optional list of collections that `mean_iou`
		    should be added to.
		  updates_collections: An optional list of collections `update_op` should be
		    added to.
		  name: An optional variable_op_scope name.
		
		Returns:
		  mean_iou: A tensor representing the mean intersection-over-union.
		  update_op: An operation that increments the confusion matrix.
		
		Raises:
		  ValueError: If the dimensions of `predictions` and `labels` don't match or
		    if `ignore_mask` is not `None` and its shape doesn't match `labels`
		    or if either `metrics_collections` or `updates_collections` are not a list
		    or tuple.
	**/
	static public function streaming_mean_iou(predictions:Dynamic, labels:Dynamic, num_classes:Dynamic, ?ignore_mask:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean relative error by normalizing with the given values.
		
		The `streaming_mean_relative_error` function creates two local variables,
		`total` and `count` that are used to compute the mean relative absolute error.
		This average is ultimately returned as `mean_relative_error`: an idempotent
		operation that simply divides `total` by `count`. To facilitate the estimation
		of the mean relative error over a stream of data, the function utilizes two
		operations. First, a `relative_errors` operation divides the absolute value
		of the differences between `predictions` and `labels` by the `normalizer`.
		Second, an `update_op` operation whose behavior is dependent on the value of
		`weights`. If `weights` is None, then `update_op` increments `total` with the
		reduced sum of `relative_errors` and increments `count` with the number of
		elements in `relative_errors`. If `weights` is not `None`, then `update_op`
		increments `total` with the reduced sum of the product of `weights` and
		`relative_errors` and increments `count` with the reduced sum of `weights`. In
		addition to performing the updates, `update_op` also returns the
		`mean_relative_error` value.
		
		Args:
		  predictions: A `Tensor` of arbitrary shape.
		  labels: A `Tensor` of the same shape as `predictions`.
		  normalizer: A `Tensor` of the same shape as `predictions`.
		  weights: An optional set of weights of the same shape as `predictions`. If
		    `weights` is not None, the function computes a weighted mean.
		  metrics_collections: An optional list of collections that
		    `mean_relative_error` should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_op_scope name.
		
		Returns:
		  mean_relative_error: A tensor representing the current mean, the value of
		    `total` divided by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `mean_relative_error`.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match
		    `predictions` or if either `metrics_collections` or `updates_collections`
		    are not a list or tuple.
	**/
	static public function streaming_mean_relative_error(predictions:Dynamic, labels:Dynamic, normalizer:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean squared error between the labels and predictions.
		
		The `streaming_mean_squared_error` function creates two local variables,
		`total` and `count` that are used to compute the mean squared error.
		This average is ultimately returned as `mean_squared_error`: an idempotent
		operation that simply divides `total` by `count`. To facilitate the estimation
		of the mean squared error over a stream of data, the function utilizes two
		operations. First, a `squared_error` operation computes the element-wise
		square of the difference between `predictions` and `labels`. Second, an
		`update_op` operation whose behavior is dependent on the value of `weights`.
		If `weights` is None, then `update_op` increments `total` with the
		reduced sum of `squared_error` and increments `count` with the number of
		elements in `squared_error`. If `weights` is not `None`, then `update_op`
		increments `total` with the reduced sum of the product of `weights` and
		`squared_error` and increments `count` with the reduced sum of `weights`. In
		addition to performing the updates, `update_op` also returns the
		`mean_squared_error` value.
		
		Args:
		  predictions: A `Tensor` of arbitrary shape.
		  labels: A `Tensor` of the same shape as `predictions`.
		  weights: An optional set of weights of the same shape as `predictions`. If
		    `weights` is not None, the function computes a weighted mean.
		  metrics_collections: An optional list of collections that
		    `mean_squared_error` should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_op_scope name.
		
		Returns:
		  mean_squared_error: A tensor representing the current mean, the value of
		    `total` divided by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `mean_squared_error`.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match
		    `predictions` or if either `metrics_collections` or `updates_collections`
		    are not a list or tuple.
	**/
	static public function streaming_mean_squared_error(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the element-wise (weighted) mean of the given tensors.
		
		In contrast to the `streaming_mean` function which returns a scalar with the
		mean,  this function returns an average tensor with the same shape as the
		input tensors.
		
		The `streaming_mean_tensor` function creates two local variables,
		`total_tensor` and `count_tensor` that are used to compute the average of
		`values`. This average is ultimately returned as `mean` which is an idempotent
		operation that simply divides `total` by `count`. To facilitate the estimation
		of a mean over a stream of data, the function creates an `update_op` operation
		whose behavior is dependent on the value of `weights`. If `weights` is None,
		then `update_op` increments `total` with the reduced sum of `values` and
		increments `count` with the number of elements in `values`. If `weights` is
		not `None`, then `update_op` increments `total` with the reduced sum of the
		product of `values` and `weights` and increments `count` with the reduced sum
		of weights. In addition to performing the updates, `update_op` also returns
		the `mean`.
		
		Args:
		  values: A `Tensor` of arbitrary dimensions.
		  weights: An optional set of weights of the same shape as `values`. If
		    `weights` is not None, the function computes a weighted mean.
		  metrics_collections: An optional list of collections that `mean`
		    should be added to.
		  updates_collections: An optional list of collections that `update_op`
		    should be added to.
		  name: An optional variable_op_scope name.
		
		Returns:
		  mean: A float tensor representing the current mean, the value of `total`
		    divided by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `mean_value`.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match `values`
		    or if either `metrics_collections` or `updates_collections` are not a list
		    or tuple.
	**/
	static public function streaming_mean_tensor(values:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the percentage of values less than the given threshold.
		
		The `streaming_percentage_less` function creates two local variables,
		`total` and `count` that are used to compute the percentage of `values` that
		fall below `threshold`. This rate is ultimately returned as `percentage`
		which is an idempotent operation that simply divides `total` by `count.
		To facilitate the estimation of the percentage of values that fall under
		`threshold` over multiple batches of data, the function creates an
		`update_op` operation whose behavior is dependent on the value of
		`ignore_mask`. If `ignore_mask` is None, then `update_op`
		increments `total` with the number of elements of `values` that are less
		than `threshold` and `count` with the number of elements in `values`. If
		`ignore_mask` is not `None`, then `update_op` increments `total` with the
		number of elements of `values` that are less than `threshold` and whose
		corresponding entries in `ignore_mask` are False, and `count` is incremented
		with the number of elements of `ignore_mask` that are False.
		
		Args:
		  values: A numeric `Tensor` of arbitrary size.
		  threshold: A scalar threshold.
		  ignore_mask: An optional mask of the same shape as 'values' which indicates
		    which elements to ignore during metric computation.
		  metrics_collections: An optional list of collections that the metric
		    value variable should be added to.
		  updates_collections: An optional list of collections that the metric update
		    ops should be added to.
		  name: An optional variable_op_scope name.
		
		Returns:
		  percentage: A tensor representing the current mean, the value of `total`
		    divided by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately.
		
		Raises:
		  ValueError: If `ignore_mask` is not None and its shape doesn't match `values
		    or if either `metrics_collections` or `updates_collections` are supplied
		    but are not a list or tuple.
	**/
	static public function streaming_percentage_less(values:Dynamic, threshold:Dynamic, ?ignore_mask:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the precision of the predictions with respect to the labels.
		
		The `streaming_precision` function creates two local variables,
		`true_positives` and `false_positives`, that are used to compute the
		precision. This value is ultimately returned as `precision`, an idempotent
		operation that simply divides `true_positives` by the sum of `true_positives`
		and `false_positives`. To facilitate the calculation of the precision over a
		stream of data, the function creates an `update_op` operation whose behavior
		is dependent on the value of `ignore_mask`. If `ignore_mask` is None, then
		`update_op` increments `true_positives` with the number of elements of
		`predictions` and `labels` that are both `True` and increments
		`false_positives` with the number of elements of `predictions` that are `True`
		whose corresponding `labels` element is `False`. If `ignore_mask` is not
		`None`, then the increments for `true_positives` and `false_positives` are
		only computed using elements of `predictions` and `labels` whose corresponding
		values in `ignore_mask` are `False`. In addition to performing the updates,
		`update_op` also returns the value of `precision`.
		
		Args:
		  predictions: The predicted values, a binary `Tensor` of arbitrary shape.
		  labels: The ground truth values, a binary `Tensor` whose dimensions must
		    match `predictions`.
		  ignore_mask: An optional, binary tensor whose size matches `predictions`.
		  metrics_collections: An optional list of collections that `precision` should
		    be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_op_scope name.
		
		Returns:
		  precision: Scalar float `Tensor` with the value of `true_positives`
		    divided by the sum of `true_positives` and `false_positives`.
		  update_op: `Operation` that increments `true_positives` and
		    `false_positives` variables appropriately and whose value matches
		    `precision`.
		
		Raises:
		  ValueError: If the dimensions of `predictions` and `labels` don't match or
		    if `ignore_mask` is not `None` and its shape doesn't match `predictions`
		    or if either `metrics_collections` or `updates_collections` are not a list
		    or tuple.
	**/
	static public function streaming_precision(predictions:Dynamic, labels:Dynamic, ?ignore_mask:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes precision values for different `thresholds` on `predictions`.
		
		The `streaming_precision_at_thresholds` function creates four local variables,
		`true_positives`, `true_negatives`, `false_positives` and `false_negatives`
		for various values of thresholds.
		`precision[i]` is defined as the number of values in `predictions` above
		`thresholds[i]` whose corresponding entry in `labels` is `True`
		(`true_positives[i]`) divided by the number of values in `predictions`
		above `thresholds[i]` (`true_positives[i] + false_positives[i]`).
		
		If `ignore_mask` is not None then only values whose corresponding value in
		`ignore_mask` is `False` are considered.
		
		`precision` is returned along with an `update_op` whose value equals that of
		`precision`.
		
		Args:
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  labels: A binary `Tensor` whose shape matches `predictions`.
		  thresholds: A python list or tuple of float thresholds in `[0, 1]`.
		  ignore_mask: An optional, binary tensor whose size matches `predictions`.
		  metrics_collections: An optional list of collections that `auc` should be
		    added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_op_scope name.
		
		Returns:
		  precision: A float tensor of shape [len(thresholds)].
		  update_op: An operation that increments the `true_positives`,
		    `true_negatives`, `false_positives` and `false_negatives` variables that
		    are used in the computation of `precision`.
		
		Raises:
		  ValueError: If the shape of `predictions` and `labels` do not match or if
		    `ignore_mask` is not `None` and its shape doesn't match `predictions`
		    or if either `metrics_collections` or `updates_collections` are not a list
		    or tuple.
	**/
	static public function streaming_precision_at_thresholds(predictions:Dynamic, labels:Dynamic, thresholds:Dynamic, ?ignore_mask:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the recall of the predictions with respect to the labels.
		
		The `streaming_recall` function creates two local variables,
		`true_positives` and `false_negatives`, that are used to compute the
		recall. This value is ultimately returned as `recall`, an idempotent
		operation that simply divides `true_positives` by the sum of `true_positives`
		and `false_negatives`. To facilitate the calculation of the recall over a
		stream of data, the function creates an `update_op` operation whose behavior
		is dependent on the value of `ignore_mask`. If `ignore_mask` is None, then
		`update_op` increments `true_positives` with the number of elements of
		`predictions` and `labels` that are both `True` and increments
		`false_negatives` with the number of elements of `predictions` that are
		`False` whose corresponding `labels` element is `False`. If `ignore_mask` is
		not `None`, then the increments for `true_positives` and `false_negatives` are
		only computed using elements of `predictions` and `labels` whose corresponding
		values in `ignore_mask` are `False`. In addition to performing the updates,
		`update_op` also returns the value of `recall`.
		
		Args:
		  predictions: The predicted values, a binary `Tensor` of arbitrary shape.
		  labels: The ground truth values, a binary `Tensor` whose dimensions must
		    match `predictions`.
		  ignore_mask: An optional, binary tensor whose size matches `predictions`.
		  metrics_collections: An optional list of collections that `recall` should
		    be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_op_scope name.
		
		Returns:
		  recall: Scalar float `Tensor` with the value of `true_positives` divided
		    by the sum of `true_positives` and `false_negatives`.
		  update_op: `Operation` that increments `true_positives` and
		    `false_negatives` variables appropriately and whose value matches
		    `recall`.
		
		Raises:
		  ValueError: If the dimensions of `predictions` and `labels` don't match or
		    if `ignore_mask` is not `None` and its shape doesn't match `predictions`
		    or if either `metrics_collections` or `updates_collections` are not a list
		    or tuple.
	**/
	static public function streaming_recall(predictions:Dynamic, labels:Dynamic, ?ignore_mask:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the recall@k of the predictions with respect to dense labels.
		
		The `streaming_recall_at_k` function creates two local variables, `total` and
		`count`, that are used to compute the recall@k frequency. This frequency is
		ultimately returned as `recall_at_<k>`: an idempotent operation that simply
		divides `total` by `count`. To facilitate the estimation of recall@k over a
		stream of data, the function utilizes two operations. First, an `in_top_k`
		operation computes a tensor with shape [batch_size] whose elements indicate
		whether or not the corresponding label is in the top `k` predictions of the
		`predictions` `Tensor`. Second, an `update_op` operation whose behavior is
		dependent on the value of `ignore_mask`. If `ignore_mask` is None, then
		`update_op` increments `total` with the number of elements of `in_top_k` that
		are set to `True` and increments `count` with the batch size. If `ignore_mask`
		is not `None`, then `update_op` increments `total` with the number of elements
		in `in_top_k` that are `True` whose corresponding element in `ignore_mask` is
		`False`. In addition to performing the updates, `update_op` also returns the
		recall value.
		
		Args:
		  predictions: A floating point tensor of dimension [batch_size, num_classes]
		  labels: A tensor of dimension [batch_size] whose type is in `int32`,
		    `int64`.
		  k: The number of top elements to look at for computing recall.
		  ignore_mask: An optional, binary tensor whose size matches `labels`. If an
		    element of `ignore_mask` is True, the corresponding prediction and label
		    pair is used to compute the metrics. Otherwise, the pair is ignored.
		  metrics_collections: An optional list of collections that `recall_at_k`
		    should be added to.
		  updates_collections: An optional list of collections `update_op` should be
		    added to.
		  name: An optional variable_op_scope name.
		
		Returns:
		  recall_at_k: A tensor representing the recall@k, the fraction of labels
		    which fall into the top `k` predictions.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `recall_at_k`.
		
		Raises:
		  ValueError: If the dimensions of `predictions` and `labels` don't match or
		    if `ignore_mask` is not `None` and its shape doesn't match `predictions`
		    or if either `metrics_collections` or `updates_collections` are not a list
		    or tuple.
	**/
	static public function streaming_recall_at_k(predictions:Dynamic, labels:Dynamic, k:Dynamic, ?ignore_mask:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes various recall values for different `thresholds` on `predictions`.
		
		The `streaming_recall_at_thresholds` function creates four local variables,
		`true_positives`, `true_negatives`, `false_positives` and `false_negatives`
		for various values of thresholds.
		`recall[i]` is defined as the number of values in `predictions` above
		`thresholds[i]` whose corresponding entry in `labels` is `True`
		(`true_positives[i]`) divided by the number of True values in `labels`
		(`true_positives[i] + false_negatives[i]`).
		
		If `ignore_mask` is not None then only values whose corresponding value in
		`ignore_mask` is `False` are considered.
		
		`recall` are returned along with an `update_op` whose value equals that of
		`recall`.
		
		Args:
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  labels: A binary `Tensor` whose shape matches `predictions`.
		  thresholds: A python list or tuple of float thresholds in `[0, 1]`.
		  ignore_mask: An optional, binary tensor whose size matches `predictions`.
		  metrics_collections: An optional list of collections that `auc` should be
		    added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_op_scope name.
		
		Returns:
		  recall: A float tensor of shape [len(thresholds)].
		  update_op: An operation that increments the `true_positives`,
		    `true_negatives`, `false_positives` and `false_negatives` variables that
		    are used in the computation of `recall`.
		
		Raises:
		  ValueError: If the shape of `predictions` and `labels` do not match or if
		    `ignore_mask` is not `None` and its shape doesn't match `predictions`
		    or if either `metrics_collections` or `updates_collections` are not a list
		    or tuple.
	**/
	static public function streaming_recall_at_thresholds(predictions:Dynamic, labels:Dynamic, thresholds:Dynamic, ?ignore_mask:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the root mean squared error between the labels and predictions.
		
		The `streaming_root_mean_squared_error` function creates two local variables,
		`total` and `count` that are used to compute the root mean squared error.
		This average is ultimately returned as `root_mean_squared_error`: an
		idempotent operation that takes the square root of the division of `total`
		by `count`. To facilitate the estimation of the root mean squared error over a
		stream of data, the function utilizes two operations. First, a `squared_error`
		operation computes the element-wise square of the difference between
		`predictions` and `labels`. Second, an `update_op` operation whose behavior is
		dependent on the value of `weights`. If `weights` is None, then `update_op`
		increments `total` with the reduced sum of `squared_error` and increments
		`count` with the number of elements in `squared_error`. If `weights` is not
		`None`, then `update_op` increments `total` with the reduced sum of the
		product of `weights` and `squared_error` and increments `count` with the
		reduced sum of `weights`. In addition to performing the updates, `update_op`
		also returns the `root_mean_squared_error` value.
		
		Args:
		  predictions: A `Tensor` of arbitrary shape.
		  labels: A `Tensor` of the same shape as `predictions`.
		  weights: An optional set of weights of the same shape as `predictions`. If
		    `weights` is not None, the function computes a weighted mean.
		  metrics_collections: An optional list of collections that
		    `root_mean_squared_error` should be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_op_scope name.
		
		Returns:
		  root_mean_squared_error: A tensor representing the current mean, the value
		    of `total` divided by `count`.
		  update_op: An operation that increments the `total` and `count` variables
		    appropriately and whose value matches `root_mean_squared_error`.
		
		Raises:
		  ValueError: If `weights` is not `None` and its shape doesn't match
		    `predictions` or if either `metrics_collections` or `updates_collections`
		    are not a list or tuple.
	**/
	static public function streaming_root_mean_squared_error(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes precision@k of the predictions with respect to sparse labels.
		
		If `class_id` is specified, we calculate precision by considering only the
		    entries in the batch for which `class_id` is in the top-k highest
		    `predictions`, and computing the fraction of them for which `class_id` is
		    indeed a correct label.
		If `class_id` is not specified, we'll calculate precision as how often on
		    average a class among the top-k classes with the highest predicted values
		    of a batch entry is correct and can be found in the label for that entry.
		
		`streaming_sparse_precision_at_k` creates two local variables,
		`true_positive_at_<k>` and `false_positive_at_<k>`, that are used to compute
		the precision@k frequency. This frequency is ultimately returned as
		`precision_at_<k>`: an idempotent operation that simply divides
		`true_positive_at_<k>` by total (`true_positive_at_<k>` +
		`false_positive_at_<k>`). To facilitate the estimation of
		precision@k over a stream of data, the function utilizes three
		steps.
		* A `top_k` operation computes a tensor whose elements indicate the top `k`
		  predictions of the `predictions` `Tensor`.
		* Set operations are applied to `top_k` and `labels` to calculate true
		  positives and false positives.
		* An `update_op` operation increments `true_positive_at_<k>` and
		  `false_positive_at_<k>`. It also returns the precision value.
		
		Args:
		  predictions: Float `Tensor` with shape [D1, ... DN, num_classes] where
		    N >= 1. Commonly, N=1 and predictions has shape [batch size, num_classes].
		    The final dimension contains the logit values for each class. [D1, ... DN]
		    must match `labels`.
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels], where N >= 1 and num_labels is the number of
		    target classes for the associated prediction. Commonly, N=1 and `labels`
		    has shape [batch_size, num_labels]. [D1, ... DN] must match
		    `predictions_idx`. Values should be in range [0, num_classes], where
		    num_classes is the last dimension of `predictions`.
		  k: Integer, k for @k metric.
		  class_id: Integer class ID for which we want binary metrics. This should be
		    in range [0, num_classes], where num_classes is the last dimension of
		    `predictions`.
		  ignore_mask: An optional, binary tensor whose shape is broadcastable to the
		    the first [D1, ... DN] dimensions of `predictions_idx` and `labels`.
		  metrics_collections: An optional list of collections that values should
		    be added to.
		  updates_collections: An optional list of collections that updates should
		    be added to.
		  name: Name of new update operation, and namespace for other dependant ops.
		
		Returns:
		  precision: Scalar `float64` `Tensor` with the value of `true_positives`
		    divided by the sum of `true_positives` and `false_positives`.
		  update_op: `Operation` that increments `true_positives` and
		    `false_positives` variables appropriately, and whose value matches
		    `precision`.
	**/
	static public function streaming_sparse_precision_at_k(predictions:Dynamic, labels:Dynamic, k:Dynamic, ?class_id:Dynamic, ?ignore_mask:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes recall@k of the predictions with respect to sparse labels.
		
		If `class_id` is specified, we calculate recall by considering only the
		    entries in the batch for which `class_id` is in the label, and computing
		    the fraction of them for which `class_id` is in the top-k `predictions`.
		If `class_id` is not specified, we'll calculate recall as how often on
		    average a class among the labels of a batch entry is in the top-k
		    `predictions`.
		
		`streaming_sparse_recall_at_k` creates two local variables,
		`true_positive_at_<k>` and `false_negative_at_<k>`, that are used to compute
		the recall_at_k frequency. This frequency is ultimately returned as
		`recall_at_<k>`: an idempotent operation that simply divides
		`true_positive_at_<k>` by total (`true_positive_at_<k>` + `recall_at_<k>`). To
		facilitate the estimation of recall@k over a stream of data, the function
		utilizes three steps.
		* A `top_k` operation computes a tensor whose elements indicate the top `k`
		  predictions of the `predictions` `Tensor`.
		* Set operations are applied to `top_k` and `labels` to calculate true
		  positives and false negatives.
		* An `update_op` operation increments `true_positive_at_<k>` and
		  `false_negative_at_<k>`. It also returns the recall value.
		
		Args:
		  predictions: Float `Tensor` with shape [D1, ... DN, num_classes] where
		    N >= 1. Commonly, N=1 and predictions has shape [batch size, num_classes].
		    The final dimension contains the logit values for each class. [D1, ... DN]
		    must match `labels`.
		  labels: `int64` `Tensor` or `SparseTensor` with shape
		    [D1, ... DN, num_labels], where N >= 1 and num_labels is the number of
		    target classes for the associated prediction. Commonly, N=1 and `labels`
		    has shape [batch_size, num_labels]. [D1, ... DN] must match `labels`.
		    Values should be in range [0, num_classes], where num_classes is the last
		    dimension of `predictions`.
		  k: Integer, k for @k metric.
		  class_id: Integer class ID for which we want binary metrics. This should be
		    in range [0, num_classes], where num_classes is the last dimension of
		    `predictions`.
		  ignore_mask: An optional, binary tensor whose shape is broadcastable to the
		    the first [D1, ... DN] dimensions of `predictions_idx` and `labels`.
		  metrics_collections: An optional list of collections that values should
		    be added to.
		  updates_collections: An optional list of collections that updates should
		    be added to.
		  name: Name of new update operation, and namespace for other dependant ops.
		
		Returns:
		  recall: Scalar `float64` `Tensor` with the value of `true_positives` divided
		    by the sum of `true_positives` and `false_negatives`.
		  update_op: `Operation` that increments `true_positives` and
		    `false_negatives` variables appropriately, and whose value matches
		    `recall`.
	**/
	static public function streaming_sparse_recall_at_k(predictions:Dynamic, labels:Dynamic, k:Dynamic, ?class_id:Dynamic, ?ignore_mask:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
}