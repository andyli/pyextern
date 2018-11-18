/* This file is generated, do not edit! */
package tensorflow.contrib.estimator;
@:pythonImport("tensorflow.contrib.estimator") extern class Estimator_Module {
	/**
		A classifier for TensorFlow DNN models with layer annotations.
		
		This classifier is fuctionally identical to estimator.DNNClassifier as far as
		training and evaluating models is concerned. The key difference is that this
		classifier adds additional layer annotations, which can be used for computing
		Integrated Gradients.
		
		Integrated Gradients is a method for attributing a classifier's predictions
		to its input features (https://arxiv.org/pdf/1703.01365.pdf). Given an input
		instance, the method assigns attribution scores to individual features in
		proportion to the feature's importance to the classifier's prediction.
		
		See estimator.DNNClassifer for example code for training and evaluating models
		using this classifier.
		
		This classifier is checkpoint-compatible with estimator.DNNClassifier and
		therefore the following should work seamlessly:
		
		# Instantiate ordinary estimator as usual.
		estimator = tf.estimator.DNNClassifier(
		  config, feature_columns, hidden_units, ...)
		
		# Train estimator, export checkpoint.
		tf.estimator.train_and_evaluate(estimator, ...)
		
		# Instantiate estimator with annotations with the same configuration as the
		# ordinary estimator.
		estimator_with_annotations = (
		  tf.contrib.estimator.DNNClassifierWithLayerAnnotations(
		    config, feature_columns, hidden_units, ...))
		
		# Call export_savedmodel with the same arguments as the ordinary estimator,
		# using the checkpoint produced for the ordinary estimator.
		estimator_with_annotations.export_saved_model(
		  export_dir_base, serving_input_receiver, ...
		  checkpoint_path='/path/to/ordinary/estimator/checkpoint/model.ckpt-1234')
		
		Args:
		  hidden_units: Iterable of number hidden units per layer. All layers are
		    fully connected. Ex. `[64, 32]` means first layer has 64 nodes and second
		    one has 32.
		  feature_columns: An iterable containing all the feature columns used by the
		    model. All items in the set should be instances of classes derived from
		    `_FeatureColumn`.
		  model_dir: Directory to save model parameters, graph and etc. This can also
		    be used to load checkpoints from the directory into a estimator to
		    continue training a previously saved model.
		  n_classes: Number of label classes. Defaults to 2, namely binary
		    classification. Must be > 1.
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example. If it is a string, it is
		    used as a key to fetch weight tensor from the `features`. If it is a
		    `_NumericColumn`, raw tensor is fetched by key `weight_column.key`, then
		    weight_column.normalizer_fn is applied on it to get weight tensor.
		  label_vocabulary: A list of strings represents possible label values. If
		    given, labels must be string type and have any value in
		    `label_vocabulary`. If it is not given, that means labels are already
		    encoded as integer or float within [0, 1] for `n_classes=2` and encoded as
		    integer values in {0, 1,..., n_classes-1} for `n_classes`>2 . Also there
		    will be errors if vocabulary is not provided and labels are string.
		  optimizer: An instance of `tf.Optimizer` used to train the model. Defaults
		    to Adagrad optimizer.
		  activation_fn: Activation function applied to each layer. If `None`, will
		    use `tf.nn.relu`.
		  dropout: When not `None`, the probability we will drop out a given
		    coordinate.
		  input_layer_partitioner: Optional. Partitioner for input layer. Defaults to
		    `min_max_variable_partitioner` with `min_slice_size` 64 << 20.
		  config: `RunConfig` object to configure the runtime settings.
		  warm_start_from: A string filepath to a checkpoint to warm-start from, or a
		    `WarmStartSettings` object to fully configure warm-starting.  If the
		    string filepath is provided instead of a `WarmStartSettings`, then all
		    weights are warm-started, and it is assumed that vocabularies and Tensor
		    names are unchanged.
		  loss_reduction: One of `tf.losses.Reduction` except `NONE`. Describes how to
		    reduce training loss over batch. Defaults to `SUM`.
		
		Returns:
		  DNNClassifier with layer annotations.
	**/
	static public function DNNClassifierWithLayerAnnotations(hidden_units:Dynamic, feature_columns:Dynamic, ?model_dir:Dynamic, ?n_classes:Dynamic, ?weight_column:Dynamic, ?label_vocabulary:Dynamic, ?optimizer:Dynamic, ?activation_fn:Dynamic, ?dropout:Dynamic, ?input_layer_partitioner:Dynamic, ?config:Dynamic, ?warm_start_from:Dynamic, ?loss_reduction:Dynamic):Dynamic;
	/**
		A regressor for TensorFlow DNN models with layer annotations.
		
		This regressor is fuctionally identical to estimator.DNNRegressor as far as
		training and evaluating models is concerned. The key difference is that this
		classifier adds additional layer annotations, which can be used for computing
		Integrated Gradients.
		
		Integrated Gradients is a method for attributing a classifier's predictions
		to its input features (https://arxiv.org/pdf/1703.01365.pdf). Given an input
		instance, the method assigns attribution scores to individual features in
		proportion to the feature's importance to the classifier's prediction.
		
		See estimator.DNNRegressor for example code for training and evaluating models
		using this regressor.
		
		This regressor is checkpoint-compatible with estimator.DNNRegressor and
		therefore the following should work seamlessly:
		
		# Instantiate ordinary estimator as usual.
		estimator = tf.estimator.DNNRegressor(
		  config, feature_columns, hidden_units, ...)
		
		# Train estimator, export checkpoint.
		tf.estimator.train_and_evaluate(estimator, ...)
		
		# Instantiate estimator with annotations with the same configuration as the
		# ordinary estimator.
		estimator_with_annotations = (
		  tf.contrib.estimator.DNNRegressorWithLayerAnnotations(
		    config, feature_columns, hidden_units, ...))
		
		# Call export_savedmodel with the same arguments as the ordinary estimator,
		# using the checkpoint produced for the ordinary estimator.
		estimator_with_annotations.export_saved_model(
		  export_dir_base, serving_input_receiver, ...
		  checkpoint_path='/path/to/ordinary/estimator/checkpoint/model.ckpt-1234')
		
		Args:
		  hidden_units: Iterable of number hidden units per layer. All layers are
		    fully connected. Ex. `[64, 32]` means first layer has 64 nodes and second
		    one has 32.
		  feature_columns: An iterable containing all the feature columns used by the
		    model. All items in the set should be instances of classes derived from
		    `_FeatureColumn`.
		  model_dir: Directory to save model parameters, graph and etc. This can also
		    be used to load checkpoints from the directory into a estimator to
		    continue training a previously saved model.
		  label_dimension: Number of regression targets per example. This is the size
		    of the last dimension of the labels and logits `Tensor` objects
		    (typically, these have shape `[batch_size, label_dimension]`).
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example. If it is a string, it is
		    used as a key to fetch weight tensor from the `features`. If it is a
		    `_NumericColumn`, raw tensor is fetched by key `weight_column.key`, then
		    weight_column.normalizer_fn is applied on it to get weight tensor.
		  optimizer: An instance of `tf.Optimizer` used to train the model. Defaults
		    to Adagrad optimizer.
		  activation_fn: Activation function applied to each layer. If `None`, will
		    use `tf.nn.relu`.
		  dropout: When not `None`, the probability we will drop out a given
		    coordinate.
		  input_layer_partitioner: Optional. Partitioner for input layer. Defaults to
		    `min_max_variable_partitioner` with `min_slice_size` 64 << 20.
		  config: `RunConfig` object to configure the runtime settings.
		  warm_start_from: A string filepath to a checkpoint to warm-start from, or a
		    `WarmStartSettings` object to fully configure warm-starting.  If the
		    string filepath is provided instead of a `WarmStartSettings`, then all
		    weights are warm-started, and it is assumed that vocabularies and Tensor
		    names are unchanged.
		  loss_reduction: One of `tf.losses.Reduction` except `NONE`. Describes how to
		    reduce training loss over batch. Defaults to `SUM`.
		
		Returns:
		  DNNRegressor with layer annotations.
	**/
	static public function DNNRegressorWithLayerAnnotations(hidden_units:Dynamic, feature_columns:Dynamic, ?model_dir:Dynamic, ?label_dimension:Dynamic, ?weight_column:Dynamic, ?optimizer:Dynamic, ?activation_fn:Dynamic, ?dropout:Dynamic, ?input_layer_partitioner:Dynamic, ?config:Dynamic, ?warm_start_from:Dynamic, ?loss_reduction:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Creates a new `tf.estimator.Estimator` which has given metrics.
		
		Example:
		
		```python
		  def my_auc(labels, predictions):
		    return {'auc': tf.metrics.auc(labels, predictions['logistic'])}
		
		  estimator = tf.estimator.DNNClassifier(...)
		  estimator = tf.contrib.estimator.add_metrics(estimator, my_auc)
		  estimator.train(...)
		  estimator.evaluate(...)
		```
		Example usage of custom metric which uses features:
		
		```python
		  def my_auc(features, labels, predictions):
		    return {'auc': tf.metrics.auc(
		      labels, predictions['logistic'], weights=features['weight'])}
		
		  estimator = tf.estimator.DNNClassifier(...)
		  estimator = tf.contrib.estimator.add_metrics(estimator, my_auc)
		  estimator.train(...)
		  estimator.evaluate(...)
		```
		
		Args:
		  estimator: A `tf.estimator.Estimator` object.
		  metric_fn: A function which should obey the following signature:
		    - Args: can only have following four arguments in any order:
		      * predictions: Predictions `Tensor` or dict of `Tensor` created by given
		        `estimator`.
		      * features: Input `dict` of `Tensor` objects created by `input_fn` which
		        is given to `estimator.evaluate` as an argument.
		      * labels:  Labels `Tensor` or dict of `Tensor` created by `input_fn`
		        which is given to `estimator.evaluate` as an argument.
		      * config: config attribute of the `estimator`.
		     - Returns:
		       Dict of metric results keyed by name. Final metrics are a union of this
		       and `estimator's` existing metrics. If there is a name conflict between
		       this and `estimator`s existing metrics, this will override the existing
		       one. The values of the dict are the results of calling a metric
		       function, namely a `(metric_tensor, update_op)` tuple.
		
		Returns:
		    A new `tf.estimator.Estimator` which has a union of original metrics with
		      given ones.
	**/
	static public function add_metrics(estimator:Dynamic, metric_fn:Dynamic):Dynamic;
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
	/**
		Trains a boosted tree classifier with in memory dataset.
		
		Example:
		
		```python
		bucketized_feature_1 = bucketized_column(
		  numeric_column('feature_1'), BUCKET_BOUNDARIES_1)
		bucketized_feature_2 = bucketized_column(
		  numeric_column('feature_2'), BUCKET_BOUNDARIES_2)
		
		def train_input_fn():
		  dataset = create-dataset-from-training-data
		  # This is tf.data.Dataset of a tuple of feature dict and label.
		  #   e.g. Dataset.zip((Dataset.from_tensors({'f1': f1_array, ...}),
		  #                     Dataset.from_tensors(label_array)))
		  # The returned Dataset shouldn't be batched.
		  # If Dataset repeats, only the first repetition would be used for training.
		  return dataset
		
		classifier = boosted_trees_classifier_train_in_memory(
		    train_input_fn,
		    feature_columns=[bucketized_feature_1, bucketized_feature_2],
		    n_trees=100,
		    ... <some other params>
		)
		
		def input_fn_eval():
		  ...
		  return dataset
		
		metrics = classifier.evaluate(input_fn=input_fn_eval, steps=10)
		```
		
		Args:
		  train_input_fn: the input function returns a dataset containing a single
		    epoch of *unbatched* features and labels.
		  feature_columns: An iterable containing all the feature columns used by
		    the model. All items in the set should be instances of classes derived
		    from `FeatureColumn`.
		  model_dir: Directory to save model parameters, graph and etc. This can
		    also be used to load checkpoints from the directory into a estimator
		    to continue training a previously saved model.
		  n_classes: number of label classes. Default is binary classification.
		    Multiclass support is not yet implemented.
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		    weights. It is used to downweight or boost examples during training. It
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
		  n_trees: number trees to be created.
		  max_depth: maximum depth of the tree to grow.
		  learning_rate: shrinkage parameter to be used when a tree added to the
		    model.
		  l1_regularization: regularization multiplier applied to the absolute
		    weights of the tree leafs.
		  l2_regularization: regularization multiplier applied to the square weights
		    of the tree leafs.
		  tree_complexity: regularization factor to penalize trees with more leaves.
		  min_node_weight: minimum hessian a node must have for a split to be
		      considered. The value will be compared with sum(leaf_hessian)/
		      (batch_size * n_batches_per_layer).
		  config: `RunConfig` object to configure the runtime settings.
		  train_hooks: a list of Hook instances to be passed to estimator.train()
		  center_bias: Whether bias centering needs to occur. Bias centering refers
		      to the first node in the very first tree returning the prediction that
		      is aligned with the original labels distribution. For example, for
		      regression problems, the first node will return the mean of the labels.
		      For binary classification problems, it will return a logit for a prior
		      probability of label 1.
		  pruning_mode: one of 'none', 'pre', 'post' to indicate no pruning, pre-
		      pruning (do not split a node if not enough gain is observed) and post
		      pruning (build the tree up to a max depth and then prune branches with
		      negative gain). For pre and post pruning, you MUST provide
		      tree_complexity >0.
		
		Returns:
		  a `BoostedTreesClassifier` instance created with the given arguments and
		    trained with the data loaded up on memory from the input_fn.
		
		Raises:
		  ValueError: when wrong arguments are given or unsupported functionalities
		     are requested.
	**/
	static public function boosted_trees_classifier_train_in_memory(train_input_fn:Dynamic, feature_columns:Dynamic, ?model_dir:Dynamic, ?n_classes:Dynamic, ?weight_column:Dynamic, ?label_vocabulary:Dynamic, ?n_trees:Dynamic, ?max_depth:Dynamic, ?learning_rate:Dynamic, ?l1_regularization:Dynamic, ?l2_regularization:Dynamic, ?tree_complexity:Dynamic, ?min_node_weight:Dynamic, ?config:Dynamic, ?train_hooks:Dynamic, ?center_bias:Dynamic, ?pruning_mode:Dynamic):Dynamic;
	/**
		Trains a boosted tree regressor with in memory dataset.
		
		Example:
		
		```python
		bucketized_feature_1 = bucketized_column(
		  numeric_column('feature_1'), BUCKET_BOUNDARIES_1)
		bucketized_feature_2 = bucketized_column(
		  numeric_column('feature_2'), BUCKET_BOUNDARIES_2)
		
		def train_input_fn():
		  dataset = create-dataset-from-training-data
		  # This is tf.data.Dataset of a tuple of feature dict and label.
		  #   e.g. Dataset.zip((Dataset.from_tensors({'f1': f1_array, ...}),
		  #                     Dataset.from_tensors(label_array)))
		  # The returned Dataset shouldn't be batched.
		  # If Dataset repeats, only the first repetition would be used for training.
		  return dataset
		
		regressor = boosted_trees_regressor_train_in_memory(
		    train_input_fn,
		    feature_columns=[bucketized_feature_1, bucketized_feature_2],
		    n_trees=100,
		    ... <some other params>
		)
		
		def input_fn_eval():
		  ...
		  return dataset
		
		metrics = regressor.evaluate(input_fn=input_fn_eval, steps=10)
		```
		
		Args:
		  train_input_fn: the input function returns a dataset containing a single
		    epoch of *unbatched* features and labels.
		  feature_columns: An iterable containing all the feature columns used by
		    the model. All items in the set should be instances of classes derived
		    from `FeatureColumn`.
		  model_dir: Directory to save model parameters, graph and etc. This can
		    also be used to load checkpoints from the directory into a estimator
		    to continue training a previously saved model.
		  label_dimension: Number of regression targets per example.
		    Multi-dimensional support is not yet implemented.
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		    weights. It is used to downweight or boost examples during training. It
		    will be multiplied by the loss of the example. If it is a string, it is
		    used as a key to fetch weight tensor from the `features`. If it is a
		    `_NumericColumn`, raw tensor is fetched by key `weight_column.key`,
		    then weight_column.normalizer_fn is applied on it to get weight tensor.
		  n_trees: number trees to be created.
		  max_depth: maximum depth of the tree to grow.
		  learning_rate: shrinkage parameter to be used when a tree added to the
		    model.
		  l1_regularization: regularization multiplier applied to the absolute
		    weights of the tree leafs.
		  l2_regularization: regularization multiplier applied to the square weights
		    of the tree leafs.
		  tree_complexity: regularization factor to penalize trees with more leaves.
		  min_node_weight: minimum hessian a node must have for a split to be
		      considered. The value will be compared with sum(leaf_hessian)/
		      (batch_size * n_batches_per_layer).
		  config: `RunConfig` object to configure the runtime settings.
		  train_hooks: a list of Hook instances to be passed to estimator.train().
		  center_bias: Whether bias centering needs to occur. Bias centering refers
		      to the first node in the very first tree returning the prediction that
		      is aligned with the original labels distribution. For example, for
		      regression problems, the first node will return the mean of the labels.
		      For binary classification problems, it will return a logit for a prior
		      probability of label 1.
		  pruning_mode: one of 'none', 'pre', 'post' to indicate no pruning, pre-
		      pruning (do not split a node if not enough gain is observed) and post
		      pruning (build the tree up to a max depth and then prune branches with
		      negative gain). For pre and post pruning, you MUST provide
		      tree_complexity >0.
		
		Returns:
		  a `BoostedTreesClassifier` instance created with the given arguments and
		    trained with the data loaded up on memory from the input_fn.
		
		Raises:
		  ValueError: when wrong arguments are given or unsupported functionalities
		     are requested.
	**/
	static public function boosted_trees_regressor_train_in_memory(train_input_fn:Dynamic, feature_columns:Dynamic, ?model_dir:Dynamic, ?label_dimension:Dynamic, ?weight_column:Dynamic, ?n_trees:Dynamic, ?max_depth:Dynamic, ?learning_rate:Dynamic, ?l1_regularization:Dynamic, ?l2_regularization:Dynamic, ?tree_complexity:Dynamic, ?min_node_weight:Dynamic, ?config:Dynamic, ?train_hooks:Dynamic, ?center_bias:Dynamic, ?pruning_mode:Dynamic):Dynamic;
	/**
		Build a supervised_input_receiver_fn for raw features and labels.
		
		This function wraps tensor placeholders in a supervised_receiver_fn
		with the expectation that the features and labels appear precisely as
		the model_fn expects them. Features and labels can therefore be dicts of
		tensors, or raw tensors.
		
		Args:
		  features: a dict of string to `Tensor` or `Tensor`.
		  labels: a dict of string to `Tensor` or `Tensor`.
		  default_batch_size: the number of query examples expected per batch.
		      Leave unset for variable batch size (recommended).
		
		Returns:
		  A supervised_input_receiver_fn.
		
		Raises:
		  ValueError: if features and labels have overlapping keys.
	**/
	static public function build_raw_supervised_input_receiver_fn(features:Dynamic, labels:Dynamic, ?default_batch_size:Dynamic):Dynamic;
	/**
		Get a function that returns a SupervisedInputReceiver matching an input_fn.
		
		Note that this function calls the input_fn in a local graph in order to
		extract features and labels. Placeholders are then created from those
		features and labels in the default graph.
		
		Args:
		  input_fn: An Estimator input_fn, which is a function that returns one of:
		
		    * A 'tf.data.Dataset' object: Outputs of `Dataset` object must be a
		        tuple (features, labels) with same constraints as below.
		    * A tuple (features, labels): Where `features` is a `Tensor` or a
		      dictionary of string feature name to `Tensor` and `labels` is a
		      `Tensor` or a dictionary of string label name to `Tensor`. Both
		      `features` and `labels` are consumed by `model_fn`. They should
		      satisfy the expectation of `model_fn` from inputs.
		
		  **input_fn_args: set of kwargs to be passed to the input_fn. Note that
		    these will not be checked or validated here, and any errors raised by
		    the input_fn will be thrown to the top.
		
		Returns:
		  A function taking no arguments that, when called, returns a
		  SupervisedInputReceiver. This function can be passed in as part of the
		  input_receiver_map when exporting SavedModels from Estimator with multiple
		  modes.
	**/
	static public function build_supervised_input_receiver_fn_from_input_fn(input_fn:Dynamic, ?input_fn_args:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calls logit_fn.
		
		A utility function that calls the provided logit_fn with the relevant subset
		of provided arguments.  Similar to tf.estimator._call_model_fn().
		
		Args:
		  logit_fn: A logit_fn as defined above.
		  features: The features dict.
		  mode: TRAIN / EVAL / PREDICT ModeKeys.
		  params: The hyperparameter dict.
		  config: The configuration object.
		
		Returns:
		  A logit Tensor, the output of logit_fn.
		
		Raises:
		  ValueError: if logit_fn does not return a Tensor or a dictionary mapping
		    strings to Tensors.
	**/
	static public function call_logit_fn(logit_fn:Dynamic, features:Dynamic, mode:Dynamic, params:Dynamic, config:Dynamic):Dynamic;
	/**
		Returns an optimizer which clips gradients before applying them.
		
		Example:
		
		```python
		optimizer = tf.train.ProximalAdagradOptimizer(
		    learning_rate=0.1,
		    l1_regularization_strength=0.001)
		optimizer = tf.contrib.estimator.clip_gradients_by_norm(
		    optimizer, clip_norm)
		estimator = tf.estimator.DNNClassifier(
		    feature_columns=[...],
		    hidden_units=[1024, 512, 256],
		    optimizer=optimizer)
		```
		
		Args:
		  optimizer: An `tf.Optimizer` object to apply gradients.
		  clip_norm: A 0-D (scalar) `Tensor` > 0. The clipping ratio.
		
		Returns:
		  A `tf.Optimizer`.
	**/
	static public function clip_gradients_by_norm(optimizer:Dynamic, clip_norm:Dynamic):Dynamic;
	/**
		Function builder for a dnn logit_fn.
		
		Args:
		  units: An int indicating the dimension of the logit layer.  In the
		    MultiHead case, this should be the sum of all component Heads' logit
		    dimensions.
		  hidden_units: Iterable of integer number of hidden units per layer.
		  feature_columns: Iterable of `feature_column._FeatureColumn` model inputs.
		  activation_fn: Activation function applied to each layer.
		  dropout: When not `None`, the probability we will drop out a given
		    coordinate.
		  input_layer_partitioner: Partitioner for input layer.
		  batch_norm: Whether to use batch normalization after each hidden layer.
		  shared_state_manager: A SharedEmbeddingStateManager object to hold the
		    shared state for SharedEmbeddingColumn's.
		
		Returns:
		  A logit_fn (see below).
		
		Raises:
		  ValueError: If units is not an int.
	**/
	static public function dnn_logit_fn_builder(units:Dynamic, hidden_units:Dynamic, feature_columns:Dynamic, activation_fn:Dynamic, dropout:Dynamic, input_layer_partitioner:Dynamic, batch_norm:Dynamic, ?shared_state_manager:Dynamic):Dynamic;
	/**
		Exports requested train/eval/predict graphs as separate SavedModels.
		
		See tf.contrib.estimator.export_all_saved_models for the currently
		exposed version of this function.
		
		For each mode passed in via the input_receiver_fn_map,
		this method builds a new graph by calling the input_receiver_fn to obtain
		feature and label `Tensor`s. Next, this method calls the `Estimator`'s
		model_fn in the passed mode to generate the model graph based on
		those features and labels, and restores the given checkpoint
		(or, lacking that, the most recent checkpoint) into the graph.
		Only one of the modes is used for saving variables to the SavedModel
		(order of preference: TRAIN, EVAL, then PREDICT), such that up to three
		MetaGraphDefs are saved with a single set of variables in a single
		SavedModel directory.
		
		For prediction, the exported `MetaGraphDef` will provide one `SignatureDef`
		for each element of the export_outputs dict returned from the model_fn,
		named using the same keys.  One of these keys is always
		signature_constants.DEFAULT_SERVING_SIGNATURE_DEF_KEY, indicating which
		signature will be served when a serving request does not specify one.
		For each signature, the outputs are provided by the corresponding
		`ExportOutput`s, and the inputs are always the input receivers provided by
		the serving_input_receiver_fn.
		
		For training and evaluation, the train_op is stored in an extra collection,
		and loss, metrics, and predictions are included in a SignatureDef for the
		mode in question.
		
		Extra assets may be written into the SavedModel via the assets_extra
		argument.  This should be a dict, where each key gives a destination path
		(including the filename) relative to the assets.extra directory.  The
		corresponding value gives the full path of the source file to be copied.
		For example, the simple case of copying a single file without renaming it
		is specified as `{'my_asset_file.txt': '/path/to/my_asset_file.txt'}`.
		
		Sample usage:
		```python
		classifier = tf.estimator.LinearClassifier(
		    feature_columns=[age, language])
		classifier.train(input_fn=input_fn)
		
		feature_spec = {
		    'age': tf.placeholder(dtype=tf.int64),
		    'language': array_ops.placeholder(dtype=tf.string)
		}
		label_spec = tf.placeholder(dtype=dtypes.int64)
		
		train_rcvr_fn = tf.contrib.estimator.build_raw_supervised_input_receiver_fn(
		    feature_spec, label_spec)
		
		serve_rcvr_fn = tf.estimator.export.build_parsing_serving_input_receiver_fn(
		    feature_spec)
		
		rcvr_fn_map = {
		    model_fn_lib.ModeKeys.TRAIN: train_rcvr_fn,
		    model_fn_lib.ModeKeys.PREDICT: serve_rcvr_fn,
		}
		
		export_dir = tf.contrib.estimator.export_all_saved_models(
		    classifier,
		    export_dir_base='my_model/',
		    input_receiver_fn_map=rcvr_fn_map)
		
		# export_dirs is a dict of directories with SavedModels, which
		# can be used for serving, analysis with TFMA, or directly loaded in.
		with ops.Graph().as_default() as graph:
		  with session.Session(graph=graph) as sess:
		    loader.load(sess, [tag_constants.TRAINING], export_dir)
		    weights = graph.get_tensor_by_name('linear/linear_model/age/weights')
		    ...
		```
		
		Args:
		  estimator: an instance of tf.estimator.Estimator
		  export_dir_base: A string containing a directory in which to create
		    timestamped subdirectories containing exported SavedModels.
		  input_receiver_fn_map: dict of tf.estimator.ModeKeys to input_receiver_fn
		    mappings, where the input_receiver_fn is a function that takes no
		    argument and returns the appropriate subclass of `InputReceiver`.
		  assets_extra: A dict specifying how to populate the assets.extra directory
		    within the exported SavedModel, or `None` if no extra assets are needed.
		  as_text: whether to write the SavedModel proto in text format.
		  checkpoint_path: The checkpoint path to export.  If `None` (the default),
		    the most recent checkpoint found within the model directory is chosen.
		  strip_default_attrs: Boolean. If `True`, default-valued attributes will be
		    removed from the NodeDefs. For a detailed guide, see
		    [Stripping Default-Valued Attributes](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/saved_model/README.md#stripping-default-valued-attributes).
		
		Returns:
		  A dict of tf.estimator.ModeKeys value to string path for each exported
		  directory.
		
		Raises:
		  ValueError: if any input_receiver_fn is None, no export_outputs
		    are provided, or no checkpoint can be found.
	**/
	static public function export_all_saved_models(estimator:Dynamic, export_dir_base:Dynamic, input_receiver_fn_map:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?checkpoint_path:Dynamic, ?strip_default_attrs:Dynamic):Dynamic;
	/**
		Exports a single train/eval/predict graph as a SavedModel.
		
		For a detailed guide, see [Using SavedModel with Estimators](
		https://tensorflow.org/guide/saved_model#using_savedmodel_with_estimators).
		
		Sample usage:
		```python
		classifier = tf.estimator.LinearClassifier(
		    feature_columns=[age, language])
		classifier.train(input_fn=input_fn, steps=1000)
		
		feature_spec = {
		    'age': tf.placeholder(dtype=tf.int64),
		    'language': array_ops.placeholder(dtype=tf.string)
		}
		label_spec = tf.placeholder(dtype=dtypes.int64)
		
		train_rcvr_fn = tf.contrib.estimator.build_raw_supervised_input_receiver_fn(
		    feature_spec, label_spec)
		
		export_dir = tf.contrib.estimator.export_saved_model_for_mode(
		    classifier,
		    export_dir_base='my_model/',
		    input_receiver_fn=train_rcvr_fn,
		    mode=model_fn_lib.ModeKeys.TRAIN)
		
		# export_dir is a timestamped directory with the SavedModel, which
		# can be used for serving, analysis with TFMA, or directly loaded in.
		with ops.Graph().as_default() as graph:
		  with session.Session(graph=graph) as sess:
		    loader.load(sess, [tag_constants.TRAINING], export_dir)
		    weights = graph.get_tensor_by_name(''linear/linear_model/age/weights')
		    ...
		```
		
		This method is a wrapper for _export_all_saved_models, and wraps a raw
		input_receiver_fn in a dictionary to pass in to that function.
		See _export_all_saved_models for full docs.
		
		See tf.contrib.estimator.export_saved_model_for_mode for the currently
		exposed version of this function.
		
		Args:
		  estimator: an instance of tf.estimator.Estimator
		  export_dir_base: A string containing a directory in which to create
		    timestamped subdirectories containing exported SavedModels.
		  input_receiver_fn: a function that takes no argument and
		    returns the appropriate subclass of `InputReceiver`.
		  assets_extra: A dict specifying how to populate the assets.extra directory
		    within the exported SavedModel, or `None` if no extra assets are needed.
		  as_text: whether to write the SavedModel proto in text format.
		  checkpoint_path: The checkpoint path to export.  If `None` (the default),
		    the most recent checkpoint found within the model directory is chosen.
		  strip_default_attrs: Boolean. If `True`, default-valued attributes will be
		    removed from the NodeDefs. For a detailed guide, see
		    [Stripping Default-Valued Attributes](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/saved_model/README.md#stripping-default-valued-attributes).
		  mode: tf.estimator.ModeKeys value indicating with mode will be exported.
		
		Returns:
		  The string path to the exported directory.
		
		Raises:
		  ValueError: if input_receiver_fn is None, no export_outputs
		    are provided, or no checkpoint can be found.
	**/
	static public function export_saved_model_for_mode(estimator:Dynamic, export_dir_base:Dynamic, input_receiver_fn:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?checkpoint_path:Dynamic, ?strip_default_attrs:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Forward features to predictions dictionary.
		
		In some cases, user wants to see some of the features in estimators prediction
		output. As an example, consider a batch prediction service: The service simply
		runs inference on the users graph and returns the results. Keys are essential
		because there is no order guarantee on the outputs so they need to be rejoined
		to the inputs via keys or transclusion of the inputs in the outputs.
		Example:
		```python
		  def input_fn():
		    features, labels = ...
		    features['unique_example_id'] = ...
		    features, labels
		  estimator = tf.estimator.LinearClassifier(...)
		  estimator = tf.contrib.estimator.forward_features(
		      estimator, 'unique_example_id')
		  estimator.train(...)
		  assert 'unique_example_id' in estimator.predict(...)
		```
		Args:
		  estimator: A `tf.estimator.Estimator` object.
		  keys: A `string` or a `list` of `string`. If it is `None`, all of the
		    `features` in `dict` is forwarded to the `predictions`. If it is a
		    `string`, only given key is forwarded. If it is a `list` of strings, all
		    the given `keys` are forwarded.
		  sparse_default_values: A dict of `str` keys mapping the name of the sparse
		    features to be converted to dense, to the default value to use. Only
		    sparse features indicated in the dictionary are converted to dense and the
		    provided default value is used.
		
		Returns:
		    A new `tf.estimator.Estimator` which forwards features to predictions.
		Raises:
		  ValueError:
		    * if `keys` is already part of `predictions`. We don't allow
		      override.
		    * if 'keys' does not exist in `features`.
		  TypeError: if `keys` type is not one of `string` or list/tuple of `string`.
	**/
	static public function forward_features(estimator:Dynamic, ?keys:Dynamic, ?sparse_default_values:Dynamic):Dynamic;
	/**
		Function builder for a linear logit_fn.
		
		Args:
		  units: An int indicating the dimension of the logit layer.
		  feature_columns: An iterable containing all the feature columns used by
		    the model.
		  sparse_combiner: A string specifying how to reduce if a categorical column
		    is multivalent.  One of "mean", "sqrtn", and "sum".
		
		Returns:
		  A logit_fn (see below).
	**/
	static public function linear_logit_fn_builder(units:Dynamic, feature_columns:Dynamic, ?sparse_combiner:Dynamic):Dynamic;
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
		Creates early-stopping hook.
		
		Returns a `SessionRunHook` that stops training when `should_stop_fn` returns
		`True`.
		
		Usage example:
		
		```python
		estimator = ...
		hook = early_stopping.make_early_stopping_hook(
		    estimator, should_stop_fn=make_stop_fn(...))
		train_spec = tf.estimator.TrainSpec(..., hooks=[hook])
		tf.estimator.train_and_evaluate(estimator, train_spec, ...)
		```
		
		Caveat: Current implementation supports early-stopping both training and
		evaluation in local mode. In distributed mode, training can be stopped but
		evaluation (where it's a separate job) will indefinitely wait for new model
		checkpoints to evaluate, so you will need other means to detect and stop it.
		Early-stopping evaluation in distributed mode requires changes in
		`train_and_evaluate` API and will be addressed in a future revision.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance.
		  should_stop_fn: `callable`, function that takes no arguments and returns a
		    `bool`. If the function returns `True`, stopping will be initiated by the
		    chief.
		  run_every_secs: If specified, calls `should_stop_fn` at an interval of
		    `run_every_secs` seconds. Defaults to 60 seconds. Either this or
		    `run_every_steps` must be set.
		  run_every_steps: If specified, calls `should_stop_fn` every
		    `run_every_steps` steps. Either this or `run_every_secs` must be set.
		
		Returns:
		  A `SessionRunHook` that periodically executes `should_stop_fn` and initiates
		  early stopping if the function returns `True`.
		
		Raises:
		  TypeError: If `estimator` is not of type `tf.estimator.Estimator`.
		  ValueError: If both `run_every_secs` and `run_every_steps` are set.
	**/
	static public function make_early_stopping_hook(estimator:Dynamic, should_stop_fn:Dynamic, ?run_every_secs:Dynamic, ?run_every_steps:Dynamic):Dynamic;
	/**
		Creates a proper StopAtCheckpointStepHook based on chief status.
	**/
	static public function make_stop_at_checkpoint_step_hook(estimator:Dynamic, last_step:Dynamic, ?wait_after_file_check_secs:Dynamic):Dynamic;
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
		Creates a `_Head` for multi-objective learning.
		
		This class merges the output of multiple `_Head` objects.
		Specifically:
		* For training, sums losses of each head, calls `train_op_fn` with this
		  final loss.
		* For eval, merges metrics by adding `head.name` suffix to the keys in eval
		  metrics, such as `precision/head1`, `precision/head2`.
		* For prediction, merges predictions and updates keys in prediction dict to a
		  2-tuple, `(head.name, prediction_key)`. Merges `export_outputs` such that
		  by default the first head is served.
		
		Usage:
		
		```python
		# In `input_fn` specify labels as a dict keyed by head name:
		def input_fn():
		  features = ...
		  labels1 = ...
		  labels2 = ...
		  return features, {'head1': labels1, 'head2': labels2}
		
		# In `model_fn`, specify logits as a dict keyed by head name:
		def model_fn(features, labels, mode):
		  # Create simple heads and specify head name.
		  head1 = multi_class_head(n_classes=3, name='head1')
		  head2 = binary_classification_head(name='head2')
		  # Create multi-head from two simple heads.
		  head = multi_head([head1, head2])
		  # Create logits for each head, and combine them into a dict.
		  logits1, logits2 = logit_fn()
		  logits = {'head1': logits1, 'head2': logits2}
		  # Return the merged EstimatorSpec
		  return head.create_estimator_spec(..., logits=logits, ...)
		
		# Create an estimator with this model_fn.
		estimator = tf.estimator.Estimator(model_fn=model_fn)
		estimator.train(input_fn=input_fn, steps=100)
		```
		
		Also supports `logits` as a `Tensor` of shape
		`[D0, D1, ... DN, logits_dimension]`. It will split the `Tensor` along the
		last dimension and distribute it appropriately among the heads. E.g.:
		
		```python
		def model_fn(features, labels, mode):
		  # Create simple heads and specify head name.
		  head1 = multi_class_head(n_classes=3, name='head1')
		  head2 = binary_classification_head(name='head2')
		  # Create multi-head from two simple heads.
		  head = multi_head([head1, head2])
		  # Create logits for the multihead.
		  logits = logit_fn(logits_dimension=head.logits_dimension)
		  # Return the merged EstimatorSpec
		  return head.create_estimator_spec(..., logits=logits, ...)
		```
		
		Args:
		  heads: List or tuple of `_Head` instances. All heads must have `name`
		    specified. The first head in the list is the default used at serving time.
		  head_weights: Optional list of weights, same length as `heads`. Used when
		    merging losses to calculate the weighted sum of losses from each head. If
		    `None`, all losses are weighted equally.
		
		Returns:
		  A instance of `_Head` that merges multiple heads.
		
		Raises:
		  ValueError: If `heads` is empty.
		  ValueError: If any of the `heads` does not have `name` specified.
		  ValueError: If `heads` and `head_weights` have different size.
	**/
	static public function multi_head(heads:Dynamic, ?head_weights:Dynamic):Dynamic;
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
	/**
		Helper to read eval metrics from eval summary files.
		
		Args:
		  eval_dir: Directory containing summary files with eval metrics.
		
		Returns:
		  A `dict` with global steps mapping to `dict` of metric names and values.
	**/
	static public function read_eval_metrics(eval_dir:Dynamic):Dynamic;
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
	/**
		Replicate `Estimator.model_fn` over GPUs. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-05-31.
		Instructions for updating:
		Please use `tf.contrib.distribute.MirroredStrategy` instead.
		
		The given `model_fn` specifies a single forward pass of a model.  To replicate
		such a model over GPUs, each GPU gets its own instance of the forward pass
		(a.k.a. a tower).  The input features and labels get sharded into the chunks
		that correspond to the number of GPUs.  Each tower computes a loss based
		on its input.  For each such loss, gradients are computed.  After that, the
		available losses are aggregated to form aggregated loss.  Available
		gradients are summed.  Then, they update weights using the specified
		optimizer.
		
		If `devices` are `None`, then all available GPUs are going to be used for
		replication.  If no GPUs are available, then the model is going to be
		placed on the CPU.
		
		Two modes of local replication over available GPUs are supported:
		  1)  If exactly 1 GPU is detected, then variables and operations are placed
		      onto the GPU.
		  2)  If more than 1 GPU is detected, then variables are going to be placed on
		      the CPU.  Replicas of operations are placed on each individual GPU.
		
		Here is an example of how one might use their `model_fn` to run over GPUs:
		  ```python
		     ...
		     def model_fn(...):  # See `model_fn` in `Estimator`.
		       loss = ...
		       optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.001)
		       optimizer = tf.contrib.estimator.TowerOptimizer(optimizer)
		       if mode == tf.estimator.ModeKeys.TRAIN:
		         #  See the section below on `EstimatorSpec.train_op`.
		         return EstimatorSpec(mode=mode, loss=loss,
		                              train_op=optimizer.minimize(loss))
		
		       #  No change for `ModeKeys.EVAL` or `ModeKeys.PREDICT`.
		       return EstimatorSpec(...)
		     ...
		     classifier = tf.estimator.Estimator(
		       model_fn=tf.contrib.estimator.replicate_model_fn(model_fn))
		  ```
		
		Please see `DNNClassifierIntegrationTest` for an example with a canned
		Estimator.
		
		On `EstimatorSpec.train_op`:
		`model_fn` returns `EstimatorSpec.train_op` for
		`tf.estimator.GraphKeys.TRAIN`. It is typically derived using an optimizer.
		Towers are expected to populate it in the same way.  Gradients from all towers
		are reduced and applied in the last tower.  To achieve that in the case of
		multiple towers, `TowerOptimizer` needs to be used.  See `TowerOptimizer`.
		
		On sharding input features and labels:
		Input features and labels are split for consumption by each tower. They are
		split across the dimension 0.  Features and labels need to be batch major.
		
		On reduction algorithms:
		Certain algorithms were chosen for aggregating results of computations on
		multiple towers:
		  - Losses from all towers are reduced according to `loss_reduction`.
		  - Gradients from all towers are reduced according to `loss_reduction`
		    for each trainable variable.
		  - `eval_metrics_ops` are reduced per metric using `reduce_mean`.
		  - `EstimatorSpec.predictions` and `EstimatorSpec.export_outputs` are
		    reduced using concatenation.
		  - For all other fields of `EstimatorSpec` the values of the first tower
		    are taken.
		
		On distribution of variables:
		Variables are not duplicated between towers.  Instead, they are placed on a
		single device as defined above and shared across towers.
		
		On overhead:
		If only one device is specified, then aggregation of loss and gradients
		doesn't happen. Replication consists of placing `model_fn` onto the
		specified device.
		
		On current limitations:
		  - `predictions` are not supported for `ModeKeys.EVAL`.  They are required
		     for `tf.contrib.estimator.add_metrics`.
		
		Args:
		  model_fn: `model_fn` as defined in `Estimator`.  See the section above about
		    the train_op argument of `EstimatorSpec`.
		  loss_reduction: controls whether losses are summed or averaged.
		  devices: Optional list of devices to replicate the model across.  This
		    argument can be used to replicate only on the subset of available GPUs.
		    If `None`, then all available GPUs are going to be used for replication.
		    If no GPUs are available, then the model is going to be placed on the CPU.
		
		Raises:
		  ValueError: if there is no `loss_reduction` or if TowerOptimizer is
		    mis-used.
		
		Returns:
		  A replicated version of the supplied `model_fn`. Returned function that
		    conforms to the requirements of `Estimator`'s `model_fn` and can be used
		    instead of the supplied `model_fn`.
	**/
	static public function replicate_model_fn(model_fn:Dynamic, ?loss_reduction:Dynamic, ?devices:Dynamic):Dynamic;
	/**
		Creates hook to stop if the given metric is higher than the threshold.
		
		Usage example:
		
		```python
		estimator = ...
		# Hook to stop training if accuracy becomes higher than 0.9.
		hook = early_stopping.stop_if_higher_hook(estimator, "accuracy", 0.9)
		train_spec = tf.estimator.TrainSpec(..., hooks=[hook])
		tf.estimator.train_and_evaluate(estimator, train_spec, ...)
		```
		
		Caveat: Current implementation supports early-stopping both training and
		evaluation in local mode. In distributed mode, training can be stopped but
		evaluation (where it's a separate job) will indefinitely wait for new model
		checkpoints to evaluate, so you will need other means to detect and stop it.
		Early-stopping evaluation in distributed mode requires changes in
		`train_and_evaluate` API and will be addressed in a future revision.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance.
		  metric_name: `str`, metric to track. "loss", "accuracy", etc.
		  threshold: Numeric threshold for the given metric.
		  eval_dir: If set, directory containing summary files with eval metrics. By
		    default, `estimator.eval_dir()` will be used.
		  min_steps: `int`, stop is never requested if global step is less than this
		    value. Defaults to 0.
		  run_every_secs: If specified, calls `should_stop_fn` at an interval of
		    `run_every_secs` seconds. Defaults to 60 seconds. Either this or
		    `run_every_steps` must be set.
		  run_every_steps: If specified, calls `should_stop_fn` every
		    `run_every_steps` steps. Either this or `run_every_secs` must be set.
		
		Returns:
		  An early-stopping hook of type `SessionRunHook` that periodically checks
		  if the given metric is higher than specified threshold and initiates
		  early stopping if true.
	**/
	static public function stop_if_higher_hook(estimator:Dynamic, metric_name:Dynamic, threshold:Dynamic, ?eval_dir:Dynamic, ?min_steps:Dynamic, ?run_every_secs:Dynamic, ?run_every_steps:Dynamic):Dynamic;
	/**
		Creates hook to stop if the given metric is lower than the threshold.
		
		Usage example:
		
		```python
		estimator = ...
		# Hook to stop training if loss becomes lower than 100.
		hook = early_stopping.stop_if_lower_hook(estimator, "loss", 100)
		train_spec = tf.estimator.TrainSpec(..., hooks=[hook])
		tf.estimator.train_and_evaluate(estimator, train_spec, ...)
		```
		
		Caveat: Current implementation supports early-stopping both training and
		evaluation in local mode. In distributed mode, training can be stopped but
		evaluation (where it's a separate job) will indefinitely wait for new model
		checkpoints to evaluate, so you will need other means to detect and stop it.
		Early-stopping evaluation in distributed mode requires changes in
		`train_and_evaluate` API and will be addressed in a future revision.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance.
		  metric_name: `str`, metric to track. "loss", "accuracy", etc.
		  threshold: Numeric threshold for the given metric.
		  eval_dir: If set, directory containing summary files with eval metrics. By
		    default, `estimator.eval_dir()` will be used.
		  min_steps: `int`, stop is never requested if global step is less than this
		    value. Defaults to 0.
		  run_every_secs: If specified, calls `should_stop_fn` at an interval of
		    `run_every_secs` seconds. Defaults to 60 seconds. Either this or
		    `run_every_steps` must be set.
		  run_every_steps: If specified, calls `should_stop_fn` every
		    `run_every_steps` steps. Either this or `run_every_secs` must be set.
		
		Returns:
		  An early-stopping hook of type `SessionRunHook` that periodically checks
		  if the given metric is lower than specified threshold and initiates
		  early stopping if true.
	**/
	static public function stop_if_lower_hook(estimator:Dynamic, metric_name:Dynamic, threshold:Dynamic, ?eval_dir:Dynamic, ?min_steps:Dynamic, ?run_every_secs:Dynamic, ?run_every_steps:Dynamic):Dynamic;
	/**
		Creates hook to stop if metric does not decrease within given max steps.
		
		Usage example:
		
		```python
		estimator = ...
		# Hook to stop training if loss does not decrease in over 100000 steps.
		hook = early_stopping.stop_if_no_decrease_hook(estimator, "loss", 100000)
		train_spec = tf.estimator.TrainSpec(..., hooks=[hook])
		tf.estimator.train_and_evaluate(estimator, train_spec, ...)
		```
		
		Caveat: Current implementation supports early-stopping both training and
		evaluation in local mode. In distributed mode, training can be stopped but
		evaluation (where it's a separate job) will indefinitely wait for new model
		checkpoints to evaluate, so you will need other means to detect and stop it.
		Early-stopping evaluation in distributed mode requires changes in
		`train_and_evaluate` API and will be addressed in a future revision.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance.
		  metric_name: `str`, metric to track. "loss", "accuracy", etc.
		  max_steps_without_decrease: `int`, maximum number of training steps with no
		    decrease in the given metric.
		  eval_dir: If set, directory containing summary files with eval metrics. By
		    default, `estimator.eval_dir()` will be used.
		  min_steps: `int`, stop is never requested if global step is less than this
		    value. Defaults to 0.
		  run_every_secs: If specified, calls `should_stop_fn` at an interval of
		    `run_every_secs` seconds. Defaults to 60 seconds. Either this or
		    `run_every_steps` must be set.
		  run_every_steps: If specified, calls `should_stop_fn` every
		    `run_every_steps` steps. Either this or `run_every_secs` must be set.
		
		Returns:
		  An early-stopping hook of type `SessionRunHook` that periodically checks
		  if the given metric shows no decrease over given maximum number of
		  training steps, and initiates early stopping if true.
	**/
	static public function stop_if_no_decrease_hook(estimator:Dynamic, metric_name:Dynamic, max_steps_without_decrease:Dynamic, ?eval_dir:Dynamic, ?min_steps:Dynamic, ?run_every_secs:Dynamic, ?run_every_steps:Dynamic):Dynamic;
	/**
		Creates hook to stop if metric does not increase within given max steps.
		
		Usage example:
		
		```python
		estimator = ...
		# Hook to stop training if accuracy does not increase in over 100000 steps.
		hook = early_stopping.stop_if_no_increase_hook(estimator, "accuracy", 100000)
		train_spec = tf.estimator.TrainSpec(..., hooks=[hook])
		tf.estimator.train_and_evaluate(estimator, train_spec, ...)
		```
		
		Caveat: Current implementation supports early-stopping both training and
		evaluation in local mode. In distributed mode, training can be stopped but
		evaluation (where it's a separate job) will indefinitely wait for new model
		checkpoints to evaluate, so you will need other means to detect and stop it.
		Early-stopping evaluation in distributed mode requires changes in
		`train_and_evaluate` API and will be addressed in a future revision.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance.
		  metric_name: `str`, metric to track. "loss", "accuracy", etc.
		  max_steps_without_increase: `int`, maximum number of training steps with no
		    increase in the given metric.
		  eval_dir: If set, directory containing summary files with eval metrics. By
		    default, `estimator.eval_dir()` will be used.
		  min_steps: `int`, stop is never requested if global step is less than this
		    value. Defaults to 0.
		  run_every_secs: If specified, calls `should_stop_fn` at an interval of
		    `run_every_secs` seconds. Defaults to 60 seconds. Either this or
		    `run_every_steps` must be set.
		  run_every_steps: If specified, calls `should_stop_fn` every
		    `run_every_steps` steps. Either this or `run_every_secs` must be set.
		
		Returns:
		  An early-stopping hook of type `SessionRunHook` that periodically checks
		  if the given metric shows no increase over given maximum number of
		  training steps, and initiates early stopping if true.
	**/
	static public function stop_if_no_increase_hook(estimator:Dynamic, metric_name:Dynamic, max_steps_without_increase:Dynamic, ?eval_dir:Dynamic, ?min_steps:Dynamic, ?run_every_secs:Dynamic, ?run_every_steps:Dynamic):Dynamic;
}