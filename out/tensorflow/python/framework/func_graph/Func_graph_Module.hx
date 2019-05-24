/* This file is generated, do not edit! */
package tensorflow.python.framework.func_graph;
@:pythonImport("tensorflow.python.framework.func_graph") extern class Func_graph_Module {
	static public var WHITELIST_COLLECTIONS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates a placeholder for `value` and propagates shape info to it.
	**/
	static public function _create_substitute_placeholder(value:Dynamic, ?name:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Maps python function args to graph-construction inputs.
		
		Args:
		  flat_args: A flat list of user-specified arguments.
		  names: A list of strings with user-specified argument names, same length as
		    `flat_args`. May be `None`, in which case a generic name is used.
		  structure: The original argument list or dictionary.
		
		Returns:
		  Placeholders with the same structure as `structure`.
	**/
	static public function _get_defun_inputs(flat_args:Dynamic, names:Dynamic, structure:Dynamic):Dynamic;
	/**
		Maps Python function positional args to graph-construction inputs.
	**/
	static public function _get_defun_inputs_from_args(args:Dynamic, names:Dynamic):Dynamic;
	/**
		Maps Python function keyword args to graph-construction inputs.
	**/
	static public function _get_defun_inputs_from_kwargs(kwargs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Check if two list of arguments are exactly the same.
	**/
	static public function check_mutation(n1:Dynamic, n2:Dynamic):Dynamic;
	/**
		Checks whether a device stack contains a callable.
	**/
	static public function device_stack_has_callable(device_stack:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Like `nest.flatten` but also unpacks other Tensor-like objects.
		
		Flattens non-tensor objects into their constituent tensors.
		
		Args:
		  sequence: A nested structure of Tensors, IndexedSlices, SparseTensors and
		    TensorArrays.
		
		Returns:
		  A list of tensors.
	**/
	static public function flatten(sequence:Dynamic):Dynamic;
	/**
		Returns a `FuncGraph` generated from `python_func`.
		
		Args:
		  name: an identifier for the function.
		  python_func: the Python function to trace.
		  args: the positional args with which the Python function should be called;
		    ignored if a signature is provided.
		  kwargs: the keyword args with which the Python function should be called;
		    ignored if a signature is provided.
		  signature: a possibly nested sequence of `TensorSpecs` specifying the shapes
		    and dtypes of the arguments. When a signature is provided, `args` and
		    `kwargs` are ignored, and `python_func` is traced with Tensors conforming
		    to `signature`. If `None`, the shapes and dtypes are inferred from the
		    inputs.
		  func_graph: Optional. An instance of FuncGraph. If provided, we will use
		    this graph else a new one is built and returned.
		  autograph: whether to use autograph to compile `python_func`.
		    See https://www.tensorflow.org/guide/autograph for more information.
		  add_control_dependencies: If True, automatically adds control dependencies
		    to ensure program order matches execution order and stateful ops always
		    execute.
		  arg_names: Optional list of argument names, used to give input placeholders
		    recognizable names.
		  op_return_value: Optional. A Tensor. If set and `python_func` returns
		    Operations, those return values will be replaced with this value. If not
		    set, returning an Operation triggers an error.
		
		Returns:
		  A FuncGraph.
		
		Raises:
		  TypeError: If any of `python_func`'s return values is neither `None` nor a
		    `Tensor`.
	**/
	static public function func_graph_from_py_func(name:Dynamic, python_func:Dynamic, args:Dynamic, kwargs:Dynamic, ?signature:Dynamic, ?func_graph:Dynamic, ?autograph:Dynamic, ?add_control_dependencies:Dynamic, ?arg_names:Dynamic, ?op_return_value:Dynamic):Dynamic;
	/**
		Graph-only version of tf.placeholder(), for internal use only.
	**/
	static public function graph_placeholder(dtype:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		If t is a captured value placeholder, returns the original captured value.
		
		Args:
		  tensor: Tensor.
		
		Returns:
		  A tensor, potentially from a different Graph/FuncGraph.
	**/
	static public function maybe_captured(tensor:Dynamic):Dynamic;
	/**
		Like `nest.pack_sequence_as` but also packs other Tensor-like objects.
		
		Args:
		  structure: The structure to pack into. May contain Tensors, IndexedSlices,
		    TensorArrays or SparseTensors.
		  flat_sequence: An iterable containing tensors.
		
		Returns:
		  A nested structure.
		
		Raises:
		  AssertionError if `structure` and `flat_sequence` are not compatible.
	**/
	static public function pack_sequence_as(structure:Dynamic, flat_sequence:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}