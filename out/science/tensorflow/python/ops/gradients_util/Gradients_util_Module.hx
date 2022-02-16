/* This file is generated, do not edit! */
package tensorflow.python.ops.gradients_util;
@:pythonImport("tensorflow.python.ops.gradients_util") extern class Gradients_util_Module {
	static public var POSSIBLE_GRADIENT_TYPES_FIRST_ORDER : Dynamic;
	static public var POSSIBLE_GRADIENT_TYPES_HIGHER_ORDER : Dynamic;
	static public var POSSIBLE_GRADIENT_TYPES_NONE : Dynamic;
	/**
		Determines whether and how `args` may require tape gradients.
	**/
	static public function PossibleTapeGradientTypes(tensors:Dynamic):Dynamic;
	static public function _AccumulatorShape(inputs:Dynamic):Dynamic;
	/**
		Get the aggregated gradients for op.
		
		Args:
		  grads: The map of memoized gradients.
		  op: The op to get gradients for.
		  gradient_uid: A unique identifier within the graph indicating
		    which invocation of gradients is being executed. Used to cluster
		    ops for compilation.
		  loop_state: An object for maintaining the state of the while loops in the
		              graph. It is of type ControlFlowState. None if the graph
		              contains no while loops.
		  aggregation_method: Specifies the method used to combine gradient terms.
		    Accepted values are constants defined in the class `AggregationMethod`.
		
		Returns:
		  A list of gradients, one per each output of `op`. If the gradients
		    for a particular output is a list, this function aggregates it
		    before returning.
		
		Raises:
		  TypeError: if the incoming grads are not Tensors or IndexedSlices.
		  ValueError: if the arguments are invalid.
	**/
	static public function _AggregatedGrads(grads:Dynamic, op:Dynamic, gradient_uid:Dynamic, loop_state:Dynamic, ?aggregation_method:Dynamic):Dynamic;
	static public function _AsList(x:Dynamic):Dynamic;
	static public function _Captures(func_graph:Dynamic):Dynamic;
	/**
		Returns the consumers of t, crossing closure boundaries where necessary.
		
		Args:
		  t: Tensor
		  func_graphs: a list of FuncGraphs that may have captured t.
		
		Returns:
		  A list of tensors. The tensors will be from the current graph and/or
		  func_graphs.
	**/
	static public function _Consumers(t:Dynamic, func_graphs:Dynamic):Dynamic;
	/**
		Fill in default values for grad_ys.
		
		Args:
		  grad_ys: List of gradients, can contain None.
		  ys: List of tensors.
		  colocate_gradients_with_ops: If True, try colocating gradients with
		    the corresponding op.
		  gradient_uid: A unique identifier within the graph indicating
		    which invocation of gradients is being executed. Used to cluster
		    ops for compilation.
		
		Returns:
		  A list of gradients to use, without None.
		
		Raises:
		  ValueError: If sizes of gradients and inputs don't match
		  TypeError: If type of any gradient is not valid for its input.
	**/
	static public function _DefaultGradYs(grad_ys:Dynamic, ys:Dynamic, colocate_gradients_with_ops:Dynamic, ?gradient_uid:Dynamic):Dynamic;
	/**
		Gets gradient for tensor "t".
	**/
	static public function _GetGrad(grads:Dynamic, t:Dynamic, unconnected_gradients:Dynamic):Dynamic;
	/**
		Gets all gradients for op.
	**/
	static public function _GetGrads(grads:Dynamic, op:Dynamic):Dynamic;
	/**
		Implementation of gradients().
	**/
	static public function _GradientsHelper(ys:Dynamic, xs:Dynamic, ?grad_ys:Dynamic, ?name:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?stop_gradients:Dynamic, ?unconnected_gradients:Dynamic, ?src_graph:Dynamic):Dynamic;
	/**
		Return true iff op has real gradient.
	**/
	static public function _HasAnyNotNoneGrads(grads:Dynamic, op:Dynamic):Dynamic;
	/**
		Returns the inputs of op, crossing closure boundaries where necessary.
		
		Args:
		  op: Operation
		  xs_set: ObjectIdentitySet of Tensors we are differentiating w.r.t.
		
		Returns:
		  A list of tensors. The tensors may be from multiple Graph/FuncGraphs if op
		  is in a FuncGraph and has captured inputs.
	**/
	static public function _Inputs(op:Dynamic, xs_set:Dynamic):Dynamic;
	static public function _IsFunction(graph:Dynamic):Dynamic;
	static public function _IsPartitionedCall(op:Dynamic):Dynamic;
	/**
		Log the in and out grads of an op.
	**/
	static public function _LogOpGradients(op:Dynamic, out_grads:Dynamic, in_grads:Dynamic):Dynamic;
	/**
		Mark all ops reached from "from_ops".
		
		Args:
		  from_ops: list of Operations.
		  reached_ops: set of Operations.
		  func_graphs: list of FuncGraphs. This method will traverse through
		    these functions if they capture from_ops or any reachable ops.
	**/
	static public function _MarkReachedOps(from_ops:Dynamic, reached_ops:Dynamic, func_graphs:Dynamic):Dynamic;
	/**
		If t is a captured value placeholder, returns the original captured value.
		
		Args:
		  t: Tensor
		
		Returns:
		  A tensor, potentially from a different Graph/FuncGraph.
	**/
	static public function _MaybeCaptured(t:Dynamic):Dynamic;
	/**
		Compile the calculation in grad_fn if op was marked as compiled.
	**/
	static public function _MaybeCompile(scope:Dynamic, op:Dynamic, func:Dynamic, grad_fn:Dynamic):Dynamic;
	/**
		Adds tensors from potentially multiple devices.
	**/
	static public function _MultiDeviceAddN(tensor_list:Dynamic, gradient_uid:Dynamic):Dynamic;
	/**
		Returns the inputs of op, crossing closure boundaries where necessary.
		
		Does not return any captured EagerTensors, i.e., the number of tensors
		returned may be less than the actual number of inputs.
		
		Args:
		  op: Operation
		  xs_set: ObjectIdentitySet of Tensors we are differentiating w.r.t.
		
		Returns:
		  A list of tensors. The tensors may be from multiple Graph/FuncGraphs if op
		  is in a FuncGraph and has captured inputs.
	**/
	static public function _NonEagerInputs(op:Dynamic, xs_set:Dynamic):Dynamic;
	/**
		Initialize the pending count for ops between two lists of Operations.
		
		'pending_count[op]' indicates the number of backprop inputs
		to this operation.
		
		Args:
		  to_ops: list of Operations.
		  from_ops: list of Operations.
		  colocate_gradients_with_ops: Python bool.  See docstring of gradients().
		  func_graphs: list of FuncGraphs. This method will traverse through
		    these functions if they capture from_ops or any reachable ops. This is
		    useful if to_ops occur in a function and from_ops are in an outer function
		    or graph.
		  xs_set: ObjectIdentitySet of Tensors.
		
		Returns:
		  A tuple containing: (1) the subset of to_ops reachable from from_ops by a
		  path of zero or more backpropagatable tensors, (2) a mapping from operation
		  to the number of backprop inputs to that op, and (3) a ControlFlowState
		  object which is not None if the ops between from_ops and to_ops contain
		  control flow loops.
	**/
	static public function _PendingCount(to_ops:Dynamic, from_ops:Dynamic, colocate_gradients_with_ops:Dynamic, func_graphs:Dynamic, xs_set:Dynamic):Dynamic;
	/**
		Raises an error if we backprop through a loop var.
	**/
	static public function _RaiseNoGradWrtInitialLoopValError(op:Dynamic, from_ops:Dynamic, xs_set:Dynamic):Dynamic;
	/**
		Sets gradient "grad" in "grads" for tensor "t".
	**/
	static public function _SetGrad(grads:Dynamic, t:Dynamic, grad:Dynamic):Dynamic;
	/**
		The set of ops that terminate the gradient computation.
		
		This computes the frontier of the forward graph *before* which backprop
		should stop. Operations in the returned set will not be differentiated.
		This set is defined as the subset of `from_ops` containing ops that have
		no predecessor in `from_ops`. `pending_count` is the result of
		`_PendingCount(xs, from_ops)`. An 'op' has predecessors in `from_ops`
		iff pending_count[op] > 0.
		
		In addition, none of `stop_gradient_ops` will be differentiated.
		
		Args:
		  from_ops: list of Operations.
		  stop_gradient_ops: list of Operations never to backprop through.
		  pending_count: mapping from operation to number of backprop inputs.
		  xs_set: ObjectIdentitySet of Tensors.
		
		Returns:
		  The set of operations.
	**/
	static public function _StopOps(from_ops:Dynamic, stop_gradient_ops:Dynamic, pending_count:Dynamic, xs_set:Dynamic):Dynamic;
	/**
		Backprop through a function call node op given its outputs' gradients.
	**/
	static public function _SymGrad(op:Dynamic, out_grads:Dynamic):Dynamic;
	/**
		Update pending count for the inputs of op and enqueue ready ops.
	**/
	static public function _UpdatePendingAndEnqueueReady(grads:Dynamic, op:Dynamic, queue:Dynamic, pending_count:Dynamic, loop_state:Dynamic, xs_set:Dynamic):Dynamic;
	/**
		Verify that gradients are valid in number and type.
		
		Args:
		  grads: List of generated gradients.
		  op: Operation for which the gradients where generated.
		
		Raises:
		  ValueError: if sizes of gradients and inputs don't match.
		  TypeError: if type of any gradient is not valid for its input.
	**/
	static public function _VerifyGeneratedGradients(grads:Dynamic, op:Dynamic):Dynamic;
	static public function _ZerosLike(t:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Context to colocate with `op` if `colocate_gradients_with_ops`.
	**/
	static public function _maybe_colocate_with(op:Dynamic, gradient_uid:Dynamic, colocate_gradients_with_ops:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}