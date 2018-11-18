/* This file is generated, do not edit! */
package tensorflow.contrib.lite.python.tflite_convert;
@:pythonImport("tensorflow.contrib.lite.python.tflite_convert") extern class Tflite_convert_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks the parsed and unparsed flags to ensure they are valid.
		
		Raises an error if previously support unparsed flags are found. Raises an
		error for parsed flags that don't meet the required conditions.
		
		Args:
		  flags: argparse.Namespace object containing TFLite flags.
		  unparsed: List of unparsed flags.
		
		Raises:
		  ValueError: Invalid flags.
	**/
	static public function _check_flags(flags:Dynamic, unparsed:Dynamic):Dynamic;
	/**
		Calls function to convert the TensorFlow model into a TFLite model.
		
		Args:
		  flags: argparse.Namespace object.
		
		Raises:
		  ValueError: Invalid flags.
	**/
	static public function _convert_model(flags:Dynamic):Dynamic;
	/**
		Makes a TFLiteConverter object based on the flags provided.
		
		Args:
		  flags: argparse.Namespace object containing TFLite flags.
		
		Returns:
		  TFLiteConverter object.
		
		Raises:
		  ValueError: Invalid flags.
	**/
	static public function _get_toco_converter(flags:Dynamic):Dynamic;
	static public function _parse_array(values:Dynamic, ?type_fn:Dynamic):Dynamic;
	static public function _parse_set(values:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function main():Dynamic;
	static public var print_function : Dynamic;
	/**
		Main in toco_convert.py.
	**/
	static public function run_main(_:Dynamic):Dynamic;
}