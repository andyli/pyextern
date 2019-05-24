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
	static public function _build_signature(loop_vars:Dynamic, shape_invariants:Dynamic):Dynamic;
	/**
		Checks the number of inputs/outputs of `cond_graph` and `body_graph`.
	**/
	static public function _check_num_inputs_outputs(cond_graph:Dynamic, body_graph:Dynamic, num_flattened_loop_vars:Dynamic):Dynamic;
	static public function _check_shapes_compat(output_tensors:Dynamic, shape_invariants:Dynamic, input_tensors:Dynamic):Dynamic;
	static public function _copy_handle_data(src_tensors:Dynamic, tgt_tensors:Dynamic):Dynamic;
	/**
		Builds and returns the gradient FuncGraph of `func_graph` and its args.
		
		The returned grad_func_graph must be called with the returned
		args + grad_func_graph.captures.
		
		Args:
		  ys: A `Tensor` or list of tensors to be differentiated.
		  xs: A `Tensor` or list of tensors to be used for differentiation.
		  grads: The incoming grads for `ys`.
		  cond_graph: FuncGraph for the forward cond function.
		  body_graph: FuncGraph for the forward body function.
		  name: Name of the returned gradient function.
		  while_op: The forward While op.
		  max_iters: the maximum number of iterations, or None if no limit.
		
		Returns:
		  2-tuple of (grad_func_graph, args).
	**/
	static public function _create_grad_func(ys:Dynamic, xs:Dynamic, grads:Dynamic, cond_graph:Dynamic, body_graph:Dynamic, name:Dynamic, while_op:Dynamic, max_iters:Dynamic):Dynamic;
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
		Returns `FuncGraph` for the given function attribute.
		
		Args:
		  while_op: The While Operation.
		  func_attr_name: string
		
		Returns:
		  `FuncGraph`
	**/
	static public function _get_graph(while_op:Dynamic, func_attr_name:Dynamic):Dynamic;
	/**
		Computes the gradient of `func_graph` in the current graph.
		
		This function builds the gradient graph of the corresponding forward-pass
		`func_graph` by differentiating `func_graph`'s outputs w.r.t. its inputs.
		
		Args:
		  ys: A `Tensor` or list of tensors to be differentiated.
		  xs: A `Tensor` or list of tensors to be used for differentiation.
		  args: The input arguments.
		    args[0] - Loop counter
		    args[1] - Total number of iterations.
		    args[2:] - Incoming gradients for `ys`.
		  func_graph: function.FuncGraph. The corresponding forward-pass function.
		
		Returns:
		  The output gradient Tensors.
	**/
	static public function _grad_fn(ys:Dynamic, xs:Dynamic, args:Dynamic, func_graph:Dynamic):Dynamic;
	static public function _graph_name(graph:Dynamic):Dynamic;
	/**
		Returns whether the current context is inside an XLA context.
	**/
	static public function _is_in_xla_context():Dynamic;
	/**
		Returns whether the given tensor is trainable.
	**/
	static public function _is_trainable(tensor:Dynamic):Dynamic;
	static public function _maybe_set_maximum_iterations_attr(op:Dynamic, maximum_iterations:Dynamic):Dynamic;
	/**
		Like `nest.pack_sequence_as` but also replaces flows with TensorArrays.
	**/
	static public function _pack_sequence_as(structure_with_tas:Dynamic, loop_vars:Dynamic):Dynamic;
	/**
		Returns the tensors to pass as captured inputs to `body_grad_graph`.
		
		`body_grad_graph` may have external references to:
		1. Its outer graph containing the input gradients. These are left as-is.
		2. Accumulators captured from the forward-pass graph. These should have been
		   added as `while_op` outputs after the gradient graph was built. We replace
		   these with the corresponding output of `while_op`, i.e. a tensor in
		   `body_graph.outer_graph`. In the case of nested control flow or functions,
		   the gradient logic handling `body_grad_graph.outer_graph` will make sure
		   the tensor from `body_graph.outer_graph` is also correctly captured.
		
		Args:
		  body_graph: FuncGraph. The forward-pass body function.
		  body_grad_graph: FuncGraph. The body gradients function.
		  while_op: The forward-pass While Operation calling `body_graph`.
		
		Returns:
		  A list of input tensors to be passed as the captured inputs to
		    `body_grad_graph`.
	**/
	static public function _resolve_grad_captures(body_graph:Dynamic, body_grad_graph:Dynamic, while_op:Dynamic):Dynamic;
	static public function _tensor_array_to_flow(loop_vars:Dynamic):Dynamic;
	/**
		Checks that `maximum_iterations` is valid.
		
		In XLA context, `maximum_iterations` is required and must be statically
		inferable, e.g. output tensor of a Const node.
		
		Args:
		  maximum_iterations: The maximum_iterations passed to while_loop.
		
		Returns:
		  A scalar valued tensor of type int32 or None.
		
		Raises:
		  ValueError: If `maximum_iterations` is invalid.
	**/
	static public function _validate_and_convert_to_tensor(maximum_iterations:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Like tf.while_loop, except emits a single While op.
	**/
	static public function while_loop(cond:Dynamic, body:Dynamic, loop_vars:Dynamic, ?shape_invariants:Dynamic, ?maximum_iterations:Dynamic, ?name:Dynamic, ?return_same_structure:Dynamic):Dynamic;
}