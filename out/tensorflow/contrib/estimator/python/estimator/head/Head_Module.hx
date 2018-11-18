/* This file is generated, do not edit! */
package tensorflow.contrib.estimator.python.estimator.head;
@:pythonImport("tensorflow.contrib.estimator.python.estimator.head") extern class Head_Module {
	static public var _DEFAULT_SERVING_KEY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
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
		
		The head can be used with a canned estimator. Example:
		
		```python
		my_head = tf.contrib.estimator.binary_classification_head()
		my_estimator = tf.contrib.estimator.DNNEstimator(
		    head=my_head,
		    hidden_units=...,
		    feature_columns=...)
		```
		
		It can also be used with a custom `model_fn`. Example:
		
		```python
		def _my_model_fn(features, labels, mode):
		  my_head = tf.contrib.estimator.binary_classification_head()
		  logits = tf.keras.Model(...)(features)
		
		  return my_head.create_estimator_spec(
		      features=features,
		      mode=mode,
		      labels=labels,
		      optimizer=tf.AdagradOptimizer(learning_rate=0.1),
		      logits=logits)
		
		my_estimator = tf.estimator.Estimator(model_fn=_my_model_fn)
		```
		
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
		    values. If it is not given, labels must be float with values within
		    [0, 1]. If given, labels must be string type and have any value in
		    `label_vocabulary`. Note that errors will be raised if `label_vocabulary`
		    is not provided but labels are strings.
		  loss_reduction: One of `tf.losses.Reduction` except `NONE`. Describes how to
		    reduce training loss over batch. Defaults to `SUM_OVER_BATCH_SIZE`, namely
		    weighted sum of losses divided by batch size. See `tf.losses.Reduction`.
		  loss_fn: Optional loss function.
		  name: name of the head. If provided, summary and metrics keys will be
		    suffixed by `"/" + name`. Also used as `name_scope` when creating ops.
		
		Returns:
		  An instance of `_Head` for binary classification.
		
		Raises:
		  ValueError: If `thresholds` contains a value outside of `(0, 1)`.
		  ValueError: If `loss_reduction` is invalid.
	**/
	static public function binary_classification_head(?weight_column:Dynamic, ?thresholds:Dynamic, ?label_vocabulary:Dynamic, ?loss_reduction:Dynamic, ?loss_fn:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Creates a `_Head` for logistic regression.
		
		Uses `sigmoid_cross_entropy_with_logits` loss, which is the same as
		`binary_classification_head`. The differences compared to
		`binary_classification_head` are:
		
		* Does not support `label_vocabulary`. Instead, labels must be float in the
		  range [0, 1].
		* Does not calculate some metrics that do not make sense, such as AUC.
		* In `PREDICT` mode, only returns logits and predictions
		  (`=tf.sigmoid(logits)`), whereas `binary_classification_head` also returns
		  probabilities, classes, and class_ids.
		* Export output defaults to `RegressionOutput`, whereas
		  `binary_classification_head` defaults to `PredictOutput`.
		
		The head expects `logits` with shape `[D0, D1, ... DN, 1]`.
		In many applications, the shape is `[batch_size, 1]`.
		
		The `labels` shape must match `logits`, namely
		`[D0, D1, ... DN]` or `[D0, D1, ... DN, 1]`.
		
		If `weight_column` is specified, weights must be of shape
		`[D0, D1, ... DN]` or `[D0, D1, ... DN, 1]`.
		
		This is implemented as a generalized linear model, see
		https://en.wikipedia.org/wiki/Generalized_linear_model.
		
		The head can be used with a canned estimator. Example:
		
		```python
		my_head = tf.contrib.estimator.logistic_regression_head()
		my_estimator = tf.contrib.estimator.DNNEstimator(
		    head=my_head,
		    hidden_units=...,
		    feature_columns=...)
		```
		
		It can also be used with a custom `model_fn`. Example:
		
		```python
		def _my_model_fn(features, labels, mode):
		  my_head = tf.contrib.estimator.logistic_regression_head()
		  logits = tf.keras.Model(...)(features)
		
		  return my_head.create_estimator_spec(
		      features=features,
		      mode=mode,
		      labels=labels,
		      optimizer=tf.AdagradOptimizer(learning_rate=0.1),
		      logits=logits)
		
		my_estimator = tf.estimator.Estimator(model_fn=_my_model_fn)
		```
		
		Args:
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  loss_reduction: One of `tf.losses.Reduction` except `NONE`. Describes how to
		    reduce training loss over batch and label dimension. Defaults to
		    `SUM_OVER_BATCH_SIZE`, namely weighted sum of losses divided by
		    `batch size * label_dimension`. See `tf.losses.Reduction`.
		  name: name of the head. If provided, summary and metrics keys will be
		    suffixed by `"/" + name`. Also used as `name_scope` when creating ops.
		
		Returns:
		  An instance of `_Head` for logistic regression.
		
		Raises:
		  ValueError: If `loss_reduction` is invalid.
	**/
	static public function logistic_regression_head(?weight_column:Dynamic, ?loss_reduction:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `_Head` for multi class classification.
		
		Uses `sparse_softmax_cross_entropy` loss.
		
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
		
		The head can be used with a canned estimator. Example:
		
		```python
		my_head = tf.contrib.estimator.multi_class_head(n_classes=3)
		my_estimator = tf.contrib.estimator.DNNEstimator(
		    head=my_head,
		    hidden_units=...,
		    feature_columns=...)
		```
		
		It can also be used with a custom `model_fn`. Example:
		
		```python
		def _my_model_fn(features, labels, mode):
		  my_head = tf.contrib.estimator.multi_class_head(n_classes=3)
		  logits = tf.keras.Model(...)(features)
		
		  return my_head.create_estimator_spec(
		      features=features,
		      mode=mode,
		      labels=labels,
		      optimizer=tf.AdagradOptimizer(learning_rate=0.1),
		      logits=logits)
		
		my_estimator = tf.estimator.Estimator(model_fn=_my_model_fn)
		```
		
		Args:
		  n_classes: Number of classes, must be greater than 2 (for 2 classes, use
		    `binary_classification_head`).
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
		    reduce training loss over batch. Defaults to `SUM_OVER_BATCH_SIZE`, namely
		    weighted sum of losses divided by batch size. See `tf.losses.Reduction`.
		  loss_fn: Optional loss function.
		  name: name of the head. If provided, summary and metrics keys will be
		    suffixed by `"/" + name`. Also used as `name_scope` when creating ops.
		
		Returns:
		  An instance of `_Head` for multi class classification.
		
		Raises:
		  ValueError: if `n_classes`, `label_vocabulary` or `loss_reduction` is
		    invalid.
	**/
	static public function multi_class_head(n_classes:Dynamic, ?weight_column:Dynamic, ?label_vocabulary:Dynamic, ?loss_reduction:Dynamic, ?loss_fn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `_Head` for multi-label classification.
		
		Multi-label classification handles the case where each example may have zero
		or more associated labels, from a discrete set. This is distinct from
		`multi_class_head` which has exactly one label per example.
		
		Uses `sigmoid_cross_entropy` loss average over classes and weighted sum over
		the batch. Namely, if the input logits have shape `[batch_size, n_classes]`,
		the loss is the average over `n_classes` and the weighted sum over
		`batch_size`.
		
		The head expects `logits` with shape `[D0, D1, ... DN, n_classes]`. In many
		applications, the shape is `[batch_size, n_classes]`.
		
		Labels can be:
		
		* A multi-hot tensor of shape `[D0, D1, ... DN, n_classes]`
		* An integer `SparseTensor` of class indices. The `dense_shape` must be
		  `[D0, D1, ... DN, ?]` and the values within `[0, n_classes)`.
		* If `label_vocabulary` is given, a string `SparseTensor`. The `dense_shape`
		  must be `[D0, D1, ... DN, ?]` and the values within `label_vocabulary` or a
		  multi-hot tensor of shape `[D0, D1, ... DN, n_classes]`.
		
		If `weight_column` is specified, weights must be of shape
		`[D0, D1, ... DN]`, or `[D0, D1, ... DN, 1]`.
		
		Also supports custom `loss_fn`. `loss_fn` takes `(labels, logits)` or
		`(labels, logits, features)` as arguments and returns unreduced loss with
		shape `[D0, D1, ... DN, 1]`. `loss_fn` must support indicator `labels` with
		shape `[D0, D1, ... DN, n_classes]`. Namely, the head applies
		`label_vocabulary` to the input labels before passing them to `loss_fn`.
		
		The head can be used with a canned estimator. Example:
		
		```python
		my_head = tf.contrib.estimator.multi_label_head(n_classes=3)
		my_estimator = tf.contrib.estimator.DNNEstimator(
		    head=my_head,
		    hidden_units=...,
		    feature_columns=...)
		```
		
		It can also be used with a custom `model_fn`. Example:
		
		```python
		def _my_model_fn(features, labels, mode):
		  my_head = tf.contrib.estimator.multi_label_head(n_classes=3)
		  logits = tf.keras.Model(...)(features)
		
		  return my_head.create_estimator_spec(
		      features=features,
		      mode=mode,
		      labels=labels,
		      optimizer=tf.AdagradOptimizer(learning_rate=0.1),
		      logits=logits)
		
		my_estimator = tf.estimator.Estimator(model_fn=_my_model_fn)
		```
		
		Args:
		  n_classes: Number of classes, must be greater than 1 (for 1 class, use
		    `binary_classification_head`).
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.  Per-class weighting is
		    not supported.
		  thresholds: Iterable of floats in the range `(0, 1)`. Accuracy, precision
		    and recall metrics are evaluated for each threshold value. The threshold
		    is applied to the predicted probabilities, i.e. above the threshold is
		    `true`, below is `false`.
		  label_vocabulary: A list of strings represents possible label values. If it
		    is not given, that means labels are already encoded as integer within
		    [0, n_classes) or multi-hot Tensor. If given, labels must be SparseTensor
		    string type and have any value in `label_vocabulary`. Also there will be
		    errors if vocabulary is not provided and labels are string.
		  loss_reduction: One of `tf.losses.Reduction` except `NONE`. Describes how to
		    reduce training loss over batch. Defaults to `SUM_OVER_BATCH_SIZE`, namely
		    weighted sum of losses divided by batch size. See `tf.losses.Reduction`.
		  loss_fn: Optional loss function.
		  classes_for_class_based_metrics: List of integer class IDs or string class
		    names for which per-class metrics are evaluated. If integers, all must be
		    in the range `[0, n_classes - 1]`. If strings, all must be in
		    `label_vocabulary`.
		  name: name of the head. If provided, summary and metrics keys will be
		    suffixed by `"/" + name`. Also used as `name_scope` when creating ops.
		
		Returns:
		  An instance of `_Head` for multi-label classification.
		
		Raises:
		  ValueError: if `n_classes`, `thresholds`, `loss_reduction`, `loss_fn` or
		  `metric_class_ids` is invalid.
	**/
	static public function multi_label_head(n_classes:Dynamic, ?weight_column:Dynamic, ?thresholds:Dynamic, ?label_vocabulary:Dynamic, ?loss_reduction:Dynamic, ?loss_fn:Dynamic, ?classes_for_class_based_metrics:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `_Head` for poisson regression using `tf.nn.log_poisson_loss`.
		
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
		
		This is implemented as a generalized linear model, see
		https://en.wikipedia.org/wiki/Generalized_linear_model.
		
		The head can be used with a canned estimator. Example:
		
		```python
		my_head = tf.contrib.estimator.poisson_regression_head()
		my_estimator = tf.contrib.estimator.DNNEstimator(
		    head=my_head,
		    hidden_units=...,
		    feature_columns=...)
		```
		
		It can also be used with a custom `model_fn`. Example:
		
		```python
		def _my_model_fn(features, labels, mode):
		  my_head = tf.contrib.estimator.poisson_regression_head()
		  logits = tf.keras.Model(...)(features)
		
		  return my_head.create_estimator_spec(
		      features=features,
		      mode=mode,
		      labels=labels,
		      optimizer=tf.AdagradOptimizer(learning_rate=0.1),
		      logits=logits)
		
		my_estimator = tf.estimator.Estimator(model_fn=_my_model_fn)
		```
		
		Args:
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  label_dimension: Number of regression labels per example. This is the size
		    of the last dimension of the labels `Tensor` (typically, this has shape
		    `[batch_size, label_dimension]`).
		  loss_reduction: One of `tf.losses.Reduction` except `NONE`. Describes how to
		    reduce training loss over batch and label dimension. Defaults to
		    `SUM_OVER_BATCH_SIZE`, namely weighted sum of losses divided by
		    `batch size * label_dimension`. See `tf.losses.Reduction`.
		  compute_full_loss: Whether to include the constant `log(z!)` term in
		    computing the poisson loss. See `tf.nn.log_poisson_loss` for the full
		    documentation.
		  name: name of the head. If provided, summary and metrics keys will be
		    suffixed by `"/" + name`. Also used as `name_scope` when creating ops.
		
		Returns:
		  An instance of `_Head` for poisson regression.
		
		Raises:
		  ValueError: If `label_dimension` or `loss_reduction` is invalid.
	**/
	static public function poisson_regression_head(?weight_column:Dynamic, ?label_dimension:Dynamic, ?loss_reduction:Dynamic, ?compute_full_loss:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
		`inverse_link_fn` is only used in `PREDICT` mode. It takes `logits` as
		argument and returns predicted values. This function is the inverse of the
		link function defined in
		https://en.wikipedia.org/wiki/Generalized_linear_model#Link_function
		Namely, for poisson regression, set `inverse_link_fn=tf.exp`.
		
		The head can be used with a canned estimator. Example:
		
		```python
		my_head = tf.contrib.estimator.regression_head()
		my_estimator = tf.contrib.estimator.DNNEstimator(
		    head=my_head,
		    hidden_units=...,
		    feature_columns=...)
		```
		
		It can also be used with a custom `model_fn`. Example:
		
		```python
		def _my_model_fn(features, labels, mode):
		  my_head = tf.contrib.estimator.regression_head()
		  logits = tf.keras.Model(...)(features)
		
		  return my_head.create_estimator_spec(
		      features=features,
		      mode=mode,
		      labels=labels,
		      optimizer=tf.AdagradOptimizer(learning_rate=0.1),
		      logits=logits)
		
		my_estimator = tf.estimator.Estimator(model_fn=_my_model_fn)
		```
		
		Args:
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  label_dimension: Number of regression labels per example. This is the size
		    of the last dimension of the labels `Tensor` (typically, this has shape
		    `[batch_size, label_dimension]`).
		  loss_reduction: One of `tf.losses.Reduction` except `NONE`. Describes how to
		    reduce training loss over batch and label dimension. Defaults to
		    `SUM_OVER_BATCH_SIZE`, namely weighted sum of losses divided by
		    `batch size * label_dimension`. See `tf.losses.Reduction`.
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
	static public function regression_head(?weight_column:Dynamic, ?label_dimension:Dynamic, ?loss_reduction:Dynamic, ?loss_fn:Dynamic, ?inverse_link_fn:Dynamic, ?name:Dynamic):Dynamic;
}