/* This file is generated, do not edit! */
package tensorflow.python.keras.feature_column.base_feature_layer;
@:pythonImport("tensorflow.python.keras.feature_column.base_feature_layer") extern class Base_feature_layer_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Normalizes the `feature_columns` input.
		
		This method converts the `feature_columns` to list type as best as it can. In
		addition, verifies the type and other parts of feature_columns, required by
		downstream library.
		
		Args:
		  feature_columns: The raw feature columns, usually passed by users.
		
		Returns:
		  The normalized feature column list.
		
		Raises:
		  ValueError: for any invalid inputs, such as empty, duplicated names, etc.
	**/
	static public function _normalize_feature_columns(feature_columns:Dynamic):Dynamic;
	/**
		Sanitizes user-provided feature names for use as variable scopes.
	**/
	static public function _sanitize_column_name_for_variable_scope(name:Dynamic):Dynamic;
	/**
		Verify equality between static batch sizes.
		
		Args:
		  tensors: iterable of input tensors.
		  columns: Corresponding feature columns.
		
		Raises:
		  ValueError: in case of mismatched batch sizes.
	**/
	static public function _verify_static_batch_size_equality(tensors:Dynamic, columns:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}