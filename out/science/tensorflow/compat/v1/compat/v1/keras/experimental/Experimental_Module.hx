/* This file is generated, do not edit! */
package tensorflow.compat.v1.compat.v1.keras.experimental;
@:pythonImport("tensorflow.compat.v1.compat.v1.keras.experimental") extern class Experimental_Module {
	static public var __all__ : Dynamic;
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
		Exports a `tf.keras.Model` as a Tensorflow SavedModel.
		
		Note that at this time, subclassed models can only be saved using
		`serving_only=True`.
		
		The exported `SavedModel` is a standalone serialization of Tensorflow objects,
		and is supported by TF language APIs and the Tensorflow Serving system.
		To load the model, use the function
		`tf.keras.experimental.load_from_saved_model`.
		
		The `SavedModel` contains:
		
		1. a checkpoint containing the model weights.
		2. a `SavedModel` proto containing the Tensorflow backend graph. Separate
		   graphs are saved for prediction (serving), train, and evaluation. If
		   the model has not been compiled, then only the graph computing predictions
		   will be exported.
		3. the model's json config. If the model is subclassed, this will only be
		   included if the model's `get_config()` method is overwritten.
		
		Example:
		
		```python
		import tensorflow as tf
		
		# Create a tf.keras model.
		model = tf.keras.Sequential()
		model.add(tf.keras.layers.Dense(1, input_shape=[10]))
		model.summary()
		
		# Save the tf.keras model in the SavedModel format.
		path = '/tmp/simple_keras_model'
		tf.keras.experimental.export_saved_model(model, path)
		
		# Load the saved keras model back.
		new_model = tf.keras.experimental.load_from_saved_model(path)
		new_model.summary()
		```
		
		Args:
		  model: A `tf.keras.Model` to be saved. If the model is subclassed, the flag
		    `serving_only` must be set to True.
		  saved_model_path: a string specifying the path to the SavedModel directory.
		  custom_objects: Optional dictionary mapping string names to custom classes
		    or functions (e.g. custom loss functions).
		  as_text: bool, `False` by default. Whether to write the `SavedModel` proto
		    in text format. Currently unavailable in serving-only mode.
		  input_signature: A possibly nested sequence of `tf.TensorSpec` objects, used
		    to specify the expected model inputs. See `tf.function` for more details.
		  serving_only: bool, `False` by default. When this is true, only the
		    prediction graph is saved.
		
		Raises:
		  NotImplementedError: If the model is a subclassed model, and serving_only is
		    False.
		  ValueError: If the input signature cannot be inferred from the model.
		  AssertionError: If the SavedModel directory already exists and isn't empty.
	**/
	static public function export_saved_model(model:Dynamic, saved_model_path:Dynamic, ?custom_objects:Dynamic, ?as_text:Dynamic, ?input_signature:Dynamic, ?serving_only:Dynamic):Dynamic;
	/**
		Loads a keras Model from a SavedModel created by `export_saved_model()`.
		
		This function reinstantiates model state by:
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
		path = '/tmp/simple_keras_model'
		tf.keras.experimental.export_saved_model(model, path)
		
		# Load the saved keras model back.
		new_model = tf.keras.experimental.load_from_saved_model(path)
		new_model.summary()
		```
		
		Args:
		  saved_model_path: a string specifying the path to an existing SavedModel.
		  custom_objects: Optional dictionary mapping names
		      (strings) to custom classes or functions to be
		      considered during deserialization.
		
		Returns:
		  a keras.Model instance.
	**/
	static public function load_from_saved_model(saved_model_path:Dynamic, ?custom_objects:Dynamic):Dynamic;
}