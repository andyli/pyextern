/* This file is generated, do not edit! */
package tensorflow.contrib.estimator.python.estimator.boosted_trees;
@:pythonImport("tensorflow.contrib.estimator.python.estimator.boosted_trees") extern class Boosted_trees_Module {
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Infers if the head is a classification head.
	**/
	static public function _is_classification_head(head:Dynamic):Dynamic;
	/**
		Validates whether the input_fn is valid, and repeat() if tf.Dataset.
	**/
	static public function _validate_input_fn_and_repeat_dataset(train_input_fn:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
		    also be used to load checkpoints from the directory into an estimator
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
		  quantile_sketch_epsilon: float between 0 and 1. Error bound for quantile
		      computation. This is only used for float feature columns, and the number
		      of buckets generated per float feature is 1/quantile_sketch_epsilon.
		
		Returns:
		  a `BoostedTreesClassifier` instance created with the given arguments and
		    trained with the data loaded up on memory from the input_fn.
		
		Raises:
		  ValueError: when wrong arguments are given or unsupported functionalities
		     are requested.
	**/
	static public function boosted_trees_classifier_train_in_memory(train_input_fn:Dynamic, feature_columns:Dynamic, ?model_dir:Dynamic, ?n_classes:Dynamic, ?weight_column:Dynamic, ?label_vocabulary:Dynamic, ?n_trees:Dynamic, ?max_depth:Dynamic, ?learning_rate:Dynamic, ?l1_regularization:Dynamic, ?l2_regularization:Dynamic, ?tree_complexity:Dynamic, ?min_node_weight:Dynamic, ?config:Dynamic, ?train_hooks:Dynamic, ?center_bias:Dynamic, ?pruning_mode:Dynamic, ?quantile_sketch_epsilon:Dynamic):Dynamic;
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
		    also be used to load checkpoints from the directory into an estimator
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
		  quantile_sketch_epsilon: float between 0 and 1. Error bound for quantile
		      computation. This is only used for float feature columns, and the number
		      of buckets generated per float feature is 1/quantile_sketch_epsilon.
		
		Returns:
		  a `BoostedTreesClassifier` instance created with the given arguments and
		    trained with the data loaded up on memory from the input_fn.
		
		Raises:
		  ValueError: when wrong arguments are given or unsupported functionalities
		     are requested.
	**/
	static public function boosted_trees_regressor_train_in_memory(train_input_fn:Dynamic, feature_columns:Dynamic, ?model_dir:Dynamic, ?label_dimension:Dynamic, ?weight_column:Dynamic, ?n_trees:Dynamic, ?max_depth:Dynamic, ?learning_rate:Dynamic, ?l1_regularization:Dynamic, ?l2_regularization:Dynamic, ?tree_complexity:Dynamic, ?min_node_weight:Dynamic, ?config:Dynamic, ?train_hooks:Dynamic, ?center_bias:Dynamic, ?pruning_mode:Dynamic, ?quantile_sketch_epsilon:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}