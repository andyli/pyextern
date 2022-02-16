/* This file is generated, do not edit! */
package tensorflow.python.ops.control_flow_ops;
@:pythonImport("tensorflow.python.ops.control_flow_ops") extern class Control_flow_ops_Module {
	/**
		Raise a exception to abort the process when called.
		
		If exit_without_error is true, the process will exit normally,
		otherwise it will exit with a SIGABORT signal.
		
		Returns nothing but an exception.
		
		Args:
		  error_msg: An optional `string`. Defaults to `""`.
		    A string which is the message associated with the exception.
		  exit_without_error: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function Abort(?error_msg:Dynamic, ?exit_without_error:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Asserts that the given condition is true.
		
		If `condition` evaluates to false, print the list of tensors in `data`.
		`summarize` determines how many entries of the tensors to print.
		
		Args:
		  condition: The condition to evaluate.
		  data: The tensors to print out when condition is false.
		  summarize: Print this many entries of each tensor.
		  name: A name for this operation (optional).
		
		Returns:
		  assert_op: An `Operation` that, when executed, raises a
		  `tf.errors.InvalidArgumentError` if `condition` is not true.
		  @compatibility(eager)
		  returns None
		  @end_compatibility
		
		Raises:
		  @compatibility(TF1)
		  When in TF V1 mode (that is, outside `tf.function`) Assert needs a control
		  dependency on the output to ensure the assertion executes:
		
		```python
		# Ensure maximum element of x is smaller or equal to 1
		assert_op = tf.Assert(tf.less_equal(tf.reduce_max(x), 1.), [x])
		with tf.control_dependencies([assert_op]):
		  ... code using x ...
		```
		
		  @end_compatibility
		
		
		Note: The output of this function should be used. If it is not, a warning will be logged or an error may be raised. To mark the output as used, call its .mark_used() method.
	**/
	static public function Assert(condition:Dynamic, data:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Does nothing. Serves as a control trigger for scheduling.
		
		Only useful as a placeholder for control edges.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function ControlTrigger(?name:Dynamic):Dynamic;
	/**
		Creates or finds a child frame, and makes `data` available to the child frame.
		
		This op is used together with `Exit` to create loops in the graph.
		The unique `frame_name` is used by the `Executor` to identify frames. If
		`is_constant` is true, `output` is a constant in the child frame; otherwise
		it may be changed in the child frame. At most `parallel_iterations` iterations
		are run in parallel in the child frame.
		
		Args:
		  data: A `Tensor`. The tensor to be made available to the child frame.
		  frame_name: A `string`. The name of the child frame.
		  is_constant: An optional `bool`. Defaults to `False`.
		    If true, the output is constant within the child frame.
		  parallel_iterations: An optional `int`. Defaults to `10`.
		    The number of iterations allowed to run in parallel.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function Enter(data:Dynamic, frame_name:Dynamic, ?is_constant:Dynamic, ?parallel_iterations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Exits the current frame to its parent frame.
		
		Exit makes its input `data` available to the parent frame.
		
		Args:
		  data: A `Tensor`. The tensor to be made available to the parent frame.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function Exit(data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Forwards the input to the output.
		
		This operator represents the loop termination condition used by the
		"pivot" switches of a loop.
		
		Args:
		  input: A `Tensor` of type `bool`.
		    A boolean scalar, representing the branch predicate of the Switch op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function LoopCond(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Forwards the value of an available tensor from `inputs` to `output`.
		
		`Merge` waits for at least one of the tensors in `inputs` to become available.
		It is usually combined with `Switch` to implement branching.
		
		`Merge` forwards the first tensor to become available to `output`, and sets
		`value_index` to its index in `inputs`.
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with the same type.
		    The input tensors, exactly one of which will become available.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, value_index).
		
		  output: A `Tensor`. Has the same type as `inputs`.
		  value_index: A `Tensor` of type `int32`.
	**/
	static public function Merge(inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Makes its input available to the next iteration.
		
		Args:
		  data: A `Tensor`. The tensor to be made available to the next iteration.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function NextIteration(data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Does nothing. Only useful as a placeholder for control edges.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function NoOp(?name:Dynamic):Dynamic;
	/**
		Creates or finds a child frame, and makes `data` available to the child frame.
		
		The unique `frame_name` is used by the `Executor` to identify frames. If
		`is_constant` is true, `output` is a constant in the child frame; otherwise
		it may be changed in the child frame. At most `parallel_iterations` iterations
		are run in parallel in the child frame.
		
		Args:
		  data: A mutable `Tensor`.
		    The tensor to be made available to the child frame.
		  frame_name: A `string`. The name of the child frame.
		  is_constant: An optional `bool`. Defaults to `False`.
		    If true, the output is constant within the child frame.
		  parallel_iterations: An optional `int`. Defaults to `10`.
		    The number of iterations allowed to run in parallel.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `data`.
	**/
	static public function RefEnter(data:Dynamic, frame_name:Dynamic, ?is_constant:Dynamic, ?parallel_iterations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Exits the current frame to its parent frame.
		
		Exit makes its input `data` available to the parent frame.
		
		Args:
		  data: A mutable `Tensor`.
		    The tensor to be made available to the parent frame.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `data`.
	**/
	static public function RefExit(data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Forwards the value of an available tensor from `inputs` to `output`.
		
		`Merge` waits for at least one of the tensors in `inputs` to become available.
		It is usually combined with `Switch` to implement branching.
		
		`Merge` forwards the first tensor for become available to `output`, and sets
		`value_index` to its index in `inputs`.
		
		Args:
		  inputs: A list of at least 1 mutable `Tensor` objects with the same type.
		    The input tensors, exactly one of which will become available.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, value_index).
		
		  output: A mutable `Tensor`. Has the same type as `inputs`.
		  value_index: A `Tensor` of type `int32`.
	**/
	static public function RefMerge(inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Makes its input available to the next iteration.
		
		Args:
		  data: A mutable `Tensor`.
		    The tensor to be made available to the next iteration.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `data`.
	**/
	static public function RefNextIteration(data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Forwards the `index`th element of `inputs` to `output`.
		
		Args:
		  index: A `Tensor` of type `int32`.
		    A scalar that determines the input that gets selected.
		  inputs: A list of at least 1 mutable `Tensor` objects with the same type.
		    A list of ref tensors, one of which will be forwarded to `output`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `inputs`.
	**/
	static public function RefSelect(index:Dynamic, inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Forwards the ref tensor `data` to the output port determined by `pred`.
		
		If `pred` is true, the `data` input is forwarded to `output_true`. Otherwise,
		the data goes to `output_false`.
		
		See also `Switch` and `Merge`.
		
		Args:
		  data: A mutable `Tensor`.
		    The ref tensor to be forwarded to the appropriate output.
		  pred: A `Tensor` of type `bool`.
		    A scalar that specifies which output port will receive data.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_false, output_true).
		
		  output_false: A mutable `Tensor`. Has the same type as `data`.
		  output_true: A mutable `Tensor`. Has the same type as `data`.
	**/
	static public function RefSwitch(data:Dynamic, pred:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Forwards `data` to the output port determined by `pred`.
		
		If `pred` is true, the `data` input is forwarded to `output_true`. Otherwise,
		the data goes to `output_false`.
		
		See also `RefSwitch` and `Merge`.
		
		Args:
		  data: A `Tensor`. The tensor to be forwarded to the appropriate output.
		  pred: A `Tensor` of type `bool`.
		    A scalar that specifies which output port will receive data.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_false, output_true).
		
		  output_false: A `Tensor`. Has the same type as `data`.
		  output_true: A `Tensor`. Has the same type as `data`.
	**/
	static public function Switch(data:Dynamic, pred:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Add NextIteration and back edge from v to m.
	**/
	static public function _AddNextAndBackEdge(m:Dynamic, v:Dynamic, ?enforce_shape_invariant:Dynamic):Dynamic;
	/**
		Return x as a list of Tensors or IndexedSlices.
		
		For entries of `x` that are Operations, this returns an Identity of `p`
		with a dependency on the operation.
		
		Args:
		  x: A Tensor/IndexedSlices/Operation or a list or tuple of them.
		  p: A Tensor to return for entries in `x` that are Operations.
		
		Returns:
		  A list of Tensors or IndexedSlices.
	**/
	static public function _AsTensorList(x:Dynamic, p:Dynamic):Dynamic;
	static public function _CheckResults(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Check if the shapes of the loops variables are invariants.
		
		Args:
		  merge_var: The tensor representing the initial values of the loop
		    variables.
		  next_var: The tensor representing the values of the loop variables
		    after one loop iteration.
		
		Raises:
		  ValueError: If any tensor in `merge_var` has a more specific shape than
		    its corresponding tensor in `next_var`.
	**/
	static public function _EnforceShapeInvariant(merge_var:Dynamic, next_var:Dynamic):Dynamic;
	/**
		Creates or finds a child frame, and makes `tensor` available to it.
		
		The unique `frame_name` is used by the `Executor` to identify frames. If
		`is_constant` is true, `tensor` is a constant in the child frame; otherwise
		it may be changed in the child frame. At most `parallel_iterations`
		iterations are run in parallel in the child frame.
		
		Args:
		  tensor: The tensor to be made available to the child frame.
		  frame_name: The name of the child frame.
		  is_constant: If true, the output is constant within the child frame.
		  parallel_iterations: The number of iterations allowed to run in parallel.
		  use_ref: If true, use ref_enter if tensor is of ref type.
		  use_input_shape: If true, set the result's shape based on tensor's shape.
		  name: A name for this operation (optional).
		
		Returns:
		  The same tensor as `tensor`.
	**/
	static public function _Enter(tensor:Dynamic, frame_name:Dynamic, ?is_constant:Dynamic, ?parallel_iterations:Dynamic, ?use_ref:Dynamic, ?use_input_shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function _GroupControlDeps(dev:Dynamic, deps:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a tensor with the same shape and contents as the input tensor.
		
		Args:
		  tensor: A Tensor.
		  name: A name for this operation (optional).
		
		Returns:
		  A Tensor with the same type and value as the input Tensor.
	**/
	static public function _Identity(tensor:Dynamic, ?name:Dynamic):Dynamic;
	static public function _NextIteration(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Set the shapes of the tensors in `enter_vars` to `shapes`.
		
		Args:
		  input_vars: A list of tensors that are inputs to `enter_vars`.
		  enter_vars: A list of tensors whose shapes will be set.
		  shapes: A (possibly nested) list of shapes.
		
		Raises:
		  ValueError: If any tensor in `enter_vars` has a less specific shape
		    than its corresponding shape in `shapes`.
	**/
	static public function _SetShapeInvariants(input_vars:Dynamic, enter_vars:Dynamic, shapes:Dynamic):Dynamic;
	static public function _ShapeLessThanOrEqual(shape1:Dynamic, shape2:Dynamic):Dynamic;
	/**
		Forwards `data` to an output determined by `pred`.
		
		If `pred` is false, the `data` input is forwarded to the first output.
		Otherwise, the data goes to the second output.
		
		This op handles `Tensor`s and `IndexedSlices`.
		
		Args:
		  data: The tensor to be forwarded to the appropriate output.
		  pred: A scalar that specifies which output port will receive data.
		  name: A name for this operation (optional).
		
		Returns:
		  `(output_false, output_true)`: If `pred` is true, data will be forwarded to
		  `output_true`, otherwise it goes to `output_false`.
		
		Raises:
		  TypeError: if data is not a Tensor or IndexedSlices
	**/
	static public function _SwitchRefOrTensor(data:Dynamic, pred:Dynamic, ?name:Dynamic):Dynamic;
	static public function _UnpackIfSingleton(res:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns an Assert op that checks that at most n predicates are True.
		
		Args:
		  predicates: list of bool scalar tensors.
		  n: maximum number of true predicates allowed.
		  msg: Error message.
	**/
	static public function _assert_at_most_n_true(predicates:Dynamic, n:Dynamic, msg:Dynamic):Dynamic;
	/**
		Creates default action for a list of actions and their predicates.
		
		It uses the input actions to select an arbitrary as default and makes sure
		that corresponding predicates have valid values.
		
		Args:
		  predicates: a list of bool scalar tensors
		  actions: a list of callable objects which return tensors.
		
		Returns:
		  a callable
	**/
	static public function _case_create_default_action(predicates:Dynamic, actions:Dynamic):Dynamic;
	/**
		Implementation of case that allows for different cond functions.
		
		Args:
		  cond_fn: method that has signature and semantics of `cond` above.
		  pred_fn_pairs: Dict or list of pairs of a boolean scalar tensor, and a
		    callable which returns a list of tensors.
		  default: Optional callable that returns a list of tensors.
		  exclusive: True iff at most one predicate is allowed to evaluate to `True`.
		  name: A name for this operation (optional).
		  allow_python_preds: if true, pred_fn_pairs may contain Python bools in
		    addition to boolean Tensors
		  **cond_kwargs: keyword arguments that will be passed to `cond_fn`.
		
		Returns:
		  The tensors returned by the first pair whose predicate evaluated to True, or
		  those returned by `default` if none does.
		
		Raises:
		  TypeError: If `pred_fn_pairs` is not a list/dictionary.
		  TypeError: If `pred_fn_pairs` is a list but does not contain 2-tuples.
		  TypeError: If `fns[i]` is not callable for any i, or `default` is not
		             callable.
	**/
	static public function _case_helper(cond_fn:Dynamic, pred_fn_pairs:Dynamic, _default:Dynamic, exclusive:Dynamic, name:Dynamic, ?allow_python_preds:Dynamic, ?cond_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Verifies input arguments for the case function.
		
		Args:
		  pred_fn_pairs: Dict or list of pairs of a boolean scalar tensor, and a
		    callable which returns a list of tensors.
		  exclusive: True iff at most one predicate is allowed to evaluate to `True`.
		  name: A name for the case operation.
		  allow_python_preds: if true, pred_fn_pairs may contain Python bools in
		    addition to boolean Tensors
		
		Raises:
		  TypeError: If `pred_fn_pairs` is not a list/dictionary.
		  TypeError: If `pred_fn_pairs` is a list but does not contain 2-tuples.
		  TypeError: If `fns[i]` is not callable for any i, or `default` is not
		             callable.
		
		Returns:
		  a tuple <list of scalar bool tensors, list of callables>.
	**/
	static public function _case_verify_and_canonicalize_args(pred_fn_pairs:Dynamic, exclusive:Dynamic, name:Dynamic, allow_python_preds:Dynamic):Dynamic;
	/**
		Cast IndexedSlice.indices from int32 to int64 where necessary.
		
		If `a` and `b` are both IndexedSlices, and their indices have different
		dtypes, then cast both their dtypes to `int64` (modifies `a` and `b`
		in-place).  Otherwise, does nothing.
		
		Args:
		  a: A value, which may be an IndexedSlices.
		  b: A value, which may be an IndexedSlices.
	**/
	static public function _cast_indexed_slice_indices(a:Dynamic, b:Dynamic):Dynamic;
	static public function _convert_flows_to_tensorarrays(tensors_or_tensorarrays:Dynamic, tensors_or_flows:Dynamic):Dynamic;
	static public function _convert_tensorarray_to_flow(tensor_or_tensor_array:Dynamic):Dynamic;
	/**
		Special cases for `cond` when executing eagerly.
	**/
	static public function _eager_cond_implementation(pred:Dynamic, true_fn:Dynamic, false_fn:Dynamic, strict:Dynamic, name:Dynamic):Dynamic;
	/**
		Returns shape invariant(s) for the given variable.
		
		Args:
		  var: The tensor whose shape is described.
		  shape: The shape invariant for the tensor.  If not specified, then a default
		    shape invariant for `var` is returned.
		
		Returns:
		  `TensorShape` or `list` of `TensorShape`: The shape invariant for `var` (if
		  it is a `Tensor`), or the shape invariants for the components that comprise
		  `var` (if it is a `CompositeTensor`).
	**/
	static public function _get_shape_invariant(_var:Dynamic, ?shape:Dynamic):Dynamic;
	/**
		Implementation of case that emits the n-way indexed Case op.
		
		Args:
		  branch_fns: Dict or list of pairs of a boolean scalar tensor, and a
		    callable which returns a list of tensors.
		  default: Optional callable that returns a list of tensors.
		  branch_index: Optional int `Tensor`, which selects for the corresponding
		    pred_fn_pair.
		  name: A name for this operation (optional).
		  lower_using_switch_merge: Lower this op using switch merge ops (optional).
		
		Returns:
		  The tensors returned by the pair whose key matched branch_index, or
		  those returned by `default` if none does.
		
		Raises:
		  TypeError: If `branch_fns` is not a list/dictionary.
		  TypeError: If `branch_fns` is a list but does not contain 2-tuples or
		             callables.
		  TypeError: If `fns[i]` is not callable for any i, or `default` is not
		             callable.
	**/
	static public function _indexed_case_helper(branch_fns:Dynamic, _default:Dynamic, branch_index:Dynamic, name:Dynamic, ?lower_using_switch_merge:Dynamic):Dynamic;
	/**
		Verifies input arguments for the case function.
		
		Args:
		  branch_fns: Dict or list of pairs of an `int` and a callable which
		    returns a list of tensors.
		  default: Optional callable that returns a list of tensors.
		  branch_index: Optional int `Tensor`, which selects for the corresponding
		    pred_fn_pair.
		
		Raises:
		  TypeError: If `branch_fns` is not a list/dictionary.
		  TypeError: If `branch_fns` is a list but does not contain 2-tuples or
		             callables.
		  TypeError: If `fns[i]` is not callable for any i, or `default` is not
		             callable.
		
		Returns:
		  branch_fns: validated list of callables for each branch (default last).
	**/
	static public function _indexed_case_verify_and_canonicalize_args(branch_fns:Dynamic, _default:Dynamic, branch_index:Dynamic):Dynamic;
	/**
		Returns the shape of t or the variable it points to.
	**/
	static public function _resource_safe_shape(t:Dynamic):Dynamic;
	/**
		Converts a shape invariant to a TypeSpec.
		
		Args:
		  var: The tensor whose shape is described by the shape invariant.
		  shape: A `TypeSpec` or `TensorShape`.  If `shape` is already a `TypeSpec`,
		    then it is simply returned as-is.
		
		Returns:
		  A `TypeSpec` for `var`, consistent with the given shape.
	**/
	static public function _shape_invariant_to_type_spec(_var:Dynamic, shape:Dynamic):Dynamic;
	/**
		Returns a summarized string representation of eager `tensor`.
		
		Args:
		  tensor: EagerTensor to summarize
		  summarize: Include these many first elements of `array`
	**/
	static public function _summarize_eager(tensor:Dynamic, ?summarize:Dynamic):Dynamic;
	/**
		Raise a exception to abort the process when called.
		
		If exit_without_error is true, the process will exit normally,
		otherwise it will exit with a SIGABORT signal.
		
		Returns nothing but an exception.
		
		Args:
		  error_msg: An optional `string`. Defaults to `""`.
		    A string which is the message associated with the exception.
		  exit_without_error: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function abort(?error_msg:Dynamic, ?exit_without_error:Dynamic, ?name:Dynamic):Dynamic;
	static public function abort_eager_fallback(error_msg:Dynamic, exit_without_error:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Create a case operation.
		
		See also `tf.switch_case`.
		
		The `pred_fn_pairs` parameter is a dict or list of pairs of size N.
		Each pair contains a boolean scalar tensor and a python callable that
		creates the tensors to be returned if the boolean evaluates to True.
		`default` is a callable generating a list of tensors. All the callables
		in `pred_fn_pairs` as well as `default` (if provided) should return the same
		number and types of tensors.
		
		If `exclusive==True`, all predicates are evaluated, and an exception is
		thrown if more than one of the predicates evaluates to `True`.
		If `exclusive==False`, execution stops at the first predicate which
		evaluates to True, and the tensors generated by the corresponding function
		are returned immediately. If none of the predicates evaluate to True, this
		operation returns the tensors generated by `default`.
		
		`tf.case` supports nested structures as implemented in
		`tf.nest`. All of the callables must return the same (possibly nested) value
		structure of lists, tuples, and/or named tuples. Singleton lists and tuples
		form the only exceptions to this: when returned by a callable, they are
		implicitly unpacked to single values. This behavior is disabled by passing
		`strict=True`.
		
		If an unordered dictionary is used for `pred_fn_pairs`, the order of the
		conditional tests is not guaranteed. However, the order is guaranteed to be
		deterministic, so that variables created in conditional branches are created
		in fixed order across runs.
		
		@compatibility(eager)
		Unordered dictionaries are not supported in eager mode when `exclusive=False`.
		Use a list of tuples instead.
		@end_compatibility
		
		
		**Example 1:**
		
		Pseudocode:
		
		```
		if (x < y) return 17;
		else return 23;
		```
		
		Expressions:
		
		```python
		f1 = lambda: tf.constant(17)
		f2 = lambda: tf.constant(23)
		r = tf.case([(tf.less(x, y), f1)], default=f2)
		```
		
		**Example 2:**
		
		Pseudocode:
		
		```
		if (x < y && x > z) raise OpError("Only one predicate may evaluate to True");
		if (x < y) return 17;
		else if (x > z) return 23;
		else return -1;
		```
		
		Expressions:
		
		```python
		def f1(): return tf.constant(17)
		def f2(): return tf.constant(23)
		def f3(): return tf.constant(-1)
		r = tf.case({tf.less(x, y): f1, tf.greater(x, z): f2},
		         default=f3, exclusive=True)
		```
		
		Args:
		  pred_fn_pairs: Dict or list of pairs of a boolean scalar tensor and a
		    callable which returns a list of tensors.
		  default: Optional callable that returns a list of tensors.
		  exclusive: True iff at most one predicate is allowed to evaluate to `True`.
		  strict: A boolean that enables/disables 'strict' mode; see above.
		  name: A name for this operation (optional).
		
		Returns:
		  The tensors returned by the first pair whose predicate evaluated to True, or
		  those returned by `default` if none does.
		
		Raises:
		  TypeError: If `pred_fn_pairs` is not a list/dictionary.
		  TypeError: If `pred_fn_pairs` is a list but does not contain 2-tuples.
		  TypeError: If `fns[i]` is not callable for any i, or `default` is not
		             callable.
	**/
	@:native("case")
	static public function _case(pred_fn_pairs:Dynamic, ?_default:Dynamic, ?exclusive:Dynamic, ?strict:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create a case operation.
		
		See also `tf.switch_case`.
		
		The `pred_fn_pairs` parameter is a list of pairs of size N.
		Each pair contains a boolean scalar tensor and a python callable that
		creates the tensors to be returned if the boolean evaluates to True.
		`default` is a callable generating a list of tensors. All the callables
		in `pred_fn_pairs` as well as `default` (if provided) should return the same
		number and types of tensors.
		
		If `exclusive==True`, all predicates are evaluated, and an exception is
		thrown if more than one of the predicates evaluates to `True`.
		If `exclusive==False`, execution stops at the first predicate which
		evaluates to True, and the tensors generated by the corresponding function
		are returned immediately. If none of the predicates evaluate to True, this
		operation returns the tensors generated by `default`.
		
		`tf.case` supports nested structures as implemented in
		`tf.nest`. All of the callables must return the same (possibly nested) value
		structure of lists, tuples, and/or named tuples. Singleton lists and tuples
		form the only exceptions to this: when returned by a callable, they are
		implicitly unpacked to single values. This behavior is disabled by passing
		`strict=True`.
		
		@compatibility(v2)
		`pred_fn_pairs` could be a dictionary in v1. However, tf.Tensor and
		tf.Variable are no longer hashable in v2, so cannot be used as a key for a
		dictionary.  Please use a list or a tuple instead.
		@end_compatibility
		
		
		**Example 1:**
		
		Pseudocode:
		
		```
		if (x < y) return 17;
		else return 23;
		```
		
		Expressions:
		
		```python
		f1 = lambda: tf.constant(17)
		f2 = lambda: tf.constant(23)
		r = tf.case([(tf.less(x, y), f1)], default=f2)
		```
		
		**Example 2:**
		
		Pseudocode:
		
		```
		if (x < y && x > z) raise OpError("Only one predicate may evaluate to True");
		if (x < y) return 17;
		else if (x > z) return 23;
		else return -1;
		```
		
		Expressions:
		
		```python
		def f1(): return tf.constant(17)
		def f2(): return tf.constant(23)
		def f3(): return tf.constant(-1)
		r = tf.case([(tf.less(x, y), f1), (tf.greater(x, z), f2)],
		         default=f3, exclusive=True)
		```
		
		Args:
		  pred_fn_pairs: List of pairs of a boolean scalar tensor and a callable which
		    returns a list of tensors.
		  default: Optional callable that returns a list of tensors.
		  exclusive: True iff at most one predicate is allowed to evaluate to `True`.
		  strict: A boolean that enables/disables 'strict' mode; see above.
		  name: A name for this operation (optional).
		
		Returns:
		  The tensors returned by the first pair whose predicate evaluated to True, or
		  those returned by `default` if none does.
		
		Raises:
		  TypeError: If `pred_fn_pairs` is not a list/tuple.
		  TypeError: If `pred_fn_pairs` is a list but does not contain 2-tuples.
		  TypeError: If `fns[i]` is not callable for any i, or `default` is not
		             callable.
	**/
	static public function case_v2(pred_fn_pairs:Dynamic, ?_default:Dynamic, ?exclusive:Dynamic, ?strict:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return `true_fn()` if the predicate `pred` is true else `false_fn()`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(fn1, fn2)`. They will be removed in a future version.
		Instructions for updating:
		fn1/fn2 are deprecated in favor of the true_fn/false_fn arguments.
		
		`true_fn` and `false_fn` both return lists of output tensors. `true_fn` and
		`false_fn` must have the same non-zero number and type of outputs.
		
		**WARNING**: Any Tensors or Operations created outside of `true_fn` and
		`false_fn` will be executed regardless of which branch is selected at runtime.
		
		Although this behavior is consistent with the dataflow model of TensorFlow,
		it has frequently surprised users who expected a lazier semantics.
		Consider the following simple program:
		
		```python
		z = tf.multiply(a, b)
		result = tf.cond(x < y, lambda: tf.add(x, z), lambda: tf.square(y))
		```
		
		If `x < y`, the `tf.add` operation will be executed and `tf.square`
		operation will not be executed. Since `z` is needed for at least one
		branch of the `cond`, the `tf.multiply` operation is always executed,
		unconditionally.
		
		Note that `cond` calls `true_fn` and `false_fn` *exactly once* (inside the
		call to `cond`, and not at all during `Session.run()`). `cond`
		stitches together the graph fragments created during the `true_fn` and
		`false_fn` calls with some additional graph nodes to ensure that the right
		branch gets executed depending on the value of `pred`.
		
		`tf.cond` supports nested structures as implemented in
		`tensorflow.python.util.nest`. Both `true_fn` and `false_fn` must return the
		same (possibly nested) value structure of lists, tuples, and/or named tuples.
		Singleton lists and tuples form the only exceptions to this: when returned by
		`true_fn` and/or `false_fn`, they are implicitly unpacked to single values.
		This behavior is disabled by passing `strict=True`.
		
		Args:
		  pred: A scalar determining whether to return the result of `true_fn` or
		    `false_fn`.
		  true_fn: The callable to be performed if pred is true.
		  false_fn: The callable to be performed if pred is false.
		  strict: A boolean that enables/disables 'strict' mode; see above.
		  name: Optional name prefix for the returned tensors.
		
		Returns:
		  Tensors returned by the call to either `true_fn` or `false_fn`. If the
		  callables return a singleton list, the element is extracted from the list.
		
		Raises:
		  TypeError: if `true_fn` or `false_fn` is not callable.
		  ValueError: if `true_fn` and `false_fn` do not return the same number of
		    tensors, or return tensors of different types.
		
		Example:
		
		```python
		x = tf.constant(2)
		y = tf.constant(5)
		def f1(): return tf.multiply(x, 17)
		def f2(): return tf.add(y, 23)
		r = tf.cond(tf.less(x, y), f1, f2)
		# r is set to f1().
		# Operations in f2 (e.g., tf.add) are not executed.
		```
	**/
	static public function cond(pred:Dynamic, ?true_fn:Dynamic, ?false_fn:Dynamic, ?strict:Dynamic, ?name:Dynamic, ?fn1:Dynamic, ?fn2:Dynamic):Dynamic;
	/**
		Return `true_fn()` if the predicate `pred` is true else `false_fn()`.
		
		`true_fn` and `false_fn` both return lists of output tensors. `true_fn` and
		`false_fn` must have the same non-zero number and type of outputs.
		
		**WARNING**: Any Tensors or Operations created outside of `true_fn` and
		`false_fn` will be executed regardless of which branch is selected at runtime.
		
		Although this behavior is consistent with the dataflow model of TensorFlow,
		it has frequently surprised users who expected a lazier semantics.
		Consider the following simple program:
		
		```python
		z = tf.multiply(a, b)
		result = tf.cond(x < y, lambda: tf.add(x, z), lambda: tf.square(y))
		```
		
		If `x < y`, the `tf.add` operation will be executed and `tf.square`
		operation will not be executed. Since `z` is needed for at least one
		branch of the `cond`, the `tf.multiply` operation is always executed,
		unconditionally.
		
		Note that `cond` calls `true_fn` and `false_fn` *exactly once* (inside the
		call to `cond`, and not at all during `Session.run()`). `cond`
		stitches together the graph fragments created during the `true_fn` and
		`false_fn` calls with some additional graph nodes to ensure that the right
		branch gets executed depending on the value of `pred`.
		
		`tf.cond` supports nested structures as implemented in
		`tensorflow.python.util.nest`. Both `true_fn` and `false_fn` must return the
		same (possibly nested) value structure of lists, tuples, and/or named tuples.
		Singleton lists and tuples form the only exceptions to this: when returned by
		`true_fn` and/or `false_fn`, they are implicitly unpacked to single values.
		
		Note: It is illegal to "directly" use tensors created inside a cond branch
		outside it, e.g. by storing a reference to a branch tensor in the python
		state. If you need to use a tensor created in a branch function you should
		return it as an output of the branch function and use the output from
		`tf.cond` instead.
		
		Args:
		  pred: A scalar determining whether to return the result of `true_fn` or
		    `false_fn`.
		  true_fn: The callable to be performed if pred is true.
		  false_fn: The callable to be performed if pred is false.
		  name: Optional name prefix for the returned tensors.
		
		Returns:
		  Tensors returned by the call to either `true_fn` or `false_fn`. If the
		  callables return a singleton list, the element is extracted from the list.
		
		Raises:
		  TypeError: if `true_fn` or `false_fn` is not callable.
		  ValueError: if `true_fn` and `false_fn` do not return the same number of
		    tensors, or return tensors of different types.
		
		Example:
		
		```python
		x = tf.constant(2)
		y = tf.constant(5)
		def f1(): return tf.multiply(x, 17)
		def f2(): return tf.add(y, 23)
		r = tf.cond(tf.less(x, y), f1, f2)
		# r is set to f1().
		# Operations in f2 (e.g., tf.add) are not executed.
		```
	**/
	static public function cond_for_tf_v2(pred:Dynamic, ?true_fn:Dynamic, ?false_fn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Does nothing. Serves as a control trigger for scheduling.
		
		Only useful as a placeholder for control edges.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function control_trigger(?name:Dynamic):Dynamic;
	static public function control_trigger_eager_fallback(name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Creates or finds a child frame, and makes `data` available to the child frame.
		
		This op is used together with `Exit` to create loops in the graph.
		The unique `frame_name` is used by the `Executor` to identify frames. If
		`is_constant` is true, `output` is a constant in the child frame; otherwise
		it may be changed in the child frame. At most `parallel_iterations` iterations
		are run in parallel in the child frame.
		
		Args:
		  data: A `Tensor`. The tensor to be made available to the child frame.
		  frame_name: A `string`. The name of the child frame.
		  is_constant: An optional `bool`. Defaults to `False`.
		    If true, the output is constant within the child frame.
		  parallel_iterations: An optional `int`. Defaults to `10`.
		    The number of iterations allowed to run in parallel.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function enter(data:Dynamic, frame_name:Dynamic, ?is_constant:Dynamic, ?parallel_iterations:Dynamic, ?name:Dynamic):Dynamic;
	static public function enter_eager_fallback(data:Dynamic, frame_name:Dynamic, is_constant:Dynamic, parallel_iterations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Executes one of the provided callables based on the device placement.
		
		This API is used when the implementations for high level function depend on
		the underlying device placement. It takes a dictionary of device type to
		callables. The device type includes "CPU", "GPU", "TPU", etc. When the type of
		the device where to run this op matches the key in 'device_branch_fns',
		the corresponding callable is executed, falling back to 'default_fn' if none
		matches.
		
		**Example:**
		```python
		def f1(): return tf.constant(1)
		def f2(): return tf.constant(2)
		r = tf.execute_fn_for_device({"CPU": f1, "GPU": f2}, default_fn=f1)
		```
		'r' is evaluated as 1 when it runs on CPU, 2 running on GPU, 1 running on
		any other device types.
		
		
		Args:
		  device_branch_fns: a dictionary of device types to the callables. Each
		    callable must return a matching structure of tensors.
		  default_fn: fallback callable when the underlying device does not match any
		    key in the 'device_branch_fns'.
		  name: A name for this operation (optional).
		
		Returns:
		  The tensors returned by the callable identified by device type during
		  execution, or those returned by 'default_fn' if no key matches.
	**/
	static public function execute_fn_for_device(device_branch_fns:Dynamic, default_fn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Exits the current frame to its parent frame.
		
		Exit makes its input `tensor` available to the parent frame.
		
		Args:
		  tensor: The tensor to be made available to the parent frame.
		  name: A name for this operation (optional).
		
		Returns:
		  The same tensor as `tensor`.
	**/
	static public function exit(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deserializes `context_def` into the appropriate ControlFlowContext.
		
		Args:
		  context_def: ControlFlowContextDef proto
		  import_scope: Optional `string`. Name scope to add.
		
		Returns:
		  A ControlFlowContext subclass
	**/
	static public function from_control_flow_context_def(context_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		Recursively find and return the XLAControlFlowContext.
	**/
	static public function get_enclosing_xla_context():Dynamic;
	/**
		Create an op that groups multiple operations.
		
		When this op finishes, all ops in `inputs` have finished. This op has no
		output.
		
		Note: *In TensorFlow 2 with eager and/or Autograph, you should not require
		this method, as ops execute in the expected order thanks to automatic control
		dependencies.* Only use `tf.group` when working with v1
		`tf.Graph` code.
		
		When operating in a v1-style graph context, ops are not executed in the same
		order as specified in the code; TensorFlow will attempt to execute ops in
		parallel or in an order convenient to the result it is computing.  `tf.group`
		allows you to request that one or more results finish before execution
		continues.
		
		`tf.group` creates a single op (of type `NoOp`), and then adds appropriate
		control dependencies.  Thus, `c = tf.group(a, b)` will compute the same graph
		as this:
		
		    with tf.control_dependencies([a, b]):
		        c = tf.no_op()
		
		See also `tf.tuple` and
		`tf.control_dependencies`.
		
		Args:
		  *inputs: Zero or more tensors to group.
		  name: A name for this operation (optional).
		
		Returns:
		  An Operation that executes all its inputs.
		
		Raises:
		  ValueError: If an unknown keyword argument is provided.
	**/
	static public function group(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Forwards the input to the output.
		
		This operator represents the loop termination condition used by the
		"pivot" switches of a loop.
		
		Args:
		  input: A `Tensor` of type `bool`.
		    A boolean scalar, representing the branch predicate of the Switch op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function loop_cond(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function loop_cond_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the value of an available element of `inputs`.
		
		This op tests each of the tensors in `inputs` in turn to determine if any of
		them is available. If it finds an available tensor, it returns it and its
		index in `inputs`.
		
		It is an error if more than one tensor in `inputs` is available. If no tensor
		in `inputs` is available, the returned tensor and index are not set.
		
		This op handles both `Tensor`s and `IndexedSlices`. If inputs has a mix of
		`Tensor`s and `IndexedSlices`, all inputs are converted to IndexedSlices
		before merging.
		
		Args:
		  inputs: The input tensors, at most one of which is available.
		  name: A name for this operation (optional).
		
		Returns:
		  A tuple containing the chosen input tensor and its index in `inputs`.
		
		Raises:
		  ValueError: If any of the inputs is None, or inputs are IndexedSlices and
		    some but not all have a dense_shape property.
	**/
	static public function merge(inputs:Dynamic, ?name:Dynamic):Dynamic;
	static public function merge_eager_fallback(inputs:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Makes its input available to the next iteration.
		
		Args:
		  data: A `Tensor`. The tensor to be made available to the next iteration.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function next_iteration(data:Dynamic, ?name:Dynamic):Dynamic;
	static public function next_iteration_eager_fallback(data:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Does nothing. Only useful as a placeholder for control edges.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function no_op(?name:Dynamic):Dynamic;
	static public function no_op_eager_fallback(name:Dynamic, ctx:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates or finds a child frame, and makes `data` available to the child frame.
		
		The unique `frame_name` is used by the `Executor` to identify frames. If
		`is_constant` is true, `output` is a constant in the child frame; otherwise
		it may be changed in the child frame. At most `parallel_iterations` iterations
		are run in parallel in the child frame.
		
		Args:
		  data: A mutable `Tensor`.
		    The tensor to be made available to the child frame.
		  frame_name: A `string`. The name of the child frame.
		  is_constant: An optional `bool`. Defaults to `False`.
		    If true, the output is constant within the child frame.
		  parallel_iterations: An optional `int`. Defaults to `10`.
		    The number of iterations allowed to run in parallel.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `data`.
	**/
	static public function ref_enter(data:Dynamic, frame_name:Dynamic, ?is_constant:Dynamic, ?parallel_iterations:Dynamic, ?name:Dynamic):Dynamic;
	static public function ref_enter_eager_fallback(data:Dynamic, frame_name:Dynamic, is_constant:Dynamic, parallel_iterations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Exits the current frame to its parent frame.
		
		Exit makes its input `data` available to the parent frame.
		
		Args:
		  data: A mutable `Tensor`.
		    The tensor to be made available to the parent frame.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `data`.
	**/
	static public function ref_exit(data:Dynamic, ?name:Dynamic):Dynamic;
	static public function ref_exit_eager_fallback(data:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Forwards the value of an available tensor from `inputs` to `output`.
		
		`Merge` waits for at least one of the tensors in `inputs` to become available.
		It is usually combined with `Switch` to implement branching.
		
		`Merge` forwards the first tensor for become available to `output`, and sets
		`value_index` to its index in `inputs`.
		
		Args:
		  inputs: A list of at least 1 mutable `Tensor` objects with the same type.
		    The input tensors, exactly one of which will become available.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, value_index).
		
		  output: A mutable `Tensor`. Has the same type as `inputs`.
		  value_index: A `Tensor` of type `int32`.
	**/
	static public function ref_merge(inputs:Dynamic, ?name:Dynamic):Dynamic;
	static public function ref_merge_eager_fallback(inputs:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Makes its input available to the next iteration.
		
		Args:
		  data: A mutable `Tensor`.
		    The tensor to be made available to the next iteration.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `data`.
	**/
	static public function ref_next_iteration(data:Dynamic, ?name:Dynamic):Dynamic;
	static public function ref_next_iteration_eager_fallback(data:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Forwards the `index`th element of `inputs` to `output`.
		
		Args:
		  index: A `Tensor` of type `int32`.
		    A scalar that determines the input that gets selected.
		  inputs: A list of at least 1 mutable `Tensor` objects with the same type.
		    A list of ref tensors, one of which will be forwarded to `output`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `inputs`.
	**/
	static public function ref_select(index:Dynamic, inputs:Dynamic, ?name:Dynamic):Dynamic;
	static public function ref_select_eager_fallback(index:Dynamic, inputs:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Forwards the ref tensor `data` to the output port determined by `pred`.
		
		If `pred` is true, the `data` input is forwarded to `output_true`. Otherwise,
		the data goes to `output_false`.
		
		See also `Switch` and `Merge`.
		
		Args:
		  data: A mutable `Tensor`.
		    The ref tensor to be forwarded to the appropriate output.
		  pred: A `Tensor` of type `bool`.
		    A scalar that specifies which output port will receive data.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_false, output_true).
		
		  output_false: A mutable `Tensor`. Has the same type as `data`.
		  output_true: A mutable `Tensor`. Has the same type as `data`.
	**/
	static public function ref_switch(data:Dynamic, pred:Dynamic, ?name:Dynamic):Dynamic;
	static public function ref_switch_eager_fallback(data:Dynamic, pred:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Forwards `data` to an output determined by `pred`.
		
		If `pred` is false, the `data` input is forwarded to the first output.
		Otherwise, the data goes to the second output.
		
		This op handles `Tensor`s and `IndexedSlices`.
		
		Args:
		  data: The tensor to be forwarded to the appropriate output.
		  pred: A scalar that specifies which output port will receive data.
		  dtype: Optional element type for the returned tensor. If missing, the type
		    is inferred from the type of `value`.
		  name: A name for this operation (optional).
		
		Returns:
		  `(output_false, output_true)`: If `pred` is true, data will be forwarded
		  to `output_true`, otherwise it goes to `output_false`.
	**/
	@:native("switch")
	static public function _switch(data:Dynamic, pred:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create a switch/case operation, i.e. an integer-indexed conditional.
		
		See also `tf.case`.
		
		This op can be substantially more efficient than `tf.case` when exactly one
		branch will be selected. `tf.switch_case` is more like a C++ switch/case
		statement than `tf.case`, which is more like an if/elif/elif/else chain.
		
		The `branch_fns` parameter is either a dict from `int` to callables, or list
		of (`int`, callable) pairs, or simply a list of callables (in which case the
		index is implicitly the key). The `branch_index` `Tensor` is used to select an
		element in `branch_fns` with matching `int` key, falling back to `default`
		if none match, or `max(keys)` if no `default` is provided. The keys must form
		a contiguous set from `0` to `len(branch_fns) - 1`.
		
		`tf.switch_case` supports nested structures as implemented in `tf.nest`. All
		callables must return the same (possibly nested) value structure of lists,
		tuples, and/or named tuples.
		
		**Example:**
		
		Pseudocode:
		
		```c++
		switch (branch_index) {  // c-style switch
		  case 0: return 17;
		  case 1: return 31;
		  default: return -1;
		}
		```
		or
		```python
		branches = {0: lambda: 17, 1: lambda: 31}
		branches.get(branch_index, lambda: -1)()
		```
		
		Expressions:
		
		```python
		def f1(): return tf.constant(17)
		def f2(): return tf.constant(31)
		def f3(): return tf.constant(-1)
		r = tf.switch_case(branch_index, branch_fns={0: f1, 1: f2}, default=f3)
		# Equivalent: tf.switch_case(branch_index, branch_fns={0: f1, 1: f2, 2: f3})
		```
		
		Args:
		  branch_index: An int Tensor specifying which of `branch_fns` should be
		    executed.
		  branch_fns: A `dict` mapping `int`s to callables, or a `list` of
		    (`int`, callable) pairs, or simply a list of callables (in which case the
		    index serves as the key). Each callable must return a matching structure
		    of tensors.
		  default: Optional callable that returns a structure of tensors.
		  name: A name for this operation (optional).
		
		Returns:
		  The tensors returned by the callable identified by `branch_index`, or those
		  returned by `default` if no key matches and `default` was provided, or those
		  returned by the max-keyed `branch_fn` if no `default` is provided.
		
		Raises:
		  TypeError: If `branch_fns` is not a list/dictionary.
		  TypeError: If `branch_fns` is a list but does not contain 2-tuples or
		             callables.
		  TypeError: If `fns[i]` is not callable for any i, or `default` is not
		             callable.
	**/
	static public function switch_case(branch_index:Dynamic, branch_fns:Dynamic, ?_default:Dynamic, ?name:Dynamic):Dynamic;
	static public function switch_eager_fallback(data:Dynamic, pred:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Group tensors together.
		
		This creates a tuple of tensors with the same values as the `tensors`
		argument, except that the value of each tensor is only returned after the
		values of all tensors have been computed.
		
		`control_inputs` contains additional ops that have to finish before this op
		finishes, but whose outputs are not returned.
		
		This can be used as a "join" mechanism for parallel computations: all the
		argument tensors can be computed in parallel, but the values of any tensor
		returned by `tuple` are only available after all the parallel computations
		are done.
		
		See also `tf.group` and
		`tf.control_dependencies`.
		
		Args:
		  tensors: A list of `Tensor`s or `IndexedSlices`, some entries can be `None`.
		  name: (optional) A name to use as a `name_scope` for the operation.
		  control_inputs: List of additional ops to finish before returning.
		
		Returns:
		  Same as `tensors`.
		
		Raises:
		  ValueError: If `tensors` does not contain any `Tensor` or `IndexedSlices`.
		  TypeError: If `control_inputs` is not a list of `Operation` or `Tensor`
		    objects.
	**/
	static public function tuple(tensors:Dynamic, ?name:Dynamic, ?control_inputs:Dynamic):Dynamic;
	/**
		Groups tensors together.
		
		The returned tensors have the same value as the input tensors, but they
		are computed only after all the input tensors have been computed.
		
		Note: *In TensorFlow 2 with eager and/or Autograph, you should not require
		this method, as ops execute in the expected order thanks to automatic control
		dependencies.* Only use `tf.tuple` when working with v1 `tf.Graph` code.
		
		See also `tf.group` and `tf.control_dependencies`.
		
		Args:
		  tensors: A list of `Tensor`s or `IndexedSlices`, some entries can be `None`.
		  control_inputs: List of additional ops to finish before returning.
		  name: (optional) A name to use as a `name_scope` for the operation.
		
		Returns:
		  Same as `tensors`.
		
		Raises:
		  ValueError: If `tensors` does not contain any `Tensor` or `IndexedSlices`.
		  TypeError: If `control_inputs` is not a list of `Operation` or `Tensor`
		    objects.
	**/
	static public function tuple_v2(tensors:Dynamic, ?control_inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Repeat `body` while the condition `cond` is true.
		
		`cond` is a callable returning a boolean scalar tensor. `body` is a callable
		returning a (possibly nested) tuple, namedtuple or list of tensors of the same
		arity (length and structure) and types as `loop_vars`. `loop_vars` is a
		(possibly nested) tuple, namedtuple or list of tensors that is passed to both
		`cond` and `body`. `cond` and `body` both take as many arguments as there are
		`loop_vars`.
		
		In addition to regular Tensors or IndexedSlices, the body may accept and
		return TensorArray objects.  The flows of the TensorArray objects will
		be appropriately forwarded between loops and during gradient calculations.
		
		Note that `while_loop` calls `cond` and `body` *exactly once* (inside the
		call to `while_loop`, and not at all during `Session.run()`). `while_loop`
		stitches together the graph fragments created during the `cond` and `body`
		calls with some additional graph nodes to create the graph flow that
		repeats `body` until `cond` returns false.
		
		For correctness, `tf.while_loop()` strictly enforces shape invariants for
		the loop variables. A shape invariant is a (possibly partial) shape that
		is unchanged across the iterations of the loop. An error will be raised
		if the shape of a loop variable after an iteration is determined to be more
		general than or incompatible with its shape invariant. For example, a shape
		of [11, None] is more general than a shape of [11, 17], and [11, 21] is not
		compatible with [11, 17]. By default (if the argument `shape_invariants` is
		not specified), it is assumed that the initial shape of each tensor in
		`loop_vars` is the same in every iteration. The `shape_invariants` argument
		allows the caller to specify a less specific shape invariant for each loop
		variable, which is needed if the shape varies between iterations. The
		`tf.Tensor.set_shape`
		function may also be used in the `body` function to indicate that
		the output loop variable has a particular shape. The shape invariant for
		SparseTensor and IndexedSlices are treated specially as follows:
		
		a) If a loop variable is a SparseTensor, the shape invariant must be
		TensorShape([r]) where r is the rank of the dense tensor represented
		by the sparse tensor. It means the shapes of the three tensors of the
		SparseTensor are ([None], [None, r], [r]). NOTE: The shape invariant here
		is the shape of the SparseTensor.dense_shape property. It must be the shape of
		a vector.
		
		b) If a loop variable is an IndexedSlices, the shape invariant must be
		a shape invariant of the values tensor of the IndexedSlices. It means
		the shapes of the three tensors of the IndexedSlices are (shape, [shape[0]],
		[shape.ndims]).
		
		`while_loop` implements non-strict semantics, enabling multiple iterations
		to run in parallel. The maximum number of parallel iterations can be
		controlled by `parallel_iterations`, which gives users some control over
		memory consumption and execution order. For correct programs, `while_loop`
		should return the same result for any parallel_iterations > 0.
		
		For training, TensorFlow stores the tensors that are produced in the
		forward inference and are needed in back propagation. These tensors are a
		main source of memory consumption and often cause OOM errors when training
		on GPUs. When the flag swap_memory is true, we swap out these tensors from
		GPU to CPU. This for example allows us to train RNN models with very long
		sequences and large batches.
		
		Args:
		  cond: A callable that represents the termination condition of the loop.
		  body: A callable that represents the loop body.
		  loop_vars: A (possibly nested) tuple, namedtuple or list of numpy array,
		    `Tensor`, and `TensorArray` objects.
		  shape_invariants: The shape invariants for the loop variables.
		  parallel_iterations: The number of iterations allowed to run in parallel. It
		    must be a positive integer.
		  back_prop: Whether backprop is enabled for this while loop.
		  swap_memory: Whether GPU-CPU memory swap is enabled for this loop.
		  name: Optional name prefix for the returned tensors.
		  maximum_iterations: Optional maximum number of iterations of the while loop
		    to run.  If provided, the `cond` output is AND-ed with an additional
		    condition ensuring the number of iterations executed is no greater than
		    `maximum_iterations`.
		  return_same_structure: If True, output has same structure as `loop_vars`. If
		    eager execution is enabled, this is ignored (and always treated as True).
		
		Returns:
		  The output tensors for the loop variables after the loop.
		   If `return_same_structure` is True, the return value has the same
		   structure as `loop_vars`.
		   If `return_same_structure` is False, the return value is a Tensor,
		   TensorArray or IndexedSlice if the length of `loop_vars` is 1, or a list
		   otherwise.
		
		Raises:
		  TypeError: if `cond` or `body` is not callable.
		  ValueError: if `loop_vars` is empty.
		
		Example:
		
		```python
		i = tf.constant(0)
		c = lambda i: tf.less(i, 10)
		b = lambda i: tf.add(i, 1)
		r = tf.while_loop(c, b, [i])
		```
		
		Example with nesting and a namedtuple:
		
		```python
		import collections
		Pair = collections.namedtuple('Pair', 'j, k')
		ijk_0 = (tf.constant(0), Pair(tf.constant(1), tf.constant(2)))
		c = lambda i, p: i < 10
		b = lambda i, p: (i + 1, Pair((p.j + p.k), (p.j - p.k)))
		ijk_final = tf.while_loop(c, b, ijk_0)
		```
		
		Example using shape_invariants:
		
		```python
		i0 = tf.constant(0)
		m0 = tf.ones([2, 2])
		c = lambda i, m: i < 10
		b = lambda i, m: [i+1, tf.concat([m, m], axis=0)]
		tf.while_loop(
		    c, b, loop_vars=[i0, m0],
		    shape_invariants=[i0.get_shape(), tf.TensorShape([None, 2])])
		```
		
		Example which demonstrates non-strict semantics: In the following
		example, the final value of the counter `i` does not depend on `x`. So
		the `while_loop` can increment the counter parallel to updates of `x`.
		However, because the loop counter at one loop iteration depends
		on the value at the previous iteration, the loop counter itself cannot
		be incremented in parallel. Hence if we just want the final value of the
		counter (which we print on the line `print(sess.run(i))`), then
		`x` will never be incremented, but the counter will be updated on a
		single thread. Conversely, if we want the value of the output (which we
		print on the line `print(sess.run(out).shape)`), then the counter may be
		incremented on its own thread, while `x` can be incremented in
		parallel on a separate thread. In the extreme case, it is conceivable
		that the thread incrementing the counter runs until completion before
		`x` is incremented even a single time. The only thing that can never
		happen is that the thread updating `x` can never get ahead of the
		counter thread because the thread incrementing `x` depends on the value
		of the counter.
		
		```python
		import tensorflow as tf
		
		n = 10000
		x = tf.constant(list(range(n)))
		c = lambda i, x: i < n
		b = lambda i, x: (tf.compat.v1.Print(i + 1, [i]), tf.compat.v1.Print(x + 1,
		[i], "x:"))
		i, out = tf.while_loop(c, b, (0, x))
		with tf.compat.v1.Session() as sess:
		    print(sess.run(i))  # prints [0] ... [9999]
		
		    # The following line may increment the counter and x in parallel.
		    # The counter thread may get ahead of the other thread, but not the
		    # other way around. So you may see things like
		    # [9996] x:[9987]
		    # meaning that the counter thread is on iteration 9996,
		    # while the other thread is on iteration 9987
		    print(sess.run(out).shape)
		```
	**/
	static public function while_loop(cond:Dynamic, body:Dynamic, loop_vars:Dynamic, ?shape_invariants:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic, ?maximum_iterations:Dynamic, ?return_same_structure:Dynamic):Dynamic;
	/**
		Repeat `body` while the condition `cond` is true. (deprecated argument values)
		
		Warning: SOME ARGUMENT VALUES ARE DEPRECATED: `(back_prop=False)`. They will be removed in a future version.
		Instructions for updating:
		back_prop=False is deprecated. Consider using tf.stop_gradient instead.
		Instead of:
		results = tf.while_loop(c, b, vars, back_prop=False)
		Use:
		results = tf.nest.map_structure(tf.stop_gradient, tf.while_loop(c, b, vars))
		
		`cond` is a callable returning a boolean scalar tensor. `body` is a callable
		returning a (possibly nested) tuple, namedtuple or list of tensors of the same
		arity (length and structure) and types as `loop_vars`. `loop_vars` is a
		(possibly nested) tuple, namedtuple or list of tensors that is passed to both
		`cond` and `body`. `cond` and `body` both take as many arguments as there are
		`loop_vars`.
		
		In addition to regular Tensors or IndexedSlices, the body may accept and
		return TensorArray objects.  The flows of the TensorArray objects will
		be appropriately forwarded between loops and during gradient calculations.
		
		Note that `while_loop` calls `cond` and `body` *exactly once* (inside the
		call to `while_loop`, and not at all during `Session.run()`). `while_loop`
		stitches together the graph fragments created during the `cond` and `body`
		calls with some additional graph nodes to create the graph flow that
		repeats `body` until `cond` returns false.
		
		For correctness, `tf.while_loop()` strictly enforces shape invariants for
		the loop variables. A shape invariant is a (possibly partial) shape that
		is unchanged across the iterations of the loop. An error will be raised
		if the shape of a loop variable after an iteration is determined to be more
		general than or incompatible with its shape invariant. For example, a shape
		of [11, None] is more general than a shape of [11, 17], and [11, 21] is not
		compatible with [11, 17]. By default (if the argument `shape_invariants` is
		not specified), it is assumed that the initial shape of each tensor in
		`loop_vars` is the same in every iteration. The `shape_invariants` argument
		allows the caller to specify a less specific shape invariant for each loop
		variable, which is needed if the shape varies between iterations. The
		`tf.Tensor.set_shape`
		function may also be used in the `body` function to indicate that
		the output loop variable has a particular shape. The shape invariant for
		SparseTensor and IndexedSlices are treated specially as follows:
		
		a) If a loop variable is a SparseTensor, the shape invariant must be
		TensorShape([r]) where r is the rank of the dense tensor represented
		by the sparse tensor. It means the shapes of the three tensors of the
		SparseTensor are ([None], [None, r], [r]). NOTE: The shape invariant here
		is the shape of the SparseTensor.dense_shape property. It must be the shape of
		a vector.
		
		b) If a loop variable is an IndexedSlices, the shape invariant must be
		a shape invariant of the values tensor of the IndexedSlices. It means
		the shapes of the three tensors of the IndexedSlices are (shape, [shape[0]],
		[shape.ndims]).
		
		`while_loop` implements non-strict semantics, enabling multiple iterations
		to run in parallel. The maximum number of parallel iterations can be
		controlled by `parallel_iterations`, which gives users some control over
		memory consumption and execution order. For correct programs, `while_loop`
		should return the same result for any parallel_iterations > 0.
		
		For training, TensorFlow stores the tensors that are produced in the
		forward inference and are needed in back propagation. These tensors are a
		main source of memory consumption and often cause OOM errors when training
		on GPUs. When the flag swap_memory is true, we swap out these tensors from
		GPU to CPU. This for example allows us to train RNN models with very long
		sequences and large batches.
		
		Args:
		  cond: A callable that represents the termination condition of the loop.
		  body: A callable that represents the loop body.
		  loop_vars: A (possibly nested) tuple, namedtuple or list of numpy array,
		    `Tensor`, and `TensorArray` objects.
		  shape_invariants: The shape invariants for the loop variables.
		  parallel_iterations: The number of iterations allowed to run in parallel. It
		    must be a positive integer.
		  back_prop: (optional) Deprecated. False disables support for back
		    propagation. Prefer using `tf.stop_gradient` instead.
		  swap_memory: Whether GPU-CPU memory swap is enabled for this loop.
		  maximum_iterations: Optional maximum number of iterations of the while loop
		    to run.  If provided, the `cond` output is AND-ed with an additional
		    condition ensuring the number of iterations executed is no greater than
		    `maximum_iterations`.
		  name: Optional name prefix for the returned tensors.
		
		Returns:
		  The output tensors for the loop variables after the loop. The return value
		    has the same structure as `loop_vars`.
		
		Raises:
		  TypeError: if `cond` or `body` is not callable.
		  ValueError: if `loop_vars` is empty.
		
		Example:
		
		```python
		i = tf.constant(0)
		c = lambda i: tf.less(i, 10)
		b = lambda i: (tf.add(i, 1), )
		r = tf.while_loop(c, b, [i])
		```
		
		Example with nesting and a namedtuple:
		
		```python
		import collections
		Pair = collections.namedtuple('Pair', 'j, k')
		ijk_0 = (tf.constant(0), Pair(tf.constant(1), tf.constant(2)))
		c = lambda i, p: i < 10
		b = lambda i, p: (i + 1, Pair((p.j + p.k), (p.j - p.k)))
		ijk_final = tf.while_loop(c, b, ijk_0)
		```
		
		Example using shape_invariants:
		
		```python
		i0 = tf.constant(0)
		m0 = tf.ones([2, 2])
		c = lambda i, m: i < 10
		b = lambda i, m: [i+1, tf.concat([m, m], axis=0)]
		tf.while_loop(
		    c, b, loop_vars=[i0, m0],
		    shape_invariants=[i0.get_shape(), tf.TensorShape([None, 2])])
		```
		
		Example which demonstrates non-strict semantics: In the following
		example, the final value of the counter `i` does not depend on `x`. So
		the `while_loop` can increment the counter parallel to updates of `x`.
		However, because the loop counter at one loop iteration depends
		on the value at the previous iteration, the loop counter itself cannot
		be incremented in parallel. Hence if we just want the final value of the
		counter (which we print on the line `print(sess.run(i))`), then
		`x` will never be incremented, but the counter will be updated on a
		single thread. Conversely, if we want the value of the output (which we
		print on the line `print(sess.run(out).shape)`), then the counter may be
		incremented on its own thread, while `x` can be incremented in
		parallel on a separate thread. In the extreme case, it is conceivable
		that the thread incrementing the counter runs until completion before
		`x` is incremented even a single time. The only thing that can never
		happen is that the thread updating `x` can never get ahead of the
		counter thread because the thread incrementing `x` depends on the value
		of the counter.
		
		```python
		import tensorflow as tf
		
		n = 10000
		x = tf.constant(list(range(n)))
		c = lambda i, x: i < n
		b = lambda i, x: (tf.compat.v1.Print(i + 1, [i]), tf.compat.v1.Print(x + 1,
		[i], "x:"))
		i, out = tf.while_loop(c, b, (0, x))
		with tf.compat.v1.Session() as sess:
		    print(sess.run(i))  # prints [0] ... [9999]
		
		    # The following line may increment the counter and x in parallel.
		    # The counter thread may get ahead of the other thread, but not the
		    # other way around. So you may see things like
		    # [9996] x:[9987]
		    # meaning that the counter thread is on iteration 9996,
		    # while the other thread is on iteration 9987
		    print(sess.run(out).shape)
		```
	**/
	static public function while_loop_v2(cond:Dynamic, body:Dynamic, loop_vars:Dynamic, ?shape_invariants:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?maximum_iterations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Produces the content of `output_tensor` only after `dependencies`.
		
		In some cases, a user may want the output of an operation to be
		consumed externally only after some other dependencies have run
		first. This function ensures returns `output_tensor`, but only after all
		operations in `dependencies` have run. Note that this means that there is
		no guarantee that `output_tensor` will be evaluated after any `dependencies`
		have run.
		
		See also `tf.tuple` and `tf.group`.
		
		Args:
		  dependencies: Iterable of operations to run before this op finishes.
		  output_tensor: A `Tensor` or `IndexedSlices` that will be returned.
		  name: (Optional) A name for this operation.
		
		Returns:
		  Same as `output_tensor`.
		
		Raises:
		  TypeError: if `output_tensor` is not a `Tensor` or `IndexedSlices`.
	**/
	static public function with_dependencies(dependencies:Dynamic, output_tensor:Dynamic, ?name:Dynamic):Dynamic;
}