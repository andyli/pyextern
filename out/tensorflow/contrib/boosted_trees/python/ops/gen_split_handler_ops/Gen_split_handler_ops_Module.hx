/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.python.ops.gen_split_handler_ops;
@:pythonImport("tensorflow.contrib.boosted_trees.python.ops.gen_split_handler_ops") extern class Gen_split_handler_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _build_categorical_equality_splits_outputs : Dynamic;
	static public var _build_dense_inequality_splits_outputs : Dynamic;
	static public var _build_sparse_inequality_splits_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Find the split that has the best gain for the accumulated stats.
		
		Args:
		  num_minibatches: A `Tensor` of type `int64`.
		    A scalar, the number of times per example gradients & hessians
		    were accumulated. The stats are divided by this to get per example stats.
		  partition_ids: A `Tensor` of type `int32`.
		    A rank 1 tensor of partition IDs.
		  feature_ids: A `Tensor` of type `int64`.
		    A rank 2 tensor of feature IDs and dimensions.
		  gradients: A `Tensor` of type `float32`. A rank 1 tensor of gradients.
		  hessians: A `Tensor` of type `float32`. A rank 1 tensor of hessians.
		  class_id: A `Tensor` of type `int32`.
		    A scalar, the class id for which we're building the splits.
		  feature_column_group_id: A `Tensor` of type `int32`.
		    A scalar, the index of the feature we are spiltting on.
		  bias_feature_id: A `Tensor` of type `int64`.
		  l1_regularization: A `Tensor` of type `float32`.
		    A scalar, which specifies the l1 regularization term.
		  l2_regularization: A `Tensor` of type `float32`.
		    A scalar, which specifies the l2 regularization term.
		  tree_complexity_regularization: A `Tensor` of type `float32`.
		    A scalar, which specifies the tree complexity
		    regularization term.
		  min_node_weight: A `Tensor` of type `float32`.
		    A scalar, minimum sum of example hessian needed in a child.
		    If a split results in a leaf node with a smaller value, the split will not
		    be considered.
		  multiclass_strategy: A `Tensor` of type `int32`.
		    A scalar, specifying the multiclass handling strategy.
		    See LearnerConfig.MultiClassStrategy for valid values.
		  weak_learner_type: A `Tensor` of type `int32`.
		    A scalar, specifying the weak learner type to use.
		    See LearnerConfig.WeakLearnerType for valid values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_partition_ids, gains, split_infos).
		
		  output_partition_ids: A `Tensor` of type `int32`. A rank 1 tensor, the partition IDs that we created splits
		    for.
		  gains: A `Tensor` of type `float32`. A rank 1 tensor, for the computed gain for the created splits.
		  split_infos: A `Tensor` of type `string`. A rank 1 tensor of serialized protos which contains the
		    `SplitInfo`s.
	**/
	static public function build_categorical_equality_splits(num_minibatches:Dynamic, partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, class_id:Dynamic, feature_column_group_id:Dynamic, bias_feature_id:Dynamic, l1_regularization:Dynamic, l2_regularization:Dynamic, tree_complexity_regularization:Dynamic, min_node_weight:Dynamic, multiclass_strategy:Dynamic, weak_learner_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function build_categorical_equality_splits
	**/
	static public function build_categorical_equality_splits_eager_fallback(num_minibatches:Dynamic, partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, class_id:Dynamic, feature_column_group_id:Dynamic, bias_feature_id:Dynamic, l1_regularization:Dynamic, l2_regularization:Dynamic, tree_complexity_regularization:Dynamic, min_node_weight:Dynamic, multiclass_strategy:Dynamic, weak_learner_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Find the split that has the best gain for the accumulated stats.
		
		Args:
		  num_minibatches: A `Tensor` of type `int64`.
		    A scalar, the number of times per example gradients & hessians
		    were accumulated. The stats are divided by this to get per example stats.
		  partition_ids: A `Tensor` of type `int32`.
		    A rank 1 tensor of partition IDs.
		  bucket_ids: A `Tensor` of type `int64`.
		    A rank 2 tensor of buckets IDs and dimensions.
		  gradients: A `Tensor` of type `float32`. A rank 1 tensor of gradients.
		  hessians: A `Tensor` of type `float32`. A rank 1 tensor of hessians.
		  bucket_boundaries: A `Tensor` of type `float32`.
		    A rank 1 tensor, thresholds that were used for bucketization.
		  class_id: A `Tensor` of type `int32`.
		    A scalar, the class id for which we're building the splits.
		  feature_column_group_id: A `Tensor` of type `int32`.
		    A scalar, the index of the feature we are spiltting on.
		  l1_regularization: A `Tensor` of type `float32`.
		    A scalar, which specifies the l1 regularization term.
		  l2_regularization: A `Tensor` of type `float32`.
		    A scalar, which specifies the l2 regularization term.
		  tree_complexity_regularization: A `Tensor` of type `float32`.
		    A scalar, which specifies the tree complexity
		    regularization term.
		  min_node_weight: A `Tensor` of type `float32`.
		    A scalar, minimum sum of example hessian needed in a child.
		    If a split results in a leaf node with a smaller value, the split will not
		    be considered.
		  multiclass_strategy: A `Tensor` of type `int32`.
		    A scalar, specifying the multiclass handling strategy.
		    See LearnerConfig.MultiClassStrategy for valid values.
		  weak_learner_type: A `Tensor` of type `int32`.
		    A scalar, specifying the weak learner type to use.
		    See LearnerConfig.WeakLearnerType for valid values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_partition_ids, gains, split_infos).
		
		  output_partition_ids: A `Tensor` of type `int32`. A rank 1 tensor, the partition IDs that we created splits
		    for.
		  gains: A `Tensor` of type `float32`. A rank 1 tensor, for the computed gain for the created splits.
		  split_infos: A `Tensor` of type `string`. A rank 1 tensor of serialized protos which contains the
		    `SplitInfo`s.
	**/
	static public function build_dense_inequality_splits(num_minibatches:Dynamic, partition_ids:Dynamic, bucket_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, bucket_boundaries:Dynamic, class_id:Dynamic, feature_column_group_id:Dynamic, l1_regularization:Dynamic, l2_regularization:Dynamic, tree_complexity_regularization:Dynamic, min_node_weight:Dynamic, multiclass_strategy:Dynamic, weak_learner_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function build_dense_inequality_splits
	**/
	static public function build_dense_inequality_splits_eager_fallback(num_minibatches:Dynamic, partition_ids:Dynamic, bucket_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, bucket_boundaries:Dynamic, class_id:Dynamic, feature_column_group_id:Dynamic, l1_regularization:Dynamic, l2_regularization:Dynamic, tree_complexity_regularization:Dynamic, min_node_weight:Dynamic, multiclass_strategy:Dynamic, weak_learner_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Find the split that has the best gain for the accumulated stats for a particular
		
		feature column.
		
		Args:
		  num_minibatches: A `Tensor` of type `int64`.
		    A scalar, the number of times per example gradients & hessians
		    were accumulated. The stats are divided by this to get per example stats.
		  partition_ids: A `Tensor` of type `int32`.
		    A rank 2 tensor of partition IDs for each dimension of feature column.
		  bucket_ids: A `Tensor` of type `int64`.
		    A rank 2 tensor of buckets IDs and dimensions.
		  gradients: A `Tensor` of type `float32`. A rank 1 tensor of gradients.
		  hessians: A `Tensor` of type `float32`. A rank 1 tensor of hessians.
		  bucket_boundaries: A `Tensor` of type `float32`.
		    A rank 1 tensor, thresholds that were used for bucketization.
		  class_id: A `Tensor` of type `int32`.
		    A scalar, the class id for which we're building the splits.
		  feature_column_group_id: A `Tensor` of type `int32`.
		    A scalar, the index of the feature we are spiltting on.
		  bias_feature_id: A `Tensor` of type `int64`.
		  l1_regularization: A `Tensor` of type `float32`.
		    A scalar, which specifies the l1 regularization term.
		  l2_regularization: A `Tensor` of type `float32`.
		    A scalar, which specifies the l2 regularization term.
		  tree_complexity_regularization: A `Tensor` of type `float32`.
		    A scalar, which specifies the tree complexity
		    regularization term.
		  min_node_weight: A `Tensor` of type `float32`.
		    A scalar, minimum sum of example hessian needed in a child.
		    If a split results in a leaf node with a smaller value, the split will not
		    be considered.
		  multiclass_strategy: A `Tensor` of type `int32`.
		    A scalar, specifying the multiclass handling strategy.
		    See LearnerConfig.MultiClassStrategy for valid values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_partition_ids, gains, split_infos).
		
		  output_partition_ids: A `Tensor` of type `int32`. A rank 1 tensor, the partition IDs that we created splits
		    for.
		  gains: A `Tensor` of type `float32`. A rank 1 tensor, for the computed gain for the created splits.
		  split_infos: A `Tensor` of type `string`. A rank 1 tensor of serialized protos which contains the
		    `SplitInfo`s.
	**/
	static public function build_sparse_inequality_splits(num_minibatches:Dynamic, partition_ids:Dynamic, bucket_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, bucket_boundaries:Dynamic, class_id:Dynamic, feature_column_group_id:Dynamic, bias_feature_id:Dynamic, l1_regularization:Dynamic, l2_regularization:Dynamic, tree_complexity_regularization:Dynamic, min_node_weight:Dynamic, multiclass_strategy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function build_sparse_inequality_splits
	**/
	static public function build_sparse_inequality_splits_eager_fallback(num_minibatches:Dynamic, partition_ids:Dynamic, bucket_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, bucket_boundaries:Dynamic, class_id:Dynamic, feature_column_group_id:Dynamic, bias_feature_id:Dynamic, l1_regularization:Dynamic, l2_regularization:Dynamic, tree_complexity_regularization:Dynamic, min_node_weight:Dynamic, multiclass_strategy:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}