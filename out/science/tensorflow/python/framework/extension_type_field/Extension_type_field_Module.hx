/* This file is generated, do not edit! */
package tensorflow.python.framework.extension_type_field;
@:pythonImport("tensorflow.python.framework.extension_type_field") extern class Extension_type_field_Module {
	static public var RESERVED_FIELD_NAMES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts `value` to a value of type `expected_type`.
	**/
	static public function _convert_composite_tensor(value:Dynamic, expected_type:Dynamic, path:Dynamic, context:Dynamic):Dynamic;
	/**
		Type-checks and converts each field in `field_values` (in place).
		
		Args:
		  fields: A list of `ExtensionTypeField` objects.
		  field_values: A `dict` mapping field names to values.  Must contain an entry
		    for each field.  I.e., `set(field_values.keys())` must be equal to
		    `set([f.name for f in fields])`.
		  context: _ConversionContext, indicates what kind of value we are converting.
		
		Raises:
		  ValueError: If the keys of `field_values` do not match the names of
		    the fields in `fields`.
		  TypeError: If any value in `field_values` does not have the type indicated
		    by the corresponding `ExtensionTypeField` object.
	**/
	static public function _convert_fields(fields:Dynamic, field_values:Dynamic, context:Dynamic):Dynamic;
	/**
		Converts `value` to a mapping with type `expected_type`.
	**/
	static public function _convert_mapping(value:Dynamic, expected_type:Dynamic, path:Dynamic, context:Dynamic):Dynamic;
	/**
		Converts `value` to a `Tensor`.
	**/
	static public function _convert_tensor(value:Dynamic, path:Dynamic, context:Dynamic):Dynamic;
	/**
		Converts `value` to a tuple with type `expected_type`.
	**/
	static public function _convert_tuple(value:Dynamic, expected_type:Dynamic, path:Dynamic, context:Dynamic):Dynamic;
	/**
		Converts `value` to a value with any of the types in `expected_type`.
	**/
	static public function _convert_union(value:Dynamic, expected_type:Dynamic, path:Dynamic, context:Dynamic):Dynamic;
	/**
		Type-checks and converts a value.
		
		Args:
		  value: The value to type-check.
		  expected_type: The expected type for the value.
		  path: Tuple of `str` naming the value (used for exception messages).
		  context: _ConversionContext, indicates what kind of value we are converting.
		
		Returns:
		  A copy of `value`, converted to the expected type.
		
		Raises:
		  TypeError: If `value` can not be converted to the expected type.
	**/
	static public function _convert_value(value:Dynamic, expected_type:Dynamic, path:Dynamic, ?context:Dynamic):Dynamic;
	/**
		Raises an exception with mismatches between fields and field_values.
	**/
	static public function _report_field_mismatches(fields:Dynamic, field_values:Dynamic):Dynamic;
	/**
		Type-checks and converts each field in `field_values` (in place).
		
		Args:
		  fields: A list of `ExtensionTypeField` objects.
		  field_values: A `dict` mapping field names to values.  Must contain an entry
		    for each field.  I.e., `set(field_values.keys())` must be equal to
		    `set([f.name for f in fields])`.
		
		Raises:
		  ValueError: If the keys of `field_values` do not match the names of
		    the fields in `fields`.
		  TypeError: If any value in `field_values` does not have the type indicated
		    by the corresponding `ExtensionTypeField` object.
	**/
	static public function convert_fields(fields:Dynamic, field_values:Dynamic):Dynamic;
	/**
		Type-checks and converts field values for a TypeSpec (in place).
		
		This is similar to `convert_fields`, except that we expect a `TypeSpec` for
		tensor-like types.  In particular, if the `value_type` of a field is
		`tf.Tensor` or a `CompositeTensor` subclass, then the corresponding value in
		`fields` is expected to contain a `TypeSpec` (rather than a value described by
		that `TypeSpec`).
		
		Args:
		  fields: A list of `ExtensionTypeField` objects.
		  field_values: A `dict` mapping field names to values.  Must contain an entry
		    for each field.  I.e., `set(field_values.keys())` must be equal to
		    `set([f.name for f in fields])`.
		
		Raises:
		  ValueError: If the keys of `field_values` do not match the names of
		    the fields in `fields`.
		  TypeError: If any value in `field_values` does not have the type indicated
		    by the corresponding `ExtensionTypeField` object.
	**/
	static public function convert_fields_for_spec(fields:Dynamic, field_values:Dynamic):Dynamic;
	/**
		Checks that `value_type` contains only supported type annotations.
		
		Args:
		  value_type: The type annotation to check.
		  in_mapping_key: True if `value_type` is nested in the key of a mapping.
		  allow_forward_references: If false, then raise an exception if a
		    `value_type` contains a forward reference (i.e., a string literal).
		
		Raises:
		  TypeError: If `value_type` contains an unsupported type annotation.
	**/
	static public function validate_field_value_type(value_type:Dynamic, ?in_mapping_key:Dynamic, ?allow_forward_references:Dynamic):Dynamic;
}