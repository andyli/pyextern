/* This file is generated, do not edit! */
package tensorflow.python.ops.control_flow_util_v2;
@:pythonImport("tensorflow.python.ops.control_flow_util_v2") extern class Control_flow_util_v2_Module {
	static public var _DISABLE_LOWER_USING_SWITCH_MERGE : Dynamic;
	static public var _EXPERIMENTAL_OUTPUT_ALL_INTERMEDIATES_OVERRIDE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _is_building_keras_layer():Dynamic;
	static public function _is_tpu_strategy(strategy:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Clears the control inputs but preserves the ControlFlowContext.
		
		This is needed to preserve the XLAControlFlowControl when clearing
		control inputs for the gradient accumulators in while_v2.
		`ops.control_dependencies` does not allow that.
		
		Yields:
		  A context manager in which the ops created will not have any control inputs
		  by default but the control flow context is the same.
	**/
	static public function clear_control_inputs():Dynamic;
	/**
		Converts func_graph to a TF_Function and adds it to the current graph.
		
		Args:
		  func_graph: FuncGraph
		
		Returns:
		  The name of the new TF_Function.
	**/
	static public function create_new_tf_function(func_graph:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Generates and returns a FuncGraph for the given op and input_shapes.
	**/
	static public function get_func_graph(op:Dynamic, input_shapes:Dynamic, func_name:Dynamic):Dynamic;
	static public function get_op_and_outputs(op_or_outputs:Dynamic):Dynamic;
	/**
		Check if `graph` is wrapped by `run_as_function_for_tape_gradients`.
	**/
	static public function graph_wrapped_for_higher_order_tape_gradients(graph:Dynamic):Dynamic;
	/**
		Returns if the current graph is, or is nested in, a defun.
	**/
	static public function in_defun():Dynamic;
	/**
		Returns if the graph is a while loop FuncGraph.
	**/
	static public function in_while_loop_defun(graph:Dynamic):Dynamic;
	/**
		Tells XLA whether to propagate compile-time consts in the loop body.
		
		This is needed to make compile time constants available to ops, for example
		`max_num_elements` in `EmptyTensorList`, inside the loop body. Ideally this
		would always be turned on, but that doesn't work with legacy functionalized
		while_loops.
		
		Args:
		  op: A `While` Operation.
	**/
	static public function maybe_propagate_compile_time_consts_in_xla(op:Dynamic):Dynamic;
	/**
		Sets the flag to enable lowering on `op` if necessary.
		
		Lowering allows cond_v2 and while_v2 to avoid some of the limitations of
		Functions, allowing users to specify devices & colocation inside of cond_v2
		and while_v2 input functions, and enabling non-strict evaluation & partial
		pruning. This brings v2 control flow closer to feature parity with v1 control
		flow.
		
		However, we do not lower in the following cases:
		  - When the `If` or `While` ops are in the XLA context. Because it is easier
		    for XLA to apply its own optimizations when dealing with un-lowered
		    control flow operators than with low-level control flow primitives.
		  - When the eager execution context specifies the executor of functions to
		    be the single threaded executor (see context.function_executor_type()).
		    Because the single threaded executor does not support v1 control flow ops.
		  - When 'lower_using_switch_merge' is explicitly set to False.
		
		Args:
		  op: An `If` or `While` Operation.
		  lower_using_switch_merge: Explicit value to lower or not (optional).
	**/
	static public function maybe_set_lowering_attr(op:Dynamic, ?lower_using_switch_merge:Dynamic):Dynamic;
	/**
		Whether to output all intermediates of a functional control flow op.
		
		The default behavior is to output intermediates only when building a Keras
		Layer in graph mode and that too when certain other conditions are met:
		1. We do not output intermediates if the functional control flow op
		   is being built inside a FuncGraph which is not a If/While graph. This
		   guards against outputting intermediates in eager mode since keras adds
		   tensors to a FuncGraph named "keras_graph" in that case. Also because we
		   do not output intermediates of tf.function (since this feature is only for
		   backwards compatibility) outputting intermediates of functional control
		   flow ops built inside tf.function is of no value.
		2. We do not output intermediates when the compilation is using XLA or for a
		   TPU.
		3. We do not output intermediates when a single threaded executor is used
		   since that does not perform inlining and pruning.
		
		Returns:
		  A bool telling whether to output all intermediates.
	**/
	static public function output_all_intermediates():Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns the index of the input corresponding to `tensor_name`.
		
		This method is used to find the corresponding index of an arbitrary resource
		tensor in a function (the function could be a loop body). We assume that
		resource handles are never created in functions, so that every resource
		tensor can be traced back to a function input.
		
		The awkward signature of this method is to make it work with both FuncGraphs
		and FunctionDefs. This is so we can recurse on function call ops without
		building the corresponding FuncGraph (note that even if a FuncGraph for a
		FunctionDef already exists, the input/output/node names may have been
		changed when the FuncGraph was serialized to the FunctionDef, which makes it
		unusable with this algorithm).
		
		Args:
		  tensor_name: the name of the resource tensor to be resolved to an input.
		  input_names: a list of the names of all inputs to the function.
		  node_defs: a dict mapping op name -> NodeDef for every op in the function.
		  functions: a dict mapping function name -> _EagerDefinedFunction.
		
		Returns:
		  The index into input_names corresponding to `tensor_name`.
	**/
	static public function resource_input_index(tensor_name:Dynamic, input_names:Dynamic, node_defs:Dynamic, functions:Dynamic):Dynamic;
	/**
		Fix higher-order tape gradients by wrapping `make_op` in a function.
		
		Args:
		  make_op: A function that takes a list of inputs and returns a list of output
		    tensors. This function should set any handle data relevant to its outputs
		    before returning.
		  inputs: A list of tensors to check for tape gradients and pass to
		    `make_op`. These should include all tensors used in `make_op`.
		
		Returns:
		  Tensors corresponding to `make_op`'s output.
	**/
	static public function run_as_function_for_tape_gradients(make_op:Dynamic, inputs:Dynamic):Dynamic;
	/**
		Returns a unique name to use for a control flow function.
		
		Args:
		  scope: A name scope string.
		  name: An identifier for this function (e.g. "true", "body").
		
		Returns:
		  A string, the name to use for the function.
	**/
	static public function unique_fn_name(scope:Dynamic, name:Dynamic):Dynamic;
	static public function unique_grad_fn_name(forward_name:Dynamic):Dynamic;
}