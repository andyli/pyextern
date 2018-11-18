/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.python.training.functions.gbdt_batch;
@:pythonImport("tensorflow.contrib.boosted_trees.python.training.functions.gbdt_batch") extern class Gbdt_batch_Module {
	static public var ENSEMBLE_STAMP : Dynamic;
	static public var LEAF_INDEX : Dynamic;
	static public var NUM_LAYERS_ATTEMPTED : Dynamic;
	static public var NUM_TREES_ATTEMPTED : Dynamic;
	static public var NUM_USED_HANDLERS : Dynamic;
	static public var PARTITION_IDS : Dynamic;
	static public var PREDICTIONS : Dynamic;
	static public var USED_HANDLERS_MASK : Dynamic;
	static public var _FEATURE_NAME_TEMPLATE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns parameters relevant for dropout.
		
		Args:
		  mode: Train/Eval/Infer
		  ensemble_stats: A TreeEnsembleStatsOp result tuple.
		
		Returns:
		  Whether to apply dropout and a dropout seed.
	**/
	static public function _dropout_params(mode:Dynamic, ensemble_stats:Dynamic):Dynamic;
	/**
		Returns columns from a 2-D tensor by index.
	**/
	static public function _get_column_by_index(tensor:Dynamic, indices:Dynamic):Dynamic;
	/**
		Returns predictions for the given logits and n_classes.
		
		Args:
		  stamp: The ensemble stamp.
		  logits: A rank 2 `Tensor` with shape [batch_size, n_classes - 1]. that
		    contains predictions when no dropout was applied.
		  partition_ids: A rank 1 `Tensor` with shape [batch_size].
		  ensemble_stats: A TreeEnsembleStatsOp result tuple.
		  used_handlers: A TreeEnsembleUsedHandlerOp result tuple of an int and a
		    boolean mask.
		  leaf_index: A rank 2 `Tensor` with shape [batch_size, number of trees]. that
		    contains leaf id for each example prediction.
		
		Returns:
		  A dict of predictions.
	**/
	static public function _make_predictions_dict(stamp:Dynamic, logits:Dynamic, partition_ids:Dynamic, ensemble_stats:Dynamic, used_handlers:Dynamic, ?leaf_index:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Extracts columns from a dictionary of features.
		
		Args:
		  features: `dict` of `Tensor` objects.
		  feature_columns: A list of feature_columns.
		
		Returns:
		  Seven values:
		    - A list of all feature column names.
		    - A list of dense floats.
		    - A list of sparse float feature indices.
		    - A list of sparse float feature values.
		    - A list of sparse float feature shapes.
		    - A list of sparse int feature indices.
		    - A list of sparse int feature values.
		    - A list of sparse int feature shapes.
		Raises:
		  ValueError: if features is not valid.
	**/
	static public function extract_features(features:Dynamic, feature_columns:Dynamic, use_core_columns:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}