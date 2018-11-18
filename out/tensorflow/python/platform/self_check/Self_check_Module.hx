/* This file is generated, do not edit! */
package tensorflow.python.platform.self_check;
@:pythonImport("tensorflow.python.platform.self_check") extern class Self_check_Module {
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
		Raises an exception if the environment is not correctly configured.
		
		Raises:
		  ImportError: If the check detects that the environment is not correctly
		    configured, and attempting to load the TensorFlow runtime will fail.
	**/
	static public function preload_check():Dynamic;
	static public var print_function : Dynamic;
}