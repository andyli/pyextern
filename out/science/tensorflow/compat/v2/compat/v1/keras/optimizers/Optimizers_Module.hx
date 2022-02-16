/* This file is generated, do not edit! */
package tensorflow.compat.v2.compat.v1.keras.optimizers;
@:pythonImport("tensorflow.compat.v2.compat.v1.keras.optimizers") extern class Optimizers_Module {
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
		Inverse of the `serialize` function.
		
		Args:
		    config: Optimizer configuration dictionary.
		    custom_objects: Optional dictionary mapping names (strings) to custom
		      objects (classes and functions) to be considered during deserialization.
		
		Returns:
		    A Keras Optimizer instance.
	**/
	static public function deserialize(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Retrieves a Keras Optimizer instance.
		
		Args:
		    identifier: Optimizer identifier, one of
		        - String: name of an optimizer
		        - Dictionary: configuration dictionary. - Keras Optimizer instance (it
		          will be returned unchanged). - TensorFlow Optimizer instance (it
		          will be wrapped as a Keras Optimizer).
		
		Returns:
		    A Keras Optimizer instance.
		
		Raises:
		    ValueError: If `identifier` cannot be interpreted.
	**/
	static public function get(identifier:Dynamic):Dynamic;
	/**
		Serialize the optimizer configuration to JSON compatible python dict.
		
		The configuration can be used for persistence and reconstruct the `Optimizer`
		instance again.
		
		>>> tf.keras.optimizers.serialize(tf.keras.optimizers.SGD())
		{'class_name': 'SGD', 'config': {'name': 'SGD', 'learning_rate': 0.01,
		                                 'decay': 0.0, 'momentum': 0.0,
		                                 'nesterov': False}}
		
		Args:
		  optimizer: An `Optimizer` instance to serialize.
		
		Returns:
		  Python dict which contains the configuration of the input optimizer.
	**/
	static public function serialize(optimizer:Dynamic):Dynamic;
}