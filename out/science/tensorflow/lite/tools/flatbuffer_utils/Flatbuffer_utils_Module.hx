/* This file is generated, do not edit! */
package tensorflow.lite.tools.flatbuffer_utils;
@:pythonImport("tensorflow.lite.tools.flatbuffer_utils") extern class Flatbuffer_utils_Module {
	static public var _TFLITE_FILE_IDENTIFIER : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts a tflite model from a bytearray to an object for parsing.
	**/
	static public function convert_bytearray_to_object(model_bytearray:Dynamic):Dynamic;
	/**
		Converts a tflite model from an object to a immutable bytearray.
	**/
	static public function convert_object_to_bytearray(model_object:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Randomize weights in a model.
		
		Args:
		  model: The model in which to randomize weights.
		  random_seed: The input to the random number generator (default value is 0).
	**/
	static public function randomize_weights(model:Dynamic, ?random_seed:Dynamic):Dynamic;
	/**
		Reads a tflite model as a python object.
		
		Args:
		  input_tflite_file: Full path name to the input tflite file
		
		Raises:
		  RuntimeError: If input_tflite_file path is invalid.
		  IOError: If input_tflite_file cannot be opened.
		
		Returns:
		  A python object corresponding to the input tflite file.
	**/
	static public function read_model(input_tflite_file:Dynamic):Dynamic;
	/**
		Reads a tflite model as a python object with mutable tensors.
		
		Similar to read_model() with the addition that the returned object has
		mutable tensors (read_model() returns an object with immutable tensors).
		
		Args:
		  input_tflite_file: Full path name to the input tflite file
		
		Raises:
		  RuntimeError: If input_tflite_file path is invalid.
		  IOError: If input_tflite_file cannot be opened.
		
		Returns:
		  A mutable python object corresponding to the input tflite file.
	**/
	static public function read_model_with_mutable_tensors(input_tflite_file:Dynamic):Dynamic;
	/**
		Rename custom ops so they use the same naming style as builtin ops.
		
		Args:
		  model: The input tflite model.
		  map_custom_op_renames: A mapping from old to new custom op names.
	**/
	static public function rename_custom_ops(model:Dynamic, map_custom_op_renames:Dynamic):Dynamic;
	/**
		Strips all nonessential strings from the model to reduce model size.
		
		We remove the following strings:
		(find strings by searching ":string" in the tensorflow lite flatbuffer schema)
		1. Model description
		2. SubGraph name
		3. Tensor names
		We retain OperatorCode custom_code and Metadata name.
		
		Args:
		  model: The model from which to remove nonessential strings.
	**/
	static public function strip_strings(model:Dynamic):Dynamic;
	/**
		Writes the tflite model, a python object, into the output file.
		
		Args:
		  model_object: A tflite model as a python object
		  output_tflite_file: Full path name to the output tflite file.
		
		Raises:
		  IOError: If output_tflite_file path is invalid or cannot be opened.
	**/
	static public function write_model(model_object:Dynamic, output_tflite_file:Dynamic):Dynamic;
	/**
		Converts xxd output C++ source file to bytes (immutable).
		
		Args:
		  input_cc_file: Full path name to th C++ source file dumped by xxd
		
		Raises:
		  RuntimeError: If input_cc_file path is invalid.
		  IOError: If input_cc_file cannot be opened.
		
		Returns:
		  A bytearray corresponding to the input cc file array.
	**/
	static public function xxd_output_to_bytes(input_cc_file:Dynamic):Dynamic;
	/**
		Converts xxd output C++ source file to object.
		
		Args:
		  input_cc_file: Full path name to th C++ source file dumped by xxd
		
		Raises:
		  RuntimeError: If input_cc_file path is invalid.
		  IOError: If input_cc_file cannot be opened.
		
		Returns:
		  A python object corresponding to the input tflite file.
	**/
	static public function xxd_output_to_object(input_cc_file:Dynamic):Dynamic;
}