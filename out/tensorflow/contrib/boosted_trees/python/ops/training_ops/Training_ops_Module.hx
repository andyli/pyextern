/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.python.ops.training_ops;
@:pythonImport("tensorflow.contrib.boosted_trees.python.ops.training_ops") extern class Training_ops_Module {
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
		Centers the tree ensemble bias before adding trees based on feature splits.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    Handle to the ensemble variable.
		  stamp_token: A `Tensor` of type `int64`.
		    Stamp token for validating operation consistency.
		  next_stamp_token: A `Tensor` of type `int64`.
		    Stamp token to be used for the next iteration.
		  delta_updates: A `Tensor` of type `float32`.
		    Rank 1 Tensor containing delta updates per bias dimension.
		  learner_config: A `string`.
		    Config for the learner of type LearnerConfig proto.
		  centering_epsilon: An optional `float`. Defaults to `0.01`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
		  Scalar indicating whether more centering is needed.
	**/
	static public function center_tree_ensemble_bias(tree_ensemble_handle:Dynamic, stamp_token:Dynamic, next_stamp_token:Dynamic, delta_updates:Dynamic, learner_config:Dynamic, ?centering_epsilon:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function center_tree_ensemble_bias
	**/
	static public function center_tree_ensemble_bias_eager_fallback(tree_ensemble_handle:Dynamic, stamp_token:Dynamic, next_stamp_token:Dynamic, delta_updates:Dynamic, learner_config:Dynamic, ?centering_epsilon:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public var division : Dynamic;
	/**
		Grows the tree ensemble by either adding a layer to the last tree being grown
		
		or by starting a new tree.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    Handle to the ensemble variable.
		  stamp_token: A `Tensor` of type `int64`.
		    Stamp token for validating operation consistency.
		  next_stamp_token: A `Tensor` of type `int64`.
		    Stamp token to be used for the next iteration.
		  learning_rate: A `Tensor` of type `float32`. Scalar learning rate.
		  dropout_seed: A `Tensor` of type `int64`.
		  max_tree_depth: A `Tensor` of type `int32`.
		  weak_learner_type: A `Tensor` of type `int32`.
		    The type of weak learner to use.
		  partition_ids: A list of `Tensor` objects with type `int32`.
		    List of Rank 1 Tensors containing partition Id per candidate.
		  gains: A list with the same length as `partition_ids` of `Tensor` objects with type `float32`.
		    List of Rank 1 Tensors containing gains per candidate.
		  splits: A list with the same length as `partition_ids` of `Tensor` objects with type `string`.
		    List of Rank 1 Tensors containing serialized SplitInfo protos per candidate.
		  learner_config: A `string`.
		    Config for the learner of type LearnerConfig proto.
		  center_bias: A `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function grow_tree_ensemble(tree_ensemble_handle:Dynamic, stamp_token:Dynamic, next_stamp_token:Dynamic, learning_rate:Dynamic, dropout_seed:Dynamic, max_tree_depth:Dynamic, weak_learner_type:Dynamic, partition_ids:Dynamic, gains:Dynamic, splits:Dynamic, learner_config:Dynamic, center_bias:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function grow_tree_ensemble
	**/
	static public function grow_tree_ensemble_eager_fallback(tree_ensemble_handle:Dynamic, stamp_token:Dynamic, next_stamp_token:Dynamic, learning_rate:Dynamic, dropout_seed:Dynamic, max_tree_depth:Dynamic, weak_learner_type:Dynamic, partition_ids:Dynamic, gains:Dynamic, splits:Dynamic, learner_config:Dynamic, center_bias:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Retrieves stats related to the tree ensemble.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    Handle to the ensemble variable.
		  stamp_token: A `Tensor` of type `int64`.
		    Stamp token for validating operation consistency.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (num_trees, num_layers, active_tree, active_layer, attempted_trees, attempted_layers).
		
		  num_trees: A `Tensor` of type `int64`. Scalar indicating the number of finalized trees in the ensemble.
		  num_layers: A `Tensor` of type `int64`. Scalar indicating the number of layers in the ensemble.
		  active_tree: A `Tensor` of type `int64`. Scalar indicating the active tree being trained.
		  active_layer: A `Tensor` of type `int64`. Scalar indicating the active layer being trained.
		  attempted_trees: A `Tensor` of type `int64`.
		  attempted_layers: A `Tensor` of type `int64`.
	**/
	static public function tree_ensemble_stats(tree_ensemble_handle:Dynamic, stamp_token:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tree_ensemble_stats
	**/
	static public function tree_ensemble_stats_eager_fallback(tree_ensemble_handle:Dynamic, stamp_token:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
}