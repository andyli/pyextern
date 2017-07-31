/* This file is generated, do not edit! */
package tensorflow.contrib.util.loader;
@:pythonImport("tensorflow.contrib.util.loader") extern class Loader_Module {
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
		Loads a contrib op library from the given path.
		
		NOTE(mrry): On Windows, we currently assume that some contrib op
		libraries are statically linked into the main TensorFlow Python
		extension DLL - use dynamically linked ops if the .so is present.
		
		Args:
		  path: An absolute path to a shared object file.
		
		Returns:
		  A Python module containing the Python wrappers for Ops defined in the
		  plugin.
	**/
	static public function load_op_library(path:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}