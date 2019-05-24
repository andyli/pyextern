/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.estimator_batch.custom_export_strategy;
@:pythonImport("tensorflow.contrib.boosted_trees.estimator_batch.custom_export_strategy") extern class Custom_export_strategy_Module {
	static public var _SPARSE_FLOAT_FEATURE_NAME_TEMPLATE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Export the feature importance per feature column.
	**/
	static public function _get_feature_importances(dtec:Dynamic, feature_names:Dynamic, num_dense_floats:Dynamic, num_sparse_float:Dynamic, num_sparse_int:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Convert GTFlow trees to universal format.
	**/
	static public function convert_to_universal_format(dtec:Dynamic, sorted_feature_names:Dynamic, num_dense:Dynamic, num_sparse_float:Dynamic, num_sparse_int:Dynamic, ?feature_name_to_proto:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Makes custom exporter of GTFlow tree format.
		
		Args:
		  name: A string, for the name of the export strategy.
		  convert_fn: A function that converts the tree proto to desired format and
		    saves it to the desired location. Can be None to skip conversion.
		  feature_columns: A list of feature columns.
		  export_input_fn: A function that takes no arguments and returns an
		    `InputFnOps`.
		  use_core_columns: A boolean, whether core feature columns were used.
		  feature_engineering_fn: Feature eng function to be called on the input.
		
		Returns:
		  An `ExportStrategy`.
	**/
	static public function make_custom_export_strategy(name:Dynamic, convert_fn:Dynamic, feature_columns:Dynamic, export_input_fn:Dynamic, ?use_core_columns:Dynamic, ?feature_engineering_fn:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}