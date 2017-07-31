/* This file is generated, do not edit! */
package tensorflow.python.ops.distributions.distribution;
@:pythonImport("tensorflow.python.ops.distributions.distribution") extern class Distribution_Module {
	static public var FULLY_REPARAMETERIZED : Dynamic;
	static public var NOT_REPARAMETERIZED : Dynamic;
	static public var _DISTRIBUTION_PUBLIC_METHOD_WRAPPERS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Create a deep copy of fn.
		
		Args:
		  fn: a callable
		
		Returns:
		  A `FunctionType`: a deep copy of fn.
		
		Raises:
		  TypeError: if `fn` is not a callable.
	**/
	static public function _copy_fn(fn:Dynamic):Dynamic;
	/**
		Update old_str by inserting append_str just before the "Args:" section.
	**/
	static public function _update_docstring(old_str:Dynamic, append_str:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}