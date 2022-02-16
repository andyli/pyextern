/* This file is generated, do not edit! */
package tensorflow.python.framework.extension_type;
@:pythonImport("tensorflow.python.framework.extension_type") extern class Extension_type_Module {
	static public var _IN_CONSTRUCTOR : Dynamic;
	static public var _MUTABLE_KERAS_PROPERTIES : Dynamic;
	static public var _NO_DEFAULT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates a constructor for a ExtensionType or ExtensionTypeSpec subclass.
	**/
	static public function _add_extension_type_constructor(cls:Dynamic):Dynamic;
	/**
		Creates a nested TypeSpec class for tf.ExtensionType subclass `cls`.
	**/
	static public function _add_type_spec(cls:Dynamic):Dynamic;
	/**
		Builds a constructor for tf.ExtensionType subclass `cls`.
	**/
	static public function _build_extension_type_constructor(cls:Dynamic):Dynamic;
	/**
		Builds a constructor for ExtensionTypeSpec subclass `cls`.
	**/
	static public function _build_spec_constructor(cls:Dynamic):Dynamic;
	/**
		Recursively replace mappings with `new_type`.
	**/
	static public function _change_nested_mappings_to(value:Dynamic, new_type:Dynamic):Dynamic;
	/**
		Validates the field annotations for tf.ExtensionType subclass `cls`.
	**/
	static public function _check_field_annotations(cls:Dynamic):Dynamic;
	/**
		Type-checks and converts `value` for inclusion in an AnonymousExtensionType.
	**/
	static public function _convert_anonymous_fields(value:Dynamic, ?for_spec:Dynamic):Dynamic;
	/**
		Creates an object, bypassing the constructor.
		
		Creates an object of type `cls`, whose `__dict__` is updated to contain
		`obj_dict`.
		
		Args:
		  cls: The type of the new object.
		  obj_dict: A `Mapping` that should be used to initialize the new object's
		    `__dict__`.
		
		Returns:
		  An object of type `cls`.
	**/
	static public function _create_object_from_type_and_dict(cls:Dynamic, obj_dict:Dynamic):Dynamic;
	static public function _deserialize_for_reduce(value_type:Dynamic, serialization:Dynamic):Dynamic;
	static public function _replace_tensor_with_spec(value:Dynamic):Dynamic;
	/**
		Wraps a user-defined constructor for tf.ExtensionType subclass `cls`.
	**/
	static public function _wrap_user_constructor(cls:Dynamic):Dynamic;
	/**
		Returns true if `value`'s fields are packed in a single Variant.
	**/
	static public function is_packed(value:Dynamic):Dynamic;
	/**
		Returns a copy of `value` with fields packed in a single Variant.
		
		Args:
		  value: An `ExtensionType` object.
		
		Returns:
		  An `ExtensionType` object.
	**/
	static public function pack(value:Dynamic):Dynamic;
	/**
		Converts a given `ExtensionType` to a new type with compatible fields.
		
		In particular, this can be used to convert a concrete subclass of
		`ExtensionType` to an `AnonymousExtensionType`, or vice versa.  When
		converting to a non-anonymous ExtensionType, field values are type-checked to
		ensure they are consistent with `new_type`'s type annotations, and validated
		with `new_type.__validate__`.
		
		Args:
		  value: An instance of a subclass of `tf.ExtensionType`
		  new_type: A subclass of `tf.ExtensionType`
		
		Returns:
		  An instance of `new_type`, whose fields are copied from `value`.
	**/
	static public function reinterpret(value:Dynamic, new_type:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a copy of `value` with individual fields stored in __dict__.
		
		Args:
		  value: An `ExtensionType` object.
		
		Returns:
		  An `ExtensionType` object.
	**/
	static public function unpack(value:Dynamic):Dynamic;
}