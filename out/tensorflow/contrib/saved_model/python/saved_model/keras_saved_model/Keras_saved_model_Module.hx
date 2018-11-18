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
		Assert model and clone contain the same checkpointable objects.
	**/
	static public function _assert_same_non_optimizer_objects(model:Dynamic, model_graph:Dynamic, clone:Dynamic, clone_graph:Dynamic):Dynamic;
	/**
		Create a SignatureDef map from a Keras model.
	**/
	static public function _create_signature_def_map(model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Export a model, and optionally save new vars from the clone model.
		
		Args:
		  mode: A `tf.estimator.ModeKeys` string.
		  has_saved_vars: A `boolean` indicating whether the SavedModel has already
		    exported variables.
		  builder: A `SavedModelBuilder` object.
		  model: A `tf.keras.Model` object.
		  custom_objects: A dictionary mapping string names to custom classes
		    or functions.
		  checkpoint_path: String path to checkpoint.
		
		Raises:
		  ValueError: If the train/eval mode is being exported, but the model does
		    not have an optimizer.
	**/
	static public function _export_mode(mode:Dynamic, has_saved_vars:Dynamic, builder:Dynamic, model:Dynamic, custom_objects:Dynamic, checkpoint_path:Dynamic):Dynamic;
	/**
		Save model variables and json structure into SavedModel subdirectories.
	**/
	static public function _export_model_json_and_variables(model:Dynamic, saved_model_path:Dynamic):Dynamic;
	/**
		Return list of all checkpointed saveable objects in the model.
	**/
	static public function _get_var_list(model:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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