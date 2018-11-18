/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.head;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.head") extern class Head_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Average label value for class `class_id`.
	**/
	static public function _assert_class_id(class_id:Dynamic, ?num_classes:Dynamic):Dynamic;
	static public function _assert_labels_rank(labels:Dynamic):Dynamic;
	/**
		Creates a `Head` for binary classification with SVMs. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		The head uses binary hinge loss.
		
		Args:
		  label_name: String, name of the key in label dict. Can be null if label
		    is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. If provided, predictions, summary and metrics
		    keys will be suffixed by `"/" + head_name` and the default variable scope
		    will be `head_name`.
		  thresholds: thresholds for eval metrics, defaults to [.5]
		
		Returns:
		  An instance of `Head` for binary classification with SVM.
	**/
	static public function _binary_svm_head(?label_name:Dynamic, ?weight_column_name:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic, ?thresholds:Dynamic):Dynamic;
	/**
		Returns centered_bias `Variable`.
		
		Args:
		  logits_dimension: Last dimension of `logits`. Must be >= 1.
		  head_name: Optional name of the head.
		
		Returns:
		  `Variable` with shape `[logits_dimension]`.
		
		Raises:
		  ValueError: if `logits_dimension` is invalid.
	**/
	static public function _centered_bias(logits_dimension:Dynamic, ?head_name:Dynamic):Dynamic;
	/**
		Creates and returns training op for centered bias.
	**/
	static public function _centered_bias_step(centered_bias:Dynamic, batch_size:Dynamic, labels:Dynamic, loss_fn:Dynamic, weights:Dynamic):Dynamic;
	/**
		Raises ValueError if the given mode is invalid.
	**/
	static public function _check_mode_valid(mode:Dynamic):Dynamic;
	/**
		Raises ValueError if the given tensor is `SparseTensor`.
	**/
	static public function _check_no_sparse_tensor(x:Dynamic):Dynamic;
	static public function _class_id_labels_to_indicator(labels:Dynamic, num_classes:Dynamic):Dynamic;
	static public function _class_labels_streaming_mean(labels:Dynamic, weights:Dynamic, class_id:Dynamic):Dynamic;
	static public function _class_predictions_streaming_mean(predictions:Dynamic, weights:Dynamic, class_id:Dynamic):Dynamic;
	/**
		Creates a func to generate output alternatives for classification.
		
		Servo expects classes to be a string tensor, and have the same dimensions
		as the probabilities tensor. It should contain the labels of the corresponding
		entries in probabilities. This function creates a new classes tensor that
		satisfies these conditions and can be exported.
		
		Args:
		  head_name: Name of the head.
		  problem_type: `ProblemType`
		  label_keys: Optional label keys
		
		Returns:
		  A function to generate output alternatives.
	**/
	static public function _classification_output_alternatives(head_name:Dynamic, problem_type:Dynamic, ?label_keys:Dynamic):Dynamic;
	/**
		Returns a tuple of (loss_train, loss_report).
		
		loss is used for gradient descent while weighted_average_loss is used for
		summaries to be backward compatible.
		
		loss is different from the loss reported on the tensorboard as we
		should respect the example weights when computing the gradient.
		
		  L = sum_{i} w_{i} * l_{i} / B
		
		where B is the number of examples in the batch, l_{i}, w_{i} are individual
		losses, and example weight.
		
		Args:
		  loss_unweighted: Unweighted loss
		  weight: Weight tensor
		  name: Optional name
		
		Returns:
		  A tuple of losses. First one for training and the second one for reporting.
	**/
	static public function _compute_weighted_loss(loss_unweighted:Dynamic, weight:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a `ModelFnOps` object.
	**/
	static public function _create_model_fn_ops(features:Dynamic, mode:Dynamic, loss_fn:Dynamic, logits_to_predictions_fn:Dynamic, metrics_fn:Dynamic, create_output_alternatives_fn:Dynamic, ?labels:Dynamic, ?train_op_fn:Dynamic, ?logits:Dynamic, ?logits_dimension:Dynamic, ?head_name:Dynamic, ?weight_column_name:Dynamic, ?enable_centered_bias:Dynamic):Dynamic;
	static public function _float_weights_or_none(weights:Dynamic):Dynamic;
	/**
		Returns a spec of given func.
	**/
	static public function _get_arguments(func:Dynamic):Dynamic;
	static public function _indicator_labels_streaming_mean(labels:Dynamic, ?weights:Dynamic, ?class_id:Dynamic):Dynamic;
	static public function _log_loss_with_two_classes(labels:Dynamic, logits:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Validate logits args, and create `logits` if necessary.
		
		Exactly one of `logits_input` and `logits` must be provided.
		
		Args:
		  logits_input: `Tensor` input to `logits`.
		  logits: `Tensor` output.
		  logits_dimension: Integer, last dimension of `logits`. This is used to
		    create `logits` from `logits_input` if `logits` is `None`; otherwise, it's
		    used to validate `logits`.
		
		Returns:
		  `logits` `Tensor`.
		
		Raises:
		  ValueError: if neither or both of `logits` and `logits_input` are supplied.
	**/
	static public function _logits(logits_input:Dynamic, logits:Dynamic, logits_dimension:Dynamic):Dynamic;
	static public function _mean_squared_loss(labels:Dynamic, logits:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Creates a `Head` for multi class single label classification. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		The Head uses softmax cross entropy loss.
		
		This head expects to be fed integer labels specifying the class index. But
		if `label_keys` is specified, then labels must be strings from this
		vocabulary, and the predicted classes will be strings from the same
		vocabulary.
		
		Args:
		  n_classes: Integer, number of classes, must be >= 2
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. If provided, predictions, summary and metrics
		    keys will be suffixed by `"/" + head_name` and the default variable scope
		    will be `head_name`.
		  thresholds: thresholds for eval metrics, defaults to [.5]
		  metric_class_ids: List of class IDs for which we should report per-class
		    metrics. Must all be in the range `[0, n_classes)`. Invalid if
		    `n_classes` is 2.
		  loss_fn: Optional function that takes (`labels`, `logits`, `weights`) as
		    parameter and returns a weighted scalar loss. `weights` should be
		    optional. See `tf.losses`
		  label_keys: Optional list of strings with size `[n_classes]` defining the
		    label vocabulary. Only supported for `n_classes` > 2.
		
		Returns:
		  An instance of `Head` for multi class classification.
		
		Raises:
		  ValueError: if `n_classes` is < 2.
		  ValueError: If `metric_class_ids` is provided when `n_classes` is 2.
		  ValueError: If `len(label_keys) != n_classes`.
	**/
	static public function _multi_class_head(n_classes:Dynamic, ?label_name:Dynamic, ?weight_column_name:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic, ?thresholds:Dynamic, ?metric_class_ids:Dynamic, ?loss_fn:Dynamic, ?label_keys:Dynamic):Dynamic;
	/**
		Creates a MultiHead stemming from same logits/hidden layer. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		Args:
		  heads: list of Head objects.
		  loss_weights: optional list of weights to be used to merge losses from
		      each head. All losses are weighted equally if not provided.
		
		Returns:
		  A instance of `Head` that merges multiple heads.
		
		Raises:
		  ValueError: if heads and loss_weights have different size.
	**/
	static public function _multi_head(heads:Dynamic, ?loss_weights:Dynamic):Dynamic;
	/**
		Creates a Head for multi label classification. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		Multi-label classification handles the case where each example may have zero
		or more associated labels, from a discrete set.  This is distinct from
		`multi_class_head` which has exactly one label from a discrete set.
		
		This head by default uses sigmoid cross entropy loss, which expects as input
		a multi-hot tensor of shape `(batch_size, num_classes)`.
		
		Args:
		  n_classes: Integer, number of classes, must be >= 2
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. If provided, predictions, summary and metrics
		    keys will be suffixed by `"/" + head_name` and the default variable scope
		    will be `head_name`.
		  thresholds: thresholds for eval metrics, defaults to [.5]
		  metric_class_ids: List of class IDs for which we should report per-class
		    metrics. Must all be in the range `[0, n_classes)`.
		  loss_fn: Optional function that takes (`labels`, `logits`, `weights`) as
		    parameter and returns a weighted scalar loss. `weights` should be
		    optional. See `tf.losses`
		
		Returns:
		  An instance of `Head` for multi label classification.
		
		Raises:
		  ValueError: If n_classes is < 2
		  ValueError: If loss_fn does not have expected signature.
	**/
	static public function _multi_label_head(n_classes:Dynamic, ?label_name:Dynamic, ?weight_column_name:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic, ?thresholds:Dynamic, ?metric_class_ids:Dynamic, ?loss_fn:Dynamic):Dynamic;
	static public function _one_class_to_two_class_logits(logits:Dynamic):Dynamic;
	/**
		Computes poisson loss from logits.
	**/
	static public function _poisson_loss(labels:Dynamic, logits:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Creates a `Head` for poisson regression. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		Args:
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  label_dimension: Number of regression labels per example. This is the size
		    of the last dimension of the labels `Tensor` (typically, this has shape
		    `[batch_size, label_dimension]`).
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. If provided, predictions, summary and metrics
		    keys will be suffixed by `"/" + head_name` and the default variable scope
		    will be `head_name`.
		
		Returns:
		  An instance of `Head` for poisson regression.
	**/
	static public function _poisson_regression_head(?label_name:Dynamic, ?weight_column_name:Dynamic, ?label_dimension:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic):Dynamic;
	static public function _predictions_streaming_mean(predictions:Dynamic, ?weights:Dynamic, ?class_id:Dynamic):Dynamic;
	/**
		Creates a `Head` for linear regression. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		Args:
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  label_dimension: Number of regression labels per example. This is the size
		    of the last dimension of the labels `Tensor` (typically, this has shape
		    `[batch_size, label_dimension]`).
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. If provided, predictions, summary and metrics
		    keys will be suffixed by `"/" + head_name` and the default variable scope
		    will be `head_name`.
		  link_fn: link function to convert logits to predictions. If provided,
		    this link function will be used instead of identity.
		
		Returns:
		  An instance of `Head` for linear regression.
	**/
	static public function _regression_head(?label_name:Dynamic, ?weight_column_name:Dynamic, ?label_dimension:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic, ?link_fn:Dynamic):Dynamic;
	static public function _sigmoid_cross_entropy_loss(labels:Dynamic, logits:Dynamic, ?weights:Dynamic):Dynamic;
	static public function _softmax_cross_entropy_loss(labels:Dynamic, logits:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		If labels is `SparseTensor`, converts it to indicator `Tensor`.
		
		Args:
		  labels: Label `Tensor` or `SparseTensor`.
		  num_classes: Number of classes.
		
		Returns:
		  Dense label `Tensor`.
		
		Raises:
		  ValueError: If labels is `SparseTensor` and `num_classes` < 2.
	**/
	static public function _sparse_labels_to_indicator(labels:Dynamic, num_classes:Dynamic):Dynamic;
	static public function _streaming_accuracy_at_threshold(predictions:Dynamic, labels:Dynamic, weights:Dynamic, threshold:Dynamic):Dynamic;
	static public function _streaming_auc(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?class_id:Dynamic, ?curve:Dynamic):Dynamic;
	static public function _streaming_precision_at_threshold(predictions:Dynamic, labels:Dynamic, weights:Dynamic, threshold:Dynamic):Dynamic;
	static public function _streaming_recall_at_threshold(predictions:Dynamic, labels:Dynamic, weights:Dynamic, threshold:Dynamic):Dynamic;
	static public function _summary_key(head_name:Dynamic, val:Dynamic):Dynamic;
	/**
		Returns label as a tensor.
		
		Args:
		  labels: Label `Tensor` or `SparseTensor` or a dict containing labels.
		  label_name: Label name if labels is a dict.
		
		Returns:
		  Label `Tensor` or `SparseTensor`.
	**/
	static public function _to_labels_tensor(labels:Dynamic, label_name:Dynamic):Dynamic;
	/**
		Returns op for the training step.
	**/
	static public function _train_op(loss:Dynamic, labels:Dynamic, train_op_fn:Dynamic, centered_bias:Dynamic, batch_size:Dynamic, loss_fn:Dynamic, weights:Dynamic):Dynamic;
	static public function _verify_loss_fn_args(loss_fn:Dynamic):Dynamic;
	/**
		Returns weights as `Tensor` of rank 0, or at least 2.
	**/
	static public function _weight_tensor(features:Dynamic, weight_column_name:Dynamic):Dynamic;
	static public function _wrap_custom_loss_fn(loss_fn:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a `Head` for binary classification with SVMs. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		The head uses binary hinge loss.
		
		Args:
		  label_name: String, name of the key in label dict. Can be null if label
		    is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. If provided, predictions, summary and metrics
		    keys will be suffixed by `"/" + head_name` and the default variable scope
		    will be `head_name`.
		  thresholds: thresholds for eval metrics, defaults to [.5]
		
		Returns:
		  An instance of `Head` for binary classification with SVM.
	**/
	static public function binary_svm_head(?label_name:Dynamic, ?weight_column_name:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic, ?thresholds:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Creates a Head that contains only loss terms. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		Loss only head holds additional loss terms to be added to other heads and
		usually represents additional regularization terms in the objective function.
		
		Args:
		  loss_fn: a function that takes no argument and returns a list of
		      scalar tensors.
		  head_name: a name for the head.
		
		Returns:
		  An instance of `Head` to hold the additional losses.
	**/
	static public function loss_only_head(loss_fn:Dynamic, ?head_name:Dynamic):Dynamic;
	/**
		Creates a `Head` for multi class single label classification. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		The Head uses softmax cross entropy loss.
		
		This head expects to be fed integer labels specifying the class index. But
		if `label_keys` is specified, then labels must be strings from this
		vocabulary, and the predicted classes will be strings from the same
		vocabulary.
		
		Args:
		  n_classes: Integer, number of classes, must be >= 2
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. If provided, predictions, summary and metrics
		    keys will be suffixed by `"/" + head_name` and the default variable scope
		    will be `head_name`.
		  thresholds: thresholds for eval metrics, defaults to [.5]
		  metric_class_ids: List of class IDs for which we should report per-class
		    metrics. Must all be in the range `[0, n_classes)`. Invalid if
		    `n_classes` is 2.
		  loss_fn: Optional function that takes (`labels`, `logits`, `weights`) as
		    parameter and returns a weighted scalar loss. `weights` should be
		    optional. See `tf.losses`
		  label_keys: Optional list of strings with size `[n_classes]` defining the
		    label vocabulary. Only supported for `n_classes` > 2.
		
		Returns:
		  An instance of `Head` for multi class classification.
		
		Raises:
		  ValueError: if `n_classes` is < 2.
		  ValueError: If `metric_class_ids` is provided when `n_classes` is 2.
		  ValueError: If `len(label_keys) != n_classes`.
	**/
	static public function multi_class_head(n_classes:Dynamic, ?label_name:Dynamic, ?weight_column_name:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic, ?thresholds:Dynamic, ?metric_class_ids:Dynamic, ?loss_fn:Dynamic, ?label_keys:Dynamic):Dynamic;
	/**
		Creates a MultiHead stemming from same logits/hidden layer. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		Args:
		  heads: list of Head objects.
		  loss_weights: optional list of weights to be used to merge losses from
		      each head. All losses are weighted equally if not provided.
		
		Returns:
		  A instance of `Head` that merges multiple heads.
		
		Raises:
		  ValueError: if heads and loss_weights have different size.
	**/
	static public function multi_head(heads:Dynamic, ?loss_weights:Dynamic):Dynamic;
	/**
		Creates a Head for multi label classification. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		Multi-label classification handles the case where each example may have zero
		or more associated labels, from a discrete set.  This is distinct from
		`multi_class_head` which has exactly one label from a discrete set.
		
		This head by default uses sigmoid cross entropy loss, which expects as input
		a multi-hot tensor of shape `(batch_size, num_classes)`.
		
		Args:
		  n_classes: Integer, number of classes, must be >= 2
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. If provided, predictions, summary and metrics
		    keys will be suffixed by `"/" + head_name` and the default variable scope
		    will be `head_name`.
		  thresholds: thresholds for eval metrics, defaults to [.5]
		  metric_class_ids: List of class IDs for which we should report per-class
		    metrics. Must all be in the range `[0, n_classes)`.
		  loss_fn: Optional function that takes (`labels`, `logits`, `weights`) as
		    parameter and returns a weighted scalar loss. `weights` should be
		    optional. See `tf.losses`
		
		Returns:
		  An instance of `Head` for multi label classification.
		
		Raises:
		  ValueError: If n_classes is < 2
		  ValueError: If loss_fn does not have expected signature.
	**/
	static public function multi_label_head(n_classes:Dynamic, ?label_name:Dynamic, ?weight_column_name:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic, ?thresholds:Dynamic, ?metric_class_ids:Dynamic, ?loss_fn:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use 'lambda _: tf.no_op()'.
	**/
	static public function no_op_train_fn(loss:Dynamic):Dynamic;
	/**
		Creates a `Head` for poisson regression. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		Args:
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  label_dimension: Number of regression labels per example. This is the size
		    of the last dimension of the labels `Tensor` (typically, this has shape
		    `[batch_size, label_dimension]`).
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. If provided, predictions, summary and metrics
		    keys will be suffixed by `"/" + head_name` and the default variable scope
		    will be `head_name`.
		
		Returns:
		  An instance of `Head` for poisson regression.
	**/
	static public function poisson_regression_head(?label_name:Dynamic, ?weight_column_name:Dynamic, ?label_dimension:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a `Head` for linear regression. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		Args:
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  label_dimension: Number of regression labels per example. This is the size
		    of the last dimension of the labels `Tensor` (typically, this has shape
		    `[batch_size, label_dimension]`).
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. If provided, predictions, summary and metrics
		    keys will be suffixed by `"/" + head_name` and the default variable scope
		    will be `head_name`.
		  link_fn: link function to convert logits to predictions. If provided,
		    this link function will be used instead of identity.
		
		Returns:
		  An instance of `Head` for linear regression.
	**/
	static public function regression_head(?label_name:Dynamic, ?weight_column_name:Dynamic, ?label_dimension:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic, ?link_fn:Dynamic):Dynamic;
}