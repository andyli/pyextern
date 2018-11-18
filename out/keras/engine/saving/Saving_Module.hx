/* This file is generated, do not edit! */
package keras.engine.saving;
@:pythonImport("keras.engine.saving") extern class Saving_Module {
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
		
		For missing biases in `LSTM`/`GRU` (`use_bias=False`),
		no conversion is made.
		
		# Arguments
		    layer: Target layer instance.
		    weights: List of source weights values (input kernels, recurrent
		        kernels, [biases]) (Numpy arrays).
		
		# Returns
		    A list of converted weights values (Numpy arrays).
		
		# Raises
		    ValueError: for incompatible GRU layer/weights or incompatible biases
	**/
	static public function _convert_rnn_weights(layer:Dynamic, weights:Dynamic):Dynamic;
	/**
		De-serializes a model serialized via _serialize_model
		
		# Arguments
		    f: `keras.utils.hdf5_utils.HFDict` instance.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		    compile: Boolean, whether to compile the model
		        after loading.
		
		# Returns
		    A Keras model instance. If an optimizer was found
		    as part of the saved model, the model is already
		    compiled. Otherwise, the model is uncompiled and
		    a warning will be displayed. When `compile` is set
		    to False, the compilation is omitted without any
		    warning.
	**/
	static public function _deserialize_model(f:Dynamic, ?custom_objects:Dynamic, ?compile:Dynamic):Dynamic;
	/**
		Checks if conversion on kernel matrices is required during weight loading.
		
		The convolution operation is implemented differently in different backends.
		While TH implements convolution, TF and CNTK implement the correlation operation.
		So the channel axis needs to be flipped when TF weights are loaded on a TH model,
		or vice versa. However, there's no conversion required between TF and CNTK.
		
		# Arguments
		    original_backend: Keras backend the weights were trained with, as a string.
		
		# Returns
		    `True` if conversion on kernel matrices is required, otherwise `False`.
	**/
	static public function _need_convert_kernel(original_backend:Dynamic):Dynamic;
	/**
		Model serialization logic.
		
		This method is used for both writing to HDF5 file/group,
		as well as pickling. This is achieved via a
		`keras.utils.hdf5_utls.H5Dict` object, which can wrap HDF5
		files, groups and dicts with a common API.
		
		# Arguments
		    model: Keras model instance to be serialized.
		    f: keras.utils.io_utils.HD5Dict instance.
		    include_optimizer: If True, serialize optimizer's state together.
	**/
	static public function _serialize_model(model:Dynamic, f:Dynamic, ?include_optimizer:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Produces a prompt asking about overwriting a file.
		
		# Arguments
		    filepath: the path to the file to be overwritten.
		
		# Returns
		    True if we can proceed with overwrite, False otherwise.
	**/
	static public function ask_to_proceed_with_overwrite(filepath:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Loads attributes of the specified name from the HDF5 group.
		
		This method deals with an inherent problem
		of HDF5 file which is not able to store
		data larger than HDF5_OBJECT_HEADER_LIMIT bytes.
		
		# Arguments
		    group: A pointer to a HDF5 group.
		    name: A name of the attributes to load.
		
		# Returns
		    data: Attributes data.
	**/
	static public function load_attributes_from_hdf5_group(group:Dynamic, name:Dynamic):Dynamic;
	/**
		Loads a model saved via `save_model`.
		
		# Arguments
		    filepath: one of the following:
		        - string, path to the saved model, or
		        - h5py.File or h5py.Group object from which to load the model
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		    compile: Boolean, whether to compile the model
		        after loading.
		
		# Returns
		    A Keras model instance. If an optimizer was found
		    as part of the saved model, the model is already
		    compiled. Otherwise, the model is uncompiled and
		    a warning will be displayed. When `compile` is set
		    to False, the compilation is omitted without any
		    warning.
		
		# Raises
		    ImportError: if h5py is not available.
		    ValueError: In case of an invalid savefile.
	**/
	static public function load_model(filepath:Dynamic, ?custom_objects:Dynamic, ?compile:Dynamic):Dynamic;
	/**
		Implements topological (order-based) weight loading.
		
		# Arguments
		    f: A pointer to a HDF5 group.
		    layers: a list of target layers.
		    reshape: Reshape weights to fit the layer when the correct number
		        of values are present but the shape does not match.
		
		# Raises
		    ValueError: in case of mismatch between provided layers
		        and weights file.
	**/
	static public function load_weights_from_hdf5_group(f:Dynamic, layers:Dynamic, ?reshape:Dynamic):Dynamic;
	/**
		Implements name-based weight loading.
		
		(instead of topological weight loading).
		
		Layers that have no matching name are skipped.
		
		# Arguments
		    f: A pointer to a HDF5 group.
		    layers: A list of target layers.
		    skip_mismatch: Boolean, whether to skip loading of layers
		        where there is a mismatch in the number of weights,
		        or a mismatch in the shape of the weights.
		    reshape: Reshape weights to fit the layer when the correct number
		        of values are present but the shape does not match.
		
		# Raises
		    ValueError: in case of mismatch between provided layers
		        and weights file and skip_mismatch=False.
	**/
	static public function load_weights_from_hdf5_group_by_name(f:Dynamic, layers:Dynamic, ?skip_mismatch:Dynamic, ?reshape:Dynamic):Dynamic;
	/**
		Instantiates a Keras model from its config.
		
		# Arguments
		    config: Configuration dictionary.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		# Returns
		    A Keras model instance (uncompiled).
		
		# Raises
		    TypeError: if `config` is not a dictionary.
	**/
	static public function model_from_config(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Parses a JSON model configuration file and returns a model instance.
		
		# Arguments
		    json_string: JSON string encoding a model configuration.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		# Returns
		    A Keras model instance (uncompiled).
	**/
	static public function model_from_json(json_string:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Parses a yaml model configuration file and returns a model instance.
		
		# Arguments
		    yaml_string: YAML string encoding a model configuration.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		# Returns
		    A Keras model instance (uncompiled).
	**/
	static public function model_from_yaml(yaml_string:Dynamic, ?custom_objects:Dynamic):Dynamic;
	static public function pickle_model(model:Dynamic):Dynamic;
	/**
		Converts layers weights from Keras 1 format to Keras 2.
		
		# Arguments
		    layer: Layer instance.
		    weights: List of weights values (Numpy arrays).
		    original_keras_version: Keras version for the weights, as a string.
		    original_backend: Keras backend the weights were trained with,
		        as a string.
		    reshape: Reshape weights to fit the layer when the correct number
		        of values are present but the shape does not match.
		
		# Returns
		    A list of weights values (Numpy arrays).
	**/
	static public function preprocess_weights_for_loading(layer:Dynamic, weights:Dynamic, ?original_keras_version:Dynamic, ?original_backend:Dynamic, ?reshape:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Saves attributes (data) of the specified name into the HDF5 group.
		
		This method deals with an inherent problem of HDF5 file which is not
		able to store data larger than HDF5_OBJECT_HEADER_LIMIT bytes.
		
		# Arguments
		    group: A pointer to a HDF5 group.
		    name: A name of the attributes to save.
		    data: Attributes data to store.
	**/
	static public function save_attributes_to_hdf5_group(group:Dynamic, name:Dynamic, data:Dynamic):Dynamic;
	/**
		Save a model to a HDF5 file.
		
		Note: Please also see
		[How can I install HDF5 or h5py to save my models in Keras?](
		    /getting-started/faq/
		    #how-can-i-install-HDF5-or-h5py-to-save-my-models-in-Keras)
		in the FAQ for instructions on how to install `h5py`.
		
		The saved model contains:
		    - the model's configuration (topology)
		    - the model's weights
		    - the model's optimizer's state (if any)
		
		Thus the saved model can be reinstantiated in
		the exact same state, without any of the code
		used for model definition or training.
		
		# Arguments
		    model: Keras model instance to be saved.
		    filepath: one of the following:
		        - string, path where to save the model, or
		        - h5py.File or h5py.Group object where to save the model
		    overwrite: Whether we should overwrite any existing
		        model at the target location, or instead
		        ask the user with a manual prompt.
		    include_optimizer: If True, save optimizer's state together.
		
		# Raises
		    ImportError: if h5py is not available.
	**/
	static public function save_model(model:Dynamic, filepath:Dynamic, ?overwrite:Dynamic, ?include_optimizer:Dynamic):Dynamic;
	static public function save_weights_to_hdf5_group(f:Dynamic, layers:Dynamic):Dynamic;
	static public function unpickle_model(state:Dynamic):Dynamic;
}