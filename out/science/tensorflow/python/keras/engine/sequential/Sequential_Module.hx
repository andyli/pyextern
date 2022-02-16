/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.sequential;
@:pythonImport("tensorflow.python.keras.engine.sequential") extern class Sequential_Module {
	static public var SINGLE_LAYER_OUTPUT_ERROR_MSG : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_shape_tuple(t:Dynamic):Dynamic;
	/**
		Remove nodes from `created_nodes` from the layer's inbound_nodes.
	**/
	static public function clear_previously_created_nodes(layer:Dynamic, created_nodes:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function relax_input_shape(shape_1:Dynamic, shape_2:Dynamic):Dynamic;
	/**
		Adds to `created_nodes` the nodes created by the last call to `layer`.
	**/
	static public function track_nodes_created_by_last_call(layer:Dynamic, created_nodes:Dynamic):Dynamic;
}