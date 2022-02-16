/* This file is generated, do not edit! */
package tensorflow.python.keras.saving.saving_utils;
@:pythonImport("tensorflow.python.keras.saving.saving_utils") extern class Saving_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Deserialize metrics, leaving special strings untouched.
	**/
	static public function _deserialize_metric(metric_config:Dynamic):Dynamic;
	/**
		Deserializes arbitrary Keras `config` using `deserialize_fn`.
	**/
	static public function _deserialize_nested_config(deserialize_fn:Dynamic, config:Dynamic):Dynamic;
	/**
		Enforces that either all specs have names or none do.
	**/
	static public function _enforce_names_consistency(specs:Dynamic):Dynamic;
	/**
		Serialized a nested structure of Keras objects.
	**/
	static public function _serialize_nested_config(config:Dynamic):Dynamic;
	/**
		Produces a prompt asking about overwriting a file.
		
		Args:
		    filepath: the path to the file to be overwritten.
		
		Returns:
		    True if we can proceed with overwrite, False otherwise.
	**/
	static public function ask_to_proceed_with_overwrite(filepath:Dynamic):Dynamic;
	/**
		Return model.compile arguments from training config.
	**/
	static public function compile_args_from_training_config(training_config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Convert metrics from a Keras model `compile` API to dictionary.
		
		This is used for converting Keras models to Estimators and SavedModels.
		
		Args:
		  model: A `tf.keras.Model` object.
		
		Returns:
		  Dictionary mapping metric names to metric instances. May return `None` if
		  the model does not contain any metrics.
	**/
	static public function extract_model_metrics(model:Dynamic):Dynamic;
	static public function is_hdf5_filepath(filepath:Dynamic):Dynamic;
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
	/**
		Returns a dictionary containing the model metadata.
	**/
	static public function model_metadata(model:Dynamic, ?include_optimizer:Dynamic, ?require_config:Dynamic):Dynamic;
	static public function raise_model_input_error(model:Dynamic):Dynamic;
	/**
		Returns whether the filepath should be overwritten.
	**/
	static public function should_overwrite(filepath:Dynamic, overwrite:Dynamic):Dynamic;
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
	static public function try_build_compiled_arguments(model:Dynamic):Dynamic;
}