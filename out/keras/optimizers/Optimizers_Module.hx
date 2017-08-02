/* This file is generated, do not edit! */
package keras.optimizers;
@:pythonImport("keras.optimizers") extern class Optimizers_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function clip_norm(g:Dynamic, c:Dynamic, n:Dynamic):Dynamic;
	/**
		Inverse of the `serialize` function.
		
		# Arguments
		    config: Optimizer configuration dictionary.
		    custom_objects: Optional dictionary mapping
		        names (strings) to custom objects
		        (classes and functions)
		        to be considered during deserialization.
		
		# Returns
		    A Keras Optimizer instance.
	**/
	static public function deserialize(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	static public function deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	/**
		Retrieves a Keras Optimizer instance.
		
		# Arguments
		    identifier: Optimizer identifier, one of
		        - String: name of an optimizer
		        - Dictionary: configuration dictionary.
		        - Keras Optimizer instance (it will be returned unchanged).
		        - TensorFlow Optimizer instance
		            (it will be wrapped as a Keras Optimizer).
		
		# Returns
		    A Keras Optimizer instance.
		
		# Raises
		    ValueError: If `identifier` cannot be interpreted.
	**/
	static public function get(identifier:Dynamic):Dynamic;
	static public function serialize(optimizer:Dynamic):Dynamic;
	static public function serialize_keras_object(instance:Dynamic):Dynamic;
}