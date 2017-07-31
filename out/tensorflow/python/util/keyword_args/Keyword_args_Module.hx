/* This file is generated, do not edit! */
package tensorflow.python.util.keyword_args;
@:pythonImport("tensorflow.python.util.keyword_args") extern class Keyword_args_Module {
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
		Decorator for marking specific function accepting keyword args only.
		
		This decorator raises a `ValueError` if the input `func` is called with any
		non-keyword args. This prevents the caller from providing the arguments in
		wrong order.
		
		Args:
		  func: The function or method needed to be decorated.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If `func` is not callable.
	**/
	static public function keyword_args_only(func:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}