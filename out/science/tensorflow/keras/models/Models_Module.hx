/* This file is generated, do not edit! */
package tensorflow.keras.models;
@:pythonImport("tensorflow.keras.models") extern class Models_Module {
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
		Clone a Functional or Sequential `Model` instance.
		
		Model cloning is similar to calling a model on new inputs,
		except that it creates new layers (and thus new weights) instead
		of sharing the weights of the existing layers.
		
		Note that
		`clone_model` will not preserve the uniqueness of shared objects within the
		model (e.g. a single variable attached to two distinct layers will be
		restored as two separate variables).
		
		Args:
		    model: Instance of `Model`
		        (could be a Functional model or a Sequential model).
		    input_tensors: optional list of input tensors or InputLayer objects
		        to build the model upon. If not provided,
		        new `Input` objects will be created.
		    clone_function: Callable to be used to clone each layer in the target
		        model (except `InputLayer` instances). It takes as argument the layer
		        instance to be cloned, and returns the corresponding layer instance to
		        be used in the model copy. If unspecified, this callable defaults to
		        the following serialization/deserialization function:
		        `lambda layer: layer.__class__.from_config(layer.get_config())`.
		        By passing a custom callable, you can customize your copy of the
		        model, e.g. by wrapping certain layers of interest (you might want to
		        replace all `LSTM` instances with equivalent
		        `Bidirectional(LSTM(...))` instances, for example).
		
		Returns:
		  An instance of `Model` reproducing the behavior
		  of the original model, on top of new inputs tensors,
		  using newly instantiated weights. The cloned model may behave
		  differently from the original model if a custom `clone_function`
		  modifies the layer.
		
		Example:
		
		```python
		# Create a test Sequential model.
		model = keras.Sequential([
		    keras.Input(shape=(728,)),
		    keras.layers.Dense(32, activation='relu'),
		    keras.layers.Dense(1, activation='sigmoid'),
		])
		# Create a copy of the test model (with freshly initialized weights).
		new_model = clone_model(model)
		```
		
		Note that subclassed models cannot be cloned, since their internal
		layer structure is not known. To achieve equivalent functionality
		as `clone_model` in the case of a subclassed model, simply make sure
		that the model class implements `get_config()`
		(and optionally `from_config()`), and call:
		
		```python
		new_model = model.__class__.from_config(model.get_config())
		```
	**/
	static public function clone_model(model:Dynamic, ?input_tensors:Dynamic, ?clone_function:Dynamic):Dynamic;
	/**
		Loads a model saved via `model.save()`.
		
		Usage:
		
		>>> model = tf.keras.Sequential([
		...     tf.keras.layers.Dense(5, input_shape=(3,)),
		...     tf.keras.layers.Softmax()])
		>>> model.save('/tmp/model')
		>>> loaded_model = tf.keras.models.load_model('/tmp/model')
		>>> x = tf.random.uniform((10, 3))
		>>> assert np.allclose(model.predict(x), loaded_model.predict(x))
		
		Note that the model weights may have different scoped names after being
		loaded. Scoped names include the model/layer names, such as
		`"dense_1/kernel:0"`. It is recommended that you use the layer properties to
		access specific variables, e.g. `model.get_layer("dense_1").kernel`.
		
		Args:
		    filepath: One of the following:
		        - String or `pathlib.Path` object, path to the saved model
		        - `h5py.File` object from which to load the model
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		    compile: Boolean, whether to compile the model
		        after loading.
		    options: Optional `tf.saved_model.LoadOptions` object that specifies
		      options for loading from SavedModel.
		
		Returns:
		    A Keras model instance. If the original model was compiled, and saved with
		    the optimizer, then the returned model will be compiled. Otherwise, the
		    model will be left uncompiled. In the case that an uncompiled model is
		    returned, a warning is displayed if the `compile` argument is set to
		    `True`.
		
		Raises:
		    ImportError: if loading from an hdf5 file and h5py is not available.
		    IOError: In case of an invalid savefile.
	**/
	static public function load_model(filepath:Dynamic, ?custom_objects:Dynamic, ?compile:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Instantiates a Keras model from its config.
		
		Usage:
		```
		# for a Functional API model
		tf.keras.Model().from_config(model.get_config())
		
		# for a Sequential model
		tf.keras.Sequential().from_config(model.get_config())
		```
		
		Args:
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
		Parses a JSON model configuration string and returns a model instance.
		
		Usage:
		
		>>> model = tf.keras.Sequential([
		...     tf.keras.layers.Dense(5, input_shape=(3,)),
		...     tf.keras.layers.Softmax()])
		>>> config = model.to_json()
		>>> loaded_model = tf.keras.models.model_from_json(config)
		
		Args:
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
		
		Note: Since TF 2.6, this method is no longer supported and will raise a
		RuntimeError.
		
		Args:
		    yaml_string: YAML string or open file encoding a model configuration.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		Returns:
		    A Keras model instance (uncompiled).
		
		Raises:
		    RuntimeError: announces that the method poses a security risk
	**/
	static public function model_from_yaml(yaml_string:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Saves a model as a TensorFlow SavedModel or HDF5 file.
		
		See the [Serialization and Saving guide](https://keras.io/guides/serialization_and_saving/)
		for details.
		
		Usage:
		
		>>> model = tf.keras.Sequential([
		...     tf.keras.layers.Dense(5, input_shape=(3,)),
		...     tf.keras.layers.Softmax()])
		>>> model.save('/tmp/model')
		>>> loaded_model = tf.keras.models.load_model('/tmp/model')
		>>> x = tf.random.uniform((10, 3))
		>>> assert np.allclose(model.predict(x), loaded_model.predict(x))
		
		The SavedModel and HDF5 file contains:
		
		- the model's configuration (topology)
		- the model's weights
		- the model's optimizer's state (if any)
		
		Thus models can be reinstantiated in the exact same state, without any of the
		code used for model definition or training.
		
		Note that the model weights may have different scoped names after being
		loaded. Scoped names include the model/layer names, such as
		`"dense_1/kernel:0"`. It is recommended that you use the layer properties to
		access specific variables, e.g. `model.get_layer("dense_1").kernel`.
		
		__SavedModel serialization format__
		
		Keras SavedModel uses `tf.saved_model.save` to save the model and all
		trackable objects attached to the model (e.g. layers and variables). The model
		config, weights, and optimizer are saved in the SavedModel. Additionally, for
		every Keras layer attached to the model, the SavedModel stores:
		
		  * the config and metadata -- e.g. name, dtype, trainable status
		  * traced call and loss functions, which are stored as TensorFlow subgraphs.
		
		The traced functions allow the SavedModel format to save and load custom
		layers without the original class definition.
		
		You can choose to not save the traced functions by disabling the `save_traces`
		option. This will decrease the time it takes to save the model and the
		amount of disk space occupied by the output SavedModel. If you enable this
		option, then you _must_ provide all custom class definitions when loading
		the model. See the `custom_objects` argument in `tf.keras.models.load_model`.
		
		Args:
		    model: Keras model instance to be saved.
		    filepath: One of the following:
		      - String or `pathlib.Path` object, path where to save the model
		      - `h5py.File` object where to save the model
		    overwrite: Whether we should overwrite any existing model at the target
		      location, or instead ask the user with a manual prompt.
		    include_optimizer: If True, save optimizer's state together.
		    save_format: Either 'tf' or 'h5', indicating whether to save the model
		      to Tensorflow SavedModel or HDF5. Defaults to 'tf' in TF 2.X, and 'h5'
		      in TF 1.X.
		    signatures: Signatures to save with the SavedModel. Applicable to the 'tf'
		      format only. Please see the `signatures` argument in
		      `tf.saved_model.save` for details.
		    options: (only applies to SavedModel format) `tf.saved_model.SaveOptions`
		      object that specifies options for saving to SavedModel.
		    save_traces: (only applies to SavedModel format) When enabled, the
		      SavedModel will store the function traces for each layer. This
		      can be disabled, so that only the configs of each layer are stored.
		      Defaults to `True`. Disabling this will decrease serialization time and
		      reduce file size, but it requires that all custom layers/models
		      implement a `get_config()` method.
		
		Raises:
		    ImportError: If save format is hdf5, and h5py is not available.
	**/
	static public function save_model(model:Dynamic, filepath:Dynamic, ?overwrite:Dynamic, ?include_optimizer:Dynamic, ?save_format:Dynamic, ?signatures:Dynamic, ?options:Dynamic, ?save_traces:Dynamic):Dynamic;
}