/* This file is generated, do not edit! */
package tensorflow.python.ops.control_flow_util_v2;
@:pythonImport("tensorflow.python.ops.control_flow_util_v2") extern class Control_flow_util_v2_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
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
		Returns if the current graph is, or is nested in, a defun.
	**/
	static public function in_defun():Dynamic;
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
		
		Args:
		  op: An `If` or `While` Operation.
	**/
	static public function maybe_set_lowering_attr(op:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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