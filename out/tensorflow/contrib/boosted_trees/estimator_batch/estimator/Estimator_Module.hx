/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.estimator_batch.estimator;
@:pythonImport("tensorflow.contrib.boosted_trees.estimator_batch.estimator") extern class Estimator_Module {
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
		Core head for multiclass problems.
	**/
	static public function core_multiclass_head(n_classes:Dynamic, ?weight_column:Dynamic, ?loss_reduction:Dynamic):Dynamic;
	/**
		Core head for quantile regression problems.
	**/
	static public function core_quantile_regression_head(quantiles:Dynamic, ?label_dimension:Dynamic, ?weight_column:Dynamic, ?loss_reduction:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}