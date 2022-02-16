/* This file is generated, do not edit! */
package tensorflow.python.feature_column.utils;
@:pythonImport("tensorflow.python.feature_column.utils") extern class Utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _as_tuple(value:Dynamic):Dynamic;
	/**
		Returns a tuple with given shape and filled with value.
	**/
	static public function _create_tuple(shape:Dynamic, value:Dynamic):Dynamic;
	/**
		Verifies compatibility of shape and default_value.
	**/
	static public function _is_shape_and_default_value_compatible(default_value:Dynamic, shape:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function assert_key_is_string(key:Dynamic):Dynamic;
	static public function assert_string_or_int(dtype:Dynamic, prefix:Dynamic):Dynamic;
	/**
		Returns default value as tuple if it's valid, otherwise raises errors.
		
		This function verifies that `default_value` is compatible with both `shape`
		and `dtype`. If it is not compatible, it raises an error. If it is compatible,
		it casts default_value to a tuple and returns it. `key` is used only
		for error message.
		
		Args:
		  shape: An iterable of integers specifies the shape of the `Tensor`.
		  default_value: If a single value is provided, the same value will be applied
		    as the default value for every item. If an iterable of values is
		    provided, the shape of the `default_value` should be equal to the given
		    `shape`.
		  dtype: defines the type of values. Default value is `tf.float32`. Must be a
		    non-quantized, real integer or floating point type.
		  key: Column name, used only for error messages.
		
		Returns:
		  A tuple which will be used as default value.
		
		Raises:
		  TypeError: if `default_value` is an iterable but not compatible with `shape`
		  TypeError: if `default_value` is not compatible with `dtype`.
		  ValueError: if `dtype` is not convertible to `tf.float32`.
	**/
	static public function check_default_value(shape:Dynamic, default_value:Dynamic, dtype:Dynamic, key:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns a [batch_size] Tensor with per-example sequence length.
	**/
	static public function sequence_length_from_sparse_tensor(sp_tensor:Dynamic, ?num_elements:Dynamic):Dynamic;
}