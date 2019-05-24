/* This file is generated, do not edit! */
package tensorflow.python.ops.cond_v2;
@:pythonImport("tensorflow.python.ops.cond_v2") extern class Cond_v2_Module {
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
		Creates an If op from the specified predicate, branch functions and inputs.
		
		Note that this modifies true_graph and false_graph to make the inputs match,
		and to output all intermediates values so they're available for the gradient
		computation.
		
		true_graph and false_graph need not have the same input types, but they must
		have the same outpute types.
		
		Args:
		  pred: boolean Tensor
		  true_graph: FuncGraph
		  false_graph: FuncGraph
		  true_inputs: a list of Tensors to be passed to true_graph as input.
		  false_inputs: a list of Tensors to be passed to false_graph as input.
		  name: the name for the If op.
		
		Returns:
		  A list of Tensors which are the outputs of the If op. Does not include added
		  intermediate outputs.
	**/
	static public function _build_cond(pred:Dynamic, true_graph:Dynamic, false_graph:Dynamic, true_inputs:Dynamic, false_inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Raises an error if true_graph and false_graph have different outputs.
	**/
	static public function _check_same_outputs(true_graph:Dynamic, false_graph:Dynamic):Dynamic;
	/**
		Creates tensors in func_graph to represent template_tensors.
		
		Args:
		  func_graph: FuncGraph.
		  template_tensors: a list of tensors in the outer graph.
		
		Returns:
		  A list of tensors in func_graph.
	**/
	static public function _create_dummy_inputs(func_graph:Dynamic, template_tensors:Dynamic):Dynamic;
	/**
		Create FakeParams for the XLA case.
	**/
	static public function _create_fakeparams(func_graph:Dynamic, template_tensors:Dynamic):Dynamic;
	/**
		Returns the FuncGraph representation of _grad_fn.
	**/
	static public function _create_grad_func(func_graph:Dynamic, grads:Dynamic, name:Dynamic):Dynamic;
	/**
		Creates none optionals in func_graph to represent template_tensors.
		
		Args:
		  func_graph: FuncGraph.
		  template_tensors: a list of tensors in func_graph.
		
		Returns:
		  A list of tensors in func_graph.
	**/
	static public function _create_none_optionals(func_graph:Dynamic, template_tensors:Dynamic):Dynamic;
	/**
		Returns `FuncGraph`s for the input op branches.
		
		Args:
		  if_op: The _If Operation.
		
		Returns:
		  A 2-tuple of the `FuncGraph`s of the then_branch and else_branch.
	**/
	static public function _get_func_graphs(if_op:Dynamic):Dynamic;
	/**
		Returns all tensors in `func_graph` that aren't inputs or outputs.
	**/
	static public function _get_intermediates(func_graph:Dynamic):Dynamic;
	static public function _get_output_shapes(true_graph_outputs:Dynamic, false_graph_outputs:Dynamic):Dynamic;
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
		Modifies true_graph and false_graph so they have the same input signature.
		
		This method reorders and/or adds parameters to true_graph and false_graph so
		they have the same input signature, and updates the 'inputs' and 'captured'
		fields of both graphs accordingly. It uses the input tensors from the outer
		graph to avoid duplicating shared arguments.
		
		Args:
		  true_graph: FuncGraph
		  false_graph: FuncGraph
		  true_inputs: a list of Tensors in the outer graph. The inputs for
		    true_graph.
		  false_inputs: a list of Tensors in the outer graph. The inputs for
		    false_graph.
		
		Returns:
		  A new list of Tensors from the outer graph that are the new inputs for both
		  true_graph and false_graph. This is a deduped version of true_inputs +
		  false_inputs.
	**/
	static public function _make_inputs_match(true_graph:Dynamic, false_graph:Dynamic, true_inputs:Dynamic, false_inputs:Dynamic):Dynamic;
	/**
		Returns new optionals lists that have matching signatures.
		
		This is done by mirroring each list in the other using none optionals.
		There is no merging of like optionals.
		
		Args:
		  true_graph: FuncGraph
		  false_graph: FuncGraph
		  true_optionals: a list of optional Tensors from true_graph
		  false_optionals: a list of optional Tensors from false_graph
		
		Returns:
		  A new list of Tensors in true_graph and a new list of Tensors in
		  false_graph. The two lists have the same number of Tensors, all of which
		  will be optionals of the same shape/type.
	**/
	static public function _make_intermediates_match(true_graph:Dynamic, false_graph:Dynamic, true_optionals:Dynamic, false_optionals:Dynamic):Dynamic;
	/**
		Like _make_intermediates_match but for the XLA case.
	**/
	static public function _make_intermediates_match_xla(true_graph:Dynamic, false_graph:Dynamic, true_intermediates:Dynamic, false_intermediates:Dynamic):Dynamic;
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
		Separates tensors appearing only in true_inputs or false_inputs, or both.
		
		Args:
		  true_inputs: list of Tensors
		  false_inputs: list of Tensors
		
		Returns:
		  Three lists of Tensors:
		    1. The tensors that appear in both true_inputs and false_inputs
		    2. The tensors that only appear in true_inputs
		    3. The tensors that only appear in false_inputs
	**/
	static public function _separate_unique_inputs(true_inputs:Dynamic, false_inputs:Dynamic):Dynamic;
	static public function _wrap_intermediates(func_graph:Dynamic, intermediates:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Like tf.cond, except emits a single If op.
	**/
	static public function cond_v2(pred:Dynamic, true_fn:Dynamic, false_fn:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}