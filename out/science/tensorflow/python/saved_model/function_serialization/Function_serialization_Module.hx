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
	/**
		Serialize a FunctionSpec object into its proto representation.
	**/
	static public function _serialize_function_spec(function_spec:Dynamic, coder:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Build a SavedBareConcreteFunction.
	**/
	static public function serialize_bare_concrete_function(concrete_function:Dynamic, name_map:Dynamic):Dynamic;
	/**
		Build a SavedConcreteFunction.
	**/
	static public function serialize_concrete_function(concrete_function:Dynamic, node_ids:Dynamic, coder:Dynamic):Dynamic;
	/**
		Build a SavedFunction proto.
	**/
	static public function serialize_function(_function:Dynamic, name_map:Dynamic):Dynamic;
	/**
		Wraps the concrete function if it uses cached read tensors.
		
		This function creates a new concrete function that captures variables
		instead of the cached read tensors.
		
		Args:
		  concrete_function: A Concrete function that maybe captures cached read
		    tensors.
		
		Returns:
		  A concrete function that wraps the original concrete function, which
		  captures variables instead. If the original function did not capture any
		  cached values, then the function is not wrapped and the original object is
		  returned.
	**/
	static public function wrap_cached_variables(concrete_function:Dynamic):Dynamic;
}