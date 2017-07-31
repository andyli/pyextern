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
		Converts an op to a function def node and add it to `func`.
	**/
	static public function _add_op_node(op:Dynamic, func:Dynamic, input_dict:Dynamic):Dynamic;
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
		Create a mapping from graph tensor names to function tensor names.
	**/
	static public function _create_input_dict(function_graph:Dynamic, func_arg_placeholders:Dynamic):Dynamic;
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
	static public function _from_library(lib:Dynamic):Dynamic;
	static public function _get_func_name(func:Dynamic):Dynamic;
	static public function _get_node_def(op:Dynamic):Dynamic;
	static public function _get_op_def(op:Dynamic):Dynamic;
	/**
		Returns `graph` as a `FunctionDef` protocol buffer.
		
		This method creates a [`FunctionDef`](
		https://www.tensorflow.org/code/tensorflow/core/framework/function.proto)
		protocol buffer that contains all the ops in `operations`.  The
		operations become the body of the function.
		
		The arguments `inputs` and `outputs` will be listed as the inputs
		and outputs tensors of the function.  They must be lists of
		tensors present in the graph.  The lists can optionally be empty.
		
		Args:
		  graph: Graph.
		  operations: the operations to put in the function. Must be a subset of
		   the operations in the graph.
		  inputs: List of tensors. Inputs to the function.
		  outputs: List of tensors. Outputs of the function.
		  out_names: Optional list of string names for the outputs.
		
		Returns:
		  A FunctionDef protocol buffer.
		
		Raises:
		  ValueError: if out_names is specified and the wrong length.
	**/
	static public function _graph_to_function_def(graph:Dynamic, operations:Dynamic, inputs:Dynamic, outputs:Dynamic, ?out_names:Dynamic):Dynamic;
	static public function _is_in_placeholders(op:Dynamic, func_arg_placeholders:Dynamic):Dynamic;
	static public function _make_argname_from_tensor_name(name:Dynamic):Dynamic;
	/**
		Parses **kwargs into a node's attributes.
	**/
	static public function _parse_kwargs_as_attrs(func_name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert tensor t to an argdef, with a specified name or a unique name.
	**/
	static public function _tensor_to_argdef(t:Dynamic, ?name:Dynamic, ?used_names:Dynamic):Dynamic;
	static public function _type_list_to_str(types:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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