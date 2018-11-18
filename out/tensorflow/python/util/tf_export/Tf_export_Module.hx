/* This file is generated, do not edit! */
package tensorflow.python.util.tf_export;
@:pythonImport("tensorflow.python.util.tf_export") extern class Tf_export_Module {
	static public var API_ATTRS : Dynamic;
	static public var API_ATTRS_V1 : Dynamic;
	static public var ESTIMATOR_API_NAME : Dynamic;
	static public var TENSORFLOW_API_NAME : Dynamic;
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
		Get first non-deprecated endpoint name.
		
		Args:
		  api_names: API names iterable.
		  deprecated_api_names: Deprecated API names iterable.
		Returns:
		  Canonical name if there is at least one non-deprecated endpoint.
		  Otherwise returns None.
	**/
	static public function get_canonical_name(api_names:Dynamic, deprecated_api_names:Dynamic):Dynamic;
	/**
		Get canonical name for the API symbol.
		
		Canonical name is the first non-deprecated endpoint name.
		
		Args:
		  symbol: API function or class.
		  api_name: API name (tensorflow or estimator).
		
		Returns:
		  Canonical name for the API symbol (for e.g. initializers.zeros) if
		  canonical name could be determined. Otherwise, returns None.
	**/
	static public function get_canonical_name_for_symbol(symbol:Dynamic, ?api_name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}