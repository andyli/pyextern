/* This file is generated, do not edit! */
package tensorflow.python.ops.cond_v2_impl;
@:pythonImport("tensorflow.python.ops.cond_v2_impl") extern class Cond_v2_impl_Module {
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
		Raises an error if true_graph and false_graph have different outputs.
	**/
	static public function _check_same_outputs(true_graph:Dynamic, false_graph:Dynamic):Dynamic;
	/**
		Creates tensors in func_graph to represent template_tensors.
		
		Args:
		  func_graph: function.FuncGraph.
		  template_tensors: a list of tensors in the outer graph.
		
		Returns:
		  A list of tensors in func_graph.
	**/
	static public function _create_dummy_params(func_graph:Dynamic, template_tensors:Dynamic):Dynamic;
	/**
		Returns the FuncGraph representation of _grad_fn.
	**/
	static public function _create_grad_func(func_graph:Dynamic, grads:Dynamic, name:Dynamic):Dynamic;
	/**
		Converts func_graph to a TF_Function and adds it to the current graph.
		
		Args:
		  func_graph: function.FuncGraph
		
		Returns:
		  The name of the new TF_Function.
	**/
	static public function _create_new_tf_function(func_graph:Dynamic):Dynamic;
	static public var _function_def_to_graph : Dynamic;
	/**
		Returns `FuncGraph`s for the input op branches.
		
		Args:
		  if_op: The _If Operation.
		
		Returns:
		  A 2-tuple of the `FuncGraph`s of the then_branch and else_branch.
	**/
	static public function _get_func_graphs(if_op:Dynamic):Dynamic;
	/**
		Returns a unique name to use for the grad function of `func_graph`.
		
		Ensures this name is unique in the entire hierarchy.
		
		Args:
		  func_graph: The FuncGraph.
		
		Returns:
		  A string, the name to use for the gradient function.
	**/
	static public function _get_grad_fn_name(func_graph:Dynamic):Dynamic;
	/**
		Returns all tensors in `func_graph` that aren't inputs or outputs.
	**/
	static public function _get_intermediates(func_graph:Dynamic):Dynamic;
	/**
		The gradient function for each conditional branch.
		
		This function builds the gradient graph of the corresponding forward-pass
		conditional branch in `func_graph`. This is done by differentiating
		func_graph's outputs w.r.t. its inputs.
		
		Args:
		  func_graph: function.FuncGraph. The corresponding forward-pass function.
		  grads: The list of input gradient Tensors.
		
		Returns:
		  The output gradient Tensors.
	**/
	static public function _grad_fn(func_graph:Dynamic, grads:Dynamic):Dynamic;
	static public function _is_ancestor(graph:Dynamic, maybe_ancestor:Dynamic):Dynamic;
	/**
		Modifies true_graph and false_graph so they have the same input signature.
		
		This method reorders and/or adds parameters to true_graph and false_graph so
		they have the same input signature, and updates the 'inputs' and 'captured'
		fields of both graphs accordingly. It uses the input tensors from the outer
		graph to avoid duplicating shared arguments.
		
		Args:
		  true_graph: function.FuncGraph
		  false_graph: function.FuncGraph
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
		Returns new param lists that have matching signatures.
		
		This is done by mirroring each param list in the other using dummy params.
		There is no merging of params.
		
		Args:
		  true_graph: function.FuncGraph
		  false_graph: function.FuncGraph
		  true_params: a list of Tensors from true_graph
		  false_params: a list of Tensors from false_graph
		
		Returns:
		  A new list of Tensors in true_graph and a new list of Tensors in
		  false_graph. The two lists have the same number of Tensors, with matching
		  types and shapes across the lists.
	**/
	static public function _pad_params(true_graph:Dynamic, false_graph:Dynamic, true_params:Dynamic, false_params:Dynamic):Dynamic;
	/**
		Returns the tensors to pass as inputs to `grad_graph`.
		
		The `grad_graph` may have external references to
		1. Its outer graph containing the input gradients. These references are kept
		   as is.
		2. Tensors in the forward pass graph. These tensors may not be "live"
		   when the gradient is being computed. We replace such references by their
		   corresponding tensor in the least common ancestor graph of `grad_graph` and
		   `cond_graph`. Since we export intermediate tensors for all branch
		   functions, this is always possible.
		
		Args:
		  cond_graph: function.FuncGraph. The forward-pass function.
		  grad_graph: function.FuncGraph. The gradients function.
		
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
	static public var absolute_import : Dynamic;
	/**
		Like tf.cond, except emits a single If op.
	**/
	static public function cond_v2(pred:Dynamic, true_fn:Dynamic, false_fn:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}