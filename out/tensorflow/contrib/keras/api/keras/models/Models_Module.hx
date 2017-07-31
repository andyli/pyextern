/* This file is generated, do not edit! */
package tensorflow.contrib.keras.api.keras.models;
@:pythonImport("tensorflow.contrib.keras.api.keras.models") extern class Models_Module {
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
		Loads a model saved via `save_model`.
		
		Arguments:
		    filepath: String, path to the saved model.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		Returns:
		    A Keras model instance. If an optimizer was found
		    as part of the saved model, the model is already
		    compiled. Otherwise, the model is uncompiled and
		    a warning will be displayed.
		
		Raises:
		    ImportError: if h5py is not available.
		    ValueError: In case of an invalid savefile.
	**/
	static public function load_model(filepath:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Instantiates a Keras model from its config.
		
		Arguments:
		    config: Configuration dictionary.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		Returns:
		    A Keras model instance (uncompiled).
	**/
	static public function model_from_config(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Parses a JSON model configuration file and returns a model instance.
		
		Arguments:
		    json_string: JSON string encoding a model configuration.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		Returns:
		    A Keras model instance (uncompiled).
	**/
	static public function model_from_json(json_string:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Parses a yaml model configuration file and returns a model instance.
		
		Arguments:
		    yaml_string: YAML string encoding a model configuration.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		Returns:
		    A Keras model instance (uncompiled).
		
		Raises:
		    ImportError: if yaml module is not found.
	**/
	static public function model_from_yaml(yaml_string:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Save a model to a HDF5 file.
		
		The saved model contains:
		    - the model's configuration (topology)
		    - the model's weights
		    - the model's optimizer's state (if any)
		
		Thus the saved model can be reinstantiated in
		the exact same state, without any of the code
		used for model definition or training.
		
		Arguments:
		    model: Keras model instance to be saved.
		    filepath: String, path where to save the model.
		    overwrite: Whether we should overwrite any existing
		        model at the target location, or instead
		        ask the user with a manual prompt.
		    include_optimizer: If True, save optimizer's state together.
		
		Raises:
		    ImportError: if h5py is not available.
	**/
	static public function save_model(model:Dynamic, filepath:Dynamic, ?overwrite:Dynamic, ?include_optimizer:Dynamic):Dynamic;
}