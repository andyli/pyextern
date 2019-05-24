/* This file is generated, do not edit! */
package tensorflow.python.framework._function;
@:pythonImport("tensorflow.python.framework.function") extern class _Function_Module {
	static public var _DTYPE_TO_STR : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adds a node calling a function.
		
		This adds a `call` op to the default graph that calls the function
		of signature `sig`, passing the tensors in `inputs` as arguments.
		It returns the outputs of the call, which are one or more tensors.
		
		`sig` is OpDefArg.a `_DefinedFunction` object.
		
		You can pass an optional keyword parameter `name=string` to name the
		added operation.
		
		You can pass an optional keyword parameter `noinline=True|False` to
		instruct the runtime not to inline the function body into the call
		site.
		
		Args:
		  sig: OpDefArg. The signature of the function.
		  *inputs: arguments to the function.
		  **kwargs: Optional keyword arguments.  Can only contain 'name' or
		      'noinline'.
		
		Returns:
		   A 2-element tuple. First element: a Tensor if the function returns a single
		   value; a list of Tensors if the function returns multiple value; the
		   Operation if the function returns no values. Second element: the Operation.
		
		Raises:
		  ValueError: if the arguments are invalid.
	**/
	static public function _call(sig:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates a _DefinedFunction initialized from a FunctionDef proto.
		
		Args:
		  fdef: a FunctionDef
		  grad_func: a _DefinedFunction or None
		
		Returns:
		  A _DefinedFunction representing fdef
	**/
	static public function _from_definition(fdef:Dynamic, ?grad_func:Dynamic):Dynamic;
	/**
		Creates an AttrValue for a python object.
	**/
	static public function _get_experimental_kwarg_as_attr(attr_name:Dynamic, value:Dynamic):Dynamic;
	/**
		Determines whether `tensor` is guaranteed to be a constant.
		
		A tensor is guaranteed to be a constant if either it was produced by
		a `GuaranteeConst` op or if all of its children are guaranteed to be
		constants.
		
		Args:
		  tensor: The tensor for which to determine const-ness.
		
		Returns:
		  True if `tensor` is guaranteed to be a constant, False otherwise.
	**/
	static public function _is_guaranteed_const(tensor:Dynamic):Dynamic;
	/**
		Parses **kwargs into a node's attributes.
	**/
	static public function _parse_kwargs_as_attrs(func_name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _type_list_to_str(types:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Creates _DefinedFunctions initialized from a FunctionDefLibrary proto.
		
		This method handles assigning the correct gradient functions to each
		function.
		
		Args:
		  lib: a FunctionDefLibrary
		
		Returns:
		  A list of _DefinedFunctions
		
		Raises:
		  ValueError: `lib` is invalid
	**/
	static public function from_library(lib:Dynamic):Dynamic;
	/**
		Returns a _FuncGraph generated from `func`.
		
		Args:
		  func: A Python callable which constructs a TF function body. The arguments
		    must correspond to `arg_types`. Returns a value or list/tuple of values.
		    No returned value can be None.
		  arg_names: A sequence of strings for the function argument names.
		  arg_types: A sequence of the function's argument types.
		  name: The function name. If None, the name is derived from `func`.
		  capture_by_value: boolean. If True, captured values will be copied into the
		    function body.
		  device: device name or function.
		  colocation_stack: A colocation stack (list) the _FuncGraph should use.
		  container: A container name the _FuncGraph should start with.
		  collections_ref: A reference to a collections dict the _FuncGraph should
		    use internally.
		  arg_shapes: A sequence of the function's argument shapes.
		  whitelisted_stateful_ops: A set of ops that if stateful we ignore and
		    re-create.
		
		Returns:
		  A _FuncGraph.
		
		Raises:
		  ValueError: if func returns None.
	**/
	static public function func_graph_from_py_func(func:Dynamic, arg_names:Dynamic, arg_types:Dynamic, ?name:Dynamic, ?capture_by_value:Dynamic, ?device:Dynamic, ?colocation_stack:Dynamic, ?container:Dynamic, ?collections_ref:Dynamic, ?arg_shapes:Dynamic, ?whitelisted_stateful_ops:Dynamic):Dynamic;
	/**
		Converts a SWIG-wrapped TF_Function* to a FunctionDef proto.
	**/
	static public function function_def_from_tf_function(c_func:Dynamic):Dynamic;
	/**
		Returns the corresponding function arguments for the captured inputs.
		
		Returns:
		  If the default graph is being used to define a function, the
		  returned list of place holders are those used inside the function
		  body corresponding those returned by get_extra_inputs(). Otherwise,
		  returns an empty list.
	**/
	static public function get_extra_args():Dynamic;
	/**
		Returns the captured input tensors by the function.
		
		Returns:
		  If the default graph is being used to define a function, the
		  returned list of tensors are those accessed inside the function body
		  but defined outside the function body so far. Otherwise, returns an
		  empty list.
	**/
	static public function get_extra_inputs():Dynamic;
	/**
		Returns the captured variables by the function.
		
		Returns:
		  If the default graph is being used to define a function, the
		  returned list of variables are those created inside the function
		  body so far. Otherwise, returns an empty list.
	**/
	static public function get_extra_vars():Dynamic;
	static public var print_function : Dynamic;
}