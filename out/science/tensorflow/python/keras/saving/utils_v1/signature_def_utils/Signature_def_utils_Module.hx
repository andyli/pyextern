/* This file is generated, do not edit! */
package tensorflow.python.keras.saving.utils_v1.signature_def_utils;
@:pythonImport("tensorflow.python.keras.saving.utils_v1.signature_def_utils") extern class Signature_def_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public function supervised_eval_signature_def(inputs:Dynamic, loss:Dynamic, ?predictions:Dynamic, ?metrics:Dynamic):Dynamic;
	static public function supervised_train_signature_def(inputs:Dynamic, loss:Dynamic, ?predictions:Dynamic, ?metrics:Dynamic):Dynamic;
}