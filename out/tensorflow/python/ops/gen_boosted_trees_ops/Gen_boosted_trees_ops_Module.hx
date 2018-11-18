/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_boosted_trees_ops;
@:pythonImport("tensorflow.python.ops.gen_boosted_trees_ops") extern class Gen_boosted_trees_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _boosted_trees_calculate_best_gains_per_feature_outputs : Dynamic;
	static public var _boosted_trees_get_ensemble_states_outputs : Dynamic;
	static public var _boosted_trees_serialize_ensemble_outputs : Dynamic;
	static public var _boosted_trees_training_predict_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Bucketize each feature based on bucket boundaries.
		
		An op that returns a list of float tensors, where each tensor represents the
		bucketized values for a single feature.
		
		Args:
		  float_values: A list of `Tensor` objects with type `float32`.
		    float; List of Rank 2 Tensor each containing float values for a single feature.
		  bucket_boundaries: A list with the same length as `float_values` of `Tensor` objects with type `float32`.
		    float; List of Rank 1 Tensors each containing the bucket boundaries for a single
		    feature.
		  name: A name for the operation (optional).
		
		Returns:
		  A list with the same length as `float_values` of `Tensor` objects with type `int32`.
	**/
	static public function boosted_trees_bucketize(float_values:Dynamic, bucket_boundaries:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_bucketize
	**/
	static public function boosted_trees_bucketize_eager_fallback(float_values:Dynamic, bucket_boundaries:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Calculates gains for each feature and returns the best possible split information for the feature.
		
		The split information is the best threshold (bucket id), gains and left/right node contributions per node for each feature.
		
		It is possible that not all nodes can be split on each feature. Hence, the list of possible nodes can differ between the features. Therefore, we return `node_ids_list` for each feature, containing the list of nodes that this feature can be used to split.
		
		In this manner, the output is the best split per features and per node, so that it needs to be combined later to produce the best split for each node (among all possible features).
		
		The length of output lists are all of the same length, `num_features`.
		The output shapes are compatible in a way that the first dimension of all tensors of all lists are the same and equal to the number of possible split nodes for each feature.
		
		Args:
		  node_id_range: A `Tensor` of type `int32`.
		    A Rank 1 tensor (shape=[2]) to specify the range [first, last) of node ids to process within `stats_summary_list`. The nodes are iterated between the two nodes specified by the tensor, as like `for node_id in range(node_id_range[0], node_id_range[1])` (Note that the last index node_id_range[1] is exclusive).
		  stats_summary_list: A list of at least 1 `Tensor` objects with type `float32`.
		    A list of Rank 3 tensor (#shape=[max_splits, bucket, 2]) for accumulated stats summary (gradient/hessian) per node per buckets for each feature. The first dimension of the tensor is the maximum number of splits, and thus not all elements of it will be used, but only the indexes specified by node_ids will be used.
		  l1: A `Tensor` of type `float32`.
		    l1 regularization factor on leaf weights, per instance based.
		  l2: A `Tensor` of type `float32`.
		    l2 regularization factor on leaf weights, per instance based.
		  tree_complexity: A `Tensor` of type `float32`.
		    adjustment to the gain, per leaf based.
		  min_node_weight: A `Tensor` of type `float32`.
		    mininum avg of hessians in a node before required for the node to be considered for splitting.
		  max_splits: An `int` that is `>= 1`.
		    the number of nodes that can be split in the whole tree. Used as a dimension of output tensors.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (node_ids_list, gains_list, thresholds_list, left_node_contribs_list, right_node_contribs_list).
		
		  node_ids_list: A list with the same length as `stats_summary_list` of `Tensor` objects with type `int32`.
		  gains_list: A list with the same length as `stats_summary_list` of `Tensor` objects with type `float32`.
		  thresholds_list: A list with the same length as `stats_summary_list` of `Tensor` objects with type `int32`.
		  left_node_contribs_list: A list with the same length as `stats_summary_list` of `Tensor` objects with type `float32`.
		  right_node_contribs_list: A list with the same length as `stats_summary_list` of `Tensor` objects with type `float32`.
	**/
	static public function boosted_trees_calculate_best_gains_per_feature(node_id_range:Dynamic, stats_summary_list:Dynamic, l1:Dynamic, l2:Dynamic, tree_complexity:Dynamic, min_node_weight:Dynamic, max_splits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_calculate_best_gains_per_feature
	**/
	static public function boosted_trees_calculate_best_gains_per_feature_eager_fallback(node_id_range:Dynamic, stats_summary_list:Dynamic, l1:Dynamic, l2:Dynamic, tree_complexity:Dynamic, min_node_weight:Dynamic, max_splits:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Calculates the prior from the training data (the bias) and fills in the first node with the logits' prior. Returns a boolean indicating whether to continue centering.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    Handle to the tree ensemble.
		  mean_gradients: A `Tensor` of type `float32`.
		    A tensor with shape=[logits_dimension] with mean of gradients for a first node.
		  mean_hessians: A `Tensor` of type `float32`.
		    A tensor with shape=[logits_dimension] mean of hessians for a first node.
		  l1: A `Tensor` of type `float32`.
		    l1 regularization factor on leaf weights, per instance based.
		  l2: A `Tensor` of type `float32`.
		    l2 regularization factor on leaf weights, per instance based.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function boosted_trees_center_bias(tree_ensemble_handle:Dynamic, mean_gradients:Dynamic, mean_hessians:Dynamic, l1:Dynamic, l2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_center_bias
	**/
	static public function boosted_trees_center_bias_eager_fallback(tree_ensemble_handle:Dynamic, mean_gradients:Dynamic, mean_hessians:Dynamic, l1:Dynamic, l2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a tree ensemble model and returns a handle to it.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    Handle to the tree ensemble resource to be created.
		  stamp_token: A `Tensor` of type `int64`.
		    Token to use as the initial value of the resource stamp.
		  tree_ensemble_serialized: A `Tensor` of type `string`.
		    Serialized proto of the tree ensemble.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function boosted_trees_create_ensemble(tree_ensemble_handle:Dynamic, stamp_token:Dynamic, tree_ensemble_serialized:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_create_ensemble
	**/
	static public function boosted_trees_create_ensemble_eager_fallback(tree_ensemble_handle:Dynamic, stamp_token:Dynamic, tree_ensemble_serialized:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Create the Resource for Quantile Streams.
		
		Args:
		  quantile_stream_resource_handle: A `Tensor` of type `resource`.
		    resource; Handle to quantile stream resource.
		  epsilon: A `Tensor` of type `float32`.
		    float; The required approximation error of the stream resource.
		  num_streams: A `Tensor` of type `int64`.
		    int; The number of streams managed by the resource that shares the same epsilon.
		  max_elements: An optional `int`. Defaults to `1099511627776`.
		    int; The maximum number of data points that can be fed to the stream.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function boosted_trees_create_quantile_stream_resource(quantile_stream_resource_handle:Dynamic, epsilon:Dynamic, num_streams:Dynamic, ?max_elements:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_create_quantile_stream_resource
	**/
	static public function boosted_trees_create_quantile_stream_resource_eager_fallback(quantile_stream_resource_handle:Dynamic, epsilon:Dynamic, num_streams:Dynamic, ?max_elements:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Deserializes a serialized tree ensemble config and replaces current tree
		
		ensemble.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    Handle to the tree ensemble.
		  stamp_token: A `Tensor` of type `int64`.
		    Token to use as the new value of the resource stamp.
		  tree_ensemble_serialized: A `Tensor` of type `string`.
		    Serialized proto of the ensemble.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function boosted_trees_deserialize_ensemble(tree_ensemble_handle:Dynamic, stamp_token:Dynamic, tree_ensemble_serialized:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_deserialize_ensemble
	**/
	static public function boosted_trees_deserialize_ensemble_eager_fallback(tree_ensemble_handle:Dynamic, stamp_token:Dynamic, tree_ensemble_serialized:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a handle to a BoostedTreesEnsembleResource
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function boosted_trees_ensemble_resource_handle_op(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_ensemble_resource_handle_op
	**/
	static public function boosted_trees_ensemble_resource_handle_op_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Debugging/model interpretability outputs for each example.
		
		It traverses all the trees and computes debug metrics for individual examples, 
		such as getting split feature ids and logits after each split along the decision
		path used to compute directional feature contributions.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		  bucketized_features: A list of at least 1 `Tensor` objects with type `int32`.
		    A list of rank 1 Tensors containing bucket id for each
		    feature.
		  logits_dimension: An `int`.
		    scalar, dimension of the logits, to be used for constructing the protos in
		    examples_debug_outputs_serialized.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function boosted_trees_example_debug_outputs(tree_ensemble_handle:Dynamic, bucketized_features:Dynamic, logits_dimension:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_example_debug_outputs
	**/
	static public function boosted_trees_example_debug_outputs_eager_fallback(tree_ensemble_handle:Dynamic, bucketized_features:Dynamic, logits_dimension:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieves the tree ensemble resource stamp token, number of trees and growing statistics.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    Handle to the tree ensemble.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (stamp_token, num_trees, num_finalized_trees, num_attempted_layers, last_layer_nodes_range).
		
		  stamp_token: A `Tensor` of type `int64`.
		  num_trees: A `Tensor` of type `int32`.
		  num_finalized_trees: A `Tensor` of type `int32`.
		  num_attempted_layers: A `Tensor` of type `int32`.
		  last_layer_nodes_range: A `Tensor` of type `int32`.
	**/
	static public function boosted_trees_get_ensemble_states(tree_ensemble_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_get_ensemble_states
	**/
	static public function boosted_trees_get_ensemble_states_eager_fallback(tree_ensemble_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Makes the summary of quantiles for the batch.
		
		An op that takes a list of tensors and outputs the quantile summaries for each tensor.
		
		Args:
		  float_values: A list of `Tensor` objects with type `float32`.
		    float; List of Rank 2 Tensors each containing values for a single feature.
		  example_weights: A `Tensor` of type `float32`.
		    float; Rank 1 Tensor with weights per instance.
		  epsilon: A `Tensor` of type `float32`.
		    float; The required maximum approximation error.
		  name: A name for the operation (optional).
		
		Returns:
		  A list with the same length as `float_values` of `Tensor` objects with type `float32`.
	**/
	static public function boosted_trees_make_quantile_summaries(float_values:Dynamic, example_weights:Dynamic, epsilon:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_make_quantile_summaries
	**/
	static public function boosted_trees_make_quantile_summaries_eager_fallback(float_values:Dynamic, example_weights:Dynamic, epsilon:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Makes the summary of accumulated stats for the batch.
		
		The summary stats contains gradients and hessians accumulated into the corresponding node and bucket for each example.
		
		Args:
		  node_ids: A `Tensor` of type `int32`.
		    int32 Rank 1 Tensor containing node ids, which each example falls into for the requested layer.
		  gradients: A `Tensor` of type `float32`.
		    float32; Rank 2 Tensor (shape=[#examples, 1]) for gradients.
		  hessians: A `Tensor` of type `float32`.
		    float32; Rank 2 Tensor (shape=[#examples, 1]) for hessians.
		  bucketized_features_list: A list of at least 1 `Tensor` objects with type `int32`.
		    int32 list of Rank 1 Tensors, each containing the bucketized feature (for each feature column).
		  max_splits: An `int` that is `>= 1`.
		    int; the maximum number of splits possible in the whole tree.
		  num_buckets: An `int` that is `>= 1`.
		    int; equals to the maximum possible value of bucketized feature.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function boosted_trees_make_stats_summary(node_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, bucketized_features_list:Dynamic, max_splits:Dynamic, num_buckets:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_make_stats_summary
	**/
	static public function boosted_trees_make_stats_summary_eager_fallback(node_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, bucketized_features_list:Dynamic, max_splits:Dynamic, num_buckets:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Runs multiple additive regression ensemble predictors on input instances and
		
		computes the logits. It is designed to be used during prediction.
		It traverses all the trees and calculates the final score for each instance.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		  bucketized_features: A list of at least 1 `Tensor` objects with type `int32`.
		    A list of rank 1 Tensors containing bucket id for each
		    feature.
		  logits_dimension: An `int`.
		    scalar, dimension of the logits, to be used for partial logits
		    shape.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function boosted_trees_predict(tree_ensemble_handle:Dynamic, bucketized_features:Dynamic, logits_dimension:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_predict
	**/
	static public function boosted_trees_predict_eager_fallback(tree_ensemble_handle:Dynamic, bucketized_features:Dynamic, logits_dimension:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Add the quantile summaries to each quantile stream resource.
		
		An op that adds a list of quantile summaries to a quantile stream resource. Each
		summary Tensor is rank 2, containing summaries (value, weight, min_rank, max_rank)
		for a single feature.
		
		Args:
		  quantile_stream_resource_handle: A `Tensor` of type `resource`.
		    resource handle referring to a QuantileStreamResource.
		  summaries: A list of `Tensor` objects with type `float32`.
		    string; List of Rank 2 Tensor each containing the summaries for a single feature.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function boosted_trees_quantile_stream_resource_add_summaries(quantile_stream_resource_handle:Dynamic, summaries:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_quantile_stream_resource_add_summaries
	**/
	static public function boosted_trees_quantile_stream_resource_add_summaries_eager_fallback(quantile_stream_resource_handle:Dynamic, summaries:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Flush the summaries for a quantile stream resource.
		
		An op that flushes the summaries for a quantile stream resource.
		
		Args:
		  quantile_stream_resource_handle: A `Tensor` of type `resource`.
		    resource handle referring to a QuantileStreamResource.
		  num_buckets: A `Tensor` of type `int64`.
		    int; approximate number of buckets unless using generate_quantiles.
		  generate_quantiles: An optional `bool`. Defaults to `False`.
		    bool; If True, the output will be the num_quantiles for each stream where the ith
		    entry is the ith quantile of the input with an approximation error of epsilon.
		    Duplicate values may be present.
		    If False, the output will be the points in the histogram that we got which roughly
		    translates to 1/epsilon boundaries and without any duplicates.
		    Default to False.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function boosted_trees_quantile_stream_resource_flush(quantile_stream_resource_handle:Dynamic, num_buckets:Dynamic, ?generate_quantiles:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_quantile_stream_resource_flush
	**/
	static public function boosted_trees_quantile_stream_resource_flush_eager_fallback(quantile_stream_resource_handle:Dynamic, num_buckets:Dynamic, ?generate_quantiles:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Generate the bucket boundaries for each feature based on accumulated summaries.
		
		An op that returns a list of float tensors for a quantile stream resource. Each
		tensor is Rank 1 containing bucket boundaries for a single feature.
		
		Args:
		  quantile_stream_resource_handle: A `Tensor` of type `resource`.
		    resource handle referring to a QuantileStreamResource.
		  num_features: An `int` that is `>= 0`.
		    inferred int; number of features to get bucket boundaries for.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num_features` `Tensor` objects with type `float32`.
	**/
	static public function boosted_trees_quantile_stream_resource_get_bucket_boundaries(quantile_stream_resource_handle:Dynamic, num_features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_quantile_stream_resource_get_bucket_boundaries
	**/
	static public function boosted_trees_quantile_stream_resource_get_bucket_boundaries_eager_fallback(quantile_stream_resource_handle:Dynamic, num_features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a handle to a BoostedTreesQuantileStreamResource.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function boosted_trees_quantile_stream_resource_handle_op(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_quantile_stream_resource_handle_op
	**/
	static public function boosted_trees_quantile_stream_resource_handle_op_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Serializes the tree ensemble to a proto.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    Handle to the tree ensemble.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (stamp_token, tree_ensemble_serialized).
		
		  stamp_token: A `Tensor` of type `int64`.
		  tree_ensemble_serialized: A `Tensor` of type `string`.
	**/
	static public function boosted_trees_serialize_ensemble(tree_ensemble_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_serialize_ensemble
	**/
	static public function boosted_trees_serialize_ensemble_eager_fallback(tree_ensemble_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Runs multiple additive regression ensemble predictors on input instances and
		
		computes the update to cached logits. It is designed to be used during training.
		It traverses the trees starting from cached tree id and cached node id and
		calculates the updates to be pushed to the cache.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		  cached_tree_ids: A `Tensor` of type `int32`.
		    Rank 1 Tensor containing cached tree ids which is the starting
		    tree of prediction.
		  cached_node_ids: A `Tensor` of type `int32`.
		    Rank 1 Tensor containing cached node id which is the starting
		    node of prediction.
		  bucketized_features: A list of at least 1 `Tensor` objects with type `int32`.
		    A list of rank 1 Tensors containing bucket id for each
		    feature.
		  logits_dimension: An `int`.
		    scalar, dimension of the logits, to be used for partial logits
		    shape.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (partial_logits, tree_ids, node_ids).
		
		  partial_logits: A `Tensor` of type `float32`.
		  tree_ids: A `Tensor` of type `int32`.
		  node_ids: A `Tensor` of type `int32`.
	**/
	static public function boosted_trees_training_predict(tree_ensemble_handle:Dynamic, cached_tree_ids:Dynamic, cached_node_ids:Dynamic, bucketized_features:Dynamic, logits_dimension:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_training_predict
	**/
	static public function boosted_trees_training_predict_eager_fallback(tree_ensemble_handle:Dynamic, cached_tree_ids:Dynamic, cached_node_ids:Dynamic, bucketized_features:Dynamic, logits_dimension:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Updates the tree ensemble by either adding a layer to the last tree being grown
		
		or by starting a new tree.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    Handle to the ensemble variable.
		  feature_ids: A `Tensor` of type `int32`.
		    Rank 1 tensor with ids for each feature. This is the real id of
		    the feature that will be used in the split.
		  node_ids: A list of `Tensor` objects with type `int32`.
		    List of rank 1 tensors representing the nodes for which this feature
		    has a split.
		  gains: A list with the same length as `node_ids` of `Tensor` objects with type `float32`.
		    List of rank 1 tensors representing the gains for each of the feature's
		    split.
		  thresholds: A list with the same length as `node_ids` of `Tensor` objects with type `int32`.
		    List of rank 1 tensors representing the thesholds for each of the
		    feature's split.
		  left_node_contribs: A list with the same length as `node_ids` of `Tensor` objects with type `float32`.
		    List of rank 2 tensors with left leaf contribs for each of
		    the feature's splits. Will be added to the previous node values to constitute
		    the values of the left nodes.
		  right_node_contribs: A list with the same length as `node_ids` of `Tensor` objects with type `float32`.
		    List of rank 2 tensors with right leaf contribs for each
		    of the feature's splits. Will be added to the previous node values to constitute
		    the values of the right nodes.
		  max_depth: A `Tensor` of type `int32`. Max depth of the tree to build.
		  learning_rate: A `Tensor` of type `float32`.
		    shrinkage const for each new tree.
		  pruning_mode: An `int` that is `>= 0`.
		    0-No pruning, 1-Pre-pruning, 2-Post-pruning.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function boosted_trees_update_ensemble(tree_ensemble_handle:Dynamic, feature_ids:Dynamic, node_ids:Dynamic, gains:Dynamic, thresholds:Dynamic, left_node_contribs:Dynamic, right_node_contribs:Dynamic, max_depth:Dynamic, learning_rate:Dynamic, pruning_mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function boosted_trees_update_ensemble
	**/
	static public function boosted_trees_update_ensemble_eager_fallback(tree_ensemble_handle:Dynamic, feature_ids:Dynamic, node_ids:Dynamic, gains:Dynamic, thresholds:Dynamic, left_node_contribs:Dynamic, right_node_contribs:Dynamic, max_depth:Dynamic, learning_rate:Dynamic, pruning_mode:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Checks whether a tree ensemble has been initialized.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    Handle to the tree ensemble resouce.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_boosted_trees_ensemble_initialized(tree_ensemble_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function is_boosted_trees_ensemble_initialized
	**/
	static public function is_boosted_trees_ensemble_initialized_eager_fallback(tree_ensemble_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Checks whether a quantile stream has been initialized.
		
		An Op that checks if quantile stream resource is initialized.
		
		Args:
		  quantile_stream_resource_handle: A `Tensor` of type `resource`.
		    resource; The reference to quantile stream resource handle.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_boosted_trees_quantile_stream_resource_initialized(quantile_stream_resource_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function is_boosted_trees_quantile_stream_resource_initialized
	**/
	static public function is_boosted_trees_quantile_stream_resource_initialized_eager_fallback(quantile_stream_resource_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}