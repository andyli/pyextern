/* This file is generated, do not edit! */
package tensorflow.python.framework.auto_control_deps;
@:pythonImport("tensorflow.python.framework.auto_control_deps") extern class Auto_control_deps_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Wraps f to automatically insert control dependencies.
		
		The inserted dependencies ensure that:
		  1. All stateful ops in f run when the result of f runs
		  2. Updates to the same resources happen in order.
		
		Args:
		  f: the function to be wrapped.
		
		Returns:
		  The wrapped function.
	**/
	static public function automatic_control_dependencies(f:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}