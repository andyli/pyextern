/* This file is generated, do not edit! */
package tensorflow.python.feature_column.serialization;
@:pythonImport("tensorflow.python.feature_column.serialization") extern class Serialization_Module {
	static public var _FEATURE_COLUMNS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the class name and config for a serialized keras object.
	**/
	static public function _class_and_config_for_serialized_keras_object(config:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	/**
		Returns a unique name for the feature column used during deduping.
		
		Without this two FeatureColumns that have the same name and where
		one wraps the other, such as an IndicatorColumn wrapping a
		SequenceCategoricalColumn, will fail to deserialize because they will have the
		same name in columns_by_name, causing the wrong column to be returned.
		
		Args:
		  fc: A FeatureColumn.
		
		Returns:
		  A unique name as a string.
	**/
	static public function _column_name_with_class_name(fc:Dynamic):Dynamic;
	/**
		Turns the serialized form of a Keras object back into an actual object.
	**/
	static public function _deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	static public function _get_registered_object(name:Dynamic, ?custom_objects:Dynamic, ?module_objects:Dynamic):Dynamic;
	/**
		Serialize a Keras object into a JSON-compatible representation.
	**/
	static public function _serialize_keras_object(instance:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Deserializes a `config` generated with `serialize_feature_column`.
		
		This method should only be used to deserialize parent FeatureColumns when
		implementing FeatureColumn.from_config(), else deserialize_feature_columns()
		is preferable. Returns a FeatureColumn for this config.
		
		Args:
		  config: A Dict with the serialization of feature columns acquired by
		    `serialize_feature_column`, or a string representing a raw column.
		  custom_objects: A Dict from custom_object name to the associated keras
		    serializable objects (FeatureColumns, classes or functions).
		  columns_by_name: A Dict[String, FeatureColumn] of existing columns in order
		    to avoid duplication.
		
		Raises:
		  ValueError if `config` has invalid format (e.g: expected keys missing,
		  or refers to unknown classes).
		
		Returns:
		  A FeatureColumn corresponding to the input `config`.
	**/
	static public function deserialize_feature_column(config:Dynamic, ?custom_objects:Dynamic, ?columns_by_name:Dynamic):Dynamic;
	/**
		Deserializes a list of FeatureColumns configs.
		
		Returns a list of FeatureColumns given a list of config dicts acquired by
		`serialize_feature_columns`.
		
		Args:
		  configs: A list of Dicts with the serialization of feature columns acquired
		    by `serialize_feature_columns`.
		  custom_objects: A Dict from custom_object name to the associated keras
		    serializable objects (FeatureColumns, classes or functions).
		
		Returns:
		  FeatureColumn objects corresponding to the input configs.
		
		Raises:
		  ValueError if called with input that is not a list of FeatureColumns.
	**/
	static public function deserialize_feature_columns(configs:Dynamic, ?custom_objects:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Serializes a FeatureColumn or a raw string key.
		
		This method should only be used to serialize parent FeatureColumns when
		implementing FeatureColumn.get_config(), else serialize_feature_columns()
		is preferable.
		
		This serialization also keeps information of the FeatureColumn class, so
		deserialization is possible without knowing the class type. For example:
		
		a = numeric_column('x')
		a.get_config() gives:
		{
		    'key': 'price',
		    'shape': (1,),
		    'default_value': None,
		    'dtype': 'float32',
		    'normalizer_fn': None
		}
		While serialize_feature_column(a) gives:
		{
		    'class_name': 'NumericColumn',
		    'config': {
		        'key': 'price',
		        'shape': (1,),
		        'default_value': None,
		        'dtype': 'float32',
		        'normalizer_fn': None
		    }
		}
		
		Args:
		  fc: A FeatureColumn or raw feature key string.
		
		Returns:
		  Keras serialization for FeatureColumns, leaves string keys unaffected.
		
		Raises:
		  ValueError if called with input that is not string or FeatureColumn.
	**/
	static public function serialize_feature_column(fc:Dynamic):Dynamic;
	/**
		Serializes a list of FeatureColumns.
		
		Returns a list of Keras-style config dicts that represent the input
		FeatureColumns and can be used with `deserialize_feature_columns` for
		reconstructing the original columns.
		
		Args:
		  feature_columns: A list of FeatureColumns.
		
		Returns:
		  Keras serialization for the list of FeatureColumns.
		
		Raises:
		  ValueError if called with input that is not a list of FeatureColumns.
	**/
	static public function serialize_feature_columns(feature_columns:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}