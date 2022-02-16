/* This file is generated, do not edit! */
package tensorflow.python.ops.functional_ops;
@:pythonImport("tensorflow.python.ops.functional_ops") extern class Functional_ops_Module {
	/**
		out = input; for i in range(start, limit, delta) out = body(i, out).
		
		Args:
		  start: A `Tensor` of type `int32`.
		  limit: A `Tensor` of type `int32`.
		  delta: A `Tensor` of type `int32`.
		  inputs: A list of `Tensor` objects. A list of input tensors whose types are
		    T.
		  body: A function takes a list of tensors and returns another list of
		    tensors. Both lists have the same types as (int32, T...).
		  name: A name for the operation (optional).
		  hostmem: A list of integer. If i is in the list, inputs[i] is a host memory
		    tensor. In other words, (i+1)-th argument of the body function is
		    expecting a host memory.
		  rewrite_with_while: If True, using While op to implement the For.
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `input`.
		  A list of output tensors whose types are T.
	**/
	static public function For(start:Dynamic, limit:Dynamic, delta:Dynamic, inputs:Dynamic, body:Dynamic, ?name:Dynamic, ?hostmem:Dynamic, ?rewrite_with_while:Dynamic):Dynamic;
	/**
		Computes the gradient function for function f via backpropagation.
		
		Args:
		  inputs: A list of tensors of size N + M.
		  f: The function we want to compute the gradient for.  The function 'f' must
		    be a numerical function which takes N inputs and produces M outputs. Its
		    gradient function 'g', which is  a function taking N + M inputs and
		    produces N outputs.  I.e. if we have (y1, y2, ..., yM) = f(x1, x2, ...,
		    xN), then, g is (dL/dx1, dL/dx2, ..., dL/dxN) = g(x1, x2, ..., xN, dL/dy1,
		    dL/dy2, ..., dL/dyM),  where L is a scalar-value function of (x1, x2, ...,
		    xN) (e.g., the loss function). dL/dxi is the partial derivative of L with
		    respect to xi.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of tensors of size N.
	**/
	static public function Gradient(inputs:Dynamic, f:Dynamic, ?name:Dynamic):Dynamic;
	/**
		output = Cond(inputs) ?
		
		then_branch(inputs) : else_branch(inputs).
		
		Args:
		  cond: A `Tensor`. A scalar. If the scalar is not a boolean, the scalar is
		    converted to a boolean according to the following rule: if the scalar is a
		      numerical value, non-zero means True and zero means False; if the scalar
		      is a string, non-empty means True and empty means False.
		  inputs: A list of input tensors.
		  then_branch: A function takes 'inputs' and returns a list of tensors, whose
		    types are the same as what else_branch returns.
		  else_branch: A function takes 'inputs' and returns a list of tensors. whose
		    types are the same as what then_branch returns.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of tensors returned by either then_branch(inputs)
		  or else_branch(inputs).
	**/
	static public function If(cond:Dynamic, inputs:Dynamic, then_branch:Dynamic, else_branch:Dynamic, ?name:Dynamic):Dynamic;
	/**
		output = input; While (Cond(output)) { output = Body(output) }.
		
		Args:
		  input_: A list of `Tensor` objects. A list of input tensors whose types are
		    T.
		  cond: . A function takes 'input' and returns a tensor.  If the tensor is a
		    scalar of non-boolean, the scalar is converted to a boolean
		    according to the following rule: if the scalar is a numerical value,
		      non-zero means True and zero means False; if the scalar is a string,
		      non-empty means True and empty means False. If the tensor is not a
		      scalar, non-emptiness means True and False otherwise.
		  body: . A function takes a list of tensors and returns another list tensors.
		    Both lists have the same types as specified by T.
		  name: A name for the operation (optional).
		  hostmem: A list of integer. If i is in the list, input[i] is a host memory
		    tensor.
		
		Raises:
		  ValueError: if `cond` has implicitly captured inputs or if `cond` and `body`
		    have different signatures.
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `input`.
		  A list of output tensors whose types are T.
	**/
	static public function While(input_:Dynamic, cond:Dynamic, body:Dynamic, ?name:Dynamic, ?hostmem:Dynamic):Dynamic;
	/**
		Helper to implement a For loop using a While.
	**/
	static public function _ForUsingWhile(start:Dynamic, limit:Dynamic, delta:Dynamic, inputs:Dynamic, forbody:Dynamic, ?name:Dynamic, ?hostmem:Dynamic):Dynamic;
	/**
		Returns the input dtypes of func, excluding dtypes for captured inputs.
	**/
	static public function _GetInputDtypes(func:Dynamic):Dynamic;
	/**
		Returns a wrapper for `func` that handles loop-carried captured inputs.
	**/
	static public function _LoopBodyCaptureWrapper(func:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Sets the list of resource inputs which are read-only.
		
		This is used by AutomaticControlDependencies.
		
		Args:
		  op: PartitionedCall Operation.
		  func_graph: FuncGraph.
	**/
	static public function _set_read_only_resource_inputs_attr(op:Dynamic, func_graph:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		foldl on the list of tensors unpacked from `elems` on dimension 0.
		
		This foldl operator repeatedly applies the callable `fn` to a sequence
		of elements from first to last. The elements are made of the tensors
		unpacked from `elems` on dimension 0. The callable fn takes two tensors as
		arguments. The first argument is the accumulated value computed from the
		preceding invocation of fn, and the second is the value at the current
		position of `elems`. If `initializer` is None, `elems` must contain at least
		one element, and its first element is used as the initializer.
		
		Suppose that `elems` is unpacked into `values`, a list of tensors. The shape
		of the result tensor is fn(initializer, values[0]).shape`.
		
		This method also allows multi-arity `elems` and output of `fn`.  If `elems`
		is a (possibly nested) list or tuple of tensors, then each of these tensors
		must have a matching first (unpack) dimension.  The signature of `fn` may
		match the structure of `elems`.  That is, if `elems` is
		`(t1, [t2, t3, [t4, t5]])`, then an appropriate signature for `fn` is:
		`fn = lambda (t1, [t2, t3, [t4, t5]]):`.
		
		Args:
		  fn: The callable to be performed.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unpacked along their first dimension.  The nested sequence of the
		    resulting slices will be the first argument to `fn`.
		  initializer: (optional) A tensor or (possibly nested) sequence of tensors,
		    as the initial value for the accumulator.
		  parallel_iterations: (optional) The number of iterations allowed to run in
		    parallel.
		  back_prop: (optional) True enables support for back propagation.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  name: (optional) Name prefix for the returned tensors.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors, resulting from applying
		  `fn` consecutively to the list of tensors unpacked from `elems`, from first
		  to last.
		
		Raises:
		  TypeError: if `fn` is not callable.
		
		Example:
		  ```python
		  elems = tf.constant([1, 2, 3, 4, 5, 6])
		  sum = foldl(lambda a, x: a + x, elems)
		  # sum == 21
		  ```
	**/
	static public function foldl(fn:Dynamic, elems:Dynamic, ?initializer:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic):Dynamic;
	/**
		foldl on the list of tensors unpacked from `elems` on dimension 0. (deprecated argument values)
		
		Warning: SOME ARGUMENT VALUES ARE DEPRECATED: `(back_prop=False)`. They will be removed in a future version.
		Instructions for updating:
		back_prop=False is deprecated. Consider using tf.stop_gradient instead.
		Instead of:
		results = tf.foldl(fn, elems, back_prop=False)
		Use:
		results = tf.nest.map_structure(tf.stop_gradient, tf.foldl(fn, elems))
		
		This foldl operator repeatedly applies the callable `fn` to a sequence
		of elements from first to last. The elements are made of the tensors
		unpacked from `elems` on dimension 0. The callable fn takes two tensors as
		arguments. The first argument is the accumulated value computed from the
		preceding invocation of fn, and the second is the value at the current
		position of `elems`. If `initializer` is None, `elems` must contain at least
		one element, and its first element is used as the initializer.
		
		Suppose that `elems` is unpacked into `values`, a list of tensors. The shape
		of the result tensor is fn(initializer, values[0]).shape`.
		
		This method also allows multi-arity `elems` and output of `fn`.  If `elems`
		is a (possibly nested) list or tuple of tensors, then each of these tensors
		must have a matching first (unpack) dimension.  The signature of `fn` may
		match the structure of `elems`.  That is, if `elems` is
		`(t1, [t2, t3, [t4, t5]])`, then an appropriate signature for `fn` is:
		`fn = lambda (t1, [t2, t3, [t4, t5]]):`.
		
		Args:
		  fn: The callable to be performed.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unpacked along their first dimension.  The nested sequence of the
		    resulting slices will be the first argument to `fn`.
		  initializer: (optional) A tensor or (possibly nested) sequence of tensors,
		    as the initial value for the accumulator.
		  parallel_iterations: (optional) The number of iterations allowed to run in
		    parallel.
		  back_prop: (optional) Deprecated. False disables support for back
		    propagation. Prefer using `tf.stop_gradient` instead.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  name: (optional) Name prefix for the returned tensors.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors, resulting from applying
		  `fn` consecutively to the list of tensors unpacked from `elems`, from first
		  to last.
		
		Raises:
		  TypeError: if `fn` is not callable.
		
		Example:
		  ```python
		  elems = tf.constant([1, 2, 3, 4, 5, 6])
		  sum = foldl(lambda a, x: a + x, elems)
		  # sum == 21
		  ```
	**/
	static public function foldl_v2(fn:Dynamic, elems:Dynamic, ?initializer:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic):Dynamic;
	/**
		foldr on the list of tensors unpacked from `elems` on dimension 0.
		
		This foldr operator repeatedly applies the callable `fn` to a sequence
		of elements from last to first. The elements are made of the tensors
		unpacked from `elems`. The callable fn takes two tensors as arguments.
		The first argument is the accumulated value computed from the preceding
		invocation of fn, and the second is the value at the current position of
		`elems`. If `initializer` is None, `elems` must contain at least one element,
		and its first element is used as the initializer.
		
		Suppose that `elems` is unpacked into `values`, a list of tensors. The shape
		of the result tensor is `fn(initializer, values[0]).shape`.
		
		This method also allows multi-arity `elems` and output of `fn`.  If `elems`
		is a (possibly nested) list or tuple of tensors, then each of these tensors
		must have a matching first (unpack) dimension.  The signature of `fn` may
		match the structure of `elems`.  That is, if `elems` is
		`(t1, [t2, t3, [t4, t5]])`, then an appropriate signature for `fn` is:
		`fn = lambda (t1, [t2, t3, [t4, t5]]):`.
		
		Args:
		  fn: The callable to be performed.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unpacked along their first dimension.  The nested sequence of the
		    resulting slices will be the first argument to `fn`.
		  initializer: (optional) A tensor or (possibly nested) sequence of tensors,
		    as the initial value for the accumulator.
		  parallel_iterations: (optional) The number of iterations allowed to run in
		    parallel.
		  back_prop: (optional) True enables support for back propagation.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  name: (optional) Name prefix for the returned tensors.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors, resulting from applying
		  `fn` consecutively to the list of tensors unpacked from `elems`, from last
		  to first.
		
		Raises:
		  TypeError: if `fn` is not callable.
		
		Example:
		  ```python
		  elems = [1, 2, 3, 4, 5, 6]
		  sum = foldr(lambda a, x: a + x, elems)
		  # sum == 21
		  ```
	**/
	static public function foldr(fn:Dynamic, elems:Dynamic, ?initializer:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic):Dynamic;
	/**
		foldr on the list of tensors unpacked from `elems` on dimension 0. (deprecated argument values)
		
		Warning: SOME ARGUMENT VALUES ARE DEPRECATED: `(back_prop=False)`. They will be removed in a future version.
		Instructions for updating:
		back_prop=False is deprecated. Consider using tf.stop_gradient instead.
		Instead of:
		results = tf.foldr(fn, elems, back_prop=False)
		Use:
		results = tf.nest.map_structure(tf.stop_gradient, tf.foldr(fn, elems))
		
		This foldr operator repeatedly applies the callable `fn` to a sequence
		of elements from last to first. The elements are made of the tensors
		unpacked from `elems`. The callable fn takes two tensors as arguments.
		The first argument is the accumulated value computed from the preceding
		invocation of fn, and the second is the value at the current position of
		`elems`. If `initializer` is None, `elems` must contain at least one element,
		and its first element is used as the initializer.
		
		Suppose that `elems` is unpacked into `values`, a list of tensors. The shape
		of the result tensor is `fn(initializer, values[0]).shape`.
		
		This method also allows multi-arity `elems` and output of `fn`.  If `elems`
		is a (possibly nested) list or tuple of tensors, then each of these tensors
		must have a matching first (unpack) dimension.  The signature of `fn` may
		match the structure of `elems`.  That is, if `elems` is
		`(t1, [t2, t3, [t4, t5]])`, then an appropriate signature for `fn` is:
		`fn = lambda (t1, [t2, t3, [t4, t5]]):`.
		
		Args:
		  fn: The callable to be performed.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unpacked along their first dimension.  The nested sequence of the
		    resulting slices will be the first argument to `fn`.
		  initializer: (optional) A tensor or (possibly nested) sequence of tensors,
		    as the initial value for the accumulator.
		  parallel_iterations: (optional) The number of iterations allowed to run in
		    parallel.
		  back_prop: (optional) Deprecated. False disables support for back
		    propagation. Prefer using `tf.stop_gradient` instead.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  name: (optional) Name prefix for the returned tensors.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors, resulting from applying
		  `fn` consecutively to the list of tensors unpacked from `elems`, from last
		  to first.
		
		Raises:
		  TypeError: if `fn` is not callable.
		
		Example:
		  ```python
		  elems = [1, 2, 3, 4, 5, 6]
		  sum = foldr(lambda a, x: a + x, elems)
		  # sum == 21
		  ```
	**/
	static public function foldr_v2(fn:Dynamic, elems:Dynamic, ?initializer:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Executes a function while respecting device annotations.
		
		Currently, only those functions that execute within the same address space
		can be executed.
		
		Args:
		  args: The arguments of the function, including captured inputs.
		  f: The function to execute; an instance of `_DefinedFunction` or
		    `_EagerDefinedFunction`.
		  tout: a list containing the output dtypes enums; if `None`, inferred from
		    the signature of `f`.
		  executing_eagerly: (Optional) A boolean indicating whether the context is
		    executing eagerly. If `None`, fetched from the global context.
		  config: (Optional) A `tensorflow::ConfigProto` proto, serialized. If `None`,
		    all optimizations are disabled. Currently only handled for eager defined
		    functions.
		  executor_type: (Optional) A string for the name of the executor to be used
		    in the function call. If not set, or set to an empty string, the default
		    tensorflow executor will be used.
		
		Returns:
		  The list of `Tensor`s returned by invoking `f(args)`. If the function does
		  not return anything, then returns `None` if eager execution is enabled, or
		  the `Operation` if not.
	**/
	static public function partitioned_call(args:Dynamic, f:Dynamic, ?tout:Dynamic, ?executing_eagerly:Dynamic, ?config:Dynamic, ?executor_type:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Runs function `f` on a remote device indicated by `target`.
		
		Args:
		  target: A `Tensor` of type `string`.
		    A fully specified device name where we want to run the function.
		  args: A list of `Tensor` objects. A list of arguments for the function.
		  Tout: A list of `tf.DTypes` that has length `>= 1`.
		    The type list for the return values.
		  f: A function decorated with @Defun. The function to run remotely.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function remote_call(target:Dynamic, args:Dynamic, Tout:Dynamic, f:Dynamic, ?name:Dynamic):Dynamic;
	/**
		scan on the list of tensors unpacked from `elems` on dimension 0.
		
		See also `tf.map_fn`.
		
		The simplest version of `scan` repeatedly applies the callable `fn` to a
		sequence of elements from first to last. The elements are made of the tensors
		unpacked from `elems` on dimension 0. The callable fn takes two tensors as
		arguments. The first argument is the accumulated value computed from the
		preceding invocation of fn, and the second is the value at the current
		position of `elems`. If `initializer` is None, `elems` must contain at least
		one element, and its first element is used as the initializer.
		
		Suppose that `elems` is unpacked into `values`, a list of tensors. The shape
		of the result tensor is `[len(values)] + fn(initializer, values[0]).shape`.
		If reverse=True, it's fn(initializer, values[-1]).shape.
		
		This method also allows multi-arity `elems` and accumulator.  If `elems`
		is a (possibly nested) list or tuple of tensors, then each of these tensors
		must have a matching first (unpack) dimension.  The second argument of
		`fn` must match the structure of `elems`.
		
		If no `initializer` is provided, the output structure and dtypes of `fn`
		are assumed to be the same as its input; and in this case, the first
		argument of `fn` must match the structure of `elems`.
		
		If an `initializer` is provided, then the output of `fn` must have the same
		structure as `initializer`; and the first argument of `fn` must match
		this structure.
		
		For example, if `elems` is `(t1, [t2, t3])` and `initializer` is
		`[i1, i2]` then an appropriate signature for `fn` in `python2` is:
		`fn = lambda (acc_p1, acc_p2), (t1, [t2, t3]):` and `fn` must return a list,
		`[acc_n1, acc_n2]`.  An alternative correct signature for `fn`, and the
		 one that works in `python3`, is:
		`fn = lambda a, t:`, where `a` and `t` correspond to the input tuples.
		
		Args:
		  fn: The callable to be performed.  It accepts two arguments.  The first will
		    have the same structure as `initializer` if one is provided, otherwise it
		    will have the same structure as `elems`.  The second will have the same
		    (possibly nested) structure as `elems`.  Its output must have the same
		    structure as `initializer` if one is provided, otherwise it must have the
		    same structure as `elems`.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unpacked along their first dimension.  The nested sequence of the
		    resulting slices will be the first argument to `fn`.
		  initializer: (optional) A tensor or (possibly nested) sequence of tensors,
		    initial value for the accumulator, and the expected output type of `fn`.
		  parallel_iterations: (optional) The number of iterations allowed to run in
		    parallel.
		  back_prop: (optional) True enables support for back propagation.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  infer_shape: (optional) False disables tests for consistent output shapes.
		  reverse: (optional) True scans the tensor last to first (instead of first to
		    last).
		  name: (optional) Name prefix for the returned tensors.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors.  Each tensor packs the
		  results of applying `fn` to tensors unpacked from `elems` along the first
		  dimension, and the previous accumulator value(s), from first to last (or
		  last to first, if `reverse=True`).
		
		Raises:
		  TypeError: if `fn` is not callable or the structure of the output of
		    `fn` and `initializer` do not match.
		  ValueError: if the lengths of the output of `fn` and `initializer`
		    do not match.
		
		Examples:
		  ```python
		  elems = np.array([1, 2, 3, 4, 5, 6])
		  sum = scan(lambda a, x: a + x, elems)
		  # sum == [1, 3, 6, 10, 15, 21]
		  sum = scan(lambda a, x: a + x, elems, reverse=True)
		  # sum == [21, 20, 18, 15, 11, 6]
		  ```
		
		  ```python
		  elems = np.array([1, 2, 3, 4, 5, 6])
		  initializer = np.array(0)
		  sum_one = scan(
		      lambda a, x: x[0] - x[1] + a, (elems + 1, elems), initializer)
		  # sum_one == [1, 2, 3, 4, 5, 6]
		  ```
		
		  ```python
		  elems = np.array([1, 0, 0, 0, 0, 0])
		  initializer = (np.array(0), np.array(1))
		  fibonaccis = scan(lambda a, _: (a[1], a[0] + a[1]), elems, initializer)
		  # fibonaccis == ([1, 1, 2, 3, 5, 8], [1, 2, 3, 5, 8, 13])
		  ```
	**/
	static public function scan(fn:Dynamic, elems:Dynamic, ?initializer:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?infer_shape:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		scan on the list of tensors unpacked from `elems` on dimension 0. (deprecated argument values)
		
		Warning: SOME ARGUMENT VALUES ARE DEPRECATED: `(back_prop=False)`. They will be removed in a future version.
		Instructions for updating:
		back_prop=False is deprecated. Consider using tf.stop_gradient instead.
		Instead of:
		results = tf.scan(fn, elems, back_prop=False)
		Use:
		results = tf.nest.map_structure(tf.stop_gradient, tf.scan(fn, elems))
		
		The simplest version of `scan` repeatedly applies the callable `fn` to a
		sequence of elements from first to last. The elements are made of the tensors
		unpacked from `elems` on dimension 0. The callable fn takes two tensors as
		arguments. The first argument is the accumulated value computed from the
		preceding invocation of fn, and the second is the value at the current
		position of `elems`. If `initializer` is None, `elems` must contain at least
		one element, and its first element is used as the initializer.
		
		Suppose that `elems` is unpacked into `values`, a list of tensors. The shape
		of the result tensor is `[len(values)] + fn(initializer, values[0]).shape`.
		If reverse=True, it's fn(initializer, values[-1]).shape.
		
		This method also allows multi-arity `elems` and accumulator.  If `elems`
		is a (possibly nested) list or tuple of tensors, then each of these tensors
		must have a matching first (unpack) dimension.  The second argument of
		`fn` must match the structure of `elems`.
		
		If no `initializer` is provided, the output structure and dtypes of `fn`
		are assumed to be the same as its input; and in this case, the first
		argument of `fn` must match the structure of `elems`.
		
		If an `initializer` is provided, then the output of `fn` must have the same
		structure as `initializer`; and the first argument of `fn` must match
		this structure.
		
		For example, if `elems` is `(t1, [t2, t3])` and `initializer` is
		`[i1, i2]` then an appropriate signature for `fn` in `python2` is:
		`fn = lambda (acc_p1, acc_p2), (t1, [t2, t3]):` and `fn` must return a list,
		`[acc_n1, acc_n2]`.  An alternative correct signature for `fn`, and the
		 one that works in `python3`, is:
		`fn = lambda a, t:`, where `a` and `t` correspond to the input tuples.
		
		Args:
		  fn: The callable to be performed.  It accepts two arguments.  The first will
		    have the same structure as `initializer` if one is provided, otherwise it
		    will have the same structure as `elems`.  The second will have the same
		    (possibly nested) structure as `elems`.  Its output must have the same
		    structure as `initializer` if one is provided, otherwise it must have the
		    same structure as `elems`.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unpacked along their first dimension.  The nested sequence of the
		    resulting slices will be the first argument to `fn`.
		  initializer: (optional) A tensor or (possibly nested) sequence of tensors,
		    initial value for the accumulator, and the expected output type of `fn`.
		  parallel_iterations: (optional) The number of iterations allowed to run in
		    parallel.
		  back_prop: (optional) Deprecated. False disables support for back
		    propagation. Prefer using `tf.stop_gradient` instead.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  infer_shape: (optional) False disables tests for consistent output shapes.
		  reverse: (optional) True scans the tensor last to first (instead of first to
		    last).
		  name: (optional) Name prefix for the returned tensors.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors.  Each tensor packs the
		  results of applying `fn` to tensors unpacked from `elems` along the first
		  dimension, and the previous accumulator value(s), from first to last (or
		  last to first, if `reverse=True`).
		
		Raises:
		  TypeError: if `fn` is not callable or the structure of the output of
		    `fn` and `initializer` do not match.
		  ValueError: if the lengths of the output of `fn` and `initializer`
		    do not match.
		
		Examples:
		  ```python
		  elems = np.array([1, 2, 3, 4, 5, 6])
		  sum = scan(lambda a, x: a + x, elems)
		  # sum == [1, 3, 6, 10, 15, 21]
		  sum = scan(lambda a, x: a + x, elems, reverse=True)
		  # sum == [21, 20, 18, 15, 11, 6]
		  ```
		
		  ```python
		  elems = np.array([1, 2, 3, 4, 5, 6])
		  initializer = np.array(0)
		  sum_one = scan(
		      lambda a, x: x[0] - x[1] + a, (elems + 1, elems), initializer)
		  # sum_one == [1, 2, 3, 4, 5, 6]
		  ```
		
		  ```python
		  elems = np.array([1, 0, 0, 0, 0, 0])
		  initializer = (np.array(0), np.array(1))
		  fibonaccis = scan(lambda a, _: (a[1], a[0] + a[1]), elems, initializer)
		  # fibonaccis == ([1, 1, 2, 3, 5, 8], [1, 2, 3, 5, 8, 13])
		  ```
	**/
	static public function scan_v2(fn:Dynamic, elems:Dynamic, ?initializer:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?infer_shape:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient function for function f via backpropagation.
		
		Args:
		  input: A list of `Tensor` objects. a list of input tensors of size N + M;
		  Tout: A list of `tf.DTypes` that has length `>= 1`.
		    the type list for the input list.
		  f: A function decorated with @Defun.
		    The function we want to compute the gradient for.
		
		    The function 'f' must be a numerical function which takes N inputs and
		    produces M outputs. Its gradient function 'g', which is computed by
		    this SymbolicGradient op is a function taking N + M inputs and
		    produces N outputs.
		
		    I.e. if we have
		       (y1, y2, ..., y_M) = f(x1, x2, ..., x_N),
		    then, g is
		       (dL/dx1, dL/dx2, ..., dL/dx_N) = g(x1, x2, ..., x_N,
		                                         dL/dy1, dL/dy2, ..., dL/dy_M),
		
		    where L is a scalar-value function of (x1, x2, ..., xN) (e.g., the
		    loss function). dL/dx_i is the partial derivative of L with respect
		    to x_i.
		
		    (Needs some math expert to say the comment above better.)
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function symbolic_gradient(input:Dynamic, Tout:Dynamic, f:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}