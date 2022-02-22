/* This file is generated, do not edit! */
package pyarrow.types;
@:pythonImport("pyarrow.types") extern class Types_Module {
	static public var _DATE_TYPES : Dynamic;
	static public var _DECIMAL_TYPES : Dynamic;
	static public var _FLOATING_TYPES : Dynamic;
	static public var _INTEGER_TYPES : Dynamic;
	static public var _INTERVAL_TYPES : Dynamic;
	static public var _NESTED_TYPES : Dynamic;
	static public var _SIGNED_INTEGER_TYPES : Dynamic;
	static public var _TEMPORAL_TYPES : Dynamic;
	static public var _TIME_TYPES : Dynamic;
	static public var _UNION_TYPES : Dynamic;
	static public var _UNSIGNED_INTEGER_TYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return True if value is an instance of a variable-length binary type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_binary(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a boolean type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_boolean(t:Dynamic):Dynamic;
	/**
		is_boolean_value(obj)
		
		Check if the object is a boolean.
		
		Parameters
		----------
		obj : object
		    The object to check
	**/
	static public function is_boolean_value(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if value is an instance of a date type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_date(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a date32 (days) type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_date32(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a date64 (milliseconds) type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_date64(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a decimal type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_decimal(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a decimal type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_decimal128(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a decimal type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_decimal256(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a dictionary-encoded type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_dictionary(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a duration type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_duration(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a fixed size binary type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_fixed_size_binary(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a fixed size list type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_fixed_size_list(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a float16 (half-precision) type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_float16(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a float32 (single precision) type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_float32(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a float64 (double precision) type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_float64(t:Dynamic):Dynamic;
	/**
		is_float_value(obj)
		
		Check if the object is a float.
		
		Parameters
		----------
		obj : object
		    The object to check
	**/
	static public function is_float_value(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if value is an instance of a floating point numeric type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_floating(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of an int16 type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_int16(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of an int32 type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_int32(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of an int64 type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_int64(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of an int8 type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_int8(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of any integer type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_integer(t:Dynamic):Dynamic;
	/**
		is_integer_value(obj)
		
		Check if the object is an integer.
		
		Parameters
		----------
		obj : object
		    The object to check
	**/
	static public function is_integer_value(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if the value is an instance of an interval type.
		
		Parameters
		----------
		t : DateType
	**/
	static public function is_interval(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a large variable-length
		binary type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_large_binary(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a large list type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_large_list(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of large string (utf8 unicode) type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_large_string(t:Dynamic):Dynamic;
	/**
		Alias for is_large_string.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_large_unicode(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a list type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_list(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a map logical type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_map(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a nested type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_nested(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a null type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_null(t:Dynamic):Dynamic;
	/**
		Return True if the value is an instance of a primitive type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_primitive(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of any signed integer type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_signed_integer(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of string (utf8 unicode) type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_string(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a struct type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_struct(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of date, time, timestamp or duration.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_temporal(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a time type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_time(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a time32 type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_time32(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a time64 type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_time64(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a timestamp type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_timestamp(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of an uint16 type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_uint16(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of an uint32 type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_uint32(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of an uint64 type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_uint64(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of an uint8 type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_uint8(t:Dynamic):Dynamic;
	/**
		Alias for is_string.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_unicode(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of a union type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_union(t:Dynamic):Dynamic;
	/**
		Return True if value is an instance of any unsigned integer type.
		
		Parameters
		----------
		t : DataType
	**/
	static public function is_unsigned_integer(t:Dynamic):Dynamic;
}