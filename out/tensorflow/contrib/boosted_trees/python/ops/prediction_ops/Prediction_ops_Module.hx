/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.python.ops.prediction_ops;
@:pythonImport("tensorflow.contrib.boosted_trees.python.ops.prediction_ops") extern class Prediction_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Splits input examples into the leaves of the tree.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    The handle to the tree ensemble.
		  dense_float_features: A list of `Tensor` objects with type `float32`.
		    Rank 2 Tensors containing dense float feature values.
		  sparse_float_feature_indices: A list of `Tensor` objects with type `int64`.
		    Rank 2 Tensors containing sparse float indices.
		  sparse_float_feature_values: A list with the same length as `sparse_float_feature_indices` of `Tensor` objects with type `float32`.
		    Rank 1 Tensors containing sparse float values.
		  sparse_float_feature_shapes: A list with the same length as `sparse_float_feature_indices` of `Tensor` objects with type `int64`.
		    Rank 1 Tensors containing sparse float shapes.
		  sparse_int_feature_indices: A list of `Tensor` objects with type `int64`.
		    Rank 2 Tensors containing sparse int indices.
		  sparse_int_feature_values: A list with the same length as `sparse_int_feature_indices` of `Tensor` objects with type `int64`.
		    Rank 1 Tensors containing sparse int values.
		  sparse_int_feature_shapes: A list with the same length as `sparse_int_feature_indices` of `Tensor` objects with type `int64`.
		    Rank 1 Tensors containing sparse int shapes.
		  use_locking: An optional `bool`. Defaults to `False`.
		    Whether to use locking.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
		  Rank 1 Tensor containing partition ids per example.
	**/
	static public function gradient_trees_partition_examples(tree_ensemble_handle:Dynamic, dense_float_features:Dynamic, sparse_float_feature_indices:Dynamic, sparse_float_feature_values:Dynamic, sparse_float_feature_shapes:Dynamic, sparse_int_feature_indices:Dynamic, sparse_int_feature_values:Dynamic, sparse_int_feature_shapes:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Runs multiple additive regression forests predictors on input instances
		
		and computes the final prediction for each class.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    The handle to the tree ensemble.
		  seed: A `Tensor` of type `int64`. random seed to be used for dropout.
		  dense_float_features: A list of `Tensor` objects with type `float32`.
		    Rank 2 Tensors containing dense float feature values.
		  sparse_float_feature_indices: A list of `Tensor` objects with type `int64`.
		    Rank 2 Tensors containing sparse float indices.
		  sparse_float_feature_values: A list with the same length as `sparse_float_feature_indices` of `Tensor` objects with type `float32`.
		    Rank 1 Tensors containing sparse float values.
		  sparse_float_feature_shapes: A list with the same length as `sparse_float_feature_indices` of `Tensor` objects with type `int64`.
		    Rank 1 Tensors containing sparse float shapes.
		  sparse_int_feature_indices: A list of `Tensor` objects with type `int64`.
		    Rank 2 Tensors containing sparse int indices.
		  sparse_int_feature_values: A list with the same length as `sparse_int_feature_indices` of `Tensor` objects with type `int64`.
		    Rank 1 Tensors containing sparse int values.
		  sparse_int_feature_shapes: A list with the same length as `sparse_int_feature_indices` of `Tensor` objects with type `int64`.
		    Rank 1 Tensors containing sparse int shapes.
		  learner_config: A `string`.
		    Config for the learner of type LearnerConfig proto. Prediction
		    ops for now uses only LearningRateDropoutDrivenConfig config from the learner.
		  apply_dropout: A `bool`. whether to apply dropout during prediction.
		  apply_averaging: A `bool`.
		    whether averaging of tree ensembles should take place. If set
		    to true, will be based on AveragingConfig from learner_config.
		  center_bias: A `bool`.
		  reduce_dim: A `bool`.
		    whether to reduce the dimension (legacy impl) or not.
		  use_locking: An optional `bool`. Defaults to `False`.
		    Whether to use locking.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (predictions, drop_out_tree_indices_weights).
		
		  predictions: A `Tensor` of type `float32`. Rank 2 Tensor containing predictions per example per class.
		  drop_out_tree_indices_weights: A `Tensor` of type `float32`. Tensor of Rank 2 containing dropped trees indices
		    and original weights of those trees during prediction.
	**/
	static public function gradient_trees_prediction(tree_ensemble_handle:Dynamic, seed:Dynamic, dense_float_features:Dynamic, sparse_float_feature_indices:Dynamic, sparse_float_feature_values:Dynamic, sparse_float_feature_shapes:Dynamic, sparse_int_feature_indices:Dynamic, sparse_int_feature_values:Dynamic, sparse_int_feature_shapes:Dynamic, learner_config:Dynamic, apply_dropout:Dynamic, apply_averaging:Dynamic, center_bias:Dynamic, reduce_dim:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Runs multiple additive regression forests predictors on input instances
		
		and computes the final prediction for each class, and outputs a matrix of
		leaf ids per each tree in an ensemble.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    The handle to the tree ensemble.
		  seed: A `Tensor` of type `int64`. random seed to be used for dropout.
		  dense_float_features: A list of `Tensor` objects with type `float32`.
		    Rank 2 Tensors containing dense float feature values.
		  sparse_float_feature_indices: A list of `Tensor` objects with type `int64`.
		    Rank 2 Tensors containing sparse float indices.
		  sparse_float_feature_values: A list with the same length as `sparse_float_feature_indices` of `Tensor` objects with type `float32`.
		    Rank 1 Tensors containing sparse float values.
		  sparse_float_feature_shapes: A list with the same length as `sparse_float_feature_indices` of `Tensor` objects with type `int64`.
		    Rank 1 Tensors containing sparse float shapes.
		  sparse_int_feature_indices: A list of `Tensor` objects with type `int64`.
		    Rank 2 Tensors containing sparse int indices.
		  sparse_int_feature_values: A list with the same length as `sparse_int_feature_indices` of `Tensor` objects with type `int64`.
		    Rank 1 Tensors containing sparse int values.
		  sparse_int_feature_shapes: A list with the same length as `sparse_int_feature_indices` of `Tensor` objects with type `int64`.
		    Rank 1 Tensors containing sparse int shapes.
		  learner_config: A `string`.
		    Config for the learner of type LearnerConfig proto. Prediction
		    ops for now uses only LearningRateDropoutDrivenConfig config from the learner.
		  apply_dropout: A `bool`. whether to apply dropout during prediction.
		  apply_averaging: A `bool`.
		    whether averaging of tree ensembles should take place. If set
		    to true, will be based on AveragingConfig from learner_config.
		  center_bias: A `bool`.
		  reduce_dim: A `bool`.
		    whether to reduce the dimension (legacy impl) or not.
		  use_locking: An optional `bool`. Defaults to `False`.
		    Whether to use locking.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (predictions, drop_out_tree_indices_weights, leaf_index).
		
		  predictions: A `Tensor` of type `float32`. Rank 2 Tensor containing predictions per example per class.
		  drop_out_tree_indices_weights: A `Tensor` of type `float32`. Tensor of Rank 2 containing dropped trees indices
		  leaf_index: A `Tensor` of type `int32`. tensor of rank 2 containing leaf ids for each tree where an instance ended up.
	**/
	static public function gradient_trees_prediction_verbose(tree_ensemble_handle:Dynamic, seed:Dynamic, dense_float_features:Dynamic, sparse_float_feature_indices:Dynamic, sparse_float_feature_values:Dynamic, sparse_float_feature_shapes:Dynamic, sparse_int_feature_indices:Dynamic, sparse_int_feature_values:Dynamic, sparse_int_feature_shapes:Dynamic, learner_config:Dynamic, apply_dropout:Dynamic, apply_averaging:Dynamic, center_bias:Dynamic, reduce_dim:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}