/* This file is generated, do not edit! */
package tensorflow.python.autograph.utils.type_check;
@:pythonImport("tensorflow.python.autograph.utils.type_check") extern class Type_check_Module {
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
		Check if any arguments are tensors.
		
		Args:
		  *args: Python objects that may or may not be tensors.
		
		Returns:
		  True if any *args are TensorFlow types, False if none are.
	**/
	static public function is_tensor(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}