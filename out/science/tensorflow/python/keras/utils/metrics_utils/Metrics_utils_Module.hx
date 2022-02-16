/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.metrics_utils;
@:pythonImport("tensorflow.python.keras.utils.metrics_utils") extern class Metrics_utils_Module {
	static public var NEG_INF : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks that the given splits lists are identical.
		
		Performs static tests to ensure that the given splits lists are identical,
		and returns a list of control dependency op tensors that check that they are
		fully identical.
		
		Args:
		  nested_splits_lists: A list of nested_splits_lists, where each split_list is
		    a list of `splits` tensors from a `RaggedTensor`, ordered from outermost
		    ragged dimension to innermost ragged dimension.
		
		Returns:
		  A list of control dependency op tensors.
		Raises:
		  ValueError: If the splits are not identical.
	**/
	static public function _assert_splits_match(nested_splits_lists:Dynamic):Dynamic;
	/**
		Filters top-k values in the last dim of x and set the rest to NEG_INF.
		
		Used for computing top-k prediction values in dense labels (which has the same
		shape as predictions) for recall and precision top-k metrics.
		
		Args:
		  x: tensor with any dimensions.
		  k: the number of values to keep.
		
		Returns:
		  tensor with same shape and dtype as x.
	**/
	static public function _filter_top_k(x:Dynamic, k:Dynamic):Dynamic;
	/**
		Update confusion matrix variables with memory efficient alternative.
		
		Note that the thresholds need to be evenly distributed within the list, eg,
		the diff between consecutive elements are the same.
		
		To compute TP/FP/TN/FN, we are measuring a binary classifier
		  C(t) = (predictions >= t)
		at each threshold 't'. So we have
		  TP(t) = sum( C(t) * true_labels )
		  FP(t) = sum( C(t) * false_labels )
		
		But, computing C(t) requires computation for each t. To make it fast,
		observe that C(t) is a cumulative integral, and so if we have
		  thresholds = [t_0, ..., t_{n-1}];  t_0 < ... < t_{n-1}
		where n = num_thresholds, and if we can compute the bucket function
		  B(i) = Sum( (predictions == t), t_i <= t < t{i+1} )
		then we get
		  C(t_i) = sum( B(j), j >= i )
		which is the reversed cumulative sum in tf.cumsum().
		
		We can compute B(i) efficiently by taking advantage of the fact that
		our thresholds are evenly distributed, in that
		  width = 1.0 / (num_thresholds - 1)
		  thresholds = [0.0, 1*width, 2*width, 3*width, ..., 1.0]
		Given a prediction value p, we can map it to its bucket by
		  bucket_index(p) = floor( p * (num_thresholds - 1) )
		so we can use tf.math.unsorted_segment_sum() to update the buckets in one
		pass.
		
		Consider following example:
		y_true = [0, 0, 1, 1]
		y_pred = [0.1, 0.5, 0.3, 0.9]
		thresholds = [0.0, 0.5, 1.0]
		num_buckets = 2   # [0.0, 1.0], (1.0, 2.0]
		bucket_index(y_pred) = tf.math.floor(y_pred * num_buckets)
		                     = tf.math.floor([0.2, 1.0, 0.6, 1.8])
		                     = [0, 0, 0, 1]
		# The meaning of this bucket is that if any of the label is true,
		# then 1 will be added to the corresponding bucket with the index.
		# Eg, if the label for 0.2 is true, then 1 will be added to bucket 0. If the
		# label for 1.8 is true, then 1 will be added to bucket 1.
		#
		# Note the second item "1.0" is floored to 0, since the value need to be
		# strictly larger than the bucket lower bound.
		# In the implementation, we use tf.math.ceil() - 1 to achieve this.
		tp_bucket_value = tf.math.unsorted_segment_sum(true_labels, bucket_indices,
		                                               num_segments=num_thresholds)
		                = [1, 1, 0]
		# For [1, 1, 0] here, it means there is 1 true value contributed by bucket 0,
		# and 1 value contributed by bucket 1. When we aggregate them to together,
		# the result become [a + b + c, b + c, c], since large thresholds will always
		# contribute to the value for smaller thresholds.
		true_positive = tf.math.cumsum(tp_bucket_value, reverse=True)
		              = [2, 1, 0]
		
		This implementation exhibits a run time and space complexity of O(T + N),
		where T is the number of thresholds and N is the size of predictions.
		Metrics that rely on standard implementation instead exhibit a complexity of
		O(T * N).
		
		Args:
		  variables_to_update: Dictionary with 'tp', 'fn', 'tn', 'fp' as valid keys
		    and corresponding variables to update as values.
		  y_true: A floating point `Tensor` whose shape matches `y_pred`. Will be cast
		    to `bool`.
		  y_pred: A floating point `Tensor` of arbitrary shape and whose values are in
		    the range `[0, 1]`.
		  thresholds: A sorted floating point `Tensor` with value in `[0, 1]`.
		    It need to be evenly distributed (the diff between each element need to be
		    the same).
		  multi_label: Optional boolean indicating whether multidimensional
		    prediction/labels should be treated as multilabel responses, or flattened
		    into a single label. When True, the valus of `variables_to_update` must
		    have a second dimension equal to the number of labels in y_true and
		    y_pred, and those tensors must not be RaggedTensors.
		  sample_weights: Optional `Tensor` whose rank is either 0, or the same rank
		    as `y_true`, and must be broadcastable to `y_true` (i.e., all dimensions
		    must be either `1`, or the same as the corresponding `y_true` dimension).
		  label_weights: Optional tensor of non-negative weights for multilabel
		    data. The weights are applied when calculating TP, FP, FN, and TN without
		    explicit multilabel handling (i.e. when the data is to be flattened).
		  thresholds_with_epsilon: Optional boolean indicating whether the leading and
		    tailing thresholds has any epsilon added for floating point imprecisions.
		    It will change how we handle the leading and tailing bucket.
		
		Returns:
		  Update op.
	**/
	static public function _update_confusion_matrix_variables_optimized(variables_to_update:Dynamic, y_true:Dynamic, y_pred:Dynamic, thresholds:Dynamic, ?multi_label:Dynamic, ?sample_weights:Dynamic, ?label_weights:Dynamic, ?thresholds_with_epsilon:Dynamic):Dynamic;
	static public function assert_thresholds_range(thresholds:Dynamic):Dynamic;
	/**
		Check if the thresholds list is evenly distributed.
		
		We could leverage evenly distributed thresholds to use less memory when
		calculate metrcis like AUC where each individual threshold need to be
		evaluted.
		
		Args:
		  thresholds: A python list or tuple, or 1D numpy array whose value is ranged
		    in [0, 1].
		
		Returns:
		  boolean, whether the values in the inputs are evenly distributed.
	**/
	static public function is_evenly_distributed_thresholds(thresholds:Dynamic):Dynamic;
	static public function parse_init_thresholds(thresholds:Dynamic, ?default_threshold:Dynamic):Dynamic;
	/**
		If ragged, it checks the compatibility and then returns the flat_values.
		
		   Note: If two tensors are dense, it does not check their compatibility.
		   Note: Although two ragged tensors with different ragged ranks could have
		         identical overall rank and dimension sizes and hence be compatible,
		         we do not support those cases.
		Args:
		   values: A list of potentially ragged tensor of the same ragged_rank.
		   mask: A potentially ragged tensor of the same ragged_rank as elements in
		     Values.
		
		Returns:
		   A tuple in which the first element is the list of tensors and the second
		   is the mask tensor. ([Values], mask). Mask and the element in Values
		   are equal to the flat_values of the input arguments (if they were ragged).
	**/
	static public function ragged_assert_compatible_and_get_flat_values(values:Dynamic, ?mask:Dynamic):Dynamic;
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
	/**
		Normalizes a list/tensor into a list.
		
		If a tensor is passed, we return
		a list of size 1 containing the tensor.
		
		Args:
		    x: target object to be normalized.
		
		Returns:
		    A list.
	**/
	static public function to_list(x:Dynamic):Dynamic;
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
		  thresholds: A float value, float tensor, python list, or tuple of float
		    thresholds in `[0, 1]`, or NEG_INF (used when top_k is set).
		  top_k: Optional int, indicates that the positive labels should be limited to
		    the top k predictions.
		  class_id: Optional int, limits the prediction and labels to the class
		    specified by this argument.
		  sample_weight: Optional `Tensor` whose rank is either 0, or the same rank as
		    `y_true`, and must be broadcastable to `y_true` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `y_true` dimension).
		  multi_label: Optional boolean indicating whether multidimensional
		    prediction/labels should be treated as multilabel responses, or flattened
		    into a single label. When True, the valus of `variables_to_update` must
		    have a second dimension equal to the number of labels in y_true and
		    y_pred, and those tensors must not be RaggedTensors.
		  label_weights: (optional) tensor of non-negative weights for multilabel
		    data. The weights are applied when calculating TP, FP, FN, and TN without
		    explicit multilabel handling (i.e. when the data is to be flattened).
		  thresholds_distributed_evenly: Boolean, whether the thresholds are evenly
		    distributed within the list. An optimized method will be used if this is
		    the case. See _update_confusion_matrix_variables_optimized() for more
		    details.
		
		Returns:
		  Update op.
		
		Raises:
		  ValueError: If `y_pred` and `y_true` have mismatched shapes, or if
		    `sample_weight` is not `None` and its shape doesn't match `y_pred`, or if
		    `variables_to_update` contains invalid keys.
	**/
	static public function update_confusion_matrix_variables(variables_to_update:Dynamic, y_true:Dynamic, y_pred:Dynamic, thresholds:Dynamic, ?top_k:Dynamic, ?class_id:Dynamic, ?sample_weight:Dynamic, ?multi_label:Dynamic, ?label_weights:Dynamic, ?thresholds_distributed_evenly:Dynamic):Dynamic;
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