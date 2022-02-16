/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_function;
@:pythonImport("tensorflow.python.tpu.tpu_function") extern class Tpu_function_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _current_tpu_context : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function get_tpu_context():Dynamic;
	static public function on_device_training_loop(func:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		A context manager setting current number of shards.
	**/
	static public function tpu_shard_context(number_of_shards:Dynamic):Dynamic;
}