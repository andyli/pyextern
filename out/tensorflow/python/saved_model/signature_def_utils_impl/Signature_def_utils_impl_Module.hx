/* This file is generated, do not edit! */
package tensorflow.python.saved_model.signature_def_utils_impl;
@:pythonImport("tensorflow.python.saved_model.signature_def_utils_impl") extern class Signature_def_utils_impl_Module {
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
		Utility function to build a SignatureDef protocol buffer.
		
		Args:
		  inputs: Inputs of the SignatureDef defined as a proto map of string to
		      tensor info.
		  outputs: Outputs of the SignatureDef defined as a proto map of string to
		      tensor info.
		  method_name: Method name of the SignatureDef as a string.
		
		Returns:
		  A SignatureDef protocol buffer constructed based on the supplied arguments.
	**/
	static public function build_signature_def(?inputs:Dynamic, ?outputs:Dynamic, ?method_name:Dynamic):Dynamic;
	/**
		Creates classification signature from given examples and predictions.
		
		Args:
		  examples: `Tensor`.
		  classes: `Tensor`.
		  scores: `Tensor`.
		
		Returns:
		  A classification-flavored signature_def.
		
		Raises:
		  ValueError: If examples is `None`.
	**/
	static public function classification_signature_def(examples:Dynamic, classes:Dynamic, scores:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Creates prediction signature from given inputs and outputs.
		
		Args:
		  inputs: dict of string to `Tensor`.
		  outputs: dict of string to `Tensor`.
		
		Returns:
		  A prediction-flavored signature_def.
		
		Raises:
		  ValueError: If inputs or outputs is `None`.
	**/
	static public function predict_signature_def(inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates regression signature from given examples and predictions.
		
		Args:
		  examples: `Tensor`.
		  predictions: `Tensor`.
		
		Returns:
		  A regression-flavored signature_def.
		
		Raises:
		  ValueError: If examples is `None`.
	**/
	static public function regression_signature_def(examples:Dynamic, predictions:Dynamic):Dynamic;
}