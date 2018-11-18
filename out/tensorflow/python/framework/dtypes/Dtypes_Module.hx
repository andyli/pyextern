/* This file is generated, do not edit! */
package tensorflow.python.framework.dtypes;
@:pythonImport("tensorflow.python.framework.dtypes") extern class Dtypes_Module {
	static public var QUANTIZED_DTYPES : Dynamic;
	static public var _INTERN_TABLE : Dynamic;
	static public var _NP_TO_TF : Dynamic;
	static public var _NUMPY_INCOMPATIBLE : Dynamic;
	static public var _PYTHON_TO_TF : Dynamic;
	static public var _QUANTIZED_DTYPES_NO_REF : Dynamic;
	static public var _QUANTIZED_DTYPES_REF : Dynamic;
	static public var _STRING_TO_TF : Dynamic;
	static public var _TF_TO_NP : Dynamic;
	static public var _TYPE_TO_STRING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _np_qint16 : Dynamic;
	static public var _np_qint32 : Dynamic;
	static public var _np_qint8 : Dynamic;
	static public var _np_quint16 : Dynamic;
	static public var _np_quint8 : Dynamic;
	static public var _tf_api_constants : Dynamic;
	static public var _tf_api_constants_v1 : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts the given `type_value` to a `DType`.
		
		Args:
		  type_value: A value that can be converted to a `tf.DType` object. This may
		    currently be a `tf.DType` object, a [`DataType`
		    enum](https://www.tensorflow.org/code/tensorflow/core/framework/types.proto),
		    a string type name, or a `numpy.dtype`.
		
		Returns:
		  A `DType` corresponding to `type_value`.
		
		Raises:
		  TypeError: If `type_value` cannot be converted to a `DType`.
	**/
	static public function as_dtype(type_value:Dynamic):Dynamic;
	static public var bfloat16 : Dynamic;
	static public var bfloat16_ref : Dynamic;
	static public var bool : Dynamic;
	static public var bool_ref : Dynamic;
	static public var complex128 : Dynamic;
	static public var complex128_ref : Dynamic;
	static public var complex64 : Dynamic;
	static public var complex64_ref : Dynamic;
	static public var division : Dynamic;
	static public var double : Dynamic;
	static public var double_ref : Dynamic;
	static public var dtype_range : Dynamic;
	static public var float16 : Dynamic;
	static public var float16_ref : Dynamic;
	static public var float32 : Dynamic;
	static public var float32_ref : Dynamic;
	static public var float64 : Dynamic;
	static public var float64_ref : Dynamic;
	static public var half : Dynamic;
	static public var half_ref : Dynamic;
	static public var int16 : Dynamic;
	static public var int16_ref : Dynamic;
	static public var int32 : Dynamic;
	static public var int32_ref : Dynamic;
	static public var int64 : Dynamic;
	static public var int64_ref : Dynamic;
	static public var int8 : Dynamic;
	static public var int8_ref : Dynamic;
	static public var np_resource : Dynamic;
	static public var print_function : Dynamic;
	static public var qint16 : Dynamic;
	static public var qint16_ref : Dynamic;
	static public var qint32 : Dynamic;
	static public var qint32_ref : Dynamic;
	static public var qint8 : Dynamic;
	static public var qint8_ref : Dynamic;
	static public var quint16 : Dynamic;
	static public var quint16_ref : Dynamic;
	static public var quint8 : Dynamic;
	static public var quint8_ref : Dynamic;
	static public var resource : Dynamic;
	static public var resource_ref : Dynamic;
	static public var string : Dynamic;
	static public var string_ref : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var uint16 : Dynamic;
	static public var uint16_ref : Dynamic;
	static public var uint32 : Dynamic;
	static public var uint32_ref : Dynamic;
	static public var uint64 : Dynamic;
	static public var uint64_ref : Dynamic;
	static public var uint8 : Dynamic;
	static public var uint8_ref : Dynamic;
	static public var variant : Dynamic;
	static public var variant_ref : Dynamic;
}