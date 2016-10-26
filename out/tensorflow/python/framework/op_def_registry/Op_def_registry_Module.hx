/* This file is generated, do not edit! */
package tensorflow.python.framework.op_def_registry;
@:pythonImport("tensorflow.python.framework.op_def_registry") extern class Op_def_registry_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _registered_ops : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns a dictionary mapping names to OpDefs.
	**/
	static public function get_registered_ops():Dynamic;
	static public var print_function : Dynamic;
	/**
		Register all the ops in an op_def_pb2.OpList.
	**/
	static public function register_op_list(op_list:Dynamic):Dynamic;
}