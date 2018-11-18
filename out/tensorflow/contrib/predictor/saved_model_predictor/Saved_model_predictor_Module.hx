/* This file is generated, do not edit! */
package tensorflow.contrib.predictor.saved_model_predictor;
@:pythonImport("tensorflow.contrib.predictor.saved_model_predictor") extern class Saved_model_predictor_Module {
	static public var DEFAULT_TAGS : Dynamic;
	static public var _DEFAULT_INPUT_ALTERNATIVE_FORMAT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Validates signature arguments for `SavedModelPredictor`.
	**/
	static public function _check_signature_arguments(signature_def_key:Dynamic, signature_def:Dynamic, input_names:Dynamic, output_names:Dynamic):Dynamic;
	/**
		Construct a `SignatureDef` proto.
	**/
	static public function _get_signature_def(signature_def_key:Dynamic, export_dir:Dynamic, tags:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Gets `MetaGraphDef` from a directory containing a `SavedModel`.
		
		Returns the `MetaGraphDef` for the given tag-set and SavedModel directory.
		
		Args:
		  saved_model_dir: Directory containing the SavedModel.
		  tags: Comma separated list of tags used to identify the correct
		    `MetaGraphDef`.
		
		Raises:
		  ValueError: An error when the given tags cannot be found.
		
		Returns:
		  A `MetaGraphDef` corresponding to the given tags.
	**/
	static public function get_meta_graph_def(saved_model_dir:Dynamic, tags:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}