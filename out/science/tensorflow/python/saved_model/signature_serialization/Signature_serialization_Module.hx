/* This file is generated, do not edit! */
package tensorflow.python.saved_model.signature_serialization;
@:pythonImport("tensorflow.python.saved_model.signature_serialization") extern class Signature_serialization_Module {
	static public var DEFAULT_SIGNATURE_ATTR : Dynamic;
	static public var SIGNATURE_ATTRIBUTE_NAME : Dynamic;
	static public var _NUM_DISPLAY_NORMALIZED_SIGNATURES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_signature(_function:Dynamic):Dynamic;
	/**
		Checks for user-specified signature input names that are normalized.
	**/
	static public function _get_signature_name_changes(concrete_function:Dynamic):Dynamic;
	/**
		Normalize outputs if necessary and check that they are tensors.
	**/
	static public function _normalize_outputs(outputs:Dynamic, function_name:Dynamic, signature_key:Dynamic):Dynamic;
	/**
		Returns whether concrete function can be converted to a signature.
	**/
	static public function _valid_signature(concrete_function:Dynamic):Dynamic;
	/**
		Raises error if input type is tf.Variable.
	**/
	static public function _validate_inputs(concrete_function:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts `signatures` into a dictionary of concrete functions.
	**/
	static public function canonicalize_signatures(signatures:Dynamic):Dynamic;
	/**
		Creates an object containing `signatures`.
	**/
	static public function create_signature_map(signatures:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Function to export, None if no suitable function was found.
	**/
	static public function find_function_to_export(saveable_view:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Performs signature-related sanity checks on `saveable_view`.
	**/
	static public function validate_saveable_view(saveable_view:Dynamic):Dynamic;
}