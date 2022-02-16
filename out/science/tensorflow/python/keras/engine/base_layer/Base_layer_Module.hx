/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.base_layer;
@:pythonImport("tensorflow.python.keras.engine.base_layer") extern class Base_layer_Module {
	static public var _AUTOCAST_TYPES : Dynamic;
	static public var _TF_OP_LAYER_NAME_PREFIX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _convert_numpy_or_python_types(x:Dynamic):Dynamic;
	/**
		Check the arguments to see if we are constructing a functional model.
	**/
	static public function _in_functional_construction_mode(layer:Dynamic, inputs:Dynamic, args:Dynamic, kwargs:Dynamic, input_list:Dynamic):Dynamic;
	/**
		Get canonical name for the API symbol.
		
		Args:
		  symbol: API function or class.
		  api_name: API name (tensorflow or estimator).
		  add_prefix_to_v1_names: Specifies whether a name available only in V1
		    should be prefixed with compat.v1.
		
		Returns:
		  Canonical name for the API symbol (for e.g. initializers.zeros) if
		  canonical name could be determined. Otherwise, returns None.
	**/
	static public function get_canonical_name_for_symbol(symbol:Dynamic, ?api_name:Dynamic, ?add_prefix_to_v1_names:Dynamic):Dynamic;
	static public function is_tensor_or_tensor_list(v:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function to_snake_case(name:Dynamic):Dynamic;
}