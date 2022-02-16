/* This file is generated, do not edit! */
package tensorflow.python.pywrap_mlir;
@:pythonImport("tensorflow.python.pywrap_mlir") extern class Pywrap_mlir_Module {
	/**
		ExperimentalConvertSavedModelToMlir(arg0: str, arg1: str, arg2: bool) -> str
	**/
	static public function ExperimentalConvertSavedModelToMlir(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ExperimentalConvertSavedModelV1ToMlir(arg0: str, arg1: str, arg2: str, arg3: bool, arg4: bool, arg5: bool) -> str
	**/
	static public function ExperimentalConvertSavedModelV1ToMlir(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ExperimentalConvertSavedModelV1ToMlirLite(arg0: str, arg1: str, arg2: str, arg3: bool, arg4: bool) -> str
	**/
	static public function ExperimentalConvertSavedModelV1ToMlirLite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ExperimentalRunPassPipeline(arg0: str, arg1: str, arg2: bool) -> str
	**/
	static public function ExperimentalRunPassPipeline(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ImportFunction(arg0: handle, arg1: str, arg2: str, arg3: bool) -> str
	**/
	static public function ImportFunction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ImportGraphDef(*args, **kwargs)
		Overloaded function.
		
		1. ImportGraphDef(arg0: str, arg1: str, arg2: bool) -> str
		
		2. ImportGraphDef(arg0: str, arg1: str, arg2: bool, arg3: str, arg4: str, arg5: str, arg6: str) -> str
	**/
	static public function ImportGraphDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function experimental_convert_saved_model_to_mlir(saved_model_path:Dynamic, exported_names:Dynamic, show_debug_info:Dynamic):Dynamic;
	static public function experimental_convert_saved_model_v1_to_mlir(saved_model_path:Dynamic, exported_names:Dynamic, tags:Dynamic, lift_variables:Dynamic, upgrade_legacy:Dynamic, show_debug_info:Dynamic):Dynamic;
	static public function experimental_convert_saved_model_v1_to_mlir_lite(saved_model_path:Dynamic, exported_names:Dynamic, tags:Dynamic, upgrade_legacy:Dynamic, show_debug_info:Dynamic):Dynamic;
	static public function experimental_run_pass_pipeline(mlir_txt:Dynamic, pass_pipeline:Dynamic, show_debug_info:Dynamic):Dynamic;
	static public function import_function(concrete_function:Dynamic, pass_pipeline:Dynamic, show_debug_info:Dynamic):Dynamic;
	static public function import_graphdef(graphdef:Dynamic, pass_pipeline:Dynamic, show_debug_info:Dynamic, ?input_names:Dynamic, ?input_data_types:Dynamic, ?input_data_shapes:Dynamic, ?output_names:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}