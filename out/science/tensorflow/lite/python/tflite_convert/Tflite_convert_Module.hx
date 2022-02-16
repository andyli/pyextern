/* This file is generated, do not edit! */
package tensorflow.lite.python.tflite_convert;
@:pythonImport("tensorflow.lite.python.tflite_convert") extern class Tflite_convert_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks the parsed and unparsed flags to ensure they are valid in 1.X.
		
		Raises an error if previously support unparsed flags are found. Raises an
		error for parsed flags that don't meet the required conditions.
		
		Args:
		  flags: argparse.Namespace object containing TFLite flags.
		  unparsed: List of unparsed flags.
		
		Raises:
		  ValueError: Invalid flags.
	**/
	static public function _check_tf1_flags(flags:Dynamic, unparsed:Dynamic):Dynamic;
	/**
		Checks the parsed and unparsed flags to ensure they are valid in 2.X.
		
		Args:
		  flags: argparse.Namespace object containing TFLite flags.
		
		Raises:
		  ValueError: Invalid flags.
	**/
	static public function _check_tf2_flags(flags:Dynamic):Dynamic;
	/**
		Calls function to convert the TensorFlow 1.X model into a TFLite model.
		
		Args:
		  flags: argparse.Namespace object.
		
		Raises:
		  ValueError: Invalid flags.
	**/
	static public function _convert_tf1_model(flags:Dynamic):Dynamic;
	/**
		Calls function to convert the TensorFlow 2.0 model into a TFLite model.
		
		Args:
		  flags: argparse.Namespace object.
		
		Raises:
		  ValueError: Unsupported file format.
	**/
	static public function _convert_tf2_model(flags:Dynamic):Dynamic;
	/**
		Returns an ArgumentParser for tflite_convert.
		
		Args:
		  use_v2_converter: Indicates which converter to return.
		Return: ArgumentParser.
	**/
	static public function _get_parser(use_v2_converter:Dynamic):Dynamic;
	/**
		Returns ArgumentParser for tflite_convert for TensorFlow 1.X.
		
		Args:
		  parser: ArgumentParser
	**/
	static public function _get_tf1_flags(parser:Dynamic):Dynamic;
	/**
		Returns ArgumentParser for tflite_convert for TensorFlow 2.0.
		
		Args:
		  parser: ArgumentParser
	**/
	static public function _get_tf2_flags(parser:Dynamic):Dynamic;
	/**
		Makes a TFLiteConverter object based on the flags provided.
		
		Args:
		  flags: argparse.Namespace object containing TFLite flags.
		
		Returns:
		  TFLiteConverter object.
		
		Raises:
		  ValueError: Invalid flags.
	**/
	static public function _get_tflite_converter(flags:Dynamic):Dynamic;
	static public function _parse_array(values:Dynamic, ?type_fn:Dynamic):Dynamic;
	/**
		Converts the inference type to the value of the constant.
		
		Args:
		  value: str representing the inference type.
		  flag: str representing the flag name.
		
		Returns:
		  tf.dtype.
		
		Raises:
		  ValueError: Unsupported value.
	**/
	static public function _parse_inference_type(value:Dynamic, flag:Dynamic):Dynamic;
	static public function _parse_set(values:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function main():Dynamic;
	static public var print_function : Dynamic;
	/**
		Register the given custom opdefs to the TensorFlow global op registry.
		
		Args:
		  custom_opdefs_list: String representing the custom ops OpDefs that are
		    included in the GraphDef.
		
		Returns:
		  True if the registration is successfully completed.
	**/
	static public function register_custom_opdefs(custom_opdefs_list:Dynamic):Dynamic;
	/**
		Main in tflite_convert.py.
	**/
	static public function run_main(_:Dynamic):Dynamic;
}