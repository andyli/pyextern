/* This file is generated, do not edit! */
package tensorflow.python.framework.kernels;
@:pythonImport("tensorflow.python.framework.kernels") extern class Kernels_Module {
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
		Returns a KernelList proto of all registered kernels.
		  
	**/
	static public function get_all_registered_kernels():Dynamic;
	/**
		Returns a KernelList proto of registered kernels for a given op.
		
		Args:
		  name: A string representing the name of the op whose kernels to retrieve.
	**/
	static public function get_registered_kernels_for_op(name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}