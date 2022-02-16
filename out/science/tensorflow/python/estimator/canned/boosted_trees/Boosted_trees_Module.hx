/* This file is generated, do not edit! */
package tensorflow.python.estimator.canned.boosted_trees;
@:pythonImport("tensorflow.python.estimator.canned.boosted_trees") extern class Boosted_trees_Module {
	static public var _DUMMY_NODE_ID : Dynamic;
	static public var _DUMMY_NUM_BUCKETS : Dynamic;
	static public var _EQUALITY_SPLIT : Dynamic;
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	static public var _INEQUALITY_SPLIT : Dynamic;
	static public var _QUANTILE_ACCUMULATOR_RESOURCE_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _accumulator(dtype:Dynamic, shape:Dynamic, shared_name:Dynamic):Dynamic;
	/**
		Applies feature column transformations to the provided features.
		
		Supports V1 and V2 FeatureColumns.
		
		Args:
		  features: a dicionary of feature name to Tensor.
		  feature_columns: an iterable of tf.feature_columns.
		
		Returns:
		  A dict from feature_column to transformed feature tensor.
	**/
	static public function _apply_feature_transformations(features:Dynamic, feature_columns:Dynamic):Dynamic;
	/**
		Gradient Boosted Trees predict with explanations model_fn.
		
		Args:
		  features: dict of `Tensor`.
		  head: A `head_lib._Head` instance.
		  sorted_feature_columns: Sorted iterable of `fc_old._FeatureColumn` model
		    inputs.
		  quantile_sketch_epsilon: float between 0 and 1. Error bound for quantile
		    computation. This is only used for float feature columns, and the number
		    of buckets generated per float feature is 1/quantile_sketch_epsilon.
		  name: Name used for the model.
		
		Returns:
		    An `EstimatorSpec` instance.
		
		Raises:
		  ValueError: mode or params are invalid, or features has the wrong type.
	**/
	static public function _bt_explanations_fn(features:Dynamic, head:Dynamic, sorted_feature_columns:Dynamic, quantile_sketch_epsilon:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gradient Boosted Trees model_fn.
		
		Args:
		  features: dict of `Tensor`.
		  labels: `Tensor` of shape [batch_size, 1] or [batch_size] labels of dtype
		    `int32` or `int64` in the range `[0, n_classes)`.
		  mode: Defines whether this is training, evaluation or prediction. See
		    `ModeKeys`.
		  head: A `head_lib._Head` instance.
		  feature_columns: Iterable of `fc_old._FeatureColumn` model inputs.
		  tree_hparams: TODO. collections.namedtuple for hyper parameters.
		  n_batches_per_layer: A `Tensor` of `int64`. Each layer is built after at
		    least n_batches_per_layer accumulations.
		  config: `RunConfig` object to configure the runtime settings.
		  closed_form_grad_and_hess_fn: a function that accepts logits and labels and
		    returns gradients and hessians. By default, they are created by
		    tf.gradients() from the loss.
		  example_id_column_name: Name of the feature for a unique ID per example.
		    Currently experimental -- not exposed to public API.
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.fc_old.numeric_column` defining feature column representing weights.
		    It is used to downweight or boost examples during training. It will be
		    multiplied by the loss of the example. If it is a string, it is used as a
		    key to fetch weight tensor from the `features`. If it is a
		    `_NumericColumn`, raw tensor is fetched by key `weight_column.key`, then
		    weight_column.normalizer_fn is applied on it to get weight tensor.
		  train_in_memory: `bool`, when true, it assumes the dataset is in memory,
		    i.e., input_fn should return the entire dataset as a single batch,
		    n_batches_per_layer should be set as 1, num_worker_replicas should be 1,
		    and num_ps_replicas should be 0 in `tf.Estimator.RunConfig`.
		  name: Name to use for the model.
		
		Returns:
		    An `EstimatorSpec` instance.
		
		Raises:
		  ValueError: mode or params are invalid, or features has the wrong type.
	**/
	static public function _bt_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, head:Dynamic, feature_columns:Dynamic, tree_hparams:Dynamic, n_batches_per_layer:Dynamic, config:Dynamic, ?closed_form_grad_and_hess_fn:Dynamic, ?example_id_column_name:Dynamic, ?weight_column:Dynamic, ?train_in_memory:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transform features and cache, then returns (cached_features, cache_op).
	**/
	static public function _cache_transformed_features(features:Dynamic, sorted_feature_columns:Dynamic, ind_columns:Dynamic, other_columns:Dynamic, batch_size:Dynamic, bucket_boundaries_dict:Dynamic, are_boundaries_ready:Dynamic):Dynamic;
	/**
		Calculate the total number of features.
	**/
	static public function _calculate_num_features(sorted_feature_columns:Dynamic):Dynamic;
	/**
		Computes gain-based feature importances.
		
		The higher the value, the more important the feature.
		
		Args:
		  tree_ensemble: a trained tree ensemble, instance of proto
		    boosted_trees.TreeEnsemble.
		  num_features: The total number of feature ids.
		  normalize: If True, normalize the feature importances.
		
		Returns:
		  feature_importances: A list of corresponding feature importances indexed by
		  the original feature ids.
		
		Raises:
		  AssertionError: When normalize = True, if feature importances
		    contain negative value, or if normalization is not possible
		    (e.g. ensemble is empty or trees contain only a root node).
	**/
	static public function _compute_feature_importances(tree_ensemble:Dynamic, num_features:Dynamic, normalize:Dynamic):Dynamic;
	/**
		Computes the importance of each feature in the tree.
	**/
	static public function _compute_feature_importances_per_tree(tree:Dynamic, num_features:Dynamic):Dynamic;
	/**
		Computes hessians for full-hessian multiclass strategy.
	**/
	static public function _compute_full_hessian(grads:Dynamic, logits:Dynamic, logits_dimension:Dynamic):Dynamic;
	static public function _cond(_var:Dynamic, true_branch:Dynamic, false_branch:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a classification head. Refer to canned.head for details on args.
	**/
	static public function _create_classification_head(n_classes:Dynamic, ?weight_column:Dynamic, ?label_vocabulary:Dynamic):Dynamic;
	/**
		Creates a head for classifier and the closed form gradients/hessians.
	**/
	static public function _create_classification_head_and_closed_form(n_classes:Dynamic, weight_column:Dynamic, label_vocabulary:Dynamic):Dynamic;
	static public function _create_regression_head(label_dimension:Dynamic, ?weight_column:Dynamic):Dynamic;
	/**
		Return a list of feature column names for feature ids.
		
		  Example:
		
		  ```
		  gender_col = indicator_column(
		      categorical_column_with_vocabulary_list(
		        'gender', ['male', 'female', 'n/a']))
		  # Results in 3 binary features for which we store the mapping to the
		  # original feature column.
		  _generate_feature_col_name_mapping([gender_col])
		  ['gender', 'gender', 'gender]
		  ```
		
		Args:
		  sorted_feature_columns: a list/set of tf.feature_column sorted by name.
		
		Returns:
		  feature_col_name_mapping: a list of feature column names indexed by the
		  feature ids.
		
		Raises:
		  ValueError: when unsupported features/columns are tried.
	**/
	static public function _generate_feature_col_name_mapping(sorted_feature_columns:Dynamic):Dynamic;
	/**
		Get feature dimensions.
		
		Args:
		  feature_ids_list: a list of lists of feature ids for each bucket size.
		  input_feature_list: a list of input feature tensors.
		
		Returns:
		  feature_dimensions: a list of dimensions for each feature.
	**/
	static public function _get_feature_dimensions(feature_ids_list:Dynamic, input_feature_list:Dynamic):Dynamic;
	/**
		Create a dict where key is column name, value is bucket boundaries.
	**/
	static public function _get_float_boundaries_dict(float_columns:Dynamic, bucket_boundaries:Dynamic):Dynamic;
	/**
		Get float feature columns.
		
		Args:
		  sorted_feature_columns: a list of feature columns sorted by name.
		
		Returns:
		  float_columns: a list of float feature columns sorted by name.
	**/
	static public function _get_float_feature_columns(sorted_feature_columns:Dynamic):Dynamic;
	/**
		Calculates the max possible number of splits based on tree params.
	**/
	static public function _get_max_splits(tree_hparams:Dynamic):Dynamic;
	/**
		Gets the transformed features from features/feature_columns pair.
		
		Args:
		  features: a dicionary of name to Tensor.
		  sorted_feature_columns: a list/set of tf.feature_column, sorted by name.
		  bucket_boundaries_dict: a dict of name to list of Tensors.
		
		Returns:
		  result_features: a list of the transformed features, sorted by the name.
		
		Raises:
		  ValueError: when unsupported features/columns are tried.
	**/
	static public function _get_transformed_features(features:Dynamic, sorted_feature_columns:Dynamic, ?bucket_boundaries_dict:Dynamic):Dynamic;
	/**
		Gets the transformed features from features/feature_columns pair.
		
		This signature allows to pass in previously transformed features.
		
		Args:
		  features: a dicionary of name to Tensor.
		  sorted_feature_columns: a list/set of tf.feature_column, sorted by name, to
		    be used for transforming features.
		  all_sorted_columns: a total list of feature columns, including those that
		    were already used for transformation.
		  bucket_boundaries_dict: a dict of name to list of Tensors.
		  already_transformed_features: features that were already transformed (for
		    columns all_sorted_columns-sorted_feature_columns)
		
		Returns:
		  result_features: a list of the transformed features, sorted by the name.
		
		Raises:
		  ValueError: when unsupported features/columns are tried.
	**/
	static public function _get_transformed_features_and_merge_with_previously_transformed(features:Dynamic, sorted_feature_columns:Dynamic, all_sorted_columns:Dynamic, ?bucket_boundaries_dict:Dynamic, ?already_transformed_features:Dynamic):Dynamic;
	/**
		Returns the variable shape of the provided column.
	**/
	static public function _get_variable_shape(column:Dynamic):Dynamic;
	/**
		Group feature ids by number of buckets; determine when to equality split.
		
		Derives the feature ids based on iterating through ordered feature columns
		and groups them by the number of buckets each feature require. Returns a
		sorted list of buckets, a list of lists of feature ids for each of those
		buckets, and a list of lists containing split types for each feature.
		
		Args:
		  sorted_feature_columns: a list/set of tf.feature_column sorted by name.
		  num_quantiles: int representing the number of quantile buckets for all
		    numeric columns.
		
		Returns:
		  bucket_size_list: a list of required bucket sizes.
		  feature_ids_list: a list of lists of feature ids for each bucket size.
		  split_types_list: a list of lists indicating feature split type
		
		Raises:
		  ValueError: when unsupported features columns are provided.
	**/
	static public function _group_features_by_num_buckets_and_split_type(sorted_feature_columns:Dynamic, num_quantiles:Dynamic):Dynamic;
	/**
		Returns True if column is a continuous numeric that should be bucketized.
	**/
	static public function _is_numeric_column(feature_column:Dynamic):Dynamic;
	/**
		Core head for multiclass problems.
	**/
	static public function _multiclass_head(n_classes:Dynamic, ?weight_column:Dynamic, ?label_vocabulary:Dynamic, ?loss_reduction:Dynamic):Dynamic;
	/**
		Validate input parameters.
	**/
	static public function _validate_input_params(tree_params:Dynamic):Dynamic;
	/**
		Stores a tensor as a local Variable for faster read.
	**/
	static public function _variable(initial_value:Dynamic, ?trainable:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function estimator_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Maximum entropy loss for multiclass problems.
		
		Maximum entropy is a generalization of logistic loss for the case when more
		than 2 classes are present.
		
		Args:
		  labels: Rank 2 (N, 1) or Rank 1 (N) tensor of per-example labels.
		  weights: Rank 2 (N, 1) tensor of per-example weights.
		  logits: Rank 2 (N, K) tensor of per-example predictions, K - num of classes.
		  num_classes: number of classes in classification task. Used to expand label
		    indices into one-hot encodings.
		  eps: tolerance, used as a minimum possible value.
		
		Returns:
		  loss: A Rank 2 (N, 1) tensor of per-example maxent loss
		  update_op: An update operation to update the loss's internal state.
	**/
	static public function per_example_maxent_loss(labels:Dynamic, weights:Dynamic, logits:Dynamic, num_classes:Dynamic, ?eps:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return a Tensor with the same shape and contents as input.
		
		The return value is not the same Tensor as the original, but contains the same
		values.  This operation is fast when used on the same device.
		
		For example:
		
		>>> a = tf.constant([0.78])
		>>> a_identity = tf.identity(a)
		>>> a.numpy()
		array([0.78], dtype=float32)
		>>> a_identity.numpy()
		array([0.78], dtype=float32)
		
		Calling `tf.identity` on a variable will make a Tensor that represents the
		value of that variable at the time it is called. This is equivalent to calling
		`<variable>.read_value()`.
		
		>>> a = tf.Variable(5)
		>>> a_identity = tf.identity(a)
		>>> a.assign_add(1)
		<tf.Variable ... shape=() dtype=int32, numpy=6>
		>>> a.numpy()
		6
		>>> a_identity.numpy()
		5
		
		Args:
		  input: A `Tensor`, a `Variable`, a `CompositeTensor` or anything that can be
		  converted to a tensor using `tf.convert_to_tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or CompositeTensor. Has the same type and contents as `input`.
	**/
	static public function tf_identity(input:Dynamic, ?name:Dynamic):Dynamic;
}