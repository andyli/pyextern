/* This file is generated, do not edit! */
package tensorflow._api.v1.compat.v1.saved_model.signature_def_utils;
@:pythonImport("tensorflow._api.v1.compat.v1.saved_model.signature_def_utils") extern class Signature_def_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		
		This function produces signatures intended for use with the TensorFlow Serving
		Classify API (tensorflow_serving/apis/prediction_service.proto), and so
		constrains the input and output types to those allowed by TensorFlow Serving.
		
		Args:
		  examples: A string `Tensor`, expected to accept serialized tf.Examples.
		  classes: A string `Tensor`.  Note that the ClassificationResponse message
		    requires that class labels are strings, not integers or anything else.
		  scores: a float `Tensor`.
		
		Returns:
		  A classification-flavored signature_def.
		
		Raises:
		  ValueError: If examples is `None`.
	**/
	static public function classification_signature_def(examples:Dynamic, classes:Dynamic, scores:Dynamic):Dynamic;
	/**
		Determine whether a SignatureDef can be served by TensorFlow Serving.
	**/
	static public function is_valid_signature(signature_def:Dynamic):Dynamic;
	/**
		Creates prediction signature from given inputs and outputs.
		
		This function produces signatures intended for use with the TensorFlow Serving
		Predict API (tensorflow_serving/apis/prediction_service.proto). This API
		imposes no constraints on the input and output types.
		
		Args:
		  inputs: dict of string to `Tensor`.
		  outputs: dict of string to `Tensor`.
		
		Returns:
		  A prediction-flavored signature_def.
		
		Raises:
		  ValueError: If inputs or outputs is `None`.
	**/
	static public function predict_signature_def(inputs:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Creates regression signature from given examples and predictions.
		
		This function produces signatures intended for use with the TensorFlow Serving
		Regress API (tensorflow_serving/apis/prediction_service.proto), and so
		constrains the input and output types to those allowed by TensorFlow Serving.
		
		Args:
		  examples: A string `Tensor`, expected to accept serialized tf.Examples.
		  predictions: A float `Tensor`.
		
		Returns:
		  A regression-flavored signature_def.
		
		Raises:
		  ValueError: If examples is `None`.
	**/
	static public function regression_signature_def(examples:Dynamic, predictions:Dynamic):Dynamic;
}