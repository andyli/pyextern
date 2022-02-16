/* This file is generated, do not edit! */
package tensorflow.python.keras.regularizers;
@:pythonImport("tensorflow.python.keras.regularizers") extern class Regularizers_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		check penalty number availability, raise ValueError if failed.
	**/
	static public function _check_penalty_number(x:Dynamic):Dynamic;
	static public function _none_to_default(inputs:Dynamic, _default:Dynamic):Dynamic;
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
		Retrieve a regularizer instance from a config or identifier.
	**/
	static public function get(identifier:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a regularizer that applies both L1 and L2 penalties.
		
		The L1 regularization penalty is computed as:
		`loss = l1 * reduce_sum(abs(x))`
		
		The L2 regularization penalty is computed as:
		`loss = l2 * reduce_sum(square(x))`
		
		Args:
		    l1: Float; L1 regularization factor.
		    l2: Float; L2 regularization factor.
		
		Returns:
		  An L1L2 Regularizer with the given regularization factors.
	**/
	static public function l1_l2(?l1:Dynamic, ?l2:Dynamic):Dynamic;
	static public function serialize(regularizer:Dynamic):Dynamic;
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