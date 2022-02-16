/* This file is generated, do not edit! */
package tensorflow.python.keras.saving.hdf5_format;
@:pythonImport("tensorflow.python.keras.saving.hdf5_format") extern class Hdf5_format_Module {
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
		
		Args:
		    layer: Target layer instance.
		    weights: List of source weights values (input kernels, recurrent
		        kernels, [biases]) (Numpy arrays).
		
		Returns:
		    A list of converted weights values (Numpy arrays).
		
		Raises:
		    ValueError: for incompatible GRU layer/weights or incompatible biases
	**/
	static public function _convert_rnn_weights(layer:Dynamic, weights:Dynamic):Dynamic;
	/**
		DO NOT USE.
		
		For legacy reason, the layer.weights was in the order of
		[self.trainable_weights + self.non_trainable_weights], and this order was
		used for preserving the weights in h5 format. The new order of layer.weights
		are the same as layer.get_weights() which is more intuitive for user. To
		keep supporting the existing saved h5 file, this method should be used to
		save/load weights. In future version, we will delete this method and
		introduce a breaking change for h5 and stay with the new order for weights.
		
		Args:
		  layer: a `tf.keras.Model` or `tf.keras.layers.Layer` instance.
		
		Returns:
		  A list of variables with the order of trainable_weights, followed by
		    non_trainable_weights.
	**/
	static public function _legacy_weights(layer:Dynamic):Dynamic;
	/**
		Produces a prompt asking about overwriting a file.
		
		Args:
		    filepath: the path to the file to be overwritten.
		
		Returns:
		    True if we can proceed with overwrite, False otherwise.
	**/
	static public function ask_to_proceed_with_overwrite(filepath:Dynamic):Dynamic;
	/**
		Loads attributes of the specified name from the HDF5 group.
		
		This method deals with an inherent problem
		of HDF5 file which is not able to store
		data larger than HDF5_OBJECT_HEADER_LIMIT bytes.
		
		Args:
		    group: A pointer to a HDF5 group.
		    name: A name of the attributes to load.
		
		Returns:
		    data: Attributes data.
	**/
	static public function load_attributes_from_hdf5_group(group:Dynamic, name:Dynamic):Dynamic;
	/**
		Loads a model saved via `save_model_to_hdf5`.
		
		Args:
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
	static public function load_model_from_hdf5(filepath:Dynamic, ?custom_objects:Dynamic, ?compile:Dynamic):Dynamic;
	/**
		Load optimizer weights from a HDF5 group.
		
		Args:
		    hdf5_group: A pointer to a HDF5 group.
		
		Returns:
		    data: List of optimizer weight names.
	**/
	static public function load_optimizer_weights_from_hdf5_group(hdf5_group:Dynamic):Dynamic;
	/**
		Implements topological (order-based) weight loading.
		
		Args:
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
		
		Args:
		    f: A pointer to a HDF5 group.
		    layers: a list of target layers.
		    skip_mismatch: Boolean, whether to skip loading of layers
		        where there is a mismatch in the number of weights,
		        or a mismatch in the shape of the weights.
		
		Raises:
		    ValueError: in case of mismatch between provided layers
		        and weights file and skip_match=False.
	**/
	static public function load_weights_from_hdf5_group_by_name(f:Dynamic, layers:Dynamic, ?skip_mismatch:Dynamic):Dynamic;
	/**
		Preprocess layer weights between different Keras formats.
		
		Converts layers weights from Keras 1 format to Keras 2 and also weights of
		CuDNN layers in Keras 2.
		
		Args:
		    layer: Layer instance.
		    weights: List of weights values (Numpy arrays).
		    original_keras_version: Keras version for the weights, as a string.
		    original_backend: Keras backend the weights were trained with,
		        as a string.
		
		Returns:
		    A list of weights values (Numpy arrays).
	**/
	static public function preprocess_weights_for_loading(layer:Dynamic, weights:Dynamic, ?original_keras_version:Dynamic, ?original_backend:Dynamic):Dynamic;
	/**
		Saves attributes (data) of the specified name into the HDF5 group.
		
		This method deals with an inherent problem of HDF5 file which is not
		able to store data larger than HDF5_OBJECT_HEADER_LIMIT bytes.
		
		Args:
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
		
		Args:
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
	static public function save_model_to_hdf5(model:Dynamic, filepath:Dynamic, ?overwrite:Dynamic, ?include_optimizer:Dynamic):Dynamic;
	/**
		Saves optimizer weights of a optimizer to a HDF5 group.
		
		Args:
		    hdf5_group: HDF5 group.
		    optimizer: optimizer instance.
	**/
	static public function save_optimizer_weights_to_hdf5_group(hdf5_group:Dynamic, optimizer:Dynamic):Dynamic;
	/**
		Saves the weights of a list of layers to a HDF5 group.
		
		Args:
		    f: HDF5 group.
		    layers: List of layer instances.
	**/
	static public function save_weights_to_hdf5_group(f:Dynamic, layers:Dynamic):Dynamic;
}