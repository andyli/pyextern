/* This file is generated, do not edit! */
package tensorflow.python.keras.initializers;
@:pythonImport("tensorflow.python.keras.initializers") extern class Initializers_Module {
	static public var LOCAL : Dynamic;
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
		Return an `Initializer` object from its config.
	**/
	static public function deserialize(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Retrieve a Keras initializer by the identifier.
		
		The `identifier` may be the string name of a initializers function or class (
		case-sensitively).
		
		>>> identifier = 'Ones'
		>>> tf.keras.initializers.deserialize(identifier)
		<...keras.initializers.initializers_v2.Ones...>
		
		You can also specify `config` of the initializer to this function by passing
		dict containing `class_name` and `config` as an identifier. Also note that the
		`class_name` must map to a `Initializer` class.
		
		>>> cfg = {'class_name': 'Ones', 'config': {}}
		>>> tf.keras.initializers.deserialize(cfg)
		<...keras.initializers.initializers_v2.Ones...>
		
		In the case that the `identifier` is a class, this method will return a new
		instance of the class by its constructor.
		
		Args:
		  identifier: String or dict that contains the initializer name or
		    configurations.
		
		Returns:
		  Initializer instance base on the input identifier.
		
		Raises:
		  ValueError: If the input identifier is not a supported type or in a bad
		    format.
	**/
	static public function get(identifier:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Populates dict ALL_OBJECTS with every built-in initializer.
		  
	**/
	static public function populate_deserializable_objects():Dynamic;
	static public function serialize(initializer:Dynamic):Dynamic;
}