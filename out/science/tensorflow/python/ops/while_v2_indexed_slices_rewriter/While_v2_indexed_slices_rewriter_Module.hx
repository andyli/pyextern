/* This file is generated, do not edit! */
package tensorflow.python.ops.while_v2_indexed_slices_rewriter;
@:pythonImport("tensorflow.python.ops.while_v2_indexed_slices_rewriter") extern class While_v2_indexed_slices_rewriter_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates an IndexedSlices to pass as input to the while grad function.
		
		Args:
		  grad_output_slices: IndexedSlices. The corresponding while grad function
		    output.
		  forward_input: Tensor. The corresponding input to the forward while op.
		
		Returns:
		  Zeros IndexedSlices, created in current Graph.
	**/
	static public function _create_grad_indexed_slices_init(grad_output_slices:Dynamic, forward_input:Dynamic):Dynamic;
	static public function _flatten(arg:Dynamic):Dynamic;
	/**
		Returns index of first occurence of `t`, raises ValueError if not found.
	**/
	static public function _get_tensor_index_in_iterable(iterable:Dynamic, t:Dynamic):Dynamic;
	/**
		Creates a new version of old_output_slices with new_input_slices as input.
		
		This method assumes that old_output_slices.{values,indices} are produced by
		concatenating the incoming gradient Tensor input with the IndexedSlices
		produced by the gradient computation of the while body. See
		backprop.aggregate_indexed_slices_gradients for where these concats are
		constructed. We build new concats that use new_input_slices instead of the
		original Tensor input.
		
		Args:
		  old_output_slices: original IndexedSlices output of while gradient.
		  new_input_slices: new IndexedSlices to use as input to while gradient.
		
		Returns:
		  A new IndexedSlices to replace old_output_slices.
	**/
	static public function _rewrite_grad_indexed_slices_output(old_output_slices:Dynamic, new_input_slices:Dynamic):Dynamic;
	/**
		Rewrites grad_output_slices's corresponding input to be an IndexedSlices.
		
		This rewrite requires that forward_input was captured in the forward loop,
		i.e. is not a user-specified loop variable. This is important because the
		rewrite assumes that forward_input is passed through to its corresponding
		output unchanged. This assumption is used in _rewrite_input_as_indexed_slices,
		which depends on the exact gradient structure produced by the input's fanout.
		
		This can yield a more efficient computation than using
		_rewrite_output_as_tensor, since it preserves the IndexedSlices structure
		instead of converting the IndexedSlices to a dense Tensor.
		
		Args:
		  body_grad_graph: _WhileBodyGradFuncGraph.
		  grad_output_slices: IndexedSlices output of body_grad_graph.
		  forward_input: the corresponding Tensor input to the forward loop.
		  loop_vars: list of Tensors. The inputs to body_grad_graph.
		
		Returns:
		  The new loop_vars to pass to body_grad_graph.
	**/
	static public function _rewrite_input_as_indexed_slices(body_grad_graph:Dynamic, grad_output_slices:Dynamic, forward_input:Dynamic, loop_vars:Dynamic):Dynamic;
	/**
		Rewrites grad_output_slices to be a Tensor output.
		
		Args:
		  body_grad_graph: _WhileBodyGradFuncGraph.
		  grad_output_slices: IndexedSlices output of body_grad_graph.
	**/
	static public function _rewrite_output_as_tensor(body_grad_graph:Dynamic, grad_output_slices:Dynamic):Dynamic;
	/**
		Updates graph with new IndexedSlices input/output.
		
		Updates graph's metadata to output the gradient computation defined by
		init_slices, input_slices, and output_slices, instead of outputting
		old_output_slices. Also returns a new version of loop_vars with init_slices
		replacing the old input.
		
		Args:
		  graph: _WhileBodyGradFuncGraph.
		  loop_vars: the inputs to graph.
		  init_slices: the new IndexedSlices to use as input to graph.
		  input_slices: the new IndexedSlices in graph that should be fed by
		    init_slices.
		  output_slices: the new IndexedSlices in graph that should be the
		    corresponding output to input_slices.
		  old_output_slices: the IndexedSlices in graph that are currently being
		    output.
		
		Returns:
		  New loop_vars to pass to graph.
	**/
	static public function _update_indexed_slices_param(graph:Dynamic, loop_vars:Dynamic, init_slices:Dynamic, input_slices:Dynamic, output_slices:Dynamic, old_output_slices:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Handles special case of IndexedSlices returned from while gradient.
		
		Some gradient functions return IndexedSlices instead of a Tensor (e.g. the
		gradient of Gather ops). When this happens in the gradient of a while body,
		the resulting gradient body function will have mismatched inputs and outputs,
		since the input is a single Tensor, but the IndexedSlices gets unnested into
		three output Tensors.
		
		This function fixes this by rewriting the gradient body to have three inputs
		to match the three outputs, i.e., it effectively converts the input Tensor
		into an input IndexedSlices. It also returns new `loop_vars` to reflect the
		new inputs.
		
		Args:
		  grads: the input gradient Tensors to the while gradient computation.
		  body_grad_graph: _WhileBodyGradFuncGraph.
		  loop_vars: list of Tensors. The inputs to body_grad_graph.
		  forward_inputs: list of Tensors. The (flat) inputs to the forward-pass While
		    op.
		
		Returns:
		  The new loop_vars to pass to body_grad_graph.
	**/
	static public function rewrite_grad_indexed_slices(grads:Dynamic, body_grad_graph:Dynamic, loop_vars:Dynamic, forward_inputs:Dynamic):Dynamic;
}