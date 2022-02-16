/* This file is generated, do not edit! */
package tensorflow.python.compiler.tensorrt.utils;
@:pythonImport("tensorflow.python.compiler.tensorrt.utils") extern class Utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _is_tensorrt_version_greater_equal(trt_ver:Dynamic, target_ver:Dynamic):Dynamic;
	static public function _version_tuple_to_string(ver_tuple:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Modifies rewriter_config to disable all non-TRT optimizations.
	**/
	static public function disable_non_trt_optimizers_in_rewriter_config(rewriter_config:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function is_linked_tensorrt_version_greater_equal(major:Dynamic, ?minor:Dynamic, ?patch:Dynamic):Dynamic;
	static public function is_loaded_tensorrt_version_greater_equal(major:Dynamic, ?minor:Dynamic, ?patch:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}