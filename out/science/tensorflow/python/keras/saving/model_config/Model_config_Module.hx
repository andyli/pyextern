/* This file is generated, do not edit! */
package tensorflow.python.keras.saving.model_config;
@:pythonImport("tensorflow.python.keras.saving.model_config") extern class Model_config_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Instantiates a Keras model from its config.
		
		Usage:
		```
		# for a Functional API model
		tf.keras.Model().from_config(model.get_config())
		
		# for a Sequential model
		tf.keras.Sequential().from_config(model.get_config())
		```
		
		Args:
		    config: Configuration dictionary.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		Returns:
		    A Keras model instance (uncompiled).
		
		Raises:
		    TypeError: if `config` is not a dictionary.
	**/
	static public function model_from_config(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Parses a JSON model configuration string and returns a model instance.
		
		Usage:
		
		>>> model = tf.keras.Sequential([
		...     tf.keras.layers.Dense(5, input_shape=(3,)),
		...     tf.keras.layers.Softmax()])
		>>> config = model.to_json()
		>>> loaded_model = tf.keras.models.model_from_json(config)
		
		Args:
		    json_string: JSON string encoding a model configuration.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		Returns:
		    A Keras model instance (uncompiled).
	**/
	static public function model_from_json(json_string:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Parses a yaml model configuration file and returns a model instance.
		
		Note: Since TF 2.6, this method is no longer supported and will raise a
		RuntimeError.
		
		Args:
		    yaml_string: YAML string or open file encoding a model configuration.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		Returns:
		    A Keras model instance (uncompiled).
		
		Raises:
		    RuntimeError: announces that the method poses a security risk
	**/
	static public function model_from_yaml(yaml_string:Dynamic, ?custom_objects:Dynamic):Dynamic;
}