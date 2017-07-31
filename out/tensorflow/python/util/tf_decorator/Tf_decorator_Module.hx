/* This file is generated, do not edit! */
package tensorflow.python.util.tf_decorator;
@:pythonImport("tensorflow.python.util.tf_decorator") extern class Tf_decorator_Module {
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
		Make a decorator from a wrapper and a target.
		
		Args:
		  target: The final callable to be wrapped.
		  decorator_func: The wrapper function.
		  decorator_name: The name of the decorator. If `None`, the name of the
		    function calling make_decorator.
		  decorator_doc: Documentation specific to this application of
		    `decorator_func` to `target`.
		  decorator_argspec: The new callable signature of this decorator.
		
		Returns:
		  The `decorator_func` argument with new metadata attached.
	**/
	static public function make_decorator(target:Dynamic, decorator_func:Dynamic, ?decorator_name:Dynamic, ?decorator_doc:Dynamic, ?decorator_argspec:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Unwraps an object into a list of TFDecorators and a final target.
		
		Args:
		  maybe_tf_decorator: Any callable object.
		
		Returns:
		  A tuple whose first element is an list of TFDecorator-derived objects that
		  were applied to the final callable target, and whose second element is the
		  final undecorated callable target. If the `maybe_tf_decorator` parameter is
		  not decorated by any TFDecorators, the first tuple element will be an empty
		  list. The `TFDecorator` list is ordered from outermost to innermost
		  decorators.
	**/
	static public function unwrap(maybe_tf_decorator:Dynamic):Dynamic;
}