/* This file is generated, do not edit! */
package tensorflow.python.framework.func_graph;
@:pythonImport("tensorflow.python.framework.func_graph") extern class Func_graph_Module {
	static public var ALLOWLIST_COLLECTIONS : Dynamic;
	static public var _EAGER_CONST_THRESHOLD : Dynamic;
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
	static public function _create_substitute_placeholder(value:Dynamic, ?name:Dynamic, ?dtype:Dynamic, ?shape:Dynamic):Dynamic;
	/**
		Returns the TypeSpec for x if it's a composite tensor, or x otherwise.
	**/
	static public function _get_composite_tensor_spec(x:Dynamic):Dynamic;
	/**
		Maps python function args to graph-construction inputs.
		
		Args:
		  args: A flat list of user-specified arguments.
		  names: A list of strings with user-specified argument names, same length as
		    `args`. May be `None`, in which case a generic name is used.
		  structure: The original argument list or dictionary.
		  flat_shapes: A flat list of values that are either `None` or
		    instances of `TensorShape`.  If provided, then length must match
		    that of `nest.flatten(args, expand_composites=True)`; and locations where
		    `args` are instances of `Tensor` must have a corresponding `TensorShape`
		    in `flat_shapes`.  May be `None`, in which case exact shapes are read
		    directly from the args.
		
		Returns:
		  Placeholders with the same structure as `structure`.
		
		Raises:
		  RuntimeError: if `flat_shapes` is provided, but
		   `len(flat_shapes) != len(nest.flatten(args, expand_composites=True))`.
		  RuntimeError: if a shape from `flat_shapes` is not None
		   for an argument that is not a `Tensor`, `TensorSpec`,
		   or `ResourceVariable`.
	**/
	static public function _get_defun_inputs(args:Dynamic, names:Dynamic, structure:Dynamic, ?flat_shapes:Dynamic):Dynamic;
	/**
		Maps Python function positional args to graph-construction inputs.
	**/
	static public function _get_defun_inputs_from_args(args:Dynamic, names:Dynamic, ?flat_shapes:Dynamic):Dynamic;
	/**
		Maps Python function keyword args to graph-construction inputs.
	**/
	static public function _get_defun_inputs_from_kwargs(kwargs:Dynamic, flat_shapes:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Check if two list of arguments are exactly the same.
	**/
	static public function check_mutation(n1:Dynamic, n2:Dynamic, func:Dynamic):Dynamic;
	/**
		Convert a potentially nested structure to a signature.
		
		Args:
		  structure: Structure to convert, where top level collection is a list or a
		    tuple.
		  arg_names: Optional list of arguments that has equal number of elements as
		    `structure` and is used for naming corresponding TensorSpecs.
		
		Returns:
		  Identical structure that has TensorSpec objects instead of Tensors and
		  UnknownArgument instead of any unsupported types.
	**/
	static public function convert_structure_to_signature(structure:Dynamic, ?arg_names:Dynamic):Dynamic;
	/**
		Checks whether a device stack contains a callable.
	**/
	static public function device_stack_has_callable(device_stack:Dynamic):Dynamic;
	/**
		Removes reference cycles in `func_graph` FuncGraph.
		
		Helpful for making sure the garbage collector doesn't need to run when
		the FuncGraph goes out of scope, e.g. in tests using defun with
		@test_util.run_in_graph_and_eager_modes(assert_no_eager_garbage=True).
		
		Args:
		  func_graph: A `FuncGraph` object to destroy. `func_graph` is unusable
		    after this function.
	**/
	static public function dismantle_func_graph(func_graph:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Like nest.flatten w/ expand_composites, but returns flow for TensorArrays.
		
		Args:
		  sequence: A nested structure of Tensors, CompositeTensors, and
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
		  autograph_options: additional knobs to control when `autograph=True`.
		    See https://www.tensorflow.org/guide/autograph for more information.
		  add_control_dependencies: If True, automatically adds control dependencies
		    to ensure program order matches execution order and stateful ops always
		    execute.
		  arg_names: Optional list of argument names, used to give input placeholders
		    recognizable names.
		  op_return_value: Optional. A Tensor. If set and `python_func` returns
		    Operations, those return values will be replaced with this value. If not
		    set, returning an Operation triggers an error.
		  collections: a dictionary of collections this FuncGraph should start
		    with. If not specified (None), the FuncGraph will read (but not write to)
		    the outer graph's collections that are not allowlisted, and both
		    read and write to the outer graph's collections that are allowlisted.
		    The current allowlisted collections are the global variables, the
		    local variables, and the trainable variables.
		    Defaults to None.
		  capture_by_value: An optional boolean. If True, the func graph will capture
		    Variables by value instead of reference. By default inherit from outer
		    graphs, and failing that will default to False.
		  override_flat_arg_shapes: An optional list of instances that are either
		    `None` or `TensorShape`.  The length must match that of
		    `nest.flatten((args, kwargs), expand_composites=True)`.  The entries
		    containing value `None` must match entries in flattened arguments
		    containing non-tensors, while entries containing a `TensorShape` must
		    match entries in the flattened arguments containing tensors.
		  acd_record_initial_resource_uses: If `True` and `add_control_dependencies`
		    is enabled, the results (those marked with
		    AutomaticControlDependencies.mark_result) will be annotated with a private
		    attribute, "_res_first_used_by", which points to the first nodes which
		    used the any of the resources that the result op is using.
		
		Returns:
		  A FuncGraph.
		
		Raises:
		  TypeError: If any of `python_func`'s return values is neither `None` nor a
		    `Tensor`.
		  ValueError: If both `signature` and `override_flat_arg_shapes` are
		    passed in.
	**/
	static public function func_graph_from_py_func(name:Dynamic, python_func:Dynamic, args:Dynamic, kwargs:Dynamic, ?signature:Dynamic, ?func_graph:Dynamic, ?autograph:Dynamic, ?autograph_options:Dynamic, ?add_control_dependencies:Dynamic, ?arg_names:Dynamic, ?op_return_value:Dynamic, ?collections:Dynamic, ?capture_by_value:Dynamic, ?override_flat_arg_shapes:Dynamic, ?acd_record_initial_resource_uses:Dynamic):Dynamic;
	/**
		Graph-only version of tf.compat.v1.placeholder(), for internal use only.
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
	static public function override_func_graph_name_scope(func_graph:Dynamic, name_scope:Dynamic):Dynamic;
	/**
		Like `nest.pack_sequence_as` but also builds TensorArrays from flows.
		
		Args:
		  structure: The structure to pack into. May contain Tensors,
		    CompositeTensors, or TensorArrays.
		  flat_sequence: An iterable containing tensors.
		
		Returns:
		  A nested structure.
		
		Raises:
		  AssertionError if `structure` and `flat_sequence` are not compatible.
	**/
	static public function pack_sequence_as(structure:Dynamic, flat_sequence:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}