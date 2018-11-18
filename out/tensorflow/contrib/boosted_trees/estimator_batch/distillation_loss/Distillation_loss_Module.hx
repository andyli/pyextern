/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.estimator_batch.distillation_loss;
@:pythonImport("tensorflow.contrib.boosted_trees.estimator_batch.distillation_loss") extern class Distillation_loss_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _logits_to_label_for_tree(logits:Dynamic, n_classes:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns a cross entropy loss function for dnn to tree distillation.
	**/
	static public function create_dnn_to_tree_cross_entropy_loss_fn(n_classes:Dynamic):Dynamic;
	/**
		Returns a squared loss function for dnn to tree distillation.
	**/
	static public function create_dnn_to_tree_squared_loss_fn(n_classes:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}