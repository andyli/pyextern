/* This file is generated, do not edit! */
package tensorflow.python.keras.saving.saved_model.load;
@:pythonImport("tensorflow.python.keras.saving.saved_model.load") extern class Load_Module {
	static public var PUBLIC_ATTRIBUTES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Runs the final steps of loading Keras Layers from config.
	**/
	static public function _finalize_config_layers(layers:Dynamic):Dynamic;
	static public function _finalize_metric(metric:Dynamic):Dynamic;
	/**
		Runs the final steps of loading Keras Layers from SavedModel.
	**/
	static public function _finalize_saved_model_layers(layers:Dynamic):Dynamic;
	/**
		Traverses through an ObjectGraphDef and builds a map of all node paths.
	**/
	static public function _generate_object_paths(object_graph_def:Dynamic):Dynamic;
	static public function _get_keras_attr(layer:Dynamic):Dynamic;
	/**
		Determines whether the layer is a graph network.
	**/
	static public function _is_graph_network(layer:Dynamic):Dynamic;
	static public function _maybe_add_serialized_attributes(layer:Dynamic, metadata:Dynamic):Dynamic;
	/**
		Builds a KerasMetadata proto from the SavedModel ObjectGraphDef.
	**/
	static public function _read_legacy_metadata(object_graph_def:Dynamic, metadata:Dynamic):Dynamic;
	/**
		Restore actiation loss from SavedModel.
	**/
	static public function _restore_layer_activation_loss(layer:Dynamic):Dynamic;
	static public function _restore_layer_metrics(layer:Dynamic):Dynamic;
	/**
		Restore unconditional losses from SavedModel.
	**/
	static public function _restore_layer_unconditional_losses(layer:Dynamic):Dynamic;
	/**
		Setter function that saves some attributes to separate dictionary.
	**/
	static public function _revive_setter(layer:Dynamic, name:Dynamic, value:Dynamic):Dynamic;
	/**
		Sets attributes recorded in the metadata.
	**/
	static public function _set_network_attributes_from_metadata(revived_obj:Dynamic):Dynamic;
	/**
		Replaces the `layer.call` if the layer was not fully serialized.
		
		Keras Model/Layer serialization is relatively relaxed because SavedModels
		are not always loaded back as keras models. Thus, when there is an issue
		tracing a non-signature function, a warning is logged instead of raising an
		error. This results in a SavedModel where the model's call function is saved,
		but the internal layer call functions are not.
		
		When deserialized with `tf.keras.models.load_model`, the internal layers
		which do not have serialized call functions should raise an error when called.
		
		Args:
		  layer: Layer without the serialized call function.
		
		Raises:
		  ValueError
	**/
	static public function _unable_to_call_layer_due_to_serialization_issue(layer:Dynamic, ?unused_args:python.VarArgs<Dynamic>, ?unused_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find a `TensorShape` that is compatible with both `x` and `y`.
	**/
	static public function get_common_shape(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Returns TensorSpec of inputs from a restored call function.
		
		Args:
		  fn: Restored layer call function. It is assumed that `fn` has at least
		      one concrete function and that the inputs are in the first argument.
		
		Returns:
		  TensorSpec of call function inputs.
	**/
	static public function infer_inputs_from_restored_call_function(fn:Dynamic):Dynamic;
	/**
		Loads Keras objects from a SavedModel.
		
		Any Keras layer or model saved to the SavedModel will be loaded back
		as Keras objects. Other objects are loaded as regular trackable objects (same
		as `tf.saved_model.load`).
		
		Currently, Keras saving/loading only retains the Keras object's weights,
		losses, and call function.
		
		The loaded model can be re-compiled, but the original optimizer, compiled loss
		functions, and metrics are not retained. This is temporary, and `model.save`
		will soon be able to serialize compiled models.
		
		Args:
		  path: Path to SavedModel.
		  compile: If true, compile the model after loading it.
		  options: Optional `tf.saved_model.LoadOptions` object that specifies
		    options for loading from SavedModel.
		
		
		Returns:
		  Object loaded from SavedModel.
	**/
	static public function load(path:Dynamic, ?compile:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Deserialize Keras object from a nested structure.
	**/
	static public function recursively_deserialize_keras_object(config:Dynamic, ?module_objects:Dynamic):Dynamic;
	/**
		Revives object from SavedModel.
	**/
	static public function revive_custom_object(identifier:Dynamic, metadata:Dynamic):Dynamic;
}