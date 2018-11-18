/* This file is generated, do not edit! */
package tensorflow.python.tools.component_api_helper;
@:pythonImport("tensorflow.python.tools.component_api_helper") extern class Component_api_helper_Module {
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
		Used to hook in an external package into the TensorFlow namespace.
		
		Example usage:
		### tensorflow/__init__.py
		from tensorflow.python.tools import component_api_helper
		component_api_helper.package_hook(
		    'tensorflow', 'tensorflow_estimator.python')
		component_api_helper(
		    'tensorflow.contrib', 'tensorflow_estimator.contrib.python')
		del component_api_helper
		
		TODO(mikecase): This function has a minor issue, where if the child package
		does not exist alone in its directory, sibling packages to it will also be
		accessible from the parent. This is because we just add
		`child_pkg.__file__/..` to the subpackage search path. This should not be
		a big issue because of how our API generation scripts work (the child package
		we are hooking up should always be alone). But there might be a better way
		of doing this.
		
		Args:
		  parent_package_str: Parent package name as a string such as 'tensorflow' or
		    'tensorflow.contrib'. This will become the parent package for the
		    component package being hooked in.
		  child_package_str: Child package name as a string such as
		    'tensorflow_estimator.python'. This package will be added as a subpackage
		    of the parent.
		  error_msg: Message to print if child package cannot be found.
	**/
	static public function package_hook(parent_package_str:Dynamic, child_package_str:Dynamic, ?error_msg:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}