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
		Deprecated. Use tf.confusion_matrix instead.
	**/
	static public function confusion_matrix(labels:Dynamic, predictions:Dynamic, ?num_classes:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Compute set difference of elements in last dimension of `a` and `b`.
		
		All but the last dimension of `a` and `b` must match.
		
		Example:
		
		```python
		  a = [
		    [
		      [
		        [1, 2],
		        [3],
		      ],
		      [
		        [4],
		        [5, 6],
		      ],
		    ],
		  ]
		  b = [
		    [
		      [
		        [1, 3],
		        [2],
		      ],
		      [
		        [4, 5],
		        [5, 6, 7, 8],
		      ],
		    ],
		  ]
		  set_difference(a, b, aminusb=True) = [
		    [
		      [
		        [2],
		        [3],
		      ],
		      [
		        [],
		        [],
		      ],
		    ],
		  ]
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
		  a = [
		    [
		      [
		        [1, 2],
		        [3],
		      ],
		      [
		        [4],
		        [5, 6],
		      ],
		    ],
		  ]
		  b = [
		    [
		      [
		        [1, 3],
		        [2],
		      ],
		      [
		        [4, 5],
		        [5, 6, 7, 8],
		      ],
		    ],
		  ]
		  set_intersection(a, b) = [
		    [
		      [
		        [1],
		        [],
		      ],
		      [
		        [4],
		        [5, 6],
		      ],
		    ],
		  ]
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
		  a = [
		    [
		      [
		        [1, 2],
		        [3],
		      ],
		      [
		        [4],
		        [5, 6],
		      ],
		    ],
		  ]
		  b = [
		    [
		      [
		        [1, 3],
		        [2],
		      ],
		      [
		        [4, 5],
		        [5, 6, 7, 8],
		      ],
		    ],
		  ]
		  set_union(a, b) = [
		    [
		      [
		        [1, 2, 3],
		        [2, 3],
		      ],
		      [
		        [4, 5],
		        [5, 6, 7, 8],
		      ],
		    ],
		  ]
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
		Calculates how often `predictions` matches `labels`.
		
		The `streaming_accuracy` function creates two local variables, `total` and
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
		Computes the approximate AUC via a Riemann sum.
		
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
		Computes the total number of false negatives.
		
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
		Sum the weights of false positives.
		
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
		Computes the (weighted) mean of the given values.
		
		The `streaming_mean` function creates two local variables, `total` and `count`
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
		Computes the mean absolute error between the labels and predictions.
		
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
		Computes the mean squared error between the labels and predictions.
		
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
		Computes the element-wise (weighted) mean of the given tensors.
		
		In contrast to the `streaming_mean` function which returns a scalar with the
		mean,  this function returns an average tensor with the same shape as the
		input tensors.
		
		The `streaming_mean_tensor` function creates two local variables,
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
		Computes the precision of the predictions with respect to the labels.
		
		The `streaming_precision` function creates two local variables,
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
		Computes precision values for different `thresholds` on `predictions`.
		
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
	static public function streaming_precision_at_thresholds(predictions:Dynamic, labels:Dynamic, thresholds:Dynamic, ?weights:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the recall of the predictions with respect to the labels.
		
		The `streaming_recall` function creates two local variables, `true_positives`
		and `false_negatives`, that are used to compute the recall. This value is
		ultimately returned as `recall`, an idempotent operation that simply divides
		`true_positives` by the sum of `true_positives`  and `false_negatives`.
		
		For estimation of the metric  over a stream of data, the function creates an
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
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-08.
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
		Computes various recall values for different `thresholds` on `predictions`.
		
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
		Computes the root mean squared error between the labels and predictions.
		
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
		Computes the specificity at a given sensitivity.
		
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
		  update: `Operation` that increments  variables appropriately, and whose
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
		  update: `Operation` that increments  variables appropriately, and whose
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
		Sum the weights of true_negatives.
		
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
		Sum the weights of true_positives.
		
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