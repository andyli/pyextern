/* This file is generated, do not edit! */
package tensorflow.python.ops.cond_v2;
@:pythonImport("tensorflow.python.ops.cond_v2") extern class Cond_v2_Module {
	static public var _CASE : Dynamic;
	static public var _COND : Dynamic;
	/**
		The gradient of a Case op produced by tf.switch_case.
	**/
	static public function _CaseGrad(op:Dynamic, ?grads:python.VarArgs<Dynamic>):Dynamic;
	/**
		The gradient of an If op produced by cond_v2.
	**/
	static public function _IfGrad(op:Dynamic, ?grads:python.VarArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates an `Case` op from `branch_index`, branch graphs and inputs.
		
		Note that this modifies `branch_graphs` to make the inputs match, and to
		output all intermediates values so they're available for the gradient
		computation.
		
		`branch_graphs` need not have the same input types, but they must
		have the same output types.
		
		Args:
		  branch_index: integer Tensor
		  branch_graphs: List of FuncGraph
		  branch_inputs: List of lists of Tensors to be passed to corresponding
		    branch_graph as input.
		  name: the name for the Case op.
		  lower_using_switch_merge: Lower this op using switch merge ops (optional).
		
		Returns:
		  A list of Tensors which are the outputs of the Case op. Does not include
		  added intermediate outputs.
	**/
	static public function _build_case(branch_index:Dynamic, branch_graphs:Dynamic, branch_inputs:Dynamic, ?name:Dynamic, ?lower_using_switch_merge:Dynamic):Dynamic;
	/**
		Creates an If op from the specified predicate, branch functions and inputs.
		
		Note that this modifies true_graph and false_graph to make the inputs match,
		and to output all intermediates values so they're available for the gradient
		computation.
		
		true_graph and false_graph need not have the same input types, but they must
		have the same output types.
		
		Args:
		  pred: boolean Tensor
		  true_graph: FuncGraph
		  false_graph: FuncGraph
		  true_inputs: a list of Tensors to be passed to true_graph as input.
		  false_inputs: a list of Tensors to be passed to false_graph as input.
		  building_gradient: Whether this is a gradient If op.
		  name: the name for the If op.
		
		Returns:
		  A list of Tensors which are the outputs of the If op. Does not include added
		  intermediate outputs.
	**/
	static public function _build_cond(pred:Dynamic, true_graph:Dynamic, false_graph:Dynamic, true_inputs:Dynamic, false_inputs:Dynamic, building_gradient:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Raises an error if `graphs` have different outputs.
	**/
	static public function _check_same_outputs(op_type:Dynamic, graphs:Dynamic):Dynamic;
	/**
		Combines shapes in handle data and sets metadata on `external_tensors`.
	**/
	static public function _copy_handle_data(external_tensors:Dynamic, ?branch_graph_outputs:python.VarArgs<Dynamic>):Dynamic;
	/**
		Creates tensors in func_graph to represent template_tensors.
		
		Args:
		  func_graph: FuncGraph.
		  template_tensor: a tensor in the outer graph.
		
		Returns:
		  A tensor in func_graph.
	**/
	static public function _create_dummy_input(func_graph:Dynamic, template_tensor:Dynamic):Dynamic;
	/**
		Create FakeParams for the XLA case.
	**/
	static public function _create_fakeparams(func_graph:Dynamic, template_tensors:Dynamic):Dynamic;
	/**
		Returns the FuncGraph representation of _grad_fn.
	**/
	static public function _create_grad_func(func_graph:Dynamic, grads:Dynamic, name:Dynamic):Dynamic;
	/**
		Creates `n` `None` optionals in func_graph.
		
		Args:
		  func_graph: FuncGraph.
		  n: `int` the number of `None` optionals to make.
		
		Returns:
		  A list of tensors in func_graph.
	**/
	static public function _create_none_optionals(func_graph:Dynamic, n:Dynamic):Dynamic;
	/**
		Creates zeros for None out grads if at least one branch has non-None grad.
		
		Args:
		  forward_graphs: List of forward FuncGraphs.
		  grad_graphs: List of grad FuncGraphs.
	**/
	static public function _create_zeros_for_none_grads(forward_graphs:Dynamic, grad_graphs:Dynamic):Dynamic;
	/**
		Returns intermediate tensors of `func_graph` for gradient computation.
	**/
	static public function _get_intermediates(func_graph:Dynamic):Dynamic;
	static public function _get_output_shapes(?branch_graph_outputs:python.VarArgs<Dynamic>):Dynamic;
	/**
		The gradient function for each conditional branch.
		
		This function builds the gradient graph of the corresponding forward-pass
		conditional branch in `func_graph`. This is done by differentiating
		func_graph's outputs w.r.t. its inputs.
		
		Args:
		  func_graph: FuncGraph. The corresponding forward-pass function.
		  grads: The list of input gradient Tensors.
		
		Returns:
		  The output gradient Tensors.
	**/
	static public function _grad_fn(func_graph:Dynamic, grads:Dynamic):Dynamic;
	/**
		Match dtype of IndexedSlices.indices in outputs of branch_graphs.
	**/
	static public function _make_indexed_slices_indices_types_match(op_type:Dynamic, branch_graphs:Dynamic):Dynamic;
	/**
		Modifies branch_graphs so they have the same input signature.
		
		This method reorders and/or adds parameters to each graph in branch_graphs so
		they have the same input signature, and updates the 'inputs' and 'captured'
		fields of each graph accordingly. It uses the input tensors from the outer
		graph to avoid duplicating shared arguments.
		
		Args:
		  branch_graphs: a `list` of `FuncGraph`
		  branch_inputs: a `list` of `list`s of `Tensor`s in the outer graph. The
		    inputs for the corresponding graph in `branch_graphs`.
		
		Returns:
		  A new list of Tensors from the outer graph that are the new inputs for each
		  branch_graph. This is a deduped version of `sum(branch_inputs)`.
	**/
	static public function _make_inputs_match(branch_graphs:Dynamic, branch_inputs:Dynamic):Dynamic;
	/**
		Returns new optionals lists that have matching signatures.
		
		This is done by mirroring each list in the other using none optionals.
		There is no merging of like optionals.
		
		Args:
		  branch_graphs: `list` of `FuncGraph`.
		  branch_optionals: `list` of `list`s of optional `Tensor`s from other
		    branch_graphs
		
		Returns:
		  A `list` of `list`s of `Tensor`s for each branch_graph. Each list has the
		  same number of `Tensor`s, all of which will be optionals of the same
		  shape/type.
	**/
	static public function _make_intermediates_match(branch_graphs:Dynamic, branch_optionals:Dynamic):Dynamic;
	/**
		Like _make_intermediates_match but for the XLA case.
	**/
	static public function _make_intermediates_match_xla(branch_graphs:Dynamic, branch_intermediates:Dynamic):Dynamic;
	/**
		Modifies each branch_graph's outputs to have the same output signature.
		
		Currently the only transformation implemented is turning a Tensor into an
		equivalent IndexedSlices if the other branch returns an IndexedSlices.
		Updates branch_graph.{outputs,structured_outputs} for each branch_graph in
		branch_graphs.
		
		Args:
		  op_type: _COND or _CASE
		  branch_graphs: `list` of `FuncGraph`
		
		Raises:
		  TypeError: if a set of outputs cannot be rewritten.
	**/
	static public function _make_output_composite_tensors_match(op_type:Dynamic, branch_graphs:Dynamic):Dynamic;
	/**
		Packs the outputs of the gradient If/Case op.
		
		The branch functions may contain None's in the list of `structured_outputs`.
		`op_outputs` has those outputs missing. So we need to add those Nones to the
		list of `op_outputs` and then pack it in the same structure as
		`structured_outputs`.
		
		Args:
		  structured_outputs: structured_outputs from one of the branch functions.
		  op_outputs: List of output tensors of the op.
		
		Returns:
		  `op_outputs` packed like `structured_outputs`.
	**/
	static public function _pack_sequence_as(structured_outputs:Dynamic, op_outputs:Dynamic):Dynamic;
	/**
		Returns the tensors to pass as inputs to `grad_graph`.
		
		The `grad_graph` may have external references to
		1. Its outer graph containing the input gradients. These references are kept
		   as is.
		2. Tensors in the forward pass graph. These tensors may not be "live"
		   when the gradient is being computed. We replace such references by their
		   corresponding tensor in `cond_graph.outer_graph`. In the case of nested
		   control flow or functions, the gradient logic handling
		   `grad_graph.outer_graph` will make sure the tensor from
		   `cond_graph.outer_graph` is also correctly captured.
		
		Args:
		  cond_graph: FuncGraph. The forward-pass function.
		  grad_graph: FuncGraph. The gradients function.
		
		Returns:
		  A list of inputs tensors to be passed to grad_graph.
	**/
	static public function _resolve_grad_inputs(cond_graph:Dynamic, grad_graph:Dynamic):Dynamic;
	/**
		Sets the list of resource inputs which are read-only.
		
		This is used by AutomaticControlDependencies.
		
		Args:
		  op: If or Case Operation.
		  branch_graphs: List of branch FuncGraphs.
	**/
	static public function _set_read_only_resource_inputs_attr(op:Dynamic, branch_graphs:Dynamic):Dynamic;
	static public function _wrap_intermediates(func_graph:Dynamic, intermediates:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Like tf.cond, except emits a single If op.
	**/
	static public function cond_v2(pred:Dynamic, true_fn:Dynamic, false_fn:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns `FuncGraph`s for the input op branches.
		
		Args:
		  op: The If or Case Operation.
		
		Returns:
		  A tuple of the `FuncGraph`s of the then_branch and else_branch (all branches
		  for Case).
	**/
	static public function get_func_graphs(op:Dynamic):Dynamic;
	/**
		Like conv_v2, except emits a Case op instead of an If.
	**/
	static public function indexed_case(branch_index:Dynamic, branch_fns:Dynamic, ?name:Dynamic, ?lower_using_switch_merge:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Verify that a branch's tensor is not accessed in another branch fn.
	**/
	static public function verify_captures(op_type:Dynamic, branch_graphs:Dynamic):Dynamic;
}