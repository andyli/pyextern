/* This file is generated, do not edit! */
package tensorflow.python.ops.control_flow_ops;
@:pythonImport("tensorflow.python.ops.control_flow_ops") extern class Control_flow_ops_Module {
	/**
		Return true if `op` is the Switch for a While loop.
	**/
	static public function IsLoopSwitch(op:Dynamic):Dynamic;
	/**
		Return true if `op` is the Switch.
	**/
	static public function IsSwitch(op:Dynamic):Dynamic;
	/**
		Create the state for all the while loops involved in one gradients().
		
		We create a ControlFlowState when there are while loops involved in
		gradients(). In gradients(), control flow logic is only invoked when
		the ControlFlowState is not None.
		
		Note that this method modifies `between_op_list` and `between_ops`.
	**/
	static public function MaybeCreateControlFlowState(between_op_list:Dynamic, between_ops:Dynamic, colocate_gradients_with_ops:Dynamic):Dynamic;
	/**
		DEPRECATED: Use `while_loop`.
	**/
	static public function While(cond:Dynamic, body:Dynamic, loop_vars:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create zeros_like for the specified output of an op.
	**/
	static public function ZerosLikeOutsideLoop(op:Dynamic, index:Dynamic):Dynamic;
	/**
		Add NextIteration and back edge from v to m.
	**/
	static public function _AddNextAndBackEdge(m:Dynamic, v:Dynamic):Dynamic;
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
		Creates or finds a child frame, and makes `data` available to it.
		
		The unique `frame_name` is used by the `Executor` to identify frames. If
		`is_constant` is true, `data` is a constant in the child frame; otherwise
		it may be changed in the child frame. At most `parallel_iterations`
		iterations are run in parallel in the child frame.
		
		Args:
		  data: The tensor to be made available to the child frame.
		  frame_name: The name of the child frame.
		  is_constant: If true, the output is constant within the child frame.
		  parallel_iterations: The number of iterations allowed to run in parallel.
		  use_ref: If true, use ref_enter if data is of ref type.
		  name: A name for this operation (optional).
		
		Returns:
		  The same tensor as `data`.
	**/
	static public function _Enter(data:Dynamic, frame_name:Dynamic, ?is_constant:Dynamic, ?parallel_iterations:Dynamic, ?use_ref:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return the enter op if we can infer `value` to be a loop invariant.
	**/
	static public function _GetLoopConstantEnter(value:Dynamic):Dynamic;
	/**
		Get the WhileContext to which this op belongs.
	**/
	static public function _GetWhileContext(op:Dynamic):Dynamic;
	static public function _GroupControlDeps(dev:Dynamic, deps:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a tensor with the same shape and contents as the input tensor.
		
		Args:
		  data: A Tensor.
		  name: A name for this operation (optional).
		
		Returns:
		  A Tensor with the same type and value as the input Tensor.
	**/
	static public function _Identity(data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return true iff op is a loop invariant.
	**/
	static public function _IsLoopConstantEnter(op:Dynamic):Dynamic;
	static public function _IsLoopExit(op:Dynamic):Dynamic;
	/**
		Shape function for the LoopCond op.
	**/
	static public function _LoopCondShape(op:Dynamic):Dynamic;
	/**
		Shape function for the Merge op.
		
		The Merge op takes many inputs of arbitrary shapes, and produces a
		first output that is one of those inputs, and a second scalar
		output.
		
		If all input shapes are known and have the same rank, the output
		shape must have that rank, otherwise the output shape is unknown.
		Each output dimension is specified only if that dimension in all
		inputs are the same.
		
		Args:
		  op: A Merge Operation.
		
		Returns:
		  A single-element list containing the Shape of the Merge op.
	**/
	static public function _MergeShape(op:Dynamic):Dynamic;
	static public function _NextIteration(data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Shape function for the RefSelect op.
		
		The RefSelect takes one scalar input and N inputs of arbitrary
		shapes, and produces one output, which is one of those N inputs.
		
		This function conservatively assumes that if any of the N inputs is
		not fully defined, the output shape is unknown. If all of the N
		inputs have the exact same known shape, the output must have that
		shape.
		
		Args:
		  op: A RefSelect Operation.
		
		Returns:
		  A single-element list containing the Shape of the RefSelect op.
	**/
	static public function _RefSelectShape(op:Dynamic):Dynamic;
	static public function _ShapeIntersection(shape1:Dynamic, shape2:Dynamic):Dynamic;
	/**
		Forwards `data` to an output determined by `pred`.
		
		If `pred` is true, the `data` input is forwared to the first output.
		Otherwise, the data goes to the second output.
		
		This op handles `Tensor`s and `IndexedSlices`.
		
		Args:
		  data: The tensor to be forwarded to the appropriate output.
		  pred: A scalar that specifies which output port will receive data.
		  name: A name for this operation (optional).
		
		Returns:
		  `(output_false, output_false)`: If `pred` is true, data will be forwarded to
		  `output_true`, otherwise it goes to `output_false`.
		
		Raises:
		  TypeError: if data is not a Tensor or IndexedSlices
	**/
	static public function _SwitchRefOrTensor(data:Dynamic, pred:Dynamic, ?name:Dynamic):Dynamic;
	static public function _SwitchShape(op:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _convert_flows_to_tensorarrays(tensors_or_tensorarrays:Dynamic, tensors_or_flows:Dynamic):Dynamic;
	static public function _convert_tensorarrays_to_flows(tensors_or_tensor_arrays:Dynamic):Dynamic;
	static public function _make_tensor_array(ta:Dynamic, t_or_flow:Dynamic):Dynamic;
	/**
		Raise a exception to abort the process when called.
		
		Returns nothing but an exception.
		
		Args:
		  error_msg: An optional `string`. Defaults to `""`.
		    A string which is the message associated with the exception.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function abort(?error_msg:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Create a case operation.
		
		The `pred_fn_pairs` parameter is a dict or list of pairs of size N.
		Each pair contains a boolean scalar tensor and a python callable that
		creates the tensors to be returned if the boolean evaluates to True.
		`default` is a callable generating a list of tensors. All the callables
		in `pred_fn_pairs` as well as `default` should return the same number
		and types of tensors.
		
		If `exclusive==True`, all predicates are evaluated, and a logging operation
		with an error is returned if more than one of the predicates evaluates to
		True. If `exclusive==False`, execution stops are the first predicate which
		evaluates to True, and the tensors generated by the corresponding function
		are returned immediately. If none of the predicates evaluate to True, this
		operation returns the tensors generated by `default`.
		
		Example 1:
		  Pseudocode:
		  ```
		    if (x < y) return 17;
		    else return 23;
		  ```
		
		  Expressions:
		  ```
		    f1 = lambda: tf.constant(17)
		    f2 = lambda: tf.constant(23)
		    r = case([(tf.less(x, y), f1)], default=f2)
		  ```
		
		Example 2:
		  Pseudocode:
		  ```
		    if (x < y && x > z) raise OpError("Only one predicate may evaluate true");
		    if (x < y) return 17;
		    else if (x > z) return 23;
		    else return -1;
		  ```
		
		  Expressions:
		  ```
		    x = tf.constant(0)
		    y = tf.constant(1)
		    z = tf.constant(2)
		    def f1(): return tf.constant(17)
		    def f2(): return tf.constant(23)
		    def f3(): return tf.constant(-1)
		    r = case({tf.less(x, y): f1, tf.greater(x, z): f2},
		             default=f3, exclusive=True)
		  ```
		
		Args:
		  pred_fn_pairs: Dict or list of pairs of a boolean scalar tensor and a
		                 callable which returns a list of tensors.
		  default: A callable that returns a list of tensors.
		  exclusive: True iff more than one predicate is allowed to evaluate to True.
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
	static public function _case(pred_fn_pairs:Dynamic, _default:Dynamic, ?exclusive:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return either fn1() or fn2() based on the boolean predicate `pred`.
		
		`fn1` and `fn2` both return lists of output tensors. `fn1` and `fn2` must have
		the same non-zero number and type of outputs.
		
		Note that the conditional execution applies only to the operations defined in
		fn1 and fn2. Consider the following simple program:
		
		```python
		z = tf.mul(a, b)
		result = tf.cond(x < y, lambda: tf.add(x, z), lambda: tf.square(y))
		```
		
		If x < y, the tf.add operation will be executed and tf.square
		operation will not be executed. Since z is needed for at least one
		branch of the cond, the tf.mul operation is always executed, unconditionally.
		Although this behavior is consistent with the dataflow model of TensorFlow,
		it has occasionally surprised some users who expected a lazier semantics.
		
		Args:
		  pred: A scalar determining whether to return the result of `fn1` or `fn2`.
		  fn1: The callable to be performed if pred is true.
		  fn2: The callable to be performed if pref is false.
		  name: Optional name prefix for the returned tensors.
		
		Returns:
		  Tensors returned by the call to either `fn1` or `fn2`. If the callables
		  return a singleton list, the element is extracted from the list.
		
		Raises:
		  TypeError: if `fn1` or `fn2` is not callable.
		  ValueError: if `fn1` and `fn2` do not return the same number of tensors, or
		              return tensors of different types.
		
		Example:
		
		```python
		  x = tf.constant(2)
		  y = tf.constant(5)
		  def f1(): return tf.mul(x, 17)
		  def f2(): return tf.add(y, 23)
		  r = cond(tf.less(x, y), f1, f2)
		  # r is set to f1().
		  # Operations in f2 (e.g., tf.add) are not executed.
		```
	**/
	static public function cond(pred:Dynamic, fn1:Dynamic, fn2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Does nothing. Serves as a control trigger for scheduling.
		
		Only useful as a placeholder for control edges.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function control_trigger(?name:Dynamic):Dynamic;
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
		  A `Tensor`. Has the same type as `data`. The same tensor as `data`.
	**/
	static public function enter(data:Dynamic, frame_name:Dynamic, ?is_constant:Dynamic, ?parallel_iterations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Exits the current frame to its parent frame.
		
		Exit makes its input `data` available to the parent frame.
		
		Args:
		  data: The tensor to be made available to the parent frame.
		  name: A name for this operation (optional).
		
		Returns:
		  The same tensor as `data`.
	**/
	static public function exit(data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create an op that groups multiple operations.
		
		When this op finishes, all ops in `input` have finished. This op has no
		output.
		
		See also `tuple` and `with_dependencies`.
		
		Args:
		  *inputs: Zero or more tensors to group.
		  **kwargs: Optional parameters to pass when constructing the NodeDef.
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
		  A `Tensor` of type `bool`. The same tensor as `input`.
	**/
	static public function loop_cond(input:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		Makes its input available to the next iteration.
		
		Args:
		  data: A `Tensor`. The tensor to be made available to the next iteration.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`. The same tensor as `data`.
	**/
	static public function next_iteration(data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Does nothing. Only useful as a placeholder for control edges.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function no_op(?name:Dynamic):Dynamic;
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
		  The same tensor as `data`.
	**/
	static public function ref_enter(data:Dynamic, frame_name:Dynamic, ?is_constant:Dynamic, ?parallel_iterations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Makes its input available to the next iteration.
		
		Args:
		  data: A mutable `Tensor`.
		    The tensor to be made available to the next iteration.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `data`.
		  The same tensor as `data`.
	**/
	static public function ref_next_iteration(data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Forwards the `index`th element of `inputs` to `output`.
		
		Args:
		  index: A `Tensor` of type `int32`.
		    A scalar that determines the input that gets selected.
		  inputs: A list of at least 1 mutable `Tensor` objects of the same type.
		    A list of ref tensors, one of which will be forwarded to `output`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `inputs`. The forwarded tensor.
	**/
	static public function ref_select(index:Dynamic, inputs:Dynamic, ?name:Dynamic):Dynamic;
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
		  output_false: A mutable `Tensor`. Has the same type as `data`. If `pred` is false, data will be forwarded to this output.
		  output_true: A mutable `Tensor`. Has the same type as `data`. If `pred` is true, data will be forwarded to this output.
	**/
	static public function ref_switch(data:Dynamic, pred:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Forwards `data` to an output determined by `pred`.
		
		If `pred` is true, the `data` input is forwared to the first output.
		Otherwise, the data goes to the second output.
		
		This op handles `Tensor`s and `IndexedSlices`.
		
		Args:
		  data: The tensor to be forwarded to the appropriate output.
		  pred: A scalar that specifies which output port will receive data.
		  dtype: Optional element type for the returned tensor. If missing,
		         the type is inferred from the type of `value`.
		  name: A name for this operation (optional).
		
		Returns:
		  `(output_false, output_true)`: If `pred` is true, data will be forwarded
		  to `output_true`, otherwise it goes to `output_false`.
	**/
	@:native("switch")
	static public function _switch(data:Dynamic, pred:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
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
		
		See also `group` and `with_dependencies`.
		
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
		Repeat `body` while the condition `cond` is true.
		
		`cond` is a callable returning a boolean scalar tensor. `body` is a callable
		returning a (possibly nested) tuple or list of tensors of the same
		arity (length and structure) and types as `loop_vars`. `loop_vars` is a
		(possibly nested) tuple or list of tensors that is passed to both `cond`
		and `body`. `cond` and `body` both take as many arguments as there are
		`loop_vars`.
		
		In addition to regular Tensors or IndexedSlices, the body may accept and
		return TensorArray objects.  The flows of the TensorArray objects will
		be appropriately forwarded between loops and during gradient calculations.
		
		While `cond` evaluates to true, `body` is executed.
		
		`while_loop` implements non-strict semantics, enabling multiple iterations
		to run in parallel. The maximum number of parallel iterations can be
		controlled by `parallel_iterations`, which gives users some control over
		memory consumption and execution order. For correct programs, `while_loop`
		should return the same result for any parallel_iterations > 0.
		
		For training, TensorFlow remembers the tensors that are produced in the
		forward inference but needed in back propagation. These tensors can be a
		main source of memory consumption and often cause OOM problems when training
		on GPUs.  When the flag swap_memory is true, we swap out these tensors from
		GPU to CPU.  This for example allows us to train RNN models with very long
		sequences and large batches.
		
		Args:
		  cond: A callable that represents the termination condition of the loop.
		  body: A callable that represents the loop body.
		  loop_vars: A (possibly nested) tuple or list of numpy array, `Tensor`,
		    and `TensorArray` objects.
		  parallel_iterations: The number of iterations allowed to run in parallel.
		  back_prop: Whether backprop is enabled for this while loop.
		  swap_memory: Whether GPU-CPU memory swap is enabled for this loop.
		  name: Optional name prefix for the returned tensors.
		
		Returns:
		  The output tensors for the loop variables after the loop. When the length
		  of `loop_vars` is 1 this is a Tensor, TensorArry or IndexedSlice and when
		  the length of `loop_vars` is greater than 1 it returns a list.
		
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
		
		Example with nesting:
		
		  ```python
		  ijk_0 = (tf.constant(0), (tf.constant(1), tf.constant(2)))
		  c = lambda i, (j, k): i < 10
		  b = lambda i, (j, k): (i + 1, ((j + k), (j - k)))
		  ijk_final = tf.while_loop(c, b, ijk_0)
		  ```
	**/
	static public function while_loop(cond:Dynamic, body:Dynamic, loop_vars:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Produces the content of `output_tensor` only after `dependencies`.
		
		In some cases, a user may want the output of an operation to be
		consumed externally only after some other dependencies have run
		first. This function ensures returns `output_tensor`, but only after all
		operations in `dependencies` have run. Note that this means that there is
		no guarantee that `output_tensor` will be evaluated after any `dependencies`
		have run.
		
		See also `tuple` and `group`.
		
		Args:
		  dependencies: A list of operations to run before this op finishes.
		  output_tensor: A `Tensor` or `IndexedSlices` that will be returned.
		  name: (Optional) A name for this operation.
		
		Returns:
		  Same as `output_tensor`.
		
		Raises:
		  TypeError: if `output_tensor` is not a `Tensor` or `IndexedSlices`.
	**/
	static public function with_dependencies(dependencies:Dynamic, output_tensor:Dynamic, ?name:Dynamic):Dynamic;
}