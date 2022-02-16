/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.version_utils;
@:pythonImport("tensorflow.python.keras.utils.version_utils") extern class Version_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function disallow_legacy_graph(cls_name:Dynamic, method_name:Dynamic):Dynamic;
	static public function is_v1_layer_or_model(obj:Dynamic):Dynamic;
	/**
		Determine if v1 or v2 version should be used.
	**/
	static public function should_use_v2():Dynamic;
	/**
		Swaps in v2_cls or v1_cls depending on graph mode.
	**/
	static public function swap_class(cls:Dynamic, v2_cls:Dynamic, v1_cls:Dynamic, use_v2:Dynamic):Dynamic;
}