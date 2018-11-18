/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.lib.learner.batch.ordinal_split_handler;
@:pythonImport("tensorflow.contrib.boosted_trees.lib.learner.batch.ordinal_split_handler") extern class Ordinal_split_handler_Module {
	static public var _BIAS_FEATURE_ID : Dynamic;
	static public var _PATTERN : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Function that builds splits for a dense feature column.
	**/
	static public function _make_dense_split(quantile_accumulator_handle:Dynamic, stats_accumulator_handle:Dynamic, stamp_token:Dynamic, next_stamp_token:Dynamic, multiclass_strategy:Dynamic, class_id:Dynamic, feature_column_id:Dynamic, l1_regularization:Dynamic, l2_regularization:Dynamic, tree_complexity_regularization:Dynamic, min_node_weight:Dynamic, is_multi_dimentional:Dynamic, loss_uses_sum_reduction:Dynamic, weak_learner_type:Dynamic):Dynamic;
	/**
		Function that builds splits for a sparse feature column.
	**/
	static public function _make_sparse_split(quantile_accumulator_handle:Dynamic, stats_accumulator_handle:Dynamic, stamp_token:Dynamic, next_stamp_token:Dynamic, multiclass_strategy:Dynamic, class_id:Dynamic, feature_column_id:Dynamic, l1_regularization:Dynamic, l2_regularization:Dynamic, tree_complexity_regularization:Dynamic, min_node_weight:Dynamic, is_multi_dimentional:Dynamic, loss_uses_sum_reduction:Dynamic):Dynamic;
	/**
		Builds a specialized version of the function.
	**/
	static public function _specialize_make_split_dense(func:Dynamic, is_multi_dimentional:Dynamic):Dynamic;
	/**
		Builds a specialized version of the function.
	**/
	static public function _specialize_make_split_sparse(func:Dynamic, is_multi_dimentional:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function dense_make_stats_update(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function make_dense_split_scalar(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function make_dense_split_tensor(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function make_sparse_split_scalar(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function make_sparse_split_tensor(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function sparse_make_stats_update(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}