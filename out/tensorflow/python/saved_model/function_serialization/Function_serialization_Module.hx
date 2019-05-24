/* This file is generated, do not edit! */
package tensorflow.python.saved_model.function_serialization;
@:pythonImport("tensorflow.python.saved_model.function_serialization") extern class Function_serialization_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _serialize_polymorphic_function(polymorphic_function:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Finds PolymorphicFunctions attached to objects and saves them.
	**/
	static public function add_polymorphic_functions_to_object_graph_proto(checkpointable_objects:Dynamic, saved_object_graph:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Given a polymorphic function, returns all of its concrete functions.
	**/
	static public function list_all_concrete_functions(polymorphic_function:Dynamic):Dynamic;
	/**
		Given a checkpointable object, returns all of its polymorphic functions.
	**/
	static public function list_all_polymorphic_functions(checkpointable_object:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}