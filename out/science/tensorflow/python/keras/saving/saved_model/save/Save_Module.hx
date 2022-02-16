/* This file is generated, do not edit! */
package tensorflow.python.keras.saving.saved_model.save;
@:pythonImport("tensorflow.python.keras.saving.saved_model.save") extern class Save_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Produces a prompt asking about overwriting a file.
		
		Args:
		    filepath: the path to the file to be overwritten.
		
		Returns:
		    True if we can proceed with overwrite, False otherwise.
	**/
	static public function ask_to_proceed_with_overwrite(filepath:Dynamic):Dynamic;
	/**
		Constructs a KerasMetadata proto with the metadata of each keras object.
	**/
	static public function generate_keras_metadata(saved_nodes:Dynamic, node_paths:Dynamic):Dynamic;
	/**
		Saves a model as a SavedModel to the filepath.
		
		Args:
		  model: Keras model instance to be saved.
		  filepath: String path to save the model.
		  overwrite: whether to overwrite the existing filepath.
		  include_optimizer: If True, save the model's optimizer state.
		  signatures: Signatures to save with the SavedModel. Applicable to the 'tf'
		    format only. Please see the `signatures` argument in `tf.saved_model.save`
		    for details.
		  options: (only applies to SavedModel format) `tf.saved_model.SaveOptions`
		    object that specifies options for saving to SavedModel.
		  save_traces: (only applies to SavedModel format) When enabled, the
		    SavedModel will store the function traces for each layer. This
		    can be disabled, so that only the configs of each layer are stored.
		    Defaults to `True`. Disabling this will decrease serialization time
		    and reduce file size, but it requires that all custom layers/models
		    implement a `get_config()` method.
		
		Raises:
		  ValueError: if the model's inputs have not been defined.
	**/
	static public function save(model:Dynamic, filepath:Dynamic, overwrite:Dynamic, include_optimizer:Dynamic, ?signatures:Dynamic, ?options:Dynamic, ?save_traces:Dynamic):Dynamic;
}