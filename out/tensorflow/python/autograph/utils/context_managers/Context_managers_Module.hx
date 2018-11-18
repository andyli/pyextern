/* This file is generated, do not edit! */
package tensorflow.python.autograph.utils.context_managers;
@:pythonImport("tensorflow.python.autograph.utils.context_managers") extern class Context_managers_Module {
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
		Create a TF control dependency on the return values of a function.
		
		If the function had no return value, a no-op context is returned.
		
		Args:
		  return_value: The return value to set as control dependency.
		
		Returns:
		  A context manager.
	**/
	static public function control_dependency_on_returns(return_value:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}