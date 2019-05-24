/* This file is generated, do not edit! */
package tensorflow.contrib.saved_model;
@:pythonImport("tensorflow.contrib.saved_model") extern class Saved_model_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
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