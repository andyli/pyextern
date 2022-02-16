/* This file is generated, do not edit! */
package tensorflow.python.tools.module_util;
@:pythonImport("tensorflow.python.tools.module_util") extern class Module_util_Module {
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
	static public function get_parent_dir(module:Dynamic):Dynamic;
	/**
		Get parent directory for module with the given name.
		
		Args:
		  module_name: Module name for e.g.
		    tensorflow_estimator.python.estimator.api._v1.estimator.
		
		Returns:
		  Path to the parent directory if module is found and None otherwise.
		  Given example above, it should return:
		    /pathtoestimator/tensorflow_estimator/python/estimator/api/_v1.
	**/
	static public function get_parent_dir_for_name(module_name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}