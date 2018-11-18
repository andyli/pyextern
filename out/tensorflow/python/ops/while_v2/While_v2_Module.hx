/* This file is generated, do not edit! */
package tensorflow.python.ops.while_v2;
@:pythonImport("tensorflow.python.ops.while_v2") extern class While_v2_Module {
	/**
		The gradient of a While op produced by while_loop.
	**/
	static public function _WhileGrad(op:Dynamic, ?grads:python.VarArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _copy_handle_data(src_tensors:Dynamic, tgt_tensors:Dynamic):Dynamic;
	/**
		Builds and returns the gradient FuncGraph of `func_graph` and its args.
		
		The returned grad_func_graph must be called with the returned
		args + grad_func_graph.captures.
		
		Args:
		  func_graph: FuncGraph for the forward body function.
		  grads: The incoming grads for `func_graph`'s outputs.
		  name: Name of the returned gradient function.
		  while_op: The forward While op.
		
		Returns:
		  2-tuple of (grad_func_graph, args).
	**/
	static public function _create_grad_func(func_graph:Dynamic, grads:Dynamic, name:Dynamic, while_op:Dynamic):Dynamic;
	/**
		Returns TensorList if any containing accumulated values of tensor.
		
		We try to find a pattern of the form:
		
		   input_tl   tensor
		      \        /
		  (TensorListPushBack)
		          |
		      output_tl
		
		which satisfies the following conditions:
		
		1. input_tl must be in tensor.graph.inputs.
		2. output_tl or Identity(output_tl) must be in tensor.graph.outputs.
		3. tensor.graph.input_index(input_tl) == tensor.graph.output_index(output_t).
		
		output_tl or Identity(output_tl) (whichever is in tensor.graph.outputs) is
		returned if such a pattern is found else None is returned.
		
		Args:
		  tensor: The Tensor to be accumulated.
		
		Returns:
		  A variant tensor in the same graph as `tensor` or None if no accumulator is
		  found.
	**/
	static public function _get_accumulator(tensor:Dynamic):Dynamic;
	/**
		Returns `FuncGraph` for the while body.
		
		Args:
		  while_op: The While Operation.
		
		Returns:
		  `FuncGraph` for the while body.
	**/
	static public function _get_body_graph(while_op:Dynamic):Dynamic;
	/**
		Returns all tensors in `func_graph` that should be accumulated.
	**/
	static public function _get_intermediates(func_graph:Dynamic):Dynamic;
	static public function _get_tensor_convertible_shape(shape:Dynamic):Dynamic;
	/**
		Returns a name that is unique in the root graph of `func_graph`.
		
		Args:
		  name: String to uniquify.
		
		Returns:
		  A string.
	**/
	static public function _get_unique_name(name:Dynamic):Dynamic;
	/**
		Computes the gradient of `func_graph` in the current graph.
		
		This function builds the gradient graph of the corresponding forward-pass
		`func_graph` by differentiating `func_graph`'s outputs w.r.t. its inputs.
		
		Args:
		  func_graph: function.FuncGraph. The corresponding forward-pass function.
		  args: The input arguments. args[0] - Loop counter args[1] - Total number of
		    iterations.
		    args[2:] - Incoming gradients for `func_graph.outputs`.
		
		Returns:
		  The output gradient Tensors.
	**/
	static public function _grad_fn(func_graph:Dynamic, args:Dynamic):Dynamic;
	static public function _graph_name(graph:Dynamic):Dynamic;
	/**
		Sets the flag to enable lowering on the `While` op if necessary.
		
		Lowering allows while_v2 to avoid some of the limitations of Functions,
		allowing users to specify devices & colocation inside of while_v2
		branches, and enabling non-strict evaluation & partial pruning of while_v2
		branches. This brings while_v2 closer to feature parity with
		tf.while_loop.
		
		However, we do not lower `While` in the XLA context because it is easier
		for XLA to apply its own optimizations when dealing with un-lowered
		`While` operators than with low-level control flow primitives.
		
		Args:
		  op: The While op.
	**/
	static public function _maybe_set_lowering_attr(op:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Like tf.while_loop, except emits a single While op.
	**/
	static public function while_loop(cond:Dynamic, body:Dynamic, loop_vars:Dynamic, ?name:Dynamic):Dynamic;
}