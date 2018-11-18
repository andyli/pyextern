/* This file is generated, do not edit! */
package tensorflow.python.training.checkpointable.layer_utils;
@:pythonImport("tensorflow.python.training.checkpointable.layer_utils") extern class Layer_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Filter out empty Layer-like containers.
	**/
	static public function filter_empty_layer_containers(layer_list:Dynamic):Dynamic;
	/**
		Lists the non-trainable weights for an object with sub-layers.
		
		Args:
		  trainable: Whether the object collecting the variables is trainable.
		  sub_layers: A flat list of Layer objects owned by this object, to collect
		    variables from.
		  extra_variables: Any extra variables to include. Their `.trainable` property
		    is used to categorize them.
		
		Returns:
		  A list of collected non-trainable weights/variables.
	**/
	static public function gather_non_trainable_weights(trainable:Dynamic, sub_layers:Dynamic, extra_variables:Dynamic):Dynamic;
	/**
		Lists the trainable weights for an object with sub-layers.
		
		Args:
		  trainable: Whether the object collecting the variables is trainable.
		  sub_layers: A flat list of Layer objects owned by this object, to collect
		    variables from.
		  extra_variables: Any extra variables to include. Their `.trainable` property
		    is used to categorize them.
		
		Returns:
		  A list of collected trainable weights/variables.
	**/
	static public function gather_trainable_weights(trainable:Dynamic, sub_layers:Dynamic, extra_variables:Dynamic):Dynamic;
	/**
		Implicit check for Layer-like objects.
	**/
	static public function has_weights(obj:Dynamic):Dynamic;
	/**
		Implicit check for Layer-like objects.
	**/
	static public function is_layer(obj:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}