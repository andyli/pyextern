/* This file is generated, do not edit! */
package tensorflow.python.keras.initializers.initializers_v2;
@:pythonImport("tensorflow.python.keras.initializers.initializers_v2") extern class Initializers_v2_Module {
	static public var _PARTITION_OFFSET : Dynamic;
	static public var _PARTITION_SHAPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Validate and return floating point type based on `dtype`.
		
		`dtype` must be a floating point type.
		
		Args:
		  dtype: The data type to validate.
		
		Returns:
		  Validated type.
		
		Raises:
		  ValueError: if `dtype` is not a floating point type.
	**/
	static public function _assert_float_dtype(dtype:Dynamic):Dynamic;
	/**
		Computes the number of input and output units for a weight shape.
		
		Args:
		  shape: Integer shape tuple or TF tensor shape.
		
		Returns:
		  A tuple of integer scalars (fan_in, fan_out).
	**/
	static public function _compute_fans(shape:Dynamic):Dynamic;
	static public function _get_dtype(dtype:Dynamic):Dynamic;
	static public function _validate_kwargs(cls_name:Dynamic, kwargs:Dynamic, ?support_partition:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}