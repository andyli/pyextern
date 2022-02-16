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
	/**
		Determine whether the argument is a servable 'classify' SignatureDef.
	**/
	static public function _is_valid_classification_signature(signature_def:Dynamic):Dynamic;
	/**
		Determine whether the argument is a servable 'predict' SignatureDef.
	**/
	static public function _is_valid_predict_signature(signature_def:Dynamic):Dynamic;
	/**
		Determine whether the argument is a servable 'regress' SignatureDef.
	**/
	static public function _is_valid_regression_signature(signature_def:Dynamic):Dynamic;
	/**
		Creates a signature for training and eval data.
		
		This function produces signatures that describe the inputs and outputs
		of a supervised process, such as training or evaluation, that
		results in loss, metrics, and the like. Note that this function only requires
		inputs to be not None.
		
		Args:
		  method_name: Method name of the SignatureDef as a string.
		  inputs: dict of string to `Tensor`.
		  loss: dict of string to `Tensor` representing computed loss.
		  predictions: dict of string to `Tensor` representing the output predictions.
		  metrics: dict of string to `Tensor` representing metric ops.
		
		Returns:
		  A train- or eval-flavored signature_def.
		
		Raises:
		  ValueError: If inputs or outputs is `None`.
	**/
	static public function _supervised_signature_def(method_name:Dynamic, inputs:Dynamic, ?loss:Dynamic, ?predictions:Dynamic, ?metrics:Dynamic):Dynamic;
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
	static public var division : Dynamic;
	/**
		Determine whether a SignatureDef can be served by TensorFlow Serving.
	**/
	static public function is_valid_signature(signature_def:Dynamic):Dynamic;
	/**
		Load an Op from a SignatureDef created by op_signature_def().
		
		Args:
		  signature_def: a SignatureDef proto
		  key: string key to op in the SignatureDef outputs.
		  import_scope: Scope used to import the op
		
		Returns:
		  Op (or possibly Tensor) in the graph with the same name as saved in the
		    SignatureDef.
		
		Raises:
		  NotFoundError: If the op could not be found in the graph.
	**/
	static public function load_op_from_signature_def(signature_def:Dynamic, key:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		Creates a signature def with the output pointing to an op.
		
		Note that op isn't strictly enforced to be an Op object, and may be a Tensor.
		It is recommended to use the build_signature_def() function for Tensors.
		
		Args:
		  op: An Op (or possibly Tensor).
		  key: Key to graph element in the SignatureDef outputs.
		
		Returns:
		  A SignatureDef with a single output pointing to the op.
	**/
	static public function op_signature_def(op:Dynamic, key:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
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
	static public function supervised_eval_signature_def(inputs:Dynamic, loss:Dynamic, ?predictions:Dynamic, ?metrics:Dynamic):Dynamic;
	static public function supervised_train_signature_def(inputs:Dynamic, loss:Dynamic, ?predictions:Dynamic, ?metrics:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}