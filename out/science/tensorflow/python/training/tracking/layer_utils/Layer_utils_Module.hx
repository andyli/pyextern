/* This file is generated, do not edit! */
package tensorflow.python.training.tracking.layer_utils;
@:pythonImport("tensorflow.python.training.tracking.layer_utils") extern class Layer_utils_Module {
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
	/**
		Filter out empty Layer-like containers and uniquify.
	**/
	static public function filter_empty_layer_containers(layer_list:Dynamic):Dynamic;
	/**
		Implicit check for Layer-like objects.
	**/
	static public function has_weights(obj:Dynamic):Dynamic;
	/**
		Convenience decorator to invalidate the cache when setting attributes.
	**/
	static public function invalidate_recursive_cache(key:Dynamic):Dynamic;
	/**
		Implicit check for Layer-like objects.
	**/
	static public function is_layer(obj:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}