/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.saving;
@:pythonImport("tensorflow.python.keras.engine.saving") extern class Saving_Module {
	static public var HDF5_OBJECT_HEADER_LIMIT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts weights for RNN layers between native and CuDNN format.
		
		Input kernels for each gate are transposed and converted between Fortran
		and C layout, recurrent kernels are transposed. For LSTM biases are summed/
		split in half, for GRU biases are reshaped.
		
		Weights can be converted in both directions between `LSTM` and`CuDNNSLTM`
		and between `CuDNNGRU` and `GRU(reset_after=True)`. Default `GRU` is not
		compatible with `CuDNNGRU`.
		
		For missing biases in `LSTM`/`GRU` (`use_bias=False`) no conversion is made.
		
		Arguments:
		    layer: Target layer instance.
		    weights: List of source weights values (input kernels, recurrent
		        kernels, [biases]) (Numpy arrays).
		
		Returns:
		    A list of converted weights values (Numpy arrays).
		
		Raises:
		    ValueError: for incompatible GRU layer/weights or incompatible biases
	**/
	static public function _convert_rnn_weights(layer:Dynamic, weights:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Produces a prompt asking about overwriting a file.
		
		Arguments:
		    filepath: the path to the file to be overwritten.
		
		Returns:
		    True if we can proceed with overwrite, False otherwise.
	**/
	static public function ask_to_proceed_with_overwrite(filepath:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Loads attributes of the specified name from the HDF5 group.
		
		This method deals with an inherent problem
		of HDF5 file which is not able to store
		data larger than HDF5_OBJECT_HEADER_LIMIT bytes.
		
		Arguments:
		    group: A pointer to a HDF5 group.
		    name: A name of the attributes to load.
		
		Returns:
		    data: Attributes data.
	**/
	static public function load_attributes_from_hdf5_group(group:Dynamic, name:Dynamic):Dynamic;
	/**
		Loads a model saved via `save_model`.
		
		Arguments:
		    filepath: One of the following:
		        - String, path to the saved model
		        - `h5py.File` object from which to load the model
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		    compile: Boolean, whether to compile the model
		        after loading.
		
		Returns:
		    A Keras model instance. If an optimizer was found
		    as part of the saved model, the model is already
		    compiled. Otherwise, the model is uncompiled and
		    a warning will be displayed. When `compile` is set
		    to False, the compilation is omitted without any
		    warning.
		
		Raises:
		    ImportError: if h5py is not available.
		    ValueError: In case of an invalid savefile.
	**/
	static public function load_model(filepath:Dynamic, ?custom_objects:Dynamic, ?compile:Dynamic):Dynamic;
	/**
		Implements topological (order-based) weight loading.
		
		Arguments:
		    f: A pointer to a HDF5 group.
		    layers: a list of target layers.
		
		Raises:
		    ValueError: in case of mismatch between provided layers
		        and weights file.
	**/
	static public function load_weights_from_hdf5_group(f:Dynamic, layers:Dynamic):Dynamic;
	/**
		Implements name-based weight loading.
		
		(instead of topological weight loading).
		
		Layers that have no matching name are skipped.
		
		Arguments:
		    f: A pointer to a HDF5 group.
		    layers: a list of target layers.
		
		Raises:
		    ValueError: in case of mismatch between provided layers
		        and weights file.
	**/
	static public function load_weights_from_hdf5_group_by_name(f:Dynamic, layers:Dynamic):Dynamic;
	/**
		Instantiates a Keras model from its config.
		
		Arguments:
		    config: Configuration dictionary.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		Returns:
		    A Keras model instance (uncompiled).
		
		Raises:
		    TypeError: if `config` is not a dictionary.
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
		Preprocess layer weights between different Keras formats.
		
		Converts layers weights from Keras 1 format to Keras 2 and also weights of
		CuDNN layers in Keras 2.
		
		Arguments:
		    layer: Layer instance.
		    weights: List of weights values (Numpy arrays).
		    original_keras_version: Keras version for the weights, as a string.
		    original_backend: Keras backend the weights were trained with,
		        as a string.
		
		Returns:
		    A list of weights values (Numpy arrays).
	**/
	static public function preprocess_weights_for_loading(layer:Dynamic, weights:Dynamic, ?original_keras_version:Dynamic, ?original_backend:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Saves attributes (data) of the specified name into the HDF5 group.
		
		This method deals with an inherent problem of HDF5 file which is not
		able to store data larger than HDF5_OBJECT_HEADER_LIMIT bytes.
		
		Arguments:
		    group: A pointer to a HDF5 group.
		    name: A name of the attributes to save.
		    data: Attributes data to store.
		
		Raises:
		  RuntimeError: If any single attribute is too large to be saved.
	**/
	static public function save_attributes_to_hdf5_group(group:Dynamic, name:Dynamic, data:Dynamic):Dynamic;
	/**
		Saves a model to a HDF5 file.
		
		The saved model contains:
		    - the model's configuration (topology)
		    - the model's weights
		    - the model's optimizer's state (if any)
		
		Thus the saved model can be reinstantiated in
		the exact same state, without any of the code
		used for model definition or training.
		
		Arguments:
		    model: Keras model instance to be saved.
		    filepath: One of the following:
		        - String, path where to save the model
		        - `h5py.File` object where to save the model
		    overwrite: Whether we should overwrite any existing
		        model at the target location, or instead
		        ask the user with a manual prompt.
		    include_optimizer: If True, save optimizer's state together.
		
		Raises:
		    ImportError: if h5py is not available.
	**/
	static public function save_model(model:Dynamic, filepath:Dynamic, ?overwrite:Dynamic, ?include_optimizer:Dynamic):Dynamic;
	/**
		Saves the weights of a list of layers to a HDF5 group.
		
		Arguments:
		    f: HDF5 group.
		    layers: List of layer instances.
	**/
	static public function save_weights_to_hdf5_group(f:Dynamic, layers:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}