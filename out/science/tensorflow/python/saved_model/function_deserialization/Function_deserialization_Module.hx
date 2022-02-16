/* This file is generated, do not edit! */
package tensorflow.python.saved_model.function_deserialization;
@:pythonImport("tensorflow.python.saved_model.function_deserialization") extern class Function_deserialization_Module {
	static public var _FUNCTION_WRAPPER_NAME_REGEX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Calls a restored Function with structured inputs.
		
		This differs from `function.__call__` in that inputs and outputs are
		structured and that it casts inputs to tensors if needed.
		
		Note: this does not checks that non-tensor inputs match. That should be
		done before via `_concrete_function_callable_with`.
		
		Args:
		  function: ConcreteFunction to call.
		  inputs: Structured inputs compatible with
		      `function.graph.structured_input_signature`.
		
		Returns:
		  The structured function output.
	**/
	static public function _call_concrete_function(_function:Dynamic, inputs:Dynamic):Dynamic;
	/**
		Vanity function to keep the function names comprehensible.
	**/
	static public function _clean_function_name(name:Dynamic):Dynamic;
	/**
		Returns whether concrete `function` can be called with `inputs`.
	**/
	static public function _concrete_function_callable_with(_function:Dynamic, inputs:Dynamic, allow_conversion:Dynamic):Dynamic;
	/**
		Deserialize a FunctionSpec object from its proto representation.
	**/
	static public function _deserialize_function_spec_as_nonmethod(function_spec_proto:Dynamic, coder:Dynamic):Dynamic;
	/**
		Fixes a FunctionDef proto to be loaded in current context.
		
		In particular, when loading a function library into an eager context, one
		must rename the functions to avoid conflicts with existent functions.
		
		Args:
		  orig_fdef: FunctionDef proto to fix. It is not modified.
		  functions: map from function name to a ConcreteFunction instance.
		  shared_name_suffix: A unique string for this load which helps to avoid
		    `shared_name` collisions across loads. Two functions from the same load
		    using the same `shared_name` still need to share, but functions from
		    different loads with the same `shared_name` should not.
		  new_gradient_op_types: map from old gradient op type to newly generated
		    op type.
		
		Returns:
		  A fixed copy of the original FunctionDef
	**/
	static public function _fix_fdef(orig_fdef:Dynamic, functions:Dynamic, shared_name_suffix:Dynamic, new_gradient_op_types:Dynamic):Dynamic;
	/**
		Wraps a deserialized function.
	**/
	static public function _gen_gradient_func(func:Dynamic):Dynamic;
	/**
		Returns the custom gradient op type.
	**/
	static public function _get_gradient_op_type(node_def:Dynamic):Dynamic;
	static public function _is_tensor(t:Dynamic):Dynamic;
	/**
		Find functions referenced in `fdef`.
	**/
	static public function _list_function_deps(fdef:Dynamic, library_function_names:Dynamic, library_gradient_names:Dynamic):Dynamic;
	/**
		Populate function op's _gradient_function with default gradient.
	**/
	static public function _restore_gradient_functions(func_graph:Dynamic, renamed_functions:Dynamic, loaded_gradients:Dynamic):Dynamic;
	/**
		Return a topologic sort of FunctionDefs in a library.
	**/
	static public function _sort_function_defs(library:Dynamic, function_deps:Dynamic):Dynamic;
	/**
		Returns None or TensorSpec obtained if `arg` is converted to tensor.
	**/
	static public function _try_convert_to_tensor_spec(arg:Dynamic, dtype_hint:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Replace functions calls and shared names in `node_def`.
	**/
	static public function fix_node_def(node_def:Dynamic, functions:Dynamic, shared_name_suffix:Dynamic):Dynamic;
	/**
		Load a set of functions as concrete functions without captured inputs.
		
		Functions names are manipulated during load such that they do not overlap
		with previously created ones.
		
		Gradients are re-registered under new names. Ops that reference the gradients
		are updated to reflect the new registered names.
		
		Args:
		  library: FunctionDefLibrary proto message.
		  load_shared_name_suffix: If specified, used to uniquify shared
		    names. Otherwise, a unique name is generated.
		  wrapper_function: An object that will be wrapped on newly created functions.
		
		Returns:
		  Map of original function names in the library to instances of
		  `ConcreteFunction` without captured inputs.
		
		Raises:
		  ValueError: if functions dependencies have a cycle.
	**/
	static public function load_function_def_library(library:Dynamic, ?load_shared_name_suffix:Dynamic, ?wrapper_function:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a `Function` from a `SavedFunction`.
		
		Args:
		  saved_function: `SavedFunction` proto.
		  concrete_functions: map from function name to `ConcreteFunction`.
		    As a side effect of this function, the `FunctionSpec` from
		    `saved_function` is added to each `ConcreteFunction` in this map.
		
		Returns:
		  A `Function`.
	**/
	static public function recreate_function(saved_function:Dynamic, concrete_functions:Dynamic):Dynamic;
	/**
		Makes a restored bare concrete function callable.
	**/
	static public function setup_bare_concrete_function(saved_bare_concrete_function:Dynamic, concrete_functions:Dynamic):Dynamic;
}