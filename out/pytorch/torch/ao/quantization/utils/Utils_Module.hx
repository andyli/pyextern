/* This file is generated, do not edit! */
package torch.ao.quantization.utils;
@:pythonImport("torch.ao.quantization.utils") extern class Utils_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function activation_dtype(qconfig:Dynamic):Dynamic;
	/**
		Given a qconfig, decide if the activation needs to be
		quantized to int8 or not, this includes quantizing to quint8, qint8
	**/
	static public function activation_is_int8_quantized(qconfig:Dynamic):Dynamic;
	/**
		Given a qconfig, decide if the activation needs to be
		quantized or not, this includes quantizing to quint8, qint8 and float16
	**/
	static public function activation_is_statically_quantized(qconfig:Dynamic):Dynamic;
	/**
		Calculates actual qmin and qmax based on the quantization range,
		observer datatype and if range is reduced.
	**/
	static public function calculate_qmin_qmax(quant_min:Dynamic, quant_max:Dynamic, has_customized_qrange:Dynamic, dtype:Dynamic, reduce_range:Dynamic):Dynamic;
	/**
		Checks if the given minimum and maximum values are valid, meaning that
		they exist and the min value is less than the max value.
	**/
	static public function check_min_max_valid(min_val:Dynamic, max_val:Dynamic):Dynamic;
	static public function get_combined_dict(default_dict:Dynamic, additional_dict:Dynamic):Dynamic;
	/**
		returns the qconfig tuple for qconfig:
		(activation_dtype, weight_dtype, activation_compute_dtype)
	**/
	static public function get_qconfig_dtypes(qconfig:Dynamic):Dynamic;
	static public function get_qparam_dict(observer_or_fake_quant:Dynamic):Dynamic;
	static public function get_quant_type(qconfig:Dynamic):Dynamic;
	/**
		Get the observed/quantized custom module class that we need
		to swap `custom_module` to
		Input:
		    custom_module: input, can be an instance of either a float or observed custom module
		    custom_module_class_mapping: the float to observed or observed to quantized custom module class mapping
		    qconfig: qconfig configured for the custom module
		
		Output:
		    corresponding observed/quantized custom module class for input custom module instance
	**/
	static public function get_swapped_custom_module_class(custom_module:Dynamic, custom_module_class_mapping:Dynamic, qconfig:Dynamic):Dynamic;
	/**
		Given an obj and a fqn such as "foo.bar.baz", returns gm.foo.bar.baz.
	**/
	static public function getattr_from_fqn(obj:Dynamic, fqn:Dynamic):Dynamic;
	static public function is_per_channel(qscheme:Dynamic):Dynamic;
	static public function is_per_tensor(qscheme:Dynamic):Dynamic;
	static public function quant_type_to_str(quant_type:Dynamic):Dynamic;
	static public function weight_dtype(qconfig:Dynamic):Dynamic;
	/**
		Given a qconfig, decide if the weight needs to be
		quantized or not
	**/
	static public function weight_is_quantized(qconfig:Dynamic):Dynamic;
	/**
		Given a qconfig, decide if the weight needs to be statically
		quantized or not
	**/
	static public function weight_is_statically_quantized(qconfig:Dynamic):Dynamic;
}