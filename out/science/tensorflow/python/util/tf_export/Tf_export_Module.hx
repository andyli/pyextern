/* This file is generated, do not edit! */
package tensorflow.python.util.tf_export;
@:pythonImport("tensorflow.python.util.tf_export") extern class Tf_export_Module {
	static public var API_ATTRS : Dynamic;
	static public var API_ATTRS_V1 : Dynamic;
	static public var ESTIMATOR_API_NAME : Dynamic;
	static public var KERAS_API_NAME : Dynamic;
	static public var SUBPACKAGE_NAMESPACES : Dynamic;
	static public var TENSORFLOW_API_NAME : Dynamic;
	static public var _NAME_TO_SYMBOL_MAPPING : Dynamic;
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
	static public function estimator_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Get preferred endpoint name.
		
		Args:
		  api_names: API names iterable.
		  deprecated_api_names: Deprecated API names iterable.
		Returns:
		  Returns one of the following in decreasing preference:
		  - first non-deprecated endpoint
		  - first endpoint
		  - None
	**/
	static public function get_canonical_name(api_names:Dynamic, deprecated_api_names:Dynamic):Dynamic;
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
	static public function get_symbol_from_name(name:Dynamic):Dynamic;
	/**
		Get a list of TF 1.* constants in this module.
		
		Args:
		  module: TensorFlow module.
		
		Returns:
		  List of all API constants under the given module including TensorFlow and
		  Estimator constants.
	**/
	static public function get_v1_constants(module:Dynamic):Dynamic;
	/**
		Get a list of TF 1.* names for this symbol.
		
		Args:
		  symbol: symbol to get API names for.
		
		Returns:
		  List of all API names for this symbol including TensorFlow and
		  Estimator names.
	**/
	static public function get_v1_names(symbol:Dynamic):Dynamic;
	/**
		Get a list of TF 2.0 constants in this module.
		
		Args:
		  module: TensorFlow module.
		
		Returns:
		  List of all API constants under the given module including TensorFlow and
		  Estimator constants.
	**/
	static public function get_v2_constants(module:Dynamic):Dynamic;
	/**
		Get a list of TF 2.0 names for this symbol.
		
		Args:
		  symbol: symbol to get API names for.
		
		Returns:
		  List of all API names for this symbol including TensorFlow and
		  Estimator names.
	**/
	static public function get_v2_names(symbol:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A wrapper that throws away all non-kwarg arguments.
	**/
	static public function kwarg_only(f:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}