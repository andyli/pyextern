/* This file is generated, do not edit! */
package tensorflow.python.saved_model.main_op;
@:pythonImport("tensorflow.python.saved_model.main_op") extern class Main_op_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Returns a main op to init variables and tables.
		
		Returns the main op including the group of ops that initializes all
		variables, initializes local variables and initialize all tables.
		
		Returns:
		  The set of ops to be run as part of the main op upon the load operation.
	**/
	static public function main_op():Dynamic;
	/**
		Returns a main op to init variables, tables and restore the graph.
		
		Returns the main op including the group of ops that initializes all
		variables, initialize local variables, initialize all tables and the restore
		op name.
		
		Args:
		  restore_op_name: Name of the op to use to restore the graph.
		
		Returns:
		  The set of ops to be run as part of the main op upon the load operation.
	**/
	static public function main_op_with_restore(restore_op_name:Dynamic):Dynamic;
}