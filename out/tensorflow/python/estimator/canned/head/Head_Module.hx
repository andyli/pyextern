/* This file is generated, do not edit! */
package tensorflow.python.estimator.canned.head;
@:pythonImport("tensorflow.python.estimator.canned.head") extern class Head_Module {
	static public var _CLASSIFY_SERVING_KEY : Dynamic;
	static public var _DEFAULT_SERVING_KEY : Dynamic;
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	static public var _PREDICT_SERVING_KEY : Dynamic;
	static public var _REGRESS_SERVING_KEY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _accuracy_at_threshold(labels:Dynamic, predictions:Dynamic, weights:Dynamic, threshold:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return accuracy baseline based on labels mean.
		
		This is the best the model could do by always predicting one class.
		
		Args:
		  labels_mean: Tuple of value and update op.
		
		Returns:
		  Tuple of value and update op.
	**/
	static public function _accuracy_baseline(labels_mean:Dynamic):Dynamic;
	/**
		Returns `train_op` appending `UPDATE_OPS` collection if present.
	**/
	static public function _append_update_ops(train_op:Dynamic):Dynamic;
	static public function _assert_range(labels:Dynamic, n_classes:Dynamic, ?message:Dynamic):Dynamic;
	static public function _auc(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?curve:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `_Head` for single label binary classification.
		
		This head uses `sigmoid_cross_entropy_with_logits` loss.
		
		The head expects `logits` with shape `[D0, D1, ... DN, 1]`.
		In many applications, the shape is `[batch_size, 1]`.
		
		`labels` must be a dense `Tensor` with shape matching `logits`, namely
		`[D0, D1, ... DN, 1]`. If `label_vocabulary` given, `labels` must be a string
		`Tensor` with values from the vocabulary. If `label_vocabulary` is not given,
		`labels` must be float `Tensor` with values in the interval `[0, 1]`.
		
		If `weight_column` is specified, weights must be of shape
		`[D0, D1, ... DN]`, or `[D0, D1, ... DN, 1]`.
		
		The loss is the weighted sum over the input dimensions. Namely, if the input
		labels have shape `[batch_size, 1]`, the loss is the weighted sum over
		`batch_size`.
		
		Also supports custom `loss_fn`. `loss_fn` takes `(labels, logits)` or
		`(labels, logits, features)` as arguments and returns unreduced loss with
		shape `[D0, D1, ... DN, 1]`. `loss_fn` must support float `labels` with
		shape `[D0, D1, ... DN, 1]`. Namely, the head applies `label_vocabulary` to
		the input labels before passing them to `loss_fn`.
		
		Args:
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  thresholds: Iterable of floats in the range `(0, 1)`. For binary
		    classification metrics such as precision and recall, an eval metric is
		    generated for each threshold value. This threshold is applied to the
		    logistic values to determine the binary classification (i.e., above the
		    threshold is `true`, below is `false`.
		  label_vocabulary: A list or tuple of strings representing possible label
		    values. If it is not given, that means labels are already encoded within
		    [0, 1]. If given, labels must be string type and have any value in
		    `label_vocabulary`. Note that errors will be raised if `label_vocabulary`
		    is not provided but labels are strings.
		  loss_reduction: One of `tf.losses.Reduction` except `NONE`. Describes how to
		    reduce training loss over batch. Defaults to `SUM`.
		  loss_fn: Optional loss function.
		  name: name of the head. If provided, summary and metrics keys will be
		    suffixed by `"/" + name`. Also used as `name_scope` when creating ops.
		
		Returns:
		  An instance of `_Head` for binary classification.
		
		Raises:
		  ValueError: If `thresholds` contains a value outside of `(0, 1)`.
		  ValueError: If `loss_reduction` is invalid.
		  TypeError: if `label_vocabulary` has invalid type.
	**/
	static public function _binary_logistic_head_with_sigmoid_cross_entropy_loss(?weight_column:Dynamic, ?thresholds:Dynamic, ?label_vocabulary:Dynamic, ?loss_reduction:Dynamic, ?loss_fn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates either binary or multi-class head.
		
		Args:
		  n_classes: Number of label classes.
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example. If it is a string, it is
		    used as a key to fetch weight tensor from the `features`. If it is a
		    `_NumericColumn`, raw tensor is fetched by key `weight_column.key`,
		    then weight_column.normalizer_fn is applied on it to get weight tensor.
		  label_vocabulary: A list of strings represents possible label values. If
		    given, labels must be string type and have any value in
		    `label_vocabulary`. If it is not given, that means labels are
		    already encoded as integer or float within [0, 1] for `n_classes=2` and
		    encoded as integer values in {0, 1,..., n_classes-1} for `n_classes`>2 .
		    Also there will be errors if vocabulary is not provided and labels are
		    string.
		  loss_reduction: One of `tf.losses.Reduction` except `NONE`. Describes how
		    to reduce training loss over batch. Defaults to `SUM`.
		
		Returns:
		  `head._Head` instance.
	**/
	static public function _binary_logistic_or_multi_class_head(n_classes:Dynamic, weight_column:Dynamic, label_vocabulary:Dynamic, loss_reduction:Dynamic):Dynamic;
	/**
		Calls loss_fn and checks the returned shape.
		
		Args:
		  loss_fn: The loss function.
		  labels: Processed labels Tensor.
		  logits: Logits Tensor of shape [D0, D1, ... DN, logits_dimension].
		  features: Features dict.
		  expected_loss_dim: The expected last dimension of loss Tensor.
		Returns:
		  Loss Tensor with shape [D0, D1, ... DN, expected_loss_dim].
	**/
	static public function _call_loss_fn(loss_fn:Dynamic, labels:Dynamic, logits:Dynamic, features:Dynamic, ?expected_loss_dim:Dynamic):Dynamic;
	/**
		Checks that labels shape matches logits and reshapes if needed.
		
		Consider logits of shape [D0, D1, ... DN, logits_dimension]. Then labels
		shape must be [D0, D1, ... DN, expected_labels_dimension].
		If expected_labels_dimension=1, labels could be [D0, D1, ... DN] and this
		method reshapes them to [D0, D1, ... DN, 1].
		
		Args:
		  labels: labels Tensor.
		  logits: logits Tensor.
		  expected_labels_dimension: Integer.
		Returns:
		  Validated and reshaped labels Tensor.
		Raises:
		  ValueError: If labels is a SparseTensor.
		  ValueError: If labels shape is statically defined and fails validation.
		  OpError: If labels shape is not statically defined and fails validation.
	**/
	static public function _check_dense_labels_match_logits_and_reshape(labels:Dynamic, logits:Dynamic, expected_labels_dimension:Dynamic):Dynamic;
	/**
		Checks that logits shape is [D0, D1, ... DN, logits_dimension].
	**/
	static public function _check_logits_final_dim(logits:Dynamic, expected_logits_dimension:Dynamic):Dynamic;
	static public function _classification_output(scores:Dynamic, n_classes:Dynamic, ?label_vocabulary:Dynamic):Dynamic;
	/**
		Creates TPU eval metrics tuple.
		
		Helper function to make eval_metric tuple (eval_metric_fn, fn_kwargs) used
		by `TPUEstimator`. TPUEstimator requires that `eval_metric_fn` take
		exclusively Tensor arguments. This helper can help create such a function from
		a more generic function that can take both Tensor and non-Tensor arguments.
		
		Args:
		  fn: A eval_metric_fn that takes both Tensor and non-Tensor arguments.
		      This function must return a dict of form
		      {'metric name': (metric_tensor, eval_op)}
		  kwargs: Dict of arguments for `fn`.
		
		Returns:
		  `eval_metric` tuple that can be passed to a `model_fn._TPUEstimatorSpec`.
	**/
	static public function _create_eval_metrics_tuple(fn:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Fetches weights from features and checks that the shape matches logits.
		
		Consider logits of shape [D0, D1, ... DN, logits_dimension]. Weights shape
		can be either:
		* [D0, D1, ... DN, logits_dimension] if `allow_per_logit_weights=True`.
		* [D0, D1, ... DN, 1]
		* [D0, D1, ... DN]: In this case, weights is reshaped into
		  [D0, D1, ... DN, 1] to work with weight broadcasting rules.
		
		Args:
		  features: The features dict that contains weights.
		  weight_column: The weight column. If not given, this method returns 1.
		  logits: logits Tensor.
		  allow_per_logit_weights: Boolean. Whether we allow weights along the logits
		    dimension, namely shape `[D0, D1, ... DN, logits_dimension]`.
		Returns:
		  Validated and reshaped weights Tensor.
		Raises:
		  ValueError: If the weights `Tensor` cannot be cast into float.
	**/
	static public function _get_weights_and_check_match_logits(features:Dynamic, weight_column:Dynamic, logits:Dynamic, ?allow_per_logit_weights:Dynamic):Dynamic;
	static public function _indicator_labels_mean(labels:Dynamic, ?weights:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a '_Head' for multi class classification.
		
		The head expects `logits` with shape `[D0, D1, ... DN, n_classes]`.
		In many applications, the shape is `[batch_size, n_classes]`.
		
		`labels` must be a dense `Tensor` with shape matching `logits`, namely
		`[D0, D1, ... DN, 1]`. If `label_vocabulary` given, `labels` must be a string
		`Tensor` with values from the vocabulary. If `label_vocabulary` is not given,
		`labels` must be an integer `Tensor` with values specifying the class index.
		
		If `weight_column` is specified, weights must be of shape
		`[D0, D1, ... DN]`, or `[D0, D1, ... DN, 1]`.
		
		The loss is the weighted sum over the input dimensions. Namely, if the input
		labels have shape `[batch_size, 1]`, the loss is the weighted sum over
		`batch_size`.
		
		Also supports custom `loss_fn`. `loss_fn` takes `(labels, logits)` or
		`(labels, logits, features)` as arguments and returns unreduced loss with
		shape `[D0, D1, ... DN, 1]`. `loss_fn` must support integer `labels` with
		shape `[D0, D1, ... DN, 1]`. Namely, the head applies `label_vocabulary` to
		the input labels before passing them to `loss_fn`.
		
		Args:
		  n_classes: Number of classes, must be greater than 2 (for 2 classes, use
		    `_BinaryLogisticHeadWithSigmoidCrossEntropyLoss`).
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  label_vocabulary: A list or tuple of strings representing possible label
		    values. If it is not given, that means labels are already encoded as an
		    integer within [0, n_classes). If given, labels must be of string type and
		    have any value in `label_vocabulary`. Note that errors will be raised if
		    `label_vocabulary` is not provided but labels are strings.
		  loss_reduction: One of `tf.losses.Reduction` except `NONE`. Describes how to
		    reduce training loss over batch. Defaults to `SUM`.
		  loss_fn: Optional loss function.
		  name: name of the head. If provided, summary and metrics keys will be
		    suffixed by `"/" + name`. Also used as `name_scope` when creating ops.
		
		Returns:
		  An instance of `_Head` for multi class classification.
		
		Raises:
		  ValueError: If `n_classes`, `label_vocabulary` or `loss_reduction` is
		    invalid.
	**/
	static public function _multi_class_head_with_softmax_cross_entropy_loss(n_classes:Dynamic, ?weight_column:Dynamic, ?label_vocabulary:Dynamic, ?loss_reduction:Dynamic, ?loss_fn:Dynamic, ?name:Dynamic):Dynamic;
	static public function _precision_at_threshold(labels:Dynamic, predictions:Dynamic, weights:Dynamic, threshold:Dynamic, ?name:Dynamic):Dynamic;
	static public function _predictions_mean(predictions:Dynamic, ?weights:Dynamic, ?name:Dynamic):Dynamic;
	static public function _recall_at_threshold(labels:Dynamic, predictions:Dynamic, weights:Dynamic, threshold:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `_Head` for regression using the `mean_squared_error` loss.
		
		The loss is the weighted sum over all input dimensions. Namely, if the input
		labels have shape `[batch_size, label_dimension]`, the loss is the weighted
		sum over both `batch_size` and `label_dimension`.
		
		The head expects `logits` with shape `[D0, D1, ... DN, label_dimension]`.
		In many applications, the shape is `[batch_size, label_dimension]`.
		
		The `labels` shape must match `logits`, namely
		`[D0, D1, ... DN, label_dimension]`. If `label_dimension=1`, shape
		`[D0, D1, ... DN]` is also supported.
		
		If `weight_column` is specified, weights must be of shape
		`[D0, D1, ... DN]`, `[D0, D1, ... DN, 1]` or
		`[D0, D1, ... DN, label_dimension]`.
		
		Supports custom `loss_fn`. `loss_fn` takes `(labels, logits)` or
		`(labels, logits, features)` as arguments and returns unreduced loss with
		shape `[D0, D1, ... DN, label_dimension]`.
		
		Also supports custom `inverse_link_fn`, also known as 'mean function'.
		`inverse_link_fn` takes `logits` as argument and returns predicted values.
		This function is the inverse of the link function defined in
		https://en.wikipedia.org/wiki/Generalized_linear_model#Link_function
		Namely, for poisson regression, set `inverse_link_fn=tf.exp`.
		
		Args:
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  label_dimension: Number of regression labels per example. This is the size
		    of the last dimension of the labels `Tensor` (typically, this has shape
		    `[batch_size, label_dimension]`).
		  loss_reduction: One of `tf.losses.Reduction` except `NONE`. Describes how to
		    reduce training loss over batch. Defaults to `SUM`.
		  loss_fn: Optional loss function. Defaults to `mean_squared_error`.
		  inverse_link_fn: Optional inverse link function, also known as 'mean
		    function'. Defaults to identity.
		  name: name of the head. If provided, summary and metrics keys will be
		    suffixed by `"/" + name`. Also used as `name_scope` when creating ops.
		
		Returns:
		  An instance of `_Head` for linear regression.
		
		Raises:
		  ValueError: If `label_dimension` or `loss_reduction` is invalid.
	**/
	static public function _regression_head(?weight_column:Dynamic, ?label_dimension:Dynamic, ?loss_reduction:Dynamic, ?loss_fn:Dynamic, ?inverse_link_fn:Dynamic, ?name:Dynamic):Dynamic;
	static public function _summary_key(head_name:Dynamic, val:Dynamic):Dynamic;
	/**
		Validates loss_fn arguments.
		
		Required arguments: labels, logits.
		Optional arguments: features.
		
		Args:
		  loss_fn: The loss function.
		Raises:
		  ValueError: If the signature is unexpected.
	**/
	static public function _validate_loss_fn_args(loss_fn:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}