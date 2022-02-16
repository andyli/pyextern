/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.serialization;
@:pythonImport("tensorflow.python.keras.layers.serialization") extern class Serialization_Module {
	static public var ALL_MODULES : Dynamic;
	static public var ALL_V2_MODULES : Dynamic;
	static public var LOCAL : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Instantiates a layer from a config dictionary.
		
		Args:
		    config: dict of the form {'class_name': str, 'config': dict}
		    custom_objects: dict mapping class names (or function names)
		        of custom (non-Keras) objects to class/functions
		
		Returns:
		    Layer instance (may be Model, Sequential, Network, Layer...)
	**/
	static public function deserialize(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Populates dict ALL_OBJECTS with every built-in layer.
		  
	**/
	static public function populate_deserializable_objects():Dynamic;
	static public function serialize(layer:Dynamic):Dynamic;
}