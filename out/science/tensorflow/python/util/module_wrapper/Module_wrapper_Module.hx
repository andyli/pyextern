/* This file is generated, do not edit! */
package tensorflow.python.util.module_wrapper;
@:pythonImport("tensorflow.python.util.module_wrapper") extern class Module_wrapper_Module {
	static public var _PER_MODULE_WARNING_LIMIT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Extracts the caller filename and line number as a string.
		
		Returns:
		  A string describing the caller source location.
	**/
	static public function _call_location():Dynamic;
	static public var absolute_import : Dynamic;
	static public var compat_v1_usage_gauge : Dynamic;
	static public function contains_deprecation_decorator(decorators:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function get_rename_v2(name:Dynamic):Dynamic;
	/**
		Checks if given object has a deprecation decorator.
		
		We check if deprecation decorator is in decorators as well as
		whether symbol is a class whose __init__ method has a deprecation
		decorator.
		Args:
		  symbol: Python object.
		
		Returns:
		  True if symbol has deprecation decorator.
	**/
	static public function has_deprecation_decorator(symbol:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}