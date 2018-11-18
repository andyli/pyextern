/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.keras_tpu_variables;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.keras_tpu_variables") extern class Keras_tpu_variables_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _enclosing_tpu_context():Dynamic;
	static public function _handle_graph(handle:Dynamic):Dynamic;
	static public function _tensor_conversion(_var:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function replicated_fetch_function(_var:Dynamic):Dynamic;
	/**
		Variable scope for constructing replicated variables.
	**/
	static public function replicated_scope(num_replicas:Dynamic):Dynamic;
	/**
		Context manager for optimizer weights. Overrides K.variable.
	**/
	static public function replicated_variable_for_optimizer(num_replicas:Dynamic):Dynamic;
}