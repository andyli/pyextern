/* This file is generated, do not edit! */
package tensorflow.python.keras.saving.saved_model_experimental;
@:pythonImport("tensorflow.python.keras.saving.saved_model_experimental") extern class Saved_model_experimental_Module {
	static public var SAVED_MODEL_FILENAME_JSON : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Asserts model and clone contain the same trackable objects.
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
		Return path to asset directory in the SavedModel.
	**/
	static public function _get_assets_dir(export_dir:Dynamic):Dynamic;
	/**
		Return assets sub-directory, or create one if it doesn't exist.
	**/
	static public function _get_or_create_assets_dir(export_dir:Dynamic):Dynamic;
	/**
		Return variables sub-directory, or create one if it doesn't exist.
	**/
	static public function _get_or_create_variables_dir(export_dir:Dynamic):Dynamic;
	/**
		Returns list of all checkpointed saveable objects in the model.
	**/
	static public function _get_var_list(model:Dynamic):Dynamic;
	/**
		Return variables sub-directory in the SavedModel.
	**/
	static public function _get_variables_dir(export_dir:Dynamic):Dynamic;
	/**
		Return the variables path, used as the prefix for checkpoint files.
	**/
	static public function _get_variables_path(export_dir:Dynamic):Dynamic;
	/**
		Exports model to v1 SavedModel format.
	**/
	static public function _save_v1_format(model:Dynamic, path:Dynamic, custom_objects:Dynamic, as_text:Dynamic, input_signature:Dynamic):Dynamic;
	static public function create_placeholder(spec:Dynamic):Dynamic;
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
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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