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
		Load a keras.Model from SavedModel.
		
		load_model reinstantiates model state by:
		1) loading model topology from json (this will eventually come
		   from metagraph).
		2) loading model weights from checkpoint.
		
		Args:
		  saved_model_path: a string specifying the path to an existing SavedModel.
		
		Returns:
		  a keras.Model instance.
	**/
	static public function load_keras_model(saved_model_path:Dynamic):Dynamic;
	/**
		Save a `tf.keras.Model` into Tensorflow SavedModel format.
		
		`save_model` generates new files/folders under the `saved_model_path` folder:
		1) an asset folder containing the json string of the model's
		   configuration (topology).
		2) a checkpoint containing the model weights.
		3) a saved_model.pb file containing the model's MetaGraphs. The prediction
		   graph is always exported. The evaluaton and training graphs are exported
		   if the following conditions are met:
		   - Evaluation: model loss is defined.
		   - Training: model is compiled with an optimizer defined under `tf.train`.
		     This is because `tf.keras.optimizers.Optimizer` instances cannot be
		     saved to checkpoints.
		
		Model Requirements:
		- Model must be a sequential model or functional model. Subclassed models can
		  not be saved via this function, unless you provide an implementation for
		  get_config() and from_config().
		- All variables must be saveable by the model. In general, this condition is
		  met through the use of layers defined in the keras library. However,
		  there is currently a bug with variables created in Lambda layer functions
		  not being saved correctly (see
		  https://github.com/keras-team/keras/issues/9740).
		
		Note that each mode is exported in separate graphs, so different modes do not
		share variables. To use the train graph with evaluation or prediction graphs,
		create a new checkpoint if variable values have been updated.
		
		Args:
		  model: A `tf.keras.Model` to be saved.
		  saved_model_path: a string specifying the path to the SavedModel directory.
		    The SavedModel will be saved to a timestamped folder created within this
		    directory.
		  custom_objects: Optional dictionary mapping string names to custom classes
		    or functions (e.g. custom loss functions).
		  as_text: whether to write the `SavedModel` proto in text format.
		
		Returns:
		  String path to the SavedModel folder, a subdirectory of `saved_model_path`.
		
		Raises:
		  NotImplementedError: If the passed in model is a subclassed model.
	**/
	static public function save_keras_model(model:Dynamic, saved_model_path:Dynamic, ?custom_objects:Dynamic, ?as_text:Dynamic):Dynamic;
}