/* This file is generated, do not edit! */
package tensorflow.lite.python.wrap_toco;
@:pythonImport("tensorflow.lite.python.wrap_toco") extern class Wrap_toco_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Wraps experimental mlir quantize model.
	**/
	static public function wrapped_experimental_mlir_quantize(input_data_str:Dynamic, disable_per_channel:Dynamic, fully_quantize:Dynamic, inference_type:Dynamic, input_data_type:Dynamic, output_data_type:Dynamic, enable_numeric_verify:Dynamic, enable_whole_model_verify:Dynamic, denylisted_ops:Dynamic, denylisted_nodes:Dynamic):Dynamic;
	/**
		Wraps experimental mlir sparsify model.
	**/
	static public function wrapped_experimental_mlir_sparsify(input_data_str:Dynamic):Dynamic;
	/**
		Wraps FlatBufferFileToMlir with lazy loader.
	**/
	static public function wrapped_flat_buffer_file_to_mlir(model:Dynamic, input_is_filepath:Dynamic):Dynamic;
	/**
		Wraps RegisterCustomOpdefs with lazy loader.
	**/
	static public function wrapped_register_custom_opdefs(custom_opdefs_list:Dynamic):Dynamic;
	/**
		Wraps RetrieveCollectedErrors with lazy loader.
	**/
	static public function wrapped_retrieve_collected_errors():Dynamic;
	/**
		Wraps TocoConvert with lazy loader.
	**/
	static public function wrapped_toco_convert(model_flags_str:Dynamic, toco_flags_str:Dynamic, input_data_str:Dynamic, debug_info_str:Dynamic, enable_mlir_converter:Dynamic):Dynamic;
}