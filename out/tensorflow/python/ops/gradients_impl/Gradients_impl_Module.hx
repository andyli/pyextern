/* This file is generated, do not edit! */
package tensorflow.python.ops.gradients_impl;
@:pythonImport("tensorflow.python.ops.gradients_impl") extern class Gradients_impl_Module {
	/**
		Constructs the Hessian of sum of `ys` with respect to `x` in `xs`.
		
		`hessians()` adds ops to the graph to output the Hessian matrix of `ys`
		with respect to `xs`.  It returns a list of `Tensor` of length `len(xs)`
		where each tensor is the Hessian of `sum(ys)`.
		
		The Hessian is a matrix of second-order partial derivatives of a scalar
		tensor (see https://en.wikipedia.org/wiki/Hessian_matrix for more details).
		
		Args:
		  ys: A `Tensor` or list of tensors to be differentiated.
		  xs: A `Tensor` or list of tensors to be used for differentiation.
		  name: Optional name to use for grouping all the gradient ops together.
		    defaults to 'hessians'.
		  colocate_gradients_with_ops: See `gradients()` documentation for details.
		  gate_gradients: See `gradients()` documentation for details.
		  aggregation_method: See `gradients()` documentation for details.
		
		Returns:
		  A list of Hessian matrices of `sum(ys)` for each `x` in `xs`.
		
		Raises:
		  LookupError: if one of the operations between `xs` and `ys` does not
		    have a registered gradient function.
	**/
	static public function HessiansV2(ys:Dynamic, xs:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?name:Dynamic):Dynamic;
	static public function IsTrainable(tensor_or_dtype:Dynamic):Dynamic;
	static public function _AccumulatorShape(inputs:Dynamic):Dynamic;
	/**
		Aggregates gradients of type `IndexedSlices` by concatenation.
	**/
	static public function _AggregateIndexedSlicesGradients(grads:Dynamic):Dynamic;
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
	static public function _HandleNestedIndexedSlices(grad:Dynamic):Dynamic;
	/**
		Return true iff op has real gradient.
	**/
	static public function _HasAnyNotNoneGrads(grads:Dynamic, op:Dynamic):Dynamic;
	/**
		Converts an IndexedSlices object `value` to a Tensor.
		
		NOTE(mrry): This function is potentially expensive.
		
		Args:
		  value: An ops.IndexedSlices object.
		  dtype: The dtype of the Tensor to be returned.
		  name: Optional name to use for the returned Tensor.
		  as_ref: True if a ref is requested.
		
		Returns:
		  A dense Tensor representing the values in the given IndexedSlices.
		
		Raises:
		  ValueError: If the IndexedSlices does not have the same dtype.
	**/
	static public function _IndexedSlicesToTensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public function _IsBackpropagatable(tensor:Dynamic):Dynamic;
	static public function _IsFunction(graph:Dynamic):Dynamic;
	static public function _IsPartitionedCall(op:Dynamic):Dynamic;
	static public var _LARGE_SPARSE_NUM_ELEMENTS : Dynamic;
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
		returned may be less than than the actual number of inputs.
		
		Args:
		  op: Operation
		  xs: list of Tensors we are differentiating w.r.t.
		
		Returns:
		  A list of tensors. The tensors may be from multiple Graph/FuncGraphs if op
		  is in a FuncGraph and has captured inputs.
	**/
	static public function _NonEagerInputs(op:Dynamic, xs:Dynamic):Dynamic;
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
		  xs: list of Tensors.
		
		Returns:
		  A tuple containing: (1) the subset of to_ops reachable from from_ops by a
		  path of zero or more backpropagatable tensors, (2) a mapping from operation
		  to the number of backprop inputs to that op, and (3) a ControlFlowState
		  object which is not None if the ops between from_ops and to_ops contain
		  control flow loops.
	**/
	static public function _PendingCount(to_ops:Dynamic, from_ops:Dynamic, colocate_gradients_with_ops:Dynamic, func_graphs:Dynamic, xs:Dynamic):Dynamic;
	/**
		Raises an error if we backprop through a loop var.
	**/
	static public function _RaiseNoGradWrtInitialLoopValError(op:Dynamic, from_ops:Dynamic, xs:Dynamic):Dynamic;
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
		  xs: list of Tensors.
		
		Returns:
		  The set of operations.
	**/
	static public function _StopOps(from_ops:Dynamic, stop_gradient_ops:Dynamic, pending_count:Dynamic, xs:Dynamic):Dynamic;
	/**
		Backprop through a function call node op given its outputs' gradients.
	**/
	static public function _SymGrad(op:Dynamic, out_grads:Dynamic):Dynamic;
	/**
		Update pending count for the inputs of op and enqueue ready ops.
	**/
	static public function _UpdatePendingAndEnqueueReady(grads:Dynamic, op:Dynamic, queue:Dynamic, pending_count:Dynamic, loop_state:Dynamic, xs:Dynamic):Dynamic;
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
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Multiply the Hessian of `ys` wrt `xs` by `v`.
		
		This is an efficient construction that uses a backprop-like approach
		to compute the product between the Hessian and another vector. The
		Hessian is usually too large to be explicitly computed or even
		represented, but this method allows us to at least multiply by it
		for the same big-O cost as backprop.
		
		Implicit Hessian-vector products are the main practical, scalable way
		of using second derivatives with neural networks. They allow us to
		do things like construct Krylov subspaces and approximate conjugate
		gradient descent.
		
		Example: if `y` = 1/2 `x`^T A `x`, then `hessian_vector_product(y,
		x, v)` will return an expression that evaluates to the same values
		as (A + A.T) `v`.
		
		Args:
		  ys: A scalar value, or a tensor or list of tensors to be summed to
		      yield a scalar.
		  xs: A list of tensors that we should construct the Hessian over.
		  v: A list of tensors, with the same shapes as xs, that we want to
		     multiply by the Hessian.
		
		Returns:
		  A list of tensors (or if the list would be length 1, a single tensor)
		  containing the product between the Hessian and `v`.
		
		Raises:
		  ValueError: `xs` and `v` have different length.
	**/
	static public function _hessian_vector_product(ys:Dynamic, xs:Dynamic, v:Dynamic):Dynamic;
	/**
		Context to colocate with `op` if `colocate_gradients_with_ops`.
	**/
	static public function _maybe_colocate_with(op:Dynamic, gradient_uid:Dynamic, colocate_gradients_with_ops:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Constructs symbolic derivatives of sum of `ys` w.r.t. x in `xs`.
		
		`ys` and `xs` are each a `Tensor` or a list of tensors.  `grad_ys`
		is a list of `Tensor`, holding the gradients received by the
		`ys`. The list must be the same length as `ys`.
		
		`gradients()` adds ops to the graph to output the derivatives of `ys` with
		respect to `xs`.  It returns a list of `Tensor` of length `len(xs)` where
		each tensor is the `sum(dy/dx)` for y in `ys`.
		
		`grad_ys` is a list of tensors of the same length as `ys` that holds
		the initial gradients for each y in `ys`.  When `grad_ys` is None,
		we fill in a tensor of '1's of the shape of y for each y in `ys`.  A
		user can provide their own initial `grad_ys` to compute the
		derivatives using a different initial gradient for each y (e.g., if
		one wanted to weight the gradient differently for each value in
		each y).
		
		`stop_gradients` is a `Tensor` or a list of tensors to be considered constant
		with respect to all `xs`. These tensors will not be backpropagated through,
		as though they had been explicitly disconnected using `stop_gradient`.  Among
		other things, this allows computation of partial derivatives as opposed to
		total derivatives. For example:
		
		```python
		a = tf.constant(0.)
		b = 2 * a
		g = tf.gradients(a + b, [a, b], stop_gradients=[a, b])
		```
		
		Here the partial derivatives `g` evaluate to `[1.0, 1.0]`, compared to the
		total derivatives `tf.gradients(a + b, [a, b])`, which take into account the
		influence of `a` on `b` and evaluate to `[3.0, 1.0]`.  Note that the above is
		equivalent to:
		
		```python
		a = tf.stop_gradient(tf.constant(0.))
		b = tf.stop_gradient(2 * a)
		g = tf.gradients(a + b, [a, b])
		```
		
		`stop_gradients` provides a way of stopping gradient after the graph has
		already been constructed, as compared to `tf.stop_gradient` which is used
		during graph construction.  When the two approaches are combined,
		backpropagation stops at both `tf.stop_gradient` nodes and nodes in
		`stop_gradients`, whichever is encountered first.
		
		All integer tensors are considered constant with respect to all `xs`, as if
		they were included in `stop_gradients`.
		
		`unconnected_gradients` determines the value returned for each x in xs if it
		is unconnected in the graph to ys. By default this is None to safeguard
		against errors. MAthematically these gradients are zero which can be requested
		using the `'zero'` option. `tf.UnconnectedGradients` provides the
		following options and behaviors:
		
		```python
		a = tf.ones([1, 2])
		b = tf.ones([3, 1])
		g1 = tf.gradients([b], [a], unnconnected_gradients='none')
		sess.run(g1)  # [None]
		
		g2 = tf.gradients([b], [a], unconnected_gradients='zero')
		sess.run(g2)  # [array([[0., 0.]], dtype=float32)]
		```
		
		
		Args:
		  ys: A `Tensor` or list of tensors to be differentiated.
		  xs: A `Tensor` or list of tensors to be used for differentiation.
		  grad_ys: Optional. A `Tensor` or list of tensors the same size as
		    `ys` and holding the gradients computed for each y in `ys`.
		  name: Optional name to use for grouping all the gradient ops together.
		    defaults to 'gradients'.
		  colocate_gradients_with_ops: If True, try colocating gradients with
		    the corresponding op.
		  gate_gradients: If True, add a tuple around the gradients returned
		    for an operations.  This avoids some race conditions.
		  aggregation_method: Specifies the method used to combine gradient terms.
		    Accepted values are constants defined in the class `AggregationMethod`.
		  stop_gradients: Optional. A `Tensor` or list of tensors not to differentiate
		    through.
		  unconnected_gradients: Optional. Specifies the gradient value returned when
		    the given input tensors are unconnected. Accepted values are constants
		    defined in the class `tf.UnconnectedGradients` and the default value is
		    `none`.
		
		Returns:
		  A list of `sum(dy/dx)` for each x in `xs`.
		
		Raises:
		  LookupError: if one of the operations between `x` and `y` does not
		    have a registered gradient function.
		  ValueError: if the arguments are invalid.
		  RuntimeError: if called in Eager mode.
	**/
	static public function gradients(ys:Dynamic, xs:Dynamic, ?grad_ys:Dynamic, ?name:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?stop_gradients:Dynamic, ?unconnected_gradients:Dynamic):Dynamic;
	/**
		Constructs symbolic derivatives of sum of `ys` w.r.t. x in `xs`.
		
		`ys` and `xs` are each a `Tensor` or a list of tensors.  `grad_ys`
		is a list of `Tensor`, holding the gradients received by the
		`ys`. The list must be the same length as `ys`.
		
		`gradients()` adds ops to the graph to output the derivatives of `ys` with
		respect to `xs`.  It returns a list of `Tensor` of length `len(xs)` where
		each tensor is the `sum(dy/dx)` for y in `ys`.
		
		`grad_ys` is a list of tensors of the same length as `ys` that holds
		the initial gradients for each y in `ys`.  When `grad_ys` is None,
		we fill in a tensor of '1's of the shape of y for each y in `ys`.  A
		user can provide their own initial `grad_ys` to compute the
		derivatives using a different initial gradient for each y (e.g., if
		one wanted to weight the gradient differently for each value in
		each y).
		
		`stop_gradients` is a `Tensor` or a list of tensors to be considered constant
		with respect to all `xs`. These tensors will not be backpropagated through,
		as though they had been explicitly disconnected using `stop_gradient`.  Among
		other things, this allows computation of partial derivatives as opposed to
		total derivatives. For example:
		
		```python
		a = tf.constant(0.)
		b = 2 * a
		g = tf.gradients(a + b, [a, b], stop_gradients=[a, b])
		```
		
		Here the partial derivatives `g` evaluate to `[1.0, 1.0]`, compared to the
		total derivatives `tf.gradients(a + b, [a, b])`, which take into account the
		influence of `a` on `b` and evaluate to `[3.0, 1.0]`.  Note that the above is
		equivalent to:
		
		```python
		a = tf.stop_gradient(tf.constant(0.))
		b = tf.stop_gradient(2 * a)
		g = tf.gradients(a + b, [a, b])
		```
		
		`stop_gradients` provides a way of stopping gradient after the graph has
		already been constructed, as compared to `tf.stop_gradient` which is used
		during graph construction.  When the two approaches are combined,
		backpropagation stops at both `tf.stop_gradient` nodes and nodes in
		`stop_gradients`, whichever is encountered first.
		
		All integer tensors are considered constant with respect to all `xs`, as if
		they were included in `stop_gradients`.
		
		`unconnected_gradients` determines the value returned for each x in xs if it
		is unconnected in the graph to ys. By default this is None to safeguard
		against errors. MAthematically these gradients are zero which can be requested
		using the `'zero'` option. `tf.UnconnectedGradients` provides the
		following options and behaviors:
		
		```python
		a = tf.ones([1, 2])
		b = tf.ones([3, 1])
		g1 = tf.gradients([b], [a], unnconnected_gradients='none')
		sess.run(g1)  # [None]
		
		g2 = tf.gradients([b], [a], unconnected_gradients='zero')
		sess.run(g2)  # [array([[0., 0.]], dtype=float32)]
		```
		
		
		Args:
		  ys: A `Tensor` or list of tensors to be differentiated.
		  xs: A `Tensor` or list of tensors to be used for differentiation.
		  grad_ys: Optional. A `Tensor` or list of tensors the same size as
		    `ys` and holding the gradients computed for each y in `ys`.
		  name: Optional name to use for grouping all the gradient ops together.
		    defaults to 'gradients'.
		  gate_gradients: If True, add a tuple around the gradients returned
		    for an operations.  This avoids some race conditions.
		  aggregation_method: Specifies the method used to combine gradient terms.
		    Accepted values are constants defined in the class `AggregationMethod`.
		  stop_gradients: Optional. A `Tensor` or list of tensors not to differentiate
		    through.
		  unconnected_gradients: Optional. Specifies the gradient value returned when
		    the given input tensors are unconnected. Accepted values are constants
		    defined in the class `tf.UnconnectedGradients` and the default value is
		    `none`.
		
		Returns:
		  A list of `sum(dy/dx)` for each x in `xs`.
		
		Raises:
		  LookupError: if one of the operations between `x` and `y` does not
		    have a registered gradient function.
		  ValueError: if the arguments are invalid.
		  RuntimeError: if called in Eager mode.
	**/
	static public function gradients_v2(ys:Dynamic, xs:Dynamic, ?grad_ys:Dynamic, ?name:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?stop_gradients:Dynamic, ?unconnected_gradients:Dynamic):Dynamic;
	/**
		Constructs the Hessian of sum of `ys` with respect to `x` in `xs`.
		
		`hessians()` adds ops to the graph to output the Hessian matrix of `ys`
		with respect to `xs`.  It returns a list of `Tensor` of length `len(xs)`
		where each tensor is the Hessian of `sum(ys)`.
		
		The Hessian is a matrix of second-order partial derivatives of a scalar
		tensor (see https://en.wikipedia.org/wiki/Hessian_matrix for more details).
		
		Args:
		  ys: A `Tensor` or list of tensors to be differentiated.
		  xs: A `Tensor` or list of tensors to be used for differentiation.
		  name: Optional name to use for grouping all the gradient ops together.
		    defaults to 'hessians'.
		  colocate_gradients_with_ops: See `gradients()` documentation for details.
		  gate_gradients: See `gradients()` documentation for details.
		  aggregation_method: See `gradients()` documentation for details.
		
		Returns:
		  A list of Hessian matrices of `sum(ys)` for each `x` in `xs`.
		
		Raises:
		  LookupError: if one of the operations between `xs` and `ys` does not
		    have a registered gradient function.
	**/
	static public function hessians(ys:Dynamic, xs:Dynamic, ?name:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}