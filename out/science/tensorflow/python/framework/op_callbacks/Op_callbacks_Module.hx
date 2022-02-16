/* This file is generated, do not edit! */
package tensorflow.python.framework.op_callbacks;
@:pythonImport("tensorflow.python.framework.op_callbacks") extern class Op_callbacks_Module {
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
		Add a thread-local callback that intercepts op execution and op creation.
		
		The `callback_fn` will be invoked immediately after any of the three types
		of events:
		  - The execution of an TensorFlow operation ("op" for short hereafter)
		    under eager mode,
		  - The execution of a FuncGraph under eager mode,
		  - The creation of an op during graph construction (e.g., in
		    @tf.function-decorated Python functions).
		
		Known limitations:
		  1. Under graph mode, overriding the output tensors of control-flow ops,
		     including "If", "StatelessIf" and "While", may cause errors
		     (b/139668453). Overriding other tensors in a graph consisting of such
		     control-flow ops is okay.
		  2. Under eager mode, calling eager ops from the callback function itself
		     may lead to recursion stack overflow. This can be prevented by
		     returning from the callback function immediately on encountering the
		     op type involved (b/140334369).
		
		Args:
		  callback_fn: A callback_fn that has the following signature:
		    def callback_fn(op_type,
		                    inputs,
		                    attrs,
		                    outputs,
		                    op_name=None,
		                    graph=None):
		      # op_type: The type of the op, as a string. E.g., "MatMul".
		      #          For the special case of FuncGraph execution, op_type
		      #          takes the name of the graph name, e.g.,
		      #          "__inference_my_func_24".
		      # inputs: (`tuple` of `Tensor`s) Input tensors to the op or the
		      #         FuncGraph.
		      #         - In eager execution, these are `EagerTensor`s.
		      #         - In graph construction, these are non-eager `Tensor`s
		      #           that form the inputs to the just-created op.
		      # attrs: The attributes of the op or FuncGraph of which the execution
		      #        or creation caused the current invocation of the callback.
		      #        This is applicable to both eager- and graph-based execution,
		      #        as well as graph construction.
		      #        This is a tuple of alternating attribute keys and attribute
		      #        values. E.g., `('adjoint_a', False, 'adjoint_b', False)`.
		      # outputs: (`tuple of `Tensor`s) Output tensors from the op or
		      #          FuncGraph.
		      #          In eager execution, these are `EagerTensor`s.
		      #          In graph construction, these are non-eager `Tensor`s that
		      #          are the outputs of the just-created op.
		      # op_name: Name of the op.
		      #          - If the current invocation of the callback is due to the
		      #            eager execution of an op or FuncGraph, this will be
		      #            `None`, as op names are meaningless in eager execution.
		      #          - In graph construction, this is the name of the op, e.g.,
		      #            "MatMul_2".
		      # graph: The graph that the op belongs to (if any).
		      #        - In eager execution of an op or FuncGraph, this is `None`.
		      #        - In graph construction, this is the op's enclosing graph
		      #          as a `tf.Graph` object.
		      #
		      # Return values:
		      #   This callback function is expected to return `None` or
		      #   a `list` or `tuple` of `Tensor`s with its length matching
		      #   `len(outputs)`, in the order that corresponds to that of the
		      #   `outputs` argument.
		      #   If the return value is `None`, downstream execution or graph
		      #   construction will be unaffected.
		      #   However, if the return value is a `list` or `tuple` of `Tensor`s,
		      #   - In eager execution, these returned `Tensor`s should be
		      #     `EagerTensor`s. Their values will replace the original values of
		      #     `outputs` for downstream eager execution. (*Not implemented yet*).
		      #   - In graph construction, these returned `Tensor`s should be
		      #     non-eager `Tensor`s. Their values will replace the original
		      #     `outputs` for downstream graph construction.
		
		Raises:
		  ValueEror: If `callback_fn` is `None` or not callable.
	**/
	static public function add_op_callback(callback_fn:Dynamic):Dynamic;
	/**
		Clear all op callbacks registered in the current thread.
	**/
	static public function clear_op_callbacks():Dynamic;
	static public var division : Dynamic;
	/**
		Invoke the callbacks that exist in the current scope (if any).
		
		If no callbacks are present in the current scope, this method returns
		immediately.
		
		Args:
		  op_type: Type of the operation (e.g., "MatMul").
		  inputs: Input tensors to the op. These are `EagerTensor`s in the case of
		    eager execution of ops or `FuncGraph`s, and are non-eager `Tensor`s in the
		    case of graph construction.
		  attrs: Attributes of the op, as `tuple` of alternating keys and values.
		  outputs: Output tensors from the op. These are `EagerTensor`s in the case of
		    eager execution and are non-eager `Tensor`s in the case of graph
		    construction.
		  op_name: Name of the op. Applicable if and only if this method is invoked
		    due to the graph construction of an op or the eager execution of a
		    `FuncGraph`.
		  graph: The graph involved (if any).
		    - In the case if the eager execution of an op or FuncGraph, this is
		      `None`.
		    - In the case of the graph construction of an op, this is the `tf.Graph`
		      object being built.
		
		Returns:
		  `None`, or a `list` or `tuple` of output tenors that will override the
		  original (input) `outputs`.
	**/
	static public function invoke_op_callbacks(op_type:Dynamic, inputs:Dynamic, attrs:Dynamic, outputs:Dynamic, ?op_name:Dynamic, ?graph:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Remove an already-added op callback.
		
		Args:
		  op_callback: The op callback to be removed.
		
		Raises:
		  KeyError: If `op_callback` has not been registered using `add_op_callback()`
		    before.
	**/
	static public function remove_op_callback(op_callback:Dynamic):Dynamic;
	/**
		Determine if op callbacks are present and should be invoked.
		
		Returns:
		  A thread-local result (boolean) indicating whether any op callback(s) exist
		  and should be invoked.
	**/
	static public function should_invoke_op_callbacks():Dynamic;
}