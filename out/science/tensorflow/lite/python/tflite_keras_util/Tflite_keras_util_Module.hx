/* This file is generated, do not edit! */
package tensorflow.lite.python.tflite_keras_util;
@:pythonImport("tensorflow.lite.python.tflite_keras_util") extern class Tflite_keras_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates pseudo {input | output} names for subclassed Models.
		
		Warning: this function should only be used to define default
		names for `Metics` and `SavedModel`. No other use cases should
		rely on a `Model`'s input or output names.
		
		Example with dict:
		
		`{'a': [x1, x2], 'b': x3}` becomes:
		`['a_1', 'a_2', 'b']`
		
		Example with list:
		
		`[x, y]` becomes:
		`['output_1', 'output_2']`
		
		Args:
		  tensors: `Model`'s outputs or inputs.
		  prefix: 'output_' for outputs, 'input_' for inputs.
		
		Returns:
		  Flattened list of pseudo names.
	**/
	static public function _create_pseudo_names(tensors:Dynamic, prefix:Dynamic):Dynamic;
	/**
		Enforces that either all specs have names or none do.
	**/
	static public function _enforce_names_consistency(specs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Create pseudo output names for a subclassed Model.
	**/
	static public function create_pseudo_output_names(outputs:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Inspect model to get its input signature.
		
		The model's input signature is a list with a single (possibly-nested) object.
		This is due to the Keras-enforced restriction that tensor inputs must be
		passed in as the first argument.
		
		For example, a model with input {'feature1': <Tensor>, 'feature2': <Tensor>}
		will have input signature: [{'feature1': TensorSpec, 'feature2': TensorSpec}]
		
		Args:
		  model: Keras Model object.
		  keep_original_batch_size: A boolean indicating whether we want to keep using
		    the original batch size or set it to None. Default is `False`, which means
		    that the batch dim of the returned input signature will always be set to
		    `None`.
		
		Returns:
		  A list containing either a single TensorSpec or an object with nested
		  TensorSpecs. This list does not contain the `training` argument.
	**/
	static public function model_input_signature(model:Dynamic, ?keep_original_batch_size:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function raise_model_input_error(model:Dynamic):Dynamic;
	/**
		Trace the model call to create a tf.function for exporting a Keras model.
		
		Args:
		  model: A Keras model.
		  input_signature: optional, a list of tf.TensorSpec objects specifying the
		    inputs to the model.
		
		Returns:
		  A tf.function wrapping the model's call function with input signatures set.
		
		Raises:
		  ValueError: if input signature cannot be inferred from the model.
	**/
	static public function trace_model_call(model:Dynamic, ?input_signature:Dynamic):Dynamic;
}