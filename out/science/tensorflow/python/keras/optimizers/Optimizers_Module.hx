/* This file is generated, do not edit! */
package tensorflow.python.keras.optimizers;
@:pythonImport("tensorflow.python.keras.optimizers") extern class Optimizers_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
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
		Turns the serialized form of a Keras object back into an actual object.
		
		This function is for mid-level library implementers rather than end users.
		
		Importantly, this utility requires you to provide the dict of `module_objects`
		to use for looking up the object config; this is not populated by default.
		If you need a deserialization utility that has preexisting knowledge of
		built-in Keras objects, use e.g. `keras.layers.deserialize(config)`,
		`keras.metrics.deserialize(config)`, etc.
		
		Calling `deserialize_keras_object` while underneath the
		`SharedObjectLoadingScope` context manager will cause any already-seen shared
		objects to be returned as-is rather than creating a new object.
		
		Args:
		  identifier: the serialized form of the object.
		  module_objects: A dictionary of built-in objects to look the name up in.
		    Generally, `module_objects` is provided by midlevel library implementers.
		  custom_objects: A dictionary of custom objects to look the name up in.
		    Generally, `custom_objects` is provided by the end user.
		  printable_module_name: A human-readable string representing the type of the
		    object. Printed in case of exception.
		
		Returns:
		  The deserialized object.
		
		Example:
		
		A mid-level library implementer might want to implement a utility for
		retrieving an object from its config, as such:
		
		```python
		def deserialize(config, custom_objects=None):
		   return deserialize_keras_object(
		     identifier,
		     module_objects=globals(),
		     custom_objects=custom_objects,
		     name="MyObjectType",
		   )
		```
		
		This is how e.g. `keras.layers.deserialize()` is implemented.
	**/
	static public function deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
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
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Serialize a Keras object into a JSON-compatible representation.
		
		Calls to `serialize_keras_object` while underneath the
		`SharedObjectSavingScope` context manager will cause any objects re-used
		across multiple layers to be saved with a special shared object ID. This
		allows the network to be re-created properly during deserialization.
		
		Args:
		  instance: The object to serialize.
		
		Returns:
		  A dict-like, JSON-compatible representation of the object's config.
	**/
	static public function serialize_keras_object(instance:Dynamic):Dynamic;
}