/* This file is generated, do not edit! */
package tensorflow.contrib.saved_model.python.saved_model.keras_saved_model;
@:pythonImport("tensorflow.contrib.saved_model.python.saved_model.keras_saved_model") extern class Keras_saved_model_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Asserts model and clone contain the same checkpointable objects.
	**/
	static public function _assert_same_non_optimizer_objects(model:Dynamic, model_graph:Dynamic, clone:Dynamic, clone_graph:Dynamic):Dynamic;
	/**
		Creates a SignatureDef map from a Keras model.
	**/
	static public function _create_signature_def_map(model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Exports a model, and optionally saves new vars from the clone model.
		
		Args:
		  mode: A `tf.estimator.ModeKeys` string.
		  has_saved_vars: A `boolean` indicating whether the SavedModel has already
		    exported variables.
		  builder: A `SavedModelBuilder` object.
		  model: A `tf.keras.Model` object.
		  custom_objects: A dictionary mapping string names to custom classes
		    or functions.
		  checkpoint_path: String path to checkpoint.
		  input_signature: Nested TensorSpec containing the expected inputs. Can be
		    `None`, in which case the signature will be inferred from the model.
		
		Raises:
		  ValueError: If the train/eval mode is being exported, but the model does
		    not have an optimizer.
	**/
	static public function _export_mode(mode:Dynamic, has_saved_vars:Dynamic, builder:Dynamic, model:Dynamic, custom_objects:Dynamic, checkpoint_path:Dynamic, input_signature:Dynamic):Dynamic;
	/**
		Saves model configuration as a json string under assets folder.
	**/
	static public function _export_model_json(model:Dynamic, saved_model_path:Dynamic):Dynamic;
	/**
		Saves model weights in checkpoint format under variables folder.
	**/
	static public function _export_model_variables(model:Dynamic, saved_model_path:Dynamic):Dynamic;
	/**
		Returns list of all checkpointed saveable objects in the model.
	**/
	static public function _get_var_list(model:Dynamic):Dynamic;
	/**
		Exports model to v1 SavedModel format.
	**/
	static public function _save_v1_format(model:Dynamic, path:Dynamic, custom_objects:Dynamic, as_text:Dynamic, input_signature:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function create_placeholder(spec:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Loads a keras.Model from SavedModel.
		
		load_model reinstantiates model state by:
		1) loading model topology from json (this will eventually come
		   from metagraph).
		2) loading model weights from checkpoint.
		
		Example:
		
		```python
		import tensorflow as tf
		
		# Create a tf.keras model.
		model = tf.keras.Sequential()
		model.add(tf.keras.layers.Dense(1, input_shape=[10]))
		model.summary()
		
		# Save the tf.keras model in the SavedModel format.
		saved_to_path = tf.contrib.saved_model.save_keras_model(
		      model, '/tmp/my_simple_tf_keras_saved_model')
		
		# Load the saved keras model back.
		model_prime = tf.contrib.saved_model.load_keras_model(saved_to_path)
		model_prime.summary()
		```
		
		Args:
		  saved_model_path: a string specifying the path to an existing SavedModel.
		
		Returns:
		  a keras.Model instance.
	**/
	static public function load_keras_model(saved_model_path:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Saves a `tf.keras.Model` into Tensorflow SavedModel format.
		
		`save_model` generates new files/folders under the `saved_model_path` folder:
		1) a checkpoint containing the model weights.
		2) a saved_model.pb file containing the model's MetaGraphs. The prediction
		   graph is always exported. The evaluaton and training graphs are exported
		   if the following conditions are met:
		   - Evaluation: model loss is defined.
		   - Training: model is compiled with an optimizer defined under `tf.train`.
		     This is because `tf.keras.optimizers.Optimizer` instances cannot be
		     saved to checkpoints.
		3) Model's json configuration, if model.get_config() has been implemented.
		   This file can be used to reload the model using
		   tf.keras.models.model_from_json(). Note that if any custom objects were
		   used, they should be passed to the `custom_object` argument when loading
		   the model.
		
		Model limitations:
		- Sequential and functional models can always be saved.
		- Subclassed models can only be saved when `serving_only=True`. This is due to
		  the current implementation copying the model in order to export the training
		  and evaluation graphs. Because the topology of subclassed models cannot be
		  determined, the subclassed models cannot be cloned. Subclassed models will
		  be entirely exportable in the future.
		
		Note that each mode is exported in separate graphs, so different modes do not
		share variables. To use the train graph with evaluation or prediction graphs,
		create a new checkpoint if variable values have been updated.
		
		Example:
		
		```python
		import tensorflow as tf
		
		# Create a tf.keras model.
		model = tf.keras.Sequential()
		model.add(tf.keras.layers.Dense(1, input_shape=[10]))
		model.summary()
		
		# Save the tf.keras model in the SavedModel format.
		saved_to_path = tf.contrib.saved_model.save_keras_model(
		      model, '/tmp/my_simple_tf_keras_saved_model')
		
		# Load the saved keras model back.
		model_prime = tf.contrib.saved_model.load_keras_model(saved_to_path)
		model_prime.summary()
		```
		
		Args:
		  model: A `tf.keras.Model` to be saved. If the model is subclassed, the flag
		    `serving_only` must be set to True.
		  saved_model_path: a string specifying the path to the SavedModel directory.
		    The SavedModel will be saved to a timestamped folder created within this
		    directory.
		  custom_objects: Optional dictionary mapping string names to custom classes
		    or functions (e.g. custom loss functions).
		  as_text: whether to write the `SavedModel` proto in text format. Currently
		    unavailable in serving-only mode.
		  input_signature: A possibly nested sequence of `tf.TensorSpec` objects, used
		    to specify the expected model inputs. `input_signature`'s nested structure
		    should match the expected nested structure of the inputs to the model. If
		    this is not set, this function will attempt to infer the input shapes and
		    dtypes from the model. Note that if the model is subclassed, the tensor
		    inputs to the call function should be nested in the first argument (this
		    is a general requirement for using subclassed models with Keras functions
		    .fit(), .predict(), etc.).
		  serving_only: Export only the outputs produced from calling the model in
		    predict mode. The losses, optimizer, and other training configurations are
		    not saved. If the SavedModel will only be used for serving (rather than
		    retraining), or if the model is subclassed, this can be set to True.
		
		Returns:
		  String path to the SavedModel folder, a subdirectory of `saved_model_path`.
		
		Raises:
		  NotImplementedError: If the model is a subclassed model, and serving_only is
		    False.
		  ValueError: If the input signature cannot be inferred from the model.
	**/
	static public function save_keras_model(model:Dynamic, saved_model_path:Dynamic, ?custom_objects:Dynamic, ?as_text:Dynamic, ?input_signature:Dynamic, ?serving_only:Dynamic):Dynamic;
}