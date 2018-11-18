/* This file is generated, do not edit! */
package tensorflow.python;
@:pythonImport("tensorflow.python") extern class Python_Module {
	/**
		When passed in as the value for the `reuse` flag, AUTO_REUSE indicates that
		get_variable() should create the requested variable if it doesn't exist or, if
		it does exist, simply return it.
	**/
	static public var AUTO_REUSE : Dynamic;
	/**
		Asserts that the given condition is true.
		
		If `condition` evaluates to false, print the list of tensors in `data`.
		`summarize` determines how many entries of the tensors to print.
		
		NOTE: In graph mode, to ensure that Assert executes, one usually attaches
		a dependency:
		
		```python
		# Ensure maximum element of x is smaller or equal to 1
		assert_op = tf.Assert(tf.less_equal(tf.reduce_max(x), 1.), [x])
		with tf.control_dependencies([assert_op]):
		  ... code using x ...
		```
		
		Args:
		  condition: The condition to evaluate.
		  data: The tensors to print out when condition is false.
		  summarize: Print this many entries of each tensor.
		  name: A name for this operation (optional).
		
		Returns:
		  assert_op: An `Operation` that, when executed, raises a
		  `tf.errors.InvalidArgumentError` if `condition` is not true.
		  @compatibility{eager} returns None.
		
		Raises:
		  @compatibility{eager} `tf.errors.InvalidArgumentError` if `condition`
		  is not true
		
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	static public function Assert(condition:Dynamic, data:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	static public var COMPILER_VERSION : Dynamic;
	static public var CXX11_ABI_FLAG : Dynamic;
	static public var DEFAULT : Dynamic;
	static public var DESCRIPTOR : Dynamic;
	/**
		out = input; for i in range(start, limit, delta) out = body(i, out).
		
		Args:
		  start: A `Tensor` of type `int32`.
		  limit: A `Tensor` of type `int32`.
		  delta: A `Tensor` of type `int32`.
		  inputs: A list of `Tensor` objects.
		    A list of input tensors whose types are T.
		  body: A function takes a list of tensors and returns another
		    list of tensors. Both lists have the same types as (int32, T...).
		  name: A name for the operation (optional).
		  hostmem: A list of integer. If i is in the list, inputs[i] is a
		    host memory tensor. In other words, (i+1)-th argument of the body
		    function is expecting a host memory.
		  rewrite_with_while: If True, using While op to implement the For.
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `input`.
		  A list of output tensors whose types are T.
	**/
	static public function For(start:Dynamic, limit:Dynamic, delta:Dynamic, inputs:Dynamic, body:Dynamic, ?name:Dynamic, ?hostmem:Dynamic, ?rewrite_with_while:Dynamic):Dynamic;
	static public var GIT_VERSION : Dynamic;
	static public var GRAPH_DEF_VERSION : Dynamic;
	static public var GRAPH_DEF_VERSION_MIN_CONSUMER : Dynamic;
	static public var GRAPH_DEF_VERSION_MIN_PRODUCER : Dynamic;
	/**
		Computes the gradient function for function f via backpropagation.
		
		Args:
		  inputs: A list of tensors of size N + M.
		  f: The function we want to compute the gradient for.
		
		    The function 'f' must be a numerical function which takes N inputs and
		    produces M outputs. Its gradient function 'g', which is  a function
		    taking N + M inputs and produces N outputs.
		
		    I.e. if we have
		       (y1, y2, ..., yM) = f(x1, x2, ..., xN),
		    then, g is
		       (dL/dx1, dL/dx2, ..., dL/dxN) = g(x1, x2, ..., xN,
		                                         dL/dy1, dL/dy2, ..., dL/dyM),
		
		    where L is a scalar-value function of (x1, x2, ..., xN) (e.g., the
		    loss function). dL/dxi is the partial derivative of L with respect
		    to xi.
		
		  name: A name for the operation (optional).
		
		Returns:
		  A list of tensors of size N.
	**/
	static public function Gradient(inputs:Dynamic, f:Dynamic, ?name:Dynamic):Dynamic;
	static public var INTERNAL_ERROR : Dynamic;
	/**
		output = Cond(inputs) ? then_branch(inputs) : else_branch(inputs).
		
		Args:
		  cond: A `Tensor`. A scalar. If the scalar is not a boolean, the scalar is
		    converted to a boolean according to the following rule: if the
		    scalar is a numerical value, non-zero means True and zero means
		    False; if the scalar is a string, non-empty means True and empty
		    means False.
		  inputs: A list of input tensors.
		  then_branch: A function takes 'inputs' and returns a list of tensors,
		      whose types are the same as what else_branch returns.
		  else_branch: A function takes 'inputs' and returns a list of tensors.
		      whose types are the same as what then_branch returns.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of tensors returned by either then_branch(inputs)
		  or else_branch(inputs).
	**/
	static public function If(cond:Dynamic, inputs:Dynamic, then_branch:Dynamic, else_branch:Dynamic, ?name:Dynamic):Dynamic;
	static public var MONOLITHIC_BUILD : Dynamic;
	static public var NEW_AXIS : Dynamic;
	/**
		Specifies that ops of type `op_type` is not differentiable.
		
		This function should *not* be used for operations that have a
		well-defined gradient that is not yet implemented.
		
		This function is only used when defining a new op type. It may be
		used for ops such as `tf.size()` that are not differentiable.  For
		example:
		
		```python
		tf.NotDifferentiable("Size")
		```
		
		The gradient computed for 'op_type' will then propagate zeros.
		
		For ops that have a well-defined gradient but are not yet implemented,
		no declaration should be made, and an error *must* be thrown if
		an attempt to request its gradient is made.
		
		Args:
		  op_type: The string type of an operation. This corresponds to the
		    `OpDef.name` field for the proto that defines the operation.
		
		Raises:
		  TypeError: If `op_type` is not a string.
	**/
	static public function NoGradient(op_type:Dynamic):Dynamic;
	/**
		Specifies that ops of type `op_type` is not differentiable.
		
		This function should *not* be used for operations that have a
		well-defined gradient that is not yet implemented.
		
		This function is only used when defining a new op type. It may be
		used for ops such as `tf.size()` that are not differentiable.  For
		example:
		
		```python
		tf.NotDifferentiable("Size")
		```
		
		The gradient computed for 'op_type' will then propagate zeros.
		
		For ops that have a well-defined gradient but are not yet implemented,
		no declaration should be made, and an error *must* be thrown if
		an attempt to request its gradient is made.
		
		Args:
		  op_type: The string type of an operation. This corresponds to the
		    `OpDef.name` field for the proto that defines the operation.
		
		Raises:
		  TypeError: If `op_type` is not a string.
	**/
	static public function NotDifferentiable(op_type:Dynamic):Dynamic;
	static public var OK : Dynamic;
	/**
		Prints a list of tensors. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-08-20.
		Instructions for updating:
		Use tf.print instead of tf.Print. Note that tf.print returns a no-output operator that directly prints the output. Outside of defuns or eager mode, this operator will not be executed unless it is directly specified in session.run or used as a control dependency for other operators. This is only a concern in graph mode. Below is an example of how to ensure tf.print executes in graph mode:
		```python
		    sess = tf.Session()
		    with sess.as_default():
		        tensor = tf.range(10)
		        print_op = tf.print(tensor)
		        with tf.control_dependencies([print_op]):
		          out = tf.add(tensor, tensor)
		        sess.run(out)
		    ```
		Additionally, to use tf.print in python 2.7, users must make sure to import
		the following:
		
		  `from __future__ import print_function`
		
		
		This is an identity op (behaves like `tf.identity`) with the side effect
		of printing `data` when evaluating.
		
		Note: This op prints to the standard error. It is not currently compatible
		  with jupyter notebook (printing to the notebook *server's* output, not into
		  the notebook).
		
		Args:
		  input_: A tensor passed through this op.
		  data: A list of tensors to print out when op is evaluated.
		  message: A string, prefix of the error message.
		  first_n: Only log `first_n` number of times. Negative numbers log always;
		           this is the default.
		  summarize: Only print this many entries of each tensor. If None, then a
		             maximum of 3 elements are printed per input tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type and contents as `input_`.
	**/
	static public function Print(input_:Dynamic, data:Dynamic, ?message:Dynamic, ?first_n:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	static public var QUANTIZED_DTYPES : Dynamic;
	static public var RECEIVED_SHUTDOWN_SIGNAL : Dynamic;
	static public var SHRINK_AXIS : Dynamic;
	static public var SHUTDOWN_IMMEDIATELY : Dynamic;
	static public var VERSION : Dynamic;
	static public var WAIT_FOR_COORDINATOR : Dynamic;
	/**
		output = input; While (Cond(output)) { output = Body(output) }.
		
		Args:
		  input_: A list of `Tensor` objects.
		    A list of input tensors whose types are T.
		  cond: . A function takes 'input' and returns a tensor.  If the tensor is
		    a scalar of non-boolean, the scalar is converted to a boolean
		    according to the following rule: if the scalar is a numerical
		    value, non-zero means True and zero means False; if the scalar is
		    a string, non-empty means True and empty means False. If the
		    tensor is not a scalar, non-emptiness means True and False
		    otherwise.
		  body: . A function takes a list of tensors and returns another
		    list tensors. Both lists have the same types as specified
		    by T.
		  name: A name for the operation (optional).
		  hostmem: A list of integer. If i is in the list, input[i] is a
		    host memory tensor.
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `input`.
		  A list of output tensors whose types are T.
	**/
	static public function While(input_:Dynamic, cond:Dynamic, body:Dynamic, ?name:Dynamic, ?hostmem:Dynamic):Dynamic;
	static public var WorkerHealth : Dynamic;
	static public var WorkerShutdownMode : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __compiler_version__ : Dynamic;
	static public var __cxx11_abi_flag__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __git_version__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __monolithic_build__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var _exported_dunders : Dynamic;
	/**
		Computes the absolute value of a tensor.
		
		Given a tensor `x` of complex numbers, this operation returns a tensor of type
		`float32` or `float64` that is the absolute value of each element in `x`. All
		elements in `x` must be complex numbers of the form \\(a + bj\\). The
		absolute value is computed as \\( \sqrt{a^2 + b^2}\\).  For example:
		```python
		x = tf.constant([[-2.25 + 4.75j], [-3.25 + 5.75j]])
		tf.abs(x)  # [5.25594902, 6.60492229]
		```
		
		Args:
		  x: A `Tensor` or `SparseTensor` of type `float16`, `float32`, `float64`,
		    `int32`, `int64`, `complex64` or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` the same size and type as `x` with absolute
		    values.
		  Note, for `complex64` or `complex128` input, the returned `Tensor` will be
		    of type `float32` or `float64`, respectively.
	**/
	static public function abs(x:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns the element-wise sum of a list of tensors.
		
		Optionally, pass `shape` and `tensor_dtype` for shape and type checking,
		otherwise, these are inferred.
		
		`tf.math.accumulate_n` performs the same operation as `tf.add_n`, but does not
		wait for all of its inputs to be ready before beginning to sum. This can
		save memory if inputs are ready at different times, since minimum temporary
		storage is proportional to the output size rather than the inputs size.
		
		`accumulate_n` is differentiable (but wasn't previous to TensorFlow 1.7).
		
		For example:
		
		```python
		a = tf.constant([[1, 2], [3, 4]])
		b = tf.constant([[5, 0], [0, 6]])
		tf.math.accumulate_n([a, b, a])  # [[7, 4], [6, 14]]
		
		# Explicitly pass shape and type
		tf.math.accumulate_n([a, b, a], shape=[2, 2], tensor_dtype=tf.int32)
		                                                               # [[7,  4],
		                                                               #  [6, 14]]
		```
		
		Args:
		  inputs: A list of `Tensor` objects, each with same shape and type.
		  shape: Shape of elements of `inputs`.
		  tensor_dtype: The type of `inputs`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of same shape and type as the elements of `inputs`.
		
		Raises:
		  ValueError: If `inputs` don't all have same shape and dtype or the shape
		  cannot be inferred.
	**/
	static public function accumulate_n(inputs:Dynamic, ?shape:Dynamic, ?tensor_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the element-wise sum of a list of tensors.
		
		`tf.accumulate_n_v2` performs the same operation as `tf.add_n`, but does not
		wait for all of its inputs to be ready before beginning to sum. This can
		save memory if inputs are ready at different times, since minimum temporary
		storage is proportional to the output size rather than the inputs size.
		
		Unlike the original `accumulate_n`, `accumulate_n_v2` is differentiable.
		
		Returns a `Tensor` of same shape and type as the elements of `inputs`.
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with the same type in: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A list of `Tensor` objects, each with same shape and type.
		  shape: A `tf.TensorShape` or list of `ints`.
		    Shape of elements of `inputs`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `inputs`.
	**/
	static public function accumulate_nv2(inputs:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function accumulate_nv2
	**/
	static public function accumulate_nv2_eager_fallback(inputs:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Applies a gradient to a given accumulator.
		
		Does not add if local_step is lesser than the accumulator's global_step.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a accumulator.
		  local_step: A `Tensor` of type `int64`.
		    The local_step value at which the gradient was computed.
		  gradient: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A tensor of the gradient to be accumulated.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function accumulator_apply_gradient(handle:Dynamic, local_step:Dynamic, gradient:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the number of gradients aggregated in the given accumulators.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to an accumulator.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function accumulator_num_accumulated(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Updates the accumulator with a new value for global_step.
		
		Logs warning if the accumulator's value is already higher than
		new_global_step.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to an accumulator.
		  new_global_step: A `Tensor` of type `int64`.
		    The new global_step value to set.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function accumulator_set_global_step(handle:Dynamic, new_global_step:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extracts the average gradient in the given ConditionalAccumulator.
		
		The op blocks until sufficient (i.e., more than num_required)
		gradients have been accumulated.  If the accumulator has already
		aggregated more than num_required gradients, it returns the average of
		the accumulated gradients.  Also automatically increments the recorded
		global_step in the accumulator by 1, and resets the aggregate to 0.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to an accumulator.
		  num_required: A `Tensor` of type `int32`.
		    Number of gradients required before we return an aggregate.
		  dtype: A `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.uint8, tf.int16, tf.int8, tf.complex64, tf.int64, tf.qint8, tf.quint8, tf.qint32, tf.bfloat16, tf.uint16, tf.complex128, tf.half, tf.uint32, tf.uint64`.
		    The data type of accumulated gradients. Needs to correspond to the type
		    of the accumulator.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function accumulator_take_gradient(handle:Dynamic, num_required:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes acos of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function acos(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function acos
	**/
	static public function acos_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes inverse hyperbolic cosine of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function acosh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function acosh
	**/
	static public function acosh_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns x + y element-wise.
		
		*NOTE*: `math.add` supports broadcasting. `AddN` does not. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`, `string`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function add(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Connect a `check_numerics` to every floating point tensor.
		
		`check_numerics` operations themselves are added for each `half`, `float`,
		or `double` tensor in the graph. For all ops in the graph, the
		`check_numerics` op for all of its (`half`, `float`, or `double`) inputs
		is guaranteed to run before the `check_numerics` op on any of its outputs.
		
		Note: This API is not compatible with the use of `tf.cond` or
		`tf.while_loop`, and will raise a `ValueError` if you attempt to call it
		in such a graph.
		
		Returns:
		  A `group` op depending on all `check_numerics` ops added.
		
		Raises:
		  ValueError: If the graph contains any numeric operations in a control flow
		    structure.
		  RuntimeError: If called with eager execution enabled.
		
		@compatibility(eager)
		Not compatible with eager execution. To check for `Inf`s and `NaN`s under
		eager execution, call tfe.seterr(inf_or_nan='raise') once before executing
		the checked operations.
		@enc_compatibility
	**/
	static public function add_check_numerics_ops():Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function add
	**/
	static public function add_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Add an `N`-minibatch `SparseTensor` to a `SparseTensorsMap`, return `N` handles.
		
		A `SparseTensor` of rank `R` is represented by three tensors: `sparse_indices`,
		`sparse_values`, and `sparse_shape`, where
		
		```sparse_indices.shape[1] == sparse_shape.shape[0] == R```
		
		An `N`-minibatch of `SparseTensor` objects is represented as a `SparseTensor`
		having a first `sparse_indices` column taking values between `[0, N)`, where
		the minibatch size `N == sparse_shape[0]`.
		
		The input `SparseTensor` must have rank `R` greater than 1, and the first
		dimension is treated as the minibatch dimension.  Elements of the `SparseTensor`
		must be sorted in increasing order of this first dimension.  The stored
		`SparseTensor` objects pointed to by each row of the output `sparse_handles`
		will have rank `R-1`.
		
		The `SparseTensor` values can then be read out as part of a minibatch by passing
		the given keys as vector elements to `TakeManySparseFromTensorsMap`.  To ensure
		the correct `SparseTensorsMap` is accessed, ensure that the same
		`container` and `shared_name` are passed to that Op.  If no `shared_name`
		is provided here, instead use the *name* of the Operation created by calling
		`AddManySparseToTensorsMap` as the `shared_name` passed to
		`TakeManySparseFromTensorsMap`.  Ensure the Operations are colocated.
		
		Args:
		  sparse_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the minibatch `SparseTensor`.
		    `sparse_indices[:, 0]` must be ordered values in `[0, N)`.
		  sparse_values: A `Tensor`.
		    1-D.  The `values` of the minibatch `SparseTensor`.
		  sparse_shape: A `Tensor` of type `int64`.
		    1-D.  The `shape` of the minibatch `SparseTensor`.
		    The minibatch size `N == sparse_shape[0]`.
		  container: An optional `string`. Defaults to `""`.
		    The container name for the `SparseTensorsMap` created by this op.
		  shared_name: An optional `string`. Defaults to `""`.
		    The shared name for the `SparseTensorsMap` created by this op.
		    If blank, the new Operation's unique name is used.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function add_many_sparse_to_tensors_map(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function add_many_sparse_to_tensors_map
	**/
	static public function add_many_sparse_to_tensors_map_eager_fallback(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Adds all input tensors element-wise.
		
		Args:
		  inputs: A list of `Tensor` or `IndexedSlices` objects, each with same shape
		    and type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of same shape and type as the elements of `inputs`.
		
		Raises:
		  ValueError: If `inputs` don't all have same shape and dtype or the shape
		  cannot be inferred.
	**/
	static public function add_n(inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function add_n
	**/
	static public function add_n_eager_fallback(inputs:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Add a `SparseTensor` to a `SparseTensorsMap` return its handle.
		
		A `SparseTensor` is represented by three tensors: `sparse_indices`,
		`sparse_values`, and `sparse_shape`.
		
		This operator takes the given `SparseTensor` and adds it to a container
		object (a `SparseTensorsMap`).  A unique key within this container is generated
		in the form of an `int64`, and this is the value that is returned.
		
		The `SparseTensor` can then be read out as part of a minibatch by passing
		the key as a vector element to `TakeManySparseFromTensorsMap`.  To ensure
		the correct `SparseTensorsMap` is accessed, ensure that the same
		`container` and `shared_name` are passed to that Op.  If no `shared_name`
		is provided here, instead use the *name* of the Operation created by calling
		`AddSparseToTensorsMap` as the `shared_name` passed to
		`TakeManySparseFromTensorsMap`.  Ensure the Operations are colocated.
		
		Args:
		  sparse_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the `SparseTensor`.
		  sparse_values: A `Tensor`. 1-D.  The `values` of the `SparseTensor`.
		  sparse_shape: A `Tensor` of type `int64`.
		    1-D.  The `shape` of the `SparseTensor`.
		  container: An optional `string`. Defaults to `""`.
		    The container name for the `SparseTensorsMap` created by this op.
		  shared_name: An optional `string`. Defaults to `""`.
		    The shared name for the `SparseTensorsMap` created by this op.
		    If blank, the new Operation's unique name is used.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function add_sparse_to_tensors_map(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function add_sparse_to_tensors_map
	**/
	static public function add_sparse_to_tensors_map_eager_fallback(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.add_to_collection()` using the default graph.
		
		See `tf.Graph.add_to_collection`
		for more details.
		
		Args:
		  name: The key for the collection. For example, the `GraphKeys` class
		    contains many standard names for collections.
		  value: The value to add to the collection.
		
		@compatibility(eager)
		Collections are only supported in eager when variables are created inside an
		EagerVariableStore (e.g. as part of a layer or template).
		@end_compatibility
	**/
	static public function add_to_collection(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.add_to_collections()` using the default graph.
		
		See `tf.Graph.add_to_collections`
		for more details.
		
		Args:
		  names: The key for the collections. The `GraphKeys` class
		    contains many standard names for collections.
		  value: The value to add to the collections.
		
		@compatibility(eager)
		Collections are only supported in eager when variables are created inside an
		EagerVariableStore (e.g. as part of a layer or template).
		@end_compatibility
	**/
	static public function add_to_collections(names:Dynamic, value:Dynamic):Dynamic;
	/**
		Returns x + y element-wise.
		
		*NOTE*: `Add` supports broadcasting. `AddN` does not. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function add_v2(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function add_v2
	**/
	static public function add_v2_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		See `tf.global_variables`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-02.
		Instructions for updating:
		Please use tf.global_variables instead.
	**/
	static public function all_variables():Dynamic;
	/**
		Returns the element-wise argument of a complex (or real) tensor.
		
		Given a tensor `input`, this operation returns a tensor of type `float` that
		is the argument of each element in `input` considered as a complex number.
		
		The elements in `input` are considered to be complex numbers of the form
		\\(a + bj\\), where *a* is the real part and *b* is the imaginary part.
		If `input` is real then *b* is zero by definition.
		
		The argument returned by this function is of the form \\(atan2(b, a)\\).
		If `input` is real, a tensor of all zeros is returned.
		
		For example:
		
		```
		# tensor 'input' is [-2.25 + 4.75j, 3.25 + 5.75j]
		tf.angle(input) ==> [2.0132, 1.056]
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float`, `double`,
		    `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32` or `float64`.
	**/
	static public function angle(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function angle
	**/
	static public function angle_eager_fallback(input:Dynamic, ?Tout:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the truth value of abs(x-y) < tolerance element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  tolerance: An optional `float`. Defaults to `1e-05`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function approximate_equal(x:Dynamic, y:Dynamic, ?tolerance:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function approximate_equal
	**/
	static public function approximate_equal_eager_fallback(x:Dynamic, y:Dynamic, ?tolerance:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the index with the largest value across dimensions of a tensor. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `argmax` instead
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  dimension: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    int32 or int64, must be in the range `[-rank(input), rank(input))`.
		    Describes which dimension of the input Tensor to reduce across. For vectors,
		    use dimension = 0.
		  output_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_type`.
	**/
	static public function arg_max(input:Dynamic, dimension:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function arg_max
	**/
	static public function arg_max_eager_fallback(input:Dynamic, dimension:Dynamic, ?output_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the index with the smallest value across dimensions of a tensor. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `argmin` instead
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  dimension: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    int32 or int64, must be in the range `[-rank(input), rank(input))`.
		    Describes which dimension of the input Tensor to reduce across. For vectors,
		    use dimension = 0.
		  output_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_type`.
	**/
	static public function arg_min(input:Dynamic, dimension:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function arg_min
	**/
	static public function arg_min_eager_fallback(input:Dynamic, dimension:Dynamic, ?output_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the index with the largest value across axes of a tensor. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		Use the `axis` argument instead
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    int32 or int64, must be in the range `[-rank(input), rank(input))`.
		    Describes which axis of the input Tensor to reduce across. For vectors,
		    use axis = 0.
		  output_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_type`.
	**/
	static public function argmax(input:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dimension:Dynamic, ?output_type:Dynamic):Dynamic;
	/**
		Returns the index with the smallest value across axes of a tensor. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		Use the `axis` argument instead
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    int32 or int64, must be in the range `[-rank(input), rank(input))`.
		    Describes which axis of the input Tensor to reduce across. For vectors,
		    use axis = 0.
		  output_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_type`.
	**/
	static public function argmin(input:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dimension:Dynamic, ?output_type:Dynamic):Dynamic;
	/**
		Converts the given `type_value` to a `DType`.
		
		Args:
		  type_value: A value that can be converted to a `tf.DType` object. This may
		    currently be a `tf.DType` object, a [`DataType`
		    enum](https://www.tensorflow.org/code/tensorflow/core/framework/types.proto),
		    a string type name, or a `numpy.dtype`.
		
		Returns:
		  A `DType` corresponding to `type_value`.
		
		Raises:
		  TypeError: If `type_value` cannot be converted to a `DType`.
	**/
	static public function as_dtype(type_value:Dynamic):Dynamic;
	/**
		Converts each entry in the given tensor to strings.  Supports many numeric
		
		types and boolean.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`, `float32`, `float64`, `bool`.
		  precision: An optional `int`. Defaults to `-1`.
		    The post-decimal precision to use for floating point numbers.
		    Only used if precision > -1.
		  scientific: An optional `bool`. Defaults to `False`.
		    Use scientific notation for floating point numbers.
		  shortest: An optional `bool`. Defaults to `False`.
		    Use shortest representation (either scientific or standard) for
		    floating point numbers.
		  width: An optional `int`. Defaults to `-1`.
		    Pad pre-decimal numbers to this width.
		    Applies to both floating point and integer numbers.
		    Only used if width > -1.
		  fill: An optional `string`. Defaults to `""`.
		    The value to pad if width > -1.  If empty, pads with spaces.
		    Another typical value is '0'.  String cannot be longer than 1 character.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function as_string(input:Dynamic, ?precision:Dynamic, ?scientific:Dynamic, ?shortest:Dynamic, ?width:Dynamic, ?fill:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function as_string
	**/
	static public function as_string_eager_fallback(input:Dynamic, ?precision:Dynamic, ?scientific:Dynamic, ?shortest:Dynamic, ?width:Dynamic, ?fill:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes asin of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function asin(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function asin
	**/
	static public function asin_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes inverse hyperbolic sine of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function asinh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function asinh
	**/
	static public function asinh_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Assert the condition `x == y` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] == y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_equal".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x == y` is False.
		  @compatibility{eager} returns None
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x == y` is False. The check can be performed immediately during eager
		    execution or if `x` and `y` are statically known.
	**/
	static public function assert_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x > y` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_greater(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] > y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_greater".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x > y` is False.
	**/
	static public function assert_greater(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x >= y` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_greater_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] >= y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to
		    "assert_greater_equal"
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x >= y` is False.
	**/
	static public function assert_greater_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert that `x` is of integer dtype.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_integer(x)]):
		  output = tf.reduce_sum(x)
		```
		
		Args:
		  x: `Tensor` whose basetype is integer and is not quantized.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_integer".
		
		Raises:
		  TypeError:  If `x.dtype` is anything other than non-quantized integer.
		
		Returns:
		  A `no_op` that does nothing.  Type can be determined statically.
	**/
	static public function assert_integer(x:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x < y` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_less(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] < y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_less".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x < y` is False.
	**/
	static public function assert_less(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x <= y` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_less_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] <= y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_less_equal"
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x <= y` is False.
	**/
	static public function assert_less_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x` and `y` are close element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_near(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have
		
		```tf.abs(x[i] - y[i]) <= atol + rtol * tf.abs(y[i])```.
		
		If both `x` and `y` are empty, this is trivially satisfied.
		
		The default `atol` and `rtol` is `10 * eps`, where `eps` is the smallest
		representable positive number such that `1 + eps != eps`.  This is about
		`1.2e-6` in `32bit`, `2.22e-15` in `64bit`, and `0.00977` in `16bit`.
		See `numpy.finfo`.
		
		Args:
		  x:  Float or complex `Tensor`.
		  y:  Float or complex `Tensor`, same `dtype` as, and broadcastable to, `x`.
		  rtol:  `Tensor`.  Same `dtype` as, and broadcastable to, `x`.
		    The relative tolerance.  Default is `10 * eps`.
		  atol:  `Tensor`.  Same `dtype` as, and broadcastable to, `x`.
		    The absolute tolerance.  Default is `10 * eps`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_near".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x` and `y` are not close enough.
		
		@compatibility(numpy)
		Similar to `numpy.assert_allclose`, except tolerance depends on data type.
		This is due to the fact that `TensorFlow` is often used with `32bit`, `64bit`,
		and even `16bit` data.
		@end_compatibility
	**/
	static public function assert_near(x:Dynamic, y:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x < 0` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_negative(x)]):
		  output = tf.reduce_sum(x)
		```
		
		Negative means, for every element `x[i]` of `x`, we have `x[i] < 0`.
		If `x` is empty this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_negative".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` is all negative.
	**/
	static public function assert_negative(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x >= 0` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_non_negative(x)]):
		  output = tf.reduce_sum(x)
		```
		
		Non-negative means, for every element `x[i]` of `x`, we have `x[i] >= 0`.
		If `x` is empty this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).
		    Defaults to "assert_non_negative".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` is all non-negative.
	**/
	static public function assert_non_negative(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x <= 0` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_non_positive(x)]):
		  output = tf.reduce_sum(x)
		```
		
		Non-positive means, for every element `x[i]` of `x`, we have `x[i] <= 0`.
		If `x` is empty this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).
		    Defaults to "assert_non_positive".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` is all non-positive.
	**/
	static public function assert_non_positive(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x != y` holds for all elements.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_none_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] != y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).
		    Defaults to "assert_none_equal".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x != y` is ever False.
	**/
	static public function assert_none_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x > 0` holds element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_positive(x)]):
		  output = tf.reduce_sum(x)
		```
		
		Positive means, for every element `x[i]` of `x`, we have `x[i] > 0`.
		If `x` is empty this is trivially satisfied.
		
		Args:
		  x:  Numeric `Tensor`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_positive".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` is all positive.
	**/
	static public function assert_positive(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Static assert that values is a "proper" iterable.
		
		`Ops` that expect iterables of `Tensor` can call this to validate input.
		Useful since `Tensor`, `ndarray`, byte/text type are all iterables themselves.
		
		Args:
		  values:  Object to be checked.
		
		Raises:
		  TypeError:  If `values` is not iterable or is one of
		    `Tensor`, `SparseTensor`, `np.array`, `tf.compat.bytes_or_text_types`.
	**/
	static public function assert_proper_iterable(values:Dynamic):Dynamic;
	/**
		Assert `x` has rank equal to `rank`.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_rank(x, 2)]):
		  output = tf.reduce_sum(x)
		```
		
		Args:
		  x:  Numeric `Tensor`.
		  rank:  Scalar integer `Tensor`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_rank".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` has specified rank.
		  If static checks determine `x` has correct rank, a `no_op` is returned.
		
		Raises:
		  ValueError:  If static checks determine `x` has wrong rank.
	**/
	static public function assert_rank(x:Dynamic, rank:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert `x` has rank equal to `rank` or higher.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_rank_at_least(x, 2)]):
		  output = tf.reduce_sum(x)
		```
		
		Args:
		  x:  Numeric `Tensor`.
		  rank:  Scalar `Tensor`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).
		    Defaults to "assert_rank_at_least".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` has specified rank or higher.
		  If static checks determine `x` has correct rank, a `no_op` is returned.
		
		Raises:
		  ValueError:  If static checks determine `x` has wrong rank.
	**/
	static public function assert_rank_at_least(x:Dynamic, rank:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert `x` has rank in `ranks`.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_rank_in(x, (2, 4))]):
		  output = tf.reduce_sum(x)
		```
		
		Args:
		  x:  Numeric `Tensor`.
		  ranks:  Iterable of scalar `Tensor` objects.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).
		    Defaults to "assert_rank_in".
		
		Returns:
		  Op raising `InvalidArgumentError` unless rank of `x` is in `ranks`.
		  If static checks determine `x` has matching rank, a `no_op` is returned.
		
		Raises:
		  ValueError:  If static checks determine `x` has mismatched rank.
	**/
	static public function assert_rank_in(x:Dynamic, ranks:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Validate and return float type based on `tensors` and `dtype`.
		
		For ops such as matrix multiplication, inputs and weights must be of the
		same float type. This function validates that all `tensors` are the same type,
		validates that type is `dtype` (if supplied), and returns the type. Type must
		be a floating point type. If neither `tensors` nor `dtype` is supplied,
		the function will return `dtypes.float32`.
		
		Args:
		  tensors: Tensors of input values. Can include `None` elements, which will be
		      ignored.
		  dtype: Expected type.
		Returns:
		  Validated type.
		Raises:
		  ValueError: if neither `tensors` nor `dtype` is supplied, or result is not
		      float, or the common type of the inputs is not a floating point type.
	**/
	static public function assert_same_float_dtype(?tensors:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function assert_scalar(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Statically asserts that the given `Tensor` is of the specified type.
		
		Args:
		  tensor: A tensorflow `Tensor`.
		  tf_type: A tensorflow type (`dtypes.float32`, `tf.int64`, `dtypes.bool`,
		    etc).
		  message: A string to prefix to the default message.
		  name:  A name to give this `Op`.  Defaults to "assert_type"
		
		Raises:
		  TypeError: If the tensors data type doesn't match `tf_type`.
		
		Returns:
		  A `no_op` that does nothing.  Type can be determined statically.
	**/
	static public function assert_type(tensor:Dynamic, tf_type:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns an Op to check if variables are initialized.
		
		NOTE: This function is obsolete and will be removed in 6 months.  Please
		change your implementation to use `report_uninitialized_variables()`.
		
		When run, the returned Op will raise the exception `FailedPreconditionError`
		if any of the variables has not yet been initialized.
		
		Note: This function is implemented by trying to fetch the values of the
		variables. If one of the variables is not initialized a message may be
		logged by the C++ runtime. This is expected.
		
		Args:
		  var_list: List of `Variable` objects to check. Defaults to the
		    value of `global_variables().`
		
		Returns:
		  An Op, or None if there are no variables.
		
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	static public function assert_variables_initialized(?var_list:Dynamic):Dynamic;
	/**
		Update 'ref' by assigning 'value' to it.
		
		This operation outputs a Tensor that holds the new value of 'ref' after
		  the value has been assigned. This makes it easier to chain operations
		  that need to use the reset value.
		
		Args:
		  ref: A mutable `Tensor`.
		    Should be from a `Variable` node. May be uninitialized.
		  value: A `Tensor`. Must have the same type as `ref`.
		    The value to be assigned to the variable.
		  validate_shape: An optional `bool`. Defaults to `True`.
		    If true, the operation will validate that the shape
		    of 'value' matches the shape of the Tensor being assigned to.  If false,
		    'ref' will take on the shape of 'value'.
		  use_locking: An optional `bool`. Defaults to `True`.
		    If True, the assignment will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` that will hold the new value of 'ref' after
		    the assignment has completed.
	**/
	static public function assign(ref:Dynamic, value:Dynamic, ?validate_shape:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update 'ref' by adding 'value' to it.
		
		This operation outputs "ref" after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types:
		    `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`,
		    `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a `Variable` node.
		  value: A `Tensor`. Must have the same type as `ref`.
		    The value to be added to the variable.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the addition will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as "ref".  Returned as a convenience for operations that want
		  to use the new value after the variable has been updated.
	**/
	static public function assign_add(ref:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update 'ref' by subtracting 'value' from it.
		
		This operation outputs "ref" after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types:
		    `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`,
		    `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a `Variable` node.
		  value: A `Tensor`. Must have the same type as `ref`.
		    The value to be subtracted to the variable.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the subtraction will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as "ref".  Returned as a convenience for operations that want
		  to use the new value after the variable has been updated.
	**/
	static public function assign_sub(ref:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes atan of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function atan(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes arctangent of `y/x` element-wise, respecting signs of the arguments.
		
		This is the angle \( \theta \in [-\pi, \pi] \) such that
		\[ x = r \cos(\theta) \]
		and
		\[ y = r \sin(\theta) \]
		where \(r = \sqrt(x^2 + y^2) \).
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function atan2(y:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function atan2
	**/
	static public function atan2_eager_fallback(y:Dynamic, x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function atan
	**/
	static public function atan_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes inverse hyperbolic tangent of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function atanh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function atanh
	**/
	static public function atanh_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Defines a barrier that persists across different graph executions.
		
		A barrier represents a key-value map, where each key is a string, and
		each value is a tuple of tensors.
		
		At runtime, the barrier contains 'complete' and 'incomplete'
		elements. A complete element has defined tensors for all components of
		its value tuple, and may be accessed using BarrierTakeMany. An
		incomplete element has some undefined components in its value tuple,
		and may be updated using BarrierInsertMany.
		
		Args:
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a value.
		  shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    The shape of each component in a value. Each shape must be 1 in the
		    first dimension. The length of this attr must be the same as the length of
		    component_types.
		  capacity: An optional `int`. Defaults to `-1`.
		    The capacity of the barrier.  The default capacity is MAX_INT32,
		    which is the largest capacity of the underlying queue.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this barrier is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this barrier will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function barrier(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Closes the given barrier.
		
		This operation signals that no more new elements will be inserted in the
		given barrier. Subsequent InsertMany that try to introduce a new key will fail.
		Subsequent InsertMany operations that just add missing components to already
		existing elements will continue to succeed. Subsequent TakeMany operations will
		continue to succeed if sufficient completed elements remain in the barrier.
		Subsequent TakeMany operations that would block will fail immediately.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a barrier.
		  cancel_pending_enqueues: An optional `bool`. Defaults to `False`.
		    If true, all pending enqueue requests that are
		    blocked on the barrier's queue will be canceled. InsertMany will fail, even
		    if no new key is introduced.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function barrier_close(handle:Dynamic, ?cancel_pending_enqueues:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the number of incomplete elements in the given barrier.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a barrier.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function barrier_incomplete_size(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		For each key, assigns the respective value to the specified component.
		
		If a key is not found in the barrier, this operation will create a new
		incomplete element. If a key is found in the barrier, and the element
		already has a value at component_index, this operation will fail with
		INVALID_ARGUMENT, and leave the barrier in an undefined state.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a barrier.
		  keys: A `Tensor` of type `string`.
		    A one-dimensional tensor of keys, with length n.
		  values: A `Tensor`.
		    An any-dimensional tensor of values, which are associated with the
		    respective keys. The 0th dimension must have length n.
		  component_index: An `int`.
		    The component of the barrier elements that is being assigned.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function barrier_insert_many(handle:Dynamic, keys:Dynamic, values:Dynamic, component_index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the number of complete elements in the given barrier.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a barrier.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function barrier_ready_size(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Takes the given number of completed elements from a barrier.
		
		This operation concatenates completed-element component tensors along
		the 0th dimension to make a single component tensor.
		
		Elements come out of the barrier when they are complete, and in the order
		in which they were placed into the barrier.  The indices output provides
		information about the batch in which each element was originally inserted
		into the barrier.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a barrier.
		  num_elements: A `Tensor` of type `int32`.
		    A single-element tensor containing the number of elements to
		    take.
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a value.
		  allow_small_batch: An optional `bool`. Defaults to `False`.
		    Allow to return less than num_elements items if barrier is
		    already closed.
		  wait_for_incomplete: An optional `bool`. Defaults to `False`.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue is empty, this operation will block for up to
		    timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (indices, keys, values).
		
		  indices: A `Tensor` of type `int64`.
		  keys: A `Tensor` of type `string`.
		  values: A list of `Tensor` objects of type `component_types`.
	**/
	static public function barrier_take_many(handle:Dynamic, num_elements:Dynamic, component_types:Dynamic, ?allow_small_batch:Dynamic, ?wait_for_incomplete:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_cholesky(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_cholesky
	**/
	static public function batch_cholesky_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  l: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  grad: A `Tensor`. Must have the same type as `l`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `l`.
	**/
	static public function batch_cholesky_grad(l:Dynamic, grad:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_cholesky_grad
	**/
	static public function batch_cholesky_grad_eager_fallback(l:Dynamic, grad:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Gather slices from `params` according to `indices` with leading batch dims.
		
		This operation assumes that the leading dimensions of `indices` are dense,
		and the gathers on the axis corresponding to the last dimension of `indices`.
		More concretely it computes:
		
		result[i1, ..., in] = params[i1, ..., in-1, indices[i1, ..., in]]
		
		Therefore `params` should be a Tensor of shape [A1, ..., AN, B1, ..., BM],
		`indices` should be a Tensor of shape [A1, ..., AN-1, C] and `result` will be
		a Tensor of size `[A1, ..., AN-1, C, B1, ..., BM]`.
		
		In the case in which indices is a 1D tensor, this operation is equivalent to
		`tf.gather`.
		
		See also `tf.gather` and `tf.gather_nd`.
		
		Args:
		  params: A Tensor. The tensor from which to gather values.
		  indices: A Tensor. Must be one of the following types: int32, int64. Index
		      tensor. Must be in range `[0, params.shape[axis]`, where `axis` is the
		      last dimension of `indices` itself.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor. Has the same type as `params`.
		
		Raises:
		  ValueError: if `indices` has an unknown shape.
	**/
	static public function batch_gather(params:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies slices of two tensors in batches.
		
		Multiplies all slices of `Tensor` `x` and `y` (each slice can be
		viewed as an element of a batch), and arranges the individual results
		in a single output tensor of the same batch size. Each of the
		individual slices can optionally be adjointed (to adjoint a matrix
		means to transpose and conjugate it) before multiplication by setting
		the `adj_x` or `adj_y` flag to `True`, which are by default `False`.
		
		The input tensors `x` and `y` are 2-D or higher with shape `[..., r_x, c_x]`
		and `[..., r_y, c_y]`.
		
		The output tensor is 2-D or higher with shape `[..., r_o, c_o]`, where:
		
		    r_o = c_x if adj_x else r_x
		    c_o = r_y if adj_y else c_y
		
		It is computed as:
		
		    output[..., :, :] = matrix(x[..., :, :]) * matrix(y[..., :, :])
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `complex64`, `complex128`.
		    2-D or higher with shape `[..., r_x, c_x]`.
		  y: A `Tensor`. Must have the same type as `x`.
		    2-D or higher with shape `[..., r_y, c_y]`.
		  adj_x: An optional `bool`. Defaults to `False`.
		    If `True`, adjoint the slices of `x`. Defaults to `False`.
		  adj_y: An optional `bool`. Defaults to `False`.
		    If `True`, adjoint the slices of `y`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function batch_mat_mul(x:Dynamic, y:Dynamic, ?adj_x:Dynamic, ?adj_y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_mat_mul
	**/
	static public function batch_mat_mul_eager_fallback(x:Dynamic, y:Dynamic, ?adj_x:Dynamic, ?adj_y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`.
		  num_lower: A `Tensor` of type `int64`.
		  num_upper: A `Tensor` of type `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_matrix_band_part(input:Dynamic, num_lower:Dynamic, num_upper:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_band_part
	**/
	static public function batch_matrix_band_part_eager_fallback(input:Dynamic, num_lower:Dynamic, num_upper:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_matrix_determinant(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_determinant
	**/
	static public function batch_matrix_determinant_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  diagonal: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function batch_matrix_diag(diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_diag
	**/
	static public function batch_matrix_diag_eager_fallback(diagonal:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_matrix_diag_part(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_diag_part
	**/
	static public function batch_matrix_diag_part_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_matrix_inverse(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_inverse
	**/
	static public function batch_matrix_inverse_eager_fallback(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`.
		  diagonal: A `Tensor`. Must have the same type as `input`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_matrix_set_diag(input:Dynamic, diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_set_diag
	**/
	static public function batch_matrix_set_diag_eager_fallback(input:Dynamic, diagonal:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`.
	**/
	static public function batch_matrix_solve(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_solve
	**/
	static public function batch_matrix_solve_eager_fallback(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		  l2_regularizer: A `Tensor` of type `float64`.
		  fast: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`.
	**/
	static public function batch_matrix_solve_ls(matrix:Dynamic, rhs:Dynamic, l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_solve_ls
	**/
	static public function batch_matrix_solve_ls_eager_fallback(matrix:Dynamic, rhs:Dynamic, l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		  lower: An optional `bool`. Defaults to `True`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`.
	**/
	static public function batch_matrix_triangular_solve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_triangular_solve
	**/
	static public function batch_matrix_triangular_solve_eager_fallback(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_self_adjoint_eig(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_self_adjoint_eig
	**/
	static public function batch_self_adjoint_eig_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  compute_v: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (e, v).
		
		  e: A `Tensor`. Has the same type as `input`.
		  v: A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_self_adjoint_eig_v2(input:Dynamic, ?compute_v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_self_adjoint_eig_v2
	**/
	static public function batch_self_adjoint_eig_v2_eager_fallback(input:Dynamic, ?compute_v:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		  compute_uv: An optional `bool`. Defaults to `True`.
		  full_matrices: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (s, u, v).
		
		  s: A `Tensor`. Has the same type as `input`.
		  u: A `Tensor`. Has the same type as `input`.
		  v: A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_svd(input:Dynamic, ?compute_uv:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_svd
	**/
	static public function batch_svd_eager_fallback(input:Dynamic, ?compute_uv:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		BatchToSpace for 4-D tensors of type T.
		
		This is a legacy version of the more general BatchToSpaceND.
		
		Rearranges (permutes) data from batch into blocks of spatial data, followed by
		cropping. This is the reverse transformation of SpaceToBatch. More specifically,
		this op outputs a copy of the input tensor where values from the `batch`
		dimension are moved in spatial blocks to the `height` and `width` dimensions,
		followed by cropping along the `height` and `width` dimensions.
		
		Args:
		  input: A `Tensor`. 4-D tensor with shape
		    `[batch*block_size*block_size, height_pad/block_size, width_pad/block_size,
		      depth]`. Note that the batch size of the input tensor must be divisible by
		    `block_size * block_size`.
		  crops: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D tensor of non-negative integers with shape `[2, 2]`. It specifies
		    how many elements to crop from the intermediate result across the spatial
		    dimensions as follows:
		
		        crops = [[crop_top, crop_bottom], [crop_left, crop_right]]
		  block_size: An `int` that is `>= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_to_space(input:Dynamic, crops:Dynamic, block_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_to_space
	**/
	static public function batch_to_space_eager_fallback(input:Dynamic, crops:Dynamic, block_size:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		BatchToSpace for N-D tensors of type T.
		
		This operation reshapes the "batch" dimension 0 into `M + 1` dimensions of shape
		`block_shape + [batch]`, interleaves these blocks back into the grid defined by
		the spatial dimensions `[1, ..., M]`, to obtain a result with the same rank as
		the input.  The spatial dimensions of this intermediate result are then
		optionally cropped according to `crops` to produce the output.  This is the
		reverse of SpaceToBatch.  See below for a precise description.
		
		Args:
		  input: A `Tensor`.
		    N-D with shape `input_shape = [batch] + spatial_shape + remaining_shape`,
		    where spatial_shape has M dimensions.
		  block_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D with shape `[M]`, all values must be >= 1.
		  crops: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D with shape `[M, 2]`, all values must be >= 0.
		      `crops[i] = [crop_start, crop_end]` specifies the amount to crop from input
		      dimension `i + 1`, which corresponds to spatial dimension `i`.  It is
		      required that
		      `crop_start[i] + crop_end[i] <= block_shape[i] * input_shape[i + 1]`.
		
		    This operation is equivalent to the following steps:
		
		    1. Reshape `input` to `reshaped` of shape:
		         [block_shape[0], ..., block_shape[M-1],
		          batch / prod(block_shape),
		          input_shape[1], ..., input_shape[N-1]]
		
		    2. Permute dimensions of `reshaped` to produce `permuted` of shape
		         [batch / prod(block_shape),
		
		          input_shape[1], block_shape[0],
		          ...,
		          input_shape[M], block_shape[M-1],
		
		          input_shape[M+1], ..., input_shape[N-1]]
		
		    3. Reshape `permuted` to produce `reshaped_permuted` of shape
		         [batch / prod(block_shape),
		
		          input_shape[1] * block_shape[0],
		          ...,
		          input_shape[M] * block_shape[M-1],
		
		          input_shape[M+1],
		          ...,
		          input_shape[N-1]]
		
		    4. Crop the start and end of dimensions `[1, ..., M]` of
		       `reshaped_permuted` according to `crops` to produce the output of shape:
		         [batch / prod(block_shape),
		
		          input_shape[1] * block_shape[0] - crops[0,0] - crops[0,1],
		          ...,
		          input_shape[M] * block_shape[M-1] - crops[M-1,0] - crops[M-1,1],
		
		          input_shape[M+1], ..., input_shape[N-1]]
		
		    Some examples:
		
		    (1) For the following input of shape `[4, 1, 1, 1]`, `block_shape = [2, 2]`, and
		        `crops = [[0, 0], [0, 0]]`:
		
		    ```
		    [[[[1]]], [[[2]]], [[[3]]], [[[4]]]]
		    ```
		
		    The output tensor has shape `[1, 2, 2, 1]` and value:
		
		    ```
		    x = [[[[1], [2]], [[3], [4]]]]
		    ```
		
		    (2) For the following input of shape `[4, 1, 1, 3]`, `block_shape = [2, 2]`, and
		        `crops = [[0, 0], [0, 0]]`:
		
		    ```
		    [[[1, 2, 3]], [[4, 5, 6]], [[7, 8, 9]], [[10, 11, 12]]]
		    ```
		
		    The output tensor has shape `[1, 2, 2, 3]` and value:
		
		    ```
		    x = [[[[1, 2, 3], [4, 5, 6]],
		          [[7, 8, 9], [10, 11, 12]]]]
		    ```
		
		    (3) For the following input of shape `[4, 2, 2, 1]`, `block_shape = [2, 2]`, and
		        `crops = [[0, 0], [0, 0]]`:
		
		    ```
		    x = [[[[1], [3]], [[9], [11]]],
		         [[[2], [4]], [[10], [12]]],
		         [[[5], [7]], [[13], [15]]],
		         [[[6], [8]], [[14], [16]]]]
		    ```
		
		    The output tensor has shape `[1, 4, 4, 1]` and value:
		
		    ```
		    x = [[[1],   [2],  [3],  [4]],
		         [[5],   [6],  [7],  [8]],
		         [[9],  [10], [11],  [12]],
		         [[13], [14], [15],  [16]]]
		    ```
		
		    (4) For the following input of shape `[8, 1, 3, 1]`, `block_shape = [2, 2]`, and
		        `crops = [[0, 0], [2, 0]]`:
		
		    ```
		    x = [[[[0], [1], [3]]], [[[0], [9], [11]]],
		         [[[0], [2], [4]]], [[[0], [10], [12]]],
		         [[[0], [5], [7]]], [[[0], [13], [15]]],
		         [[[0], [6], [8]]], [[[0], [14], [16]]]]
		    ```
		
		    The output tensor has shape `[2, 2, 4, 1]` and value:
		
		    ```
		    x = [[[[1],   [2],  [3],  [4]],
		          [[5],   [6],  [7],  [8]]],
		         [[[9],  [10], [11],  [12]],
		          [[13], [14], [15],  [16]]]]
		    ```
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_to_space_nd(input:Dynamic, block_shape:Dynamic, crops:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_to_space_nd
	**/
	static public function batch_to_space_nd_eager_fallback(input:Dynamic, block_shape:Dynamic, crops:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the Bessel i0 function of `x` element-wise.
		
		Modified Bessel function of order 0.
		
		It is preferable to use the numerically stabler function `i0e(x)` instead.
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.i0
		@end_compatibility
	**/
	static public function bessel_i0(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel i0e function of `x` element-wise.
		
		Exponentially scaled modified Bessel function of order 0 defined as
		`bessel_i0e(x) = exp(-abs(x)) bessel_i0(x)`.
		
		This function is faster and numerically stabler than `bessel_i0(x)`.
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.i0e
		@end_compatibility
	**/
	static public function bessel_i0e(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bessel_i0e
	**/
	static public function bessel_i0e_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the Bessel i1 function of `x` element-wise.
		
		Modified Bessel function of order 1.
		
		It is preferable to use the numerically stabler function `i1e(x)` instead.
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.i1
		@end_compatibility
	**/
	static public function bessel_i1(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel i1e function of `x` element-wise.
		
		Exponentially scaled modified Bessel function of order 1 defined as
		`bessel_i1e(x) = exp(-abs(x)) bessel_i1(x)`.
		
		This function is faster and numerically stabler than `bessel_i1(x)`.
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.i1e
		@end_compatibility
	**/
	static public function bessel_i1e(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bessel_i1e
	**/
	static public function bessel_i1e_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Compute the regularized incomplete beta integral \\(I_x(a, b)\\).
		
		The regularized incomplete beta integral is defined as:
		
		
		\\(I_x(a, b) = \frac{B(x; a, b)}{B(a, b)}\\)
		
		where
		
		
		\\(B(x; a, b) = \int_0^x t^{a-1} (1 - t)^{b-1} dt\\)
		
		
		is the incomplete beta function and \\(B(a, b)\\) is the *complete*
		beta function.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  b: A `Tensor`. Must have the same type as `a`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function betainc(a:Dynamic, b:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function betainc
	**/
	static public function betainc_eager_fallback(a:Dynamic, b:Dynamic, x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var bfloat16 : Dynamic;
	static public var bfloat16_ref : Dynamic;
	/**
		Counts the number of occurrences of each value in an integer array.
		
		If `minlength` and `maxlength` are not given, returns a vector with length
		`tf.reduce_max(arr) + 1` if `arr` is non-empty, and length 0 otherwise.
		If `weights` are non-None, then index `i` of the output stores the sum of the
		value in `weights` at each index where the corresponding value in `arr` is
		`i`.
		
		Args:
		  arr: An int32 tensor of non-negative values.
		  weights: If non-None, must be the same shape as arr. For each value in
		      `arr`, the bin will be incremented by the corresponding weight instead
		      of 1.
		  minlength: If given, ensures the output has length at least `minlength`,
		      padding with zeros at the end if necessary.
		  maxlength: If given, skips values in `arr` that are equal or greater than
		      `maxlength`, ensuring that the output has length at most `maxlength`.
		  dtype: If `weights` is None, determines the type of the output bins.
		
		Returns:
		  A vector with the same dtype as `weights` or the given `dtype`. The bin
		  values.
	**/
	static public function bincount(arr:Dynamic, ?weights:Dynamic, ?minlength:Dynamic, ?maxlength:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bincount
	**/
	static public function bincount_eager_fallback(arr:Dynamic, size:Dynamic, weights:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Bitcasts a tensor from one type to another without copying data.
		
		Given a tensor `input`, this operation returns a tensor that has the same buffer
		data as `input` with datatype `type`.
		
		If the input datatype `T` is larger than the output datatype `type` then the
		shape changes from [...] to [..., sizeof(`T`)/sizeof(`type`)].
		
		If `T` is smaller than `type`, the operator requires that the rightmost
		dimension be equal to sizeof(`type`)/sizeof(`T`). The shape then goes from
		[..., sizeof(`type`)/sizeof(`T`)] to [...].
		
		*NOTE*: Bitcast is implemented as a low-level cast, so machines with different
		endian orderings will give different results.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `uint32`, `uint64`, `int8`, `int16`, `complex64`, `complex128`, `qint8`, `quint8`, `qint16`, `quint16`, `qint32`.
		  type: A `tf.DType` from: `tf.bfloat16, tf.half, tf.float32, tf.float64, tf.int64, tf.int32, tf.uint8, tf.uint16, tf.uint32, tf.uint64, tf.int8, tf.int16, tf.complex64, tf.complex128, tf.qint8, tf.quint8, tf.qint16, tf.quint16, tf.qint32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `type`.
	**/
	static public function bitcast(input:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bitcast
	**/
	static public function bitcast_eager_fallback(input:Dynamic, type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var bool : Dynamic;
	static public var bool_ref : Dynamic;
	/**
		Apply boolean mask to tensor.  Numpy equivalent is `tensor[mask]`.
		
		```python
		# 1-D example
		tensor = [0, 1, 2, 3]
		mask = np.array([True, False, True, False])
		boolean_mask(tensor, mask)  # [0, 2]
		```
		
		In general, `0 < dim(mask) = K <= dim(tensor)`, and `mask`'s shape must match
		the first K dimensions of `tensor`'s shape.  We then have:
		  `boolean_mask(tensor, mask)[i, j1,...,jd] = tensor[i1,...,iK,j1,...,jd]`
		where `(i1,...,iK)` is the ith `True` entry of `mask` (row-major order).
		The `axis` could be used with `mask` to indicate the axis to mask from.
		In that case, `axis + dim(mask) <= dim(tensor)` and `mask`'s shape must match
		the first `axis + dim(mask)` dimensions of `tensor`'s shape.
		
		Args:
		  tensor:  N-D tensor.
		  mask:  K-D boolean tensor, K <= N and K must be known statically.
		  name:  A name for this operation (optional).
		  axis:  A 0-D int Tensor representing the axis in `tensor` to mask from.
		    By default, axis is 0 which will mask from the first dimension. Otherwise
		    K + axis <= N.
		
		Returns:
		  (N-K+1)-dimensional tensor populated by entries in `tensor` corresponding
		  to `True` values in `mask`.
		
		Raises:
		  ValueError:  If shapes do not conform.
		
		Examples:
		
		```python
		# 2-D example
		tensor = [[1, 2], [3, 4], [5, 6]]
		mask = np.array([True, False, True])
		boolean_mask(tensor, mask)  # [[1, 2], [5, 6]]
		```
	**/
	static public function boolean_mask(tensor:Dynamic, mask:Dynamic, ?name:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return the shape of s0 op s1 with broadcast.
		
		Given `s0` and `s1`, tensors that represent shapes, compute `r0`, the
		broadcasted shape. `s0`, `s1` and `r0` are all integer vectors.
		
		Args:
		  s0: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  s1: A `Tensor`. Must have the same type as `s0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `s0`.
	**/
	static public function broadcast_args(s0:Dynamic, s1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function broadcast_args
	**/
	static public function broadcast_args_eager_fallback(s0:Dynamic, s1:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the broadcasted dynamic shape between `shape_x` and `shape_y`.
		
		Args:
		  shape_x: A rank 1 integer `Tensor`, representing the shape of x.
		  shape_y: A rank 1 integer `Tensor`, representing the shape of y.
		
		Returns:
		  A rank 1 integer `Tensor` representing the broadcasted shape.
	**/
	static public function broadcast_dynamic_shape(shape_x:Dynamic, shape_y:Dynamic):Dynamic;
	/**
		Return the reduction indices for computing gradients of s0 op s1 with broadcast.
		
		This is typically used by gradient computations for a broadcasting operation.
		
		Args:
		  s0: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  s1: A `Tensor`. Must have the same type as `s0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (r0, r1).
		
		  r0: A `Tensor`. Has the same type as `s0`.
		  r1: A `Tensor`. Has the same type as `s0`.
	**/
	static public function broadcast_gradient_args(s0:Dynamic, s1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function broadcast_gradient_args
	**/
	static public function broadcast_gradient_args_eager_fallback(s0:Dynamic, s1:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the broadcasted static shape between `shape_x` and `shape_y`.
		
		Args:
		  shape_x: A `TensorShape`
		  shape_y: A `TensorShape`
		
		Returns:
		  A `TensorShape` representing the broadcasted shape.
		
		Raises:
		  ValueError: If the two shapes can not be broadcasted.
	**/
	static public function broadcast_static_shape(shape_x:Dynamic, shape_y:Dynamic):Dynamic;
	/**
		Broadcast an array for a compatible shape.
		
		Broadcasting is the process of making arrays to have compatible shapes
		for arithmetic operations. Two shapes are compatible if for each
		dimension pair they are either equal or one of them is one. When trying
		to broadcast a Tensor to a shape, it starts with the trailing dimensions,
		and works its way forward.
		
		For example,
		```
		>>> x = tf.constant([1, 2, 3])
		>>> y = tf.broadcast_to(x, [3, 3])
		>>> sess.run(y)
		array([[1, 2, 3],
		       [1, 2, 3],
		       [1, 2, 3]], dtype=int32)
		```
		In the above example, the input Tensor with the shape of `[1, 3]`
		is broadcasted to output Tensor with shape of `[3, 3]`.
		
		Args:
		  input: A `Tensor`. A Tensor to broadcast.
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    An 1-D `int` Tensor. The shape of the desired output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function broadcast_to(input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function broadcast_to
	**/
	static public function broadcast_to_eager_fallback(input:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Bucketizes 'input' based on 'boundaries'.
		
		For example, if the inputs are
		    boundaries = [0, 10, 100]
		    input = [[-5, 10000]
		             [150,   10]
		             [5,    100]]
		
		then the output will be
		    output = [[0, 3]
		              [3, 2]
		              [1, 3]]
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    Any shape of Tensor contains with int or float type.
		  boundaries: A list of `floats`.
		    A sorted list of floats gives the boundary of the buckets.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function bucketize(input:Dynamic, boundaries:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bucketize
	**/
	static public function bucketize_eager_fallback(input:Dynamic, boundaries:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Create a case operation.
		
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
		`tensorflow.python.util.nest`. All of the callables must return the same
		(possibly nested) value structure of lists, tuples, and/or named tuples.
		Singleton lists and tuples form the only exceptions to this: when returned by
		a callable, they are implicitly unpacked to single values. This
		behavior is disabled by passing `strict=True`.
		
		If an unordered dictionary is used for `pred_fn_pairs`, the order of the
		conditional tests is not guaranteed. However, the order is guaranteed to be
		deterministic, so that variables created in conditional branches are created
		in fixed order across runs.
		
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
		r = case([(tf.less(x, y), f1)], default=f2)
		```
		
		**Example 2:**
		
		Pseudocode:
		
		```
		if (x < y && x > z) raise OpError("Only one predicate may evaluate true");
		if (x < y) return 17;
		else if (x > z) return 23;
		else return -1;
		```
		
		Expressions:
		
		```python
		def f1(): return tf.constant(17)
		def f2(): return tf.constant(23)
		def f3(): return tf.constant(-1)
		r = case({tf.less(x, y): f1, tf.greater(x, z): f2},
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
		Casts a tensor to a new type.
		
		The operation casts `x` (in case of `Tensor`) or `x.values`
		(in case of `SparseTensor` or `IndexedSlices`) to `dtype`.
		
		For example:
		
		```python
		x = tf.constant([1.8, 2.2], dtype=tf.float32)
		tf.cast(x, tf.int32)  # [1, 2], dtype=tf.int32
		```
		
		The operation supports data types (for `x` and `dtype`) of
		`uint8`, `uint16`, `uint32`, `uint64`, `int8`, `int16`, `int32`, `int64`,
		`float16`, `float32`, `float64`, `complex64`, `complex128`, `bfloat16`.
		In case of casting from complex types (`complex64`, `complex128`) to real
		types, only the real part of `x` is returned. In case of casting from real
		types to complex types (`complex64`, `complex128`), the imaginary part of the
		returned value is set to `0`. The handling of complex types here matches the
		behavior of numpy.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices` of numeric type. It could
		    be `uint8`, `uint16`, `uint32`, `uint64`, `int8`, `int16`, `int32`,
		    `int64`, `float16`, `float32`, `float64`, `complex64`, `complex128`,
		    `bfloat16`.
		  dtype: The destination type. The list of supported dtypes is the same as
		    `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` and
		    same type as `dtype`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `dtype`.
	**/
	@:native("cast")
	static public function _cast(x:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cast
	**/
	static public function cast_eager_fallback(x:Dynamic, DstT:Dynamic, ?Truncate:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns element-wise smallest integer not less than x.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function ceil(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function ceil
	**/
	static public function ceil_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Checks a tensor for NaN and Inf values.
		
		When run, reports an `InvalidArgument` error if `tensor` has any values
		that are not a number (NaN) or infinity (Inf). Otherwise, passes `tensor` as-is.
		
		Args:
		  tensor: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  message: A `string`. Prefix of the error message.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function check_numerics(tensor:Dynamic, message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function check_numerics
	**/
	static public function check_numerics_eager_fallback(tensor:Dynamic, message:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the Cholesky decomposition of one or more square matrices.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices.
		
		The input has to be symmetric and positive definite. Only the lower-triangular
		part of the input will be used for this operation. The upper-triangular part
		will not be read.
		
		The output is a tensor of the same shape as the input
		containing the Cholesky decompositions for all input submatrices `[..., :, :]`.
		
		**Note**: The gradient computation on GPU is faster for large matrices but
		not for large batch dimensions when the submatrices are small. In this
		case it might be faster to use the CPU.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function cholesky(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cholesky
	**/
	static public function cholesky_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the reverse mode backpropagated gradient of the Cholesky algorithm.
		
		For an explanation see "Differentiation of the Cholesky algorithm" by
		Iain Murray http://arxiv.org/abs/1602.07527.
		
		Args:
		  l: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Output of batch Cholesky algorithm l = cholesky(A). Shape is `[..., M, M]`.
		    Algorithm depends only on lower triangular part of the innermost matrices of
		    this tensor.
		  grad: A `Tensor`. Must have the same type as `l`.
		    df/dl where f is some scalar function. Shape is `[..., M, M]`.
		    Algorithm depends only on lower triangular part of the innermost matrices of
		    this tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `l`.
	**/
	static public function cholesky_grad(l:Dynamic, grad:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cholesky_grad
	**/
	static public function cholesky_grad_eager_fallback(l:Dynamic, grad:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Solves systems of linear eqns `A X = RHS`, given Cholesky factorizations.
		
		```python
		# Solve 10 separate 2x2 linear systems:
		A = ... # shape 10 x 2 x 2
		RHS = ... # shape 10 x 2 x 1
		chol = tf.cholesky(A)  # shape 10 x 2 x 2
		X = tf.cholesky_solve(chol, RHS)  # shape 10 x 2 x 1
		# tf.matmul(A, X) ~ RHS
		X[3, :, 0]  # Solution to the linear system A[3, :, :] x = RHS[3, :, 0]
		
		# Solve five linear systems (K = 5) for every member of the length 10 batch.
		A = ... # shape 10 x 2 x 2
		RHS = ... # shape 10 x 2 x 5
		...
		X[3, :, 2]  # Solution to the linear system A[3, :, :] x = RHS[3, :, 2]
		```
		
		Args:
		  chol:  A `Tensor`.  Must be `float32` or `float64`, shape is `[..., M, M]`.
		    Cholesky factorization of `A`, e.g. `chol = tf.cholesky(A)`.
		    For that reason, only the lower triangular parts (including the diagonal)
		    of the last two dimensions of `chol` are used.  The strictly upper part is
		    assumed to be zero and not accessed.
		  rhs:  A `Tensor`, same type as `chol`, shape is `[..., M, K]`.
		  name:  A name to give this `Op`.  Defaults to `cholesky_solve`.
		
		Returns:
		  Solution to `A x = rhs`, shape `[..., M, K]`.
	**/
	static public function cholesky_solve(chol:Dynamic, rhs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clips tensor values to a maximum average L2-norm.
		
		Given a tensor `t`, and a maximum clip value `clip_norm`, this operation
		normalizes `t` so that its average L2-norm is less than or equal to
		`clip_norm`. Specifically, if the average L2-norm is already less than or
		equal to `clip_norm`, then `t` is not modified. If the average L2-norm is
		greater than `clip_norm`, then this operation returns a tensor of the same
		type and shape as `t` with its values set to:
		
		`t * clip_norm / l2norm_avg(t)`
		
		In this case, the average L2-norm of the output tensor is `clip_norm`.
		
		This operation is typically used to clip gradients before applying them with
		an optimizer.
		
		Args:
		  t: A `Tensor`.
		  clip_norm: A 0-D (scalar) `Tensor` > 0. A maximum clipping value.
		  name: A name for the operation (optional).
		
		Returns:
		  A clipped `Tensor`.
	**/
	static public function clip_by_average_norm(t:Dynamic, clip_norm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clips values of multiple tensors by the ratio of the sum of their norms.
		
		Given a tuple or list of tensors `t_list`, and a clipping ratio `clip_norm`,
		this operation returns a list of clipped tensors `list_clipped`
		and the global norm (`global_norm`) of all tensors in `t_list`. Optionally,
		if you've already computed the global norm for `t_list`, you can specify
		the global norm with `use_norm`.
		
		To perform the clipping, the values `t_list[i]` are set to:
		
		    t_list[i] * clip_norm / max(global_norm, clip_norm)
		
		where:
		
		    global_norm = sqrt(sum([l2norm(t)**2 for t in t_list]))
		
		If `clip_norm > global_norm` then the entries in `t_list` remain as they are,
		otherwise they're all shrunk by the global ratio.
		
		Any of the entries of `t_list` that are of type `None` are ignored.
		
		This is the correct way to perform gradient clipping (for example, see
		[Pascanu et al., 2012](http://arxiv.org/abs/1211.5063)
		([pdf](http://arxiv.org/pdf/1211.5063.pdf))).
		
		However, it is slower than `clip_by_norm()` because all the parameters must be
		ready before the clipping operation can be performed.
		
		Args:
		  t_list: A tuple or list of mixed `Tensors`, `IndexedSlices`, or None.
		  clip_norm: A 0-D (scalar) `Tensor` > 0. The clipping ratio.
		  use_norm: A 0-D (scalar) `Tensor` of type `float` (optional). The global
		    norm to use. If not provided, `global_norm()` is used to compute the norm.
		  name: A name for the operation (optional).
		
		Returns:
		  list_clipped: A list of `Tensors` of the same type as `list_t`.
		  global_norm: A 0-D (scalar) `Tensor` representing the global norm.
		
		Raises:
		  TypeError: If `t_list` is not a sequence.
		  InvalidArgumentError: If global norm is not finite.
	**/
	static public function clip_by_global_norm(t_list:Dynamic, clip_norm:Dynamic, ?use_norm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clips tensor values to a maximum L2-norm.
		
		Given a tensor `t`, and a maximum clip value `clip_norm`, this operation
		normalizes `t` so that its L2-norm is less than or equal to `clip_norm`,
		along the dimensions given in `axes`. Specifically, in the default case
		where all dimensions are used for calculation, if the L2-norm of `t` is
		already less than or equal to `clip_norm`, then `t` is not modified. If
		the L2-norm is greater than `clip_norm`, then this operation returns a
		tensor of the same type and shape as `t` with its values set to:
		
		`t * clip_norm / l2norm(t)`
		
		In this case, the L2-norm of the output tensor is `clip_norm`.
		
		As another example, if `t` is a matrix and `axes == [1]`, then each row
		of the output will have L2-norm equal to `clip_norm`. If `axes == [0]`
		instead, each column of the output will be clipped.
		
		This operation is typically used to clip gradients before applying them with
		an optimizer.
		
		Args:
		  t: A `Tensor`.
		  clip_norm: A 0-D (scalar) `Tensor` > 0. A maximum clipping value.
		  axes: A 1-D (vector) `Tensor` of type int32 containing the dimensions
		    to use for computing the L2-norm. If `None` (the default), uses all
		    dimensions.
		  name: A name for the operation (optional).
		
		Returns:
		  A clipped `Tensor`.
	**/
	static public function clip_by_norm(t:Dynamic, clip_norm:Dynamic, ?axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clips tensor values to a specified min and max.
		
		Given a tensor `t`, this operation returns a tensor of the same type and
		shape as `t` with its values clipped to `clip_value_min` and `clip_value_max`.
		Any values less than `clip_value_min` are set to `clip_value_min`. Any values
		greater than `clip_value_max` are set to `clip_value_max`.
		
		Note: `clip_value_min` needs to be smaller or equal to `clip_value_max` for
		correct results.
		
		Args:
		  t: A `Tensor`.
		  clip_value_min: A 0-D (scalar) `Tensor`, or a `Tensor` with the same shape
		    as `t`. The minimum value to clip by.
		  clip_value_max: A 0-D (scalar) `Tensor`, or a `Tensor` with the same shape
		    as `t`. The maximum value to clip by.
		  name: A name for the operation (optional).
		
		Returns:
		  A clipped `Tensor`.
		
		Raises:
		  ValueError: If the clip tensors would trigger array broadcasting
		    that would make the returned tensor larger than the input.
	**/
	static public function clip_by_value(t:Dynamic, clip_value_min:Dynamic, clip_value_max:Dynamic, ?name:Dynamic):Dynamic;
	static public function colocate_with(op:Dynamic, ?ignore_existing:Dynamic):Dynamic;
	/**
		Compare values of `input` to `threshold` and pack resulting bits into a `uint8`.
		
		Each comparison returns a boolean `true` (if `input_value > threshold`)
		or and `false` otherwise.
		
		This operation is useful for Locality-Sensitive-Hashing (LSH) and other
		algorithms that use hashing approximations of cosine and `L2` distances;
		codes can be generated from an input via:
		
		```python
		codebook_size = 50
		codebook_bits = codebook_size * 32
		codebook = tf.get_variable('codebook', [x.shape[-1].value, codebook_bits],
		                           dtype=x.dtype,
		                           initializer=tf.orthogonal_initializer())
		codes = compare_and_threshold(tf.matmul(x, codebook), threshold=0.)
		codes = tf.bitcast(codes, tf.int32)  # go from uint8 to int32
		# now codes has shape x.shape[:-1] + [codebook_size]
		```
		
		**NOTE**: Currently, the innermost dimension of the tensor must be divisible
		by 8.
		
		Given an `input` shaped `[s0, s1, ..., s_n]`, the output is
		a `uint8` tensor shaped `[s0, s1, ..., s_n / 8]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bool`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`.
		    Values to compare against `threshold` and bitpack.
		  threshold: A `Tensor`. Must have the same type as `input`.
		    Threshold to compare against.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
	**/
	static public function compare_and_bitpack(input:Dynamic, threshold:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function compare_and_bitpack
	**/
	static public function compare_and_bitpack_eager_fallback(input:Dynamic, threshold:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Converts two real numbers to a complex number.
		
		Given a tensor `real` representing the real part of a complex number, and a
		tensor `imag` representing the imaginary part of a complex number, this
		operation returns complex numbers elementwise of the form \\(a + bj\\), where
		*a* represents the `real` part and *b* represents the `imag` part.
		
		The input tensors `real` and `imag` must have the same shape.
		
		For example:
		
		```python
		real = tf.constant([2.25, 3.25])
		imag = tf.constant([4.75, 5.75])
		tf.complex(real, imag)  # [[2.25 + 4.75j], [3.25 + 5.75j]]
		```
		
		Args:
		  real: A `Tensor`. Must be one of the following types: `float32`,
		    `float64`.
		  imag: A `Tensor`. Must have the same type as `real`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64` or `complex128`.
	**/
	static public function complex(real:Dynamic, imag:Dynamic, ?name:Dynamic):Dynamic;
	static public var complex128 : Dynamic;
	static public var complex128_ref : Dynamic;
	static public var complex64 : Dynamic;
	static public var complex64_ref : Dynamic;
	/**
		Computes the complex absolute value of a tensor.
		
		Given a tensor `x` of complex numbers, this operation returns a tensor of type
		`float` or `double` that is the absolute value of each element in `x`. All
		elements in `x` must be complex numbers of the form \\(a + bj\\). The absolute
		value is computed as \\( \sqrt{a^2 + b^2}\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		  Tout: An optional `tf.DType` from: `tf.float32, tf.float64`. Defaults to `tf.float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tout`.
	**/
	static public function complex_abs(x:Dynamic, ?Tout:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function complex_abs
	**/
	static public function complex_abs_eager_fallback(x:Dynamic, ?Tout:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Concatenates tensors along one dimension.
		
		Concatenates the list of tensors `values` along dimension `axis`.  If
		`values[i].shape = [D0, D1, ... Daxis(i), ...Dn]`, the concatenated
		result has shape
		
		    [D0, D1, ... Raxis, ...Dn]
		
		where
		
		    Raxis = sum(Daxis(i))
		
		That is, the data from the input tensors is joined along the `axis`
		dimension.
		
		The number of dimensions of the input tensors must match, and all dimensions
		except `axis` must be equal.
		
		For example:
		
		```python
		t1 = [[1, 2, 3], [4, 5, 6]]
		t2 = [[7, 8, 9], [10, 11, 12]]
		tf.concat([t1, t2], 0)  # [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]
		tf.concat([t1, t2], 1)  # [[1, 2, 3, 7, 8, 9], [4, 5, 6, 10, 11, 12]]
		
		# tensor t3 with shape [2, 3]
		# tensor t4 with shape [2, 3]
		tf.shape(tf.concat([t3, t4], 0))  # [4, 3]
		tf.shape(tf.concat([t3, t4], 1))  # [2, 6]
		```
		As in Python, the `axis` could also be negative numbers. Negative `axis`
		are interpreted as counting from the end of the rank, i.e.,
		 `axis + rank(values)`-th dimension.
		
		For example:
		
		```python
		t1 = [[[1, 2], [2, 3]], [[4, 4], [5, 3]]]
		t2 = [[[7, 4], [8, 4]], [[2, 10], [15, 11]]]
		tf.concat([t1, t2], -1)
		```
		
		would produce:
		
		```python
		[[[ 1,  2,  7,  4],
		  [ 2,  3,  8,  4]],
		
		 [[ 4,  4,  2, 10],
		  [ 5,  3, 15, 11]]]
		```
		
		Note: If you are concatenating along a new axis consider using stack.
		E.g.
		
		```python
		tf.concat([tf.expand_dims(t, axis) for t in tensors], axis)
		```
		
		can be rewritten as
		
		```python
		tf.stack(tensors, axis=axis)
		```
		
		Args:
		  values: A list of `Tensor` objects or a single `Tensor`.
		  axis: 0-D `int32` `Tensor`.  Dimension along which to concatenate. Must be
		    in the range `[-rank(values), rank(values))`. As in Python, indexing
		    for axis is 0-based. Positive axis in the rage of
		    `[0, rank(values))` refers to `axis`-th dimension. And negative axis
		    refers to `axis + rank(values)`-th dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` resulting from concatenation of the input tensors.
	**/
	static public function concat(values:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function concat
	**/
	static public function concat_eager_fallback(concat_dim:Dynamic, values:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes offsets of concat inputs within its output.
		
		For example:
		
		```
		# 'x' is [2, 2, 7]
		# 'y' is [2, 3, 7]
		# 'z' is [2, 5, 7]
		concat_offset(2, [x, y, z]) => [0, 0, 0], [0, 2, 0], [0, 5, 0]
		```
		
		This is typically used by gradient computations for a concat operation.
		
		Args:
		  concat_dim: A `Tensor` of type `int32`.
		    The dimension along which to concatenate.
		  shape: A list of at least 2 `Tensor` objects with type `int32`.
		    The `N` int32 vectors representing shape of tensors being concatenated.
		  name: A name for the operation (optional).
		
		Returns:
		  A list with the same length as `shape` of `Tensor` objects with type `int32`.
	**/
	static public function concat_offset(concat_dim:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function concat_offset
	**/
	static public function concat_offset_eager_fallback(concat_dim:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Concatenates tensors along one dimension.
		
		Args:
		  values: A list of at least 2 `Tensor` objects with the same type.
		    List of `N` Tensors to concatenate. Their ranks and types must match,
		    and their sizes must match in all dimensions except `concat_dim`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D.  The dimension along which to concatenate.  Must be in the
		    range [-rank(values), rank(values)).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `values`.
	**/
	static public function concat_v2(values:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function concat_v2
	**/
	static public function concat_v2_eager_fallback(values:Dynamic, axis:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Return `true_fn()` if the predicate `pred` is true else `false_fn()`. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
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
		A conditional accumulator for aggregating gradients.
		
		The accumulator accepts gradients marked with local_step greater or
		equal to the most recent global_step known to the accumulator. The
		average can be extracted from the accumulator, provided sufficient
		gradients have been accumulated. Extracting the average automatically
		resets the aggregate to 0, and increments the global_step recorded by
		the accumulator.
		
		Args:
		  dtype: A `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.uint8, tf.int16, tf.int8, tf.complex64, tf.int64, tf.qint8, tf.quint8, tf.qint32, tf.bfloat16, tf.uint16, tf.complex128, tf.half, tf.uint32, tf.uint64`.
		    The type of the value being accumulated.
		  shape: A `tf.TensorShape` or list of `ints`.
		    The shape of the values, can be [], in which case shape is unknown.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this accumulator is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this accumulator will be shared under the
		    given name across multiple sessions.
		  reduction_type: An optional `string` from: `"MEAN", "SUM"`. Defaults to `"MEAN"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function conditional_accumulator(dtype:Dynamic, shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?reduction_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the confusion matrix from predictions and labels.
		
		The matrix columns represent the prediction labels and the rows represent the
		real labels. The confusion matrix is always a 2-D array of shape `[n, n]`,
		where `n` is the number of valid labels for a given classification task. Both
		prediction and labels must be 1-D arrays of the same shape in order for this
		function to work.
		
		If `num_classes` is `None`, then `num_classes` will be set to one plus the
		maximum value in either predictions or labels. Class labels are expected to
		start at 0. For example, if `num_classes` is 3, then the possible labels
		would be `[0, 1, 2]`.
		
		If `weights` is not `None`, then each prediction contributes its
		corresponding weight to the total value of the confusion matrix cell.
		
		For example:
		
		```python
		  tf.confusion_matrix([1, 2, 4], [2, 2, 4]) ==>
		      [[0 0 0 0 0]
		       [0 0 1 0 0]
		       [0 0 1 0 0]
		       [0 0 0 0 0]
		       [0 0 0 0 1]]
		```
		
		Note that the possible labels are assumed to be `[0, 1, 2, 3, 4]`,
		resulting in a 5x5 confusion matrix.
		
		Args:
		  labels: 1-D `Tensor` of real labels for the classification task.
		  predictions: 1-D `Tensor` of predictions for a given classification.
		  num_classes: The possible number of labels the classification task can
		               have. If this value is not provided, it will be calculated
		               using both predictions and labels array.
		  dtype: Data type of the confusion matrix.
		  name: Scope name.
		  weights: An optional `Tensor` whose shape matches `predictions`.
		
		Returns:
		  A `Tensor` of type `dtype` with shape `[n, n]` representing the confusion
		  matrix, where `n` is the number of possible labels in the classification
		  task.
		
		Raises:
		  ValueError: If both predictions and labels are not 1-D vectors and have
		    mismatched shapes, or if `weights` is not `None` and its shape doesn't
		    match `predictions`.
	**/
	static public function confusion_matrix(labels:Dynamic, predictions:Dynamic, ?num_classes:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Returns the complex conjugate of a complex number.
		
		Given a tensor `input` of complex numbers, this operation returns a tensor of
		complex numbers that are the complex conjugate of each element in `input`. The
		complex numbers in `input` must be of the form \\(a + bj\\), where *a* is the
		real part and *b* is the imaginary part.
		
		The complex conjugate returned by this operation is of the form \\(a - bj\\).
		
		For example:
		
		    # tensor 'input' is [-2.25 + 4.75j, 3.25 + 5.75j]
		    tf.math.conj(input) ==> [-2.25 - 4.75j, 3.25 - 5.75j]
		
		If `x` is real, it is returned unchanged.
		
		Args:
		  x: `Tensor` to conjugate.  Must have numeric or variant type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` that is the conjugate of `x` (with the same type).
		
		Raises:
		  TypeError: If `x` is not a numeric tensor.
	**/
	static public function conj(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function conj
	**/
	static public function conj_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Shuffle dimensions of x according to a permutation and conjugate the result.
		
		The output `y` has the same rank as `x`. The shapes of `x` and `y` satisfy:
		  `y.shape[i] == x.shape[perm[i]] for i in [0, 1, ..., rank(x) - 1]`
		  `y[i,j,k,...,s,t,u] == conj(x[perm[i], perm[j], perm[k],...,perm[s], perm[t], perm[u]])`
		
		Args:
		  x: A `Tensor`.
		  perm: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function conjugate_transpose(x:Dynamic, perm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function conjugate_transpose
	**/
	static public function conjugate_transpose_eager_fallback(x:Dynamic, perm:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns a constant tensor.
		
		Args:
		  value: A `tf.TensorProto`. Attr `value` is the tensor to return.
		  dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function const(value:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function const
	**/
	static public function const_eager_fallback(value:Dynamic, dtype:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a constant tensor.
		
		The resulting tensor is populated with values of type `dtype`, as
		specified by arguments `value` and (optionally) `shape` (see examples
		below).
		
		The argument `value` can be a constant value, or a list of values of type
		`dtype`. If `value` is a list, then the length of the list must be less
		than or equal to the number of elements implied by the `shape` argument (if
		specified). In the case where the list length is less than the number of
		elements specified by `shape`, the last element in the list will be used
		to fill the remaining entries.
		
		The argument `shape` is optional. If present, it specifies the dimensions of
		the resulting tensor. If not present, the shape of `value` is used.
		
		If the argument `dtype` is not specified, then the type is inferred from
		the type of `value`.
		
		For example:
		
		```python
		# Constant 1-D Tensor populated with value list.
		tensor = tf.constant([1, 2, 3, 4, 5, 6, 7]) => [1 2 3 4 5 6 7]
		
		# Constant 2-D tensor populated with scalar value -1.
		tensor = tf.constant(-1.0, shape=[2, 3]) => [[-1. -1. -1.]
		                                             [-1. -1. -1.]]
		```
		
		`tf.constant` differs from `tf.fill` in a few ways:
		
		*   `tf.constant` supports arbitrary constants, not just uniform scalar
		    Tensors like `tf.fill`.
		*   `tf.constant` creates a `Const` node in the computation graph with the
		    exact value at graph construction time. On the other hand, `tf.fill`
		    creates an Op in the graph that is expanded at runtime.
		*   Because `tf.constant` only embeds constant values in the graph, it does
		    not support dynamic shapes based on other runtime Tensors, whereas
		    `tf.fill` does.
		
		Args:
		  value:          A constant value (or list) of output type `dtype`.
		
		  dtype:          The type of the elements of the resulting tensor.
		
		  shape:          Optional dimensions of resulting tensor.
		
		  name:           Optional name for the tensor.
		
		  verify_shape:   Boolean that enables verification of a shape of values.
		
		Returns:
		  A Constant Tensor.
		
		Raises:
		  TypeError: if shape is incorrectly specified or unsupported.
	**/
	static public function constant(value:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic, ?verify_shape:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.container()` using the default graph.
		
		Args:
		  container_name: The container string to use in the context.
		
		Returns:
		  A context manager that specifies the default container to use for newly
		  created stateful ops.
	**/
	static public function container(container_name:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.control_dependencies()` using the default graph.
		
		See `tf.Graph.control_dependencies`
		for more details.
		
		When eager execution is enabled, any callable object in the `control_inputs`
		list will be called.
		
		Args:
		  control_inputs: A list of `Operation` or `Tensor` objects which
		    must be executed or computed before running the operations
		    defined in the context.  Can also be `None` to clear the control
		    dependencies. If eager execution is enabled, any callable object in the
		    `control_inputs` list will be called.
		
		Returns:
		 A context manager that specifies control dependencies for all
		 operations constructed within the context.
	**/
	static public function control_dependencies(control_inputs:Dynamic):Dynamic;
	/**
		Converts the given `value` to a `Tensor`.
		
		This function converts Python objects of various types to `Tensor`
		objects. It accepts `Tensor` objects, numpy arrays, Python lists,
		and Python scalars. For example:
		
		```python
		import numpy as np
		
		def my_func(arg):
		  arg = tf.convert_to_tensor(arg, dtype=tf.float32)
		  return tf.matmul(arg, arg) + arg
		
		# The following calls are equivalent.
		value_1 = my_func(tf.constant([[1.0, 2.0], [3.0, 4.0]]))
		value_2 = my_func([[1.0, 2.0], [3.0, 4.0]])
		value_3 = my_func(np.array([[1.0, 2.0], [3.0, 4.0]], dtype=np.float32))
		```
		
		This function can be useful when composing a new operation in Python
		(such as `my_func` in the example above). All standard Python op
		constructors apply this function to each of their Tensor-valued
		inputs, which allows those ops to accept numpy arrays, Python lists,
		and scalars in addition to `Tensor` objects.
		
		Note: This function diverges from default Numpy behavior for `float` and
		  `string` types when `None` is present in a Python list or scalar. Rather
		  than silently converting `None` values, an error will be thrown.
		
		Args:
		  value: An object whose type has a registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor. If missing, the
		    type is inferred from the type of `value`.
		  name: Optional name to use if a new `Tensor` is created.
		  preferred_dtype: Optional element type for the returned tensor,
		    used when dtype is None. In some cases, a caller may not have a
		    dtype in mind when converting to a tensor, so preferred_dtype
		    can be used as a soft preference.  If the conversion to
		    `preferred_dtype` is not possible, this argument has no effect.
		
		Returns:
		  An `Output` based on `value`.
		
		Raises:
		  TypeError: If no conversion function is registered for `value`.
		  RuntimeError: If a registered conversion function returns an invalid value.
	**/
	static public function convert_to_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?preferred_dtype:Dynamic):Dynamic;
	/**
		Converts the given object to a `Tensor` or an `IndexedSlices`.
		
		If `value` is an `IndexedSlices` or `SparseTensor` it is returned
		unmodified. Otherwise, it is converted to a `Tensor` using
		`convert_to_tensor()`.
		
		Args:
		  value: An `IndexedSlices`, `SparseTensor`, or an object that can be consumed
		    by `convert_to_tensor()`.
		  dtype: (Optional.) The required `DType` of the returned `Tensor` or
		    `IndexedSlices`.
		  name: (Optional.) A name to use if a new `Tensor` is created.
		
		Returns:
		  An `Tensor`, `IndexedSlices`, or `SparseTensor` based on `value`.
		
		Raises:
		  ValueError: If `dtype` does not match the element type of `value`.
	**/
	static public function convert_to_tensor_or_indexed_slices(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts value to a `SparseTensor` or `Tensor`.
		
		Args:
		  value: A `SparseTensor`, `SparseTensorValue`, or an object whose type has a
		    registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor. If missing, the
		    type is inferred from the type of `value`.
		  name: Optional name to use if a new `Tensor` is created.
		
		Returns:
		  A `SparseTensor` or `Tensor` based on `value`.
		
		Raises:
		  RuntimeError: If result type is incompatible with `dtype`.
	**/
	static public function convert_to_tensor_or_sparse_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes cos of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function cos(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cos
	**/
	static public function cos_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes hyperbolic cosine of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function cosh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cosh
	**/
	static public function cosh_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes number of nonzero elements across dimensions of a tensor. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` has no entries, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		**NOTE** Floating point comparison to zero is done by exact floating point
		equality check.  Small values are **not** rounded to zero for purposes of
		the nonzero check.
		
		For example:
		
		```python
		x = tf.constant([[0, 1, 0], [1, 1, 0]])
		tf.count_nonzero(x)  # 3
		tf.count_nonzero(x, 0)  # [1, 2, 0]
		tf.count_nonzero(x, 1)  # [1, 2]
		tf.count_nonzero(x, 1, keepdims=True)  # [[1], [2]]
		tf.count_nonzero(x, [0, 1])  # 3
		```
		
		**NOTE** Strings are compared against zero-length empty string `""`. Any
		string with a size greater than zero is already considered as nonzero.
		
		For example:
		```python
		x = tf.constant(["", "a", "  ", "b", ""])
		tf.count_nonzero(x) # 3, with "a", "  ", and "b" as nonzero strings.
		```
		
		Args:
		  input_tensor: The tensor to reduce. Should be of numeric type, `bool`,
		    or `string`.
		  axis: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions. Must be in the range
		    `[-rank(input_tensor), rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  dtype: The output dtype; defaults to `tf.int64`.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor (number of nonzero values).
	**/
	static public function count_nonzero(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Increments 'ref' until it reaches 'limit'.
		
		Args:
		  ref: A Variable. Must be one of the following types: `int32`, `int64`.
		    Should be from a scalar `Variable` node.
		  limit: An `int`.
		    If incrementing ref would bring it above limit, instead generates an
		    'OutOfRange' error.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `ref`.
		  A copy of the input before increment. If nothing else modifies the
		  input, the values produced will all be distinct.
	**/
	static public function count_up_to(ref:Dynamic, limit:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create a list of partitioned variables according to the given `slicing`.
		
		Currently only one dimension of the full variable can be sliced, and the
		full variable can be reconstructed by the concatenation of the returned
		list along that dimension.
		
		Args:
		  shape: List of integers.  The shape of the full variable.
		  slicing: List of integers.  How to partition the variable.
		    Must be of the same length as `shape`.  Each value
		    indicate how many slices to create in the corresponding
		    dimension.  Presently only one of the values can be more than 1;
		    that is, the variable can only be sliced along one dimension.
		
		    For convenience, The requested number of partitions does not have to
		    divide the corresponding dimension evenly.  If it does not, the
		    shapes of the partitions are incremented by 1 starting from partition
		    0 until all slack is absorbed.  The adjustment rules may change in the
		    future, but as you can save/restore these variables with different
		    slicing specifications this should not be a problem.
		  initializer: A `Tensor` of shape `shape` or a variable initializer
		    function.  If a function, it will be called once for each slice,
		    passing the shape and data type of the slice as parameters.  The
		    function must return a tensor with the same shape as the slice.
		  dtype: Type of the variables. Ignored if `initializer` is a `Tensor`.
		  trainable: If True also add all the variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES`.
		  collections: List of graph collections keys to add the variables to.
		    Defaults to `[GraphKeys.GLOBAL_VARIABLES]`.
		  name: Optional name for the full variable.  Defaults to
		    `"PartitionedVariable"` and gets uniquified automatically.
		  reuse: Boolean or `None`; if `True` and name is set, it would reuse
		    previously created variables. if `False` it will create new variables.
		    if `None`, it would inherit the parent scope reuse.
		
		Returns:
		  A list of Variables corresponding to the slicing.
		
		Raises:
		  ValueError: If any of the arguments is malformed.
	**/
	static public function create_partitioned_variables(shape:Dynamic, slicing:Dynamic, initializer:Dynamic, ?dtype:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Compute the pairwise cross product.
		
		`a` and `b` must be the same shape; they can either be simple 3-element vectors,
		or any shape where the innermost dimension is 3. In the latter case, each pair
		of corresponding 3-element vectors is cross-multiplied independently.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    A tensor containing 3-element vectors.
		  b: A `Tensor`. Must have the same type as `a`.
		    Another tensor, of same type and shape as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function cross(a:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cross
	**/
	static public function cross_eager_fallback(a:Dynamic, b:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Compute the cumulative product of the tensor `x` along `axis`.
		
		By default, this op performs an inclusive cumprod, which means that the
		first element of the input is identical to the first element of the output:
		
		```python
		tf.math.cumprod([a, b, c])  # [a, a * b, a * b * c]
		```
		
		By setting the `exclusive` kwarg to `True`, an exclusive cumprod is
		performed
		instead:
		
		```python
		tf.math.cumprod([a, b, c], exclusive=True)  # [1, a, a * b]
		```
		
		By setting the `reverse` kwarg to `True`, the cumprod is performed in the
		opposite direction:
		
		```python
		tf.math.cumprod([a, b, c], reverse=True)  # [a * b * c, b * c, c]
		```
		
		This is more efficient than using separate `tf.reverse` ops.
		The `reverse` and `exclusive` kwargs can also be combined:
		
		```python
		tf.math.cumprod([a, b, c], exclusive=True, reverse=True)  # [b * c, c, 1]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`,
		     `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`,
		     `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  axis: A `Tensor` of type `int32` (default: 0). Must be in the range
		    `[-rank(x), rank(x))`.
		  exclusive: If `True`, perform exclusive cumprod.
		  reverse: A `bool` (default: False).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function cumprod(x:Dynamic, ?axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cumprod
	**/
	static public function cumprod_eager_fallback(x:Dynamic, axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Compute the cumulative sum of the tensor `x` along `axis`.
		
		By default, this op performs an inclusive cumsum, which means that the first
		element of the input is identical to the first element of the output:
		
		```python
		tf.cumsum([a, b, c])  # [a, a + b, a + b + c]
		```
		
		By setting the `exclusive` kwarg to `True`, an exclusive cumsum is performed
		instead:
		
		```python
		tf.cumsum([a, b, c], exclusive=True)  # [0, a, a + b]
		```
		
		By setting the `reverse` kwarg to `True`, the cumsum is performed in the
		opposite direction:
		
		```python
		tf.cumsum([a, b, c], reverse=True)  # [a + b + c, b + c, c]
		```
		
		This is more efficient than using separate `tf.reverse` ops.
		
		The `reverse` and `exclusive` kwargs can also be combined:
		
		```python
		tf.cumsum([a, b, c], exclusive=True, reverse=True)  # [b + c, c, 0]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`,
		     `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`,
		     `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  axis: A `Tensor` of type `int32` (default: 0). Must be in the range
		    `[-rank(x), rank(x))`.
		  exclusive: If `True`, perform exclusive cumsum.
		  reverse: A `bool` (default: False).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function cumsum(x:Dynamic, ?axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cumsum
	**/
	static public function cumsum_eager_fallback(x:Dynamic, axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Decorator to define a function with a custom gradient.
		
		This decorator allows fine grained control over the gradients of a sequence
		for operations.  This may be useful for multiple reasons, including providing
		a more efficient or numerically stable gradient for a sequence of operations.
		
		For example, consider the following function that commonly occurs in the
		computation of cross entropy and log likelihoods:
		
		```python
		def log1pexp(x):
		  return tf.log(1 + tf.exp(x))
		```
		
		Due to numerical instability, the gradient this function evaluated at x=100 is
		NaN.  For example:
		
		```python
		x = tf.constant(100.)
		y = log1pexp(x)
		dy = tf.gradients(y, x) # Will be NaN when evaluated.
		```
		
		The gradient expression can be analytically simplified to provide numerical
		stability:
		
		```python
		@tf.custom_gradient
		def log1pexp(x):
		  e = tf.exp(x)
		  def grad(dy):
		    return dy * (1 - 1 / (1 + e))
		  return tf.log(1 + e), grad
		```
		
		With this definition, the gradient at x=100 will be correctly evaluated as
		1.0.
		
		See also `tf.RegisterGradient` which registers a gradient function for a
		primitive TensorFlow operation. `tf.custom_gradient` on the other hand allows
		for fine grained control over the gradient computation of a sequence of
		operations.
		
		Note that if the decorated function uses `Variable`s, the enclosing variable
		scope must be using `ResourceVariable`s.
		
		Args:
		  f: function `f(*x)` that returns a tuple `(y, grad_fn)` where:
		     - `x` is a sequence of `Tensor` inputs to the function.
		     - `y` is a `Tensor` or sequence of `Tensor` outputs of applying
		       TensorFlow operations in `f` to `x`.
		     - `grad_fn` is a function with the signature `g(*grad_ys)` which returns
		       a list of `Tensor`s - the derivatives of `Tensor`s in `y` with respect
		       to the `Tensor`s in `x`.  `grad_ys` is a `Tensor` or sequence of
		       `Tensor`s the same size as `y` holding the initial value gradients for
		       each `Tensor` in `y`. If `f` uses `Variable`s (that are not part of the
		       inputs), i.e. through `get_variable`, then `grad_fn` should have
		       signature `g(*grad_ys, variables=None)`, where `variables` is a list of
		       the `Variable`s, and return a 2-tuple `(grad_xs, grad_vars)`, where
		       `grad_xs` is the same as above, and `grad_vars` is a `list<Tensor>`
		       with the derivatives of `Tensor`s in `y` with respect to the variables
		       (that is, grad_vars has one Tensor per variable in variables).
		
		Returns:
		  A function `h(x)` which returns the same value as `f(x)[0]` and whose
		  gradient (as calculated by `tf.gradients`) is determined by `f(x)[1]`.
	**/
	static public function custom_gradient(f:Dynamic):Dynamic;
	/**
		Identity op for gradient debugging.
		
		This op is hidden from public in Python. It is used by TensorFlow Debugger to
		register gradient tensors for gradient debugging.
		This op operates on non-reference-type tensors.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function debug_gradient_identity(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function debug_gradient_identity
	**/
	static public function debug_gradient_identity_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Identity op for gradient debugging.
		
		This op is hidden from public in Python. It is used by TensorFlow Debugger to
		register gradient tensors for gradient debugging.
		This op operates on reference-type tensors.
		
		Args:
		  input: A mutable `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `input`.
	**/
	static public function debug_gradient_ref_identity(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decode web-safe base64-encoded strings.
		
		Input may or may not have padding at the end. See EncodeBase64 for padding.
		Web-safe means that input must use - and _ instead of + and /.
		
		Args:
		  input: A `Tensor` of type `string`. Base64 strings to decode.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function decode_base64(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function decode_base64
	**/
	static public function decode_base64_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Decompress strings.
		
		This op decompresses each element of the `bytes` input `Tensor`, which
		is assumed to be compressed using the given `compression_type`.
		
		The `output` is a string `Tensor` of the same shape as `bytes`,
		each element containing the decompressed data from the corresponding
		element in `bytes`.
		
		Args:
		  bytes: A `Tensor` of type `string`.
		    A Tensor of string which is compressed.
		  compression_type: An optional `string`. Defaults to `""`.
		    A scalar containing either (i) the empty string (no
		    compression), (ii) "ZLIB", or (iii) "GZIP".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function decode_compressed(bytes:Dynamic, ?compression_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function decode_compressed
	**/
	static public function decode_compressed_eager_fallback(bytes:Dynamic, ?compression_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Convert CSV records to tensors. Each column maps to one tensor.
		
		RFC 4180 format is expected for the CSV records.
		(https://tools.ietf.org/html/rfc4180)
		Note that we allow leading and trailing spaces with int or float field.
		
		Args:
		  records: A `Tensor` of type `string`.
		    Each string is a record/row in the csv and all records should have
		    the same format.
		  record_defaults: A list of `Tensor` objects with specific types.
		    Acceptable types are `float32`, `float64`, `int32`, `int64`, `string`.
		    One tensor per column of the input record, with either a
		    scalar default value for that column or an empty vector if the column is
		    required.
		  field_delim: An optional `string`. Defaults to `","`.
		    char delimiter to separate fields in a record.
		  use_quote_delim: An optional `bool`. Defaults to `True`.
		    If false, treats double quotation marks as regular
		    characters inside of the string fields (ignoring RFC 4180, Section 2,
		    Bullet 5).
		  name: A name for the operation (optional).
		  na_value: Additional string to recognize as NA/NaN.
		  select_cols: Optional sorted list of column indices to select. If specified,
		    only this subset of columns will be parsed and returned.
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `record_defaults`.
		  Each tensor will have the same shape as records.
		
		Raises:
		  ValueError: If any of the arguments is malformed.
	**/
	static public function decode_csv(records:Dynamic, record_defaults:Dynamic, ?field_delim:Dynamic, ?use_quote_delim:Dynamic, ?name:Dynamic, ?na_value:Dynamic, ?select_cols:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function decode_csv
	**/
	static public function decode_csv_eager_fallback(records:Dynamic, record_defaults:Dynamic, ?field_delim:Dynamic, ?use_quote_delim:Dynamic, ?na_value:Dynamic, ?select_cols:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Convert JSON-encoded Example records to binary protocol buffer strings.
		
		This op translates a tensor containing Example records, encoded using
		the [standard JSON
		mapping](https://developers.google.com/protocol-buffers/docs/proto3#json),
		into a tensor containing the same records encoded as binary protocol
		buffers. The resulting tensor can then be fed to any of the other
		Example-parsing ops.
		
		Args:
		  json_examples: A `Tensor` of type `string`.
		    Each string is a JSON object serialized according to the JSON
		    mapping of the Example proto.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function decode_json_example(json_examples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function decode_json_example
	**/
	static public function decode_json_example_eager_fallback(json_examples:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Reinterpret the bytes of a string as a vector of numbers.
		
		Args:
		  bytes: A `Tensor` of type `string`.
		    All the elements must have the same length.
		  out_type: A `tf.DType` from: `tf.half, tf.float32, tf.float64, tf.int32, tf.uint16, tf.uint8, tf.int16, tf.int8, tf.int64`.
		  little_endian: An optional `bool`. Defaults to `True`.
		    Whether the input `bytes` are in little-endian order.
		    Ignored for `out_type` values that are stored in a single byte like
		    `uint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function decode_raw(bytes:Dynamic, out_type:Dynamic, ?little_endian:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function decode_raw
	**/
	static public function decode_raw_eager_fallback(bytes:Dynamic, out_type:Dynamic, ?little_endian:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Makes a copy of `x`.
		
		Args:
		  x: A `Tensor`. The source tensor of type `T`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function deep_copy(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function deep_copy
	**/
	static public function deep_copy_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Default variable creator.
	**/
	static public function default_variable_creator(?next_creator:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Default variable creator.
	**/
	static public function default_variable_creator_v2(?next_creator:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Delete the tensor for the given tensor handle.
		
		This is EXPERIMENTAL and subject to change.
		
		Delete the tensor of a given tensor handle. The tensor is produced
		in a previous run() and stored in the state of the session.
		
		Args:
		  handle: The string representation of a persistent tensor handle.
		  name: Optional name prefix for the return tensor.
		
		Returns:
		  A pair of graph elements. The first is a placeholder for feeding a
		  tensor handle and the second is a deletion operation.
	**/
	static public function delete_session_tensor(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function delete_session_tensor
	**/
	static public function delete_session_tensor_eager_fallback(handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	/**
		Decorator for marking specific function argument values as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument values. It has the following format:
		
		  Calling <function> (from <module>) with <arg>=<value> is deprecated and
		  will be removed after <date>. Instructions for updating:
		    <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: If `True`, warn only the first time this function is called with
		    deprecated argument values. Otherwise, every call (with a deprecated
		    argument value) will log a warning.
		  **deprecated_kwargs: The deprecated argument values.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated_arg_values(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic, ?deprecated_kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		DepthToSpace for tensors of type T.
		
		Rearranges data from depth into blocks of spatial data.
		This is the reverse transformation of SpaceToDepth. More specifically,
		this op outputs a copy of the input tensor where values from the `depth`
		dimension are moved in spatial blocks to the `height` and `width` dimensions.
		The attr `block_size` indicates the input block size and how the data is moved.
		
		  * Chunks of data of size `block_size * block_size` from depth are rearranged
		    into non-overlapping blocks of size `block_size x block_size`
		  * The width the output tensor is `input_depth * block_size`, whereas the
		    height is `input_height * block_size`.
		  * The Y, X coordinates within each block of the output image are determined
		    by the high order component of the input channel index.
		  * The depth of the input tensor must be divisible by
		    `block_size * block_size`.
		
		The `data_format` attr specifies the layout of the input and output tensors
		with the following options:
		  "NHWC": `[ batch, height, width, channels ]`
		  "NCHW": `[ batch, channels, height, width ]`
		  "NCHW_VECT_C":
		      `qint8 [ batch, channels / 4, height, width, 4 ]`
		
		It is useful to consider the operation as transforming a 6-D Tensor.
		e.g. for data_format = NHWC,
		     Each element in the input tensor can be specified via 6 coordinates,
		     ordered by decreasing memory layout significance as:
		     n,iY,iX,bY,bX,oC  (where n=batch index, iX, iY means X or Y coordinates
		                        within the input image, bX, bY means coordinates
		                        within the output block, oC means output channels).
		     The output would be the input transposed to the following layout:
		     n,iY,bY,iX,bX,oC
		
		This operation is useful for resizing the activations between convolutions
		(but keeping all data), e.g. instead of pooling. It is also useful for training
		purely convolutional models.
		
		For example, given an input of shape `[1, 1, 1, 4]`, data_format = "NHWC" and
		block_size = 2:
		
		```
		x = [[[[1, 2, 3, 4]]]]
		
		```
		
		This operation will output a tensor of shape `[1, 2, 2, 1]`:
		
		```
		   [[[[1], [2]],
		     [[3], [4]]]]
		```
		
		Here, the input has a batch of 1 and each batch element has shape `[1, 1, 4]`,
		the corresponding output will have 2x2 elements and will have a depth of
		1 channel (1 = `4 / (block_size * block_size)`).
		The output element shape is `[2, 2, 1]`.
		
		For an input tensor with larger depth, here of shape `[1, 1, 1, 12]`, e.g.
		
		```
		x = [[[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]]]]
		```
		
		This operation, for block size of 2, will return the following tensor of shape
		`[1, 2, 2, 3]`
		
		```
		   [[[[1, 2, 3], [4, 5, 6]],
		     [[7, 8, 9], [10, 11, 12]]]]
		
		```
		
		Similarly, for the following input of shape `[1 2 2 4]`, and a block size of 2:
		
		```
		x =  [[[[1, 2, 3, 4],
		       [5, 6, 7, 8]],
		      [[9, 10, 11, 12],
		       [13, 14, 15, 16]]]]
		```
		
		the operator will return the following tensor of shape `[1 4 4 1]`:
		
		```
		x = [[[ [1],   [2],  [5],  [6]],
		      [ [3],   [4],  [7],  [8]],
		      [ [9],  [10], [13],  [14]],
		      [ [11], [12], [15],  [16]]]]
		
		```
		
		Args:
		  input: A `Tensor`.
		  block_size: An `int` that is `>= 2`.
		    The size of the spatial block, same as in Space2Depth.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NCHW_VECT_C"`. Defaults to `"NHWC"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function depth_to_space(input:Dynamic, block_size:Dynamic, ?name:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function depth_to_space
	**/
	static public function depth_to_space_eager_fallback(input:Dynamic, block_size:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Dequantize the 'input' tensor into a float Tensor.
		
		[min_range, max_range] are scalar floats that specify the range for
		the 'input' data. The 'mode' attribute controls exactly which calculations are
		used to convert the float values to their quantized equivalents.
		
		In 'MIN_COMBINED' mode, each value of the tensor will undergo the following:
		
		```
		if T == qint8, in[i] += (range(T) + 1)/ 2.0
		out[i] = min_range + (in[i]* (max_range - min_range) / range(T))
		```
		here `range(T) = numeric_limits<T>::max() - numeric_limits<T>::min()`
		
		*MIN_COMBINED Mode Example*
		
		If the input comes from a QuantizedRelu6, the output type is
		quint8 (range of 0-255) but the possible range of QuantizedRelu6 is
		0-6.  The min_range and max_range values are therefore 0.0 and 6.0.
		Dequantize on quint8 will take each value, cast to float, and multiply
		by 6 / 255.
		Note that if quantizedtype is qint8, the operation will additionally add
		each value by 128 prior to casting.
		
		If the mode is 'MIN_FIRST', then this approach is used:
		
		```c++
		num_discrete_values = 1 << (# of bits in T)
		range_adjust = num_discrete_values / (num_discrete_values - 1)
		range = (range_max - range_min) * range_adjust
		range_scale = range / num_discrete_values
		const double offset_input = static_cast<double>(input) - lowest_quantized;
		result = range_min + ((input - numeric_limits<T>::min()) * range_scale)
		```
		
		*SCALED mode Example*
		
		`SCALED` mode matches the quantization approach used in
		`QuantizeAndDequantize{V2|V3}`.
		
		If the mode is `SCALED`, we do not use the full range of the output type,
		choosing to elide the lowest possible value for symmetry (e.g., output range is
		-127 to 127, not -128 to 127 for signed 8 bit quantization), so that 0.0 maps to
		0.
		
		We first find the range of values in our tensor. The
		range we use is always centered on 0, so we find m such that
		```c++
		  m = max(abs(input_min), abs(input_max))
		```
		
		Our input tensor range is then `[-m, m]`.
		
		Next, we choose our fixed-point quantization buckets, `[min_fixed, max_fixed]`.
		If T is signed, this is
		```
		  num_bits = sizeof(T) * 8
		  [min_fixed, max_fixed] =
		      [-(1 << (num_bits - 1) - 1), (1 << (num_bits - 1)) - 1]
		```
		
		Otherwise, if T is unsigned, the fixed-point range is
		```
		  [min_fixed, max_fixed] = [0, (1 << num_bits) - 1]
		```
		
		From this we compute our scaling factor, s:
		```c++
		  s = (2 * m) / (max_fixed - min_fixed)
		```
		
		Now we can dequantize the elements of our tensor:
		```c++
		result = input * s
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_range: A `Tensor` of type `float32`.
		    The minimum scalar value possibly produced for the input.
		  max_range: A `Tensor` of type `float32`.
		    The maximum scalar value possibly produced for the input.
		  mode: An optional `string` from: `"MIN_COMBINED", "MIN_FIRST", "SCALED"`. Defaults to `"MIN_COMBINED"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function dequantize(input:Dynamic, min_range:Dynamic, max_range:Dynamic, ?mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function dequantize
	**/
	static public function dequantize_eager_fallback(input:Dynamic, min_range:Dynamic, max_range:Dynamic, ?mode:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Deserialize and concatenate `SparseTensors` from a serialized minibatch.
		
		The input `serialized_sparse` must be a string matrix of shape `[N x 3]` where
		`N` is the minibatch size and the rows correspond to packed outputs of
		`serialize_sparse`.  The ranks of the original `SparseTensor` objects
		must all match.  When the final `SparseTensor` is created, it has rank one
		higher than the ranks of the incoming `SparseTensor` objects (they have been
		concatenated along a new row dimension).
		
		The output `SparseTensor` object's shape values for all dimensions but the
		first are the max across the input `SparseTensor` objects' shape values
		for the corresponding dimensions.  Its first shape value is `N`, the minibatch
		size.
		
		The input `SparseTensor` objects' indices are assumed ordered in
		standard lexicographic order.  If this is not the case, after this
		step run `sparse.reorder` to restore index ordering.
		
		For example, if the serialized input is a `[2, 3]` matrix representing two
		original `SparseTensor` objects:
		
		    index = [ 0]
		            [10]
		            [20]
		    values = [1, 2, 3]
		    shape = [50]
		
		and
		
		    index = [ 2]
		            [10]
		    values = [4, 5]
		    shape = [30]
		
		then the final deserialized `SparseTensor` will be:
		
		    index = [0  0]
		            [0 10]
		            [0 20]
		            [1  2]
		            [1 10]
		    values = [1, 2, 3, 4, 5]
		    shape = [2 50]
		
		Args:
		  serialized_sparse: 2-D `Tensor` of type `string` of shape `[N, 3]`.
		    The serialized and packed `SparseTensor` objects.
		  dtype: The `dtype` of the serialized `SparseTensor` objects.
		  rank: (optional) Python int, the rank of the `SparseTensor` objects.
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A `SparseTensor` representing the deserialized `SparseTensor`s,
		  concatenated along the `SparseTensor`s' first dimension.
		
		  All of the serialized `SparseTensor`s must have had the same rank and type.
	**/
	static public function deserialize_many_sparse(serialized_sparse:Dynamic, dtype:Dynamic, ?rank:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function deserialize_many_sparse
	**/
	static public function deserialize_many_sparse_eager_fallback(serialized_sparse:Dynamic, dtype:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Deserialize `SparseTensor` objects.
		
		The input `serialized_sparse` must have the shape `[?, ?, ..., ?, 3]` where
		the last dimension stores serialized `SparseTensor` objects and the other N
		dimensions (N >= 0) correspond to a batch. The ranks of the original
		`SparseTensor` objects must all match. When the final `SparseTensor` is
		created, its rank is the rank of the incoming `SparseTensor` objects plus N;
		the sparse tensors have been concatenated along new dimensions, one for each
		batch.
		
		The output `SparseTensor` object's shape values for the original dimensions
		are the max across the input `SparseTensor` objects' shape values for the
		corresponding dimensions. The new dimensions match the size of the batch.
		
		The input `SparseTensor` objects' indices are assumed ordered in
		standard lexicographic order.  If this is not the case, after this
		step run `SparseReorder` to restore index ordering.
		
		For example, if the serialized input is a `[2 x 3]` matrix representing two
		original `SparseTensor` objects:
		
		    index = [ 0]
		            [10]
		            [20]
		    values = [1, 2, 3]
		    shape = [50]
		
		and
		
		    index = [ 2]
		            [10]
		    values = [4, 5]
		    shape = [30]
		
		then the final deserialized `SparseTensor` will be:
		
		    index = [0  0]
		            [0 10]
		            [0 20]
		            [1  2]
		            [1 10]
		    values = [1, 2, 3, 4, 5]
		    shape = [2 50]
		
		Args:
		  serialized_sparse: The serialized `SparseTensor` objects.
		    The last dimension must have 3 columns.
		  dtype: The `dtype` of the serialized `SparseTensor` objects.
		  rank: (optional) Python int, the rank of the `SparseTensor` objects.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A `SparseTensor` representing the deserialized `SparseTensor` objects.
	**/
	static public function deserialize_sparse(serialized_sparse:Dynamic, dtype:Dynamic, ?rank:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function deserialize_sparse
	**/
	static public function deserialize_sparse_eager_fallback(serialized_sparse:Dynamic, dtype:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.device()` using the default graph.
		
		See
		`tf.Graph.device`
		for more details.
		
		Args:
		  device_name_or_function: The device name or function to use in
		    the context.
		
		Returns:
		  A context manager that specifies the default device to use for newly
		  created ops.
		
		Raises:
		  RuntimeError: If eager execution is enabled and a function is passed in.
	**/
	static public function device(device_name_or_function:Dynamic):Dynamic;
	/**
		Returns a diagonal tensor with a given diagonal values.
		
		Given a `diagonal`, this operation returns a tensor with the `diagonal` and
		everything else padded with zeros. The diagonal is computed as follows:
		
		Assume `diagonal` has dimensions [D1,..., Dk], then the output is a tensor of
		rank 2k with dimensions [D1,..., Dk, D1,..., Dk] where:
		
		`output[i1,..., ik, i1,..., ik] = diagonal[i1, ..., ik]` and 0 everywhere else.
		
		For example:
		
		```
		# 'diagonal' is [1, 2, 3, 4]
		tf.diag(diagonal) ==> [[1, 0, 0, 0]
		                       [0, 2, 0, 0]
		                       [0, 0, 3, 0]
		                       [0, 0, 0, 4]]
		```
		
		Args:
		  diagonal: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		    Rank k tensor where k is at most 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function diag(diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function diag
	**/
	static public function diag_eager_fallback(diagonal:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the diagonal part of the tensor.
		
		This operation returns a tensor with the `diagonal` part
		of the `input`. The `diagonal` part is computed as follows:
		
		Assume `input` has dimensions `[D1,..., Dk, D1,..., Dk]`, then the output is a
		tensor of rank `k` with dimensions `[D1,..., Dk]` where:
		
		`diagonal[i1,..., ik] = input[i1, ..., ik, i1,..., ik]`.
		
		For example:
		
		```
		# 'input' is [[1, 0, 0, 0]
		              [0, 2, 0, 0]
		              [0, 0, 3, 0]
		              [0, 0, 0, 4]]
		
		tf.diag_part(input) ==> [1, 2, 3, 4]
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		    Rank k tensor where k is even and not zero.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function diag_part(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function diag_part
	**/
	static public function diag_part_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes Psi, the derivative of Lgamma (the log of the absolute value of
		
		`Gamma(x)`), element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function digamma(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function digamma
	**/
	static public function digamma_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Divides x / y elementwise (using Python 2 division operator semantics).
		
		NOTE: Prefer using the Tensor division operator or tf.divide which obey Python
		division operator semantics.
		
		This function divides `x` and `y`, forcing Python 2.7 semantics. That is,
		if one of `x` or `y` is a float, then the result will be a float.
		Otherwise, the output will be an integer type. Flooring semantics are used
		for integer division.
		
		Args:
		  x: `Tensor` numerator of real numeric type.
		  y: `Tensor` denominator of real numeric type.
		  name: A name for the operation (optional).
		Returns:
		  `x / y` returns the quotient of x and y.
	**/
	static public function div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function div
	**/
	static public function div_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes an unsafe divide which returns 0 if the y is zero.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  y: A `Tensor` whose dtype is compatible with `x`.
		  name: A name for the operation (optional).
		Returns:
		  The element-wise value of the x divided by y.
	**/
	static public function div_no_nan(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function div_no_nan
	**/
	static public function div_no_nan_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes Python style division of `x` by `y`.
	**/
	static public function divide(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var double : Dynamic;
	static public var double_ref : Dynamic;
	static public var dtype_range : Dynamic;
	/**
		Partitions `data` into `num_partitions` tensors using indices from `partitions`.
		
		For each index tuple `js` of size `partitions.ndim`, the slice `data[js, ...]`
		becomes part of `outputs[partitions[js]]`.  The slices with `partitions[js] = i`
		are placed in `outputs[i]` in lexicographic order of `js`, and the first
		dimension of `outputs[i]` is the number of entries in `partitions` equal to `i`.
		In detail,
		
		```python
		    outputs[i].shape = [sum(partitions == i)] + data.shape[partitions.ndim:]
		
		    outputs[i] = pack([data[js, ...] for js if partitions[js] == i])
		```
		
		`data.shape` must start with `partitions.shape`.
		
		For example:
		
		```python
		    # Scalar partitions.
		    partitions = 1
		    num_partitions = 2
		    data = [10, 20]
		    outputs[0] = []  # Empty with shape [0, 2]
		    outputs[1] = [[10, 20]]
		
		    # Vector partitions.
		    partitions = [0, 0, 1, 1, 0]
		    num_partitions = 2
		    data = [10, 20, 30, 40, 50]
		    outputs[0] = [10, 20, 50]
		    outputs[1] = [30, 40]
		```
		
		See `dynamic_stitch` for an example on how to merge partitions back.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/DynamicPartition.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`.
		  partitions: A `Tensor` of type `int32`.
		    Any shape.  Indices in the range `[0, num_partitions)`.
		  num_partitions: An `int` that is `>= 1`.
		    The number of partitions to output.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num_partitions` `Tensor` objects with the same type as `data`.
	**/
	static public function dynamic_partition(data:Dynamic, partitions:Dynamic, num_partitions:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function dynamic_partition
	**/
	static public function dynamic_partition_eager_fallback(data:Dynamic, partitions:Dynamic, num_partitions:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Interleave the values from the `data` tensors into a single tensor.
		
		Builds a merged tensor such that
		
		```python
		    merged[indices[m][i, ..., j], ...] = data[m][i, ..., j, ...]
		```
		
		For example, if each `indices[m]` is scalar or vector, we have
		
		```python
		    # Scalar indices:
		    merged[indices[m], ...] = data[m][...]
		
		    # Vector indices:
		    merged[indices[m][i], ...] = data[m][i, ...]
		```
		
		Each `data[i].shape` must start with the corresponding `indices[i].shape`,
		and the rest of `data[i].shape` must be constant w.r.t. `i`.  That is, we
		must have `data[i].shape = indices[i].shape + constant`.  In terms of this
		`constant`, the output shape is
		
		    merged.shape = [max(indices)] + constant
		
		Values are merged in order, so if an index appears in both `indices[m][i]` and
		`indices[n][j]` for `(m,i) < (n,j)` the slice `data[n][j]` will appear in the
		merged result. If you do not need this guarantee, ParallelDynamicStitch might
		perform better on some devices.
		
		For example:
		
		```python
		    indices[0] = 6
		    indices[1] = [4, 1]
		    indices[2] = [[5, 2], [0, 3]]
		    data[0] = [61, 62]
		    data[1] = [[41, 42], [11, 12]]
		    data[2] = [[[51, 52], [21, 22]], [[1, 2], [31, 32]]]
		    merged = [[1, 2], [11, 12], [21, 22], [31, 32], [41, 42],
		              [51, 52], [61, 62]]
		```
		
		This method can be used to merge partitions created by `dynamic_partition`
		as illustrated on the following example:
		
		```python
		    # Apply function (increments x_i) on elements for which a certain condition
		    # apply (x_i != -1 in this example).
		    x=tf.constant([0.1, -1., 5.2, 4.3, -1., 7.4])
		    condition_mask=tf.not_equal(x,tf.constant(-1.))
		    partitioned_data = tf.dynamic_partition(
		        x, tf.cast(condition_mask, tf.int32) , 2)
		    partitioned_data[1] = partitioned_data[1] + 1.0
		    condition_indices = tf.dynamic_partition(
		        tf.range(tf.shape(x)[0]), tf.cast(condition_mask, tf.int32) , 2)
		    x = tf.dynamic_stitch(condition_indices, partitioned_data)
		    # Here x=[1.1, -1., 6.2, 5.3, -1, 8.4], the -1. values remain
		    # unchanged.
		```
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/DynamicStitch.png" alt>
		</div>
		
		Args:
		  indices: A list of at least 1 `Tensor` objects with type `int32`.
		  data: A list with the same length as `indices` of `Tensor` objects with the same type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function dynamic_stitch(indices:Dynamic, data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function dynamic_stitch
	**/
	static public function dynamic_stitch_eager_fallback(indices:Dynamic, data:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the Levenshtein distance between sequences.
		
		This operation takes variable-length sequences (`hypothesis` and `truth`),
		each provided as a `SparseTensor`, and computes the Levenshtein distance.
		You can normalize the edit distance by length of `truth` by setting
		`normalize` to true.
		
		For example, given the following input:
		
		```python
		# 'hypothesis' is a tensor of shape `[2, 1]` with variable-length values:
		#   (0,0) = ["a"]
		#   (1,0) = ["b"]
		hypothesis = tf.SparseTensor(
		    [[0, 0, 0],
		     [1, 0, 0]],
		    ["a", "b"],
		    (2, 1, 1))
		
		# 'truth' is a tensor of shape `[2, 2]` with variable-length values:
		#   (0,0) = []
		#   (0,1) = ["a"]
		#   (1,0) = ["b", "c"]
		#   (1,1) = ["a"]
		truth = tf.SparseTensor(
		    [[0, 1, 0],
		     [1, 0, 0],
		     [1, 0, 1],
		     [1, 1, 0]],
		    ["a", "b", "c", "a"],
		    (2, 2, 2))
		
		normalize = True
		```
		
		This operation would return the following:
		
		```python
		# 'output' is a tensor of shape `[2, 2]` with edit distances normalized
		# by 'truth' lengths.
		output ==> [[inf, 1.0],  # (0,0): no truth, (0,1): no hypothesis
		           [0.5, 1.0]]  # (1,0): addition, (1,1): no hypothesis
		```
		
		Args:
		  hypothesis: A `SparseTensor` containing hypothesis sequences.
		  truth: A `SparseTensor` containing truth sequences.
		  normalize: A `bool`. If `True`, normalizes the Levenshtein distance by
		    length of `truth.`
		  name: A name for the operation (optional).
		
		Returns:
		  A dense `Tensor` with rank `R - 1`, where R is the rank of the
		  `SparseTensor` inputs `hypothesis` and `truth`.
		
		Raises:
		  TypeError: If either `hypothesis` or `truth` are not a `SparseTensor`.
	**/
	static public function edit_distance(hypothesis:Dynamic, truth:Dynamic, ?normalize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function edit_distance
	**/
	static public function edit_distance_eager_fallback(hypothesis_indices:Dynamic, hypothesis_values:Dynamic, hypothesis_shape:Dynamic, truth_indices:Dynamic, truth_values:Dynamic, truth_shape:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A generalized contraction between tensors of arbitrary dimension.
		
		This function returns a tensor whose elements are defined by `equation`,
		which is written in a shorthand form inspired by the Einstein summation
		convention.  As an example, consider multiplying two matrices
		A and B to form a matrix C.  The elements of C are given by:
		
		```
		  C[i,k] = sum_j A[i,j] * B[j,k]
		```
		
		The corresponding `equation` is:
		
		```
		  ij,jk->ik
		```
		
		In general, the `equation` is obtained from the more familiar element-wise
		equation by
		  1. removing variable names, brackets, and commas,
		  2. replacing "*" with ",",
		  3. dropping summation signs, and
		  4. moving the output to the right, and replacing "=" with "->".
		
		Many common operations can be expressed in this way.  For example:
		
		```python
		# Matrix multiplication
		>>> einsum('ij,jk->ik', m0, m1)  # output[i,k] = sum_j m0[i,j] * m1[j, k]
		
		# Dot product
		>>> einsum('i,i->', u, v)  # output = sum_i u[i]*v[i]
		
		# Outer product
		>>> einsum('i,j->ij', u, v)  # output[i,j] = u[i]*v[j]
		
		# Transpose
		>>> einsum('ij->ji', m)  # output[j,i] = m[i,j]
		
		# Batch matrix multiplication
		>>> einsum('aij,ajk->aik', s, t)  # out[a,i,k] = sum_j s[a,i,j] * t[a, j, k]
		```
		
		This function behaves like `numpy.einsum`, but does not support:
		
		* Ellipses (subscripts like `ij...,jk...->ik...`)
		* Subscripts where an axis appears more than once for a single input
		  (e.g. `ijj,k->ik`).
		* Subscripts that are summed across multiple inputs (e.g., `ij,ij,jk->ik`).
		
		Args:
		  equation: a `str` describing the contraction, in the same format as
		    `numpy.einsum`.
		  *inputs: the inputs to contract (each one a `Tensor`), whose shapes should
		    be consistent with `equation`.
		  name: A name for the operation (optional).
		
		Returns:
		  The contracted `Tensor`, with shape determined by `equation`.
		
		Raises:
		  ValueError: If
		    - the format of `equation` is incorrect,
		    - the number of inputs implied by `equation` does not match `len(inputs)`,
		    - an axis appears in the output subscripts but not in any of the inputs,
		    - the number of dimensions of an input differs from the number of
		      indices in its subscript, or
		    - the input shapes are inconsistent along a particular axis.
	**/
	static public function einsum(equation:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates a tensor with the given shape.
		
		This operation creates a tensor of `shape` and `dtype`.
		
		  Args:
		    shape: A `Tensor` of type `int32`.
		      1-D. Represents the shape of the output tensor.
		    dtype: A `tf.DType`.
		    init: An optional `bool`. Defaults to `False`.
		      If True, initialize the returned tensor with the default value of dtype.  Otherwise, the implementation is free not to initializethe tensor's content.
		    name: A name for the operation (optional).
		
		  Returns:
		    A `Tensor` of type `dtype`.
		  
	**/
	static public function empty(shape:Dynamic, dtype:Dynamic, ?init:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function empty
	**/
	static public function empty_eager_fallback(shape:Dynamic, dtype:Dynamic, ?init:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Enables eager execution for the lifetime of this program.
		
		Eager execution provides an imperative interface to TensorFlow. With eager
		execution enabled, TensorFlow functions execute operations immediately (as
		opposed to adding to a graph to be executed later in a `tf.Session`) and
		return concrete values (as opposed to symbolic references to a node in a
		computational graph).
		
		For example:
		
		```python
		tf.enable_eager_execution()
		
		# After eager execution is enabled, operations are executed as they are
		# defined and Tensor objects hold concrete values, which can be accessed as
		# numpy.ndarray`s through the numpy() method.
		assert tf.multiply(6, 7).numpy() == 42
		```
		
		Eager execution cannot be enabled after TensorFlow APIs have been used to
		create or execute graphs. It is typically recommended to invoke this function
		at program startup and not in a library (as most libraries should be usable
		both with and without eager execution).
		
		Args:
		  config: (Optional.) A `tf.ConfigProto` to use to configure the environment
		    in which operations are executed. Note that `tf.ConfigProto` is also
		    used to configure graph execution (via `tf.Session`) and many options
		    within `tf.ConfigProto` are not implemented (or are irrelevant) when
		    eager execution is enabled.
		  device_policy: (Optional.) Policy controlling how operations requiring
		    inputs on a specific device (e.g., a GPU 0) handle inputs on a different
		    device  (e.g. GPU 1 or CPU). When set to None, an appropriate value will be
		    picked automatically. The value picked may change between TensorFlow
		    releases.
		    Valid values:
		    - tf.contrib.eager.DEVICE_PLACEMENT_EXPLICIT: raises an error if the
		      placement is not correct.
		    - tf.contrib.eager.DEVICE_PLACEMENT_WARN: copies the tensors which are not
		      on the right device but logs a warning.
		    - tf.contrib.eager.DEVICE_PLACEMENT_SILENT: silently copies the tensors.
		      Note that this may hide performance problems as there is no notification
		      provided when operations are blocked on the tensor being copied between
		      devices.
		    - tf.contrib.eager.DEVICE_PLACEMENT_SILENT_FOR_INT32: silently copies
		      int32 tensors, raising errors on the other ones.
		  execution_mode: (Optional.) Policy controlling how operations dispatched are
		    actually executed. When set to None, an appropriate value will be picked
		    automatically. The value picked may change between TensorFlow releases.
		    Valid values:
		    - tf.contrib.eager.SYNC: executes each operation synchronously.
		    - tf.contrib.eager.ASYNC: executes each operation asynchronously. These
		      operations may return "non-ready" handles.
		
		Raises:
		  ValueError: If eager execution is enabled after creating/executing a
		   TensorFlow graph, or if options provided conflict with a previous call
		   to this function.
	**/
	static public function enable_eager_execution(?config:Dynamic, ?device_policy:Dynamic, ?execution_mode:Dynamic):Dynamic;
	/**
		Encode strings into web-safe base64 format.
		
		Refer to the following article for more information on base64 format:
		en.wikipedia.org/wiki/Base64. Base64 strings may have padding with '=' at the
		end so that the encoded has length multiple of 4. See Padding section of the
		link above.
		
		Web-safe means that the encoder uses - and _ instead of + and /.
		
		Args:
		  input: A `Tensor` of type `string`. Strings to be encoded.
		  pad: An optional `bool`. Defaults to `False`.
		    Bool whether padding is applied at the ends.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function encode_base64(input:Dynamic, ?pad:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function encode_base64
	**/
	static public function encode_base64_eager_fallback(input:Dynamic, ?pad:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Encode a ResourceHandle proto as custom numpy struct type.
	**/
	static public function encode_resource_handle(resource_handle:Dynamic):Dynamic;
	/**
		Ensures that the tensor's shape matches the expected shape.
		
		Raises an error if the input tensor's shape does not match the specified shape.
		Returns the input tensor otherwise.
		
		Args:
		  input: A `Tensor`. A tensor, whose shape is to be validated.
		  shape: A `tf.TensorShape` or list of `ints`.
		    The expected (possibly partially specified) shape of the input tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function ensure_shape(input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function ensure_shape
	**/
	static public function ensure_shape_eager_fallback(input:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the truth value of (x == y) element-wise.
		
		*NOTE*: `math.equal` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `quint8`, `qint8`, `qint32`, `string`, `bool`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function equal
	**/
	static public function equal_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the Gauss error function of `x` element-wise.
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
	**/
	static public function erf(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function erf
	**/
	static public function erf_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the complementary error function of `x` element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function erfc(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function erfc
	**/
	static public function erfc_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns True if the current thread has eager execution enabled.
		
		Eager execution is typically enabled via `tf.enable_eager_execution`,
		but may also be enabled within the context of a Python function via
		tf.contrib.eager.py_func.
	**/
	static public function executing_eagerly():Dynamic;
	/**
		Computes exponential of x element-wise.  \\(y = e^x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function exp(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function exp
	**/
	static public function exp_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Inserts a dimension of 1 into a tensor's shape. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		Use the `axis` argument instead
		
		Given a tensor `input`, this operation inserts a dimension of 1 at the
		dimension index `axis` of `input`'s shape. The dimension index `axis` starts
		at zero; if you specify a negative number for `axis` it is counted backward
		from the end.
		
		This operation is useful if you want to add a batch dimension to a single
		element. For example, if you have a single image of shape `[height, width,
		channels]`, you can make it a batch of 1 image with `expand_dims(image, 0)`,
		which will make the shape `[1, height, width, channels]`.
		
		Other examples:
		
		```python
		# 't' is a tensor of shape [2]
		tf.shape(tf.expand_dims(t, 0))  # [1, 2]
		tf.shape(tf.expand_dims(t, 1))  # [2, 1]
		tf.shape(tf.expand_dims(t, -1))  # [2, 1]
		
		# 't2' is a tensor of shape [2, 3, 5]
		tf.shape(tf.expand_dims(t2, 0))  # [1, 2, 3, 5]
		tf.shape(tf.expand_dims(t2, 2))  # [2, 3, 1, 5]
		tf.shape(tf.expand_dims(t2, 3))  # [2, 3, 5, 1]
		```
		
		This operation requires that:
		
		`-1-input.dims() <= dim <= input.dims()`
		
		This operation is related to `squeeze()`, which removes dimensions of
		size 1.
		
		Args:
		  input: A `Tensor`.
		  axis: 0-D (scalar). Specifies the dimension index at which to
		    expand the shape of `input`. Must be in the range
		    `[-rank(input) - 1, rank(input)]`.
		  name: The name of the output `Tensor`.
		  dim: 0-D (scalar). Equivalent to `axis`, to be deprecated.
		
		Returns:
		  A `Tensor` with the same data as `input`, but its shape has an additional
		  dimension of size 1 added.
		
		Raises:
		  ValueError: if both `dim` and `axis` are specified.
	**/
	static public function expand_dims(input:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function expand_dims
	**/
	static public function expand_dims_eager_fallback(input:Dynamic, axis:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes exponential of x - 1 element-wise.
		
		I.e., \\(y = (\exp x) - 1\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function expm1(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function expm1
	**/
	static public function expm1_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Extract `patches` from `images` and put them in the "depth" output dimension.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    4-D Tensor with shape `[batch, in_rows, in_cols, depth]`.
		  ksizes: A list of `ints` that has length `>= 4`.
		    The size of the sliding window for each dimension of `images`.
		  strides: A list of `ints` that has length `>= 4`.
		    1-D of length 4. How far the centers of two consecutive patches are in
		    the images. Must be: `[1, stride_rows, stride_cols, 1]`.
		  rates: A list of `ints` that has length `>= 4`.
		    1-D of length 4. Must be: `[1, rate_rows, rate_cols, 1]`. This is the
		    input stride, specifying how far two consecutive patch samples are in the
		    input. Equivalent to extracting patches with
		    `patch_sizes_eff = patch_sizes + (patch_sizes - 1) * (rates - 1)`, followed by
		    subsampling them spatially by a factor of `rates`. This is equivalent to
		    `rate` in dilated (a.k.a. Atrous) convolutions.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		
		    We specify the size-related attributes as:
		
		    ```python
		          ksizes = [1, ksize_rows, ksize_cols, 1]
		          strides = [1, strides_rows, strides_cols, 1]
		          rates = [1, rates_rows, rates_cols, 1]
		    ```
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function extract_image_patches(images:Dynamic, ksizes:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function extract_image_patches
	**/
	static public function extract_image_patches_eager_fallback(images:Dynamic, ksizes:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Extract `patches` from `input` and put them in the "depth" output
		dimension. 3D extension of `extract_image_patches`.
		
		  Args:
		    input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		      5-D Tensor with shape `[batch, in_planes, in_rows, in_cols, depth]`.
		    ksizes: A list of `ints` that has length `>= 5`.
		      The size of the sliding window for each dimension of `input`.
		    strides: A list of `ints` that has length `>= 5`.
		      1-D of length 5. How far the centers of two consecutive patches are in
		      `input`. Must be: `[1, stride_planes, stride_rows, stride_cols, 1]`.
		    padding: A `string` from: `"SAME", "VALID"`.
		      The type of padding algorithm to use.
		
		      We specify the size-related attributes as:
		
		      ```python
		            ksizes = [1, ksize_planes, ksize_rows, ksize_cols, 1]
		            strides = [1, stride_planes, strides_rows, strides_cols, 1]
		      ```
		    name: A name for the operation (optional).
		
		  Returns:
		    A `Tensor`. Has the same type as `input`.
		  
	**/
	static public function extract_volume_patches(input:Dynamic, ksizes:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function extract_volume_patches
	**/
	static public function extract_volume_patches_eager_fallback(input:Dynamic, ksizes:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Construct an identity matrix, or a batch of matrices.
		
		```python
		# Construct one identity matrix.
		tf.eye(2)
		==> [[1., 0.],
		     [0., 1.]]
		
		# Construct a batch of 3 identity matricies, each 2 x 2.
		# batch_identity[i, :, :] is a 2 x 2 identity matrix, i = 0, 1, 2.
		batch_identity = tf.eye(2, batch_shape=[3])
		
		# Construct one 2 x 3 "identity" matrix
		tf.eye(2, num_columns=3)
		==> [[ 1.,  0.,  0.],
		     [ 0.,  1.,  0.]]
		```
		
		Args:
		  num_rows: Non-negative `int32` scalar `Tensor` giving the number of rows
		    in each batch matrix.
		  num_columns: Optional non-negative `int32` scalar `Tensor` giving the number
		    of columns in each batch matrix.  Defaults to `num_rows`.
		  batch_shape:  A list or tuple of Python integers or a 1-D `int32` `Tensor`.
		    If provided, the returned `Tensor` will have leading batch dimensions of
		    this shape.
		  dtype:  The type of an element in the resulting `Tensor`
		  name:  A name for this `Op`.  Defaults to "eye".
		
		Returns:
		  A `Tensor` of shape `batch_shape + [num_rows, num_columns]`
	**/
	static public function eye(num_rows:Dynamic, ?num_columns:Dynamic, ?batch_shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Fake-quantize the 'inputs' tensor, type float to 'outputs' tensor of same type.
		
		Attributes `[min; max]` define the clamping range for the `inputs` data.
		`inputs` values are quantized into the quantization range (`[0; 2^num_bits - 1]`
		when `narrow_range` is false and `[1; 2^num_bits - 1]` when it is true) and
		then de-quantized and output as floats in `[min; max]` interval.
		`num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
		Quantization is called fake since the output is still in floating point.
		
		Args:
		  inputs: A `Tensor` of type `float32`.
		  min: An optional `float`. Defaults to `-6`.
		  max: An optional `float`. Defaults to `6`.
		  num_bits: An optional `int`. Defaults to `8`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_args(inputs:Dynamic, ?min:Dynamic, ?max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fake_quant_with_min_max_args
	**/
	static public function fake_quant_with_min_max_args_eager_fallback(inputs:Dynamic, ?min:Dynamic, ?max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Compute gradients for a FakeQuantWithMinMaxArgs operation.
		
		Args:
		  gradients: A `Tensor` of type `float32`.
		    Backpropagated gradients above the FakeQuantWithMinMaxArgs operation.
		  inputs: A `Tensor` of type `float32`.
		    Values passed as inputs to the FakeQuantWithMinMaxArgs operation.
		  min: An optional `float`. Defaults to `-6`.
		  max: An optional `float`. Defaults to `6`.
		  num_bits: An optional `int`. Defaults to `8`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_args_gradient(gradients:Dynamic, inputs:Dynamic, ?min:Dynamic, ?max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fake_quant_with_min_max_args_gradient
	**/
	static public function fake_quant_with_min_max_args_gradient_eager_fallback(gradients:Dynamic, inputs:Dynamic, ?min:Dynamic, ?max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Fake-quantize the 'inputs' tensor of type float via global float scalars `min`
		
		and `max` to 'outputs' tensor of same shape as `inputs`.
		
		`[min; max]` define the clamping range for the `inputs` data.
		`inputs` values are quantized into the quantization range (`[0; 2^num_bits - 1]`
		when `narrow_range` is false and `[1; 2^num_bits - 1]` when it is true) and
		then de-quantized and output as floats in `[min; max]` interval.
		`num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
		This operation has a gradient and thus allows for training `min` and `max`
		values.
		
		Args:
		  inputs: A `Tensor` of type `float32`.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  num_bits: An optional `int`. Defaults to `8`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_vars(inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fake_quant_with_min_max_vars
	**/
	static public function fake_quant_with_min_max_vars_eager_fallback(inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Compute gradients for a FakeQuantWithMinMaxVars operation.
		
		Args:
		  gradients: A `Tensor` of type `float32`.
		    Backpropagated gradients above the FakeQuantWithMinMaxVars operation.
		  inputs: A `Tensor` of type `float32`.
		    Values passed as inputs to the FakeQuantWithMinMaxVars operation.
		    min, max: Quantization interval, scalar floats.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  num_bits: An optional `int`. Defaults to `8`.
		    The bitwidth of the quantization; between 2 and 8, inclusive.
		  narrow_range: An optional `bool`. Defaults to `False`.
		    Whether to quantize into 2^num_bits - 1 distinct values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (backprops_wrt_input, backprop_wrt_min, backprop_wrt_max).
		
		  backprops_wrt_input: A `Tensor` of type `float32`.
		  backprop_wrt_min: A `Tensor` of type `float32`.
		  backprop_wrt_max: A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_vars_gradient(gradients:Dynamic, inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fake_quant_with_min_max_vars_gradient
	**/
	static public function fake_quant_with_min_max_vars_gradient_eager_fallback(gradients:Dynamic, inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Fake-quantize the 'inputs' tensor of type float and one of the shapes: `[d]`,
		
		`[b, d]` `[b, h, w, d]` via per-channel floats `min` and `max` of shape `[d]`
		to 'outputs' tensor of same shape as `inputs`.
		
		`[min; max]` define the clamping range for the `inputs` data.
		`inputs` values are quantized into the quantization range (`[0; 2^num_bits - 1]`
		when `narrow_range` is false and `[1; 2^num_bits - 1]` when it is true) and
		then de-quantized and output as floats in `[min; max]` interval.
		`num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
		This operation has a gradient and thus allows for training `min` and `max`
		values.
		
		Args:
		  inputs: A `Tensor` of type `float32`.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  num_bits: An optional `int`. Defaults to `8`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_vars_per_channel(inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fake_quant_with_min_max_vars_per_channel
	**/
	static public function fake_quant_with_min_max_vars_per_channel_eager_fallback(inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Compute gradients for a FakeQuantWithMinMaxVarsPerChannel operation.
		
		Args:
		  gradients: A `Tensor` of type `float32`.
		    Backpropagated gradients above the FakeQuantWithMinMaxVars operation,
		    shape one of: `[d]`, `[b, d]`,  `[b, h, w, d]`.
		  inputs: A `Tensor` of type `float32`.
		    Values passed as inputs to the FakeQuantWithMinMaxVars operation, shape
		      same as `gradients`.
		    min, max: Quantization interval, floats of shape `[d]`.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  num_bits: An optional `int`. Defaults to `8`.
		    The bitwidth of the quantization; between 2 and 16, inclusive.
		  narrow_range: An optional `bool`. Defaults to `False`.
		    Whether to quantize into 2^num_bits - 1 distinct values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (backprops_wrt_input, backprop_wrt_min, backprop_wrt_max).
		
		  backprops_wrt_input: A `Tensor` of type `float32`.
		  backprop_wrt_min: A `Tensor` of type `float32`.
		  backprop_wrt_max: A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_vars_per_channel_gradient(gradients:Dynamic, inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fake_quant_with_min_max_vars_per_channel_gradient
	**/
	static public function fake_quant_with_min_max_vars_per_channel_gradient_eager_fallback(gradients:Dynamic, inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Deprecated. Do not use.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function fake_queue(resource:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Fast Fourier transform.
		
		Computes the 1-dimensional discrete Fourier transform over the inner-most
		dimension of `input`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function fft(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		2D fast Fourier transform.
		
		Computes the 2-dimensional discrete Fourier transform over the inner-most
		2 dimensions of `input`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function fft2d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		3D fast Fourier transform.
		
		Computes the 3-dimensional discrete Fourier transform over the inner-most 3
		dimensions of `input`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function fft3d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A queue that produces elements in first-in first-out order.
		
		Args:
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a value.
		  shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    The shape of each component in a value. The length of this attr must
		    be either 0 or the same as the length of component_types. If the length of
		    this attr is 0, the shapes of queue elements are not constrained, and
		    only one element may be dequeued at a time.
		  capacity: An optional `int`. Defaults to `-1`.
		    The upper bound on the number of elements in this queue.
		    Negative numbers mean no limit.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this queue will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function fifo_queue(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A queue that produces elements in first-in first-out order.
		
		Args:
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a value.
		  shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    The shape of each component in a value. The length of this attr must
		    be either 0 or the same as the length of component_types. If the length of
		    this attr is 0, the shapes of queue elements are not constrained, and
		    only one element may be dequeued at a time.
		  capacity: An optional `int`. Defaults to `-1`.
		    The upper bound on the number of elements in this queue.
		    Negative numbers mean no limit.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this queue will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function fifo_queue_v2(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fifo_queue_v2
	**/
	static public function fifo_queue_v2_eager_fallback(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a tensor filled with a scalar value.
		
		This operation creates a tensor of shape `dims` and fills it with `value`.
		
		For example:
		
		```
		# Output tensor has shape [2, 3].
		fill([2, 3], 9) ==> [[9, 9, 9]
		                     [9, 9, 9]]
		```
		
		`tf.fill` differs from `tf.constant` in a few ways:
		
		*   `tf.fill` only supports scalar contents, whereas `tf.constant` supports
		    Tensor values.
		*   `tf.fill` creates an Op in the computation graph that constructs the actual
		    Tensor value at runtime. This is in contrast to `tf.constant` which embeds
		    the entire Tensor into the graph with a `Const` node.
		*   Because `tf.fill` evaluates at graph runtime, it supports dynamic shapes
		    based on other runtime Tensors, unlike `tf.constant`.
		
		Args:
		  dims: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D. Represents the shape of the output tensor.
		  value: A `Tensor`. 0-D (scalar). Value to fill the returned tensor.
		
		    @compatibility(numpy)
		    Equivalent to np.full
		    @end_compatibility
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
	**/
	static public function fill(dims:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fill
	**/
	static public function fill_eager_fallback(dims:Dynamic, value:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A Reader that outputs fixed-length records from a file.
		
		Args:
		  record_bytes: An `int`. Number of bytes in the record.
		  header_bytes: An optional `int`. Defaults to `0`.
		    Number of bytes in the header, defaults to 0.
		  footer_bytes: An optional `int`. Defaults to `0`.
		    Number of bytes in the footer, defaults to 0.
		  hop_bytes: An optional `int`. Defaults to `0`.
		    Number of bytes to hop before each read. Default of 0 means using
		    record_bytes.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function fixed_length_record_reader(record_bytes:Dynamic, ?header_bytes:Dynamic, ?footer_bytes:Dynamic, ?hop_bytes:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A Reader that outputs fixed-length records from a file.
		
		Args:
		  record_bytes: An `int`. Number of bytes in the record.
		  header_bytes: An optional `int`. Defaults to `0`.
		    Number of bytes in the header, defaults to 0.
		  footer_bytes: An optional `int`. Defaults to `0`.
		    Number of bytes in the footer, defaults to 0.
		  hop_bytes: An optional `int`. Defaults to `0`.
		    Number of bytes to hop before each read. Default of 0 means using
		    record_bytes.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  encoding: An optional `string`. Defaults to `""`.
		    The type of encoding for the file. Currently ZLIB and GZIP
		    are supported. Defaults to none.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function fixed_length_record_reader_v2(record_bytes:Dynamic, ?header_bytes:Dynamic, ?footer_bytes:Dynamic, ?hop_bytes:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?encoding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fixed_length_record_reader_v2
	**/
	static public function fixed_length_record_reader_v2_eager_fallback(record_bytes:Dynamic, ?header_bytes:Dynamic, ?footer_bytes:Dynamic, ?hop_bytes:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?encoding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Partitioner to specify a fixed number of shards along given axis.
		
		Args:
		  num_shards: `int`, number of shards to partition variable.
		  axis: `int`, axis to partition on.
		
		Returns:
		  A partition function usable as the `partitioner` argument to
		  `variable_scope`, `get_variable`, and `get_partitioned_variable_list`.
	**/
	static public function fixed_size_partitioner(num_shards:Dynamic, ?axis:Dynamic):Dynamic;
	static public var float16 : Dynamic;
	static public var float16_ref : Dynamic;
	static public var float32 : Dynamic;
	static public var float32_ref : Dynamic;
	static public var float64 : Dynamic;
	static public var float64_ref : Dynamic;
	/**
		Returns element-wise largest integer not greater than x.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function floor(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x // y element-wise.
		
		*NOTE*: `FloorDiv` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function floor_div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function floor_div
	**/
	static public function floor_div_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function floor
	**/
	static public function floor_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns element-wise remainder of division. When `x < 0` xor `y < 0` is
		
		true, this follows Python semantics in that the result here is consistent
		with a flooring divide. E.g. `floor(x / y) * y + mod(x, y) = x`.
		
		*NOTE*: `FloorMod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`, `bfloat16`, `half`, `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function floor_mod(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function floor_mod
	**/
	static public function floor_mod_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Divides `x / y` elementwise, rounding toward the most negative integer.
		
		The same as `tf.div(x,y)` for integers, but uses `tf.floor(tf.div(x,y))` for
		floating point arguments so that the result is always an integer (though
		possibly an integer represented as floating point).  This op is generated by
		`x // y` floor division in Python 3 and in Python 2.7 with
		`from __future__ import division`.
		
		`x` and `y` must have the same type, and the result will have the same type
		as well.
		
		Args:
		  x: `Tensor` numerator of real numeric type.
		  y: `Tensor` denominator of real numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  `x / y` rounded down.
		
		Raises:
		  TypeError: If the inputs are complex.
	**/
	static public function floordiv(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns element-wise remainder of division. When `x < 0` xor `y < 0` is
		
		true, this follows Python semantics in that the result here is consistent
		with a flooring divide. E.g. `floor(x / y) * y + mod(x, y) = x`.
		
		*NOTE*: `FloorMod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`, `bfloat16`, `half`, `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function floormod(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		foldl on the list of tensors unpacked from `elems` on dimension 0.
		
		This foldl operator repeatedly applies the callable `fn` to a sequence
		of elements from first to last. The elements are made of the tensors
		unpacked from `elems` on dimension 0. The callable fn takes two tensors as
		arguments. The first argument is the accumulated value computed from the
		preceding invocation of fn. If `initializer` is None, `elems` must contain
		at least one element, and its first element is used as the initializer.
		
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
		  elems: A tensor or (possibly nested) sequence of tensors, each of which
		    will be unpacked along their first dimension.  The nested sequence
		    of the resulting slices will be the first argument to `fn`.
		  initializer: (optional) A tensor or (possibly nested) sequence of tensors,
		    as the initial value for the accumulator.
		  parallel_iterations: (optional) The number of iterations allowed to run
		    in parallel.
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
		foldr on the list of tensors unpacked from `elems` on dimension 0.
		
		This foldr operator repeatedly applies the callable `fn` to a sequence
		of elements from last to first. The elements are made of the tensors
		unpacked from `elems`. The callable fn takes two tensors as arguments.
		The first argument is the accumulated value computed from the preceding
		invocation of fn. If `initializer` is None, `elems` must contain at least
		one element, and its first element is used as the initializer.
		
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
		  elems: A tensor or (possibly nested) sequence of tensors, each of which
		    will be unpacked along their first dimension.  The nested sequence
		    of the resulting slices will be the first argument to `fn`.
		  initializer: (optional) A tensor or (possibly nested) sequence of tensors,
		    as the initial value for the accumulator.
		  parallel_iterations: (optional) The number of iterations allowed to run
		    in parallel.
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
		Gather slices from `params` axis `axis` according to `indices`.
		
		`indices` must be an integer tensor of any dimension (usually 0-D or 1-D).
		Produces an output tensor with shape `params.shape[:axis] + indices.shape +
		params.shape[axis + 1:]` where:
		
		```python
		    # Scalar indices (output is rank(params) - 1).
		    output[a_0, ..., a_n, b_0, ..., b_n] =
		      params[a_0, ..., a_n, indices, b_0, ..., b_n]
		
		    # Vector indices (output is rank(params)).
		    output[a_0, ..., a_n, i, b_0, ..., b_n] =
		      params[a_0, ..., a_n, indices[i], b_0, ..., b_n]
		
		    # Higher rank indices (output is rank(params) + rank(indices) - 1).
		    output[a_0, ..., a_n, i, ..., j, b_0, ... b_n] =
		      params[a_0, ..., a_n, indices[i, ..., j], b_0, ..., b_n]
		```
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/Gather.png" alt>
		</div>
		
		Note that on CPU, if an out of bound index is found, an error is returned.
		On GPU, if an out of bound index is found, a 0 is stored in the
		corresponding output value.
		
		See also `tf.batch_gather` and `tf.gather_nd`.
		
		Args:
		  params: A `Tensor`.
		    The tensor from which to gather values. Must be at least rank
		    `axis + 1`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor. Must be in range `[0, params.shape[axis])`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The axis in `params` to gather `indices` from. Defaults to the first
		    dimension. Supports negative indexes.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `params`.
	**/
	static public function gather(params:Dynamic, indices:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function gather
	**/
	static public function gather_eager_fallback(params:Dynamic, indices:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Gather slices from `params` into a Tensor with shape specified by `indices`.
		
		`indices` is an K-dimensional integer tensor, best thought of as a
		(K-1)-dimensional tensor of indices into `params`, where each element defines a
		slice of `params`:
		
		    output[\\(i_0, ..., i_{K-2}\\)] = params[indices[\\(i_0, ..., i_{K-2}\\)]]
		
		Whereas in `tf.gather` `indices` defines slices into the first
		dimension of `params`, in `tf.gather_nd`, `indices` defines slices into the
		first `N` dimensions of `params`, where `N = indices.shape[-1]`.
		
		The last dimension of `indices` can be at most the rank of
		`params`:
		
		    indices.shape[-1] <= params.rank
		
		The last dimension of `indices` corresponds to elements
		(if `indices.shape[-1] == params.rank`) or slices
		(if `indices.shape[-1] < params.rank`) along dimension `indices.shape[-1]`
		of `params`.  The output tensor has shape
		
		    indices.shape[:-1] + params.shape[indices.shape[-1]:]
		
		Note that on CPU, if an out of bound index is found, an error is returned.
		On GPU, if an out of bound index is found, a 0 is stored in the
		corresponding output value.
		
		Some examples below.
		
		Simple indexing into a matrix:
		
		```python
		    indices = [[0, 0], [1, 1]]
		    params = [['a', 'b'], ['c', 'd']]
		    output = ['a', 'd']
		```
		
		Slice indexing into a matrix:
		
		```python
		    indices = [[1], [0]]
		    params = [['a', 'b'], ['c', 'd']]
		    output = [['c', 'd'], ['a', 'b']]
		```
		
		Indexing into a 3-tensor:
		
		```python
		    indices = [[1]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = [[['a1', 'b1'], ['c1', 'd1']]]
		
		
		    indices = [[0, 1], [1, 0]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = [['c0', 'd0'], ['a1', 'b1']]
		
		
		    indices = [[0, 0, 1], [1, 0, 1]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = ['b0', 'b1']
		```
		
		Batched indexing into a matrix:
		
		```python
		    indices = [[[0, 0]], [[0, 1]]]
		    params = [['a', 'b'], ['c', 'd']]
		    output = [['a'], ['b']]
		```
		
		Batched slice indexing into a matrix:
		
		```python
		    indices = [[[1]], [[0]]]
		    params = [['a', 'b'], ['c', 'd']]
		    output = [[['c', 'd']], [['a', 'b']]]
		```
		
		Batched indexing into a 3-tensor:
		
		```python
		    indices = [[[1]], [[0]]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = [[[['a1', 'b1'], ['c1', 'd1']]],
		              [[['a0', 'b0'], ['c0', 'd0']]]]
		
		    indices = [[[0, 1], [1, 0]], [[0, 0], [1, 1]]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = [[['c0', 'd0'], ['a1', 'b1']],
		              [['a0', 'b0'], ['c1', 'd1']]]
		
		
		    indices = [[[0, 0, 1], [1, 0, 1]], [[0, 1, 1], [1, 1, 0]]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = [['b0', 'b1'], ['d0', 'c1']]
		```
		
		See also `tf.gather` and `tf.batch_gather`.
		
		Args:
		  params: A `Tensor`. The tensor from which to gather values.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `params`.
	**/
	static public function gather_nd(params:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function gather_nd
	**/
	static public function gather_nd_eager_fallback(params:Dynamic, indices:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Gather slices from `params` axis `axis` according to `indices`.
		
		`indices` must be an integer tensor of any dimension (usually 0-D or 1-D).
		Produces an output tensor with shape `params.shape[:axis] + indices.shape +
		params.shape[axis + 1:]` where:
		
		```python
		    # Scalar indices (output is rank(params) - 1).
		    output[a_0, ..., a_n, b_0, ..., b_n] =
		      params[a_0, ..., a_n, indices, b_0, ..., b_n]
		
		    # Vector indices (output is rank(params)).
		    output[a_0, ..., a_n, i, b_0, ..., b_n] =
		      params[a_0, ..., a_n, indices[i], b_0, ..., b_n]
		
		    # Higher rank indices (output is rank(params) + rank(indices) - 1).
		    output[a_0, ..., a_n, i, ..., j, b_0, ... b_n] =
		      params[a_0, ..., a_n, indices[i, ..., j], b_0, ..., b_n]
		```
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/Gather.png" alt>
		</div>
		
		Note that on CPU, if an out of bound index is found, an error is returned.
		On GPU, if an out of bound index is found, a 0 is stored in the
		corresponding output value.
		
		See also `tf.batch_gather` and `tf.gather_nd`.
		
		Args:
		  params: A `Tensor`.
		    The tensor from which to gather values. Must be at least rank
		    `axis + 1`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor. Must be in range `[0, params.shape[axis])`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The axis in `params` to gather `indices` from. Defaults to the first
		    dimension. Supports negative indexes.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `params`.
	**/
	static public function gather_v2(params:Dynamic, indices:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function gather_v2
	**/
	static public function gather_v2_eager_fallback(params:Dynamic, indices:Dynamic, axis:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.get_collection()` using the default graph.
		
		See `tf.Graph.get_collection`
		for more details.
		
		Args:
		  key: The key for the collection. For example, the `GraphKeys` class
		    contains many standard names for collections.
		  scope: (Optional.) If supplied, the resulting list is filtered to include
		    only items whose `name` attribute matches using `re.match`. Items
		    without a `name` attribute are never returned if a scope is supplied and
		    the choice or `re.match` means that a `scope` without special tokens
		    filters by prefix.
		
		Returns:
		  The list of values in the collection with the given `name`, or
		  an empty list if no value has been added to that collection. The
		  list contains the values in the order under which they were
		  collected.
		
		@compatibility(eager)
		Collections are not supported when eager execution is enabled.
		@end_compatibility
	**/
	static public function get_collection(key:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.get_collection_ref()` using the default graph.
		
		See `tf.Graph.get_collection_ref`
		for more details.
		
		Args:
		  key: The key for the collection. For example, the `GraphKeys` class
		    contains many standard names for collections.
		
		Returns:
		  The list of values in the collection with the given `name`, or an empty
		  list if no value has been added to that collection.  Note that this returns
		  the collection list itself, which can be modified in place to change the
		  collection.
		
		@compatibility(eager)
		Collections are not supported when eager execution is enabled.
		@end_compatibility
	**/
	static public function get_collection_ref(key:Dynamic):Dynamic;
	/**
		Returns the default graph for the current thread.
		
		The returned graph will be the innermost graph on which a
		`Graph.as_default()` context has been entered, or a global default
		graph if none has been explicitly created.
		
		NOTE: The default graph is a property of the current thread. If you
		create a new thread, and wish to use the default graph in that
		thread, you must explicitly add a `with g.as_default():` in that
		thread's function.
		
		Returns:
		  The default `Graph` being used in the current thread.
	**/
	static public function get_default_graph():Dynamic;
	/**
		Returns the default session for the current thread.
		
		The returned `Session` will be the innermost session on which a
		`Session` or `Session.as_default()` context has been entered.
		
		NOTE: The default session is a property of the current thread. If you
		create a new thread, and wish to use the default session in that
		thread, you must explicitly add a `with sess.as_default():` in that
		thread's function.
		
		Returns:
		  The default `Session` being used in the current thread.
	**/
	static public function get_default_session():Dynamic;
	/**
		Gets an existing *local* variable or creates a new one.
		
		Behavior is the same as in `get_variable`, except that variables are
		added to the `LOCAL_VARIABLES` collection and `trainable` is set to
		`False`.
		This function prefixes the name with the current variable scope
		and performs reuse checks. See the
		[Variable Scope How To](https://tensorflow.org/guide/variables)
		for an extensive description of how reusing works. Here is a basic example:
		
		```python
		def foo():
		  with tf.variable_scope("foo", reuse=tf.AUTO_REUSE):
		    v = tf.get_variable("v", [1])
		  return v
		
		v1 = foo()  # Creates v.
		v2 = foo()  # Gets the same, existing v.
		assert v1 == v2
		```
		
		If initializer is `None` (the default), the default initializer passed in
		the variable scope will be used. If that one is `None` too, a
		`glorot_uniform_initializer` will be used. The initializer can also be
		a Tensor, in which case the variable is initialized to this value and shape.
		
		Similarly, if the regularizer is `None` (the default), the default regularizer
		passed in the variable scope will be used (if that is `None` too,
		then by default no regularization is performed).
		
		If a partitioner is provided, a `PartitionedVariable` is returned.
		Accessing this object as a `Tensor` returns the shards concatenated along
		the partition axis.
		
		Some useful partitioners are available.  See, e.g.,
		`variable_axis_size_partitioner` and `min_max_variable_partitioner`.
		
		Args:
		  name: The name of the new or existing variable.
		  shape: Shape of the new or existing variable.
		  dtype: Type of the new or existing variable (defaults to `DT_FLOAT`).
		  initializer: Initializer for the variable if one is created. Can either be
		    an initializer object or a Tensor. If it's a Tensor, its shape must be known
		    unless validate_shape is False.
		  regularizer: A (Tensor -> Tensor or None) function; the result of
		    applying it on a newly created variable will be added to the collection
		    `tf.GraphKeys.REGULARIZATION_LOSSES` and can be used for regularization.
		  collections: List of graph collections keys to add the Variable to.
		    Defaults to `[GraphKeys.LOCAL_VARIABLES]` (see `tf.Variable`).
		  caching_device: Optional device string or function describing where the
		    Variable should be cached for reading.  Defaults to the Variable's
		    device.  If not `None`, caches on another device.  Typical use is to
		    cache on the device where the Ops using the Variable reside, to
		    deduplicate copying through `Switch` and other conditional statements.
		  partitioner: Optional callable that accepts a fully defined `TensorShape`
		    and `dtype` of the Variable to be created, and returns a list of
		    partitions for each axis (currently only one axis can be partitioned).
		  validate_shape: If False, allows the variable to be initialized with a
		      value of unknown shape. If True, the default, the shape of initial_value
		      must be known. For this to be used the initializer must be a Tensor and
		      not an initializer object.
		  use_resource: If False, creates a regular Variable. If true, creates an
		    experimental ResourceVariable instead with well-defined semantics.
		    Defaults to False (will later change to True). When eager execution is
		    enabled this argument is always forced to be True.
		  custom_getter: Callable that takes as a first argument the true getter, and
		    allows overwriting the internal get_variable method.
		    The signature of `custom_getter` should match that of this method,
		    but the most future-proof version will allow for changes:
		    `def custom_getter(getter, *args, **kwargs)`.  Direct access to
		    all `get_variable` parameters is also allowed:
		    `def custom_getter(getter, name, *args, **kwargs)`.  A simple identity
		    custom getter that simply creates variables with modified names is:
		    ```python
		    def custom_getter(getter, name, *args, **kwargs):
		      return getter(name + '_suffix', *args, **kwargs)
		    ```
		  constraint: An optional projection function to be applied to the variable
		    after being updated by an `Optimizer` (e.g. used to implement norm
		    constraints or value constraints for layer weights). The function must
		    take as input the unprojected Tensor representing the value of the
		    variable and return the Tensor for the projected value
		    (which must have the same shape). Constraints are not safe to
		    use when doing asynchronous distributed training.
		  synchronization: Indicates when a distributed a variable will be
		    aggregated. Accepted values are constants defined in the class
		    `tf.VariableSynchronization`. By default the synchronization is set to
		    `AUTO` and the current `DistributionStrategy` chooses
		    when to synchronize. If `synchronization` is set to `ON_READ`,
		    `trainable` must not be set to `True`.
		  aggregation: Indicates how a distributed variable will be aggregated.
		    Accepted values are constants defined in the class
		    `tf.VariableAggregation`.
		
		Returns:
		  The created or existing `Variable` (or `PartitionedVariable`, if a
		  partitioner was used).
		
		Raises:
		  ValueError: when creating a new variable and shape is not declared,
		    when violating reuse during variable creation, or when `initializer` dtype
		    and `dtype` don't match. Reuse is set inside `variable_scope`.
	**/
	static public function get_local_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?validate_shape:Dynamic, ?use_resource:Dynamic, ?custom_getter:Dynamic, ?constraint:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic):Dynamic;
	/**
		Returns the local seeds an operation should use given an op-specific seed.
		
		Given operation-specific seed, `op_seed`, this helper function returns two
		seeds derived from graph-level and op-level seeds. Many random operations
		internally use the two seeds to allow user to change the seed globally for a
		graph, or for only specific operations.
		
		For details on how the graph-level seed interacts with op seeds, see
		`tf.set_random_seed`.
		
		Args:
		  op_seed: integer.
		
		Returns:
		  A tuple of two integers that should be used for the local seed of this
		  operation.
	**/
	static public function get_seed(op_seed:Dynamic):Dynamic;
	/**
		Return the handle of `data`.
		
		This is EXPERIMENTAL and subject to change.
		
		Keep `data` "in-place" in the runtime and create a handle that can be
		used to retrieve `data` in a subsequent run().
		
		Combined with `get_session_tensor`, we can keep a tensor produced in
		one run call in place, and use it as the input in a future run call.
		
		Args:
		  data: A tensor to be stored in the session.
		  name: Optional name prefix for the return tensor.
		
		Returns:
		  A scalar string tensor representing a unique handle for `data`.
		
		Raises:
		  TypeError: if `data` is not a Tensor.
		
		Example:
		
		```python
		c = tf.multiply(a, b)
		h = tf.get_session_handle(c)
		h = sess.run(h)
		
		p, a = tf.get_session_tensor(h.handle, tf.float32)
		b = tf.multiply(a, 10)
		c = sess.run(b, feed_dict={p: h.handle})
		```
	**/
	static public function get_session_handle(data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function get_session_handle
	**/
	static public function get_session_handle_eager_fallback(value:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Store the input tensor in the state of the current session.
		
		Args:
		  value: A `Tensor`. The tensor to be stored.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function get_session_handle_v2(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function get_session_handle_v2
	**/
	static public function get_session_handle_v2_eager_fallback(value:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Get the tensor of type `dtype` by feeding a tensor handle.
		
		This is EXPERIMENTAL and subject to change.
		
		Get the value of the tensor from a tensor handle. The tensor
		is produced in a previous run() and stored in the state of the
		session.
		
		Args:
		  handle: The string representation of a persistent tensor handle.
		  dtype: The type of the output tensor.
		  name: Optional name prefix for the return tensor.
		
		Returns:
		  A pair of tensors. The first is a placeholder for feeding a
		  tensor handle and the second is the tensor in the session state
		  keyed by the tensor handle.
		
		Example:
		
		```python
		c = tf.multiply(a, b)
		h = tf.get_session_handle(c)
		h = sess.run(h)
		
		p, a = tf.get_session_tensor(h.handle, tf.float32)
		b = tf.multiply(a, 10)
		c = sess.run(b, feed_dict={p: h.handle})
		```
	**/
	static public function get_session_tensor(handle:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function get_session_tensor
	**/
	static public function get_session_tensor_eager_fallback(handle:Dynamic, dtype:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns a single Summary op that would run all summaries.
		
		Either existing one from `SUMMARY_OP` collection or merges all existing
		summaries.
		
		Returns:
		  If no summaries were collected, returns None. Otherwise returns a scalar
		  `Tensor` of type `string` containing the serialized `Summary` protocol
		  buffer resulting from the merging.
	**/
	static public function get_summary_op():Dynamic;
	/**
		Gets an existing variable with these parameters or create a new one.
		
		This function prefixes the name with the current variable scope
		and performs reuse checks. See the
		[Variable Scope How To](https://tensorflow.org/guide/variables)
		for an extensive description of how reusing works. Here is a basic example:
		
		```python
		def foo():
		  with tf.variable_scope("foo", reuse=tf.AUTO_REUSE):
		    v = tf.get_variable("v", [1])
		  return v
		
		v1 = foo()  # Creates v.
		v2 = foo()  # Gets the same, existing v.
		assert v1 == v2
		```
		
		If initializer is `None` (the default), the default initializer passed in
		the variable scope will be used. If that one is `None` too, a
		`glorot_uniform_initializer` will be used. The initializer can also be
		a Tensor, in which case the variable is initialized to this value and shape.
		
		Similarly, if the regularizer is `None` (the default), the default regularizer
		passed in the variable scope will be used (if that is `None` too,
		then by default no regularization is performed).
		
		If a partitioner is provided, a `PartitionedVariable` is returned.
		Accessing this object as a `Tensor` returns the shards concatenated along
		the partition axis.
		
		Some useful partitioners are available.  See, e.g.,
		`variable_axis_size_partitioner` and `min_max_variable_partitioner`.
		
		Args:
		  name: The name of the new or existing variable.
		  shape: Shape of the new or existing variable.
		  dtype: Type of the new or existing variable (defaults to `DT_FLOAT`).
		  initializer: Initializer for the variable if one is created. Can either be
		    an initializer object or a Tensor. If it's a Tensor, its shape must be known
		    unless validate_shape is False.
		  regularizer: A (Tensor -> Tensor or None) function; the result of
		    applying it on a newly created variable will be added to the collection
		    `tf.GraphKeys.REGULARIZATION_LOSSES` and can be used for regularization.
		  trainable: If `True` also add the variable to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  collections: List of graph collections keys to add the Variable to.
		    Defaults to `[GraphKeys.GLOBAL_VARIABLES]` (see `tf.Variable`).
		  caching_device: Optional device string or function describing where the
		    Variable should be cached for reading.  Defaults to the Variable's
		    device.  If not `None`, caches on another device.  Typical use is to
		    cache on the device where the Ops using the Variable reside, to
		    deduplicate copying through `Switch` and other conditional statements.
		  partitioner: Optional callable that accepts a fully defined `TensorShape`
		    and `dtype` of the Variable to be created, and returns a list of
		    partitions for each axis (currently only one axis can be partitioned).
		  validate_shape: If False, allows the variable to be initialized with a
		      value of unknown shape. If True, the default, the shape of initial_value
		      must be known. For this to be used the initializer must be a Tensor and
		      not an initializer object.
		  use_resource: If False, creates a regular Variable. If true, creates an
		    experimental ResourceVariable instead with well-defined semantics.
		    Defaults to False (will later change to True). When eager execution is
		    enabled this argument is always forced to be True.
		  custom_getter: Callable that takes as a first argument the true getter, and
		    allows overwriting the internal get_variable method.
		    The signature of `custom_getter` should match that of this method,
		    but the most future-proof version will allow for changes:
		    `def custom_getter(getter, *args, **kwargs)`.  Direct access to
		    all `get_variable` parameters is also allowed:
		    `def custom_getter(getter, name, *args, **kwargs)`.  A simple identity
		    custom getter that simply creates variables with modified names is:
		    ```python
		    def custom_getter(getter, name, *args, **kwargs):
		      return getter(name + '_suffix', *args, **kwargs)
		    ```
		  constraint: An optional projection function to be applied to the variable
		    after being updated by an `Optimizer` (e.g. used to implement norm
		    constraints or value constraints for layer weights). The function must
		    take as input the unprojected Tensor representing the value of the
		    variable and return the Tensor for the projected value
		    (which must have the same shape). Constraints are not safe to
		    use when doing asynchronous distributed training.
		  synchronization: Indicates when a distributed a variable will be
		    aggregated. Accepted values are constants defined in the class
		    `tf.VariableSynchronization`. By default the synchronization is set to
		    `AUTO` and the current `DistributionStrategy` chooses
		    when to synchronize. If `synchronization` is set to `ON_READ`,
		    `trainable` must not be set to `True`.
		  aggregation: Indicates how a distributed variable will be aggregated.
		    Accepted values are constants defined in the class
		    `tf.VariableAggregation`.
		
		Returns:
		  The created or existing `Variable` (or `PartitionedVariable`, if a
		  partitioner was used).
		
		Raises:
		  ValueError: when creating a new variable and shape is not declared,
		    when violating reuse during variable creation, or when `initializer` dtype
		    and `dtype` don't match. Reuse is set inside `variable_scope`.
	**/
	static public function get_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?validate_shape:Dynamic, ?use_resource:Dynamic, ?custom_getter:Dynamic, ?constraint:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic):Dynamic;
	/**
		Returns the current variable scope.
	**/
	static public function get_variable_scope():Dynamic;
	/**
		Computes the global norm of multiple tensors.
		
		Given a tuple or list of tensors `t_list`, this operation returns the
		global norm of the elements in all tensors in `t_list`. The global norm is
		computed as:
		
		`global_norm = sqrt(sum([l2norm(t)**2 for t in t_list]))`
		
		Any entries in `t_list` that are of type None are ignored.
		
		Args:
		  t_list: A tuple or list of mixed `Tensors`, `IndexedSlices`, or None.
		  name: A name for the operation (optional).
		
		Returns:
		  A 0-D (scalar) `Tensor` of type `float`.
		
		Raises:
		  TypeError: If `t_list` is not a sequence.
	**/
	static public function global_norm(t_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns global variables.
		
		Global variables are variables that are shared across machines in a
		distributed environment. The `Variable()` constructor or `get_variable()`
		automatically adds new variables to the graph collection
		`GraphKeys.GLOBAL_VARIABLES`.
		This convenience function returns the contents of that collection.
		
		An alternative to global variables are local variables. See
		`tf.local_variables`
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered
		    to include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a
		    scope is supplied. The choice of `re.match` means that a `scope` without
		    special tokens filters by prefix.
		
		Returns:
		  A list of `Variable` objects.
	**/
	static public function global_variables(?scope:Dynamic):Dynamic;
	/**
		Returns an Op that initializes global variables.
		
		This is just a shortcut for `variables_initializer(global_variables())`
		
		Returns:
		  An Op that initializes global variables in the graph.
	**/
	static public function global_variables_initializer():Dynamic;
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
		
		Returns:
		  A list of `sum(dy/dx)` for each x in `xs`.
		
		Raises:
		  LookupError: if one of the operations between `x` and `y` does not
		    have a registered gradient function.
		  ValueError: if the arguments are invalid.
		  RuntimeError: if called in Eager mode.
	**/
	static public function gradients(ys:Dynamic, xs:Dynamic, ?grad_ys:Dynamic, ?name:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?stop_gradients:Dynamic):Dynamic;
	/**
		Returns the truth value of (x > y) element-wise.
		
		*NOTE*: `math.greater` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function greater(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function greater
	**/
	static public function greater_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the truth value of (x >= y) element-wise.
		
		*NOTE*: `math.greater_equal` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function greater_equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function greater_equal
	**/
	static public function greater_equal_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Create an op that groups multiple operations.
		
		When this op finishes, all ops in `inputs` have finished. This op has no
		output.
		
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
		Gives a guarantee to the TF runtime that the input tensor is a constant.
		
		The runtime is then free to make optimizations based on this.
		
		Only accepts value typed tensors as inputs and rejects resource variable handles
		as input.
		
		Returns the input tensor without modification.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function guarantee_const(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function guarantee_const
	**/
	static public function guarantee_const_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var half : Dynamic;
	static public var half_ref : Dynamic;
	/**
		He normal initializer.
		
		It draws samples from a truncated normal distribution centered on 0
		with `stddev = sqrt(2 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    He et al., http://arxiv.org/abs/1502.01852
	**/
	static public function he_normal(?seed:Dynamic):Dynamic;
	/**
		He uniform variance scaling initializer.
		
		It draws samples from a uniform distribution within [-limit, limit]
		where `limit` is `sqrt(6 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    He et al., http://arxiv.org/abs/1502.01852
	**/
	static public function he_uniform(?seed:Dynamic):Dynamic;
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
	/**
		Return histogram of values.
		
		Given the tensor `values`, this operation returns a rank 1 histogram counting
		the number of entries in `values` that fell into every bin.  The bins are
		equal width and determined by the arguments `value_range` and `nbins`.
		
		Args:
		  values:  Numeric `Tensor`.
		  value_range:  Shape [2] `Tensor` of same `dtype` as `values`.
		    values <= value_range[0] will be mapped to hist[0],
		    values >= value_range[1] will be mapped to hist[-1].
		  nbins:  Scalar `int32 Tensor`.  Number of histogram bins.
		  dtype:  dtype for returned histogram.
		  name:  A name for this operation (defaults to 'histogram_fixed_width').
		
		Returns:
		  A 1-D `Tensor` holding histogram of values.
		
		Examples:
		
		```python
		# Bins will be:  (-inf, 1), [1, 2), [2, 3), [3, 4), [4, inf)
		nbins = 5
		value_range = [0.0, 5.0]
		new_values = [-1.0, 0.0, 1.5, 2.0, 5.0, 15]
		
		with tf.get_default_session() as sess:
		  hist = tf.histogram_fixed_width(new_values, value_range, nbins=5)
		  variables.global_variables_initializer().run()
		  sess.run(hist) => [2, 1, 1, 0, 2]
		```
	**/
	static public function histogram_fixed_width(values:Dynamic, value_range:Dynamic, ?nbins:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Bins the given values for use in a histogram.
		
		Given the tensor `values`, this operation returns a rank 1 `Tensor`
		representing the indices of a histogram into which each element
		of `values` would be binned. The bins are equal width and
		determined by the arguments `value_range` and `nbins`.
		
		Args:
		  values:  Numeric `Tensor`.
		  value_range:  Shape [2] `Tensor` of same `dtype` as `values`.
		    values <= value_range[0] will be mapped to hist[0],
		    values >= value_range[1] will be mapped to hist[-1].
		  nbins:  Scalar `int32 Tensor`.  Number of histogram bins.
		  dtype:  dtype for returned histogram.
		  name:  A name for this operation (defaults to 'histogram_fixed_width').
		
		Returns:
		  A `Tensor` holding the indices of the binned values whose shape matches
		  `values`.
		
		Examples:
		
		```python
		# Bins will be:  (-inf, 1), [1, 2), [2, 3), [3, 4), [4, inf)
		nbins = 5
		value_range = [0.0, 5.0]
		new_values = [-1.0, 0.0, 1.5, 2.0, 5.0, 15]
		
		with tf.get_default_session() as sess:
		  indices = tf.histogram_fixed_width_bins(new_values, value_range, nbins=5)
		  variables.global_variables_initializer().run()
		  sess.run(indices) => [0, 0, 1, 2, 4]
		```
	**/
	static public function histogram_fixed_width_bins(values:Dynamic, value_range:Dynamic, ?nbins:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a tensor with the same shape and contents as input.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function identity(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function identity
	**/
	static public function identity_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns a list of tensors with the same shapes and contents as the input
		
		tensors.
		
		This op can be used to override the gradient for complicated functions. For
		example, suppose y = f(x) and we wish to apply a custom function g for backprop
		such that dx = g(dy). In Python,
		
		```python
		with tf.get_default_graph().gradient_override_map(
		    {'IdentityN': 'OverrideGradientWithG'}):
		  y, _ = identity_n([f(x), x])
		
		@tf.RegisterGradient('OverrideGradientWithG')
		def ApplyG(op, dy, _):
		  return [None, g(dy)]  # Do not backprop to f(x).
		```
		
		Args:
		  input: A list of `Tensor` objects.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `input`.
	**/
	static public function identity_n(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function identity_n
	**/
	static public function identity_n_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A Reader that outputs the queued work as both the key and value.
		
		To use, enqueue strings in a Queue.  ReaderRead will take the front
		work string and output (work, work).
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function identity_reader(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A Reader that outputs the queued work as both the key and value.
		
		To use, enqueue strings in a Queue.  ReaderRead will take the front
		work string and output (work, work).
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function identity_reader_v2(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function identity_reader_v2
	**/
	static public function identity_reader_v2_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Inverse fast Fourier transform.
		
		Computes the inverse 1-dimensional discrete Fourier transform over the
		inner-most dimension of `input`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function ifft(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inverse 2D fast Fourier transform.
		
		Computes the inverse 2-dimensional discrete Fourier transform over the
		inner-most 2 dimensions of `input`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function ifft2d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inverse 3D fast Fourier transform.
		
		Computes the inverse 3-dimensional discrete Fourier transform over the
		inner-most 3 dimensions of `input`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function ifft3d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the lower regularized incomplete Gamma function `P(a, x)`.
		
		The lower regularized incomplete Gamma function is defined as:
		
		
		\\(P(a, x) = gamma(a, x) / Gamma(a) = 1 - Q(a, x)\\)
		
		where
		
		\\(gamma(a, x) = \\int_{0}^{x} t^{a-1} exp(-t) dt\\)
		
		is the lower incomplete Gamma function.
		
		Note, above `Q(a, x)` (`Igammac`) is the upper regularized complete
		Gamma function.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function igamma(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function igamma
	**/
	static public function igamma_eager_fallback(a:Dynamic, x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the gradient of `igamma(a, x)` wrt `a`.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function igamma_grad_a(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function igamma_grad_a
	**/
	static public function igamma_grad_a_eager_fallback(a:Dynamic, x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Compute the upper regularized incomplete Gamma function `Q(a, x)`.
		
		The upper regularized incomplete Gamma function is defined as:
		
		\\(Q(a, x) = Gamma(a, x) / Gamma(a) = 1 - P(a, x)\\)
		
		where
		
		\\(Gamma(a, x) = int_{x}^{\infty} t^{a-1} exp(-t) dt\\)
		
		is the upper incomplete Gama function.
		
		Note, above `P(a, x)` (`Igamma`) is the lower regularized complete
		Gamma function.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function igammac(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function igammac
	**/
	static public function igammac_eager_fallback(a:Dynamic, x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the imaginary part of a complex (or real) tensor.
		
		Given a tensor `input`, this operation returns a tensor of type `float` that
		is the imaginary part of each element in `input` considered as a complex
		number. If `input` is real, a tensor of all zeros is returned.
		
		For example:
		
		```python
		x = tf.constant([-2.25 + 4.75j, 3.25 + 5.75j])
		tf.imag(x)  # [4.75, 5.75]
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float`, `double`,
		    `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32` or `float64`.
	**/
	static public function imag(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function imag
	**/
	static public function imag_eager_fallback(input:Dynamic, ?Tout:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns immutable tensor from memory region.
		
		The current implementation memmaps the tensor from a file.
		
		Args:
		  dtype: A `tf.DType`. Type of the returned tensor.
		  shape: A `tf.TensorShape` or list of `ints`. Shape of the returned tensor.
		  memory_region_name: A `string`.
		    Name of readonly memory region used by the tensor, see
		    NewReadOnlyMemoryRegionFromFile in tensorflow::Env.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function immutable_const(dtype:Dynamic, shape:Dynamic, memory_region_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function immutable_const
	**/
	static public function immutable_const_eager_fallback(dtype:Dynamic, shape:Dynamic, memory_region_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Imports the graph from `graph_def` into the current default `Graph`. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		Please file an issue at https://github.com/tensorflow/tensorflow/issues if you depend on this feature.
		
		This function provides a way to import a serialized TensorFlow
		[`GraphDef`](https://www.tensorflow.org/code/tensorflow/core/framework/graph.proto)
		protocol buffer, and extract individual objects in the `GraphDef` as
		`tf.Tensor` and `tf.Operation` objects. Once extracted,
		these objects are placed into the current default `Graph`. See
		`tf.Graph.as_graph_def` for a way to create a `GraphDef`
		proto.
		
		Args:
		  graph_def: A `GraphDef` proto containing operations to be imported into
		    the default graph.
		  input_map: A dictionary mapping input names (as strings) in `graph_def`
		    to `Tensor` objects. The values of the named input tensors in the
		    imported graph will be re-mapped to the respective `Tensor` values.
		  return_elements: A list of strings containing operation names in
		    `graph_def` that will be returned as `Operation` objects; and/or
		    tensor names in `graph_def` that will be returned as `Tensor` objects.
		  name: (Optional.) A prefix that will be prepended to the names in
		    `graph_def`. Note that this does not apply to imported function names.
		    Defaults to `"import"`.
		  op_dict: (Optional.) Deprecated, do not use.
		  producer_op_list: (Optional.) An `OpList` proto with the (possibly stripped)
		    list of `OpDef`s used by the producer of the graph. If provided,
		    unrecognized attrs for ops in `graph_def` that have their default value
		    according to `producer_op_list` will be removed. This will allow some more
		    `GraphDef`s produced by later binaries to be accepted by earlier binaries.
		
		Returns:
		  A list of `Operation` and/or `Tensor` objects from the imported graph,
		  corresponding to the names in `return_elements`.
		
		Raises:
		  TypeError: If `graph_def` is not a `GraphDef` proto,
		    `input_map` is not a dictionary mapping strings to `Tensor` objects,
		    or `return_elements` is not a list of strings.
		  ValueError: If `input_map`, or `return_elements` contains names that
		    do not appear in `graph_def`, or `graph_def` is not well-formed (e.g.
		    it refers to an unknown tensor).
	**/
	static public function import_graph_def(graph_def:Dynamic, ?input_map:Dynamic, ?return_elements:Dynamic, ?name:Dynamic, ?op_dict:Dynamic, ?producer_op_list:Dynamic):Dynamic;
	/**
		Returns an Op that initializes all tables of the default graph. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.tables_initializer` instead.
		
		Args:
		  name: Optional name for the initialization op.
		
		Returns:
		  An Op that initializes all tables.  Note that if there are
		  not tables the returned Op is a NoOp.
	**/
	static public function initialize_all_tables(?name:Dynamic):Dynamic;
	/**
		See `tf.global_variables_initializer`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-02.
		Instructions for updating:
		Use `tf.global_variables_initializer` instead.
		
		  **NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	static public function initialize_all_variables():Dynamic;
	/**
		See `tf.local_variables_initializer`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-02.
		Instructions for updating:
		Use `tf.local_variables_initializer` instead.
		
		  **NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	static public function initialize_local_variables():Dynamic;
	/**
		See `tf.variables_initializer`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-02.
		Instructions for updating:
		Use `tf.variables_initializer` instead.
		
		  **NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	static public function initialize_variables(var_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds v into specified rows of x.
		
		  Computes y = x; y[i, :] += v; return y.
		
		Args:
		  x: A `Tensor`. A `Tensor` of type T.
		  i: A `Tensor` of type `int32`.
		    A vector. Indices into the left-most dimension of `x`.
		  v: A `Tensor`. Must have the same type as `x`.
		    A `Tensor` of type T. Same dimension sizes as x except the first dimension, which must be the same as i's size.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function inplace_add(x:Dynamic, i:Dynamic, v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function inplace_add
	**/
	static public function inplace_add_eager_fallback(x:Dynamic, i:Dynamic, v:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Subtracts `v` into specified rows of `x`.
		
		  Computes y = x; y[i, :] -= v; return y.
		
		Args:
		  x: A `Tensor`. A `Tensor` of type T.
		  i: A `Tensor` of type `int32`.
		    A vector. Indices into the left-most dimension of `x`.
		  v: A `Tensor`. Must have the same type as `x`.
		    A `Tensor` of type T. Same dimension sizes as x except the first dimension, which must be the same as i's size.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function inplace_sub(x:Dynamic, i:Dynamic, v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function inplace_sub
	**/
	static public function inplace_sub_eager_fallback(x:Dynamic, i:Dynamic, v:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Updates specified rows with values in `v`.
		
		  Computes `x[i, :] = v; return x`.
		
		Args:
		  x: A `Tensor`. A tensor of type `T`.
		  i: A `Tensor` of type `int32`.
		    A vector. Indices into the left-most dimension of `x`.
		  v: A `Tensor`. Must have the same type as `x`.
		    A `Tensor` of type T. Same dimension sizes as x except the first dimension, which must be the same as i's size.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function inplace_update(x:Dynamic, i:Dynamic, v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function inplace_update
	**/
	static public function inplace_update_eager_fallback(x:Dynamic, i:Dynamic, v:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var int16 : Dynamic;
	static public var int16_ref : Dynamic;
	static public var int32 : Dynamic;
	static public var int32_ref : Dynamic;
	static public var int64 : Dynamic;
	static public var int64_ref : Dynamic;
	static public var int8 : Dynamic;
	static public var int8_ref : Dynamic;
	/**
		Computes the reciprocal of x element-wise.
		
		I.e., \\(y = 1 / x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function inv(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function inv
	**/
	static public function inv_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the gradient for the inverse of `x` wrt its input.
		
		Specifically, `grad = -dy * y*y`, where `y = 1/x`, and `dy`
		is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function inv_grad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function inv_grad
	**/
	static public function inv_grad_eager_fallback(y:Dynamic, dy:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the inverse permutation of a tensor.
		
		This operation computes the inverse of an index permutation. It takes a 1-D
		integer tensor `x`, which represents the indices of a zero-based array, and
		swaps each value with its index position. In other words, for an output tensor
		`y` and an input tensor `x`, this operation computes the following:
		
		`y[x[i]] = i for i in [0, 1, ..., len(x) - 1]`
		
		The values must include 0. There can be no duplicate values or negative values.
		
		For example:
		
		```
		# tensor `x` is [3, 4, 0, 2, 1]
		invert_permutation(x) ==> [2, 4, 3, 0, 1]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`. 1-D.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function invert_permutation(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function invert_permutation
	**/
	static public function invert_permutation_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns which elements of x are finite.
		
		@compatibility(numpy)
		Equivalent to np.isfinite
		@end_compatibility
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_finite(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function is_finite
	**/
	static public function is_finite_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns which elements of x are Inf.
		
		@compatibility(numpy)
		Equivalent to np.isinf
		@end_compatibility
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_inf(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function is_inf
	**/
	static public function is_inf_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns which elements of x are NaN.
		
		@compatibility(numpy)
		Equivalent to np.isnan
		@end_compatibility
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_nan(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function is_nan
	**/
	static public function is_nan_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns `True` if `x` is non-decreasing.
		
		Elements of `x` are compared in row-major order.  The tensor `[x[0],...]`
		is non-decreasing if for every adjacent pair we have `x[i] <= x[i+1]`.
		If `x` has less than two elements, it is trivially non-decreasing.
		
		See also:  `is_strictly_increasing`
		
		Args:
		  x: Numeric `Tensor`.
		  name: A name for this operation (optional).  Defaults to "is_non_decreasing"
		
		Returns:
		  Boolean `Tensor`, equal to `True` iff `x` is non-decreasing.
		
		Raises:
		  TypeError: if `x` is not a numeric tensor.
	**/
	static public function is_non_decreasing(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function is_numeric_tensor(tensor:Dynamic):Dynamic;
	/**
		Returns `True` if `x` is strictly increasing.
		
		Elements of `x` are compared in row-major order.  The tensor `[x[0],...]`
		is strictly increasing if for every adjacent pair we have `x[i] < x[i+1]`.
		If `x` has less than two elements, it is trivially strictly increasing.
		
		See also:  `is_non_decreasing`
		
		Args:
		  x: Numeric `Tensor`.
		  name: A name for this operation (optional).
		    Defaults to "is_strictly_increasing"
		
		Returns:
		  Boolean `Tensor`, equal to `True` iff `x` is strictly increasing.
		
		Raises:
		  TypeError: if `x` is not a numeric tensor.
	**/
	static public function is_strictly_increasing(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Tests if a variable has been initialized.
		
		Args:
		  variable: A `Variable`.
		
		Returns:
		  Returns a scalar boolean Tensor, `True` if the variable has been
		  initialized, `False` otherwise.
		
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	static public function is_variable_initialized(variable:Dynamic):Dynamic;
	/**
		Computes \\(ln(|Beta(x)|)\\), reducing along the last dimension.
		
		Given one-dimensional `z = [z_0,...,z_{K-1}]`, we define
		
		$$Beta(z) = \prod_j Gamma(z_j) / Gamma(\sum_j z_j)$$
		
		And for `n + 1` dimensional `x` with shape `[N1, ..., Nn, K]`, we define
		$$lbeta(x)[i1, ..., in] = Log(|Beta(x[i1, ..., in, :])|)$$.
		
		In other words, the last dimension is treated as the `z` vector.
		
		Note that if `z = [u, v]`, then
		\\(Beta(z) = int_0^1 t^{u-1} (1 - t)^{v-1} dt\\), which defines the
		traditional bivariate beta function.
		
		If the last dimension is empty, we follow the convention that the sum over
		the empty set is zero, and the product is one.
		
		Args:
		  x: A rank `n + 1` `Tensor`, `n >= 0` with type `float`, or `double`.
		  name: A name for the operation (optional).
		
		Returns:
		  The logarithm of \\(|Beta(x)|\\) reducing along the last dimension.
	**/
	static public function lbeta(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LeCun normal initializer.
		
		It draws samples from a truncated normal distribution centered on 0
		with `stddev = sqrt(1 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    - [Self-Normalizing Neural Networks](https://arxiv.org/abs/1706.02515)
		    - [Efficient
		    Backprop](http://yann.lecun.com/exdb/publis/pdf/lecun-98b.pdf)
	**/
	static public function lecun_normal(?seed:Dynamic):Dynamic;
	/**
		LeCun uniform initializer.
		
		It draws samples from a uniform distribution within [-limit, limit]
		where `limit` is `sqrt(3 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    LeCun 98, Efficient Backprop,
		    http://yann.lecun.com/exdb/publis/pdf/lecun-98b.pdf
	**/
	static public function lecun_uniform(?seed:Dynamic):Dynamic;
	/**
		Returns the truth value of (x < y) element-wise.
		
		*NOTE*: `math.less` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function less(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function less
	**/
	static public function less_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the truth value of (x <= y) element-wise.
		
		*NOTE*: `math.less_equal` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function less_equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function less_equal
	**/
	static public function less_equal_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the log of the absolute value of `Gamma(x)` element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function lgamma(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function lgamma
	**/
	static public function lgamma_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Generates values in an interval.
		
		A sequence of `num` evenly-spaced values are generated beginning at `start`.
		If `num > 1`, the values in the sequence increase by `stop - start / num - 1`,
		so that the last one is exactly `stop`.
		
		For example:
		
		```
		tf.linspace(10.0, 12.0, 3, name="linspace") => [ 10.0  11.0  12.0]
		```
		
		Args:
		  start: A `Tensor`. Must be one of the following types: `bfloat16`, `float32`, `float64`.
		    0-D tensor. First entry in the range.
		  stop: A `Tensor`. Must have the same type as `start`.
		    0-D tensor. Last entry in the range.
		  num: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D tensor. Number of values to generate.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `start`.
	**/
	static public function lin_space(start:Dynamic, stop:Dynamic, num:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function lin_space
	**/
	static public function lin_space_eager_fallback(start:Dynamic, stop:Dynamic, num:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Generates values in an interval.
		
		A sequence of `num` evenly-spaced values are generated beginning at `start`.
		If `num > 1`, the values in the sequence increase by `stop - start / num - 1`,
		so that the last one is exactly `stop`.
		
		For example:
		
		```
		tf.linspace(10.0, 12.0, 3, name="linspace") => [ 10.0  11.0  12.0]
		```
		
		Args:
		  start: A `Tensor`. Must be one of the following types: `bfloat16`, `float32`, `float64`.
		    0-D tensor. First entry in the range.
		  stop: A `Tensor`. Must have the same type as `start`.
		    0-D tensor. Last entry in the range.
		  num: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D tensor. Number of values to generate.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `start`.
	**/
	static public function linspace(start:Dynamic, stop:Dynamic, num:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the difference between two lists of numbers or strings.
		
		Given a list `x` and a list `y`, this operation returns a list `out` that
		represents all values that are in `x` but not in `y`. The returned list `out`
		is sorted in the same order that the numbers appear in `x` (duplicates are
		preserved). This operation also returns a list `idx` that represents the
		position of each `out` element in `x`. In other words:
		
		`out[i] = x[idx[i]] for i in [0, 1, ..., len(out) - 1]`
		
		For example, given this input:
		
		```
		x = [1, 2, 3, 4, 5, 6]
		y = [1, 3, 5]
		```
		
		This operation would return:
		
		```
		out ==> [2, 4, 6]
		idx ==> [1, 3, 5]
		```
		
		Args:
		  x: A `Tensor`. 1-D. Values to keep.
		  y: A `Tensor`. Must have the same type as `x`. 1-D. Values to remove.
		  out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (out, idx).
		
		  out: A `Tensor`. Has the same type as `x`.
		  idx: A `Tensor` of type `out_idx`.
	**/
	static public function list_diff(x:Dynamic, y:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function list_diff
	**/
	static public function list_diff_eager_fallback(x:Dynamic, y:Dynamic, ?out_idx:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the difference between two lists of numbers or strings.
		
		  Given a list `x` and a list `y`, this operation returns a list `out` that
		  represents all values that are in `x` but not in `y`. The returned list `out`
		  is sorted in the same order that the numbers appear in `x` (duplicates are
		  preserved). This operation also returns a list `idx` that represents the
		  position of each `out` element in `x`. In other words:
		
		  `out[i] = x[idx[i]] for i in [0, 1, ..., len(out) - 1]`
		
		  For example, given this input:
		
		  ```
		  x = [1, 2, 3, 4, 5, 6]
		  y = [1, 3, 5]
		  ```
		
		  This operation would return:
		
		  ```
		  out ==> [2, 4, 6]
		  idx ==> [1, 3, 5]
		  ```
		
		  Args:
		    x: A `Tensor`. 1-D. Values to keep.
		    y: A `Tensor`. Must have the same type as `x`. 1-D. Values to remove.
		    out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		    name: A name for the operation (optional).
		
		  Returns:
		    A tuple of `Tensor` objects (out, idx).
		
		    out: A `Tensor`. Has the same type as `x`.
		    idx: A `Tensor` of type `out_idx`.
		  
		DEPRECATED FUNCTION
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-30.
		Instructions for updating:
		This op will be removed after the deprecation date. Please switch to tf.setdiff1d().
	**/
	static public function listdiff(x:Dynamic, y:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A Reader that outputs the records from a LMDB file.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function lmdb_reader(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Loads a TensorFlow plugin, containing file system implementation.
		
		Pass `library_filename` to a platform-specific mechanism for dynamically
		loading a library. The rules for determining the exact location of the
		library are platform-specific and are not documented here.
		
		Args:
		  library_filename: Path to the plugin.
		    Relative or absolute filesystem path to a dynamic library file.
		
		Returns:
		  None.
		
		Raises:
		  RuntimeError: when unable to load the library.
	**/
	static public function load_file_system_library(library_filename:Dynamic):Dynamic;
	/**
		Loads a TensorFlow plugin.
		
		"library_location" can be a path to a specific shared object, or a folder.
		If it is a folder, all sahred objects that are named "libtfkernel*" will be
		loaded. When the library is loaded, kernels registered in the library via the
		`REGISTER_*` macros are made available in the TensorFlow process.
		
		Args:
		  library_location: Path to the plugin or the folder of plugins.
		    Relative or absolute filesystem path to a dynamic library file or folder.
		
		Returns:
		  None
		
		Raises:
		  OSError: When the file to be loaded is not found.
		  RuntimeError: when unable to load the library.
	**/
	static public function load_library(library_location:Dynamic):Dynamic;
	/**
		Loads a TensorFlow plugin, containing custom ops and kernels.
		
		Pass "library_filename" to a platform-specific mechanism for dynamically
		loading a library. The rules for determining the exact location of the
		library are platform-specific and are not documented here. When the
		library is loaded, ops and kernels registered in the library via the
		`REGISTER_*` macros are made available in the TensorFlow process. Note
		that ops with the same name as an existing op are rejected and not
		registered with the process.
		
		Args:
		  library_filename: Path to the plugin.
		    Relative or absolute filesystem path to a dynamic library file.
		
		Returns:
		  A python module containing the Python wrappers for Ops defined in
		  the plugin.
		
		Raises:
		  RuntimeError: when unable to load the library or get the python wrappers.
	**/
	static public function load_op_library(library_filename:Dynamic):Dynamic;
	/**
		Returns local variables.
		
		Local variables - per process variables, usually not saved/restored to
		checkpoint and used for temporary or intermediate values.
		For example, they can be used as counters for metrics computation or
		number of epochs this machine has read data.
		The `tf.contrib.framework.local_variable()` function automatically adds the
		new variable to `GraphKeys.LOCAL_VARIABLES`.
		This convenience function returns the contents of that collection.
		
		An alternative to local variables are global variables. See
		`tf.global_variables`
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered
		    to include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a
		    scope is supplied. The choice of `re.match` means that a `scope` without
		    special tokens filters by prefix.
		
		Returns:
		  A list of local `Variable` objects.
	**/
	static public function local_variables(?scope:Dynamic):Dynamic;
	/**
		Returns an Op that initializes all local variables.
		
		This is just a shortcut for `variables_initializer(local_variables())`
		
		Returns:
		  An Op that initializes all local variables in the graph.
	**/
	static public function local_variables_initializer():Dynamic;
	/**
		Computes natural logarithm of x element-wise.
		
		I.e., \\(y = \log_e x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function log(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes natural logarithm of (1 + x) element-wise.
		
		I.e., \\(y = \log_e (1 + x)\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function log1p(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function log1p
	**/
	static public function log1p_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function log
	**/
	static public function log_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the sign and the log of the absolute value of the determinant of
		
		one or more square matrices.
		
		The input is a tensor of shape `[N, M, M]` whose inner-most 2 dimensions
		form square matrices. The outputs are two tensors containing the signs and
		absolute values of the log determinants for all N input submatrices
		`[..., :, :]` such that the determinant = sign*exp(log_abs_determinant).
		The log_abs_determinant is computed as det(P)*sum(log(diag(LU))) where LU
		is the LU decomposition of the input and P is the corresponding
		permutation matrix.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `complex64`, `complex128`.
		    Shape is `[N, M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sign, log_abs_determinant).
		
		  sign: A `Tensor`. Has the same type as `input`.
		  log_abs_determinant: A `Tensor`. Has the same type as `input`.
	**/
	static public function log_matrix_determinant(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function log_matrix_determinant
	**/
	static public function log_matrix_determinant_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes log sigmoid of `x` element-wise.
		
		Specifically, `y = log(1 / (1 + exp(-x)))`.  For numerical stability,
		we use `y = -tf.nn.softplus(-x)`.
		
		Args:
		  x: A Tensor with type `float32` or `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor with the same type as `x`.
	**/
	static public function log_sigmoid(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of x AND y element-wise.
		
		*NOTE*: `math.logical_and` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor` of type `bool`.
		  y: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function logical_and(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function logical_and
	**/
	static public function logical_and_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the truth value of NOT x element-wise.
		
		Args:
		  x: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function logical_not(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function logical_not
	**/
	static public function logical_not_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the truth value of x OR y element-wise.
		
		*NOTE*: `math.logical_or` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor` of type `bool`.
		  y: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function logical_or(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function logical_or
	**/
	static public function logical_or_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		x ^ y = (x | y) & ~(x & y).
	**/
	static public function logical_xor(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies lower_bound(sorted_search_values, values) along each row.
		
		Each set of rows with the same index in (sorted_inputs, values) is treated
		independently.  The resulting row is the equivalent of calling
		`np.searchsorted(sorted_inputs, values, side='left')`.
		
		The result is not a global index to the entire 
		`Tensor`, but rather just the index in the last dimension.
		
		A 2-D example:
		  sorted_sequence = [[0, 3, 9, 9, 10],
		                     [1, 2, 3, 4, 5]]
		  values = [[2, 4, 9],
		            [0, 2, 6]]
		
		  result = LowerBound(sorted_sequence, values)
		
		  result == [[1, 2, 2],
		             [0, 1, 5]]
		
		Args:
		  sorted_inputs: A `Tensor`. 2-D Tensor where each row is ordered.
		  values: A `Tensor`. Must have the same type as `sorted_inputs`.
		    2-D Tensor with the same numbers of rows as `sorted_search_values`. Contains
		    the values that will be searched for in `sorted_search_values`.
		  out_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function lower_bound(sorted_inputs:Dynamic, values:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function lower_bound
	**/
	static public function lower_bound_eager_fallback(sorted_inputs:Dynamic, values:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Generates `__all__` from the docstring of one or more modules.
		
		Usage: `make_all(__name__)` or
		`make_all(__name__, [sys.modules(__name__), other_module])`. The doc string
		modules must each a docstring, and `__all__` will contain all symbols with
		`@@` references, where that symbol currently exists in the module named
		`module_name`.
		
		Args:
		  module_name: The name of the module (usually `__name__`).
		  doc_string_modules: a list of modules from which to take docstring.
		  If None, then a list containing only the module named `module_name` is used.
		
		Returns:
		  A list suitable for use as `__all__`.
	**/
	static public function make_all(module_name:Dynamic, ?doc_string_modules:Dynamic):Dynamic;
	/**
		Create a numpy ndarray from a tensor.
		
		Create a numpy ndarray with the same shape and data as the tensor.
		
		Args:
		  tensor: A TensorProto.
		
		Returns:
		  A numpy array with the tensor contents.
		
		Raises:
		  TypeError: if tensor has unsupported type.
	**/
	static public function make_ndarray(tensor:Dynamic):Dynamic;
	/**
		Given an arbitrary function, wrap it so that it does variable sharing.
		
		This wraps `func_` in a Template and partially evaluates it. Templates are
		functions that create variables the first time they are called and reuse them
		thereafter. In order for `func_` to be compatible with a `Template` it must
		have the following properties:
		
		* The function should create all trainable variables and any variables that
		   should be reused by calling `tf.get_variable`. If a trainable variable is
		   created using `tf.Variable`, then a ValueError will be thrown. Variables
		   that are intended to be locals can be created by specifying
		   `tf.Variable(..., trainable=false)`.
		* The function may use variable scopes and other templates internally to
		    create and reuse variables, but it shouldn't use `tf.global_variables` to
		    capture variables that are defined outside of the scope of the function.
		* Internal scopes and variable names should not depend on any arguments that
		    are not supplied to `make_template`. In general you will get a ValueError
		    telling you that you are trying to reuse a variable that doesn't exist
		    if you make a mistake.
		
		In the following example, both `z` and `w` will be scaled by the same `y`. It
		is important to note that if we didn't assign `scalar_name` and used a
		different name for z and w that a `ValueError` would be thrown because it
		couldn't reuse the variable.
		
		```python
		def my_op(x, scalar_name):
		  var1 = tf.get_variable(scalar_name,
		                         shape=[],
		                         initializer=tf.constant_initializer(1))
		  return x * var1
		
		scale_by_y = tf.make_template('scale_by_y', my_op, scalar_name='y')
		
		z = scale_by_y(input1)
		w = scale_by_y(input2)
		```
		
		As a safe-guard, the returned function will raise a `ValueError` after the
		first call if trainable variables are created by calling `tf.Variable`.
		
		If all of these are true, then 2 properties are enforced by the template:
		
		1. Calling the same template multiple times will share all non-local
		    variables.
		2. Two different templates are guaranteed to be unique, unless you reenter the
		    same variable scope as the initial definition of a template and redefine
		    it. An examples of this exception:
		
		```python
		def my_op(x, scalar_name):
		  var1 = tf.get_variable(scalar_name,
		                         shape=[],
		                         initializer=tf.constant_initializer(1))
		  return x * var1
		
		with tf.variable_scope('scope') as vs:
		  scale_by_y = tf.make_template('scale_by_y', my_op, scalar_name='y')
		  z = scale_by_y(input1)
		  w = scale_by_y(input2)
		
		# Creates a template that reuses the variables above.
		with tf.variable_scope(vs, reuse=True):
		  scale_by_y2 = tf.make_template('scale_by_y', my_op, scalar_name='y')
		  z2 = scale_by_y2(input1)
		  w2 = scale_by_y2(input2)
		```
		
		Depending on the value of `create_scope_now_`, the full variable scope may be
		captured either at the time of first call or at the time of construction. If
		this option is set to True, then all Tensors created by repeated calls to the
		template will have an extra trailing _N+1 to their name, as the first time the
		scope is entered in the Template constructor no Tensors are created.
		
		Note: `name_`, `func_` and `create_scope_now_` have a trailing underscore to
		reduce the likelihood of collisions with kwargs.
		
		Args:
		  name_: A name for the scope created by this template. If necessary, the name
		    will be made unique by appending `_N` to the name.
		  func_: The function to wrap.
		  create_scope_now_: Boolean controlling whether the scope should be created
		    when the template is constructed or when the template is called. Default
		    is False, meaning the scope is created when the template is called.
		  unique_name_: When used, it overrides name_ and is not made unique. If a
		    template of the same scope/unique_name already exists and reuse is false,
		    an error is raised. Defaults to None.
		  custom_getter_: Optional custom getter for variables used in `func_`. See
		    the `tf.get_variable` `custom_getter` documentation for
		    more information.
		  **kwargs: Keyword arguments to apply to `func_`.
		
		Returns:
		  A function to encapsulate a set of variables which should be created once
		  and reused. An enclosing scope will be created either when `make_template`
		  is called or when the result is called, depending on the value of
		  `create_scope_now_`. Regardless of the value, the first time the template
		  is called it will enter the scope with no reuse, and call `func_` to create
		  variables, which are guaranteed to be unique. All subsequent calls will
		  re-enter the scope and reuse those variables.
		
		Raises:
		  ValueError: if `name_` is None.
	**/
	static public function make_template(name_:Dynamic, func_:Dynamic, ?create_scope_now_:Dynamic, ?unique_name_:Dynamic, ?custom_getter_:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a TensorProto.
		
		Args:
		  values:         Values to put in the TensorProto.
		  dtype:          Optional tensor_pb2 DataType value.
		  shape:          List of integers representing the dimensions of tensor.
		  verify_shape:   Boolean that enables verification of a shape of values.
		
		Returns:
		  A `TensorProto`. Depending on the type, it may contain data in the
		  "tensor_content" attribute, which is not directly useful to Python programs.
		  To access the values you should convert the proto back to a numpy ndarray
		  with `tf.make_ndarray(proto)`.
		
		  If `values` is a `TensorProto`, it is immediately returned; `dtype` and
		  `shape` are ignored.
		
		Raises:
		  TypeError:  if unsupported types are provided.
		  ValueError: if arguments have inappropriate values or if verify_shape is
		   True and shape of values is not equals to a shape from the argument.
		
		make_tensor_proto accepts "values" of a python scalar, a python list, a
		numpy ndarray, or a numpy scalar.
		
		If "values" is a python scalar or a python list, make_tensor_proto
		first convert it to numpy ndarray. If dtype is None, the
		conversion tries its best to infer the right numpy data
		type. Otherwise, the resulting numpy array has a compatible data
		type with the given dtype.
		
		In either case above, the numpy ndarray (either the caller provided
		or the auto converted) must have the compatible type with dtype.
		
		make_tensor_proto then converts the numpy array to a tensor proto.
		
		If "shape" is None, the resulting tensor proto represents the numpy
		array precisely.
		
		Otherwise, "shape" specifies the tensor's shape and the numpy array
		can not have more elements than what "shape" specifies.
	**/
	static public function make_tensor_proto(values:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?verify_shape:Dynamic):Dynamic;
	/**
		Op removes all elements in the underlying container.
		
		Args:
		  dtypes: A list of `tf.DTypes`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function map_clear(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function map_clear
	**/
	static public function map_clear_eager_fallback(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		map on the list of tensors unpacked from `elems` on dimension 0.
		
		The simplest version of `map_fn` repeatedly applies the callable `fn` to a
		sequence of elements from first to last. The elements are made of the
		tensors unpacked from `elems`. `dtype` is the data type of the return
		value of `fn`. Users must provide `dtype` if it is different from
		the data type of `elems`.
		
		Suppose that `elems` is unpacked into `values`, a list of tensors. The shape
		of the result tensor is `[values.shape[0]] + fn(values[0]).shape`.
		
		This method also allows multi-arity `elems` and output of `fn`.  If `elems`
		is a (possibly nested) list or tuple of tensors, then each of these tensors
		must have a matching first (unpack) dimension.  The signature of `fn` may
		match the structure of `elems`.  That is, if `elems` is
		`(t1, [t2, t3, [t4, t5]])`, then an appropriate signature for `fn` is:
		`fn = lambda (t1, [t2, t3, [t4, t5]]):`.
		
		Furthermore, `fn` may emit a different structure than its input.  For example,
		`fn` may look like: `fn = lambda t1: return (t1 + 1, t1 - 1)`.  In this case,
		the `dtype` parameter is not optional: `dtype` must be a type or (possibly
		nested) tuple of types matching the output of `fn`.
		
		To apply a functional operation to the nonzero elements of a SparseTensor
		one of the following methods is recommended. First, if the function is
		expressible as TensorFlow ops, use
		
		```python
		  result = SparseTensor(input.indices, fn(input.values), input.dense_shape)
		```
		
		If, however, the function is not expressible as a TensorFlow op, then use
		
		```python
		result = SparseTensor(
		  input.indices, map_fn(fn, input.values), input.dense_shape)
		```
		
		instead.
		
		When executing eagerly, map_fn does not execute in parallel even if
		`parallel_iterations` is set to a value > 1. You can still get the
		performance benefits of running a function in parallel by using the
		`tf.contrib.eager.defun` decorator,
		
		```python
		# Assume the function being used in map_fn is fn.
		# To ensure map_fn calls fn in parallel, use the defun decorator.
		@tf.contrib.eager.defun
		def func(tensor):
		  return tf.map_fn(fn, tensor)
		```
		
		Note that if you use the defun decorator, any non-TensorFlow Python code
		that you may have written in your function won't get executed. See
		`tf.contrib.eager.defun` for more details. The recommendation would be to
		debug without defun but switch to defun to get performance benefits of
		running map_fn in parallel.
		
		Args:
		  fn: The callable to be performed.  It accepts one argument, which will
		    have the same (possibly nested) structure as `elems`.  Its output
		    must have the same structure as `dtype` if one is provided, otherwise
		    it must have the same structure as `elems`.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which
		    will be unpacked along their first dimension.  The nested sequence
		    of the resulting slices will be applied to `fn`.
		  dtype: (optional) The output type(s) of `fn`.  If `fn` returns a structure
		    of Tensors differing from the structure of `elems`, then `dtype` is not
		    optional and must have the same structure as the output of `fn`.
		  parallel_iterations: (optional) The number of iterations allowed to run
		    in parallel. When graph building, the default value is 10. While executing
		    eagerly, the default value is set to 1.
		  back_prop: (optional) True enables support for back propagation.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  infer_shape: (optional) False disables tests for consistent output shapes.
		  name: (optional) Name prefix for the returned tensors.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors.  Each tensor packs the
		  results of applying `fn` to tensors unpacked from `elems` along the first
		  dimension, from first to last.
		
		Raises:
		  TypeError: if `fn` is not callable or the structure of the output of
		    `fn` and `dtype` do not match, or if elems is a SparseTensor.
		  ValueError: if the lengths of the output of `fn` and `dtype` do not match.
		
		Examples:
		  ```python
		  elems = np.array([1, 2, 3, 4, 5, 6])
		  squares = map_fn(lambda x: x * x, elems)
		  # squares == [1, 4, 9, 16, 25, 36]
		  ```
		
		  ```python
		  elems = (np.array([1, 2, 3]), np.array([-1, 1, -1]))
		  alternate = map_fn(lambda x: x[0] * x[1], elems, dtype=tf.int64)
		  # alternate == [-1, 2, -3]
		  ```
		
		  ```python
		  elems = np.array([1, 2, 3])
		  alternates = map_fn(lambda x: (x, -x), elems, dtype=(tf.int64, tf.int64))
		  # alternates[0] == [1, 2, 3]
		  # alternates[1] == [-1, -2, -3]
		  ```
	**/
	static public function map_fn(fn:Dynamic, elems:Dynamic, ?dtype:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?infer_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Op returns the number of incomplete elements in the underlying container.
		
		Args:
		  dtypes: A list of `tf.DTypes`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function map_incomplete_size(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function map_incomplete_size
	**/
	static public function map_incomplete_size_eager_fallback(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Op peeks at the values at the specified key.  If the
		
		underlying container does not contain this key
		this op will block until it does.
		
		Args:
		  key: A `Tensor` of type `int64`.
		  indices: A `Tensor` of type `int32`.
		  dtypes: A list of `tf.DTypes` that has length `>= 1`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `dtypes`.
	**/
	static public function map_peek(key:Dynamic, indices:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function map_peek
	**/
	static public function map_peek_eager_fallback(key:Dynamic, indices:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Op returns the number of elements in the underlying container.
		
		Args:
		  dtypes: A list of `tf.DTypes`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function map_size(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function map_size
	**/
	static public function map_size_eager_fallback(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Stage (key, values) in the underlying container which behaves like a hashtable.
		
		Args:
		  key: A `Tensor` of type `int64`. int64
		  indices: A `Tensor` of type `int32`.
		  values: A list of `Tensor` objects. a list of tensors
		    dtypes A list of data types that inserted values should adhere to.
		  dtypes: A list of `tf.DTypes`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		    Maximum number of elements in the Staging Area. If > 0, inserts
		    on the container will block when the capacity is reached.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container. Otherwise,
		    a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    It is necessary to match this name to the matching Unstage Op.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function map_stage(key:Dynamic, indices:Dynamic, values:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function map_stage
	**/
	static public function map_stage_eager_fallback(key:Dynamic, indices:Dynamic, values:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Op removes and returns the values associated with the key
		
		from the underlying container.   If the underlying container
		does not contain this key, the op will block until it does.
		
		Args:
		  key: A `Tensor` of type `int64`.
		  indices: A `Tensor` of type `int32`.
		  dtypes: A list of `tf.DTypes` that has length `>= 1`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `dtypes`.
	**/
	static public function map_unstage(key:Dynamic, indices:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function map_unstage
	**/
	static public function map_unstage_eager_fallback(key:Dynamic, indices:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Op removes and returns a random (key, value)
		
		from the underlying container.   If the underlying container
		does not contain elements, the op will block until it does.
		
		Args:
		  indices: A `Tensor` of type `int32`.
		  dtypes: A list of `tf.DTypes` that has length `>= 1`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (key, values).
		
		  key: A `Tensor` of type `int64`.
		  values: A list of `Tensor` objects of type `dtypes`.
	**/
	static public function map_unstage_no_key(indices:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function map_unstage_no_key
	**/
	static public function map_unstage_no_key_eager_fallback(indices:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Multiply the matrix "a" by the matrix "b".
		
		The inputs must be two-dimensional matrices and the inner dimension of
		"a" (after being transposed if transpose_a is true) must match the
		outer dimension of "b" (after being transposed if transposed_b is
		true).
		
		*Note*: The default kernel implementation for MatMul on GPUs uses
		cublas.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `complex64`, `complex128`.
		  b: A `Tensor`. Must have the same type as `a`.
		  transpose_a: An optional `bool`. Defaults to `False`.
		    If true, "a" is transposed before multiplication.
		  transpose_b: An optional `bool`. Defaults to `False`.
		    If true, "b" is transposed before multiplication.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function mat_mul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function mat_mul
	**/
	static public function mat_mul_eager_fallback(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the set of files matching one or more glob patterns.
		
		Note that this routine only supports wildcard characters in the
		basename portion of the pattern, not in the directory portion.
		Note also that the order of filenames returned can be non-deterministic.
		
		Args:
		  pattern: A `Tensor` of type `string`.
		    Shell wildcard pattern(s). Scalar or vector of type string.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function matching_files(pattern:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matching_files
	**/
	static public function matching_files_eager_fallback(pattern:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Multiplies matrix `a` by matrix `b`, producing `a` * `b`.
		
		The inputs must, following any transpositions, be tensors of rank >= 2
		where the inner 2 dimensions specify valid matrix multiplication arguments,
		and any further outer dimensions match.
		
		Both matrices must be of the same type. The supported types are:
		`float16`, `float32`, `float64`, `int32`, `complex64`, `complex128`.
		
		Either matrix can be transposed or adjointed (conjugated and transposed) on
		the fly by setting one of the corresponding flag to `True`. These are `False`
		by default.
		
		If one or both of the matrices contain a lot of zeros, a more efficient
		multiplication algorithm can be used by setting the corresponding
		`a_is_sparse` or `b_is_sparse` flag to `True`. These are `False` by default.
		This optimization is only available for plain matrices (rank-2 tensors) with
		datatypes `bfloat16` or `float32`.
		
		For example:
		
		```python
		# 2-D tensor `a`
		# [[1, 2, 3],
		#  [4, 5, 6]]
		a = tf.constant([1, 2, 3, 4, 5, 6], shape=[2, 3])
		
		# 2-D tensor `b`
		# [[ 7,  8],
		#  [ 9, 10],
		#  [11, 12]]
		b = tf.constant([7, 8, 9, 10, 11, 12], shape=[3, 2])
		
		# `a` * `b`
		# [[ 58,  64],
		#  [139, 154]]
		c = tf.matmul(a, b)
		
		
		# 3-D tensor `a`
		# [[[ 1,  2,  3],
		#   [ 4,  5,  6]],
		#  [[ 7,  8,  9],
		#   [10, 11, 12]]]
		a = tf.constant(np.arange(1, 13, dtype=np.int32),
		                shape=[2, 2, 3])
		
		# 3-D tensor `b`
		# [[[13, 14],
		#   [15, 16],
		#   [17, 18]],
		#  [[19, 20],
		#   [21, 22],
		#   [23, 24]]]
		b = tf.constant(np.arange(13, 25, dtype=np.int32),
		                shape=[2, 3, 2])
		
		# `a` * `b`
		# [[[ 94, 100],
		#   [229, 244]],
		#  [[508, 532],
		#   [697, 730]]]
		c = tf.matmul(a, b)
		
		# Since python >= 3.5 the @ operator is supported (see PEP 465).
		# In TensorFlow, it simply calls the `tf.matmul()` function, so the
		# following lines are equivalent:
		d = a @ b @ [[10.], [11.]]
		d = tf.matmul(tf.matmul(a, b), [[10.], [11.]])
		```
		
		Args:
		  a: `Tensor` of type `float16`, `float32`, `float64`, `int32`, `complex64`,
		    `complex128` and rank > 1.
		  b: `Tensor` with same type and rank as `a`.
		  transpose_a: If `True`, `a` is transposed before multiplication.
		  transpose_b: If `True`, `b` is transposed before multiplication.
		  adjoint_a: If `True`, `a` is conjugated and transposed before
		    multiplication.
		  adjoint_b: If `True`, `b` is conjugated and transposed before
		    multiplication.
		  a_is_sparse: If `True`, `a` is treated as a sparse matrix.
		  b_is_sparse: If `True`, `b` is treated as a sparse matrix.
		  name: Name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same type as `a` and `b` where each inner-most matrix is
		  the product of the corresponding matrices in `a` and `b`, e.g. if all
		  transpose or adjoint attributes are `False`:
		
		  `output`[..., i, j] = sum_k (`a`[..., i, k] * `b`[..., k, j]),
		  for all indices i, j.
		
		  Note: This is matrix product, not element-wise product.
		
		
		Raises:
		  ValueError: If transpose_a and adjoint_a, or transpose_b and adjoint_b
		    are both set to True.
	**/
	static public function matmul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Copy a tensor setting everything outside a central band in each innermost matrix
		
		to zero.
		
		The `band` part is computed as follows:
		Assume `input` has `k` dimensions `[I, J, K, ..., M, N]`, then the output is a
		tensor with the same shape where
		
		`band[i, j, k, ..., m, n] = in_band(m, n) * input[i, j, k, ..., m, n]`.
		
		The indicator function
		
		`in_band(m, n) = (num_lower < 0 || (m-n) <= num_lower)) &&
		                 (num_upper < 0 || (n-m) <= num_upper)`.
		
		For example:
		
		```
		# if 'input' is [[ 0,  1,  2, 3]
		                 [-1,  0,  1, 2]
		                 [-2, -1,  0, 1]
		                 [-3, -2, -1, 0]],
		
		tf.matrix_band_part(input, 1, -1) ==> [[ 0,  1,  2, 3]
		                                       [-1,  0,  1, 2]
		                                       [ 0, -1,  0, 1]
		                                       [ 0,  0, -1, 0]],
		
		tf.matrix_band_part(input, 2, 1) ==> [[ 0,  1,  0, 0]
		                                      [-1,  0,  1, 0]
		                                      [-2, -1,  0, 1]
		                                      [ 0, -2, -1, 0]]
		```
		
		Useful special cases:
		
		```
		 tf.matrix_band_part(input, 0, -1) ==> Upper triangular part.
		 tf.matrix_band_part(input, -1, 0) ==> Lower triangular part.
		 tf.matrix_band_part(input, 0, 0) ==> Diagonal.
		```
		
		Args:
		  input: A `Tensor`. Rank `k` tensor.
		  num_lower: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D tensor. Number of subdiagonals to keep. If negative, keep entire
		    lower triangle.
		  num_upper: A `Tensor`. Must have the same type as `num_lower`.
		    0-D tensor. Number of superdiagonals to keep. If negative, keep
		    entire upper triangle.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_band_part(input:Dynamic, num_lower:Dynamic, num_upper:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_band_part
	**/
	static public function matrix_band_part_eager_fallback(input:Dynamic, num_lower:Dynamic, num_upper:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the determinant of one or more square matrices.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor containing the determinants
		for all input submatrices `[..., :, :]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_determinant(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_determinant
	**/
	static public function matrix_determinant_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns a batched diagonal tensor with a given batched diagonal values.
		
		Given a `diagonal`, this operation returns a tensor with the `diagonal` and
		everything else padded with zeros. The diagonal is computed as follows:
		
		Assume `diagonal` has `k` dimensions `[I, J, K, ..., N]`, then the output is a
		tensor of rank `k+1` with dimensions [I, J, K, ..., N, N]` where:
		
		`output[i, j, k, ..., m, n] = 1{m=n} * diagonal[i, j, k, ..., n]`.
		
		For example:
		
		```
		# 'diagonal' is [[1, 2, 3, 4], [5, 6, 7, 8]]
		
		and diagonal.shape = (2, 4)
		
		tf.matrix_diag(diagonal) ==> [[[1, 0, 0, 0]
		                                     [0, 2, 0, 0]
		                                     [0, 0, 3, 0]
		                                     [0, 0, 0, 4]],
		                                    [[5, 0, 0, 0]
		                                     [0, 6, 0, 0]
		                                     [0, 0, 7, 0]
		                                     [0, 0, 0, 8]]]
		
		which has shape (2, 4, 4)
		```
		
		Args:
		  diagonal: A `Tensor`. Rank `k`, where `k >= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function matrix_diag(diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_diag
	**/
	static public function matrix_diag_eager_fallback(diagonal:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the batched diagonal part of a batched tensor.
		
		This operation returns a tensor with the `diagonal` part
		of the batched `input`. The `diagonal` part is computed as follows:
		
		Assume `input` has `k` dimensions `[I, J, K, ..., M, N]`, then the output is a
		tensor of rank `k - 1` with dimensions `[I, J, K, ..., min(M, N)]` where:
		
		`diagonal[i, j, k, ..., n] = input[i, j, k, ..., n, n]`.
		
		The input must be at least a matrix.
		
		For example:
		
		```
		# 'input' is [[[1, 0, 0, 0]
		               [0, 2, 0, 0]
		               [0, 0, 3, 0]
		               [0, 0, 0, 4]],
		              [[5, 0, 0, 0]
		               [0, 6, 0, 0]
		               [0, 0, 7, 0]
		               [0, 0, 0, 8]]]
		
		and input.shape = (2, 4, 4)
		
		tf.matrix_diag_part(input) ==> [[1, 2, 3, 4], [5, 6, 7, 8]]
		
		which has shape (2, 4)
		```
		
		Args:
		  input: A `Tensor`. Rank `k` tensor where `k >= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_diag_part(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_diag_part
	**/
	static public function matrix_diag_part_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Deprecated, use python implementation tf.linalg.matrix_exponential.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_exponential(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_exponential
	**/
	static public function matrix_exponential_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the inverse of one or more square invertible matrices or their
		
		adjoints (conjugate transposes).
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor of the same shape as the input
		containing the inverse for all input submatrices `[..., :, :]`.
		
		The op uses LU decomposition with partial pivoting to compute the inverses.
		
		If a matrix is not invertible there is no guarantee what the op does. It
		may detect the condition and raise an exception or it may simply return a
		garbage result.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_inverse(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_inverse
	**/
	static public function matrix_inverse_eager_fallback(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the matrix logarithm of one or more square matrices:
		
		
		\\(log(exp(A)) = A\\)
		
		This op is only defined for complex matrices. If A is positive-definite and
		real, then casting to a complex matrix, taking the logarithm and casting back
		to a real matrix will give the correct result.
		
		This function computes the matrix logarithm using the Schur-Parlett algorithm.
		Details of the algorithm can be found in Section 11.6.2 of:
		Nicholas J. Higham, Functions of Matrices: Theory and Computation, SIAM 2008.
		ISBN 978-0-898716-46-7.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor of the same shape as the input
		containing the exponential for all input submatrices `[..., :, :]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_logarithm(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_logarithm
	**/
	static public function matrix_logarithm_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns a batched matrix tensor with new batched diagonal values.
		
		Given `input` and `diagonal`, this operation returns a tensor with the
		same shape and values as `input`, except for the main diagonal of the
		innermost matrices.  These will be overwritten by the values in `diagonal`.
		
		The output is computed as follows:
		
		Assume `input` has `k+1` dimensions `[I, J, K, ..., M, N]` and `diagonal` has
		`k` dimensions `[I, J, K, ..., min(M, N)]`.  Then the output is a
		tensor of rank `k+1` with dimensions `[I, J, K, ..., M, N]` where:
		
		  * `output[i, j, k, ..., m, n] = diagonal[i, j, k, ..., n]` for `m == n`.
		  * `output[i, j, k, ..., m, n] = input[i, j, k, ..., m, n]` for `m != n`.
		
		Args:
		  input: A `Tensor`. Rank `k+1`, where `k >= 1`.
		  diagonal: A `Tensor`. Must have the same type as `input`.
		    Rank `k`, where `k >= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_set_diag(input:Dynamic, diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_set_diag
	**/
	static public function matrix_set_diag_eager_fallback(input:Dynamic, diagonal:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Solves systems of linear equations.
		
		`Matrix` is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. `Rhs` is a tensor of shape `[..., M, K]`. The `output` is
		a tensor shape `[..., M, K]`.  If `adjoint` is `False` then each output matrix
		satisfies `matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]`.
		If `adjoint` is `True` then each output matrix satisfies
		`adjoint(matrix[..., :, :]) * output[..., :, :] = rhs[..., :, :]`.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		    Shape is `[..., M, K]`.
		  adjoint: An optional `bool`. Defaults to `False`.
		    Boolean indicating whether to solve with `matrix` or its (block-wise)
		    adjoint.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`.
	**/
	static public function matrix_solve(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_solve
	**/
	static public function matrix_solve_eager_fallback(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Solves one or more linear least-squares problems.
		
		`matrix` is a tensor of shape `[..., M, N]` whose inner-most 2 dimensions
		form `M`-by-`N` matrices. Rhs is a tensor of shape `[..., M, K]` whose
		inner-most 2 dimensions form `M`-by-`K` matrices.  The computed output is a
		`Tensor` of shape `[..., N, K]` whose inner-most 2 dimensions form `M`-by-`K`
		matrices that solve the equations
		`matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]` in the least squares
		sense.
		
		Below we will use the following notation for each pair of matrix and
		right-hand sides in the batch:
		
		`matrix`=\\(A \in \Re^{m \times n}\\),
		`rhs`=\\(B  \in \Re^{m \times k}\\),
		`output`=\\(X  \in \Re^{n \times k}\\),
		`l2_regularizer`=\\(\lambda\\).
		
		If `fast` is `True`, then the solution is computed by solving the normal
		equations using Cholesky decomposition. Specifically, if \\(m \ge n\\) then
		\\(X = (A^T A + \lambda I)^{-1} A^T B\\), which solves the least-squares
		problem \\(X = \mathrm{argmin}_{Z \in \Re^{n \times k}} ||A Z - B||_F^2 +
		\lambda ||Z||_F^2\\). If \\(m \lt n\\) then `output` is computed as
		\\(X = A^T (A A^T + \lambda I)^{-1} B\\), which (for \\(\lambda = 0\\)) is
		the minimum-norm solution to the under-determined linear system, i.e.
		\\(X = \mathrm{argmin}_{Z \in \Re^{n \times k}} ||Z||_F^2 \\), subject to
		\\(A Z = B\\). Notice that the fast path is only numerically stable when
		\\(A\\) is numerically full rank and has a condition number
		\\(\mathrm{cond}(A) \lt \frac{1}{\sqrt{\epsilon_{mach}}}\\) or\\(\lambda\\)
		is sufficiently large.
		
		If `fast` is `False` an algorithm based on the numerically robust complete
		orthogonal decomposition is used. This computes the minimum-norm
		least-squares solution, even when \\(A\\) is rank deficient. This path is
		typically 6-7 times slower than the fast path. If `fast` is `False` then
		`l2_regularizer` is ignored.
		
		Args:
		  matrix: `Tensor` of shape `[..., M, N]`.
		  rhs: `Tensor` of shape `[..., M, K]`.
		  l2_regularizer: 0-D `double` `Tensor`. Ignored if `fast=False`.
		  fast: bool. Defaults to `True`.
		  name: string, optional name of the operation.
		
		Returns:
		  output: `Tensor` of shape `[..., N, K]` whose inner-most 2 dimensions form
		    `M`-by-`K` matrices that solve the equations
		    `matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]` in the least
		    squares sense.
		
		Raises:
		  NotImplementedError: linalg.lstsq is currently disabled for complex128
		  and l2_regularizer != 0 due to poor accuracy.
	**/
	static public function matrix_solve_ls(matrix:Dynamic, rhs:Dynamic, ?l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_solve_ls
	**/
	static public function matrix_solve_ls_eager_fallback(matrix:Dynamic, rhs:Dynamic, l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Transposes last two dimensions of tensor `a`.
		
		For example:
		
		```python
		x = tf.constant([[1, 2, 3], [4, 5, 6]])
		tf.linalg.transpose(x)  # [[1, 4],
		                        #  [2, 5],
		                        #  [3, 6]]
		
		x = tf.constant([[1 + 1j, 2 + 2j, 3 + 3j],
		                 [4 + 4j, 5 + 5j, 6 + 6j]])
		tf.linalg.transpose(x, conjugate=True)  # [[1 - 1j, 4 - 4j],
		                                        #  [2 - 2j, 5 - 5j],
		                                        #  [3 - 3j, 6 - 6j]]
		
		# Matrix with two batch dimensions.
		# x.shape is [1, 2, 3, 4]
		# tf.linalg.transpose(x) is shape [1, 2, 4, 3]
		```
		
		Note that `tf.matmul` provides kwargs allowing for transpose of arguments.
		This is done with minimal cost, and is preferable to using this function. E.g.
		
		```python
		# Good!  Transpose is taken at minimal additional cost.
		tf.matmul(matrix, b, transpose_b=True)
		
		# Inefficient!
		tf.matmul(matrix, tf.linalg.transpose(b))
		```
		
		@compatibility(numpy)
		In `numpy` transposes are memory-efficient constant time operations as they
		simply return a new view of the same data with adjusted `strides`.
		
		TensorFlow does not support strides, `linalg.transposes` return a new tensor
		with the items permuted.
		@end_compatibility
		
		Args:
		  a: A `Tensor` with `rank >= 2`.
		  name: A name for the operation (optional).
		  conjugate: Optional bool. Setting it to `True` is mathematically equivalent
		    to tf.conj(tf.linalg.transpose(input)).
		
		Returns:
		  A transposed batch matrix `Tensor`.
		
		Raises:
		  ValueError:  If `a` is determined statically to have `rank < 2`.
	**/
	static public function matrix_transpose(a:Dynamic, ?name:Dynamic, ?conjugate:Dynamic):Dynamic;
	/**
		Solves systems of linear equations with upper or lower triangular matrices by
		
		backsubstitution.
		
		`matrix` is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions form
		square matrices. If `lower` is `True` then the strictly upper triangular part
		of each inner-most matrix is assumed to be zero and not accessed.
		If `lower` is False then the strictly lower triangular part of each inner-most
		matrix is assumed to be zero and not accessed.
		`rhs` is a tensor of shape `[..., M, K]`.
		
		The output is a tensor of shape `[..., M, K]`. If `adjoint` is
		`True` then the innermost matrices in `output` satisfy matrix equations
		`matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]`.
		If `adjoint` is `False` then the strictly then the  innermost matrices in
		`output` satisfy matrix equations
		`adjoint(matrix[..., i, k]) * output[..., k, j] = rhs[..., i, j]`.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		    Shape is `[..., M, K]`.
		  lower: An optional `bool`. Defaults to `True`.
		    Boolean indicating whether the innermost matrices in `matrix` are
		    lower or upper triangular.
		  adjoint: An optional `bool`. Defaults to `False`.
		    Boolean indicating whether to solve with `matrix` or its (block-wise)
		             adjoint.
		
		    @compatibility(numpy)
		    Equivalent to scipy.linalg.solve_triangular
		    @end_compatibility
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`.
	**/
	static public function matrix_triangular_solve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_triangular_solve
	**/
	static public function matrix_triangular_solve_eager_fallback(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the max of x and y (i.e. x > y ? x : y) element-wise.
		
		*NOTE*: `math.maximum` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function maximum(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function maximum
	**/
	static public function maximum_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the mean of elements across dimensions of a tensor.
		
		Reduces `input` along the dimensions given in `axis`. Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`axis`. If `keep_dims` is true, the reduced dimensions are
		retained with length 1.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The tensor to reduce.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The dimensions to reduce. Must be in the range
		    `[-rank(input), rank(input))`.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function mean(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function mean
	**/
	static public function mean_eager_fallback(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		V2 format specific: merges the metadata files of sharded checkpoints.  The
		
		result is one logical checkpoint, with one physical metadata file and renamed
		data files.
		
		Intended for "grouping" multiple checkpoints in a sharded checkpoint setup.
		
		If delete_old_dirs is true, attempts to delete recursively the dirname of each
		path in the input checkpoint_prefixes.  This is useful when those paths are non
		user-facing temporary locations.
		
		Args:
		  checkpoint_prefixes: A `Tensor` of type `string`.
		    prefixes of V2 checkpoints to merge.
		  destination_prefix: A `Tensor` of type `string`.
		    scalar.  The desired final prefix.  Allowed to be the same
		    as one of the checkpoint_prefixes.
		  delete_old_dirs: An optional `bool`. Defaults to `True`. see above.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function merge_v2_checkpoints(checkpoint_prefixes:Dynamic, destination_prefix:Dynamic, ?delete_old_dirs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function merge_v2_checkpoints
	**/
	static public function merge_v2_checkpoints_eager_fallback(checkpoint_prefixes:Dynamic, destination_prefix:Dynamic, ?delete_old_dirs:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Broadcasts parameters for evaluation on an N-D grid.
		
		Given N one-dimensional coordinate arrays `*args`, returns a list `outputs`
		of N-D coordinate arrays for evaluating expressions on an N-D grid.
		
		Notes:
		
		`meshgrid` supports cartesian ('xy') and matrix ('ij') indexing conventions.
		When the `indexing` argument is set to 'xy' (the default), the broadcasting
		instructions for the first two dimensions are swapped.
		
		Examples:
		
		Calling `X, Y = meshgrid(x, y)` with the tensors
		
		```python
		x = [1, 2, 3]
		y = [4, 5, 6]
		X, Y = tf.meshgrid(x, y)
		# X = [[1, 2, 3],
		#      [1, 2, 3],
		#      [1, 2, 3]]
		# Y = [[4, 4, 4],
		#      [5, 5, 5],
		#      [6, 6, 6]]
		```
		
		Args:
		  *args: `Tensor`s with rank 1.
		  **kwargs:
		    - indexing: Either 'xy' or 'ij' (optional, default: 'xy').
		    - name: A name for the operation (optional).
		
		Returns:
		  outputs: A list of N `Tensor`s with rank N.
		
		Raises:
		  TypeError: When no keyword arguments (kwargs) are passed.
		  ValueError: When indexing keyword argument is not one of `xy` or `ij`.
	**/
	static public function meshgrid(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Partitioner to allocate minimum size per slice.
		
		Returns a partitioner that partitions the variable of given shape and dtype
		such that each partition has a minimum of `min_slice_size` slice of the
		variable. The maximum number of such partitions (upper bound) is given by
		`max_partitions`.
		
		Args:
		  max_partitions: Upper bound on the number of partitions. Defaults to 1.
		  axis: Axis along which to partition the variable. Defaults to 0.
		  min_slice_size: Minimum size of the variable slice per partition. Defaults
		    to 256K.
		  bytes_per_string_element: If the `Variable` is of type string, this provides
		    an estimate of how large each scalar in the `Variable` is.
		
		Returns:
		  A partition function usable as the `partitioner` argument to
		  `variable_scope`, `get_variable`, and `get_partitioned_variable_list`.
	**/
	static public function min_max_variable_partitioner(?max_partitions:Dynamic, ?axis:Dynamic, ?min_slice_size:Dynamic, ?bytes_per_string_element:Dynamic):Dynamic;
	/**
		Returns the min of x and y (i.e. x < y ? x : y) element-wise.
		
		*NOTE*: `math.minimum` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function minimum(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function minimum
	**/
	static public function minimum_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Pads a tensor with mirrored values.
		
		This operation pads a `input` with mirrored values according to the `paddings`
		you specify. `paddings` is an integer tensor with shape `[n, 2]`, where n is
		the rank of `input`. For each dimension D of `input`, `paddings[D, 0]` indicates
		how many values to add before the contents of `input` in that dimension, and
		`paddings[D, 1]` indicates how many values to add after the contents of `input`
		in that dimension. Both `paddings[D, 0]` and `paddings[D, 1]` must be no greater
		than `input.dim_size(D)` (or `input.dim_size(D) - 1`) if `copy_border` is true
		(if false, respectively).
		
		The padded size of each dimension D of the output is:
		
		`paddings(D, 0) + input.dim_size(D) + paddings(D, 1)`
		
		For example:
		
		```
		# 't' is [[1, 2, 3], [4, 5, 6]].
		# 'paddings' is [[1, 1]], [2, 2]].
		# 'mode' is SYMMETRIC.
		# rank of 't' is 2.
		pad(t, paddings) ==> [[2, 1, 1, 2, 3, 3, 2]
		                      [2, 1, 1, 2, 3, 3, 2]
		                      [5, 4, 4, 5, 6, 6, 5]
		                      [5, 4, 4, 5, 6, 6, 5]]
		```
		
		Args:
		  input: A `Tensor`. The input tensor to be padded.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A two-column matrix specifying the padding sizes. The number of
		    rows must be the same as the rank of `input`.
		  mode: A `string` from: `"REFLECT", "SYMMETRIC"`.
		    Either `REFLECT` or `SYMMETRIC`. In reflect mode the padded regions
		    do not include the borders, while in symmetric mode the padded regions
		    do include the borders. For example, if `input` is `[1, 2, 3]` and `paddings`
		    is `[0, 2]`, then the output is `[1, 2, 3, 2, 1]` in reflect mode, and
		    it is `[1, 2, 3, 3, 2]` in symmetric mode.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function mirror_pad(input:Dynamic, paddings:Dynamic, mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function mirror_pad
	**/
	static public function mirror_pad_eager_fallback(input:Dynamic, paddings:Dynamic, mode:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Gradient op for `MirrorPad` op. This op folds a mirror-padded tensor.
		
		This operation folds the padded areas of `input` by `MirrorPad` according to the
		`paddings` you specify. `paddings` must be the same as `paddings` argument
		given to the corresponding `MirrorPad` op.
		
		The folded size of each dimension D of the output is:
		
		`input.dim_size(D) - paddings(D, 0) - paddings(D, 1)`
		
		For example:
		
		```
		# 't' is [[1, 2, 3], [4, 5, 6], [7, 8, 9]].
		# 'paddings' is [[0, 1]], [0, 1]].
		# 'mode' is SYMMETRIC.
		# rank of 't' is 2.
		pad(t, paddings) ==> [[ 1,  5]
		                      [11, 28]]
		```
		
		Args:
		  input: A `Tensor`. The input tensor to be folded.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A two-column matrix specifying the padding sizes. The number of
		    rows must be the same as the rank of `input`.
		  mode: A `string` from: `"REFLECT", "SYMMETRIC"`.
		    The mode used in the `MirrorPad` op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function mirror_pad_grad(input:Dynamic, paddings:Dynamic, mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function mirror_pad_grad
	**/
	static public function mirror_pad_grad_eager_fallback(input:Dynamic, paddings:Dynamic, mode:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns element-wise remainder of division. When `x < 0` xor `y < 0` is
		
		true, this follows Python semantics in that the result here is consistent
		with a flooring divide. E.g. `floor(x / y) * y + mod(x, y) = x`.
		
		*NOTE*: `FloorMod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`, `bfloat16`, `half`, `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function mod(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function mod
	**/
	static public function mod_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns all variables in the MODEL_VARIABLES collection.
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered
		    to include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a
		    scope is supplied. The choice of `re.match` means that a `scope` without
		    special tokens filters by prefix.
		
		Returns:
		  A list of local Variable objects.
	**/
	static public function model_variables(?scope:Dynamic):Dynamic;
	/**
		Returns all variables that maintain their moving averages.
		
		If an `ExponentialMovingAverage` object is created and the `apply()`
		method is called on a list of variables, these variables will
		be added to the `GraphKeys.MOVING_AVERAGE_VARIABLES` collection.
		This convenience function returns the contents of that collection.
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered
		    to include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a
		    scope is supplied. The choice of `re.match` means that a `scope` without
		    special tokens filters by prefix.
		
		Returns:
		  A list of Variable objects.
	**/
	static public function moving_average_variables(?scope:Dynamic):Dynamic;
	/**
		Returns x * y element-wise.
		
		*NOTE*: `Multiply` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function mul(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function mul
	**/
	static public function mul_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Draws samples from a multinomial distribution.
		
		Example:
		
		```python
		# samples has shape [1, 5], where each value is either 0 or 1 with equal
		# probability.
		samples = tf.multinomial(tf.log([[10., 10.]]), 5)
		```
		
		Args:
		  logits: 2-D Tensor with shape `[batch_size, num_classes]`.  Each slice
		    `[i, :]` represents the unnormalized log-probabilities for all classes.
		  num_samples: 0-D.  Number of independent samples to draw for each row slice.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    `tf.set_random_seed`
		    for behavior.
		  name: Optional name for the operation.
		  output_dtype: integer type to use for the output. Defaults to int64.
		
		Returns:
		  The drawn samples of shape `[batch_size, num_samples]`.
	**/
	static public function multinomial(logits:Dynamic, num_samples:Dynamic, ?seed:Dynamic, ?name:Dynamic, ?output_dtype:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function multinomial
	**/
	static public function multinomial_eager_fallback(logits:Dynamic, num_samples:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?output_dtype:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns x * y element-wise.
		
		*NOTE*: ``tf.multiply`` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function multiply(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes numerical negative value element-wise.
		
		I.e., \\(y = -x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function neg(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function neg
	**/
	static public function neg_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes numerical negative value element-wise.
		
		I.e., \(y = -x\).
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
	**/
	static public function negative(x:Dynamic, ?name:Dynamic):Dynamic;
	static public var newaxis : Dynamic;
	/**
		Does nothing. Only useful as a placeholder for control edges.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function no_op(?name:Dynamic):Dynamic;
	/**
		Use this function to prevent regularization of variables.
	**/
	static public function no_regularizer(_:Dynamic):Dynamic;
	/**
		Computes the norm of vectors, matrices, and tensors. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		This function can compute several different vector norms (the 1-norm, the
		Euclidean or 2-norm, the inf-norm, and in general the p-norm for p > 0) and
		matrix norms (Frobenius, 1-norm, 2-norm and inf-norm).
		
		Args:
		  tensor: `Tensor` of types `float32`, `float64`, `complex64`, `complex128`
		  ord: Order of the norm. Supported values are 'fro', 'euclidean',
		    `1`, `2`, `np.inf` and any positive real number yielding the corresponding
		    p-norm. Default is 'euclidean' which is equivalent to Frobenius norm if
		    `tensor` is a matrix and equivalent to 2-norm for vectors.
		    Some restrictions apply:
		      a) The Frobenius norm `fro` is not defined for vectors,
		      b) If axis is a 2-tuple (matrix norm), only 'euclidean', 'fro', `1`,
		         `2`, `np.inf` are supported.
		    See the description of `axis` on how to compute norms for a batch of
		    vectors or matrices stored in a tensor.
		  axis: If `axis` is `None` (the default), the input is considered a vector
		    and a single vector norm is computed over the entire set of values in the
		    tensor, i.e. `norm(tensor, ord=ord)` is equivalent to
		    `norm(reshape(tensor, [-1]), ord=ord)`.
		    If `axis` is a Python integer, the input is considered a batch of vectors,
		    and `axis` determines the axis in `tensor` over which to compute vector
		    norms.
		    If `axis` is a 2-tuple of Python integers it is considered a batch of
		    matrices and `axis` determines the axes in `tensor` over which to compute
		    a matrix norm.
		    Negative indices are supported. Example: If you are passing a tensor that
		    can be either a matrix or a batch of matrices at runtime, pass
		    `axis=[-2,-1]` instead of `axis=None` to make sure that matrix norms are
		    computed.
		  keepdims: If True, the axis indicated in `axis` are kept with size 1.
		    Otherwise, the dimensions in `axis` are removed from the output shape.
		  name: The name of the op.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  output: A `Tensor` of the same type as tensor, containing the vector or
		    matrix norms. If `keepdims` is True then the rank of output is equal to
		    the rank of `tensor`. Otherwise, if `axis` is none the output is a scalar,
		    if `axis` is an integer, the rank of `output` is one less than the rank
		    of `tensor`, if `axis` is a 2-tuple the rank of `output` is two less
		    than the rank of `tensor`.
		
		Raises:
		  ValueError: If `ord` or `axis` is invalid.
		
		@compatibility(numpy)
		Mostly equivalent to numpy.linalg.norm.
		Not supported: ord <= 0, 2-norm for matrices, nuclear norm.
		Other differences:
		  a) If axis is `None`, treats the flattened `tensor` as a vector
		   regardless of rank.
		  b) Explicitly supports 'euclidean' norm as the default, including for
		   higher order tensors.
		@end_compatibility
	**/
	static public function norm(tensor:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Returns the truth value of (x != y) element-wise.
		
		*NOTE*: `math.not_equal` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `quint8`, `qint8`, `qint32`, `string`, `bool`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function not_equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function not_equal
	**/
	static public function not_equal_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var np_resource : Dynamic;
	/**
		Returns a one-hot tensor.
		
		The locations represented by indices in `indices` take value `on_value`,
		while all other locations take value `off_value`.
		
		`on_value` and `off_value` must have matching data types. If `dtype` is also
		provided, they must be the same data type as specified by `dtype`.
		
		If `on_value` is not provided, it will default to the value `1` with type
		`dtype`
		
		If `off_value` is not provided, it will default to the value `0` with type
		`dtype`
		
		If the input `indices` is rank `N`, the output will have rank `N+1`. The
		new axis is created at dimension `axis` (default: the new axis is appended
		at the end).
		
		If `indices` is a scalar the output shape will be a vector of length `depth`
		
		If `indices` is a vector of length `features`, the output shape will be:
		
		```
		  features x depth if axis == -1
		  depth x features if axis == 0
		```
		
		If `indices` is a matrix (batch) with shape `[batch, features]`, the output
		shape will be:
		
		```
		  batch x features x depth if axis == -1
		  batch x depth x features if axis == 1
		  depth x batch x features if axis == 0
		```
		
		If `dtype` is not provided, it will attempt to assume the data type of
		`on_value` or `off_value`, if one or both are passed in. If none of
		`on_value`, `off_value`, or `dtype` are provided, `dtype` will default to the
		value `tf.float32`.
		
		Note: If a non-numeric data type output is desired (`tf.string`, `tf.bool`,
		etc.), both `on_value` and `off_value` _must_ be provided to `one_hot`.
		
		For example:
		
		```python
		indices = [0, 1, 2]
		depth = 3
		tf.one_hot(indices, depth)  # output: [3 x 3]
		# [[1., 0., 0.],
		#  [0., 1., 0.],
		#  [0., 0., 1.]]
		
		indices = [0, 2, -1, 1]
		depth = 3
		tf.one_hot(indices, depth,
		           on_value=5.0, off_value=0.0,
		           axis=-1)  # output: [4 x 3]
		# [[5.0, 0.0, 0.0],  # one_hot(0)
		#  [0.0, 0.0, 5.0],  # one_hot(2)
		#  [0.0, 0.0, 0.0],  # one_hot(-1)
		#  [0.0, 5.0, 0.0]]  # one_hot(1)
		
		indices = [[0, 2], [1, -1]]
		depth = 3
		tf.one_hot(indices, depth,
		           on_value=1.0, off_value=0.0,
		           axis=-1)  # output: [2 x 2 x 3]
		# [[[1.0, 0.0, 0.0],   # one_hot(0)
		#   [0.0, 0.0, 1.0]],  # one_hot(2)
		#  [[0.0, 1.0, 0.0],   # one_hot(1)
		#   [0.0, 0.0, 0.0]]]  # one_hot(-1)
		```
		
		Args:
		  indices: A `Tensor` of indices.
		  depth: A scalar defining the depth of the one hot dimension.
		  on_value: A scalar defining the value to fill in output when `indices[j]
		    = i`. (default: 1)
		  off_value: A scalar defining the value to fill in output when `indices[j]
		    != i`. (default: 0)
		  axis: The axis to fill (default: -1, a new inner-most axis).
		  dtype: The data type of the output tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  output: The one-hot tensor.
		
		Raises:
		  TypeError: If dtype of either `on_value` or `off_value` don't match `dtype`
		  TypeError: If dtype of `on_value` and `off_value` don't match one another
	**/
	static public function one_hot(indices:Dynamic, depth:Dynamic, ?on_value:Dynamic, ?off_value:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function one_hot
	**/
	static public function one_hot_eager_fallback(indices:Dynamic, depth:Dynamic, on_value:Dynamic, off_value:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to 1.
		
		This operation returns a tensor of type `dtype` with shape `shape` and all
		elements set to 1.
		
		For example:
		
		```python
		tf.ones([2, 3], tf.int32)  # [[1, 1, 1], [1, 1, 1]]
		```
		
		Args:
		  shape: A list of integers, a tuple of integers, or a 1-D `Tensor` of type
		    `int32`.
		  dtype: The type of an element in the resulting `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with all elements set to 1.
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to 1.
		
		Given a single tensor (`tensor`), this operation returns a tensor of the same
		type and shape as `tensor` with all elements set to 1. Optionally, you can
		specify a new type (`dtype`) for the returned tensor.
		
		For example:
		
		```python
		tensor = tf.constant([[1, 2, 3], [4, 5, 6]])
		tf.ones_like(tensor)  # [[1, 1, 1], [1, 1, 1]]
		```
		
		Args:
		  tensor: A `Tensor`.
		  dtype: A type for the returned `Tensor`. Must be `float32`, `float64`,
		    `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`,
		    `complex64`, `complex128` or `bool`.
		  name: A name for the operation (optional).
		  optimize: if true, attempt to statically determine the shape of 'tensor'
		  and encode it as a constant.
		
		Returns:
		  A `Tensor` with all elements set to 1.
	**/
	static public function ones_like(tensor:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?optimize:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function ones_like
	**/
	static public function ones_like_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		DEPRECATED. Same as name_scope above, just different argument order.
	**/
	static public function op_scope(values:Dynamic, name:Dynamic, ?default_name:Dynamic):Dynamic;
	/**
		Op removes all elements in the underlying container.
		
		Args:
		  dtypes: A list of `tf.DTypes`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function ordered_map_clear(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function ordered_map_clear
	**/
	static public function ordered_map_clear_eager_fallback(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Op returns the number of incomplete elements in the underlying container.
		
		Args:
		  dtypes: A list of `tf.DTypes`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function ordered_map_incomplete_size(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function ordered_map_incomplete_size
	**/
	static public function ordered_map_incomplete_size_eager_fallback(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Op peeks at the values at the specified key.  If the
		
		underlying container does not contain this key
		this op will block until it does.   This Op is optimized for
		performance.
		
		Args:
		  key: A `Tensor` of type `int64`.
		  indices: A `Tensor` of type `int32`.
		  dtypes: A list of `tf.DTypes` that has length `>= 1`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `dtypes`.
	**/
	static public function ordered_map_peek(key:Dynamic, indices:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function ordered_map_peek
	**/
	static public function ordered_map_peek_eager_fallback(key:Dynamic, indices:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Op returns the number of elements in the underlying container.
		
		Args:
		  dtypes: A list of `tf.DTypes`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function ordered_map_size(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function ordered_map_size
	**/
	static public function ordered_map_size_eager_fallback(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Stage (key, values) in the underlying container which behaves like a ordered
		
		associative container.   Elements are ordered by key.
		
		Args:
		  key: A `Tensor` of type `int64`. int64
		  indices: A `Tensor` of type `int32`.
		  values: A list of `Tensor` objects. a list of tensors
		    dtypes A list of data types that inserted values should adhere to.
		  dtypes: A list of `tf.DTypes`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		    Maximum number of elements in the Staging Area. If > 0, inserts
		    on the container will block when the capacity is reached.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container. Otherwise,
		    a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    It is necessary to match this name to the matching Unstage Op.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function ordered_map_stage(key:Dynamic, indices:Dynamic, values:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function ordered_map_stage
	**/
	static public function ordered_map_stage_eager_fallback(key:Dynamic, indices:Dynamic, values:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Op removes and returns the values associated with the key
		
		from the underlying container.   If the underlying container
		does not contain this key, the op will block until it does.
		
		Args:
		  key: A `Tensor` of type `int64`.
		  indices: A `Tensor` of type `int32`.
		  dtypes: A list of `tf.DTypes` that has length `>= 1`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `dtypes`.
	**/
	static public function ordered_map_unstage(key:Dynamic, indices:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function ordered_map_unstage
	**/
	static public function ordered_map_unstage_eager_fallback(key:Dynamic, indices:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Op removes and returns the (key, value) element with the smallest
		
		key from the underlying container.   If the underlying container
		does not contain elements, the op will block until it does.
		
		Args:
		  indices: A `Tensor` of type `int32`.
		  dtypes: A list of `tf.DTypes` that has length `>= 1`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (key, values).
		
		  key: A `Tensor` of type `int64`.
		  values: A list of `Tensor` objects of type `dtypes`.
	**/
	static public function ordered_map_unstage_no_key(indices:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function ordered_map_unstage_no_key
	**/
	static public function ordered_map_unstage_no_key_eager_fallback(indices:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Packs a list of `N` rank-`R` tensors into one rank-`(R+1)` tensor.
		
		Packs the `N` tensors in `values` into a tensor with rank one higher than each
		tensor in `values`, by packing them along the `axis` dimension.
		Given a list of tensors of shape `(A, B, C)`;
		
		if `axis == 0` then the `output` tensor will have the shape `(N, A, B, C)`.
		if `axis == 1` then the `output` tensor will have the shape `(A, N, B, C)`.
		Etc.
		
		For example:
		
		```
		# 'x' is [1, 4]
		# 'y' is [2, 5]
		# 'z' is [3, 6]
		pack([x, y, z]) => [[1, 4], [2, 5], [3, 6]]  # Pack along first dim.
		pack([x, y, z], axis=1) => [[1, 2, 3], [4, 5, 6]]
		```
		
		This is the opposite of `unpack`.
		
		Args:
		  values: A list of at least 1 `Tensor` objects with the same type.
		    Must be of same shape and type.
		  axis: An optional `int`. Defaults to `0`.
		    Dimension along which to pack.  Negative values wrap around, so the
		    valid range is `[-(R+1), R+1)`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `values`.
	**/
	static public function pack(values:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function pack
	**/
	static public function pack_eager_fallback(values:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Pads a tensor.
		
		This operation pads a `tensor` according to the `paddings` you specify.
		`paddings` is an integer tensor with shape `[n, 2]`, where n is the rank of
		`tensor`. For each dimension D of `input`, `paddings[D, 0]` indicates how
		many values to add before the contents of `tensor` in that dimension, and
		`paddings[D, 1]` indicates how many values to add after the contents of
		`tensor` in that dimension. If `mode` is "REFLECT" then both `paddings[D, 0]`
		and `paddings[D, 1]` must be no greater than `tensor.dim_size(D) - 1`. If
		`mode` is "SYMMETRIC" then both `paddings[D, 0]` and `paddings[D, 1]` must be
		no greater than `tensor.dim_size(D)`.
		
		The padded size of each dimension D of the output is:
		
		`paddings[D, 0] + tensor.dim_size(D) + paddings[D, 1]`
		
		For example:
		
		```python
		t = tf.constant([[1, 2, 3], [4, 5, 6]])
		paddings = tf.constant([[1, 1,], [2, 2]])
		# 'constant_values' is 0.
		# rank of 't' is 2.
		tf.pad(t, paddings, "CONSTANT")  # [[0, 0, 0, 0, 0, 0, 0],
		                                 #  [0, 0, 1, 2, 3, 0, 0],
		                                 #  [0, 0, 4, 5, 6, 0, 0],
		                                 #  [0, 0, 0, 0, 0, 0, 0]]
		
		tf.pad(t, paddings, "REFLECT")  # [[6, 5, 4, 5, 6, 5, 4],
		                                #  [3, 2, 1, 2, 3, 2, 1],
		                                #  [6, 5, 4, 5, 6, 5, 4],
		                                #  [3, 2, 1, 2, 3, 2, 1]]
		
		tf.pad(t, paddings, "SYMMETRIC")  # [[2, 1, 1, 2, 3, 3, 2],
		                                  #  [2, 1, 1, 2, 3, 3, 2],
		                                  #  [5, 4, 4, 5, 6, 6, 5],
		                                  #  [5, 4, 4, 5, 6, 6, 5]]
		```
		
		Args:
		  tensor: A `Tensor`.
		  paddings: A `Tensor` of type `int32`.
		  mode: One of "CONSTANT", "REFLECT", or "SYMMETRIC" (case-insensitive)
		  name: A name for the operation (optional).
		  constant_values: In "CONSTANT" mode, the scalar pad value to use. Must be
		    same type as `tensor`.
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
		
		Raises:
		  ValueError: When mode is not one of "CONSTANT", "REFLECT", or "SYMMETRIC".
	**/
	static public function pad(tensor:Dynamic, paddings:Dynamic, ?mode:Dynamic, ?name:Dynamic, ?constant_values:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function pad
	**/
	static public function pad_eager_fallback(input:Dynamic, paddings:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Pads a tensor.
		
		This operation pads `input` according to the `paddings` and `constant_values`
		you specify. `paddings` is an integer tensor with shape `[Dn, 2]`, where n is
		the rank of `input`. For each dimension D of `input`, `paddings[D, 0]` indicates
		how many padding values to add before the contents of `input` in that dimension,
		and `paddings[D, 1]` indicates how many padding values to add after the contents
		of `input` in that dimension. `constant_values` is a scalar tensor of the same
		type as `input` that indicates the value to use for padding `input`.
		
		The padded size of each dimension D of the output is:
		
		`paddings(D, 0) + input.dim_size(D) + paddings(D, 1)`
		
		For example:
		
		```
		# 't' is [[1, 1], [2, 2]]
		# 'paddings' is [[1, 1], [2, 2]]
		# 'constant_values' is 0
		# rank of 't' is 2
		pad(t, paddings) ==> [[0, 0, 0, 0, 0, 0]
		                      [0, 0, 1, 1, 0, 0]
		                      [0, 0, 2, 2, 0, 0]
		                      [0, 0, 0, 0, 0, 0]]
		```
		
		Args:
		  input: A `Tensor`.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  constant_values: A `Tensor`. Must have the same type as `input`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function pad_v2(input:Dynamic, paddings:Dynamic, constant_values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function pad_v2
	**/
	static public function pad_v2_eager_fallback(input:Dynamic, paddings:Dynamic, constant_values:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A queue that produces elements in first-in first-out order.
		
		Variable-size shapes are allowed by setting the corresponding shape dimensions
		to 0 in the shape attr.  In this case DequeueMany will pad up to the maximum
		size of any given element in the minibatch.  See below for details.
		
		Args:
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a value.
		  shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    The shape of each component in a value. The length of this attr must
		    be either 0 or the same as the length of component_types.
		    Shapes of fixed rank but variable size are allowed by setting
		    any shape dimension to -1.  In this case, the inputs' shape may vary along
		    the given dimension, and DequeueMany will pad the given dimension with
		    zeros up to the maximum shape of all elements in the given batch.
		    If the length of this attr is 0, different queue elements may have
		    different ranks and shapes, but only one element may be dequeued at a time.
		  capacity: An optional `int`. Defaults to `-1`.
		    The upper bound on the number of elements in this queue.
		    Negative numbers mean no limit.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this queue will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function padding_fifo_queue(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A queue that produces elements in first-in first-out order.
		
		Variable-size shapes are allowed by setting the corresponding shape dimensions
		to 0 in the shape attr.  In this case DequeueMany will pad up to the maximum
		size of any given element in the minibatch.  See below for details.
		
		Args:
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a value.
		  shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    The shape of each component in a value. The length of this attr must
		    be either 0 or the same as the length of component_types.
		    Shapes of fixed rank but variable size are allowed by setting
		    any shape dimension to -1.  In this case, the inputs' shape may vary along
		    the given dimension, and DequeueMany will pad the given dimension with
		    zeros up to the maximum shape of all elements in the given batch.
		    If the length of this attr is 0, different queue elements may have
		    different ranks and shapes, but only one element may be dequeued at a time.
		  capacity: An optional `int`. Defaults to `-1`.
		    The upper bound on the number of elements in this queue.
		    Negative numbers mean no limit.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this queue will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function padding_fifo_queue_v2(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function padding_fifo_queue_v2
	**/
	static public function padding_fifo_queue_v2_eager_fallback(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Concatenates a list of `N` tensors along the first dimension.
		
		The input tensors are all required to have size 1 in the first dimension.
		
		For example:
		
		```
		# 'x' is [[1, 4]]
		# 'y' is [[2, 5]]
		# 'z' is [[3, 6]]
		parallel_concat([x, y, z]) => [[1, 4], [2, 5], [3, 6]]  # Pack along first dim.
		```
		
		The difference between concat and parallel_concat is that concat requires all
		of the inputs be computed before the operation will begin but doesn't require
		that the input shapes be known during graph construction.  Parallel concat
		will copy pieces of the input into the output as they become available, in
		some situations this can provide a performance benefit.
		
		Args:
		  values: A list of at least 1 `Tensor` objects with the same type.
		    Tensors to be concatenated. All must have size 1 in the first dimension
		    and same shape.
		  shape: A `tf.TensorShape` or list of `ints`.
		    the final shape of the result; should be equal to the shapes of any input
		    but with the number of input values in the first dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `values`.
	**/
	static public function parallel_concat(values:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function parallel_concat
	**/
	static public function parallel_concat_eager_fallback(values:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Interleave the values from the `data` tensors into a single tensor.
		
		Builds a merged tensor such that
		
		```python
		    merged[indices[m][i, ..., j], ...] = data[m][i, ..., j, ...]
		```
		
		For example, if each `indices[m]` is scalar or vector, we have
		
		```python
		    # Scalar indices:
		    merged[indices[m], ...] = data[m][...]
		
		    # Vector indices:
		    merged[indices[m][i], ...] = data[m][i, ...]
		```
		
		Each `data[i].shape` must start with the corresponding `indices[i].shape`,
		and the rest of `data[i].shape` must be constant w.r.t. `i`.  That is, we
		must have `data[i].shape = indices[i].shape + constant`.  In terms of this
		`constant`, the output shape is
		
		    merged.shape = [max(indices)] + constant
		
		Values may be merged in parallel, so if an index appears in both `indices[m][i]`
		and `indices[n][j]`, the result may be invalid. This differs from the normal
		DynamicStitch operator that defines the behavior in that case.
		
		For example:
		
		```python
		    indices[0] = 6
		    indices[1] = [4, 1]
		    indices[2] = [[5, 2], [0, 3]]
		    data[0] = [61, 62]
		    data[1] = [[41, 42], [11, 12]]
		    data[2] = [[[51, 52], [21, 22]], [[1, 2], [31, 32]]]
		    merged = [[1, 2], [11, 12], [21, 22], [31, 32], [41, 42],
		              [51, 52], [61, 62]]
		```
		
		This method can be used to merge partitions created by `dynamic_partition`
		as illustrated on the following example:
		
		```python
		    # Apply function (increments x_i) on elements for which a certain condition
		    # apply (x_i != -1 in this example).
		    x=tf.constant([0.1, -1., 5.2, 4.3, -1., 7.4])
		    condition_mask=tf.not_equal(x,tf.constant(-1.))
		    partitioned_data = tf.dynamic_partition(
		        x, tf.cast(condition_mask, tf.int32) , 2)
		    partitioned_data[1] = partitioned_data[1] + 1.0
		    condition_indices = tf.dynamic_partition(
		        tf.range(tf.shape(x)[0]), tf.cast(condition_mask, tf.int32) , 2)
		    x = tf.dynamic_stitch(condition_indices, partitioned_data)
		    # Here x=[1.1, -1., 6.2, 5.3, -1, 8.4], the -1. values remain
		    # unchanged.
		```
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/DynamicStitch.png" alt>
		</div>
		
		Args:
		  indices: A list of at least 1 `Tensor` objects with type `int32`.
		  data: A list with the same length as `indices` of `Tensor` objects with the same type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function parallel_dynamic_stitch(indices:Dynamic, data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function parallel_dynamic_stitch
	**/
	static public function parallel_dynamic_stitch_eager_fallback(indices:Dynamic, data:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Stacks a list of rank-`R` tensors into one rank-`(R+1)` tensor in parallel.
		
		Requires that the shape of inputs be known at graph construction time.
		
		Packs the list of tensors in `values` into a tensor with rank one higher than
		each tensor in `values`, by packing them along the first dimension.
		Given a list of length `N` of tensors of shape `(A, B, C)`; the `output`
		tensor will have the shape `(N, A, B, C)`.
		
		For example:
		
		```python
		x = tf.constant([1, 4])
		y = tf.constant([2, 5])
		z = tf.constant([3, 6])
		tf.parallel_stack([x, y, z])  # [[1, 4], [2, 5], [3, 6]]
		```
		
		The difference between `stack` and `parallel_stack` is that `stack` requires
		all the inputs be computed before the operation will begin but doesn't require
		that the input shapes be known during graph construction.
		
		`parallel_stack` will copy pieces of the input into the output as they become
		available, in some situations this can provide a performance benefit.
		
		Unlike `stack`, `parallel_stack` does NOT support backpropagation.
		
		This is the opposite of unstack.  The numpy equivalent is
		
		    tf.parallel_stack([x, y, z]) = np.asarray([x, y, z])
		
		Args:
		  values: A list of `Tensor` objects with the same shape and type.
		  name: A name for this operation (optional).
		
		Returns:
		  output: A stacked `Tensor` with the same type as `values`.
	**/
	static public function parallel_stack(values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a truncated normal distribution.
		
		The generated values follow a normal distribution with specified mean and
		standard deviation, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  means: A 0-D Tensor or Python value of type `dtype`. The mean of the
		    truncated normal distribution.
		  stddevs: A 0-D Tensor or Python value of type `dtype`. The standard
		    deviation of the truncated normal distribution.
		  minvals: A 0-D Tensor or Python value of type `dtype`. The minimum value of
		    the truncated normal distribution.
		  maxvals: A 0-D Tensor or Python value of type `dtype`. The maximum value of
		    the truncated normal distribution.
		  dtype: The type of the output.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    `tf.set_random_seed`
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random truncated normal values.
	**/
	static public function parameterized_truncated_normal(shape:Dynamic, ?means:Dynamic, ?stddevs:Dynamic, ?minvals:Dynamic, ?maxvals:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function parameterized_truncated_normal
	**/
	static public function parameterized_truncated_normal_eager_fallback(shape:Dynamic, means:Dynamic, stdevs:Dynamic, minvals:Dynamic, maxvals:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Parses `Example` protos into a `dict` of tensors.
		
		Parses a number of serialized [`Example`](https://www.tensorflow.org/code/tensorflow/core/example/example.proto)
		protos given in `serialized`. We refer to `serialized` as a batch with
		`batch_size` many entries of individual `Example` protos.
		
		`example_names` may contain descriptive names for the corresponding serialized
		protos. These may be useful for debugging purposes, but they have no effect on
		the output. If not `None`, `example_names` must be the same length as
		`serialized`.
		
		This op parses serialized examples into a dictionary mapping keys to `Tensor`
		and `SparseTensor` objects. `features` is a dict from keys to `VarLenFeature`,
		`SparseFeature`, and `FixedLenFeature` objects. Each `VarLenFeature`
		and `SparseFeature` is mapped to a `SparseTensor`, and each
		`FixedLenFeature` is mapped to a `Tensor`.
		
		Each `VarLenFeature` maps to a `SparseTensor` of the specified type
		representing a ragged matrix. Its indices are `[batch, index]` where `batch`
		identifies the example in `serialized`, and `index` is the value's index in
		the list of values associated with that feature and example.
		
		Each `SparseFeature` maps to a `SparseTensor` of the specified type
		representing a Tensor of `dense_shape` `[batch_size] + SparseFeature.size`.
		Its `values` come from the feature in the examples with key `value_key`.
		A `values[i]` comes from a position `k` in the feature of an example at batch
		entry `batch`. This positional information is recorded in `indices[i]` as
		`[batch, index_0, index_1, ...]` where `index_j` is the `k-th` value of
		the feature in the example at with key `SparseFeature.index_key[j]`.
		In other words, we split the indices (except the first index indicating the
		batch entry) of a `SparseTensor` by dimension into different features of the
		`Example`. Due to its complexity a `VarLenFeature` should be preferred over a
		`SparseFeature` whenever possible.
		
		Each `FixedLenFeature` `df` maps to a `Tensor` of the specified type (or
		`tf.float32` if not specified) and shape `(serialized.size(),) + df.shape`.
		
		`FixedLenFeature` entries with a `default_value` are optional. With no default
		value, we will fail if that `Feature` is missing from any example in
		`serialized`.
		
		Each `FixedLenSequenceFeature` `df` maps to a `Tensor` of the specified type
		(or `tf.float32` if not specified) and shape
		`(serialized.size(), None) + df.shape`.
		All examples in `serialized` will be padded with `default_value` along the
		second dimension.
		
		Examples:
		
		For example, if one expects a `tf.float32` `VarLenFeature` `ft` and three
		serialized `Example`s are provided:
		
		```
		serialized = [
		  features
		    { feature { key: "ft" value { float_list { value: [1.0, 2.0] } } } },
		  features
		    { feature []},
		  features
		    { feature { key: "ft" value { float_list { value: [3.0] } } }
		]
		```
		
		then the output will look like:
		
		```python
		{"ft": SparseTensor(indices=[[0, 0], [0, 1], [2, 0]],
		                    values=[1.0, 2.0, 3.0],
		                    dense_shape=(3, 2)) }
		```
		
		If instead a `FixedLenSequenceFeature` with `default_value = -1.0` and
		`shape=[]` is used then the output will look like:
		
		```python
		{"ft": [[1.0, 2.0], [3.0, -1.0]]}
		```
		
		Given two `Example` input protos in `serialized`:
		
		```
		[
		  features {
		    feature { key: "kw" value { bytes_list { value: [ "knit", "big" ] } } }
		    feature { key: "gps" value { float_list { value: [] } } }
		  },
		  features {
		    feature { key: "kw" value { bytes_list { value: [ "emmy" ] } } }
		    feature { key: "dank" value { int64_list { value: [ 42 ] } } }
		    feature { key: "gps" value { } }
		  }
		]
		```
		
		And arguments
		
		```
		example_names: ["input0", "input1"],
		features: {
		    "kw": VarLenFeature(tf.string),
		    "dank": VarLenFeature(tf.int64),
		    "gps": VarLenFeature(tf.float32),
		}
		```
		
		Then the output is a dictionary:
		
		```python
		{
		  "kw": SparseTensor(
		      indices=[[0, 0], [0, 1], [1, 0]],
		      values=["knit", "big", "emmy"]
		      dense_shape=[2, 2]),
		  "dank": SparseTensor(
		      indices=[[1, 0]],
		      values=[42],
		      dense_shape=[2, 1]),
		  "gps": SparseTensor(
		      indices=[],
		      values=[],
		      dense_shape=[2, 0]),
		}
		```
		
		For dense results in two serialized `Example`s:
		
		```
		[
		  features {
		    feature { key: "age" value { int64_list { value: [ 0 ] } } }
		    feature { key: "gender" value { bytes_list { value: [ "f" ] } } }
		   },
		   features {
		    feature { key: "age" value { int64_list { value: [] } } }
		    feature { key: "gender" value { bytes_list { value: [ "f" ] } } }
		  }
		]
		```
		
		We can use arguments:
		
		```
		example_names: ["input0", "input1"],
		features: {
		    "age": FixedLenFeature([], dtype=tf.int64, default_value=-1),
		    "gender": FixedLenFeature([], dtype=tf.string),
		}
		```
		
		And the expected output is:
		
		```python
		{
		  "age": [[0], [-1]],
		  "gender": [["f"], ["f"]],
		}
		```
		
		An alternative to `VarLenFeature` to obtain a `SparseTensor` is
		`SparseFeature`. For example, given two `Example` input protos in
		`serialized`:
		
		```
		[
		  features {
		    feature { key: "val" value { float_list { value: [ 0.5, -1.0 ] } } }
		    feature { key: "ix" value { int64_list { value: [ 3, 20 ] } } }
		  },
		  features {
		    feature { key: "val" value { float_list { value: [ 0.0 ] } } }
		    feature { key: "ix" value { int64_list { value: [ 42 ] } } }
		  }
		]
		```
		
		And arguments
		
		```
		example_names: ["input0", "input1"],
		features: {
		    "sparse": SparseFeature(
		        index_key="ix", value_key="val", dtype=tf.float32, size=100),
		}
		```
		
		Then the output is a dictionary:
		
		```python
		{
		  "sparse": SparseTensor(
		      indices=[[0, 3], [0, 20], [1, 42]],
		      values=[0.5, -1.0, 0.0]
		      dense_shape=[2, 100]),
		}
		```
		
		Args:
		  serialized: A vector (1-D Tensor) of strings, a batch of binary
		    serialized `Example` protos.
		  features: A `dict` mapping feature keys to `FixedLenFeature`,
		    `VarLenFeature`, and `SparseFeature` values.
		  name: A name for this operation (optional).
		  example_names: A vector (1-D Tensor) of strings (optional), the names of
		    the serialized protos in the batch.
		
		Returns:
		  A `dict` mapping feature keys to `Tensor` and `SparseTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_example(serialized:Dynamic, features:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function parse_example
	**/
	static public function parse_example_eager_fallback(serialized:Dynamic, names:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, dense_defaults:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Parses a batch of `SequenceExample` protos.
		
		Parses a vector of serialized
		[`SequenceExample`](https://www.tensorflow.org/code/tensorflow/core/example/example.proto)
		protos given in `serialized`.
		
		This op parses serialized sequence examples into a tuple of dictionaries
		mapping keys to `Tensor` and `SparseTensor` objects respectively.
		The first dictionary contains mappings for keys appearing in
		`context_features`, and the second dictionary contains mappings for keys
		appearing in `sequence_features`.
		
		At least one of `context_features` and `sequence_features` must be provided
		and non-empty.
		
		The `context_features` keys are associated with a `SequenceExample` as a
		whole, independent of time / frame.  In contrast, the `sequence_features` keys
		provide a way to access variable-length data within the `FeatureList` section
		of the `SequenceExample` proto.  While the shapes of `context_features` values
		are fixed with respect to frame, the frame dimension (the first dimension)
		of `sequence_features` values may vary between `SequenceExample` protos,
		and even between `feature_list` keys within the same `SequenceExample`.
		
		`context_features` contains `VarLenFeature` and `FixedLenFeature` objects.
		Each `VarLenFeature` is mapped to a `SparseTensor`, and each `FixedLenFeature`
		is mapped to a `Tensor`, of the specified type, shape, and default value.
		
		`sequence_features` contains `VarLenFeature` and `FixedLenSequenceFeature`
		objects. Each `VarLenFeature` is mapped to a `SparseTensor`, and each
		`FixedLenSequenceFeature` is mapped to a `Tensor`, each of the specified type.
		The shape will be `(B,T,) + df.dense_shape` for `FixedLenSequenceFeature`
		`df`, where `B` is the batch size, and `T` is the length of the associated
		`FeatureList` in the `SequenceExample`. For instance,
		`FixedLenSequenceFeature([])` yields a scalar 2-D `Tensor` of static shape
		`[None, None]` and dynamic shape `[B, T]`, while
		`FixedLenSequenceFeature([k])` (for `int k >= 1`) yields a 3-D matrix `Tensor`
		of static shape `[None, None, k]` and dynamic shape `[B, T, k]`.
		
		Like the input, the resulting output tensors have a batch dimension. This
		means that the original per-example shapes of `VarLenFeature`s and
		`FixedLenSequenceFeature`s can be lost. To handle that situation, this op also
		provides dicts of shape tensors as part of the output. There is one dict for
		the context features, and one for the feature_list features. Context features
		of type `FixedLenFeature`s will not be present, since their shapes are already
		known by the caller. In situations where the input 'FixedLenFeature`s are of
		different lengths across examples, the shorter examples will be padded with
		default datatype values: 0 for numeric types, and the empty string for string
		types.
		
		Each `SparseTensor` corresponding to `sequence_features` represents a ragged
		vector.  Its indices are `[time, index]`, where `time` is the `FeatureList`
		entry and `index` is the value's index in the list of values associated with
		that time.
		
		`FixedLenFeature` entries with a `default_value` and `FixedLenSequenceFeature`
		entries with `allow_missing=True` are optional; otherwise, we will fail if
		that `Feature` or `FeatureList` is missing from any example in `serialized`.
		
		`example_name` may contain a descriptive name for the corresponding serialized
		proto. This may be useful for debugging purposes, but it has no effect on the
		output. If not `None`, `example_name` must be a scalar.
		
		Args:
		  serialized: A vector (1-D Tensor) of type string containing binary
		    serialized `SequenceExample` protos.
		  context_features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values. These features are associated with a
		    `SequenceExample` as a whole.
		  sequence_features: A `dict` mapping feature keys to
		    `FixedLenSequenceFeature` or `VarLenFeature` values. These features are
		    associated with data within the `FeatureList` section of the
		    `SequenceExample` proto.
		  example_names: A vector (1-D Tensor) of strings (optional), the name of the
		    serialized protos.
		  name: A name for this operation (optional).
		
		Returns:
		  A tuple of three `dict`s, each mapping keys to `Tensor`s and
		  `SparseTensor`s. The first dict contains the context key/values,
		  the second dict contains the feature_list key/values, and the final dict
		  contains the lengths of any dense feature_list features.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_sequence_example(serialized:Dynamic, ?context_features:Dynamic, ?sequence_features:Dynamic, ?example_names:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function parse_sequence_example
	**/
	static public function parse_sequence_example_eager_fallback(serialized:Dynamic, debug_name:Dynamic, context_dense_defaults:Dynamic, feature_list_dense_missing_assumed_empty:Dynamic, context_sparse_keys:Dynamic, context_dense_keys:Dynamic, feature_list_sparse_keys:Dynamic, feature_list_dense_keys:Dynamic, ?Ncontext_sparse:Dynamic, ?Ncontext_dense:Dynamic, ?Nfeature_list_sparse:Dynamic, ?Nfeature_list_dense:Dynamic, ?context_sparse_types:Dynamic, ?feature_list_dense_types:Dynamic, ?context_dense_shapes:Dynamic, ?feature_list_sparse_types:Dynamic, ?feature_list_dense_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Parses a single `Example` proto.
		
		Similar to `parse_example`, except:
		
		For dense tensors, the returned `Tensor` is identical to the output of
		`parse_example`, except there is no batch dimension, the output shape is the
		same as the shape given in `dense_shape`.
		
		For `SparseTensor`s, the first (batch) column of the indices matrix is removed
		(the indices matrix is a column vector), the values vector is unchanged, and
		the first (`batch_size`) entry of the shape vector is removed (it is now a
		single element vector).
		
		One might see performance advantages by batching `Example` protos with
		`parse_example` instead of using this function directly.
		
		Args:
		  serialized: A scalar string Tensor, a single serialized Example.
		    See `_parse_single_example_raw` documentation for more details.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  name: A name for this operation (optional).
		  example_names: (Optional) A scalar string Tensor, the associated name.
		    See `_parse_single_example_raw` documentation for more details.
		
		Returns:
		  A `dict` mapping feature keys to `Tensor` and `SparseTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_single_example(serialized:Dynamic, features:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function parse_single_example
	**/
	static public function parse_single_example_eager_fallback(serialized:Dynamic, dense_defaults:Dynamic, num_sparse:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Parses an `Example` proto into a `dict` of tensors.
		
		Parses a serialized
		[`Example`](https://www.tensorflow.org/code/tensorflow/core/example/example.proto)
		proto given in `serialized`.
		
		This op parses serialized examples into a dictionary mapping keys to `Tensor`
		and `SparseTensor` objects. `features` is a dict from keys to `VarLenFeature`,
		`SparseFeature`, and `FixedLenFeature` objects. Each `VarLenFeature`
		and `SparseFeature` is mapped to a `SparseTensor`, and each
		`FixedLenFeature` is mapped to a `Tensor`.
		
		Each `VarLenFeature` maps to a `SparseTensor` of the specified type
		representing a ragged matrix. Its indices are `[index]` where
		`index` is the value's index in the list of values associated with
		that feature and example.
		
		Each `SparseFeature` maps to a `SparseTensor` of the specified type
		representing a Tensor of `dense_shape` `SparseFeature.size`.
		Its `values` come from the feature in the examples with key `value_key`.
		A `values[i]` comes from a position `k` in the feature of an example at batch
		entry `batch`. This positional information is recorded in `indices[i]` as
		`[batch, index_0, index_1, ...]` where `index_j` is the `k-th` value of
		the feature in the example at with key `SparseFeature.index_key[j]`.
		In other words, we split the indices (except the first index indicating the
		batch entry) of a `SparseTensor` by dimension into different features of the
		`Example`. Due to its complexity a `VarLenFeature` should be preferred over a
		`SparseFeature` whenever possible.
		
		Each `FixedLenFeature` `df` maps to a `Tensor` of the specified type (or
		`tf.float32` if not specified) and shape `df.shape`.
		
		`FixedLenFeature` entries with a `default_value` are optional. With no default
		value, we will fail if that `Feature` is missing from any example in
		`serialized`.
		
		Each `FixedLenSequenceFeature` `df` maps to a `Tensor` of the specified type
		(or `tf.float32` if not specified) and shape `(None,) + df.shape`.
		
		Args:
		  serialized: A scalar (0-D Tensor) string, a serialized `Example` proto.
		  features: A `dict` mapping feature keys to `FixedLenFeature`,
		    `VarLenFeature`, and `SparseFeature` values.
		  name: A name for this operation (optional).
		
		Returns:
		  A `dict` mapping feature keys to `Tensor` and `SparseTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_single_example_v2(serialized:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Parses a single `SequenceExample` proto.
		
		Parses a single serialized [`SequenceExample`](https://www.tensorflow.org/code/tensorflow/core/example/example.proto)
		proto given in `serialized`.
		
		This op parses a serialized sequence example into a tuple of dictionaries
		mapping keys to `Tensor` and `SparseTensor` objects respectively.
		The first dictionary contains mappings for keys appearing in
		`context_features`, and the second dictionary contains mappings for keys
		appearing in `sequence_features`.
		
		At least one of `context_features` and `sequence_features` must be provided
		and non-empty.
		
		The `context_features` keys are associated with a `SequenceExample` as a
		whole, independent of time / frame.  In contrast, the `sequence_features` keys
		provide a way to access variable-length data within the `FeatureList` section
		of the `SequenceExample` proto.  While the shapes of `context_features` values
		are fixed with respect to frame, the frame dimension (the first dimension)
		of `sequence_features` values may vary between `SequenceExample` protos,
		and even between `feature_list` keys within the same `SequenceExample`.
		
		`context_features` contains `VarLenFeature` and `FixedLenFeature` objects.
		Each `VarLenFeature` is mapped to a `SparseTensor`, and each `FixedLenFeature`
		is mapped to a `Tensor`, of the specified type, shape, and default value.
		
		`sequence_features` contains `VarLenFeature` and `FixedLenSequenceFeature`
		objects. Each `VarLenFeature` is mapped to a `SparseTensor`, and each
		`FixedLenSequenceFeature` is mapped to a `Tensor`, each of the specified type.
		The shape will be `(T,) + df.dense_shape` for `FixedLenSequenceFeature` `df`, where
		`T` is the length of the associated `FeatureList` in the `SequenceExample`.
		For instance, `FixedLenSequenceFeature([])` yields a scalar 1-D `Tensor` of
		static shape `[None]` and dynamic shape `[T]`, while
		`FixedLenSequenceFeature([k])` (for `int k >= 1`) yields a 2-D matrix `Tensor`
		of static shape `[None, k]` and dynamic shape `[T, k]`.
		
		Each `SparseTensor` corresponding to `sequence_features` represents a ragged
		vector.  Its indices are `[time, index]`, where `time` is the `FeatureList`
		entry and `index` is the value's index in the list of values associated with
		that time.
		
		`FixedLenFeature` entries with a `default_value` and `FixedLenSequenceFeature`
		entries with `allow_missing=True` are optional; otherwise, we will fail if
		that `Feature` or `FeatureList` is missing from any example in `serialized`.
		
		`example_name` may contain a descriptive name for the corresponding serialized
		proto. This may be useful for debugging purposes, but it has no effect on the
		output. If not `None`, `example_name` must be a scalar.
		
		Args:
		  serialized: A scalar (0-D Tensor) of type string, a single binary
		    serialized `SequenceExample` proto.
		  context_features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values. These features are associated with a
		    `SequenceExample` as a whole.
		  sequence_features: A `dict` mapping feature keys to
		    `FixedLenSequenceFeature` or `VarLenFeature` values. These features are
		    associated with data within the `FeatureList` section of the
		    `SequenceExample` proto.
		  example_name: A scalar (0-D Tensor) of strings (optional), the name of
		    the serialized proto.
		  name: A name for this operation (optional).
		
		Returns:
		  A tuple of two `dict`s, each mapping keys to `Tensor`s and `SparseTensor`s.
		  The first dict contains the context key/values.
		  The second dict contains the feature_list key/values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_single_sequence_example(serialized:Dynamic, ?context_features:Dynamic, ?sequence_features:Dynamic, ?example_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function parse_single_sequence_example
	**/
	static public function parse_single_sequence_example_eager_fallback(serialized:Dynamic, feature_list_dense_missing_assumed_empty:Dynamic, context_sparse_keys:Dynamic, context_dense_keys:Dynamic, feature_list_sparse_keys:Dynamic, feature_list_dense_keys:Dynamic, context_dense_defaults:Dynamic, debug_name:Dynamic, ?context_sparse_types:Dynamic, ?feature_list_dense_types:Dynamic, ?context_dense_shapes:Dynamic, ?feature_list_sparse_types:Dynamic, ?feature_list_dense_shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Transforms a serialized tensorflow.TensorProto proto into a Tensor.
		
		Args:
		  serialized: A `Tensor` of type `string`.
		    A scalar string containing a serialized TensorProto proto.
		  out_type: A `tf.DType`.
		    The type of the serialized tensor.  The provided type must match the
		    type of the serialized tensor and no implicit conversion will take place.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function parse_tensor(serialized:Dynamic, out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function parse_tensor
	**/
	static public function parse_tensor_eager_fallback(serialized:Dynamic, out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		
		Returns:
		  The list of `Tensor`s returned by invoking `f(args)`. If the function does
		  not return anything, then returns `None` if eager execution is enabled, or
		  the `Operation` if not.
	**/
	static public function partitioned_call(args:Dynamic, f:Dynamic, ?tout:Dynamic, ?executing_eagerly:Dynamic):Dynamic;
	/**
		Inserts a placeholder for a tensor that will be always fed.
		
		**Important**: This tensor will produce an error if evaluated. Its value must
		be fed using the `feed_dict` optional argument to `Session.run()`,
		`Tensor.eval()`, or `Operation.run()`.
		
		For example:
		
		```python
		x = tf.placeholder(tf.float32, shape=(1024, 1024))
		y = tf.matmul(x, x)
		
		with tf.Session() as sess:
		  print(sess.run(y))  # ERROR: will fail because x was not fed.
		
		  rand_array = np.random.rand(1024, 1024)
		  print(sess.run(y, feed_dict={x: rand_array}))  # Will succeed.
		```
		
		@compatibility(eager)
		Placeholders are not compatible with eager execution.
		@end_compatibility
		
		Args:
		  dtype: The type of elements in the tensor to be fed.
		  shape: The shape of the tensor to be fed (optional). If the shape is not
		    specified, you can feed a tensor of any shape.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` that may be used as a handle for feeding a value, but not
		  evaluated directly.
		
		Raises:
		  RuntimeError: if eager execution is enabled
	**/
	static public function placeholder(dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function placeholder
	**/
	static public function placeholder_eager_fallback(dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A placeholder op for a value that will be fed into the computation.
		
		N.B. This operation will fail with an error if it is executed. It is
		intended as a way to represent a value that will always be fed, and to
		provide attrs that enable the fed value to be checked at runtime.
		
		Args:
		  dtype: A `tf.DType`. The type of elements in the tensor.
		  shape: A `tf.TensorShape` or list of `ints`.
		    The shape of the tensor. The shape can be any partially-specified
		    shape.  To be unconstrained, pass in a shape with unknown rank.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function placeholder_v2(dtype:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function placeholder_v2
	**/
	static public function placeholder_v2_eager_fallback(dtype:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A placeholder op that passes through `input` when its output is not fed.
		
		Args:
		  input: A `Tensor`. The default value to produce when `output` is not fed.
		  shape: A `tf.TensorShape` or list of `ints`.
		    The (possibly partial) shape of the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function placeholder_with_default(input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function placeholder_with_default
	**/
	static public function placeholder_with_default_eager_fallback(input:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Compute the polygamma function \\(\psi^{(n)}(x)\\).
		
		The polygamma function is defined as:
		
		
		\\(\psi^{(n)}(x) = \frac{d^n}{dx^n} \psi(x)\\)
		
		where \\(\psi(x)\\) is the digamma function.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function polygamma(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function polygamma
	**/
	static public function polygamma_eager_fallback(a:Dynamic, x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the elementwise value of a polynomial.
		
		If `x` is a tensor and `coeffs` is a list n + 1 tensors, this function returns
		the value of the n-th order polynomial
		
		   p(x) = coeffs[n-1] + coeffs[n-2] * x + ...  + coeffs[0] * x**(n-1)
		
		evaluated using Horner's method, i.e.
		
		   p(x) = coeffs[n-1] + x * (coeffs[n-2] + ... + x * (coeffs[1] +
		          x * coeffs[0]))
		
		Args:
		  coeffs: A list of `Tensor` representing the coefficients of the polynomial.
		  x: A `Tensor` representing the variable of the polynomial.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tensor` of the shape as the expression p(x) with usual broadcasting rules
		  for element-wise addition and multiplication applied.
		
		@compatibility(numpy)
		Equivalent to numpy.polyval.
		@end_compatibility
	**/
	static public function polyval(coeffs:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the power of one value to another.
		
		Given a tensor `x` and a tensor `y`, this operation computes \\(x^y\\) for
		corresponding elements in `x` and `y`. For example:
		
		```python
		x = tf.constant([[2, 2], [3, 3]])
		y = tf.constant([[8, 16], [2, 3]])
		tf.pow(x, y)  # [[256, 65536], [9, 27]]
		```
		
		Args:
		  x: A `Tensor` of type `float16`, `float32`, `float64`, `int32`, `int64`,
		   `complex64`, or `complex128`.
		  y: A `Tensor` of type `float16`, `float32`, `float64`, `int32`, `int64`,
		   `complex64`, or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`.
	**/
	static public function pow(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An identity op that triggers an error if a gradient is requested.
		
		When executed in a graph, this op outputs its input tensor as-is.
		
		When building ops to compute gradients, the TensorFlow gradient system
		will return an error when trying to lookup the gradient of this op,
		because no gradient must ever be registered for this function.  This
		op exists to prevent subtle bugs from silently returning unimplemented
		gradients in some corner cases.
		
		Args:
		  input: A `Tensor`. any tensor.
		  message: An optional `string`. Defaults to `""`.
		    Will be printed in the error when anyone tries to differentiate
		    this operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function prevent_gradient(input:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function prevent_gradient
	**/
	static public function prevent_gradient_eager_fallback(input:Dynamic, ?message:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		A queue that produces elements sorted by the first component value.
		
		Note that the PriorityQueue requires the first component of any element
		to be a scalar int64, in addition to the other elements declared by
		component_types.  Therefore calls to Enqueue and EnqueueMany (resp. Dequeue
		and DequeueMany) on a PriorityQueue will all require (resp. output) one extra
		entry in their input (resp. output) lists.
		
		Args:
		  shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		    The shape of each component in a value. The length of this attr must
		    be either 0 or the same as the length of component_types. If the length of
		    this attr is 0, the shapes of queue elements are not constrained, and
		    only one element may be dequeued at a time.
		  component_types: An optional list of `tf.DTypes`. Defaults to `[]`.
		    The type of each component in a value.
		  capacity: An optional `int`. Defaults to `-1`.
		    The upper bound on the number of elements in this queue.
		    Negative numbers mean no limit.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this queue will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function priority_queue(shapes:Dynamic, ?component_types:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A queue that produces elements sorted by the first component value.
		
		Note that the PriorityQueue requires the first component of any element
		to be a scalar int64, in addition to the other elements declared by
		component_types.  Therefore calls to Enqueue and EnqueueMany (resp. Dequeue
		and DequeueMany) on a PriorityQueue will all require (resp. output) one extra
		entry in their input (resp. output) lists.
		
		Args:
		  shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		    The shape of each component in a value. The length of this attr must
		    be either 0 or the same as the length of component_types. If the length of
		    this attr is 0, the shapes of queue elements are not constrained, and
		    only one element may be dequeued at a time.
		  component_types: An optional list of `tf.DTypes`. Defaults to `[]`.
		    The type of each component in a value.
		  capacity: An optional `int`. Defaults to `-1`.
		    The upper bound on the number of elements in this queue.
		    Negative numbers mean no limit.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this queue will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function priority_queue_v2(shapes:Dynamic, ?component_types:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function priority_queue_v2
	**/
	static public function priority_queue_v2_eager_fallback(shapes:Dynamic, ?component_types:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the product of elements across dimensions of a tensor.
		
		Reduces `input` along the dimensions given in `axis`. Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`axis`. If `keep_dims` is true, the reduced dimensions are
		retained with length 1.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The tensor to reduce.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The dimensions to reduce. Must be in the range
		    `[-rank(input), rank(input))`.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function prod(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function prod
	**/
	static public function prod_eager_fallback(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Wraps a python function and uses it as a TensorFlow op.
		
		Given a python function `func`, which takes numpy arrays as its
		arguments and returns numpy arrays as its outputs, wrap this function as an
		operation in a TensorFlow graph. The following snippet constructs a simple
		TensorFlow graph that invokes the `np.sinh()` NumPy function as a operation
		in the graph:
		
		```python
		def my_func(x):
		  # x will be a numpy array with the contents of the placeholder below
		  return np.sinh(x)
		input = tf.placeholder(tf.float32)
		y = tf.py_func(my_func, [input], tf.float32)
		```
		
		**N.B.** The `tf.py_func()` operation has the following known limitations:
		
		* The body of the function (i.e. `func`) will not be serialized in a
		  `GraphDef`. Therefore, you should not use this function if you need to
		  serialize your model and restore it in a different environment.
		
		* The operation must run in the same address space as the Python program
		  that calls `tf.py_func()`. If you are using distributed TensorFlow, you
		  must run a `tf.train.Server` in the same process as the program that calls
		  `tf.py_func()` and you must pin the created operation to a device in that
		  server (e.g. using `with tf.device():`).
		
		Args:
		  func: A Python function, which accepts `ndarray` objects as arguments and
		    returns a list of `ndarray` objects (or a single `ndarray`). This function
		    must accept as many arguments as there are tensors in `inp`, and these
		    argument types will match the corresponding `tf.Tensor` objects
		    in `inp`. The returns `ndarray`s must match the number and types defined
		    `Tout`.
		    Important Note: Input and output numpy `ndarray`s of `func` are not
		    guaranteed to be copies. In some cases their underlying memory will be
		    shared with the corresponding TensorFlow tensors.
		    In-place modification or storing `func` input or return values in
		    python datastructures without explicit (np.)copy
		    can have non-deterministic consequences.
		  inp: A list of `Tensor` objects.
		  Tout: A list or tuple of tensorflow data types or a single tensorflow data
		    type if there is only one, indicating what `func` returns.
		  stateful: (Boolean.) If True, the function should be considered stateful.
		    If a function is stateless, when given the same input it will return the
		    same output and have no observable side effects. Optimizations such as
		    common subexpression elimination are only performed on stateless
		    operations.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` or a single `Tensor` which `func` computes.
	**/
	static public function py_func(func:Dynamic, inp:Dynamic, Tout:Dynamic, ?stateful:Dynamic, ?name:Dynamic):Dynamic;
	static public var qint16 : Dynamic;
	static public var qint16_ref : Dynamic;
	static public var qint32 : Dynamic;
	static public var qint32_ref : Dynamic;
	static public var qint8 : Dynamic;
	static public var qint8_ref : Dynamic;
	/**
		Computes the QR decompositions of one or more matrices.
		
		Computes the QR decomposition of each inner matrix in `tensor` such that
		`tensor[..., :, :] = q[..., :, :] * r[..., :,:])`
		
		```python
		# a is a tensor.
		# q is a tensor of orthonormal matrices.
		# r is a tensor of upper triangular matrices.
		q, r = qr(a)
		q_full, r_full = qr(a, full_matrices=True)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    A tensor of shape `[..., M, N]` whose inner-most 2 dimensions
		    form matrices of size `[M, N]`. Let `P` be the minimum of `M` and `N`.
		  full_matrices: An optional `bool`. Defaults to `False`.
		    If true, compute full-sized `q` and `r`. If false
		    (the default), compute only the leading `P` columns of `q`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (q, r).
		
		  q: A `Tensor`. Has the same type as `input`.
		  r: A `Tensor`. Has the same type as `input`.
	**/
	static public function qr(input:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function qr
	**/
	static public function qr_eager_fallback(input:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Quantize the 'input' tensor of type float to 'output' tensor of type 'T'.
		
		[min_range, max_range] are scalar floats that specify the range for
		the 'input' data. The 'mode' attribute controls exactly which calculations are
		used to convert the float values to their quantized equivalents.  The
		'round_mode' attribute controls which rounding tie-breaking algorithm is used
		when rounding float values to their quantized equivalents.
		
		In 'MIN_COMBINED' mode, each value of the tensor will undergo the following:
		
		```
		out[i] = (in[i] - min_range) * range(T) / (max_range - min_range)
		if T == qint8, out[i] -= (range(T) + 1) / 2.0
		```
		
		here `range(T) = numeric_limits<T>::max() - numeric_limits<T>::min()`
		
		*MIN_COMBINED Mode Example*
		
		Assume the input is type float and has a possible range of [0.0, 6.0] and the
		output type is quint8 ([0, 255]). The min_range and max_range values should be
		specified as 0.0 and 6.0. Quantizing from float to quint8 will multiply each
		value of the input by 255/6 and cast to quint8.
		
		If the output type was qint8 ([-128, 127]), the operation will additionally
		subtract each value by 128 prior to casting, so that the range of values aligns
		with the range of qint8.
		
		If the mode is 'MIN_FIRST', then this approach is used:
		
		```
		num_discrete_values = 1 << (# of bits in T)
		range_adjust = num_discrete_values / (num_discrete_values - 1)
		range = (range_max - range_min) * range_adjust
		range_scale = num_discrete_values / range
		quantized = round(input * range_scale) - round(range_min * range_scale) +
		  numeric_limits<T>::min()
		quantized = max(quantized, numeric_limits<T>::min())
		quantized = min(quantized, numeric_limits<T>::max())
		```
		
		The biggest difference between this and MIN_COMBINED is that the minimum range
		is rounded first, before it's subtracted from the rounded value. With
		MIN_COMBINED, a small bias is introduced where repeated iterations of quantizing
		and dequantizing will introduce a larger and larger error.
		
		*SCALED mode Example*
		
		`SCALED` mode matches the quantization approach used in
		`QuantizeAndDequantize{V2|V3}`.
		
		If the mode is `SCALED`, we do not use the full range of the output type,
		choosing to elide the lowest possible value for symmetry (e.g., output range is
		-127 to 127, not -128 to 127 for signed 8 bit quantization), so that 0.0 maps to
		0.
		
		We first find the range of values in our tensor. The
		range we use is always centered on 0, so we find m such that
		
		```c++
		  m = max(abs(input_min), abs(input_max))
		```
		
		Our input tensor range is then `[-m, m]`.
		
		Next, we choose our fixed-point quantization buckets, `[min_fixed, max_fixed]`.
		If T is signed, this is
		
		```
		  num_bits = sizeof(T) * 8
		  [min_fixed, max_fixed] =
		      [-(1 << (num_bits - 1) - 1), (1 << (num_bits - 1)) - 1]
		```
		
		Otherwise, if T is unsigned, the fixed-point range is
		
		```
		  [min_fixed, max_fixed] = [0, (1 << num_bits) - 1]
		```
		
		From this we compute our scaling factor, s:
		
		```c++
		  s = (max_fixed - min_fixed) / (2 * m)
		```
		
		Now we can quantize the elements of our tensor:
		
		```c++
		result = round(input * s)
		```
		
		One thing to watch out for is that the operator may choose to adjust the
		requested minimum and maximum values slightly during the quantization process,
		so you should always use the output ports as the range for further calculations.
		For example, if the requested minimum and maximum values are close to equal,
		they will be separated by a small epsilon value to prevent ill-formed quantized
		buffers from being created. Otherwise, you can end up with buffers where all the
		quantized values map to the same float value, which causes problems for
		operations that have to perform further calculations on them.
		
		Args:
		  input: A `Tensor` of type `float32`.
		  min_range: A `Tensor` of type `float32`.
		    The minimum scalar value possibly produced for the input.
		  max_range: A `Tensor` of type `float32`.
		    The maximum scalar value possibly produced for the input.
		  T: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
		  mode: An optional `string` from: `"MIN_COMBINED", "MIN_FIRST", "SCALED"`. Defaults to `"MIN_COMBINED"`.
		  round_mode: An optional `string` from: `"HALF_AWAY_FROM_ZERO", "HALF_TO_EVEN"`. Defaults to `"HALF_AWAY_FROM_ZERO"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor` of type `T`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function quantize(input:Dynamic, min_range:Dynamic, max_range:Dynamic, T:Dynamic, ?mode:Dynamic, ?round_mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Use QuantizeAndDequantizeV2 instead.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  signed_input: An optional `bool`. Defaults to `True`.
		  num_bits: An optional `int`. Defaults to `8`.
		  range_given: An optional `bool`. Defaults to `False`.
		  input_min: An optional `float`. Defaults to `0`.
		  input_max: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function quantize_and_dequantize(input:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?input_min:Dynamic, ?input_max:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantize_and_dequantize
	**/
	static public function quantize_and_dequantize_eager_fallback(input:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?input_min:Dynamic, ?input_max:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Quantizes then dequantizes a tensor.
		
		This op simulates the precision loss from the quantized forward pass by:
		
		1. Quantizing the tensor to fixed point numbers, which should match the target
		   quantization method when it is used in inference.
		2. Dequantizing it back to floating point numbers for the following ops, most
		   likely matmul.
		
		There are different ways to quantize. This version uses only scaling, so 0.0
		maps to 0.
		
		From the specified 'num_bits' in the quantized output type, it determines
		minimum and maximum representable quantized values.
		
		e.g.
		
		*   [-128, 127] for signed, num_bits = 8, or
		*   [0, 255] for unsigned, num_bits = 8.
		
		If range_given == False, the initial input_min, input_max will be determined
		automatically as the minimum and maximum values in the input tensor, otherwise
		the specified values of input_min, input_max are used.
		
		Note: If the input_min, input_max are specified, they do not need to equal the
		actual minimum and maximum values in the tensor. e.g. in some cases it may be
		beneficial to specify these values such that the low probability extremes of the
		input distribution are clipped.
		
		This op determines the maximum scale_factor that would map the initial
		[input_min, input_max] range to a range that lies within the representable
		quantized range.
		
		It determines the scale from one of input_min and input_max, then updates the
		other one to maximize the respresentable range.
		
		e.g.
		
		*   if the output is signed, num_bits = 8, [input_min, input_max] = [-10.0,
		    5.0]: it would use a scale_factor of -128 / -10.0 = 12.8 In this case, it
		    would update input_max to be 127 / 12.8 = 9.921875
		*   if the output is signed, num_bits = 8, [input_min, input_max] = [-10.0,
		    10.0]: it would use a scale_factor of 127 / 10.0 = 12.7 In this case, it
		    would update input_min to be 128.0 / 12.7 = -10.07874
		*   if the output is unsigned, input_min is forced to be 0, and only the
		    specified input_max is used.
		
		After determining the scale_factor and updating the input range, it applies the
		following to each value in the 'input' tensor.
		
		output = round(clamp(value, input_min, input_max) * scale_factor) / scale_factor.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		    Tensor to quantize and then dequantize.
		  input_min: A `Tensor`. Must have the same type as `input`.
		    If `range_given == True`, this specifies the minimum input value that needs to
		    be represented, otherwise it is determined from the min value of the `input`
		    tensor.
		  input_max: A `Tensor`. Must have the same type as `input`.
		    If `range_given == True`, this specifies the maximum input value that needs to
		    be represented, otherwise it is determined from the max value of the `input`
		    tensor.
		  signed_input: An optional `bool`. Defaults to `True`.
		    Whether the quantization is signed or unsigned. (actually this parameter should
		    have been called <b>`signed_output`</b>)
		  num_bits: An optional `int`. Defaults to `8`.
		    The bitwidth of the quantization.
		  range_given: An optional `bool`. Defaults to `False`.
		    Whether the range is given or should be determined from the `input` tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function quantize_and_dequantize_v2(input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantize_and_dequantize_v2
	**/
	static public function quantize_and_dequantize_v2_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Quantizes then dequantizes a tensor.
		
		This is almost identical to QuantizeAndDequantizeV2, except that num_bits is a
		tensor, so its value can change during training.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  input_min: A `Tensor`. Must have the same type as `input`.
		  input_max: A `Tensor`. Must have the same type as `input`.
		  num_bits: A `Tensor` of type `int32`.
		  signed_input: An optional `bool`. Defaults to `True`.
		  range_given: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function quantize_and_dequantize_v3(input:Dynamic, input_min:Dynamic, input_max:Dynamic, num_bits:Dynamic, ?signed_input:Dynamic, ?range_given:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantize_and_dequantize_v3
	**/
	static public function quantize_and_dequantize_v3_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, num_bits:Dynamic, ?signed_input:Dynamic, ?range_given:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Convert the quantized 'input' tensor into a lower-precision 'output', using the
		
		actual distribution of the values to maximize the usage of the lower bit depth
		and adjusting the output min and max ranges accordingly.
		
		[input_min, input_max] are scalar floats that specify the range for the float
		interpretation of the 'input' data. For example, if input_min is -1.0f and
		input_max is 1.0f, and we are dealing with quint16 quantized data, then a 0
		value in the 16-bit data should be interpreted as -1.0f, and a 65535 means 1.0f.
		
		This operator tries to squeeze as much precision as possible into an output with
		a lower bit depth by calculating the actual min and max values found in the
		data. For example, maybe that quint16 input has no values lower than 16,384 and
		none higher than 49,152. That means only half the range is actually needed, all
		the float interpretations are between -0.5f and 0.5f, so if we want to compress
		the data into a quint8 output, we can use that range rather than the theoretical
		-1.0f to 1.0f that is suggested by the input min and max.
		
		In practice, this is most useful for taking output from operations like
		QuantizedMatMul that can produce higher bit-depth outputs than their inputs and
		may have large potential output ranges, but in practice have a distribution of
		input values that only uses a small fraction of the possible range. By feeding
		that output into this operator, we can reduce it from 32 bits down to 8 with
		minimal loss of accuracy.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  input_min: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  input_max: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  out_type: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
		    The type of the output. Should be a lower bit depth than Tinput.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor` of type `out_type`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function quantize_down_and_shrink_range(input:Dynamic, input_min:Dynamic, input_max:Dynamic, out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantize_down_and_shrink_range
	**/
	static public function quantize_down_and_shrink_range_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Please use `tf.quantize` instead.
	**/
	static public function quantize_v2(input:Dynamic, min_range:Dynamic, max_range:Dynamic, T:Dynamic, ?mode:Dynamic, ?name:Dynamic, ?round_mode:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantize_v2
	**/
	static public function quantize_v2_eager_fallback(input:Dynamic, min_range:Dynamic, max_range:Dynamic, T:Dynamic, ?mode:Dynamic, ?round_mode:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns x + y element-wise, working on quantized buffers.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  y: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_x: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `x` value represents.
		  max_x: A `Tensor` of type `float32`.
		    The float value that the highest quantized `x` value represents.
		  min_y: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `y` value represents.
		  max_y: A `Tensor` of type `float32`.
		    The float value that the highest quantized `y` value represents.
		  Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (z, min_z, max_z).
		
		  z: A `Tensor` of type `Toutput`.
		  min_z: A `Tensor` of type `float32`.
		  max_z: A `Tensor` of type `float32`.
	**/
	static public function quantized_add(x:Dynamic, y:Dynamic, min_x:Dynamic, max_x:Dynamic, min_y:Dynamic, max_y:Dynamic, ?Toutput:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_add
	**/
	static public function quantized_add_eager_fallback(x:Dynamic, y:Dynamic, min_x:Dynamic, max_x:Dynamic, min_y:Dynamic, max_y:Dynamic, ?Toutput:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Concatenates quantized tensors along one dimension.
		
		Args:
		  concat_dim: A `Tensor` of type `int32`.
		    0-D.  The dimension along which to concatenate.  Must be in the
		    range [0, rank(values)).
		  values: A list of at least 2 `Tensor` objects with the same type.
		    The `N` Tensors to concatenate. Their ranks and types must match,
		    and their sizes must match in all dimensions except `concat_dim`.
		  input_mins: A list with the same length as `values` of `Tensor` objects with type `float32`.
		    The minimum scalar values for each of the input tensors.
		  input_maxes: A list with the same length as `values` of `Tensor` objects with type `float32`.
		    The maximum scalar values for each of the input tensors.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor`. Has the same type as `values`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function quantized_concat(concat_dim:Dynamic, values:Dynamic, input_mins:Dynamic, input_maxes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_concat
	**/
	static public function quantized_concat_eager_fallback(concat_dim:Dynamic, values:Dynamic, input_mins:Dynamic, input_maxes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Quantized Instance normalization.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    A 4D input Tensor.
		  x_min: A `Tensor` of type `float32`.
		    The value represented by the lowest quantized input.
		  x_max: A `Tensor` of type `float32`.
		    The value represented by the highest quantized input.
		  output_range_given: An optional `bool`. Defaults to `False`.
		    If True, `given_y_min` and `given_y_min`
		    and `given_y_max` are used as the output range. Otherwise,
		    the implementation computes the output range.
		  given_y_min: An optional `float`. Defaults to `0`.
		    Output in `y_min` if `output_range_given` is True.
		  given_y_max: An optional `float`. Defaults to `0`.
		    Output in `y_max` if `output_range_given` is True.
		  variance_epsilon: An optional `float`. Defaults to `1e-05`.
		    A small float number to avoid dividing by 0.
		  min_separation: An optional `float`. Defaults to `0.001`.
		    Minimum value of `y_max - y_min`
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, y_min, y_max).
		
		  y: A `Tensor`. Has the same type as `x`.
		  y_min: A `Tensor` of type `float32`.
		  y_max: A `Tensor` of type `float32`.
	**/
	static public function quantized_instance_norm(x:Dynamic, x_min:Dynamic, x_max:Dynamic, ?output_range_given:Dynamic, ?given_y_min:Dynamic, ?given_y_max:Dynamic, ?variance_epsilon:Dynamic, ?min_separation:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_instance_norm
	**/
	static public function quantized_instance_norm_eager_fallback(x:Dynamic, x_min:Dynamic, x_max:Dynamic, ?output_range_given:Dynamic, ?given_y_min:Dynamic, ?given_y_max:Dynamic, ?variance_epsilon:Dynamic, ?min_separation:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Perform a quantized matrix multiplication of  `a` by the matrix `b`.
		
		The inputs must be two-dimensional matrices and the inner dimension of
		`a` (after being transposed if `transpose_a` is non-zero) must match the
		outer dimension of `b` (after being transposed if `transposed_b` is
		non-zero).
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    Must be a two-dimensional tensor.
		  b: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    Must be a two-dimensional tensor.
		  min_a: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `a` value represents.
		  max_a: A `Tensor` of type `float32`.
		    The float value that the highest quantized `a` value represents.
		  min_b: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `b` value represents.
		  max_b: A `Tensor` of type `float32`.
		    The float value that the highest quantized `b` value represents.
		  Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  transpose_a: An optional `bool`. Defaults to `False`.
		    If true, `a` is transposed before multiplication.
		  transpose_b: An optional `bool`. Defaults to `False`.
		    If true, `b` is transposed before multiplication.
		  Tactivation: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		    The type of output produced by activation function
		    following this operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (out, min_out, max_out).
		
		  out: A `Tensor` of type `Toutput`.
		  min_out: A `Tensor` of type `float32`.
		  max_out: A `Tensor` of type `float32`.
	**/
	static public function quantized_mat_mul(a:Dynamic, b:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, ?Toutput:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?Tactivation:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_mat_mul
	**/
	static public function quantized_mat_mul_eager_fallback(a:Dynamic, b:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, ?Toutput:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?Tactivation:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns x * y element-wise, working on quantized buffers.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  y: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_x: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `x` value represents.
		  max_x: A `Tensor` of type `float32`.
		    The float value that the highest quantized `x` value represents.
		  min_y: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `y` value represents.
		  max_y: A `Tensor` of type `float32`.
		    The float value that the highest quantized `y` value represents.
		  Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (z, min_z, max_z).
		
		  z: A `Tensor` of type `Toutput`.
		  min_z: A `Tensor` of type `float32`.
		  max_z: A `Tensor` of type `float32`.
	**/
	static public function quantized_mul(x:Dynamic, y:Dynamic, min_x:Dynamic, max_x:Dynamic, min_y:Dynamic, max_y:Dynamic, ?Toutput:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_mul
	**/
	static public function quantized_mul_eager_fallback(x:Dynamic, y:Dynamic, min_x:Dynamic, max_x:Dynamic, min_y:Dynamic, max_y:Dynamic, ?Toutput:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Reshapes a quantized tensor as per the Reshape op.
		
		```
		
		Args:
		  tensor: A `Tensor`.
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Defines the shape of the output tensor.
		  input_min: A `Tensor` of type `float32`. The minimum value of the input.
		  input_max: A `Tensor` of type `float32`. The maximum value of the input.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor`. Has the same type as `tensor`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function quantized_reshape(tensor:Dynamic, shape:Dynamic, input_min:Dynamic, input_max:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_reshape
	**/
	static public function quantized_reshape_eager_fallback(tensor:Dynamic, shape:Dynamic, input_min:Dynamic, input_max:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Closes the given queue.
		
		This operation signals that no more elements will be enqueued in the
		given queue. Subsequent Enqueue(Many) operations will fail.
		Subsequent Dequeue(Many) operations will continue to succeed if
		sufficient elements remain in the queue. Subsequent Dequeue(Many)
		operations that would block will fail immediately.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a queue.
		  cancel_pending_enqueues: An optional `bool`. Defaults to `False`.
		    If true, all pending enqueue requests that are
		    blocked on the given queue will be canceled.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function queue_close(handle:Dynamic, ?cancel_pending_enqueues:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Closes the given queue.
		
		This operation signals that no more elements will be enqueued in the
		given queue. Subsequent Enqueue(Many) operations will fail.
		Subsequent Dequeue(Many) operations will continue to succeed if
		sufficient elements remain in the queue. Subsequent Dequeue(Many)
		operations that would block will fail immediately.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a queue.
		  cancel_pending_enqueues: An optional `bool`. Defaults to `False`.
		    If true, all pending enqueue requests that are
		    blocked on the given queue will be canceled.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function queue_close_v2(handle:Dynamic, ?cancel_pending_enqueues:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function queue_close_v2
	**/
	static public function queue_close_v2_eager_fallback(handle:Dynamic, ?cancel_pending_enqueues:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Dequeues a tuple of one or more tensors from the given queue.
		
		This operation has k outputs, where k is the number of components
		in the tuples stored in the given queue, and output i is the ith
		component of the dequeued tuple.
		
		N.B. If the queue is empty, this operation will block until an element
		has been dequeued (or 'timeout_ms' elapses, if specified).
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a queue.
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a tuple.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue is empty, this operation will block for up to
		    timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `component_types`.
	**/
	static public function queue_dequeue(handle:Dynamic, component_types:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dequeues `n` tuples of one or more tensors from the given queue.
		
		If the queue is closed and there are fewer than `n` elements, then an
		OutOfRange error is returned.
		
		This operation concatenates queue-element component tensors along the
		0th dimension to make a single component tensor.  All of the components
		in the dequeued tuple will have size `n` in the 0th dimension.
		
		This operation has `k` outputs, where `k` is the number of components in
		the tuples stored in the given queue, and output `i` is the ith
		component of the dequeued tuple.
		
		N.B. If the queue is empty, this operation will block until `n` elements
		have been dequeued (or 'timeout_ms' elapses, if specified).
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a queue.
		  n: A `Tensor` of type `int32`. The number of tuples to dequeue.
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a tuple.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue has fewer than n elements, this operation
		    will block for up to timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `component_types`.
	**/
	static public function queue_dequeue_many(handle:Dynamic, n:Dynamic, component_types:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dequeues `n` tuples of one or more tensors from the given queue.
		
		If the queue is closed and there are fewer than `n` elements, then an
		OutOfRange error is returned.
		
		This operation concatenates queue-element component tensors along the
		0th dimension to make a single component tensor.  All of the components
		in the dequeued tuple will have size `n` in the 0th dimension.
		
		This operation has `k` outputs, where `k` is the number of components in
		the tuples stored in the given queue, and output `i` is the ith
		component of the dequeued tuple.
		
		N.B. If the queue is empty, this operation will block until `n` elements
		have been dequeued (or 'timeout_ms' elapses, if specified).
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a queue.
		  n: A `Tensor` of type `int32`. The number of tuples to dequeue.
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a tuple.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue has fewer than n elements, this operation
		    will block for up to timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `component_types`.
	**/
	static public function queue_dequeue_many_v2(handle:Dynamic, n:Dynamic, component_types:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function queue_dequeue_many_v2
	**/
	static public function queue_dequeue_many_v2_eager_fallback(handle:Dynamic, n:Dynamic, component_types:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Dequeues `n` tuples of one or more tensors from the given queue.
		
		This operation is not supported by all queues.  If a queue does not support
		DequeueUpTo, then an Unimplemented error is returned.
		
		If the queue is closed and there are more than 0 but less than `n`
		elements remaining, then instead of returning an OutOfRange error like
		QueueDequeueMany, less than `n` elements are returned immediately.  If
		the queue is closed and there are 0 elements left in the queue, then
		an OutOfRange error is returned just like in QueueDequeueMany.
		Otherwise the behavior is identical to QueueDequeueMany:
		
		This operation concatenates queue-element component tensors along the
		0th dimension to make a single component tensor.  All of the components
		in the dequeued tuple will have size `n` in the 0th dimension.
		
		This operation has k outputs, where `k` is the number of components in
		the tuples stored in the given queue, and output `i` is the ith
		component of the dequeued tuple.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a queue.
		  n: A `Tensor` of type `int32`. The number of tuples to dequeue.
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a tuple.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue has fewer than n elements, this operation
		    will block for up to timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `component_types`.
	**/
	static public function queue_dequeue_up_to(handle:Dynamic, n:Dynamic, component_types:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dequeues `n` tuples of one or more tensors from the given queue.
		
		This operation is not supported by all queues.  If a queue does not support
		DequeueUpTo, then an Unimplemented error is returned.
		
		If the queue is closed and there are more than 0 but less than `n`
		elements remaining, then instead of returning an OutOfRange error like
		QueueDequeueMany, less than `n` elements are returned immediately.  If
		the queue is closed and there are 0 elements left in the queue, then
		an OutOfRange error is returned just like in QueueDequeueMany.
		Otherwise the behavior is identical to QueueDequeueMany:
		
		This operation concatenates queue-element component tensors along the
		0th dimension to make a single component tensor.  All of the components
		in the dequeued tuple will have size n in the 0th dimension.
		
		This operation has `k` outputs, where `k` is the number of components in
		the tuples stored in the given queue, and output `i` is the ith
		component of the dequeued tuple.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a queue.
		  n: A `Tensor` of type `int32`. The number of tuples to dequeue.
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a tuple.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue has fewer than n elements, this operation
		    will block for up to timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `component_types`.
	**/
	static public function queue_dequeue_up_to_v2(handle:Dynamic, n:Dynamic, component_types:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function queue_dequeue_up_to_v2
	**/
	static public function queue_dequeue_up_to_v2_eager_fallback(handle:Dynamic, n:Dynamic, component_types:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Dequeues a tuple of one or more tensors from the given queue.
		
		This operation has k outputs, where k is the number of components
		in the tuples stored in the given queue, and output i is the ith
		component of the dequeued tuple.
		
		N.B. If the queue is empty, this operation will block until an element
		has been dequeued (or 'timeout_ms' elapses, if specified).
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a queue.
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a tuple.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue is empty, this operation will block for up to
		    timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `component_types`.
	**/
	static public function queue_dequeue_v2(handle:Dynamic, component_types:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function queue_dequeue_v2
	**/
	static public function queue_dequeue_v2_eager_fallback(handle:Dynamic, component_types:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Enqueues a tuple of one or more tensors in the given queue.
		
		The components input has k elements, which correspond to the components of
		tuples stored in the given queue.
		
		N.B. If the queue is full, this operation will block until the given
		element has been enqueued (or 'timeout_ms' elapses, if specified).
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a queue.
		  components: A list of `Tensor` objects.
		    One or more tensors from which the enqueued tensors should be taken.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue is full, this operation will block for up to
		    timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function queue_enqueue(handle:Dynamic, components:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Enqueues zero or more tuples of one or more tensors in the given queue.
		
		This operation slices each component tensor along the 0th dimension to
		make multiple queue elements. All of the tuple components must have the
		same size in the 0th dimension.
		
		The components input has k elements, which correspond to the components of
		tuples stored in the given queue.
		
		N.B. If the queue is full, this operation will block until the given
		elements have been enqueued (or 'timeout_ms' elapses, if specified).
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a queue.
		  components: A list of `Tensor` objects.
		    One or more tensors from which the enqueued tensors should
		    be taken.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue is too full, this operation will block for up
		    to timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function queue_enqueue_many(handle:Dynamic, components:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Enqueues zero or more tuples of one or more tensors in the given queue.
		
		This operation slices each component tensor along the 0th dimension to
		make multiple queue elements. All of the tuple components must have the
		same size in the 0th dimension.
		
		The components input has k elements, which correspond to the components of
		tuples stored in the given queue.
		
		N.B. If the queue is full, this operation will block until the given
		elements have been enqueued (or 'timeout_ms' elapses, if specified).
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a queue.
		  components: A list of `Tensor` objects.
		    One or more tensors from which the enqueued tensors should
		    be taken.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue is too full, this operation will block for up
		    to timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function queue_enqueue_many_v2(handle:Dynamic, components:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function queue_enqueue_many_v2
	**/
	static public function queue_enqueue_many_v2_eager_fallback(handle:Dynamic, components:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Enqueues a tuple of one or more tensors in the given queue.
		
		The components input has k elements, which correspond to the components of
		tuples stored in the given queue.
		
		N.B. If the queue is full, this operation will block until the given
		element has been enqueued (or 'timeout_ms' elapses, if specified).
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a queue.
		  components: A list of `Tensor` objects.
		    One or more tensors from which the enqueued tensors should be taken.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue is full, this operation will block for up to
		    timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function queue_enqueue_v2(handle:Dynamic, components:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function queue_enqueue_v2
	**/
	static public function queue_enqueue_v2_eager_fallback(handle:Dynamic, components:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns true if queue is closed.
		
		This operation returns true if the queue is closed and false if the queue
		is open.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a queue.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function queue_is_closed(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns true if queue is closed.
		
		This operation returns true if the queue is closed and false if the queue
		is open.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a queue.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function queue_is_closed_v2(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function queue_is_closed_v2
	**/
	static public function queue_is_closed_v2_eager_fallback(handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the number of elements in the given queue.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a queue.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function queue_size(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the number of elements in the given queue.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a queue.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function queue_size_v2(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function queue_size_v2
	**/
	static public function queue_size_v2_eager_fallback(handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var quint16 : Dynamic;
	static public var quint16_ref : Dynamic;
	static public var quint8 : Dynamic;
	static public var quint8_ref : Dynamic;
	/**
		Randomly crops a tensor to a given size.
		
		Slices a shape `size` portion out of `value` at a uniformly chosen offset.
		Requires `value.shape >= size`.
		
		If a dimension should not be cropped, pass the full size of that dimension.
		For example, RGB images can be cropped with
		`size = [crop_height, crop_width, 3]`.
		
		Args:
		  value: Input tensor to crop.
		  size: 1-D tensor with size the rank of `value`.
		  seed: Python integer. Used to create a random seed. See
		    `tf.set_random_seed`
		    for behavior.
		  name: A name for this operation (optional).
		
		Returns:
		  A cropped tensor of the same rank as `value` and shape `size`.
	**/
	static public function random_crop(value:Dynamic, size:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Draws `shape` samples from each of the given Gamma distribution(s).
		
		`alpha` is the shape parameter describing the distribution(s), and `beta` is
		the inverse scale parameter(s).
		
		Note: Because internal calculations are done using `float64` and casting has
		`floor` semantics, we must manually map zero outcomes to the smallest
		possible positive floating-point value, i.e., `np.finfo(dtype).tiny`.  This
		means that `np.finfo(dtype).tiny` occurs more frequently than it otherwise
		should.  This bias can only happen for small values of `alpha`, i.e.,
		`alpha << 1` or large values of `beta`, i.e., `beta >> 1`.
		
		The samples are differentiable w.r.t. alpha and beta.
		The derivatives are computed using the approach described in the paper
		
		[Michael Figurnov, Shakir Mohamed, Andriy Mnih.
		Implicit Reparameterization Gradients, 2018](https://arxiv.org/abs/1805.08498)
		
		Example:
		
		```python
		samples = tf.random_gamma([10], [0.5, 1.5])
		# samples has shape [10, 2], where each slice [:, 0] and [:, 1] represents
		# the samples drawn from each distribution
		
		samples = tf.random_gamma([7, 5], [0.5, 1.5])
		# samples has shape [7, 5, 2], where each slice [:, :, 0] and [:, :, 1]
		# represents the 7x5 samples drawn from each of the two distributions
		
		alpha = tf.constant([[1.],[3.],[5.]])
		beta = tf.constant([[3., 4.]])
		samples = tf.random_gamma([30], alpha=alpha, beta=beta)
		# samples has shape [30, 3, 2], with 30 samples each of 3x2 distributions.
		
		loss = tf.reduce_mean(tf.square(samples))
		dloss_dalpha, dloss_dbeta = tf.gradients(loss, [alpha, beta])
		# unbiased stochastic derivatives of the loss function
		alpha.shape == dloss_dalpha.shape  # True
		beta.shape == dloss_dbeta.shape  # True
		```
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output samples
		    to be drawn per alpha/beta-parameterized distribution.
		  alpha: A Tensor or Python value or N-D array of type `dtype`. `alpha`
		    provides the shape parameter(s) describing the gamma distribution(s) to
		    sample. Must be broadcastable with `beta`.
		  beta: A Tensor or Python value or N-D array of type `dtype`. Defaults to 1.
		    `beta` provides the inverse scale parameter(s) of the gamma
		    distribution(s) to sample. Must be broadcastable with `alpha`.
		  dtype: The type of alpha, beta, and the output: `float16`, `float32`, or
		    `float64`.
		  seed: A Python integer. Used to create a random seed for the distributions.
		    See
		    `tf.set_random_seed`
		    for behavior.
		  name: Optional name for the operation.
		
		Returns:
		  samples: a `Tensor` of shape
		    `tf.concat([shape, tf.shape(alpha + beta)], axis=0)` with values of type
		    `dtype`.
	**/
	static public function random_gamma(shape:Dynamic, alpha:Dynamic, ?beta:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function random_gamma
	**/
	static public function random_gamma_eager_fallback(shape:Dynamic, alpha:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the derivative of a Gamma random sample w.r.t. `alpha`.
		
		Args:
		  alpha: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  sample: A `Tensor`. Must have the same type as `alpha`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `alpha`.
	**/
	static public function random_gamma_grad(alpha:Dynamic, sample:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function random_gamma_grad
	**/
	static public function random_gamma_grad_eager_fallback(alpha:Dynamic, sample:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Outputs random values from a normal distribution.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  mean: A 0-D Tensor or Python value of type `dtype`. The mean of the normal
		    distribution.
		  stddev: A 0-D Tensor or Python value of type `dtype`. The standard deviation
		    of the normal distribution.
		  dtype: The type of the output.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    `tf.set_random_seed`
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random normal values.
	**/
	static public function random_normal(shape:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Draws `shape` samples from each of the given Poisson distribution(s).
		
		`lam` is the rate parameter describing the distribution(s).
		
		Example:
		
		```python
		samples = tf.random_poisson([0.5, 1.5], [10])
		# samples has shape [10, 2], where each slice [:, 0] and [:, 1] represents
		# the samples drawn from each distribution
		
		samples = tf.random_poisson([12.2, 3.3], [7, 5])
		# samples has shape [7, 5, 2], where each slice [:, :, 0] and [:, :, 1]
		# represents the 7x5 samples drawn from each of the two distributions
		```
		
		Args:
		  lam: A Tensor or Python value or N-D array of type `dtype`.
		    `lam` provides the rate parameter(s) describing the poisson
		    distribution(s) to sample.
		  shape: A 1-D integer Tensor or Python array. The shape of the output samples
		    to be drawn per "rate"-parameterized distribution.
		  dtype: The type of the output: `float16`, `float32`, `float64`, `int32` or
		    `int64`.
		  seed: A Python integer. Used to create a random seed for the distributions.
		    See
		    `tf.set_random_seed`
		    for behavior.
		  name: Optional name for the operation.
		
		Returns:
		  samples: a `Tensor` of shape `tf.concat([shape, tf.shape(lam)], axis=0)`
		    with values of type `dtype`.
	**/
	static public function random_poisson(lam:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function random_poisson
	**/
	static public function random_poisson_eager_fallback(shape:Dynamic, rate:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Outputs random values from the Poisson distribution(s) described by rate.
		
		This op uses two algorithms, depending on rate. If rate >= 10, then
		the algorithm by Hormann is used to acquire samples via
		transformation-rejection.
		See http://www.sciencedirect.com/science/article/pii/0167668793909974.
		
		Otherwise, Knuth's algorithm is used to acquire samples via multiplying uniform
		random variables.
		See Donald E. Knuth (1969). Seminumerical Algorithms. The Art of Computer
		Programming, Volume 2. Addison Wesley
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D integer tensor. Shape of independent samples to draw from each
		    distribution described by the shape parameters given in rate.
		  rate: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`.
		    A tensor in which each scalar is a "rate" parameter describing the
		    associated poisson distribution.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  dtype: An optional `tf.DType` from: `tf.half, tf.float32, tf.float64, tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function random_poisson_v2(shape:Dynamic, rate:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function random_poisson_v2
	**/
	static public function random_poisson_v2_eager_fallback(shape:Dynamic, rate:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Randomly shuffles a tensor along its first dimension.
		
		The tensor is shuffled along dimension 0, such that each `value[j]` is mapped
		to one and only one `output[i]`. For example, a mapping that might occur for a
		3x2 tensor is:
		
		```python
		[[1, 2],       [[5, 6],
		 [3, 4],  ==>   [1, 2],
		 [5, 6]]        [3, 4]]
		```
		
		Args:
		  value: A Tensor to be shuffled.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    `tf.set_random_seed`
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of same shape and type as `value`, shuffled along its first
		  dimension.
	**/
	static public function random_shuffle(value:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function random_shuffle
	**/
	static public function random_shuffle_eager_fallback(value:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A queue that randomizes the order of elements.
		
		Args:
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a value.
		  shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    The shape of each component in a value. The length of this attr must
		    be either 0 or the same as the length of component_types. If the length of
		    this attr is 0, the shapes of queue elements are not constrained, and
		    only one element may be dequeued at a time.
		  capacity: An optional `int`. Defaults to `-1`.
		    The upper bound on the number of elements in this queue.
		    Negative numbers mean no limit.
		  min_after_dequeue: An optional `int`. Defaults to `0`.
		    Dequeue will block unless there would be this
		    many elements after the dequeue or the queue is closed. This
		    ensures a minimum level of mixing of elements.
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 is set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, a random seed is used.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this queue will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function random_shuffle_queue(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?min_after_dequeue:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A queue that randomizes the order of elements.
		
		Args:
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a value.
		  shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    The shape of each component in a value. The length of this attr must
		    be either 0 or the same as the length of component_types. If the length of
		    this attr is 0, the shapes of queue elements are not constrained, and
		    only one element may be dequeued at a time.
		  capacity: An optional `int`. Defaults to `-1`.
		    The upper bound on the number of elements in this queue.
		    Negative numbers mean no limit.
		  min_after_dequeue: An optional `int`. Defaults to `0`.
		    Dequeue will block unless there would be this
		    many elements after the dequeue or the queue is closed. This
		    ensures a minimum level of mixing of elements.
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 is set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, a random seed is used.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this queue will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function random_shuffle_queue_v2(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?min_after_dequeue:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function random_shuffle_queue_v2
	**/
	static public function random_shuffle_queue_v2_eager_fallback(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?min_after_dequeue:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Outputs random values from a normal distribution.
		
		The generated values will have mean 0 and standard deviation 1.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  dtype: A `tf.DType` from: `tf.half, tf.bfloat16, tf.float32, tf.float64`.
		    The type of the output.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function random_standard_normal(shape:Dynamic, dtype:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function random_standard_normal
	**/
	static public function random_standard_normal_eager_fallback(shape:Dynamic, dtype:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Outputs random values from a uniform distribution.
		
		The generated values follow a uniform distribution in the range
		`[minval, maxval)`. The lower bound `minval` is included in the range, while
		the upper bound `maxval` is excluded.
		
		For floats, the default range is `[0, 1)`.  For ints, at least `maxval` must
		be specified explicitly.
		
		In the integer case, the random integers are slightly biased unless
		`maxval - minval` is an exact power of two.  The bias is small for values of
		`maxval - minval` significantly smaller than the range of the output (either
		`2**32` or `2**64`).
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  minval: A 0-D Tensor or Python value of type `dtype`. The lower bound on the
		    range of random values to generate.  Defaults to 0.
		  maxval: A 0-D Tensor or Python value of type `dtype`. The upper bound on
		    the range of random values to generate.  Defaults to 1 if `dtype` is
		    floating point.
		  dtype: The type of the output: `float16`, `float32`, `float64`, `int32`,
		    or `int64`.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See `tf.set_random_seed`
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random uniform values.
		
		Raises:
		  ValueError: If `dtype` is integral and `maxval` is not specified.
	**/
	static public function random_uniform(shape:Dynamic, ?minval:Dynamic, ?maxval:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function random_uniform
	**/
	static public function random_uniform_eager_fallback(shape:Dynamic, dtype:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Outputs random integers from a uniform distribution.
		
		The generated values are uniform integers in the range `[minval, maxval)`.
		The lower bound `minval` is included in the range, while the upper bound
		`maxval` is excluded.
		
		The random integers are slightly biased unless `maxval - minval` is an exact
		power of two.  The bias is small for values of `maxval - minval` significantly
		smaller than the range of the output (either `2^32` or `2^64`).
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  minval: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D.  Inclusive lower bound on the generated integers.
		  maxval: A `Tensor`. Must have the same type as `minval`.
		    0-D.  Exclusive upper bound on the generated integers.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `minval`.
	**/
	static public function random_uniform_int(shape:Dynamic, minval:Dynamic, maxval:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function random_uniform_int
	**/
	static public function random_uniform_int_eager_fallback(shape:Dynamic, minval:Dynamic, maxval:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a sequence of numbers.
		
		Creates a sequence of numbers that begins at `start` and extends by
		increments of `delta` up to but not including `limit`.
		
		The dtype of the resulting tensor is inferred from the inputs unless
		it is provided explicitly.
		
		Like the Python builtin `range`, `start` defaults to 0, so that
		`range(n) = range(0, n)`.
		
		For example:
		
		```python
		start = 3
		limit = 18
		delta = 3
		tf.range(start, limit, delta)  # [3, 6, 9, 12, 15]
		
		start = 3
		limit = 1
		delta = -0.5
		tf.range(start, limit, delta)  # [3, 2.5, 2, 1.5]
		
		limit = 5
		tf.range(limit)  # [0, 1, 2, 3, 4]
		```
		
		Args:
		  start: A 0-D `Tensor` (scalar). Acts as first entry in the range if
		    `limit` is not None; otherwise, acts as range limit and first entry
		    defaults to 0.
		  limit: A 0-D `Tensor` (scalar). Upper limit of sequence,
		    exclusive. If None, defaults to the value of `start` while the first
		    entry of the range defaults to 0.
		  delta: A 0-D `Tensor` (scalar). Number that increments
		    `start`. Defaults to 1.
		  dtype: The type of the elements of the resulting tensor.
		  name: A name for the operation. Defaults to "range".
		
		Returns:
		  An 1-D `Tensor` of type `dtype`.
		
		@compatibility(numpy)
		Equivalent to np.arange
		@end_compatibility
	**/
	static public function range(start:Dynamic, ?limit:Dynamic, ?delta:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the rank of a tensor.
		
		Returns a 0-D `int32` `Tensor` representing the rank of `input`.
		
		For example:
		
		```python
		# shape of tensor 't' is [2, 2, 3]
		t = tf.constant([[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]])
		tf.rank(t)  # 3
		```
		
		**Note**: The rank of a tensor is not the same as the rank of a matrix. The
		rank of a tensor is the number of indices required to uniquely select each
		element of the tensor. Rank is also known as "order", "degree", or "ndims."
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
		
		@compatibility(numpy)
		Equivalent to np.ndim
		@end_compatibility
	**/
	static public function rank(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function rank
	**/
	static public function rank_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the rank of a tensor.
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		  optimize: if true, encode the rank as a constant when possible.
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function rank_internal(input:Dynamic, ?name:Dynamic, ?optimize:Dynamic):Dynamic;
	/**
		Reads and outputs the entire contents of the input filename.
		
		Args:
		  filename: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function read_file(filename:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function read_file
	**/
	static public function read_file_eager_fallback(filename:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the number of records this Reader has produced.
		
		This is the same as the number of ReaderRead executions that have
		succeeded.
		
		Args:
		  reader_handle: A `Tensor` of type mutable `string`. Handle to a Reader.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function reader_num_records_produced(reader_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the number of records this Reader has produced.
		
		This is the same as the number of ReaderRead executions that have
		succeeded.
		
		Args:
		  reader_handle: A `Tensor` of type `resource`. Handle to a Reader.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function reader_num_records_produced_v2(reader_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reader_num_records_produced_v2
	**/
	static public function reader_num_records_produced_v2_eager_fallback(reader_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the number of work units this Reader has finished processing.
		
		Args:
		  reader_handle: A `Tensor` of type mutable `string`. Handle to a Reader.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function reader_num_work_units_completed(reader_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the number of work units this Reader has finished processing.
		
		Args:
		  reader_handle: A `Tensor` of type `resource`. Handle to a Reader.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function reader_num_work_units_completed_v2(reader_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reader_num_work_units_completed_v2
	**/
	static public function reader_num_work_units_completed_v2_eager_fallback(reader_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the next record (key, value pair) produced by a Reader.
		
		Will dequeue from the input queue if necessary (e.g. when the
		Reader needs to start reading from a new file since it has finished
		with the previous file).
		
		Args:
		  reader_handle: A `Tensor` of type mutable `string`. Handle to a Reader.
		  queue_handle: A `Tensor` of type mutable `string`.
		    Handle to a Queue, with string work items.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (key, value).
		
		  key: A `Tensor` of type `string`.
		  value: A `Tensor` of type `string`.
	**/
	static public function reader_read(reader_handle:Dynamic, queue_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns up to `num_records` (key, value) pairs produced by a Reader.
		
		Will dequeue from the input queue if necessary (e.g. when the
		Reader needs to start reading from a new file since it has finished
		with the previous file).
		It may return less than `num_records` even before the last batch.
		
		Args:
		  reader_handle: A `Tensor` of type mutable `string`. Handle to a `Reader`.
		  queue_handle: A `Tensor` of type mutable `string`.
		    Handle to a `Queue`, with string work items.
		  num_records: A `Tensor` of type `int64`.
		    number of records to read from `Reader`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (keys, values).
		
		  keys: A `Tensor` of type `string`.
		  values: A `Tensor` of type `string`.
	**/
	static public function reader_read_up_to(reader_handle:Dynamic, queue_handle:Dynamic, num_records:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns up to `num_records` (key, value) pairs produced by a Reader.
		
		Will dequeue from the input queue if necessary (e.g. when the
		Reader needs to start reading from a new file since it has finished
		with the previous file).
		It may return less than `num_records` even before the last batch.
		
		Args:
		  reader_handle: A `Tensor` of type `resource`. Handle to a `Reader`.
		  queue_handle: A `Tensor` of type `resource`.
		    Handle to a `Queue`, with string work items.
		  num_records: A `Tensor` of type `int64`.
		    number of records to read from `Reader`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (keys, values).
		
		  keys: A `Tensor` of type `string`.
		  values: A `Tensor` of type `string`.
	**/
	static public function reader_read_up_to_v2(reader_handle:Dynamic, queue_handle:Dynamic, num_records:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reader_read_up_to_v2
	**/
	static public function reader_read_up_to_v2_eager_fallback(reader_handle:Dynamic, queue_handle:Dynamic, num_records:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the next record (key, value pair) produced by a Reader.
		
		Will dequeue from the input queue if necessary (e.g. when the
		Reader needs to start reading from a new file since it has finished
		with the previous file).
		
		Args:
		  reader_handle: A `Tensor` of type `resource`. Handle to a Reader.
		  queue_handle: A `Tensor` of type `resource`.
		    Handle to a Queue, with string work items.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (key, value).
		
		  key: A `Tensor` of type `string`.
		  value: A `Tensor` of type `string`.
	**/
	static public function reader_read_v2(reader_handle:Dynamic, queue_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reader_read_v2
	**/
	static public function reader_read_v2_eager_fallback(reader_handle:Dynamic, queue_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Restore a Reader to its initial clean state.
		
		Args:
		  reader_handle: A `Tensor` of type mutable `string`. Handle to a Reader.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function reader_reset(reader_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Restore a Reader to its initial clean state.
		
		Args:
		  reader_handle: A `Tensor` of type `resource`. Handle to a Reader.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function reader_reset_v2(reader_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reader_reset_v2
	**/
	static public function reader_reset_v2_eager_fallback(reader_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Restore a reader to a previously saved state.
		
		Not all Readers support being restored, so this can produce an
		Unimplemented error.
		
		Args:
		  reader_handle: A `Tensor` of type mutable `string`. Handle to a Reader.
		  state: A `Tensor` of type `string`.
		    Result of a ReaderSerializeState of a Reader with type
		    matching reader_handle.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function reader_restore_state(reader_handle:Dynamic, state:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Restore a reader to a previously saved state.
		
		Not all Readers support being restored, so this can produce an
		Unimplemented error.
		
		Args:
		  reader_handle: A `Tensor` of type `resource`. Handle to a Reader.
		  state: A `Tensor` of type `string`.
		    Result of a ReaderSerializeState of a Reader with type
		    matching reader_handle.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function reader_restore_state_v2(reader_handle:Dynamic, state:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reader_restore_state_v2
	**/
	static public function reader_restore_state_v2_eager_fallback(reader_handle:Dynamic, state:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Produce a string tensor that encodes the state of a Reader.
		
		Not all Readers support being serialized, so this can produce an
		Unimplemented error.
		
		Args:
		  reader_handle: A `Tensor` of type mutable `string`. Handle to a Reader.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function reader_serialize_state(reader_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Produce a string tensor that encodes the state of a Reader.
		
		Not all Readers support being serialized, so this can produce an
		Unimplemented error.
		
		Args:
		  reader_handle: A `Tensor` of type `resource`. Handle to a Reader.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function reader_serialize_state_v2(reader_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reader_serialize_state_v2
	**/
	static public function reader_serialize_state_v2_eager_fallback(reader_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the real part of a complex (or real) tensor.
		
		Given a tensor `input`, this operation returns a tensor of type `float` that
		is the real part of each element in `input` considered as a complex number.
		
		For example:
		
		```python
		x = tf.constant([-2.25 + 4.75j, 3.25 + 5.75j])
		tf.real(x)  # [-2.25, 3.25]
		```
		
		If `input` is already real, it is returned unchanged.
		
		Args:
		  input: A `Tensor`. Must have numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32` or `float64`.
	**/
	static public function real(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x / y element-wise for real types.
		
		If `x` and `y` are reals, this will return the floating-point division.
		
		*NOTE*: `Div` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function real_div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function real_div
	**/
	static public function real_div_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function real
	**/
	static public function real_eager_fallback(input:Dynamic, ?Tout:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns x / y element-wise for real types.
		
		If `x` and `y` are reals, this will return the floating-point division.
		
		*NOTE*: `Div` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function realdiv(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the reciprocal of x element-wise.
		
		I.e., \\(y = 1 / x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function reciprocal(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reciprocal
	**/
	static public function reciprocal_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the gradient for the inverse of `x` wrt its input.
		
		Specifically, `grad = -dy * y*y`, where `y = 1/x`, and `dy`
		is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function reciprocal_grad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reciprocal_grad
	**/
	static public function reciprocal_grad_eager_fallback(y:Dynamic, dy:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Emits randomized records.
		
		Args:
		  file_pattern: A `string`. Glob pattern for the data files.
		  file_random_seed: An optional `int`. Defaults to `301`.
		    Random seeds used to produce randomized records.
		  file_shuffle_shift_ratio: An optional `float`. Defaults to `0`.
		    Shifts the list of files after the list is randomly
		    shuffled.
		  file_buffer_size: An optional `int`. Defaults to `10000`.
		    The randomization shuffling buffer.
		  file_parallelism: An optional `int`. Defaults to `16`.
		    How many sstables are opened and concurrently iterated over.
		  batch_size: An optional `int`. Defaults to `32`. The batch size.
		  compression_type: An optional `string`. Defaults to `""`.
		    The type of compression for the file. Currently ZLIB and
		    GZIP are supported. Defaults to none.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function record_input(file_pattern:Dynamic, ?file_random_seed:Dynamic, ?file_shuffle_shift_ratio:Dynamic, ?file_buffer_size:Dynamic, ?file_parallelism:Dynamic, ?batch_size:Dynamic, ?compression_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function record_input
	**/
	static public function record_input_eager_fallback(file_pattern:Dynamic, ?file_random_seed:Dynamic, ?file_shuffle_shift_ratio:Dynamic, ?file_buffer_size:Dynamic, ?file_parallelism:Dynamic, ?batch_size:Dynamic, ?compression_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the "logical and" of elements across dimensions of a tensor. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		```python
		x = tf.constant([[True,  True], [False, False]])
		tf.reduce_all(x)  # False
		tf.reduce_all(x, 0)  # [False, False]
		tf.reduce_all(x, 1)  # [True, False]
		```
		
		Args:
		  input_tensor: The boolean tensor to reduce.
		  axis: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions. Must be in the range
		    `[-rank(input_tensor), rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
		
		@compatibility(numpy)
		Equivalent to np.all
		@end_compatibility
	**/
	static public function reduce_all(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the "logical or" of elements across dimensions of a tensor. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		```python
		x = tf.constant([[True,  True], [False, False]])
		tf.reduce_any(x)  # True
		tf.reduce_any(x, 0)  # [True, True]
		tf.reduce_any(x, 1)  # [True, False]
		```
		
		Args:
		  input_tensor: The boolean tensor to reduce.
		  axis: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions. Must be in the range
		    `[-rank(input_tensor), rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
		
		@compatibility(numpy)
		Equivalent to np.any
		@end_compatibility
	**/
	static public function reduce_any(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Joins a string Tensor across the given dimensions.
		
		Computes the string join across dimensions in the given string Tensor of shape
		`[\\(d_0, d_1, ..., d_{n-1}\\)]`.  Returns a new Tensor created by joining the input
		strings with the given separator (default: empty string).  Negative indices are
		counted backwards from the end, with `-1` being equivalent to `n - 1`.  If
		indices are not specified, joins across all dimensions beginning from `n - 1`
		through `0`.
		
		For example:
		
		```python
		# tensor `a` is [["a", "b"], ["c", "d"]]
		tf.strings.reduce_join(a, 0) ==> ["ac", "bd"]
		tf.strings.reduce_join(a, 1) ==> ["ab", "cd"]
		tf.strings.reduce_join(a, -2) = tf.strings.reduce_join(a, 0) ==> ["ac", "bd"]
		tf.strings.reduce_join(a, -1) = tf.strings.reduce_join(a, 1) ==> ["ab", "cd"]
		tf.strings.reduce_join(a, 0, keep_dims=True) ==> [["ac", "bd"]]
		tf.strings.reduce_join(a, 1, keep_dims=True) ==> [["ab"], ["cd"]]
		tf.strings.reduce_join(a, 0, separator=".") ==> ["a.c", "b.d"]
		tf.strings.reduce_join(a, [0, 1]) ==> "acbd"
		tf.strings.reduce_join(a, [1, 0]) ==> "abcd"
		tf.strings.reduce_join(a, []) ==> [["a", "b"], ["c", "d"]]
		tf.strings.reduce_join(a) = tf.strings.reduce_join(a, [1, 0]) ==> "abcd"
		```
		
		Args:
		  inputs: A `Tensor` of type `string`.
		    The input to be joined.  All reduced indices must have non-zero size.
		  axis: A `Tensor` of type `int32`.
		    The dimensions to reduce over.  Dimensions are reduced in the
		    order specified.  Omitting `axis` is equivalent to passing
		    `[n-1, n-2, ..., 0]`.  Negative indices from `-n` to `-1` are supported.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If `True`, retain reduced dimensions with length `1`.
		  separator: An optional `string`. Defaults to `""`.
		    The separator to use when joining.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function reduce_join(inputs:Dynamic, ?axis:Dynamic, ?keep_dims:Dynamic, ?separator:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reduce_join
	**/
	static public function reduce_join_eager_fallback(inputs:Dynamic, reduction_indices:Dynamic, ?keep_dims:Dynamic, ?separator:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes log(sum(exp(elements across dimensions of a tensor))). (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` has no entries, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		This function is more numerically stable than log(sum(exp(input))). It avoids
		overflows caused by taking the exp of large inputs and underflows caused by
		taking the log of small inputs.
		
		For example:
		
		```python
		x = tf.constant([[0., 0., 0.], [0., 0., 0.]])
		tf.reduce_logsumexp(x)  # log(6)
		tf.reduce_logsumexp(x, 0)  # [log(2), log(2), log(2)]
		tf.reduce_logsumexp(x, 1)  # [log(3), log(3)]
		tf.reduce_logsumexp(x, 1, keepdims=True)  # [[log(3)], [log(3)]]
		tf.reduce_logsumexp(x, [0, 1])  # log(6)
		```
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions. Must be in the range
		    `[-rank(input_tensor), rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
	**/
	static public function reduce_logsumexp(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the maximum of elements across dimensions of a tensor. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		Args:
		  input_tensor: The tensor to reduce. Should have real numeric type.
		  axis: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions. Must be in the range
		    `[-rank(input_tensor), rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
		
		@compatibility(numpy)
		Equivalent to np.max
		@end_compatibility
	**/
	static public function reduce_max(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the mean of elements across dimensions of a tensor. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		```python
		x = tf.constant([[1., 1.], [2., 2.]])
		tf.reduce_mean(x)  # 1.5
		tf.reduce_mean(x, 0)  # [1.5, 1.5]
		tf.reduce_mean(x, 1)  # [1.,  2.]
		```
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions. Must be in the range
		    `[-rank(input_tensor), rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
		
		@compatibility(numpy)
		Equivalent to np.mean
		
		Please note that `np.mean` has a `dtype` parameter that could be used to
		specify the output type. By default this is `dtype=float64`. On the other
		hand, `tf.reduce_mean` has an aggressive type inference from `input_tensor`,
		for example:
		
		```python
		x = tf.constant([1, 0, 1, 0])
		tf.reduce_mean(x)  # 0
		y = tf.constant([1., 0., 1., 0.])
		tf.reduce_mean(y)  # 0.5
		```
		
		@end_compatibility
	**/
	static public function reduce_mean(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the minimum of elements across dimensions of a tensor. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		Args:
		  input_tensor: The tensor to reduce. Should have real numeric type.
		  axis: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions. Must be in the range
		    `[-rank(input_tensor), rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
		
		@compatibility(numpy)
		Equivalent to np.min
		@end_compatibility
	**/
	static public function reduce_min(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the product of elements across dimensions of a tensor. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions. Must be in the range
		    `[-rank(input_tensor), rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
		
		@compatibility(numpy)
		Equivalent to np.prod
		@end_compatibility
	**/
	static public function reduce_prod(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the sum of elements across dimensions of a tensor. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		```python
		x = tf.constant([[1, 1, 1], [1, 1, 1]])
		tf.reduce_sum(x)  # 6
		tf.reduce_sum(x, 0)  # [2, 2, 2]
		tf.reduce_sum(x, 1)  # [3, 3]
		tf.reduce_sum(x, 1, keepdims=True)  # [[3], [3]]
		tf.reduce_sum(x, [0, 1])  # 6
		```
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions. Must be in the range
		    `[-rank(input_tensor), rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor, of the same dtype as the input_tensor.
		
		@compatibility(numpy)
		Equivalent to np.sum apart the fact that numpy upcast uint8 and int32 to
		int64 while tensorflow returns the same dtype as the input.
		@end_compatibility
	**/
	static public function reduce_sum(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Helper function for reduction ops.
		
		Args:
		  input_shape: 1-D Tensor, the shape of the Tensor being reduced.
		  axes: 1-D Tensor, the reduction axes.
		Returns:
		  A 1-D Tensor, the output shape as if keepdims were set to True.
	**/
	static public function reduced_shape(input_shape:Dynamic, axes:Dynamic):Dynamic;
	/**
		Return the same ref tensor as the input ref tensor.
		
		Args:
		  input: A mutable `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `input`.
	**/
	static public function ref_identity(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Check if the input matches the regex pattern.
		
		The input is a string tensor of any shape. The pattern is a scalar
		string tensor which is applied to every element of the input tensor.
		The boolean values (True or False) of the output tensor indicate
		if the input matches the regex pattern provided.
		
		The pattern follows the re2 syntax (https://github.com/google/re2/wiki/Syntax)
		
		Args:
		  input: A `Tensor` of type `string`.
		    A string tensor of the text to be processed.
		  pattern: A `Tensor` of type `string`.
		    A scalar string tensor containing the regular expression to match the input.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function regex_full_match(input:Dynamic, pattern:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function regex_full_match
	**/
	static public function regex_full_match_eager_fallback(input:Dynamic, pattern:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Replace elements of `source` matching regex `pattern` with `rewrite`.
		
		Args:
		  source: string `Tensor`, the source strings to process.
		  pattern: string or scalar string `Tensor`, regular expression to use,
		    see more details at https://github.com/google/re2/wiki/Syntax
		  rewrite: string or scalar string `Tensor`, value to use in match
		    replacement, supports backslash-escaped digits (\1 to \9) can be to insert
		    text matching corresponding parenthesized group.
		  replace_global: `bool`, if `True` replace all non-overlapping matches,
		    else replace only the first match.
		
		Returns:
		  string `Tensor` of the same shape as `source` with specified replacements.
	**/
	static public function regex_replace(source:Dynamic, pattern:Dynamic, rewrite:Dynamic, ?replace_global:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function regex_replace
	**/
	static public function regex_replace_eager_fallback(input:Dynamic, pattern:Dynamic, rewrite:Dynamic, ?replace_global:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Registers a function for converting objects of `base_type` to `Tensor`.
		
		The conversion function must have the following signature:
		
		```python
		    def conversion_func(value, dtype=None, name=None, as_ref=False):
		      # ...
		```
		
		It must return a `Tensor` with the given `dtype` if specified. If the
		conversion function creates a new `Tensor`, it should use the given
		`name` if specified. All exceptions will be propagated to the caller.
		
		The conversion function may return `NotImplemented` for some
		inputs. In this case, the conversion process will continue to try
		subsequent conversion functions.
		
		If `as_ref` is true, the function must return a `Tensor` reference,
		such as a `Variable`.
		
		NOTE: The conversion functions will execute in order of priority,
		followed by order of registration. To ensure that a conversion function
		`F` runs before another conversion function `G`, ensure that `F` is
		registered with a smaller priority than `G`.
		
		Args:
		  base_type: The base type or tuple of base types for all objects that
		    `conversion_func` accepts.
		  conversion_func: A function that converts instances of `base_type` to
		    `Tensor`.
		  priority: Optional integer that indicates the priority for applying this
		    conversion function. Conversion functions with smaller priority values
		    run earlier than conversion functions with larger priority values.
		    Defaults to 100.
		
		Raises:
		  TypeError: If the arguments do not have the appropriate type.
	**/
	static public function register_tensor_conversion_function(base_type:Dynamic, conversion_func:Dynamic, ?priority:Dynamic):Dynamic;
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
		Adds ops to list the names of uninitialized variables.
		
		When run, it returns a 1-D tensor containing the names of uninitialized
		variables if there are any, or an empty array if there are none.
		
		Args:
		  var_list: List of `Variable` objects to check. Defaults to the
		    value of `global_variables() + local_variables()`
		  name: Optional name of the `Operation`.
		
		Returns:
		  A 1-D tensor containing names of the uninitialized variables, or an empty
		  1-D tensor if there are no variables or no uninitialized variables.
		
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	static public function report_uninitialized_variables(?var_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Given a quantized tensor described by (input, input_min, input_max), outputs a
		
		range that covers the actual values present in that tensor.  This op is
		typically used to produce the requested_output_min and requested_output_max for
		Requantize.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  input_min: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  input_max: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_min, output_max).
		
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function requantization_range(input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function requantization_range
	**/
	static public function requantization_range_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Convert the quantized 'input' tensor into a lower-precision 'output', using the
		
		output range specified with 'requested_output_min' and 'requested_output_max'.
		
		[input_min, input_max] are scalar floats that specify the range for the float
		interpretation of the 'input' data. For example, if input_min is -1.0f and
		input_max is 1.0f, and we are dealing with quint16 quantized data, then a 0
		value in the 16-bit data should be interpreted as -1.0f, and a 65535 means 1.0f.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  input_min: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  input_max: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  requested_output_min: A `Tensor` of type `float32`.
		    The float value that the minimum quantized output value represents.
		  requested_output_max: A `Tensor` of type `float32`.
		    The float value that the maximum quantized output value represents.
		  out_type: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
		    The type of the output. Should be a lower bit depth than Tinput.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor` of type `out_type`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function requantize(input:Dynamic, input_min:Dynamic, input_max:Dynamic, requested_output_min:Dynamic, requested_output_max:Dynamic, out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function requantize
	**/
	static public function requantize_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, requested_output_min:Dynamic, requested_output_max:Dynamic, out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Calculate padding required to make block_shape divide input_shape.
		
		This function can be used to calculate a suitable paddings argument for use
		with space_to_batch_nd and batch_to_space_nd.
		
		Args:
		  input_shape: int32 Tensor of shape [N].
		  block_shape: int32 Tensor of shape [N].
		  base_paddings: Optional int32 Tensor of shape [N, 2].  Specifies the minimum
		    amount of padding to use.  All elements must be >= 0.  If not specified,
		    defaults to 0.
		  name: string.  Optional name prefix.
		
		Returns:
		  (paddings, crops), where:
		
		  `paddings` and `crops` are int32 Tensors of rank 2 and shape [N, 2]
		  satisfying:
		
		      paddings[i, 0] = base_paddings[i, 0].
		      0 <= paddings[i, 1] - base_paddings[i, 1] < block_shape[i]
		      (input_shape[i] + paddings[i, 0] + paddings[i, 1]) % block_shape[i] == 0
		
		      crops[i, 0] = 0
		      crops[i, 1] = paddings[i, 1] - base_paddings[i, 1]
		
		Raises: ValueError if called with incompatible shapes.
	**/
	static public function required_space_to_batch_paddings(input_shape:Dynamic, block_shape:Dynamic, ?base_paddings:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clears the default graph stack and resets the global default graph.
		
		NOTE: The default graph is a property of the current thread. This
		function applies only to the current thread.  Calling this function while
		a `tf.Session` or `tf.InteractiveSession` is active will result in undefined
		behavior. Using any previously created `tf.Operation` or `tf.Tensor` objects
		after calling this function will result in undefined behavior.
		Raises:
		  AssertionError: If this function is called within a nested graph.
	**/
	static public function reset_default_graph():Dynamic;
	/**
		Reshapes a tensor.
		
		Given `tensor`, this operation returns a tensor that has the same values
		as `tensor` with shape `shape`.
		
		If one component of `shape` is the special value -1, the size of that dimension
		is computed so that the total size remains constant.  In particular, a `shape`
		of `[-1]` flattens into 1-D.  At most one component of `shape` can be -1.
		
		If `shape` is 1-D or higher, then the operation returns a tensor with shape
		`shape` filled with the values of `tensor`. In this case, the number of elements
		implied by `shape` must be the same as the number of elements in `tensor`.
		
		For example:
		
		```
		# tensor 't' is [1, 2, 3, 4, 5, 6, 7, 8, 9]
		# tensor 't' has shape [9]
		reshape(t, [3, 3]) ==> [[1, 2, 3],
		                        [4, 5, 6],
		                        [7, 8, 9]]
		
		# tensor 't' is [[[1, 1], [2, 2]],
		#                [[3, 3], [4, 4]]]
		# tensor 't' has shape [2, 2, 2]
		reshape(t, [2, 4]) ==> [[1, 1, 2, 2],
		                        [3, 3, 4, 4]]
		
		# tensor 't' is [[[1, 1, 1],
		#                 [2, 2, 2]],
		#                [[3, 3, 3],
		#                 [4, 4, 4]],
		#                [[5, 5, 5],
		#                 [6, 6, 6]]]
		# tensor 't' has shape [3, 2, 3]
		# pass '[-1]' to flatten 't'
		reshape(t, [-1]) ==> [1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6]
		
		# -1 can also be used to infer the shape
		
		# -1 is inferred to be 9:
		reshape(t, [2, -1]) ==> [[1, 1, 1, 2, 2, 2, 3, 3, 3],
		                         [4, 4, 4, 5, 5, 5, 6, 6, 6]]
		# -1 is inferred to be 2:
		reshape(t, [-1, 9]) ==> [[1, 1, 1, 2, 2, 2, 3, 3, 3],
		                         [4, 4, 4, 5, 5, 5, 6, 6, 6]]
		# -1 is inferred to be 3:
		reshape(t, [ 2, -1, 3]) ==> [[[1, 1, 1],
		                              [2, 2, 2],
		                              [3, 3, 3]],
		                             [[4, 4, 4],
		                              [5, 5, 5],
		                              [6, 6, 6]]]
		
		# tensor 't' is [7]
		# shape `[]` reshapes to a scalar
		reshape(t, []) ==> 7
		```
		
		Args:
		  tensor: A `Tensor`.
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Defines the shape of the output tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function reshape(tensor:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reshape
	**/
	static public function reshape_eager_fallback(tensor:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var resource : Dynamic;
	static public var resource_ref : Dynamic;
	/**
		Assign `value` to the sliced l-value reference of `ref`.
		
		The values of `value` are assigned to the positions in the variable
		`ref` that are selected by the slice parameters. The slice parameters
		`begin, `end`, `strides`, etc. work exactly as in `StridedSlice`.
		
		NOTE this op currently does not support broadcasting and so `value`'s
		shape must be exactly the shape produced by the slice of `ref`.
		
		Args:
		  ref: A `Tensor` of type `resource`.
		  begin: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  end: A `Tensor`. Must have the same type as `begin`.
		  strides: A `Tensor`. Must have the same type as `begin`.
		  value: A `Tensor`.
		  begin_mask: An optional `int`. Defaults to `0`.
		  end_mask: An optional `int`. Defaults to `0`.
		  ellipsis_mask: An optional `int`. Defaults to `0`.
		  new_axis_mask: An optional `int`. Defaults to `0`.
		  shrink_axis_mask: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_strided_slice_assign(ref:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, value:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_strided_slice_assign
	**/
	static public function resource_strided_slice_assign_eager_fallback(ref:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, value:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Restores a tensor from checkpoint files.
		
		Reads a tensor stored in one or several files. If there are several files (for
		instance because a tensor was saved as slices), `file_pattern` may contain
		wildcard symbols (`*` and `?`) in the filename portion only, not in the
		directory portion.
		
		If a `file_pattern` matches several files, `preferred_shard` can be used to hint
		in which file the requested tensor is likely to be found. This op will first
		open the file at index `preferred_shard` in the list of matching files and try
		to restore tensors from that file.  Only if some tensors or tensor slices are
		not found in that first file, then the Op opens all the files. Setting
		`preferred_shard` to match the value passed as the `shard` input
		of a matching `Save` Op may speed up Restore.  This attribute only affects
		performance, not correctness.  The default value -1 means files are processed in
		order.
		
		See also `RestoreSlice`.
		
		Args:
		  file_pattern: A `Tensor` of type `string`.
		    Must have a single element. The pattern of the files from
		    which we read the tensor.
		  tensor_name: A `Tensor` of type `string`.
		    Must have a single element. The name of the tensor to be
		    restored.
		  dt: A `tf.DType`. The type of the tensor to be restored.
		  preferred_shard: An optional `int`. Defaults to `-1`.
		    Index of file to open first if multiple files match
		    `file_pattern`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dt`.
	**/
	static public function restore(file_pattern:Dynamic, tensor_name:Dynamic, dt:Dynamic, ?preferred_shard:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function restore
	**/
	static public function restore_eager_fallback(file_pattern:Dynamic, tensor_name:Dynamic, dt:Dynamic, ?preferred_shard:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Restores a tensor from checkpoint files.
		
		This is like `Restore` except that restored tensor can be listed as filling
		only a slice of a larger tensor.  `shape_and_slice` specifies the shape of the
		larger tensor and the slice that the restored tensor covers.
		
		The `shape_and_slice` input has the same format as the
		elements of the `shapes_and_slices` input of the `SaveSlices` op.
		
		Args:
		  file_pattern: A `Tensor` of type `string`.
		    Must have a single element. The pattern of the files from
		    which we read the tensor.
		  tensor_name: A `Tensor` of type `string`.
		    Must have a single element. The name of the tensor to be
		    restored.
		  shape_and_slice: A `Tensor` of type `string`.
		    Scalar. The shapes and slice specifications to use when
		    restoring a tensors.
		  dt: A `tf.DType`. The type of the tensor to be restored.
		  preferred_shard: An optional `int`. Defaults to `-1`.
		    Index of file to open first if multiple files match
		    `file_pattern`. See the documentation for `Restore`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dt`.
	**/
	static public function restore_slice(file_pattern:Dynamic, tensor_name:Dynamic, shape_and_slice:Dynamic, dt:Dynamic, ?preferred_shard:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function restore_slice
	**/
	static public function restore_slice_eager_fallback(file_pattern:Dynamic, tensor_name:Dynamic, shape_and_slice:Dynamic, dt:Dynamic, ?preferred_shard:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Restores tensors from a V2 checkpoint.
		
		For backward compatibility with the V1 format, this Op currently allows
		restoring from a V1 checkpoint as well:
		  - This Op first attempts to find the V2 index file pointed to by "prefix", and
		    if found proceed to read it as a V2 checkpoint;
		  - Otherwise the V1 read path is invoked.
		Relying on this behavior is not recommended, as the ability to fall back to read
		V1 might be deprecated and eventually removed.
		
		By default, restores the named tensors in full.  If the caller wishes to restore
		specific slices of stored tensors, "shape_and_slices" should be non-empty
		strings and correspondingly well-formed.
		
		Callers must ensure all the named tensors are indeed stored in the checkpoint.
		
		Args:
		  prefix: A `Tensor` of type `string`.
		    Must have a single element.  The prefix of a V2 checkpoint.
		  tensor_names: A `Tensor` of type `string`.
		    shape {N}.  The names of the tensors to be restored.
		  shape_and_slices: A `Tensor` of type `string`.
		    shape {N}.  The slice specs of the tensors to be restored.
		    Empty strings indicate that they are non-partitioned tensors.
		  dtypes: A list of `tf.DTypes` that has length `>= 1`.
		    shape {N}.  The list of expected dtype for the tensors.  Must match
		    those stored in the checkpoint.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `dtypes`.
	**/
	static public function restore_v2(prefix:Dynamic, tensor_names:Dynamic, shape_and_slices:Dynamic, dtypes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function restore_v2
	**/
	static public function restore_v2_eager_fallback(prefix:Dynamic, tensor_names:Dynamic, shape_and_slices:Dynamic, dtypes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Reverses specific dimensions of a tensor.
		
		NOTE `tf.reverse` has now changed behavior in preparation for 1.0.
		`tf.reverse_v2` is currently an alias that will be deprecated before TF 1.0.
		
		Given a `tensor`, and a `int32` tensor `axis` representing the set of
		dimensions of `tensor` to reverse. This operation reverses each dimension
		`i` for which there exists `j` s.t. `axis[j] == i`.
		
		`tensor` can have up to 8 dimensions. The number of dimensions specified
		in `axis` may be 0 or more entries. If an index is specified more than
		once, a InvalidArgument error is raised.
		
		For example:
		
		```
		# tensor 't' is [[[[ 0,  1,  2,  3],
		#                  [ 4,  5,  6,  7],
		#                  [ 8,  9, 10, 11]],
		#                 [[12, 13, 14, 15],
		#                  [16, 17, 18, 19],
		#                  [20, 21, 22, 23]]]]
		# tensor 't' shape is [1, 2, 3, 4]
		
		# 'dims' is [3] or 'dims' is [-1]
		reverse(t, dims) ==> [[[[ 3,  2,  1,  0],
		                        [ 7,  6,  5,  4],
		                        [ 11, 10, 9, 8]],
		                       [[15, 14, 13, 12],
		                        [19, 18, 17, 16],
		                        [23, 22, 21, 20]]]]
		
		# 'dims' is '[1]' (or 'dims' is '[-3]')
		reverse(t, dims) ==> [[[[12, 13, 14, 15],
		                        [16, 17, 18, 19],
		                        [20, 21, 22, 23]
		                       [[ 0,  1,  2,  3],
		                        [ 4,  5,  6,  7],
		                        [ 8,  9, 10, 11]]]]
		
		# 'dims' is '[2]' (or 'dims' is '[-2]')
		reverse(t, dims) ==> [[[[8, 9, 10, 11],
		                        [4, 5, 6, 7],
		                        [0, 1, 2, 3]]
		                       [[20, 21, 22, 23],
		                        [16, 17, 18, 19],
		                        [12, 13, 14, 15]]]]
		```
		
		Args:
		  tensor: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `bool`, `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`, `string`.
		    Up to 8-D.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D. The indices of the dimensions to reverse. Must be in the range
		    `[-rank(tensor), rank(tensor))`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function reverse(tensor:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reverse
	**/
	static public function reverse_eager_fallback(tensor:Dynamic, dims:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Reverses variable length slices.
		
		This op first slices `input` along the dimension `batch_axis`, and for each
		slice `i`, reverses the first `seq_lengths[i]` elements along
		the dimension `seq_axis`.
		
		The elements of `seq_lengths` must obey `seq_lengths[i] <= input.dims[seq_dim]`,
		and `seq_lengths` must be a vector of length `input.dims[batch_dim]`.
		
		The output slice `i` along dimension `batch_axis` is then given by input
		slice `i`, with the first `seq_lengths[i]` slices along dimension
		`seq_axis` reversed.
		
		For example:
		
		```
		# Given this:
		batch_dim = 0
		seq_dim = 1
		input.dims = (4, 8, ...)
		seq_lengths = [7, 2, 3, 5]
		
		# then slices of input are reversed on seq_dim, but only up to seq_lengths:
		output[0, 0:7, :, ...] = input[0, 7:0:-1, :, ...]
		output[1, 0:2, :, ...] = input[1, 2:0:-1, :, ...]
		output[2, 0:3, :, ...] = input[2, 3:0:-1, :, ...]
		output[3, 0:5, :, ...] = input[3, 5:0:-1, :, ...]
		
		# while entries past seq_lens are copied through:
		output[0, 7:, :, ...] = input[0, 7:, :, ...]
		output[1, 2:, :, ...] = input[1, 2:, :, ...]
		output[2, 3:, :, ...] = input[2, 3:, :, ...]
		output[3, 2:, :, ...] = input[3, 2:, :, ...]
		```
		
		In contrast, if:
		
		```
		# Given this:
		batch_dim = 2
		seq_dim = 0
		input.dims = (8, ?, 4, ...)
		seq_lengths = [7, 2, 3, 5]
		
		# then slices of input are reversed on seq_dim, but only up to seq_lengths:
		output[0:7, :, 0, :, ...] = input[7:0:-1, :, 0, :, ...]
		output[0:2, :, 1, :, ...] = input[2:0:-1, :, 1, :, ...]
		output[0:3, :, 2, :, ...] = input[3:0:-1, :, 2, :, ...]
		output[0:5, :, 3, :, ...] = input[5:0:-1, :, 3, :, ...]
		
		# while entries past seq_lens are copied through:
		output[7:, :, 0, :, ...] = input[7:, :, 0, :, ...]
		output[2:, :, 1, :, ...] = input[2:, :, 1, :, ...]
		output[3:, :, 2, :, ...] = input[3:, :, 2, :, ...]
		output[2:, :, 3, :, ...] = input[2:, :, 3, :, ...]
		```
		
		Args:
		  input: A `Tensor`. The input to reverse.
		  seq_lengths: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D with length `input.dims(batch_dim)` and
		    `max(seq_lengths) <= input.dims(seq_dim)`
		  seq_axis: An `int`. The dimension which is partially reversed.
		  batch_axis: An optional `int`. Defaults to `0`.
		    The dimension along which reversal is performed.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function reverse_sequence(input:Dynamic, seq_lengths:Dynamic, ?seq_axis:Dynamic, ?batch_axis:Dynamic, ?name:Dynamic, ?seq_dim:Dynamic, ?batch_dim:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reverse_sequence
	**/
	static public function reverse_sequence_eager_fallback(input:Dynamic, seq_lengths:Dynamic, seq_dim:Dynamic, ?batch_dim:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Reverses specific dimensions of a tensor.
		
		NOTE `tf.reverse` has now changed behavior in preparation for 1.0.
		`tf.reverse_v2` is currently an alias that will be deprecated before TF 1.0.
		
		Given a `tensor`, and a `int32` tensor `axis` representing the set of
		dimensions of `tensor` to reverse. This operation reverses each dimension
		`i` for which there exists `j` s.t. `axis[j] == i`.
		
		`tensor` can have up to 8 dimensions. The number of dimensions specified
		in `axis` may be 0 or more entries. If an index is specified more than
		once, a InvalidArgument error is raised.
		
		For example:
		
		```
		# tensor 't' is [[[[ 0,  1,  2,  3],
		#                  [ 4,  5,  6,  7],
		#                  [ 8,  9, 10, 11]],
		#                 [[12, 13, 14, 15],
		#                  [16, 17, 18, 19],
		#                  [20, 21, 22, 23]]]]
		# tensor 't' shape is [1, 2, 3, 4]
		
		# 'dims' is [3] or 'dims' is [-1]
		reverse(t, dims) ==> [[[[ 3,  2,  1,  0],
		                        [ 7,  6,  5,  4],
		                        [ 11, 10, 9, 8]],
		                       [[15, 14, 13, 12],
		                        [19, 18, 17, 16],
		                        [23, 22, 21, 20]]]]
		
		# 'dims' is '[1]' (or 'dims' is '[-3]')
		reverse(t, dims) ==> [[[[12, 13, 14, 15],
		                        [16, 17, 18, 19],
		                        [20, 21, 22, 23]
		                       [[ 0,  1,  2,  3],
		                        [ 4,  5,  6,  7],
		                        [ 8,  9, 10, 11]]]]
		
		# 'dims' is '[2]' (or 'dims' is '[-2]')
		reverse(t, dims) ==> [[[[8, 9, 10, 11],
		                        [4, 5, 6, 7],
		                        [0, 1, 2, 3]]
		                       [[20, 21, 22, 23],
		                        [16, 17, 18, 19],
		                        [12, 13, 14, 15]]]]
		```
		
		Args:
		  tensor: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `bool`, `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`, `string`.
		    Up to 8-D.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D. The indices of the dimensions to reverse. Must be in the range
		    `[-rank(tensor), rank(tensor))`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function reverse_v2(tensor:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reverse_v2
	**/
	static public function reverse_v2_eager_fallback(tensor:Dynamic, axis:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns element-wise integer closest to x.
		
		If the result is midway between two representable values,
		the even representable is chosen.
		For example:
		
		```
		rint(-1.5) ==> -2.0
		rint(0.5000001) ==> 1.0
		rint([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0]) ==> [-2., -2., -0., 0., 2., 2., 2.]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function rint(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function rint
	**/
	static public function rint_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Rolls the elements of a tensor along an axis.
		
		The elements are shifted positively (towards larger indices) by the offset of
		`shift` along the dimension of `axis`. Negative `shift` values will shift
		elements in the opposite direction. Elements that roll passed the last position
		will wrap around to the first and vice versa. Multiple shifts along multiple
		axes may be specified.
		
		For example:
		
		```
		# 't' is [0, 1, 2, 3, 4]
		roll(t, shift=2, axis=0) ==> [3, 4, 0, 1, 2]
		
		# shifting along multiple dimensions
		# 't' is [[0, 1, 2, 3, 4], [5, 6, 7, 8, 9]]
		roll(t, shift=[1, -2], axis=[0, 1]) ==> [[7, 8, 9, 5, 6], [2, 3, 4, 0, 1]]
		
		# shifting along the same axis multiple times
		# 't' is [[0, 1, 2, 3, 4], [5, 6, 7, 8, 9]]
		roll(t, shift=[2, -3], axis=[1, 1]) ==> [[1, 2, 3, 4, 0], [6, 7, 8, 9, 5]]
		```
		
		Args:
		  input: A `Tensor`.
		  shift: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Dimension must be 0-D or 1-D. `shift[i]` specifies the number of places by which
		    elements are shifted positively (towards larger indices) along the dimension
		    specified by `axis[i]`. Negative shifts will roll the elements in the opposite
		    direction.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Dimension must be 0-D or 1-D. `axis[i]` specifies the dimension that the shift
		    `shift[i]` should occur. If the same axis is referenced more than once, the
		    total shift for that axis will be the sum of all the shifts that belong to that
		    axis.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function roll(input:Dynamic, shift:Dynamic, axis:Dynamic):Dynamic;
	/**
		Rounds the values of a tensor to the nearest integer, element-wise.
		
		Rounds half to even.  Also known as bankers rounding. If you want to round
		according to the current system rounding mode use tf::cint.
		For example:
		
		```python
		x = tf.constant([0.9, 2.5, 2.3, 1.5, -4.5])
		tf.round(x)  # [ 1.0, 2.0, 2.0, 2.0, -4.0 ]
		```
		
		Args:
		  x: A `Tensor` of type `float16`, `float32`, `float64`, `int32`, or `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of same shape and type as `x`.
	**/
	static public function round(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function round
	**/
	static public function round_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes reciprocal of square root of x element-wise.
		
		I.e., \\(y = 1 / \sqrt{x}\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function rsqrt(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function rsqrt
	**/
	static public function rsqrt_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the gradient for the rsqrt of `x` wrt its input.
		
		Specifically, `grad = dy * -0.5 * y^3`, where `y = rsqrt(x)`, and `dy`
		is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function rsqrt_grad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function rsqrt_grad
	**/
	static public function rsqrt_grad_eager_fallback(y:Dynamic, dy:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Performs a safe saturating cast of `value` to `dtype`.
		
		This function casts the input to `dtype` without applying any scaling.  If
		there is a danger that values would over or underflow in the cast, this op
		applies the appropriate clamping before the cast.
		
		Args:
		  value: A `Tensor`.
		  dtype: The desired output `DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  `value` safely cast to `dtype`.
	**/
	static public function saturate_cast(value:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Saves the input tensors to disk.
		
		The size of `tensor_names` must match the number of tensors in `data`. `data[i]`
		is written to `filename` with name `tensor_names[i]`.
		
		See also `SaveSlices`.
		
		Args:
		  filename: A `Tensor` of type `string`.
		    Must have a single element. The name of the file to which we write
		    the tensor.
		  tensor_names: A `Tensor` of type `string`.
		    Shape `[N]`. The names of the tensors to be saved.
		  data: A list of `Tensor` objects. `N` tensors to save.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function save(filename:Dynamic, tensor_names:Dynamic, data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function save
	**/
	static public function save_eager_fallback(filename:Dynamic, tensor_names:Dynamic, data:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Saves input tensors slices to disk.
		
		This is like `Save` except that tensors can be listed in the saved file as being
		a slice of a larger tensor.  `shapes_and_slices` specifies the shape of the
		larger tensor and the slice that this tensor covers. `shapes_and_slices` must
		have as many elements as `tensor_names`.
		
		Elements of the `shapes_and_slices` input must either be:
		
		*  The empty string, in which case the corresponding tensor is
		   saved normally.
		*  A string of the form `dim0 dim1 ... dimN-1 slice-spec` where the
		   `dimI` are the dimensions of the larger tensor and `slice-spec`
		   specifies what part is covered by the tensor to save.
		
		`slice-spec` itself is a `:`-separated list: `slice0:slice1:...:sliceN-1`
		where each `sliceI` is either:
		
		*  The string `-` meaning that the slice covers all indices of this dimension
		*  `start,length` where `start` and `length` are integers.  In that
		   case the slice covers `length` indices starting at `start`.
		
		See also `Save`.
		
		Args:
		  filename: A `Tensor` of type `string`.
		    Must have a single element. The name of the file to which we write the
		    tensor.
		  tensor_names: A `Tensor` of type `string`.
		    Shape `[N]`. The names of the tensors to be saved.
		  shapes_and_slices: A `Tensor` of type `string`.
		    Shape `[N]`.  The shapes and slice specifications to use when
		    saving the tensors.
		  data: A list of `Tensor` objects. `N` tensors to save.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function save_slices(filename:Dynamic, tensor_names:Dynamic, shapes_and_slices:Dynamic, data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function save_slices
	**/
	static public function save_slices_eager_fallback(filename:Dynamic, tensor_names:Dynamic, shapes_and_slices:Dynamic, data:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Saves tensors in V2 checkpoint format.
		
		By default, saves the named tensors in full.  If the caller wishes to save
		specific slices of full tensors, "shape_and_slices" should be non-empty strings
		and correspondingly well-formed.
		
		Args:
		  prefix: A `Tensor` of type `string`.
		    Must have a single element. The prefix of the V2 checkpoint to which we
		    write the tensors.
		  tensor_names: A `Tensor` of type `string`.
		    shape {N}. The names of the tensors to be saved.
		  shape_and_slices: A `Tensor` of type `string`.
		    shape {N}.  The slice specs of the tensors to be saved.
		    Empty strings indicate that they are non-partitioned tensors.
		  tensors: A list of `Tensor` objects. `N` tensors to save.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function save_v2(prefix:Dynamic, tensor_names:Dynamic, shape_and_slices:Dynamic, tensors:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function save_v2
	**/
	static public function save_v2_eager_fallback(prefix:Dynamic, tensor_names:Dynamic, shape_and_slices:Dynamic, tensors:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Multiplies a scalar times a `Tensor` or `IndexedSlices` object.
		
		Intended for use in gradient code which might deal with `IndexedSlices`
		objects, which are easy to multiply by a scalar but more expensive to
		multiply with arbitrary tensors.
		
		Args:
		  scalar: A 0-D scalar `Tensor`. Must have known shape.
		  x: A `Tensor` or `IndexedSlices` to be scaled.
		
		Returns:
		  `scalar * x` of the same type (`Tensor` or `IndexedSlices`) as `x`.
		
		Raises:
		  ValueError: if scalar is not a 0-D `scalar`.
	**/
	static public function scalar_mul(scalar:Dynamic, x:Dynamic):Dynamic;
	/**
		scan on the list of tensors unpacked from `elems` on dimension 0.
		
		The simplest version of `scan` repeatedly applies the callable `fn` to a
		sequence of elements from first to last. The elements are made of the tensors
		unpacked from `elems` on dimension 0. The callable fn takes two tensors as
		arguments. The first argument is the accumulated value computed from the
		preceding invocation of fn. If `initializer` is None, `elems` must contain
		at least one element, and its first element is used as the initializer.
		
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
		  fn: The callable to be performed.  It accepts two arguments.  The first
		    will have the same structure as `initializer` if one is provided,
		    otherwise it will have the same structure as `elems`.  The second
		    will have the same (possibly nested) structure as `elems`.  Its output
		    must have the same structure as `initializer` if one is provided,
		    otherwise it must have the same structure as `elems`.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which
		    will be unpacked along their first dimension.  The nested sequence
		    of the resulting slices will be the first argument to `fn`.
		  initializer: (optional) A tensor or (possibly nested) sequence of tensors,
		    initial value for the accumulator, and the expected output type of `fn`.
		  parallel_iterations: (optional) The number of iterations allowed to run
		    in parallel.
		  back_prop: (optional) True enables support for back propagation.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  infer_shape: (optional) False disables tests for consistent output shapes.
		  reverse: (optional) True scans the tensor last to first (instead of first
		    to last).
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
		  # sum == [22, 21, 18, 15, 11, 6]
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
		Adds sparse updates to the variable referenced by `resource`.
		
		This operation computes
		
		```python
		    # Scalar indices
		    ref[indices, ...] += updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] += updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] += updates[i, ..., j, ...]
		```
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the updated value.
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions add.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src='https://www.tensorflow.org/images/ScatterAdd.png' alt>
		</div>
		
		Args:
		  ref: A `Variable`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to store in `ref`.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the assignment will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as `ref`.  Returned as a convenience for operations that want
		  to use the updated values after the update is done.
	**/
	static public function scatter_add(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Divides a variable reference by sparse updates.
		
		This operation computes
		
		```python
		    # Scalar indices
		    ref[indices, ...] /= updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] /= updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] /= updates[i, ..., j, ...]
		```
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions divide.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of values that `ref` is divided by.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the operation will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function scatter_div(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reduces sparse updates into a variable reference using the `max` operation.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] = max(ref[indices, ...], updates[...])
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] = max(ref[indices[i], ...], updates[i, ...])
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] = max(ref[indices[i, ..., j], ...], updates[i, ..., j, ...])
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions combine.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterAdd.png" alt>
		</div>
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`, `int32`, `int64`.
		    Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to reduce into `ref`.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the update will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function scatter_max(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reduces sparse updates into a variable reference using the `min` operation.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] = min(ref[indices, ...], updates[...])
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] = min(ref[indices[i], ...], updates[i, ...])
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] = min(ref[indices[i, ..., j], ...], updates[i, ..., j, ...])
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions combine.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterAdd.png" alt>
		</div>
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`, `int32`, `int64`.
		    Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to reduce into `ref`.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the update will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function scatter_min(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies sparse updates into a variable reference.
		
		This operation computes
		
		```python
		    # Scalar indices
		    ref[indices, ...] *= updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] *= updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] *= updates[i, ..., j, ...]
		```
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions multiply.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to multiply to `ref`.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the operation will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function scatter_mul(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Scatter `updates` into a new tensor according to `indices`.
		
		Creates a new tensor by applying sparse `updates` to individual values or
		slices within a tensor (initially zero for numeric, empty for string) of
		the given `shape` according to indices.  This operator is the inverse of the
		`tf.gather_nd` operator which extracts values or slices from a given tensor.
		
		If `indices` contains duplicates, then their updates are accumulated (summed).
		
		**WARNING**: The order in which updates are applied is nondeterministic, so the
		output will be nondeterministic if `indices` contains duplicates -- because
		of some numerical approximation issues, numbers summed in different order
		may yield different results.
		
		`indices` is an integer tensor containing indices into a new tensor of shape
		`shape`.  The last dimension of `indices` can be at most the rank of `shape`:
		
		    indices.shape[-1] <= shape.rank
		
		The last dimension of `indices` corresponds to indices into elements
		(if `indices.shape[-1] = shape.rank`) or slices
		(if `indices.shape[-1] < shape.rank`) along dimension `indices.shape[-1]` of
		`shape`.  `updates` is a tensor with shape
		
		    indices.shape[:-1] + shape[indices.shape[-1]:]
		
		The simplest form of scatter is to insert individual elements in a tensor by
		index. For example, say we want to insert 4 scattered elements in a rank-1
		tensor with 8 elements.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterNd1.png" alt>
		</div>
		
		In Python, this scatter operation would look like this:
		
		```python
		    indices = tf.constant([[4], [3], [1], [7]])
		    updates = tf.constant([9, 10, 11, 12])
		    shape = tf.constant([8])
		    scatter = tf.scatter_nd(indices, updates, shape)
		    with tf.Session() as sess:
		      print(sess.run(scatter))
		```
		
		The resulting tensor would look like this:
		
		    [0, 11, 0, 10, 9, 0, 0, 12]
		
		We can also, insert entire slices of a higher rank tensor all at once. For
		example, if we wanted to insert two slices in the first dimension of a
		rank-3 tensor with two matrices of new values.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterNd2.png" alt>
		</div>
		
		In Python, this scatter operation would look like this:
		
		```python
		    indices = tf.constant([[0], [2]])
		    updates = tf.constant([[[5, 5, 5, 5], [6, 6, 6, 6],
		                            [7, 7, 7, 7], [8, 8, 8, 8]],
		                           [[5, 5, 5, 5], [6, 6, 6, 6],
		                            [7, 7, 7, 7], [8, 8, 8, 8]]])
		    shape = tf.constant([4, 4, 4])
		    scatter = tf.scatter_nd(indices, updates, shape)
		    with tf.Session() as sess:
		      print(sess.run(scatter))
		```
		
		The resulting tensor would look like this:
		
		    [[[5, 5, 5, 5], [6, 6, 6, 6], [7, 7, 7, 7], [8, 8, 8, 8]],
		     [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]],
		     [[5, 5, 5, 5], [6, 6, 6, 6], [7, 7, 7, 7], [8, 8, 8, 8]],
		     [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]]
		
		Note that on CPU, if an out of bound index is found, an error is returned.
		On GPU, if an out of bound index is found, the index is ignored.
		
		Args:
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor.
		  updates: A `Tensor`. Updates to scatter into output.
		  shape: A `Tensor`. Must have the same type as `indices`.
		    1-D. The shape of the resulting tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `updates`.
	**/
	static public function scatter_nd(indices:Dynamic, updates:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies sparse addition to individual values or slices in a Variable.
		
		`ref` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into `ref`.
		It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
		dimension of `ref`.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		```
		[d_0, ..., d_{Q-2}, ref.shape[K], ..., ref.shape[P-1]].
		```
		
		For example, say we want to add 4 scattered elements to a rank-1 tensor to
		8 elements. In Python, that update would look like this:
		
		```python
		    ref = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
		    indices = tf.constant([[4], [3], [1] ,[7]])
		    updates = tf.constant([9, 10, 11, 12])
		    add = tf.scatter_nd_add(ref, indices, updates)
		    with tf.Session() as sess:
		      print sess.run(add)
		```
		
		The resulting update to ref would look like this:
		
		    [1, 13, 3, 14, 14, 6, 7, 20]
		
		See `tf.scatter_nd` for more details about how to make updates to
		slices.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`,
		    `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`,
		    `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`,
		    `uint32`, `uint64`. A mutable Tensor. Should be from a Variable node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into ref.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to add to ref.
		  use_locking: An optional `bool`. Defaults to `False`.
		    An optional bool. Defaults to True. If True, the assignment will
		    be protected by a lock; otherwise the behavior is undefined,
		    but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function scatter_nd_add(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function scatter_nd
	**/
	static public function scatter_nd_eager_fallback(indices:Dynamic, updates:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Applies sparse addition to `input` using individual values or slices
		
		from `updates` according to indices `indices`.  The updates are non-aliasing:
		`input` is only modified in-place if no other operations will use it.
		Otherwise, a copy of `input` is made.  This operation has a gradient with
		respect to both `input` and `updates`.
		
		`input` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into `input`.
		It must be shape \\([d_0, ..., d_{Q-2}, K]\\) where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or `(P-K)`-dimensional slices
		(if `K < P`) along the `K`th dimension of `input`.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		$$[d_0, ..., d_{Q-2}, input.shape[K], ..., input.shape[P-1]].$$
		
		For example, say we want to add 4 scattered elements to a rank-1 tensor to 8
		elements. In Python, that addition would look like this:
		
		    input = tf.constant([1, 2, 3, 4, 5, 6, 7, 8])
		    indices = tf.constant([[4], [3], [1], [7]])
		    updates = tf.constant([9, 10, 11, 12])
		    output = tf.scatter_nd_non_aliasing_add(input, indices, updates)
		    with tf.Session() as sess:
		      print(sess.run(output))
		
		The resulting value `output` would look like this:
		
		    [1, 13, 3, 14, 14, 6, 7, 20]
		
		See `tf.scatter_nd` for more details about how to make updates to slices.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		    A Tensor.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A Tensor. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into `input`.
		  updates: A `Tensor`. Must have the same type as `input`.
		    A Tensor. Must have the same type as ref. A tensor of updated values
		    to add to `input`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function scatter_nd_non_aliasing_add(input:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function scatter_nd_non_aliasing_add
	**/
	static public function scatter_nd_non_aliasing_add_eager_fallback(input:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Applies sparse subtraction to individual values or slices in a Variable.
		
		`ref` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into `ref`.
		It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
		dimension of `ref`.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		```
		[d_0, ..., d_{Q-2}, ref.shape[K], ..., ref.shape[P-1]].
		```
		
		For example, say we want to subtract 4 scattered elements from a rank-1 tensor
		to 8 elements. In Python, that update would look like this:
		
		```python
		    ref = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
		    indices = tf.constant([[4], [3], [1] ,[7]])
		    updates = tf.constant([9, 10, 11, 12])
		    op = tf.scatter_nd_sub(ref, indices, updates)
		    with tf.Session() as sess:
		      print sess.run(op)
		```
		
		The resulting update to ref would look like this:
		
		    [1, -9, 3, -6, -6, 6, 7, -4]
		
		See `tf.scatter_nd` for more details about how to make updates to
		slices.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`,
		    `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`,
		    `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`,
		    `uint32`, `uint64`. A mutable Tensor. Should be from a Variable node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into ref.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to add to ref.
		  use_locking: An optional `bool`. Defaults to `False`.
		    An optional bool. Defaults to True. If True, the assignment will
		    be protected by a lock; otherwise the behavior is undefined,
		    but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function scatter_nd_sub(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies sparse `updates` to individual values or slices in a Variable.
		
		`ref` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into `ref`.
		It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
		dimension of `ref`.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		```
		[d_0, ..., d_{Q-2}, ref.shape[K], ..., ref.shape[P-1]].
		```
		
		For example, say we want to update 4 scattered elements to a rank-1 tensor to
		8 elements. In Python, that update would look like this:
		
		```python
		    ref = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
		    indices = tf.constant([[4], [3], [1] ,[7]])
		    updates = tf.constant([9, 10, 11, 12])
		    update = tf.scatter_nd_update(ref, indices, updates)
		    with tf.Session() as sess:
		      print sess.run(update)
		```
		
		The resulting update to ref would look like this:
		
		    [1, 11, 3, 10, 9, 6, 7, 12]
		
		See `tf.scatter_nd` for more details about how to make updates to
		slices.
		
		Args:
		  ref: A Variable.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into ref.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A Tensor. Must have the same type as ref. A tensor of updated
		    values to add to ref.
		  use_locking: An optional `bool`. Defaults to `True`.
		    An optional bool. Defaults to True. If True, the assignment will
		    be protected by a lock; otherwise the behavior is undefined,
		    but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The value of the variable after the update.
	**/
	static public function scatter_nd_update(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Subtracts sparse updates to a variable reference.
		
		```python
		    # Scalar indices
		    ref[indices, ...] -= updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] -= updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] -= updates[i, ..., j, ...]
		```
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their (negated) contributions add.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or
		`updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%"
		     src="https://www.tensorflow.org/images/ScatterSub.png" alt>
		</div>
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`,
		    `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`,
		    `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`,
		    `uint32`, `uint64`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to subtract from `ref`.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the subtraction will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function scatter_sub(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies sparse updates to a variable reference.
		
		This operation computes
		
		```python
		    # Scalar indices
		    ref[indices, ...] = updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] = updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] = updates[i, ..., j, ...]
		```
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		If values in `ref` is to be updated more than once, because there are
		duplicate entries in `indices`, the order at which the updates happen
		for each value is undefined.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterUpdate.png" alt>
		</div>
		
		Args:
		  ref: A `Variable`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to store in `ref`.
		  use_locking: An optional `bool`. Defaults to `True`.
		    If True, the assignment will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as `ref`.  Returned as a convenience for operations that want
		  to use the updated values after the update is done.
	**/
	static public function scatter_update(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Searches input tensor for values on the innermost dimension.
		
		A 2-D example:
		
		```
		  sorted_sequence = [[0, 3, 9, 9, 10],
		                     [1, 2, 3, 4, 5]]
		  values = [[2, 4, 9],
		            [0, 2, 6]]
		
		  result = searchsorted(sorted_sequence, values, side="left")
		
		  result == [[1, 2, 2],
		             [0, 1, 5]]
		
		  result = searchsorted(sorted_sequence, values, side="right")
		
		  result == [[1, 2, 4],
		             [0, 2, 5]]
		```
		
		Args:
		  sorted_sequence: N-D `Tensor` containing a sorted sequence.
		  values: N-D `Tensor` containing the search values.
		  side: 'left' or 'right'; 'left' corresponds to lower_bound and 'right' to
		    upper_bound.
		  out_type: The output type (`int32` or `int64`).  Default is `tf.int32`.
		  name: Optional name for the operation.
		
		Returns:
		  An N-D `Tensor` the size of values containing the result of applying either
		  lower_bound or upper_bound (depending on side) to each value.  The result
		  is not a global index to the entire `Tensor`, but the index in the last
		  dimension.
		
		Raises:
		  ValueError: If the last dimension of `sorted_sequence >= 2^31-1` elements.
		              If the total size of values exceeds `2^31 - 1` elements.
		              If the first `N-1` dimensions of the two tensors don't match.
	**/
	static public function searchsorted(sorted_sequence:Dynamic, values:Dynamic, ?side:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the maximum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \max_j(data_j)\\) where `max` is over `j` such
		that `segment_ids[j] == i`.
		
		If the max is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentMax.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose size is equal to the size of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function segment_max(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function segment_max
	**/
	static public function segment_max_eager_fallback(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the mean along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \frac{\sum_j data_j}{N}\\) where `mean` is
		over `j` such that `segment_ids[j] == i` and `N` is the total number of
		values summed.
		
		If the mean is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentMean.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose size is equal to the size of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function segment_mean(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function segment_mean
	**/
	static public function segment_mean_eager_fallback(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the minimum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \min_j(data_j)\\) where `min` is over `j` such
		that `segment_ids[j] == i`.
		
		If the min is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentMin.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose size is equal to the size of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function segment_min(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function segment_min
	**/
	static public function segment_min_eager_fallback(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the product along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \prod_j data_j\\) where the product is over `j` such
		that `segment_ids[j] == i`.
		
		If the product is empty for a given segment ID `i`, `output[i] = 1`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentProd.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose size is equal to the size of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function segment_prod(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function segment_prod
	**/
	static public function segment_prod_eager_fallback(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the sum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \sum_j data_j\\) where sum is over `j` such
		that `segment_ids[j] == i`.
		
		If the sum is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentSum.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose size is equal to the size of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function segment_sum(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function segment_sum
	**/
	static public function segment_sum_eager_fallback(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Selects elements from `x` or `y`, depending on `condition`.
		
		The `x`, and `y` tensors must all have the same shape, and the
		output will also have that shape.
		
		The `condition` tensor must be a scalar if `x` and `y` are scalars.
		If `x` and `y` are vectors or higher rank, then `condition` must be either a
		scalar, a vector with size matching the first dimension of `x`, or must have
		the same shape as `x`.
		
		The `condition` tensor acts as a mask that chooses, based on the value at each
		element, whether the corresponding element / row in the output should be
		taken from `x` (if true) or `y` (if false).
		
		If `condition` is a vector and `x` and `y` are higher rank matrices, then
		it chooses which row (outer dimension) to copy from `x` and `y`.
		If `condition` has the same shape as `x` and `y`, then it chooses which
		element to copy from `x` and `y`.
		
		For example:
		
		```python
		# 'condition' tensor is [[True,  False]
		#                        [False, True]]
		# 't' is [[1, 2],
		#         [3, 4]]
		# 'e' is [[5, 6],
		#         [7, 8]]
		select(condition, t, e)  # => [[1, 6], [7, 4]]
		
		
		# 'condition' tensor is [True, False]
		# 't' is [[1, 2],
		#         [3, 4]]
		# 'e' is [[5, 6],
		#         [7, 8]]
		select(condition, t, e) ==> [[1, 2],
		                             [7, 8]]
		
		```
		
		Args:
		  condition: A `Tensor` of type `bool`.
		  x:  A `Tensor` which may have the same shape as `condition`.
		    If `condition` is rank 1, `x` may have higher rank,
		    but its first dimension must match the size of `condition`.
		  y:  A `Tensor` with the same type and shape as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `t`.
	**/
	static public function select(condition:Dynamic, x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function select
	**/
	static public function select_eager_fallback(condition:Dynamic, x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of a batch of self-adjoint matrices.
		
		Computes the eigenvalues and eigenvectors of the innermost N-by-N matrices
		in `tensor` such that
		`tensor[...,:,:] * v[..., :,i] = e[..., i] * v[...,:,i]`, for i=0...N-1.
		
		Args:
		  tensor: `Tensor` of shape `[..., N, N]`. Only the lower triangular part of
		    each inner inner matrix is referenced.
		  name: string, optional name of the operation.
		
		Returns:
		  e: Eigenvalues. Shape is `[..., N]`. Sorted in non-decreasing order.
		  v: Eigenvectors. Shape is `[..., N, N]`. The columns of the inner most
		    matrices contain eigenvectors of the corresponding matrices in `tensor`
	**/
	static public function self_adjoint_eig(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function self_adjoint_eig
	**/
	static public function self_adjoint_eig_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of one or more square self-adjoint matrices.
		
		Computes the eigenvalues and (optionally) eigenvectors of each inner matrix in
		`input` such that `input[..., :, :] = v[..., :, :] * diag(e[..., :])`. The eigenvalues
		are sorted in non-decreasing order.
		
		```python
		# a is a tensor.
		# e is a tensor of eigenvalues.
		# v is a tensor of eigenvectors.
		e, v = self_adjoint_eig(a)
		e = self_adjoint_eig(a, compute_v=False)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    `Tensor` input of shape `[N, N]`.
		  compute_v: An optional `bool`. Defaults to `True`.
		    If `True` then eigenvectors will be computed and returned in `v`.
		    Otherwise, only the eigenvalues will be computed.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (e, v).
		
		  e: A `Tensor`. Has the same type as `input`.
		  v: A `Tensor`. Has the same type as `input`.
	**/
	static public function self_adjoint_eig_v2(input:Dynamic, ?compute_v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function self_adjoint_eig_v2
	**/
	static public function self_adjoint_eig_v2_eager_fallback(input:Dynamic, ?compute_v:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the eigenvalues of one or more self-adjoint matrices.
		
		Note: If your program backpropagates through this function, you should replace
		it with a call to tf.linalg.eigvalsh (possibly ignoring the second output) to
		avoid computing the eigen decomposition twice. This is because the
		eigenvectors are used to compute the gradient w.r.t. the eigenvalues. See
		_SelfAdjointEigV2Grad in linalg_grad.py.
		
		Args:
		  tensor: `Tensor` of shape `[..., N, N]`.
		  name: string, optional name of the operation.
		
		Returns:
		  e: Eigenvalues. Shape is `[..., N]`. The vector `e[..., :]` contains the `N`
		    eigenvalues of `tensor[..., :, :]`.
	**/
	static public function self_adjoint_eigvals(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a mask tensor representing the first N positions of each cell.
		
		If `lengths` has shape `[d_1, d_2, ..., d_n]` the resulting tensor `mask` has
		dtype `dtype` and shape `[d_1, d_2, ..., d_n, maxlen]`, with
		
		```
		mask[i_1, i_2, ..., i_n, j] = (j < lengths[i_1, i_2, ..., i_n])
		```
		
		Examples:
		
		```python
		tf.sequence_mask([1, 3, 2], 5)  # [[True, False, False, False, False],
		                                #  [True, True, True, False, False],
		                                #  [True, True, False, False, False]]
		
		tf.sequence_mask([[1, 3],[2,0]])  # [[[True, False, False],
		                                  #   [True, True, True]],
		                                  #  [[True, True, False],
		                                  #   [False, False, False]]]
		```
		
		Args:
		  lengths: integer tensor, all its values <= maxlen.
		  maxlen: scalar integer tensor, size of last dimension of returned tensor.
		    Default is the maximum value in `lengths`.
		  dtype: output type of the resulting tensor.
		  name: name of the op.
		Returns:
		  A mask tensor of shape `lengths.shape + (maxlen,)`, cast to specified dtype.
		Raises:
		  ValueError: if `maxlen` is not a scalar.
	**/
	static public function sequence_mask(lengths:Dynamic, ?maxlen:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Serialize `N`-minibatch `SparseTensor` into an `[N, 3]` `Tensor`.
		
		The `SparseTensor` must have rank `R` greater than 1, and the first dimension
		is treated as the minibatch dimension.  Elements of the `SparseTensor`
		must be sorted in increasing order of this first dimension.  The serialized
		`SparseTensor` objects going into each row of the output `Tensor` will have
		rank `R-1`.
		
		The minibatch size `N` is extracted from `sparse_shape[0]`.
		
		Args:
		  sp_input: The input rank `R` `SparseTensor`.
		  name: A name prefix for the returned tensors (optional).
		  out_type: The `dtype` to use for serialization.
		
		Returns:
		  A matrix (2-D `Tensor`) with `N` rows and `3` columns. Each column
		  represents serialized `SparseTensor`'s indices, values, and shape
		  (respectively).
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function serialize_many_sparse(sp_input:Dynamic, ?name:Dynamic, ?out_type:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function serialize_many_sparse
	**/
	static public function serialize_many_sparse_eager_fallback(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Serialize a `SparseTensor` into a 3-vector (1-D `Tensor`) object.
		
		Args:
		  sp_input: The input `SparseTensor`.
		  name: A name prefix for the returned tensors (optional).
		  out_type: The `dtype` to use for serialization.
		
		Returns:
		  A 3-vector (1-D `Tensor`), with each column representing the serialized
		  `SparseTensor`'s indices, values, and shape (respectively).
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function serialize_sparse(sp_input:Dynamic, ?name:Dynamic, ?out_type:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function serialize_sparse
	**/
	static public function serialize_sparse_eager_fallback(sparse_indices:Dynamic, sparse_values:Dynamic, sparse_shape:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Transforms a Tensor into a serialized TensorProto proto.
		
		Args:
		  tensor: A `Tensor`. A Tensor of type `T`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function serialize_tensor(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function serialize_tensor
	**/
	static public function serialize_tensor_eager_fallback(tensor:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Sets the graph-level random seed.
		
		Operations that rely on a random seed actually derive it from two seeds:
		the graph-level and operation-level seeds. This sets the graph-level seed.
		
		Its interactions with operation-level seeds is as follows:
		
		  1. If neither the graph-level nor the operation seed is set:
		    A random seed is used for this op.
		  2. If the graph-level seed is set, but the operation seed is not:
		    The system deterministically picks an operation seed in conjunction
		    with the graph-level seed so that it gets a unique random sequence.
		  3. If the graph-level seed is not set, but the operation seed is set:
		    A default graph-level seed and the specified operation seed are used to
		    determine the random sequence.
		  4. If both the graph-level and the operation seed are set:
		    Both seeds are used in conjunction to determine the random sequence.
		
		To illustrate the user-visible effects, consider these examples:
		
		To generate different sequences across sessions, set neither
		graph-level nor op-level seeds:
		
		```python
		a = tf.random_uniform([1])
		b = tf.random_normal([1])
		
		print("Session 1")
		with tf.Session() as sess1:
		  print(sess1.run(a))  # generates 'A1'
		  print(sess1.run(a))  # generates 'A2'
		  print(sess1.run(b))  # generates 'B1'
		  print(sess1.run(b))  # generates 'B2'
		
		print("Session 2")
		with tf.Session() as sess2:
		  print(sess2.run(a))  # generates 'A3'
		  print(sess2.run(a))  # generates 'A4'
		  print(sess2.run(b))  # generates 'B3'
		  print(sess2.run(b))  # generates 'B4'
		```
		
		To generate the same repeatable sequence for an op across sessions, set the
		seed for the op:
		
		```python
		a = tf.random_uniform([1], seed=1)
		b = tf.random_normal([1])
		
		# Repeatedly running this block with the same graph will generate the same
		# sequence of values for 'a', but different sequences of values for 'b'.
		print("Session 1")
		with tf.Session() as sess1:
		  print(sess1.run(a))  # generates 'A1'
		  print(sess1.run(a))  # generates 'A2'
		  print(sess1.run(b))  # generates 'B1'
		  print(sess1.run(b))  # generates 'B2'
		
		print("Session 2")
		with tf.Session() as sess2:
		  print(sess2.run(a))  # generates 'A1'
		  print(sess2.run(a))  # generates 'A2'
		  print(sess2.run(b))  # generates 'B3'
		  print(sess2.run(b))  # generates 'B4'
		```
		
		To make the random sequences generated by all ops be repeatable across
		sessions, set a graph-level seed:
		
		```python
		tf.set_random_seed(1234)
		a = tf.random_uniform([1])
		b = tf.random_normal([1])
		
		# Repeatedly running this block with the same graph will generate the same
		# sequences of 'a' and 'b'.
		print("Session 1")
		with tf.Session() as sess1:
		  print(sess1.run(a))  # generates 'A1'
		  print(sess1.run(a))  # generates 'A2'
		  print(sess1.run(b))  # generates 'B1'
		  print(sess1.run(b))  # generates 'B2'
		
		print("Session 2")
		with tf.Session() as sess2:
		  print(sess2.run(a))  # generates 'A1'
		  print(sess2.run(a))  # generates 'A2'
		  print(sess2.run(b))  # generates 'B1'
		  print(sess2.run(b))  # generates 'B2'
		```
		
		Args:
		  seed: integer.
	**/
	static public function set_random_seed(seed:Dynamic):Dynamic;
	/**
		Computes the difference between two lists of numbers or strings.
		
		Given a list `x` and a list `y`, this operation returns a list `out` that
		represents all values that are in `x` but not in `y`. The returned list `out`
		is sorted in the same order that the numbers appear in `x` (duplicates are
		preserved). This operation also returns a list `idx` that represents the
		position of each `out` element in `x`. In other words:
		
		`out[i] = x[idx[i]] for i in [0, 1, ..., len(out) - 1]`
		
		For example, given this input:
		
		```
		x = [1, 2, 3, 4, 5, 6]
		y = [1, 3, 5]
		```
		
		This operation would return:
		
		```
		out ==> [2, 4, 6]
		idx ==> [1, 3, 5]
		```
		
		Args:
		  x: A `Tensor`. 1-D. Values to keep.
		  y: A `Tensor`. Must have the same type as `x`. 1-D. Values to remove.
		  out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (out, idx).
		
		  out: A `Tensor`. Has the same type as `x`.
		  idx: A `Tensor` of type `out_idx`.
	**/
	static public function setdiff1d(x:Dynamic, y:Dynamic, ?index_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the shape of a tensor.
		
		This operation returns a 1-D integer tensor representing the shape of `input`.
		
		For example:
		
		```python
		t = tf.constant([[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]])
		tf.shape(t)  # [2, 2, 3]
		```
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		  out_type: (Optional) The specified output type of the operation
		    (`int32` or `int64`). Defaults to `tf.int32`.
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function shape(input:Dynamic, ?name:Dynamic, ?out_type:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function shape
	**/
	static public function shape_eager_fallback(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the shape of a tensor.
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		  optimize: if true, encode the shape as a constant when possible.
		  out_type: (Optional) The specified output type of the operation
		    (`int32` or `int64`). Defaults to tf.int32.
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function shape_internal(input:Dynamic, ?name:Dynamic, ?optimize:Dynamic, ?out_type:Dynamic):Dynamic;
	/**
		Returns shape of tensors.
		
		Args:
		  input: A list of at least 1 `Tensor` object with the same type.
		  out_type: The specified output type of the operation
		    (`int32` or `int64`). Defaults to `tf.int32`(optional).
		  name: A name for the operation (optional).
		
		Returns:
		  A list with the same length as `input` of `Tensor` objects with
		    type `out_type`.
	**/
	static public function shape_n(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function shape_n
	**/
	static public function shape_n_eager_fallback(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Generate a sharded filename. The filename is printf formatted as
		
		   %s-%05d-of-%05d, basename, shard, num_shards.
		
		Args:
		  basename: A `Tensor` of type `string`.
		  shard: A `Tensor` of type `int32`.
		  num_shards: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function sharded_filename(basename:Dynamic, shard:Dynamic, num_shards:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sharded_filename
	**/
	static public function sharded_filename_eager_fallback(basename:Dynamic, shard:Dynamic, num_shards:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Generate a glob pattern matching all sharded file names.
		
		Args:
		  basename: A `Tensor` of type `string`.
		  num_shards: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function sharded_filespec(basename:Dynamic, num_shards:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sharded_filespec
	**/
	static public function sharded_filespec_eager_fallback(basename:Dynamic, num_shards:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes sigmoid of `x` element-wise.
		
		Specifically, `y = 1 / (1 + exp(-x))`.
		
		Args:
		  x: A Tensor with type `float16`, `float32`, `float64`, `complex64`,
		    or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor with the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.expit
		@end_compatibility
	**/
	static public function sigmoid(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sigmoid
	**/
	static public function sigmoid_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the gradient of the sigmoid of `x` wrt its input.
		
		Specifically, `grad = dy * y * (1 - y)`, where `y = sigmoid(x)`, and
		`dy` is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function sigmoid_grad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sigmoid_grad
	**/
	static public function sigmoid_grad_eager_fallback(y:Dynamic, dy:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns an element-wise indication of the sign of a number.
		
		`y = sign(x) = -1` if `x < 0`; 0 if `x == 0` or `tf.is_nan(x)`; 1 if `x > 0`.
		
		Zero is returned for NaN inputs.
		
		For complex numbers, `y = sign(x) = x / |x|` if `x != 0`, otherwise `y = 0`.
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(numpy)
		Equivalent to numpy.sign except for the behavior for input values of NaN.
		@end_compatibility
	**/
	static public function sign(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sign
	**/
	static public function sign_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes sin of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function sin(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sin
	**/
	static public function sin_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes hyperbolic sine of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function sinh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sinh
	**/
	static public function sinh_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the size of a tensor.
		
		Returns a 0-D `Tensor` representing the number of elements in `input`
		of type `out_type`. Defaults to tf.int32.
		
		For example:
		
		```python
		t = tf.constant([[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]])
		tf.size(t)  # 12
		```
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		  out_type: (Optional) The specified non-quantized numeric output type
		    of the operation. Defaults to `tf.int32`.
		
		Returns:
		  A `Tensor` of type `out_type`. Defaults to `tf.int32`.
		
		@compatibility(numpy)
		Equivalent to np.size()
		@end_compatibility
	**/
	static public function size(input:Dynamic, ?name:Dynamic, ?out_type:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function size
	**/
	static public function size_eager_fallback(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the size of a tensor.
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		  optimize: if true, encode the size as a constant when possible.
		  out_type: (Optional) The specified non-quantized numeric output type
		    of the operation. Defaults to `tf.int32`.
		
		Returns:
		  A `Tensor` of type `out_type`. Defaults to `tf.int32`.
	**/
	static public function size_internal(input:Dynamic, ?name:Dynamic, ?optimize:Dynamic, ?out_type:Dynamic):Dynamic;
	/**
		Extracts a slice from a tensor.
		
		This operation extracts a slice of size `size` from a tensor `input` starting
		at the location specified by `begin`. The slice `size` is represented as a
		tensor shape, where `size[i]` is the number of elements of the 'i'th dimension
		of `input` that you want to slice. The starting location (`begin`) for the
		slice is represented as an offset in each dimension of `input`. In other
		words, `begin[i]` is the offset into the 'i'th dimension of `input` that you
		want to slice from.
		
		Note that `tf.Tensor.__getitem__` is typically a more pythonic way to
		perform slices, as it allows you to write `foo[3:7, :-2]` instead of
		`tf.slice(foo, [3, 0], [4, foo.get_shape()[1]-2])`.
		
		`begin` is zero-based; `size` is one-based. If `size[i]` is -1,
		all remaining elements in dimension i are included in the
		slice. In other words, this is equivalent to setting:
		
		`size[i] = input.dim_size(i) - begin[i]`
		
		This operation requires that:
		
		`0 <= begin[i] <= begin[i] + size[i] <= Di  for i in [0, n]`
		
		For example:
		
		```python
		t = tf.constant([[[1, 1, 1], [2, 2, 2]],
		                 [[3, 3, 3], [4, 4, 4]],
		                 [[5, 5, 5], [6, 6, 6]]])
		tf.slice(t, [1, 0, 0], [1, 1, 3])  # [[[3, 3, 3]]]
		tf.slice(t, [1, 0, 0], [1, 2, 3])  # [[[3, 3, 3],
		                                   #   [4, 4, 4]]]
		tf.slice(t, [1, 0, 0], [2, 1, 3])  # [[[3, 3, 3]],
		                                   #  [[5, 5, 5]]]
		```
		
		Args:
		  input_: A `Tensor`.
		  begin: An `int32` or `int64` `Tensor`.
		  size: An `int32` or `int64` `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` the same type as `input`.
	**/
	static public function slice(input_:Dynamic, begin:Dynamic, size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a copy of the input tensor.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function snapshot(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function snapshot
	**/
	static public function snapshot_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		SpaceToBatch for 4-D tensors of type T.
		
		This is a legacy version of the more general SpaceToBatchND.
		
		Zero-pads and then rearranges (permutes) blocks of spatial data into batch.
		More specifically, this op outputs a copy of the input tensor where values from
		the `height` and `width` dimensions are moved to the `batch` dimension. After
		the zero-padding, both `height` and `width` of the input must be divisible by the
		block size.
		
		Args:
		  input: A `Tensor`. 4-D with shape `[batch, height, width, depth]`.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D tensor of non-negative integers with shape `[2, 2]`. It specifies
		      the padding of the input with zeros across the spatial dimensions as follows:
		
		          paddings = [[pad_top, pad_bottom], [pad_left, pad_right]]
		
		      The effective spatial dimensions of the zero-padded input tensor will be:
		
		          height_pad = pad_top + height + pad_bottom
		          width_pad = pad_left + width + pad_right
		
		    The attr `block_size` must be greater than one. It indicates the block size.
		
		      * Non-overlapping blocks of size `block_size x block size` in the height and
		        width dimensions are rearranged into the batch dimension at each location.
		      * The batch of the output tensor is `batch * block_size * block_size`.
		      * Both height_pad and width_pad must be divisible by block_size.
		
		    The shape of the output will be:
		
		        [batch*block_size*block_size, height_pad/block_size, width_pad/block_size,
		         depth]
		
		    Some examples:
		
		    (1) For the following input of shape `[1, 2, 2, 1]` and block_size of 2:
		
		    ```
		    x = [[[[1], [2]], [[3], [4]]]]
		    ```
		
		    The output tensor has shape `[4, 1, 1, 1]` and value:
		
		    ```
		    [[[[1]]], [[[2]]], [[[3]]], [[[4]]]]
		    ```
		
		    (2) For the following input of shape `[1, 2, 2, 3]` and block_size of 2:
		
		    ```
		    x = [[[[1, 2, 3], [4, 5, 6]],
		          [[7, 8, 9], [10, 11, 12]]]]
		    ```
		
		    The output tensor has shape `[4, 1, 1, 3]` and value:
		
		    ```
		    [[[1, 2, 3]], [[4, 5, 6]], [[7, 8, 9]], [[10, 11, 12]]]
		    ```
		
		    (3) For the following input of shape `[1, 4, 4, 1]` and block_size of 2:
		
		    ```
		    x = [[[[1],   [2],  [3],  [4]],
		          [[5],   [6],  [7],  [8]],
		          [[9],  [10], [11],  [12]],
		          [[13], [14], [15],  [16]]]]
		    ```
		
		    The output tensor has shape `[4, 2, 2, 1]` and value:
		
		    ```
		    x = [[[[1], [3]], [[9], [11]]],
		         [[[2], [4]], [[10], [12]]],
		         [[[5], [7]], [[13], [15]]],
		         [[[6], [8]], [[14], [16]]]]
		    ```
		
		    (4) For the following input of shape `[2, 2, 4, 1]` and block_size of 2:
		
		    ```
		    x = [[[[1],   [2],  [3],  [4]],
		          [[5],   [6],  [7],  [8]]],
		         [[[9],  [10], [11],  [12]],
		          [[13], [14], [15],  [16]]]]
		    ```
		
		    The output tensor has shape `[8, 1, 2, 1]` and value:
		
		    ```
		    x = [[[[1], [3]]], [[[9], [11]]], [[[2], [4]]], [[[10], [12]]],
		         [[[5], [7]]], [[[13], [15]]], [[[6], [8]]], [[[14], [16]]]]
		    ```
		
		    Among others, this operation is useful for reducing atrous convolution into
		    regular convolution.
		  block_size: An `int` that is `>= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_batch(input:Dynamic, paddings:Dynamic, block_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function space_to_batch
	**/
	static public function space_to_batch_eager_fallback(input:Dynamic, paddings:Dynamic, block_size:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		SpaceToBatch for N-D tensors of type T.
		
		This operation divides "spatial" dimensions `[1, ..., M]` of the input into a
		grid of blocks of shape `block_shape`, and interleaves these blocks with the
		"batch" dimension (0) such that in the output, the spatial dimensions
		`[1, ..., M]` correspond to the position within the grid, and the batch
		dimension combines both the position within a spatial block and the original
		batch position.  Prior to division into blocks, the spatial dimensions of the
		input are optionally zero padded according to `paddings`.  See below for a
		precise description.
		
		Args:
		  input: A `Tensor`.
		    N-D with shape `input_shape = [batch] + spatial_shape + remaining_shape`,
		    where spatial_shape has `M` dimensions.
		  block_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D with shape `[M]`, all values must be >= 1.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D with shape `[M, 2]`, all values must be >= 0.
		      `paddings[i] = [pad_start, pad_end]` specifies the padding for input dimension
		      `i + 1`, which corresponds to spatial dimension `i`.  It is required that
		      `block_shape[i]` divides `input_shape[i + 1] + pad_start + pad_end`.
		
		    This operation is equivalent to the following steps:
		
		    1. Zero-pad the start and end of dimensions `[1, ..., M]` of the
		       input according to `paddings` to produce `padded` of shape `padded_shape`.
		
		    2. Reshape `padded` to `reshaped_padded` of shape:
		
		         [batch] +
		         [padded_shape[1] / block_shape[0],
		           block_shape[0],
		          ...,
		          padded_shape[M] / block_shape[M-1],
		          block_shape[M-1]] +
		         remaining_shape
		
		    3. Permute dimensions of `reshaped_padded` to produce
		       `permuted_reshaped_padded` of shape:
		
		         block_shape +
		         [batch] +
		         [padded_shape[1] / block_shape[0],
		          ...,
		          padded_shape[M] / block_shape[M-1]] +
		         remaining_shape
		
		    4. Reshape `permuted_reshaped_padded` to flatten `block_shape` into the batch
		       dimension, producing an output tensor of shape:
		
		         [batch * prod(block_shape)] +
		         [padded_shape[1] / block_shape[0],
		          ...,
		          padded_shape[M] / block_shape[M-1]] +
		         remaining_shape
		
		    Some examples:
		
		    (1) For the following input of shape `[1, 2, 2, 1]`, `block_shape = [2, 2]`, and
		        `paddings = [[0, 0], [0, 0]]`:
		
		    ```
		    x = [[[[1], [2]], [[3], [4]]]]
		    ```
		
		    The output tensor has shape `[4, 1, 1, 1]` and value:
		
		    ```
		    [[[[1]]], [[[2]]], [[[3]]], [[[4]]]]
		    ```
		
		    (2) For the following input of shape `[1, 2, 2, 3]`, `block_shape = [2, 2]`, and
		        `paddings = [[0, 0], [0, 0]]`:
		
		    ```
		    x = [[[[1, 2, 3], [4, 5, 6]],
		          [[7, 8, 9], [10, 11, 12]]]]
		    ```
		
		    The output tensor has shape `[4, 1, 1, 3]` and value:
		
		    ```
		    [[[1, 2, 3]], [[4, 5, 6]], [[7, 8, 9]], [[10, 11, 12]]]
		    ```
		
		    (3) For the following input of shape `[1, 4, 4, 1]`, `block_shape = [2, 2]`, and
		        `paddings = [[0, 0], [0, 0]]`:
		
		    ```
		    x = [[[[1],   [2],  [3],  [4]],
		          [[5],   [6],  [7],  [8]],
		          [[9],  [10], [11],  [12]],
		          [[13], [14], [15],  [16]]]]
		    ```
		
		    The output tensor has shape `[4, 2, 2, 1]` and value:
		
		    ```
		    x = [[[[1], [3]], [[9], [11]]],
		         [[[2], [4]], [[10], [12]]],
		         [[[5], [7]], [[13], [15]]],
		         [[[6], [8]], [[14], [16]]]]
		    ```
		
		    (4) For the following input of shape `[2, 2, 4, 1]`, block_shape = `[2, 2]`, and
		        paddings = `[[0, 0], [2, 0]]`:
		
		    ```
		    x = [[[[1],   [2],  [3],  [4]],
		          [[5],   [6],  [7],  [8]]],
		         [[[9],  [10], [11],  [12]],
		          [[13], [14], [15],  [16]]]]
		    ```
		
		    The output tensor has shape `[8, 1, 3, 1]` and value:
		
		    ```
		    x = [[[[0], [1], [3]]], [[[0], [9], [11]]],
		         [[[0], [2], [4]]], [[[0], [10], [12]]],
		         [[[0], [5], [7]]], [[[0], [13], [15]]],
		         [[[0], [6], [8]]], [[[0], [14], [16]]]]
		    ```
		
		    Among others, this operation is useful for reducing atrous convolution into
		    regular convolution.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_batch_nd(input:Dynamic, block_shape:Dynamic, paddings:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function space_to_batch_nd
	**/
	static public function space_to_batch_nd_eager_fallback(input:Dynamic, block_shape:Dynamic, paddings:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		SpaceToDepth for tensors of type T.
		
		Rearranges blocks of spatial data, into depth. More specifically,
		this op outputs a copy of the input tensor where values from the `height`
		and `width` dimensions are moved to the `depth` dimension.
		The attr `block_size` indicates the input block size.
		
		  * Non-overlapping blocks of size `block_size x block size` are rearranged
		    into depth at each location.
		  * The depth of the output tensor is `block_size * block_size * input_depth`.
		  * The Y, X coordinates within each block of the input become the high order
		    component of the output channel index.
		  * The input tensor's height and width must be divisible by block_size.
		
		The `data_format` attr specifies the layout of the input and output tensors
		with the following options:
		  "NHWC": `[ batch, height, width, channels ]`
		  "NCHW": `[ batch, channels, height, width ]`
		  "NCHW_VECT_C":
		      `qint8 [ batch, channels / 4, height, width, 4 ]`
		
		It is useful to consider the operation as transforming a 6-D Tensor.
		e.g. for data_format = NHWC,
		     Each element in the input tensor can be specified via 6 coordinates,
		     ordered by decreasing memory layout significance as:
		     n,oY,bY,oX,bX,iC  (where n=batch index, oX, oY means X or Y coordinates
		                        within the output image, bX, bY means coordinates
		                        within the input block, iC means input channels).
		     The output would be a transpose to the following layout:
		     n,oY,oX,bY,bX,iC
		
		This operation is useful for resizing the activations between convolutions
		(but keeping all data), e.g. instead of pooling. It is also useful for training
		purely convolutional models.
		
		For example, given an input of shape `[1, 2, 2, 1]`, data_format = "NHWC" and
		block_size = 2:
		
		```
		x = [[[[1], [2]],
		      [[3], [4]]]]
		```
		
		This operation will output a tensor of shape `[1, 1, 1, 4]`:
		
		```
		[[[[1, 2, 3, 4]]]]
		```
		
		Here, the input has a batch of 1 and each batch element has shape `[2, 2, 1]`,
		the corresponding output will have a single element (i.e. width and height are
		both 1) and will have a depth of 4 channels (1 * block_size * block_size).
		The output element shape is `[1, 1, 4]`.
		
		For an input tensor with larger depth, here of shape `[1, 2, 2, 3]`, e.g.
		
		```
		x = [[[[1, 2, 3], [4, 5, 6]],
		      [[7, 8, 9], [10, 11, 12]]]]
		```
		
		This operation, for block_size of 2, will return the following tensor of shape
		`[1, 1, 1, 12]`
		
		```
		[[[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]]]]
		```
		
		Similarly, for the following input of shape `[1 4 4 1]`, and a block size of 2:
		
		```
		x = [[[[1],   [2],  [5],  [6]],
		      [[3],   [4],  [7],  [8]],
		      [[9],  [10], [13],  [14]],
		      [[11], [12], [15],  [16]]]]
		```
		
		the operator will return the following tensor of shape `[1 2 2 4]`:
		
		```
		x = [[[[1, 2, 3, 4],
		       [5, 6, 7, 8]],
		      [[9, 10, 11, 12],
		       [13, 14, 15, 16]]]]
		```
		
		Args:
		  input: A `Tensor`.
		  block_size: An `int` that is `>= 2`. The size of the spatial block.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NCHW_VECT_C"`. Defaults to `"NHWC"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_depth(input:Dynamic, block_size:Dynamic, ?name:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function space_to_depth
	**/
	static public function space_to_depth_eager_fallback(input:Dynamic, block_size:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Applies a sparse gradient to a given accumulator.
		
		Does not add if local_step is smaller than the accumulator's
		global_step.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a accumulator.
		  local_step: A `Tensor` of type `int64`.
		    The local_step value at which the sparse gradient was computed.
		  gradient_indices: A `Tensor` of type `int64`.
		    Indices of the sparse gradient to be accumulated. Must be a
		    vector.
		  gradient_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Values are the non-zero slices of the gradient, and must have
		    the same first dimension as indices, i.e., the nnz represented by indices and
		    values must be consistent.
		  gradient_shape: A `Tensor` of type `int64`.
		    Shape of the sparse gradient to be accumulated.
		  has_known_shape: A `bool`.
		    Boolean indicating whether gradient_shape is unknown, in which
		    case the input is ignored during validation.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function sparse_accumulator_apply_gradient(handle:Dynamic, local_step:Dynamic, gradient_indices:Dynamic, gradient_values:Dynamic, gradient_shape:Dynamic, has_known_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extracts the average sparse gradient in a SparseConditionalAccumulator.
		
		The op will blocks until sufficient (i.e., more than num_required)
		gradients have been accumulated. If the accumulator has already
		aggregated more than num_required gradients, it will return its
		average of the accumulated gradients.  Also automatically increments
		the recorded global_step in the accumulator by 1, and resets the
		aggregate to 0.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		    The handle to a SparseConditionalAccumulator.
		  num_required: A `Tensor` of type `int32`.
		    Number of gradients required before we return an aggregate.
		  dtype: A `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.uint8, tf.int16, tf.int8, tf.complex64, tf.int64, tf.qint8, tf.quint8, tf.qint32, tf.bfloat16, tf.uint16, tf.complex128, tf.half, tf.uint32, tf.uint64`.
		    The data type of accumulated gradients. Needs to correspond to the type
		    of the accumulator.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (indices, values, shape).
		
		  indices: A `Tensor` of type `int64`.
		  values: A `Tensor` of type `dtype`.
		  shape: A `Tensor` of type `int64`.
	**/
	static public function sparse_accumulator_take_gradient(handle:Dynamic, num_required:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds two tensors, at least one of each is a `SparseTensor`.
		
		If one `SparseTensor` and one `Tensor` are passed in, returns a `Tensor`.  If
		both arguments are `SparseTensor`s, this returns a `SparseTensor`.  The order
		of arguments does not matter.  Use vanilla `tf.add()` for adding two dense
		`Tensor`s.
		
		The shapes of the two operands must match: broadcasting is not supported.
		
		The indices of any input `SparseTensor` are assumed ordered in standard
		lexicographic order.  If this is not the case, before this step run
		`SparseReorder` to restore index ordering.
		
		If both arguments are sparse, we perform "clipping" as follows.  By default,
		if two values sum to zero at some index, the output `SparseTensor` would still
		include that particular location in its index, storing a zero in the
		corresponding value slot.  To override this, callers can specify `thresh`,
		indicating that if the sum has a magnitude strictly smaller than `thresh`, its
		corresponding value and index would then not be included.  In particular,
		`thresh == 0.0` (default) means everything is kept and actual thresholding
		happens only for a positive value.
		
		For example, suppose the logical sum of two sparse operands is (densified):
		
		    [       2]
		    [.1     0]
		    [ 6   -.2]
		
		Then,
		
		    * `thresh == 0` (the default): all 5 index/value pairs will be returned.
		    * `thresh == 0.11`: only .1 and 0 will vanish, and the remaining three
		        index/value pairs will be returned.
		    * `thresh == 0.21`: .1, 0, and -.2 will vanish.
		
		Args:
		  a: The first operand; `SparseTensor` or `Tensor`.
		  b: The second operand; `SparseTensor` or `Tensor`.  At least one operand
		    must be sparse.
		  thresh: A 0-D `Tensor`.  The magnitude threshold that determines if an
		  output value/index pair takes space.  Its dtype should match that of the
		  values if they are real; if the latter are complex64/complex128, then the
		  dtype should be float32/float64, correspondingly.
		
		Returns:
		  A `SparseTensor` or a `Tensor`, representing the sum.
		
		Raises:
		  TypeError: If both `a` and `b` are `Tensor`s.  Use `tf.add()` instead.
	**/
	static public function sparse_add(a:Dynamic, b:Dynamic, ?thresh:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_add
	**/
	static public function sparse_add_eager_fallback(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, thresh:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		The gradient operator for the SparseAdd op.
		
		The SparseAdd op calculates A + B, where A, B, and the sum are all represented
		as `SparseTensor` objects.  This op takes in the upstream gradient w.r.t.
		non-empty values of the sum, and outputs the gradients w.r.t. the non-empty
		values of A and B.
		
		Args:
		  backprop_val_grad: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D with shape `[nnz(sum)]`.  The gradient with respect to
		    the non-empty values of the sum.
		  a_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the `SparseTensor` A, size `[nnz(A), ndims]`.
		  b_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the `SparseTensor` B, size `[nnz(B), ndims]`.
		  sum_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the sum `SparseTensor`, size
		    `[nnz(sum), ndims]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (a_val_grad, b_val_grad).
		
		  a_val_grad: A `Tensor`. Has the same type as `backprop_val_grad`.
		  b_val_grad: A `Tensor`. Has the same type as `backprop_val_grad`.
	**/
	static public function sparse_add_grad(backprop_val_grad:Dynamic, a_indices:Dynamic, b_indices:Dynamic, sum_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_add_grad
	**/
	static public function sparse_add_grad_eager_fallback(backprop_val_grad:Dynamic, a_indices:Dynamic, b_indices:Dynamic, sum_indices:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Concatenates a list of `SparseTensor` along the specified dimension. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		concat_dim is deprecated, use axis instead
		
		Concatenation is with respect to the dense versions of each sparse input.
		It is assumed that each inputs is a `SparseTensor` whose elements are ordered
		along increasing dimension number.
		
		If expand_nonconcat_dim is False, all inputs' shapes must match, except for
		the concat dimension. If expand_nonconcat_dim is True, then inputs' shapes are
		allowed to vary among all inputs.
		
		The `indices`, `values`, and `shapes` lists must have the same length.
		
		If expand_nonconcat_dim is False, then the output shape is identical to the
		inputs', except along the concat dimension, where it is the sum of the inputs'
		sizes along that dimension.
		
		If expand_nonconcat_dim is True, then the output shape along the non-concat
		dimensions will be expand to be the largest among all inputs, and it is the
		sum of the inputs sizes along the concat dimension.
		
		The output elements will be resorted to preserve the sort order along
		increasing dimension number.
		
		This op runs in `O(M log M)` time, where `M` is the total number of non-empty
		values across all inputs. This is due to the need for an internal sort in
		order to concatenate efficiently across an arbitrary dimension.
		
		For example, if `axis = 1` and the inputs are
		
		    sp_inputs[0]: shape = [2, 3]
		    [0, 2]: "a"
		    [1, 0]: "b"
		    [1, 1]: "c"
		
		    sp_inputs[1]: shape = [2, 4]
		    [0, 1]: "d"
		    [0, 2]: "e"
		
		then the output will be
		
		    shape = [2, 7]
		    [0, 2]: "a"
		    [0, 4]: "d"
		    [0, 5]: "e"
		    [1, 0]: "b"
		    [1, 1]: "c"
		
		Graphically this is equivalent to doing
		
		    [    a] concat [  d e  ] = [    a   d e  ]
		    [b c  ]        [       ]   [b c          ]
		
		Another example, if 'axis = 1' and the inputs are
		
		    sp_inputs[0]: shape = [3, 3]
		    [0, 2]: "a"
		    [1, 0]: "b"
		    [2, 1]: "c"
		
		    sp_inputs[1]: shape = [2, 4]
		    [0, 1]: "d"
		    [0, 2]: "e"
		
		if expand_nonconcat_dim = False, this will result in an error. But if
		expand_nonconcat_dim = True, this will result in:
		
		    shape = [3, 7]
		    [0, 2]: "a"
		    [0, 4]: "d"
		    [0, 5]: "e"
		    [1, 0]: "b"
		    [2, 1]: "c"
		
		Graphically this is equivalent to doing
		
		    [    a] concat [  d e  ] = [    a   d e  ]
		    [b    ]        [       ]   [b            ]
		    [  c  ]                    [  c          ]
		
		
		Args:
		  axis: Dimension to concatenate along. Must be in range [-rank, rank),
		    where rank is the number of dimensions in each input `SparseTensor`.
		  sp_inputs: List of `SparseTensor` to concatenate.
		  name: A name prefix for the returned tensors (optional).
		  expand_nonconcat_dim: Whether to allow the expansion in the non-concat
		    dimensions. Defaulted to False.
		  concat_dim: The old (deprecated) name for axis.
		
		Returns:
		  A `SparseTensor` with the concatenated output.
		
		Raises:
		  TypeError: If `sp_inputs` is not a list of `SparseTensor`.
	**/
	static public function sparse_concat(axis:Dynamic, sp_inputs:Dynamic, ?name:Dynamic, ?expand_nonconcat_dim:Dynamic, ?concat_dim:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_concat
	**/
	static public function sparse_concat_eager_fallback(indices:Dynamic, values:Dynamic, shapes:Dynamic, concat_dim:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A conditional accumulator for aggregating sparse gradients.
		
		The accumulator accepts gradients marked with local_step greater or
		equal to the most recent global_step known to the accumulator. The
		average can be extracted from the accumulator, provided sufficient
		gradients have been accumulated. Extracting the average automatically
		resets the aggregate to 0, and increments the global_step recorded by
		the accumulator.
		
		Args:
		  dtype: A `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.uint8, tf.int16, tf.int8, tf.complex64, tf.int64, tf.qint8, tf.quint8, tf.qint32, tf.bfloat16, tf.uint16, tf.complex128, tf.half, tf.uint32, tf.uint64`.
		    The type of the value being accumulated.
		  shape: A `tf.TensorShape` or list of `ints`. The shape of the values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this accumulator is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this accumulator will be shared under the given name
		    across multiple sessions.
		  reduction_type: An optional `string` from: `"MEAN", "SUM"`. Defaults to `"MEAN"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function sparse_conditional_accumulator(dtype:Dynamic, shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?reduction_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates sparse cross from a list of sparse and dense tensors.
		
		For example, if the inputs are
		* inputs[0]: SparseTensor with shape = [2, 2]
		  [0, 0]: "a"
		  [1, 0]: "b"
		  [1, 1]: "c"
		* inputs[1]: SparseTensor with shape = [2, 1]
		  [0, 0]: "d"
		  [1, 0]: "e"
		* inputs[2]: Tensor [["f"], ["g"]]
		
		then the output will be:
		  shape = [2, 2]
		  [0, 0]: "a_X_d_X_f"
		  [1, 0]: "b_X_e_X_g"
		  [1, 1]: "c_X_e_X_g"
		
		Args:
		  inputs: An iterable of `Tensor` or `SparseTensor`.
		  name: Optional name for the op.
		
		Returns:
		  A `SparseTensor` of type `string`.
	**/
	static public function sparse_cross(inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_cross
	**/
	static public function sparse_cross_eager_fallback(indices:Dynamic, values:Dynamic, shapes:Dynamic, dense_inputs:Dynamic, hashed_output:Dynamic, num_buckets:Dynamic, hash_key:Dynamic, out_type:Dynamic, internal_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Generates hashed sparse cross from a list of sparse and dense tensors.
		
		For example, if the inputs are
		* inputs[0]: SparseTensor with shape = [2, 2]
		  [0, 0]: "a"
		  [1, 0]: "b"
		  [1, 1]: "c"
		* inputs[1]: SparseTensor with shape = [2, 1]
		  [0, 0]: "d"
		  [1, 0]: "e"
		* inputs[2]: Tensor [["f"], ["g"]]
		
		then the output will be:
		  shape = [2, 2]
		  [0, 0]: FingerprintCat64(
		              Fingerprint64("f"), FingerprintCat64(
		                  Fingerprint64("d"), Fingerprint64("a")))
		  [1, 0]: FingerprintCat64(
		              Fingerprint64("g"), FingerprintCat64(
		                  Fingerprint64("e"), Fingerprint64("b")))
		  [1, 1]: FingerprintCat64(
		              Fingerprint64("g"), FingerprintCat64(
		                  Fingerprint64("e"), Fingerprint64("c")))
		
		Args:
		  inputs: An iterable of `Tensor` or `SparseTensor`.
		  num_buckets: An `int` that is `>= 0`.
		    output = hashed_value%num_buckets if num_buckets > 0 else hashed_value.
		  hash_key: Integer hash_key that will be used by the `FingerprintCat64`
		    function. If not given, will use a default key.
		  name: Optional name for the op.
		
		Returns:
		  A `SparseTensor` of type `int64`.
	**/
	static public function sparse_cross_hashed(inputs:Dynamic, ?num_buckets:Dynamic, ?hash_key:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds up a SparseTensor and a dense Tensor, using these special rules:
		
		(1) Broadcasts the dense side to have the same shape as the sparse side, if
		    eligible;
		(2) Then, only the dense values pointed to by the indices of the SparseTensor
		    participate in the cwise addition.
		
		By the rules, the result is a logical SparseTensor with exactly the same
		indices and shape, but possibly with different non-zero values.  The output of
		this Op is the resultant non-zero values.
		
		Args:
		  sp_t: the SparseTensor operand.
		  dense_t: the dense Tensor operand; must have the same dtype and a
		    broadcast-compatible shape as `sp_t`.
		
		Returns:
		  output: the SparseTensor output.
	**/
	static public function sparse_dense_cwise_add(sp_t:Dynamic, dense_t:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_dense_cwise_add
	**/
	static public function sparse_dense_cwise_add_eager_fallback(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Component-wise divides a SparseTensor by a dense Tensor.
		
		*Limitation*: this Op only broadcasts the dense side to the sparse side, but not
		the other direction.
		
		Args:
		  sp_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, possibly not in canonical ordering.
		  sp_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D.  `N` non-empty values corresponding to `sp_indices`.
		  sp_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  dense: A `Tensor`. Must have the same type as `sp_values`.
		    `R`-D.  The dense Tensor operand.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `sp_values`.
	**/
	static public function sparse_dense_cwise_div(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_dense_cwise_div
	**/
	static public function sparse_dense_cwise_div_eager_fallback(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Component-wise multiplies a SparseTensor by a dense Tensor.
		
		The output locations corresponding to the implicitly zero elements in the sparse
		tensor will be zero (i.e., will not take up storage space), regardless of the
		contents of the dense tensor (even if it's +/-INF and that INF*0 == NaN).
		
		*Limitation*: this Op only broadcasts the dense side to the sparse side, but not
		the other direction.
		
		Args:
		  sp_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, possibly not in canonical ordering.
		  sp_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D.  `N` non-empty values corresponding to `sp_indices`.
		  sp_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  dense: A `Tensor`. Must have the same type as `sp_values`.
		    `R`-D.  The dense Tensor operand.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `sp_values`.
	**/
	static public function sparse_dense_cwise_mul(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_dense_cwise_mul
	**/
	static public function sparse_dense_cwise_mul_eager_fallback(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, dense:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Inserts a dimension of 1 into a tensor's shape.
		
		Given a tensor `sp_input`, this operation inserts a dimension of 1 at the
		dimension index `axis` of `sp_input`'s shape. The dimension index `axis`
		starts at zero; if you specify a negative number for `axis` it is counted
		backwards from the end.
		
		Args:
		  sp_input: A `SparseTensor`.
		  axis: 0-D (scalar). Specifies the dimension index at which to expand the
		    shape of `input`. Must be in the range `[-rank(sp_input) - 1,
		    rank(sp_input)]`.
		  name: The name of the output `SparseTensor`.
		
		Returns:
		  A `SparseTensor` with the same data as `sp_input`, but its shape has an
		  additional dimension of size 1 added.
	**/
	static public function sparse_expand_dims(sp_input:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a two-dimensional sparse tensor with ones along the diagonal.
		
		Args:
		  num_rows: Non-negative integer or `int32` scalar `tensor` giving the number
		    of rows in the resulting matrix.
		  num_columns: Optional non-negative integer or `int32` scalar `tensor` giving
		    the number of columns in the resulting matrix. Defaults to `num_rows`.
		  dtype: The type of element in the resulting `Tensor`.
		  name: A name for this `Op`. Defaults to "eye".
		
		Returns:
		  A `SparseTensor` of shape [num_rows, num_columns] with ones along the
		  diagonal.
	**/
	static public function sparse_eye(num_rows:Dynamic, ?num_columns:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Fills empty rows in the input 2-D `SparseTensor` with a default value.
		
		This op adds entries with the specified `default_value` at index
		`[row, 0]` for any row in the input that does not already have a value.
		
		For example, suppose `sp_input` has shape `[5, 6]` and non-empty values:
		
		    [0, 1]: a
		    [0, 3]: b
		    [2, 0]: c
		    [3, 1]: d
		
		Rows 1 and 4 are empty, so the output will be of shape `[5, 6]` with values:
		
		    [0, 1]: a
		    [0, 3]: b
		    [1, 0]: default_value
		    [2, 0]: c
		    [3, 1]: d
		    [4, 0]: default_value
		
		Note that the input may have empty columns at the end, with no effect on
		this op.
		
		The output `SparseTensor` will be in row-major order and will have the
		same shape as the input.
		
		This op also returns an indicator vector such that
		
		    empty_row_indicator[i] = True iff row i was an empty row.
		
		Args:
		  sp_input: A `SparseTensor` with shape `[N, M]`.
		  default_value: The value to fill for empty rows, with the same type as
		    `sp_input.`
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  sp_ordered_output: A `SparseTensor` with shape `[N, M]`, and with all empty
		    rows filled in with `default_value`.
		  empty_row_indicator: A bool vector of length `N` indicating whether each
		    input row was empty.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_fill_empty_rows(sp_input:Dynamic, default_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_fill_empty_rows
	**/
	static public function sparse_fill_empty_rows_eager_fallback(indices:Dynamic, values:Dynamic, dense_shape:Dynamic, default_value:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		The gradient of SparseFillEmptyRows.
		
		Takes vectors reverse_index_map, shaped `[N]`, and grad_values,
		shaped `[N_full]`, where `N_full >= N` and copies data into either
		`d_values` or `d_default_value`.  Here `d_values` is shaped `[N]` and
		`d_default_value` is a scalar.
		
		  d_values[j] = grad_values[reverse_index_map[j]]
		  d_default_value = sum_{k : 0 .. N_full - 1} (
		     grad_values[k] * 1{k not in reverse_index_map})
		
		Args:
		  reverse_index_map: A `Tensor` of type `int64`.
		    1-D.  The reverse index map from SparseFillEmptyRows.
		  grad_values: A `Tensor`. 1-D.  The gradients from backprop.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (d_values, d_default_value).
		
		  d_values: A `Tensor`. Has the same type as `grad_values`.
		  d_default_value: A `Tensor`. Has the same type as `grad_values`.
	**/
	static public function sparse_fill_empty_rows_grad(reverse_index_map:Dynamic, grad_values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_fill_empty_rows_grad
	**/
	static public function sparse_fill_empty_rows_grad_eager_fallback(reverse_index_map:Dynamic, grad_values:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Masks elements of `IndexedSlices`.
		
		Given an `IndexedSlices` instance `a`, returns another `IndexedSlices` that
		contains a subset of the slices of `a`. Only the slices at indices not
		specified in `mask_indices` are returned.
		
		This is useful when you need to extract a subset of slices in an
		`IndexedSlices` object.
		
		For example:
		
		```python
		# `a` contains slices at indices [12, 26, 37, 45] from a large tensor
		# with shape [1000, 10]
		a.indices  # [12, 26, 37, 45]
		tf.shape(a.values)  # [4, 10]
		
		# `b` will be the subset of `a` slices at its second and third indices, so
		# we want to mask its first and last indices (which are at absolute
		# indices 12, 45)
		b = tf.sparse.mask(a, [12, 45])
		
		b.indices  # [26, 37]
		tf.shape(b.values)  # [2, 10]
		```
		
		Args:
		  a: An `IndexedSlices` instance.
		  mask_indices: Indices of elements to mask.
		  name: A name for the operation (optional).
		
		Returns:
		  The masked `IndexedSlices` instance.
	**/
	static public function sparse_mask(a:Dynamic, mask_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiply matrix "a" by matrix "b".
		
		The inputs must be two-dimensional matrices and the inner dimension of "a" must
		match the outer dimension of "b". Both "a" and "b" must be `Tensor`s not
		`SparseTensor`s.  This op is optimized for the case where at least one of "a" or
		"b" is sparse, in the sense that they have a large proportion of zero values.
		The breakeven for using this versus a dense matrix multiply on one platform was
		30% zero values in the sparse matrix.
		
		The gradient computation of this operation will only take advantage of sparsity
		in the input gradient when that gradient comes from a Relu.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `bfloat16`.
		  b: A `Tensor`. Must be one of the following types: `float32`, `bfloat16`.
		  transpose_a: An optional `bool`. Defaults to `False`.
		  transpose_b: An optional `bool`. Defaults to `False`.
		  a_is_sparse: An optional `bool`. Defaults to `False`.
		  b_is_sparse: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function sparse_mat_mul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_mat_mul
	**/
	static public function sparse_mat_mul_eager_fallback(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Multiply matrix "a" by matrix "b".
		
		The inputs must be two-dimensional matrices and the inner dimension of "a" must
		match the outer dimension of "b". Both "a" and "b" must be `Tensor`s not
		`SparseTensor`s.  This op is optimized for the case where at least one of "a" or
		"b" is sparse, in the sense that they have a large proportion of zero values.
		The breakeven for using this versus a dense matrix multiply on one platform was
		30% zero values in the sparse matrix.
		
		The gradient computation of this operation will only take advantage of sparsity
		in the input gradient when that gradient comes from a Relu.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `bfloat16`.
		  b: A `Tensor`. Must be one of the following types: `float32`, `bfloat16`.
		  transpose_a: An optional `bool`. Defaults to `False`.
		  transpose_b: An optional `bool`. Defaults to `False`.
		  a_is_sparse: An optional `bool`. Defaults to `False`.
		  b_is_sparse: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function sparse_matmul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the element-wise max of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		Example:
		
		```python
		sp_zero = sparse_tensor.SparseTensor([[0]], [0], [7])
		sp_one = sparse_tensor.SparseTensor([[1]], [1], [7])
		res = tf.sparse_maximum(sp_zero, sp_one).eval()
		# "res" should be equal to SparseTensor([[0], [1]], [0, 1], [7]).
		```
		
		Args:
		  sp_a: a `SparseTensor` operand whose dtype is real, and indices
		    lexicographically ordered.
		  sp_b: the other `SparseTensor` operand with the same requirements (and the
		    same shape).
		  name: optional name of the operation.
		Returns:
		  output: the output SparseTensor.
	**/
	static public function sparse_maximum(sp_a:Dynamic, sp_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Combines a batch of feature ids and values into a single `SparseTensor`.
		
		The most common use case for this function occurs when feature ids and
		their corresponding values are stored in `Example` protos on disk.
		`parse_example` will return a batch of ids and a batch of values, and this
		function joins them into a single logical `SparseTensor` for use in
		functions such as `sparse_tensor_dense_matmul`, `sparse_to_dense`, etc.
		
		The `SparseTensor` returned by this function has the following properties:
		
		  - `indices` is equivalent to `sp_ids.indices` with the last
		    dimension discarded and replaced with `sp_ids.values`.
		  - `values` is simply `sp_values.values`.
		  - If `sp_ids.dense_shape = [D0, D1, ..., Dn, K]`, then
		    `output.shape = [D0, D1, ..., Dn, vocab_size]`.
		
		For example, consider the following feature vectors:
		
		```python
		  vector1 = [-3, 0, 0, 0, 0, 0]
		  vector2 = [ 0, 1, 0, 4, 1, 0]
		  vector3 = [ 5, 0, 0, 9, 0, 0]
		```
		
		These might be stored sparsely in the following Example protos by storing
		only the feature ids (column number if the vectors are treated as a matrix)
		of the non-zero elements and the corresponding values:
		
		```python
		  examples = [Example(features={
		                  "ids": Feature(int64_list=Int64List(value=[0])),
		                  "values": Feature(float_list=FloatList(value=[-3]))}),
		              Example(features={
		                  "ids": Feature(int64_list=Int64List(value=[1, 4, 3])),
		                  "values": Feature(float_list=FloatList(value=[1, 1, 4]))}),
		              Example(features={
		                  "ids": Feature(int64_list=Int64List(value=[0, 3])),
		                  "values": Feature(float_list=FloatList(value=[5, 9]))})]
		```
		
		The result of calling parse_example on these examples will produce a
		dictionary with entries for "ids" and "values". Passing those two objects
		to this function along with vocab_size=6, will produce a `SparseTensor` that
		sparsely represents all three instances. Namely, the `indices` property will
		contain the coordinates of the non-zero entries in the feature matrix (the
		first dimension is the row number in the matrix, i.e., the index within the
		batch, and the second dimension is the column number, i.e., the feature id);
		`values` will contain the actual values. `shape` will be the shape of the
		original matrix, i.e., (3, 6). For our example above, the output will be
		equal to:
		
		```python
		  SparseTensor(indices=[[0, 0], [1, 1], [1, 3], [1, 4], [2, 0], [2, 3]],
		               values=[-3, 1, 4, 1, 5, 9],
		               dense_shape=[3, 6])
		```
		
		This method generalizes to higher-dimensions by simply providing a list for
		both the sp_ids as well as the vocab_size.
		In this case the resulting `SparseTensor` has the following properties:
		  - `indices` is equivalent to `sp_ids[0].indices` with the last
		    dimension discarded and concatenated with
		    `sp_ids[0].values, sp_ids[1].values, ...`.
		  - `values` is simply `sp_values.values`.
		  - If `sp_ids.dense_shape = [D0, D1, ..., Dn, K]`, then
		    `output.shape = [D0, D1, ..., Dn] + vocab_size`.
		
		Args:
		  sp_ids: A single `SparseTensor` with `values` property of type `int32`
		    or `int64` or a Python list of such `SparseTensor`s or a list thereof.
		  sp_values: A `SparseTensor` of any type.
		  vocab_size: A scalar `int64` Tensor (or Python int) containing the new size
		    of the last dimension, `all(0 <= sp_ids.values < vocab_size)`.
		    Or a list thereof with `all(0 <= sp_ids[i].values < vocab_size[i])` for
		    all `i`.
		  name: A name prefix for the returned tensors (optional)
		  already_sorted: A boolean to specify whether the per-batch values in
		   `sp_values` are already sorted. If so skip sorting, False by default
		   (optional).
		
		Returns:
		  A `SparseTensor` compactly representing a batch of feature ids and values,
		  useful for passing to functions that expect such a `SparseTensor`.
		
		Raises:
		  TypeError: If `sp_values` is not a `SparseTensor`. Or if `sp_ids` is neither
		    a `SparseTensor` nor a list thereof. Or if `vocab_size` is not a
		    `Tensor` or a Python int and `sp_ids` is a `SparseTensor`. Or if
		    `vocab_size` is not a or list thereof and `sp_ids` is a list.
		  ValueError: If `sp_ids` and `vocab_size` are lists of different lengths.
	**/
	static public function sparse_merge(sp_ids:Dynamic, sp_values:Dynamic, vocab_size:Dynamic, ?name:Dynamic, ?already_sorted:Dynamic):Dynamic;
	/**
		Returns the element-wise min of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		Example:
		
		```python
		sp_zero = sparse_tensor.SparseTensor([[0]], [0], [7])
		sp_one = sparse_tensor.SparseTensor([[1]], [1], [7])
		res = tf.sparse_minimum(sp_zero, sp_one).eval()
		# "res" should be equal to SparseTensor([[0], [1]], [0, 0], [7]).
		```
		
		Args:
		  sp_a: a `SparseTensor` operand whose dtype is real, and indices
		    lexicographically ordered.
		  sp_b: the other `SparseTensor` operand with the same requirements (and the
		    same shape).
		  name: optional name of the operation.
		Returns:
		  output: the output SparseTensor.
	**/
	static public function sparse_minimum(sp_a:Dynamic, sp_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inserts a placeholder for a sparse tensor that will be always fed.
		
		**Important**: This sparse tensor will produce an error if evaluated.
		Its value must be fed using the `feed_dict` optional argument to
		`Session.run()`, `Tensor.eval()`, or `Operation.run()`.
		
		For example:
		
		```python
		x = tf.sparse.placeholder(tf.float32)
		y = tf.sparse.reduce_sum(x)
		
		with tf.Session() as sess:
		  print(sess.run(y))  # ERROR: will fail because x was not fed.
		
		  indices = np.array([[3, 2, 0], [4, 5, 1]], dtype=np.int64)
		  values = np.array([1.0, 2.0], dtype=np.float32)
		  shape = np.array([7, 9, 2], dtype=np.int64)
		  print(sess.run(y, feed_dict={
		    x: tf.SparseTensorValue(indices, values, shape)}))  # Will succeed.
		  print(sess.run(y, feed_dict={
		    x: (indices, values, shape)}))  # Will succeed.
		
		  sp = tf.SparseTensor(indices=indices, values=values, dense_shape=shape)
		  sp_value = sp.eval(session=sess)
		  print(sess.run(y, feed_dict={x: sp_value}))  # Will succeed.
		```
		
		@compatibility{eager} Placeholders are not compatible with eager execution.
		
		Args:
		  dtype: The type of `values` elements in the tensor to be fed.
		  shape: The shape of the tensor to be fed (optional). If the shape is not
		    specified, you can feed a sparse tensor of any shape.
		  name: A name for prefixing the operations (optional).
		
		Returns:
		  A `SparseTensor` that may be used as a handle for feeding a value, but not
		  evaluated directly.
		
		Raises:
		  RuntimeError: if eager execution is enabled
	**/
	static public function sparse_placeholder(dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the max of elements across dimensions of a SparseTensor. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		This Op takes a SparseTensor and is the sparse counterpart to
		`tf.reduce_max()`.  In particular, this Op also returns a dense `Tensor`
		instead of a sparse one.
		
		Note: A gradient is not defined for this function, so it can't be used
		in training models that need gradient descent.
		
		Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
		`keepdims` is true, the rank of the tensor is reduced by 1 for each entry in
		`reduction_axes`. If `keepdims` is true, the reduced dimensions are retained
		with length 1.
		
		If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
		with a single element is returned.  Additionally, the axes can be negative,
		similar to the indexing rules in Python.
		
		The values not defined in `sp_input` don't participate in the reduce max,
		as opposed to be implicitly assumed 0 -- hence it can return negative values
		for sparse `reduction_axes`. But, in case there are no values in
		`reduction_axes`, it will reduce to 0. See second example below.
		
		For example:
		
		```python
		# 'x' represents [[1, ?, 2]
		#                 [?, 3, ?]]
		# where ? is implicitly-zero.
		tf.sparse.reduce_max(x) ==> 3
		tf.sparse.reduce_max(x, 0) ==> [1, 3, 2]
		tf.sparse.reduce_max(x, 1) ==> [2, 3]  # Can also use -1 as the axis.
		tf.sparse.reduce_max(x, 1, keepdims=True) ==> [[2], [3]]
		tf.sparse.reduce_max(x, [0, 1]) ==> 3
		
		# 'y' represents [[-7, ?]
		#                 [ 4, 3]
		#                 [ ?, ?]
		tf.sparse.reduce_max(x, 1) ==> [-7, 4, 0]
		```
		
		Args:
		  sp_input: The SparseTensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce; list or scalar. If `None` (the
		    default), reduces all dimensions.
		  keepdims: If true, retain reduced dimensions with length 1.
		  reduction_axes: Deprecated name of axis.
		  keep_dims:  Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced Tensor.
	**/
	static public function sparse_reduce_max(sp_input:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?reduction_axes:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_reduce_max
	**/
	static public function sparse_reduce_max_eager_fallback(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the max of elements across dimensions of a SparseTensor. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		This Op takes a SparseTensor and is the sparse counterpart to
		`tf.reduce_max()`.  In contrast to SparseReduceSum, this Op returns a
		SparseTensor.
		
		Note: A gradient is not defined for this function, so it can't be used
		in training models that need gradient descent.
		
		Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
		`keepdims` is true, the rank of the tensor is reduced by 1 for each entry in
		`reduction_axes`. If `keepdims` is true, the reduced dimensions are retained
		with length 1.
		
		If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
		with a single element is returned.  Additionally, the axes can be negative,
		which are interpreted according to the indexing rules in Python.
		
		Args:
		  sp_input: The SparseTensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce; list or scalar. If `None` (the
		    default), reduces all dimensions.
		  keepdims: If true, retain reduced dimensions with length 1.
		  reduction_axes: Deprecated name of axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced SparseTensor.
	**/
	static public function sparse_reduce_max_sparse(sp_input:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?reduction_axes:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_reduce_max_sparse
	**/
	static public function sparse_reduce_max_sparse_eager_fallback(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the sum of elements across dimensions of a SparseTensor. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		This Op takes a SparseTensor and is the sparse counterpart to
		`tf.reduce_sum()`.  In particular, this Op also returns a dense `Tensor`
		instead of a sparse one.
		
		Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
		`keepdims` is true, the rank of the tensor is reduced by 1 for each entry in
		`reduction_axes`. If `keepdims` is true, the reduced dimensions are retained
		with length 1.
		
		If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
		with a single element is returned.  Additionally, the axes can be negative,
		similar to the indexing rules in Python.
		
		For example:
		
		```python
		# 'x' represents [[1, ?, 1]
		#                 [?, 1, ?]]
		# where ? is implicitly-zero.
		tf.sparse.reduce_sum(x) ==> 3
		tf.sparse.reduce_sum(x, 0) ==> [1, 1, 1]
		tf.sparse.reduce_sum(x, 1) ==> [2, 1]  # Can also use -1 as the axis.
		tf.sparse.reduce_sum(x, 1, keepdims=True) ==> [[2], [1]]
		tf.sparse.reduce_sum(x, [0, 1]) ==> 3
		```
		
		Args:
		  sp_input: The SparseTensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce; list or scalar. If `None` (the
		    default), reduces all dimensions.
		  keepdims: If true, retain reduced dimensions with length 1.
		  reduction_axes: Deprecated name of axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced Tensor.
	**/
	static public function sparse_reduce_sum(sp_input:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?reduction_axes:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_reduce_sum
	**/
	static public function sparse_reduce_sum_eager_fallback(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the sum of elements across dimensions of a SparseTensor. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		This Op takes a SparseTensor and is the sparse counterpart to
		`tf.reduce_sum()`.  In contrast to SparseReduceSum, this Op returns a
		SparseTensor.
		
		Note: A gradient is not defined for this function, so it can't be used
		in training models that need gradient descent.
		
		Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
		`keepdims` is true, the rank of the tensor is reduced by 1 for each entry in
		`reduction_axes`. If `keepdims` is true, the reduced dimensions are retained
		with length 1.
		
		If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
		with a single element is returned.  Additionally, the axes can be negative,
		which are interpreted according to the indexing rules in Python.
		
		Args:
		  sp_input: The SparseTensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce; list or scalar. If `None` (the
		    default), reduces all dimensions.
		  keepdims: If true, retain reduced dimensions with length 1.
		  reduction_axes: Deprecated name of axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced SparseTensor.
	**/
	static public function sparse_reduce_sum_sparse(sp_input:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?reduction_axes:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_reduce_sum_sparse
	**/
	static public function sparse_reduce_sum_sparse_eager_fallback(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, reduction_axes:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Reorders a `SparseTensor` into the canonical, row-major ordering.
		
		Note that by convention, all sparse ops preserve the canonical ordering
		along increasing dimension number. The only time ordering can be violated
		is during manual manipulation of the indices and values to add entries.
		
		Reordering does not affect the shape of the `SparseTensor`.
		
		For example, if `sp_input` has shape `[4, 5]` and `indices` / `values`:
		
		    [0, 3]: b
		    [0, 1]: a
		    [3, 1]: d
		    [2, 0]: c
		
		then the output will be a `SparseTensor` of shape `[4, 5]` and
		`indices` / `values`:
		
		    [0, 1]: a
		    [0, 3]: b
		    [2, 0]: c
		    [3, 1]: d
		
		Args:
		  sp_input: The input `SparseTensor`.
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A `SparseTensor` with the same shape and non-empty values, but in
		  canonical ordering.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_reorder(sp_input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_reorder
	**/
	static public function sparse_reorder_eager_fallback(input_indices:Dynamic, input_values:Dynamic, input_shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Resets the shape of a `SparseTensor` with indices and values unchanged.
		
		If `new_shape` is None, returns a copy of `sp_input` with its shape reset
		to the tight bounding box of `sp_input`. This will be a shape consisting of
		all zeros if sp_input has no values.
		
		If `new_shape` is provided, then it must be larger or equal in all dimensions
		compared to the shape of `sp_input`. When this condition is met, the returned
		SparseTensor will have its shape reset to `new_shape` and its indices and
		values unchanged from that of `sp_input.`
		
		For example:
		
		  Consider a `sp_input` with shape [2, 3, 5]:
		
		    [0, 0, 1]: a
		    [0, 1, 0]: b
		    [0, 2, 2]: c
		    [1, 0, 3]: d
		
		  - It is an error to set `new_shape` as [3, 7] since this represents a
		    rank-2 tensor while `sp_input` is rank-3. This is either a ValueError
		    during graph construction (if both shapes are known) or an OpError during
		    run time.
		
		  - Setting `new_shape` as [2, 3, 6] will be fine as this shape is larger or
		    equal in every dimension compared to the original shape [2, 3, 5].
		
		  - On the other hand, setting new_shape as [2, 3, 4] is also an error: The
		    third dimension is smaller than the original shape [2, 3, 5] (and an
		    `InvalidArgumentError` will be raised).
		
		  - If `new_shape` is None, the returned SparseTensor will have a shape
		    [2, 3, 4], which is the tight bounding box of `sp_input`.
		
		Args:
		  sp_input: The input `SparseTensor`.
		  new_shape: None or a vector representing the new shape for the returned
		    `SparseTensor`.
		
		Returns:
		  A `SparseTensor` indices and values unchanged from `input_sp`. Its shape is
		    `new_shape` if that is set. Otherwise it is the tight bounding box of
		     `input_sp`
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
		  ValueError: If `new_shape` represents a tensor with a different rank from
		    that of `sp_input` (if shapes are known when graph is constructed).
		  ValueError:  If `new_shape` is determined during graph build to have
		    dimension sizes that are too small.
		  OpError:
		    - If `new_shape` has dimension sizes that are too small.
		    - If shapes are not known during graph construction time, and during run
		      time it is found out that the ranks do not match.
	**/
	static public function sparse_reset_shape(sp_input:Dynamic, ?new_shape:Dynamic):Dynamic;
	/**
		Reshapes a `SparseTensor` to represent values in a new dense shape.
		
		This operation has the same semantics as `reshape` on the represented dense
		tensor.  The indices of non-empty values in `sp_input` are recomputed based
		on the new dense shape, and a new `SparseTensor` is returned containing the
		new indices and new shape.  The order of non-empty values in `sp_input` is
		unchanged.
		
		If one component of `shape` is the special value -1, the size of that
		dimension is computed so that the total dense size remains constant.  At
		most one component of `shape` can be -1.  The number of dense elements
		implied by `shape` must be the same as the number of dense elements
		originally represented by `sp_input`.
		
		For example, if `sp_input` has shape `[2, 3, 6]` and `indices` / `values`:
		
		    [0, 0, 0]: a
		    [0, 0, 1]: b
		    [0, 1, 0]: c
		    [1, 0, 0]: d
		    [1, 2, 3]: e
		
		and `shape` is `[9, -1]`, then the output will be a `SparseTensor` of
		shape `[9, 4]` and `indices` / `values`:
		
		    [0, 0]: a
		    [0, 1]: b
		    [1, 2]: c
		    [4, 2]: d
		    [8, 1]: e
		
		Args:
		  sp_input: The input `SparseTensor`.
		  shape: A 1-D (vector) int64 `Tensor` specifying the new dense shape of the
		    represented `SparseTensor`.
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A `SparseTensor` with the same non-empty values but with indices calculated
		  by the new dense shape.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
		  ValueError:  If argument `shape` requests a `SparseTensor` with a different
		    number of elements than `sp_input`.
		  ValueError:  If `shape` has more than one inferred (== -1) dimension.
	**/
	static public function sparse_reshape(sp_input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_reshape
	**/
	static public function sparse_reshape_eager_fallback(input_indices:Dynamic, input_shape:Dynamic, new_shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retains specified non-empty values within a `SparseTensor`.
		
		For example, if `sp_input` has shape `[4, 5]` and 4 non-empty string values:
		
		    [0, 1]: a
		    [0, 3]: b
		    [2, 0]: c
		    [3, 1]: d
		
		and `to_retain = [True, False, False, True]`, then the output will
		be a `SparseTensor` of shape `[4, 5]` with 2 non-empty values:
		
		    [0, 1]: a
		    [3, 1]: d
		
		Args:
		  sp_input: The input `SparseTensor` with `N` non-empty elements.
		  to_retain: A bool vector of length `N` with `M` true values.
		
		Returns:
		  A `SparseTensor` with the same shape as the input and `M` non-empty
		  elements corresponding to the true positions in `to_retain`.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_retain(sp_input:Dynamic, to_retain:Dynamic):Dynamic;
	/**
		Computes the mean along sparse segments of a tensor.
		
		Read [the section on
		segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Like `SegmentMean`, but `segment_ids` can have rank less than `data`'s first
		dimension, selecting a subset of dimension 0, specified by `indices`.
		`segment_ids` is allowed to have missing ids, in which case the output will
		be zeros at those indices. In those cases `num_segments` is used to determine
		the size of the output.
		
		Args:
		  data: A `Tensor` with data that will be assembled in the output.
		  indices: A 1-D `Tensor` with indices into `data`. Has same rank as
		    `segment_ids`.
		  segment_ids: A 1-D `Tensor` with indices into the output `Tensor`.
		    Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		  num_segments: An optional int32 scalar. Indicates the size of the output
		    `Tensor`.
		
		Returns:
		  A `tensor` of the shape as data, except for dimension 0 which
		  has size `k`, the number of segments specified via `num_segments` or
		  inferred for the last element in `segments_ids`.
	**/
	static public function sparse_segment_mean(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?num_segments:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_segment_mean
	**/
	static public function sparse_segment_mean_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes gradients for SparseSegmentMean.
		
		Returns tensor "output" with same shape as grad, except for dimension 0 whose
		value is output_dim0.
		
		Args:
		  grad: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    gradient propagated to the SparseSegmentMean op.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    indices passed to the corresponding SparseSegmentMean op.
		  segment_ids: A `Tensor` of type `int32`.
		    segment_ids passed to the corresponding SparseSegmentMean op.
		  output_dim0: A `Tensor` of type `int32`.
		    dimension 0 of "data" passed to SparseSegmentMean op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`.
	**/
	static public function sparse_segment_mean_grad(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_segment_mean_grad
	**/
	static public function sparse_segment_mean_grad_eager_fallback(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the mean along sparse segments of a tensor.
		
		Like `SparseSegmentMean`, but allows missing ids in `segment_ids`. If an id is
		misisng, the `output` tensor at that position will be zeroed.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor` of type `int32`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Should equal the number of distinct segment IDs.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function sparse_segment_mean_with_num_segments(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_segment_mean_with_num_segments
	**/
	static public function sparse_segment_mean_with_num_segments_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor divided by the sqrt(N).
		
		`N` is the size of the segment being reduced.
		
		Args:
		  data: A `Tensor` with data that will be assembled in the output.
		  indices: A 1-D `Tensor` with indices into `data`. Has same rank as
		    `segment_ids`.
		  segment_ids: A 1-D `Tensor` with indices into the output `Tensor`.
		    Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		  num_segments: An optional int32 scalar. Indicates the size of the output
		    `Tensor`.
		
		Returns:
		  A `tensor` of the shape as data, except for dimension 0 which
		  has size `k`, the number of segments specified via `num_segments` or
		  inferred for the last element in `segments_ids`.
	**/
	static public function sparse_segment_sqrt_n(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?num_segments:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_segment_sqrt_n
	**/
	static public function sparse_segment_sqrt_n_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes gradients for SparseSegmentSqrtN.
		
		Returns tensor "output" with same shape as grad, except for dimension 0 whose
		value is output_dim0.
		
		Args:
		  grad: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    gradient propagated to the SparseSegmentSqrtN op.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    indices passed to the corresponding SparseSegmentSqrtN op.
		  segment_ids: A `Tensor` of type `int32`.
		    segment_ids passed to the corresponding SparseSegmentSqrtN op.
		  output_dim0: A `Tensor` of type `int32`.
		    dimension 0 of "data" passed to SparseSegmentSqrtN op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`.
	**/
	static public function sparse_segment_sqrt_n_grad(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_segment_sqrt_n_grad
	**/
	static public function sparse_segment_sqrt_n_grad_eager_fallback(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor divided by the sqrt of N.
		
		N is the size of the segment being reduced.
		
		Like `SparseSegmentSqrtN`, but allows missing ids in `segment_ids`. If an id is
		misisng, the `output` tensor at that position will be zeroed.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor` of type `int32`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Should equal the number of distinct segment IDs.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function sparse_segment_sqrt_n_with_num_segments(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_segment_sqrt_n_with_num_segments
	**/
	static public function sparse_segment_sqrt_n_with_num_segments_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor.
		
		Read [the section on
		segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Like `SegmentSum`, but `segment_ids` can have rank less than `data`'s first
		dimension, selecting a subset of dimension 0, specified by `indices`.
		`segment_ids` is allowed to have missing ids, in which case the output will
		be zeros at those indices. In those cases `num_segments` is used to determine
		the size of the output.
		
		For example:
		
		```python
		c = tf.constant([[1,2,3,4], [-1,-2,-3,-4], [5,6,7,8]])
		
		# Select two rows, one segment.
		tf.sparse.segment_sum(c, tf.constant([0, 1]), tf.constant([0, 0]))
		# => [[0 0 0 0]]
		
		# Select two rows, two segment.
		tf.sparse.segment_sum(c, tf.constant([0, 1]), tf.constant([0, 1]))
		# => [[ 1  2  3  4]
		#     [-1 -2 -3 -4]]
		
		# With missing segment ids.
		tf.sparse.segment_sum(c, tf.constant([0, 1]), tf.constant([0, 2]),
		                      num_segments=4)
		# => [[ 1  2  3  4]
		#     [ 0  0  0  0]
		#     [-1 -2 -3 -4]
		#     [ 0  0  0  0]]
		
		# Select all rows, two segments.
		tf.sparse.segment_sum(c, tf.constant([0, 1, 2]), tf.constant([0, 0, 1]))
		# => [[0 0 0 0]
		#     [5 6 7 8]]
		
		# Which is equivalent to:
		tf.segment_sum(c, tf.constant([0, 0, 1]))
		```
		
		Args:
		  data: A `Tensor` with data that will be assembled in the output.
		  indices: A 1-D `Tensor` with indices into `data`. Has same rank as
		    `segment_ids`.
		  segment_ids: A 1-D `Tensor` with indices into the output `Tensor`.
		    Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		  num_segments: An optional int32 scalar. Indicates the size of the output
		    `Tensor`.
		
		Returns:
		  A `tensor` of the shape as data, except for dimension 0 which
		  has size `k`, the number of segments specified via `num_segments` or
		  inferred for the last element in `segments_ids`.
	**/
	static public function sparse_segment_sum(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?num_segments:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_segment_sum
	**/
	static public function sparse_segment_sum_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor.
		
		Like `SparseSegmentSum`, but allows missing ids in `segment_ids`. If an id is
		misisng, the `output` tensor at that position will be zeroed.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		For example:
		
		```python
		c = tf.constant([[1,2,3,4], [-1,-2,-3,-4], [5,6,7,8]])
		
		tf.sparse_segment_sum_with_num_segments(
		    c, tf.constant([0, 1]), tf.constant([0, 0]), num_segments=3)
		# => [[0 0 0 0]
		#     [0 0 0 0]
		#     [0 0 0 0]]
		
		tf.sparse_segment_sum_with_num_segments(c,
		                                        tf.constant([0, 1]),
		                                        tf.constant([0, 2],
		                                        num_segments=4))
		# => [[ 1  2  3  4]
		#     [ 0  0  0  0]
		#     [-1 -2 -3 -4]
		#     [ 0  0  0  0]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor` of type `int32`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Should equal the number of distinct segment IDs.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function sparse_segment_sum_with_num_segments(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_segment_sum_with_num_segments
	**/
	static public function sparse_segment_sum_with_num_segments_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Slice a `SparseTensor` based on the `start` and `size.
		
		For example, if the input is
		
		    input_tensor = shape = [2, 7]
		    [    a   d e  ]
		    [b c          ]
		
		Graphically the output tensors are:
		
		    sparse.slice([0, 0], [2, 4]) = shape = [2, 4]
		    [    a  ]
		    [b c    ]
		
		    sparse.slice([0, 4], [2, 3]) = shape = [2, 3]
		    [ d e  ]
		    [      ]
		
		Args:
		  sp_input: The `SparseTensor` to split.
		  start: 1-D. tensor represents the start of the slice.
		  size: 1-D. tensor represents the size of the slice.
		  name: A name for the operation (optional).
		
		Returns:
		  A `SparseTensor` objects resulting from splicing.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_slice(sp_input:Dynamic, start:Dynamic, size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_slice
	**/
	static public function sparse_slice_eager_fallback(indices:Dynamic, values:Dynamic, shape:Dynamic, start:Dynamic, size:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		The gradient operator for the SparseSlice op.
		
		This op takes in the upstream gradient w.r.t. non-empty values of
		the sliced `SparseTensor`, and outputs the gradients w.r.t.
		the non-empty values of input `SparseTensor`.
		
		Args:
		  backprop_val_grad: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D. The gradient with respect to
		    the non-empty values of the sliced `SparseTensor`.
		  input_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the input `SparseTensor`.
		  input_start: A `Tensor` of type `int64`.
		    1-D. tensor represents the start of the slice.
		  output_indices: A `Tensor` of type `int64`.
		    2-D.  The `indices` of the sliced `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `backprop_val_grad`.
	**/
	static public function sparse_slice_grad(backprop_val_grad:Dynamic, input_indices:Dynamic, input_start:Dynamic, output_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_slice_grad
	**/
	static public function sparse_slice_grad_eager_fallback(backprop_val_grad:Dynamic, input_indices:Dynamic, input_start:Dynamic, output_indices:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Applies softmax to a batched N-D `SparseTensor`.
		
		The inputs represent an N-D SparseTensor with logical shape `[..., B, C]`
		(where `N >= 2`), and with indices sorted in the canonical lexicographic
		order.
		
		This op is equivalent to applying the normal `tf.nn.softmax()` to each
		innermost logical submatrix with shape `[B, C]`, but with the catch that *the
		implicitly zero elements do not participate*.  Specifically, the algorithm is
		equivalent to:
		
		  (1) Applies `tf.nn.softmax()` to a densified view of each innermost
		      submatrix with shape `[B, C]`, along the size-C dimension;
		  (2) Masks out the original implicitly-zero locations;
		  (3) Renormalizes the remaining elements.
		
		Hence, the `SparseTensor` result has exactly the same non-zero indices and
		shape.
		
		Example:
		
		```python
		# First batch:
		# [?   e.]
		# [1.  ? ]
		# Second batch:
		# [e   ? ]
		# [e   e ]
		shape = [2, 2, 2]  # 3-D SparseTensor
		values = np.asarray([[[0., np.e], [1., 0.]], [[np.e, 0.], [np.e, np.e]]])
		indices = np.vstack(np.where(values)).astype(np.int64).T
		
		result = tf.sparse_softmax(tf.SparseTensor(indices, values, shape))
		# ...returning a 3-D SparseTensor, equivalent to:
		# [?   1.]     [1    ?]
		# [1.  ? ] and [.5  .5]
		# where ? means implicitly zero.
		```
		
		Args:
		  sp_input: N-D `SparseTensor`, where `N >= 2`.
		  name: optional name of the operation.
		Returns:
		  output: N-D `SparseTensor` representing the results.
	**/
	static public function sparse_softmax(sp_input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_softmax
	**/
	static public function sparse_softmax_eager_fallback(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the element-wise max of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		
		Args:
		  a_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, in the canonical lexicographic ordering.
		  a_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    1-D.  `N` non-empty values corresponding to `a_indices`.
		  a_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  b_indices: A `Tensor` of type `int64`.
		    counterpart to `a_indices` for the other operand.
		  b_values: A `Tensor`. Must have the same type as `a_values`.
		    counterpart to `a_values` for the other operand; must be of the same dtype.
		  b_shape: A `Tensor` of type `int64`.
		    counterpart to `a_shape` for the other operand; the two shapes must be equal.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `a_values`.
	**/
	static public function sparse_sparse_maximum(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_sparse_maximum
	**/
	static public function sparse_sparse_maximum_eager_fallback(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the element-wise min of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		
		Args:
		  a_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, in the canonical lexicographic ordering.
		  a_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D.  `N` non-empty values corresponding to `a_indices`.
		  a_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  b_indices: A `Tensor` of type `int64`.
		    counterpart to `a_indices` for the other operand.
		  b_values: A `Tensor`. Must have the same type as `a_values`.
		    counterpart to `a_values` for the other operand; must be of the same dtype.
		  b_shape: A `Tensor` of type `int64`.
		    counterpart to `a_shape` for the other operand; the two shapes must be equal.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values).
		
		  output_indices: A `Tensor` of type `int64`.
		  output_values: A `Tensor`. Has the same type as `a_values`.
	**/
	static public function sparse_sparse_minimum(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_sparse_minimum
	**/
	static public function sparse_sparse_minimum_eager_fallback(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b_indices:Dynamic, b_values:Dynamic, b_shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Split a `SparseTensor` into `num_split` tensors along `axis`. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		split_dim is deprecated, use axis instead
		
		If the `sp_input.dense_shape[axis]` is not an integer multiple of `num_split`
		each slice starting from 0:`shape[axis] % num_split` gets extra one
		dimension. For example, if `axis = 1` and `num_split = 2` and the
		input is:
		
		    input_tensor = shape = [2, 7]
		    [    a   d e  ]
		    [b c          ]
		
		Graphically the output tensors are:
		
		    output_tensor[0] =
		    [    a ]
		    [b c   ]
		
		    output_tensor[1] =
		    [ d e  ]
		    [      ]
		
		Args:
		  keyword_required: Python 2 standin for * (temporary for argument reorder)
		  sp_input: The `SparseTensor` to split.
		  num_split: A Python integer. The number of ways to split.
		  axis: A 0-D `int32` `Tensor`. The dimension along which to split.
		  name: A name for the operation (optional).
		  split_dim: Deprecated old name for axis.
		
		Returns:
		  `num_split` `SparseTensor` objects resulting from splitting `value`.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
		  ValueError: If the deprecated `split_dim` and `axis` are both non None.
	**/
	static public function sparse_split(?keyword_required:Dynamic, ?sp_input:Dynamic, ?num_split:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?split_dim:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_split
	**/
	static public function sparse_split_eager_fallback(split_dim:Dynamic, indices:Dynamic, values:Dynamic, shape:Dynamic, num_split:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Adds up a `SparseTensor` and a dense `Tensor`, producing a dense `Tensor`.
		
		This Op does not require `a_indices` be sorted in standard lexicographic order.
		
		Args:
		  a_indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D.  The `indices` of the `SparseTensor`, with shape `[nnz, ndims]`.
		  a_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D.  The `values` of the `SparseTensor`, with shape `[nnz]`.
		  a_shape: A `Tensor`. Must have the same type as `a_indices`.
		    1-D.  The `shape` of the `SparseTensor`, with shape `[ndims]`.
		  b: A `Tensor`. Must have the same type as `a_values`.
		    `ndims`-D Tensor.  With shape `a_shape`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a_values`.
	**/
	static public function sparse_tensor_dense_add(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_tensor_dense_add
	**/
	static public function sparse_tensor_dense_add_eager_fallback(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Multiply SparseTensor (of rank 2) "A" by dense matrix "B".
		
		No validity checking is performed on the indices of A.  However, the following
		input format is recommended for optimal behavior:
		
		if adjoint_a == false:
		  A should be sorted in lexicographically increasing order.  Use SparseReorder
		  if you're not sure.
		if adjoint_a == true:
		  A should be sorted in order of increasing dimension 1 (i.e., "column major"
		  order instead of "row major" order).
		
		Args:
		  a_indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D.  The `indices` of the `SparseTensor`, size `[nnz, 2]` Matrix.
		  a_values: A `Tensor`.
		    1-D.  The `values` of the `SparseTensor`, size `[nnz]` Vector.
		  a_shape: A `Tensor` of type `int64`.
		    1-D.  The `shape` of the `SparseTensor`, size `[2]` Vector.
		  b: A `Tensor`. Must have the same type as `a_values`.
		    2-D.  A dense Matrix.
		  adjoint_a: An optional `bool`. Defaults to `False`.
		    Use the adjoint of A in the matrix multiply.  If A is complex, this
		    is transpose(conj(A)).  Otherwise it's transpose(A).
		  adjoint_b: An optional `bool`. Defaults to `False`.
		    Use the adjoint of B in the matrix multiply.  If B is complex, this
		    is transpose(conj(B)).  Otherwise it's transpose(B).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a_values`.
	**/
	static public function sparse_tensor_dense_mat_mul(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_tensor_dense_mat_mul
	**/
	static public function sparse_tensor_dense_mat_mul_eager_fallback(a_indices:Dynamic, a_values:Dynamic, a_shape:Dynamic, b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Multiply SparseTensor (of rank 2) "A" by dense matrix "B".
		
		No validity checking is performed on the indices of `A`.  However, the
		following input format is recommended for optimal behavior:
		
		* If `adjoint_a == false`: `A` should be sorted in lexicographically
		  increasing order.  Use `sparse.reorder` if you're not sure.
		* If `adjoint_a == true`: `A` should be sorted in order of increasing
		  dimension 1 (i.e., "column major" order instead of "row major" order).
		
		Using `tf.nn.embedding_lookup_sparse` for sparse multiplication:
		
		It's not obvious but you can consider `embedding_lookup_sparse` as another
		sparse and dense multiplication. In some situations, you may prefer to use
		`embedding_lookup_sparse` even though you're not dealing with embeddings.
		
		There are two questions to ask in the decision process: Do you need gradients
		computed as sparse too? Is your sparse data represented as two
		`SparseTensor`s: ids and values? There is more explanation about data format
		below. If you answer any of these questions as yes, consider using
		`tf.nn.embedding_lookup_sparse`.
		
		Following explains differences between the expected SparseTensors:
		For example if dense form of your sparse data has shape `[3, 5]` and values:
		
		    [[  a      ]
		     [b       c]
		     [    d    ]]
		
		
		`SparseTensor` format expected by `sparse_tensor_dense_matmul`:
		 `sp_a` (indices, values):
		
		    [0, 1]: a
		    [1, 0]: b
		    [1, 4]: c
		    [2, 2]: d
		
		`SparseTensor` format expected by `embedding_lookup_sparse`:
		 `sp_ids`                 `sp_weights`
		
		    [0, 0]: 1                [0, 0]: a
		    [1, 0]: 0                [1, 0]: b
		    [1, 1]: 4                [1, 1]: c
		    [2, 0]: 2                [2, 0]: d
		
		
		Deciding when to use `sparse_tensor_dense_matmul` vs.
		`matmul`(a_is_sparse=True):
		
		There are a number of questions to ask in the decision process, including:
		
		* Will the SparseTensor `A` fit in memory if densified?
		* Is the column count of the product large (>> 1)?
		* Is the density of `A` larger than approximately 15%?
		
		If the answer to several of these questions is yes, consider
		converting the `SparseTensor` to a dense one and using `tf.matmul` with
		`a_is_sparse=True`.
		
		This operation tends to perform well when `A` is more sparse, if the column
		size of the product is small (e.g. matrix-vector multiplication), if
		`sp_a.dense_shape` takes on large values.
		
		Below is a rough speed comparison between `sparse_tensor_dense_matmul`,
		labeled 'sparse', and `matmul`(a_is_sparse=True), labeled 'dense'.  For
		purposes of the comparison, the time spent converting from a `SparseTensor` to
		a dense `Tensor` is not included, so it is overly conservative with respect to
		the time ratio.
		
		Benchmark system:
		CPU: Intel Ivybridge with HyperThreading (6 cores) dL1:32KB dL2:256KB dL3:12MB
		GPU: NVidia Tesla k40c
		
		Compiled with:
		`-c opt --config=cuda --copt=-mavx`
		
		```
		tensorflow/python/sparse_tensor_dense_matmul_op_test --benchmarks
		A sparse [m, k] with % nonzero values between 1% and 80%
		B dense [k, n]
		
		% nnz  n   gpu   m     k     dt(dense)     dt(sparse)   dt(sparse)/dt(dense)
		0.01   1   True  100   100   0.000221166   0.00010154   0.459112
		0.01   1   True  100   1000  0.00033858    0.000109275  0.322745
		0.01   1   True  1000  100   0.000310557   9.85661e-05  0.317385
		0.01   1   True  1000  1000  0.0008721     0.000100875  0.115669
		0.01   1   False 100   100   0.000208085   0.000107603  0.51711
		0.01   1   False 100   1000  0.000327112   9.51118e-05  0.290762
		0.01   1   False 1000  100   0.000308222   0.00010345   0.335635
		0.01   1   False 1000  1000  0.000865721   0.000101397  0.117124
		0.01   10  True  100   100   0.000218522   0.000105537  0.482958
		0.01   10  True  100   1000  0.000340882   0.000111641  0.327506
		0.01   10  True  1000  100   0.000315472   0.000117376  0.372064
		0.01   10  True  1000  1000  0.000905493   0.000123263  0.136128
		0.01   10  False 100   100   0.000221529   9.82571e-05  0.44354
		0.01   10  False 100   1000  0.000330552   0.000112615  0.340687
		0.01   10  False 1000  100   0.000341277   0.000114097  0.334324
		0.01   10  False 1000  1000  0.000819944   0.000120982  0.147549
		0.01   25  True  100   100   0.000207806   0.000105977  0.509981
		0.01   25  True  100   1000  0.000322879   0.00012921   0.400181
		0.01   25  True  1000  100   0.00038262    0.00014158   0.370035
		0.01   25  True  1000  1000  0.000865438   0.000202083  0.233504
		0.01   25  False 100   100   0.000209401   0.000104696  0.499979
		0.01   25  False 100   1000  0.000321161   0.000130737  0.407076
		0.01   25  False 1000  100   0.000377012   0.000136801  0.362856
		0.01   25  False 1000  1000  0.000861125   0.00020272   0.235413
		0.2    1   True  100   100   0.000206952   9.69219e-05  0.46833
		0.2    1   True  100   1000  0.000348674   0.000147475  0.422959
		0.2    1   True  1000  100   0.000336908   0.00010122   0.300439
		0.2    1   True  1000  1000  0.001022      0.000203274  0.198898
		0.2    1   False 100   100   0.000207532   9.5412e-05   0.459746
		0.2    1   False 100   1000  0.000356127   0.000146824  0.41228
		0.2    1   False 1000  100   0.000322664   0.000100918  0.312764
		0.2    1   False 1000  1000  0.000998987   0.000203442  0.203648
		0.2    10  True  100   100   0.000211692   0.000109903  0.519165
		0.2    10  True  100   1000  0.000372819   0.000164321  0.440753
		0.2    10  True  1000  100   0.000338651   0.000144806  0.427596
		0.2    10  True  1000  1000  0.00108312    0.000758876  0.70064
		0.2    10  False 100   100   0.000215727   0.000110502  0.512231
		0.2    10  False 100   1000  0.000375419   0.0001613    0.429653
		0.2    10  False 1000  100   0.000336999   0.000145628  0.432132
		0.2    10  False 1000  1000  0.00110502    0.000762043  0.689618
		0.2    25  True  100   100   0.000218705   0.000129913  0.594009
		0.2    25  True  100   1000  0.000394794   0.00029428   0.745402
		0.2    25  True  1000  100   0.000404483   0.0002693    0.665788
		0.2    25  True  1000  1000  0.0012002     0.00194494   1.62052
		0.2    25  False 100   100   0.000221494   0.0001306    0.589632
		0.2    25  False 100   1000  0.000396436   0.000297204  0.74969
		0.2    25  False 1000  100   0.000409346   0.000270068  0.659754
		0.2    25  False 1000  1000  0.00121051    0.00193737   1.60046
		0.5    1   True  100   100   0.000214981   9.82111e-05  0.456836
		0.5    1   True  100   1000  0.000415328   0.000223073  0.537101
		0.5    1   True  1000  100   0.000358324   0.00011269   0.314492
		0.5    1   True  1000  1000  0.00137612    0.000437401  0.317851
		0.5    1   False 100   100   0.000224196   0.000101423  0.452386
		0.5    1   False 100   1000  0.000400987   0.000223286  0.556841
		0.5    1   False 1000  100   0.000368825   0.00011224   0.304318
		0.5    1   False 1000  1000  0.00136036    0.000429369  0.31563
		0.5    10  True  100   100   0.000222125   0.000112308  0.505608
		0.5    10  True  100   1000  0.000461088   0.00032357   0.701753
		0.5    10  True  1000  100   0.000394624   0.000225497  0.571422
		0.5    10  True  1000  1000  0.00158027    0.00190898   1.20801
		0.5    10  False 100   100   0.000232083   0.000114978  0.495418
		0.5    10  False 100   1000  0.000454574   0.000324632  0.714146
		0.5    10  False 1000  100   0.000379097   0.000227768  0.600817
		0.5    10  False 1000  1000  0.00160292    0.00190168   1.18638
		0.5    25  True  100   100   0.00023429    0.000151703  0.647501
		0.5    25  True  100   1000  0.000497462   0.000598873  1.20386
		0.5    25  True  1000  100   0.000460778   0.000557038  1.20891
		0.5    25  True  1000  1000  0.00170036    0.00467336   2.74845
		0.5    25  False 100   100   0.000228981   0.000155334  0.678371
		0.5    25  False 100   1000  0.000496139   0.000620789  1.25124
		0.5    25  False 1000  100   0.00045473    0.000551528  1.21287
		0.5    25  False 1000  1000  0.00171793    0.00467152   2.71927
		0.8    1   True  100   100   0.000222037   0.000105301  0.47425
		0.8    1   True  100   1000  0.000410804   0.000329327  0.801664
		0.8    1   True  1000  100   0.000349735   0.000131225  0.375212
		0.8    1   True  1000  1000  0.00139219    0.000677065  0.48633
		0.8    1   False 100   100   0.000214079   0.000107486  0.502085
		0.8    1   False 100   1000  0.000413746   0.000323244  0.781261
		0.8    1   False 1000  100   0.000348983   0.000131983  0.378193
		0.8    1   False 1000  1000  0.00136296    0.000685325  0.50282
		0.8    10  True  100   100   0.000229159   0.00011825   0.516017
		0.8    10  True  100   1000  0.000498845   0.000532618  1.0677
		0.8    10  True  1000  100   0.000383126   0.00029935   0.781336
		0.8    10  True  1000  1000  0.00162866    0.00307312   1.88689
		0.8    10  False 100   100   0.000230783   0.000124958  0.541452
		0.8    10  False 100   1000  0.000493393   0.000550654  1.11606
		0.8    10  False 1000  100   0.000377167   0.000298581  0.791642
		0.8    10  False 1000  1000  0.00165795    0.00305103   1.84024
		0.8    25  True  100   100   0.000233496   0.000175241  0.75051
		0.8    25  True  100   1000  0.00055654    0.00102658   1.84458
		0.8    25  True  1000  100   0.000463814   0.000783267  1.68875
		0.8    25  True  1000  1000  0.00186905    0.00755344   4.04132
		0.8    25  False 100   100   0.000240243   0.000175047  0.728625
		0.8    25  False 100   1000  0.000578102   0.00104499   1.80763
		0.8    25  False 1000  100   0.000485113   0.000776849  1.60138
		0.8    25  False 1000  1000  0.00211448    0.00752736   3.55992
		```
		
		Args:
		  sp_a: SparseTensor A, of rank 2.
		  b: A dense Matrix with the same dtype as sp_a.
		  adjoint_a: Use the adjoint of A in the matrix multiply.  If A is complex,
		    this is transpose(conj(A)).  Otherwise it's transpose(A).
		  adjoint_b: Use the adjoint of B in the matrix multiply.  If B is complex,
		    this is transpose(conj(B)).  Otherwise it's transpose(B).
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A dense matrix (pseudo-code in dense np.matrix notation):
		    `A = A.H if adjoint_a else A`
		    `B = B.H if adjoint_b else B`
		    `return A*B`
	**/
	static public function sparse_tensor_dense_matmul(sp_a:Dynamic, b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a `SparseTensor` into a dense tensor.
		
		This op is a convenience wrapper around `sparse_to_dense` for `SparseTensor`s.
		
		For example, if `sp_input` has shape `[3, 5]` and non-empty string values:
		
		    [0, 1]: a
		    [0, 3]: b
		    [2, 0]: c
		
		and `default_value` is `x`, then the output will be a dense `[3, 5]`
		string tensor with values:
		
		    [[x a x b x]
		     [x x x x x]
		     [c x x x x]]
		
		Indices must be without repeats.  This is only
		tested if validate_indices is True.
		
		Args:
		  sp_input: The input `SparseTensor`.
		  default_value: Scalar value to set for indices not specified in
		    `sp_input`.  Defaults to zero.
		  validate_indices: A boolean value.  If `True`, indices are checked to make
		    sure they are sorted in lexicographic order and that there are no repeats.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A dense tensor with shape `sp_input.dense_shape` and values specified by
		  the non-empty values in `sp_input`. Indices not in `sp_input` are assigned
		  `default_value`.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_tensor_to_dense(sp_input:Dynamic, ?default_value:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a sparse representation into a dense tensor. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Create a `tf.sparse.SparseTensor` and use `tf.sparse.to_dense` instead.
		
		Builds an array `dense` with shape `output_shape` such that
		
		```python
		# If sparse_indices is scalar
		dense[i] = (i == sparse_indices ? sparse_values : default_value)
		
		# If sparse_indices is a vector, then for each i
		dense[sparse_indices[i]] = sparse_values[i]
		
		# If sparse_indices is an n by d matrix, then for each i in [0, n)
		dense[sparse_indices[i][0], ..., sparse_indices[i][d-1]] = sparse_values[i]
		```
		
		All other values in `dense` are set to `default_value`.  If `sparse_values`
		is a scalar, all sparse indices are set to this single value.
		
		Indices should be sorted in lexicographic order, and indices must not
		contain any repeats. If `validate_indices` is True, these properties
		are checked during execution.
		
		Args:
		  sparse_indices: A 0-D, 1-D, or 2-D `Tensor` of type `int32` or `int64`.
		    `sparse_indices[i]` contains the complete index where `sparse_values[i]`
		    will be placed.
		  output_shape: A 1-D `Tensor` of the same type as `sparse_indices`.  Shape
		    of the dense output tensor.
		  sparse_values: A 0-D or 1-D `Tensor`.  Values corresponding to each row of
		    `sparse_indices`, or a scalar value to be used for all sparse indices.
		  default_value: A 0-D `Tensor` of the same type as `sparse_values`.  Value
		    to set for indices not specified in `sparse_indices`.  Defaults to zero.
		  validate_indices: A boolean value.  If True, indices are checked to make
		    sure they are sorted in lexicographic order and that there are no repeats.
		  name: A name for the operation (optional).
		
		Returns:
		  Dense `Tensor` of shape `output_shape`.  Has the same type as
		  `sparse_values`.
	**/
	static public function sparse_to_dense(sparse_indices:Dynamic, output_shape:Dynamic, sparse_values:Dynamic, ?default_value:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_to_dense
	**/
	static public function sparse_to_dense_eager_fallback(sparse_indices:Dynamic, output_shape:Dynamic, sparse_values:Dynamic, default_value:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Converts a `SparseTensor` of ids into a dense bool indicator tensor.
		
		The last dimension of `sp_input.indices` is discarded and replaced with
		the values of `sp_input`.  If `sp_input.dense_shape = [D0, D1, ..., Dn, K]`,
		then `output.shape = [D0, D1, ..., Dn, vocab_size]`, where
		
		    output[d_0, d_1, ..., d_n, sp_input[d_0, d_1, ..., d_n, k]] = True
		
		and False elsewhere in `output`.
		
		For example, if `sp_input.dense_shape = [2, 3, 4]` with non-empty values:
		
		    [0, 0, 0]: 0
		    [0, 1, 0]: 10
		    [1, 0, 3]: 103
		    [1, 1, 2]: 150
		    [1, 1, 3]: 149
		    [1, 1, 4]: 150
		    [1, 2, 1]: 121
		
		and `vocab_size = 200`, then the output will be a `[2, 3, 200]` dense bool
		tensor with False everywhere except at positions
		
		    (0, 0, 0), (0, 1, 10), (1, 0, 103), (1, 1, 149), (1, 1, 150),
		    (1, 2, 121).
		
		Note that repeats are allowed in the input SparseTensor.
		This op is useful for converting `SparseTensor`s into dense formats for
		compatibility with ops that expect dense tensors.
		
		The input `SparseTensor` must be in row-major order.
		
		Args:
		  sp_input: A `SparseTensor` with `values` property of type `int32` or
		    `int64`.
		  vocab_size: A scalar int64 Tensor (or Python int) containing the new size
		    of the last dimension, `all(0 <= sp_input.values < vocab_size)`.
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A dense bool indicator tensor representing the indices with specified value.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_to_indicator(sp_input:Dynamic, vocab_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transposes a `SparseTensor`
		
		The returned tensor's dimension i will correspond to the input dimension
		`perm[i]`. If `perm` is not given, it is set to (n-1...0), where n is
		the rank of the input tensor. Hence by default, this operation performs a
		regular matrix transpose on 2-D input Tensors.
		
		For example, if `sp_input` has shape `[4, 5]` and `indices` / `values`:
		
		    [0, 3]: b
		    [0, 1]: a
		    [3, 1]: d
		    [2, 0]: c
		
		then the output will be a `SparseTensor` of shape `[5, 4]` and
		`indices` / `values`:
		
		    [0, 2]: c
		    [1, 0]: a
		    [1, 3]: d
		    [3, 0]: b
		
		Args:
		  sp_input: The input `SparseTensor`.
		  perm: A permutation of the dimensions of `sp_input`.
		  name: A name prefix for the returned tensors (optional)
		Returns:
		  A transposed `SparseTensor`.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function sparse_transpose(sp_input:Dynamic, ?perm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Splits a tensor into sub tensors.
		
		If `num_or_size_splits` is an integer type, then `value` is split
		along dimension `axis` into `num_split` smaller tensors.
		Requires that `num_split` evenly divides `value.shape[axis]`.
		
		If `num_or_size_splits` is not an integer type, it is presumed to be a Tensor
		`size_splits`, then splits `value` into `len(size_splits)` pieces. The shape
		of the `i`-th piece has the same size as the `value` except along dimension
		`axis` where the size is `size_splits[i]`.
		
		For example:
		
		```python
		# 'value' is a tensor with shape [5, 30]
		# Split 'value' into 3 tensors with sizes [4, 15, 11] along dimension 1
		split0, split1, split2 = tf.split(value, [4, 15, 11], 1)
		tf.shape(split0)  # [5, 4]
		tf.shape(split1)  # [5, 15]
		tf.shape(split2)  # [5, 11]
		# Split 'value' into 3 tensors along dimension 1
		split0, split1, split2 = tf.split(value, num_or_size_splits=3, axis=1)
		tf.shape(split0)  # [5, 10]
		```
		
		Args:
		  value: The `Tensor` to split.
		  num_or_size_splits: Either a 0-D integer `Tensor` indicating the number of
		    splits along split_dim or a 1-D integer `Tensor` containing
		    the sizes of each output tensor along split_dim. If a scalar then it must
		    evenly divide `value.shape[axis]`; otherwise the sum of sizes along the
		    split dimension must match that of the `value`.
		  axis: A 0-D `int32` `Tensor`. The dimension along which to split.
		    Must be in the range `[-rank(value), rank(value))`. Defaults to 0.
		  num: Optional, used to specify the number of outputs when it cannot be
		    inferred from the shape of `size_splits`.
		  name: A name for the operation (optional).
		
		Returns:
		  if `num_or_size_splits` is a scalar returns `num_or_size_splits` `Tensor`
		  objects; if `num_or_size_splits` is a 1-D Tensor returns
		  `num_or_size_splits.get_shape[0]` `Tensor` objects resulting from splitting
		  `value`.
		
		Raises:
		  ValueError: If `num` is unspecified and cannot be inferred.
	**/
	static public function split(value:Dynamic, num_or_size_splits:Dynamic, ?axis:Dynamic, ?num:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function split
	**/
	static public function split_eager_fallback(axis:Dynamic, value:Dynamic, num_split:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Splits a tensor into `num_split` tensors along one dimension.
		
		Args:
		  value: A `Tensor`. The tensor to split.
		  size_splits: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    list containing the sizes of each output tensor along the split
		    dimension. Must sum to the dimension of value along split_dim.
		    Can contain one -1 indicating that dimension is to be inferred.
		  axis: A `Tensor` of type `int32`.
		    0-D.  The dimension along which to split.  Must be in the range
		    `[-rank(value), rank(value))`.
		  num_split: An `int` that is `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num_split` `Tensor` objects with the same type as `value`.
	**/
	static public function split_v(value:Dynamic, size_splits:Dynamic, axis:Dynamic, num_split:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function split_v
	**/
	static public function split_v_eager_fallback(value:Dynamic, size_splits:Dynamic, axis:Dynamic, num_split:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes square root of x element-wise.
		
		I.e., \\(y = \sqrt{x} = x^{1/2}\\).
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
	**/
	static public function sqrt(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sqrt
	**/
	static public function sqrt_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the gradient for the sqrt of `x` wrt its input.
		
		Specifically, `grad = dy * 0.5 / y`, where `y = sqrt(x)`, and `dy`
		is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function sqrt_grad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sqrt_grad
	**/
	static public function sqrt_grad_eager_fallback(y:Dynamic, dy:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes square of x element-wise.
		
		I.e., \\(y = x * x = x^2\\).
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`. Has the same type as `x`.
	**/
	static public function square(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function square
	**/
	static public function square_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns (x - y)(x - y) element-wise.
		
		*NOTE*: `math.squared_difference` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function squared_difference(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function squared_difference
	**/
	static public function squared_difference_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Removes dimensions of size 1 from the shape of a tensor. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		Use the `axis` argument instead
		
		Given a tensor `input`, this operation returns a tensor of the same type with
		all dimensions of size 1 removed. If you don't want to remove all size 1
		dimensions, you can remove specific size 1 dimensions by specifying
		`axis`.
		
		For example:
		
		```python
		# 't' is a tensor of shape [1, 2, 1, 3, 1, 1]
		tf.shape(tf.squeeze(t))  # [2, 3]
		```
		
		Or, to remove specific size 1 dimensions:
		
		```python
		# 't' is a tensor of shape [1, 2, 1, 3, 1, 1]
		tf.shape(tf.squeeze(t, [2, 4]))  # [1, 2, 3, 1]
		```
		
		Args:
		  input: A `Tensor`. The `input` to squeeze.
		  axis: An optional list of `ints`. Defaults to `[]`.
		    If specified, only squeezes the dimensions listed. The dimension
		    index starts at 0. It is an error to squeeze a dimension that is not 1.
		    Must be in the range `[-rank(input), rank(input))`.
		  name: A name for the operation (optional).
		  squeeze_dims: Deprecated keyword argument that is now axis.
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Contains the same data as `input`, but has one or more dimensions of
		  size 1 removed.
		
		Raises:
		  ValueError: When both `squeeze_dims` and `axis` are specified.
	**/
	static public function squeeze(input:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?squeeze_dims:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function squeeze
	**/
	static public function squeeze_eager_fallback(input:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Stacks a list of rank-`R` tensors into one rank-`(R+1)` tensor.
		
		Packs the list of tensors in `values` into a tensor with rank one higher than
		each tensor in `values`, by packing them along the `axis` dimension.
		Given a list of length `N` of tensors of shape `(A, B, C)`;
		
		if `axis == 0` then the `output` tensor will have the shape `(N, A, B, C)`.
		if `axis == 1` then the `output` tensor will have the shape `(A, N, B, C)`.
		Etc.
		
		For example:
		
		```python
		x = tf.constant([1, 4])
		y = tf.constant([2, 5])
		z = tf.constant([3, 6])
		tf.stack([x, y, z])  # [[1, 4], [2, 5], [3, 6]] (Pack along first dim.)
		tf.stack([x, y, z], axis=1)  # [[1, 2, 3], [4, 5, 6]]
		```
		
		This is the opposite of unstack.  The numpy equivalent is
		
		```python
		tf.stack([x, y, z]) = np.stack([x, y, z])
		```
		
		Args:
		  values: A list of `Tensor` objects with the same shape and type.
		  axis: An `int`. The axis to stack along. Defaults to the first dimension.
		    Negative values wrap around, so the valid range is `[-(R+1), R+1)`.
		  name: A name for this operation (optional).
		
		Returns:
		  output: A stacked `Tensor` with the same type as `values`.
		
		Raises:
		  ValueError: If `axis` is out of the range [-(R+1), R+1).
	**/
	static public function stack(values:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated, use StackCloseV2.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function stack_close(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Delete the stack from its resource container.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a stack.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function stack_close_v2(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stack_close_v2
	**/
	static public function stack_close_v2_eager_fallback(handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Deprecated, use StackPopV2.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  elem_type: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `elem_type`.
	**/
	static public function stack_pop(handle:Dynamic, elem_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Pop the element at the top of the stack.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a stack.
		  elem_type: A `tf.DType`. The type of the elem that is popped.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `elem_type`.
	**/
	static public function stack_pop_v2(handle:Dynamic, elem_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stack_pop_v2
	**/
	static public function stack_pop_v2_eager_fallback(handle:Dynamic, elem_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Deprecated, use StackPushV2.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  elem: A `Tensor`.
		  swap_memory: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `elem`.
	**/
	static public function stack_push(handle:Dynamic, elem:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Push an element onto the stack.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a stack.
		  elem: A `Tensor`. The tensor to be pushed onto the stack.
		  swap_memory: An optional `bool`. Defaults to `False`.
		    Swap `elem` to CPU. Default to false.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `elem`.
	**/
	static public function stack_push_v2(handle:Dynamic, elem:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stack_push_v2
	**/
	static public function stack_push_v2_eager_fallback(handle:Dynamic, elem:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A stack that produces elements in first-in last-out order.
		
		Args:
		  max_size: A `Tensor` of type `int32`.
		    The maximum size of the stack if non-negative. If negative, the stack
		    size is unlimited.
		  elem_type: A `tf.DType`. The type of the elements on the stack.
		  stack_name: An optional `string`. Defaults to `""`.
		    Overrides the name used for the temporary stack resource. Default
		    value is the name of the 'Stack' op (which is guaranteed unique).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function stack_v2(max_size:Dynamic, elem_type:Dynamic, ?stack_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stack_v2
	**/
	static public function stack_v2_eager_fallback(max_size:Dynamic, elem_type:Dynamic, ?stack_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Stage values similar to a lightweight Enqueue.
		
		The basic functionality of this Op is similar to a queue with many
		fewer capabilities and options.  This Op is optimized for performance.
		
		Args:
		  values: A list of `Tensor` objects. a list of tensors
		    dtypes A list of data types that inserted values should adhere to.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		    Maximum number of elements in the Staging Area. If > 0, inserts
		    on the container will block when the capacity is reached.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		    The maximum number of bytes allowed for Tensors in the Staging Area.
		    If > 0, inserts will block until sufficient space is available.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container. Otherwise,
		    a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    It is necessary to match this name to the matching Unstage Op.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function stage(values:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Op removes all elements in the underlying container.
		
		Args:
		  dtypes: A list of `tf.DTypes`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function stage_clear(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stage_clear
	**/
	static public function stage_clear_eager_fallback(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stage
	**/
	static public function stage_eager_fallback(values:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Op peeks at the values at the specified index.  If the
		
		underlying container does not contain sufficient elements
		this op will block until it does.   This Op is optimized for
		performance.
		
		Args:
		  index: A `Tensor` of type `int32`.
		  dtypes: A list of `tf.DTypes` that has length `>= 1`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `dtypes`.
	**/
	static public function stage_peek(index:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stage_peek
	**/
	static public function stage_peek_eager_fallback(index:Dynamic, dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Op returns the number of elements in the underlying container.
		
		Args:
		  dtypes: A list of `tf.DTypes`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function stage_size(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stage_size
	**/
	static public function stage_size_eager_fallback(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Check if the input matches the regex pattern.
		
		The input is a string tensor of any shape. The pattern is the
		regular expression to be matched with every element of the input tensor.
		The boolean values (True or False) of the output tensor indicate
		if the input matches the regex pattern provided.
		
		The pattern follows the re2 syntax (https://github.com/google/re2/wiki/Syntax)
		
		Args:
		  input: A `Tensor` of type `string`.
		    A string tensor of the text to be processed.
		  pattern: A `string`. The regular expression to match the input.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function static_regex_full_match(input:Dynamic, pattern:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function static_regex_full_match
	**/
	static public function static_regex_full_match_eager_fallback(input:Dynamic, pattern:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Replaces the match of pattern in input with rewrite.
		
		It follows the re2 syntax (https://github.com/google/re2/wiki/Syntax)
		
		Args:
		  input: A `Tensor` of type `string`. The text to be processed.
		  pattern: A `string`. The regular expression to match the input.
		  rewrite: A `string`. The rewrite to be applied to the matched expresion.
		  replace_global: An optional `bool`. Defaults to `True`.
		    If True, the replacement is global, otherwise the replacement
		    is done only on the first match.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function static_regex_replace(input:Dynamic, pattern:Dynamic, rewrite:Dynamic, ?replace_global:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function static_regex_replace
	**/
	static public function static_regex_replace_eager_fallback(input:Dynamic, pattern:Dynamic, rewrite:Dynamic, ?replace_global:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Stops gradient computation.
		
		When executed in a graph, this op outputs its input tensor as-is.
		
		When building ops to compute gradients, this op prevents the contribution of
		its inputs to be taken into account.  Normally, the gradient generator adds ops
		to a graph to compute the derivatives of a specified 'loss' by recursively
		finding out inputs that contributed to its computation.  If you insert this op
		in the graph it inputs are masked from the gradient generator.  They are not
		taken into account for computing gradients.
		
		This is useful any time you want to compute a value with TensorFlow but need
		to pretend that the value was a constant. Some examples include:
		
		*  The *EM* algorithm where the *M-step* should not involve backpropagation
		   through the output of the *E-step*.
		*  Contrastive divergence training of Boltzmann machines where, when
		   differentiating the energy function, the training must not backpropagate
		   through the graph that generated the samples from the model.
		*  Adversarial training, where no backprop should happen through the adversarial
		   example generation process.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function stop_gradient(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stop_gradient
	**/
	static public function stop_gradient_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Extracts a strided slice of a tensor (generalized python array indexing).
		
		**Instead of calling this op directly most users will want to use the
		NumPy-style slicing syntax (e.g. `tensor[..., 3:4:-1, tf.newaxis, 3]`), which
		is supported via `tf.Tensor.__getitem__` and `tf.Variable.__getitem__`.**
		The interface of this op is a low-level encoding of the slicing syntax.
		
		Roughly speaking, this op extracts a slice of size `(end-begin)/stride`
		from the given `input_` tensor. Starting at the location specified by `begin`
		the slice continues by adding `stride` to the index until all dimensions are
		not less than `end`.
		Note that a stride can be negative, which causes a reverse slice.
		
		Given a Python slice `input[spec0, spec1, ..., specn]`,
		this function will be called as follows.
		
		`begin`, `end`, and `strides` will be vectors of length n.
		n in general is not equal to the rank of the `input_` tensor.
		
		In each mask field (`begin_mask`, `end_mask`, `ellipsis_mask`,
		`new_axis_mask`, `shrink_axis_mask`) the ith bit will correspond to
		the ith spec.
		
		If the ith bit of `begin_mask` is set, `begin[i]` is ignored and
		the fullest possible range in that dimension is used instead.
		`end_mask` works analogously, except with the end range.
		
		`foo[5:,:,:3]` on a 7x8x9 tensor is equivalent to `foo[5:7,0:8,0:3]`.
		`foo[::-1]` reverses a tensor with shape 8.
		
		If the ith bit of `ellipsis_mask` is set, as many unspecified dimensions
		as needed will be inserted between other dimensions. Only one
		non-zero bit is allowed in `ellipsis_mask`.
		
		For example `foo[3:5,...,4:5]` on a shape 10x3x3x10 tensor is
		equivalent to `foo[3:5,:,:,4:5]` and
		`foo[3:5,...]` is equivalent to `foo[3:5,:,:,:]`.
		
		If the ith bit of `new_axis_mask` is set, then `begin`,
		`end`, and `stride` are ignored and a new length 1 dimension is
		added at this point in the output tensor.
		
		For example,
		`foo[:4, tf.newaxis, :2]` would produce a shape `(4, 1, 2)` tensor.
		
		If the ith bit of `shrink_axis_mask` is set, it implies that the ith
		specification shrinks the dimensionality by 1, taking on the value at index
		`begin[i]`. `end[i]` and `strides[i]` are ignored in this case. For example in
		Python one might do `foo[:, 3, :]` which would result in `shrink_axis_mask`
		equal to 2.
		
		
		NOTE: `begin` and `end` are zero-indexed.
		`strides` entries must be non-zero.
		
		
		```python
		t = tf.constant([[[1, 1, 1], [2, 2, 2]],
		                 [[3, 3, 3], [4, 4, 4]],
		                 [[5, 5, 5], [6, 6, 6]]])
		tf.strided_slice(t, [1, 0, 0], [2, 1, 3], [1, 1, 1])  # [[[3, 3, 3]]]
		tf.strided_slice(t, [1, 0, 0], [2, 2, 3], [1, 1, 1])  # [[[3, 3, 3],
		                                                      #   [4, 4, 4]]]
		tf.strided_slice(t, [1, -1, 0], [2, -3, 3], [1, -1, 1])  # [[[4, 4, 4],
		                                                         #   [3, 3, 3]]]
		```
		
		Args:
		  input_: A `Tensor`.
		  begin: An `int32` or `int64` `Tensor`.
		  end: An `int32` or `int64` `Tensor`.
		  strides: An `int32` or `int64` `Tensor`.
		  begin_mask: An `int32` mask.
		  end_mask: An `int32` mask.
		  ellipsis_mask: An `int32` mask.
		  new_axis_mask: An `int32` mask.
		  shrink_axis_mask: An `int32` mask.
		  var: The variable corresponding to `input_` or None
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` the same type as `input`.
	**/
	static public function strided_slice(input_:Dynamic, begin:Dynamic, end:Dynamic, ?strides:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?_var:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assign `value` to the sliced l-value reference of `ref`.
		
		The values of `value` are assigned to the positions in the variable
		`ref` that are selected by the slice parameters. The slice parameters
		`begin, `end`, `strides`, etc. work exactly as in `StridedSlice`.
		
		NOTE this op currently does not support broadcasting and so `value`'s
		shape must be exactly the shape produced by the slice of `ref`.
		
		Args:
		  ref: A mutable `Tensor`.
		  begin: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  end: A `Tensor`. Must have the same type as `begin`.
		  strides: A `Tensor`. Must have the same type as `begin`.
		  value: A `Tensor`. Must have the same type as `ref`.
		  begin_mask: An optional `int`. Defaults to `0`.
		  end_mask: An optional `int`. Defaults to `0`.
		  ellipsis_mask: An optional `int`. Defaults to `0`.
		  new_axis_mask: An optional `int`. Defaults to `0`.
		  shrink_axis_mask: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function strided_slice_assign(ref:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, value:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function strided_slice
	**/
	static public function strided_slice_eager_fallback(input:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the gradient of `StridedSlice`.
		
		Since `StridedSlice` cuts out pieces of its `input` which is size
		`shape`, its gradient will have the same shape (which is passed here
		as `shape`). The gradient will be zero in any element that the slice
		does not select.
		
		Arguments are the same as StridedSliceGrad with the exception that
		`dy` is the input gradient to be propagated and `shape` is the
		shape of `StridedSlice`'s `input`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  begin: A `Tensor`. Must have the same type as `shape`.
		  end: A `Tensor`. Must have the same type as `shape`.
		  strides: A `Tensor`. Must have the same type as `shape`.
		  dy: A `Tensor`.
		  begin_mask: An optional `int`. Defaults to `0`.
		  end_mask: An optional `int`. Defaults to `0`.
		  ellipsis_mask: An optional `int`. Defaults to `0`.
		  new_axis_mask: An optional `int`. Defaults to `0`.
		  shrink_axis_mask: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `dy`.
	**/
	static public function strided_slice_grad(shape:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, dy:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function strided_slice_grad
	**/
	static public function strided_slice_grad_eager_fallback(shape:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, dy:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var string : Dynamic;
	/**
		Formats a string template using a list of tensors.
		
		Formats a string template using a list of tensors, abbreviating tensors by
		only printing the first and last `summarize` elements of each dimension
		(recursively). If formatting only one tensor into a template, the tensor does
		not have to be wrapped in a list.
		
		Example:
		  Formatting a single-tensor template:
		  ```python
		  sess = tf.Session()
		  with sess.as_default():
		      tensor = tf.range(10)
		      formatted = tf.strings.format("tensor: {}, suffix", tensor)
		      out = sess.run(formatted)
		      expected = "tensor: [0 1 2 ... 7 8 9], suffix"
		
		      assert(out.decode() == expected)
		  ```
		
		  Formatting a multi-tensor template:
		  ```python
		  sess = tf.Session()
		  with sess.as_default():
		      tensor_one = tf.reshape(tf.range(100), [10, 10])
		      tensor_two = tf.range(10)
		      formatted = tf.strings.format("first: {}, second: {}, suffix",
		        (tensor_one, tensor_two))
		
		      out = sess.run(formatted)
		      expected = ("first: [[0 1 2 ... 7 8 9]\n"
		            " [10 11 12 ... 17 18 19]\n"
		            " [20 21 22 ... 27 28 29]\n"
		            " ...\n"
		            " [70 71 72 ... 77 78 79]\n"
		            " [80 81 82 ... 87 88 89]\n"
		            " [90 91 92 ... 97 98 99]], second: [0 1 2 ... 7 8 9], suffix")
		
		      assert(out.decode() == expected)
		  ```
		
		Args:
		  template: A string template to format tensor values into.
		  inputs: A list of `Tensor` objects, or a single Tensor.
		    The list of tensors to format into the template string. If a solitary
		    tensor is passed in, the input tensor will automatically be wrapped as a
		    list.
		  placeholder: An optional `string`. Defaults to `{}`.
		    At each placeholder occurring in the template, a subsequent tensor
		    will be inserted.
		  summarize: An optional `int`. Defaults to `3`.
		    When formatting the tensors, show the first and last `summarize`
		    entries of each tensor dimension (recursively). If set to -1, all
		    elements of the tensor will be shown.
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar `Tensor` of type `string`.
		
		Raises:
		  ValueError: if the number of placeholders does not match the number of
		    inputs.
	**/
	static public function string_format(template:Dynamic, inputs:Dynamic, ?placeholder:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_format
	**/
	static public function string_format_eager_fallback(inputs:Dynamic, ?template:Dynamic, ?placeholder:Dynamic, ?summarize:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Joins the strings in the given list of string tensors into one tensor;
		
		with the given separator (default is an empty separator).
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with type `string`.
		    A list of string tensors.  The tensors must all have the same shape,
		    or be scalars.  Scalars may be mixed in; these will be broadcast to the shape
		    of non-scalar inputs.
		  separator: An optional `string`. Defaults to `""`.
		    string, an optional join separator.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function string_join(inputs:Dynamic, ?separator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_join
	**/
	static public function string_join_eager_fallback(inputs:Dynamic, ?separator:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		String lengths of `input`.
		
		Computes the length of each string given in the input tensor.
		
		Args:
		  input: A `Tensor` of type `string`.
		    The string for which to compute the length.
		  unit: An optional `string` from: `"BYTE", "UTF8_CHAR"`. Defaults to `"BYTE"`.
		    The unit that is counted to compute string length.  One of: `"BYTE"` (for
		    the number of bytes in each string) or `"UTF8_CHAR"` (for the number of UTF-8
		    encoded Unicode code points in each string).  Results are undefined
		    if `unit=UTF8_CHAR` and the `input` strings do not contain structurally
		    valid UTF-8.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function string_length(input:Dynamic, ?name:Dynamic, ?unit:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_length
	**/
	static public function string_length_eager_fallback(input:Dynamic, ?unit:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var string_ref : Dynamic;
	/**
		Split elements of `source` based on `delimiter` into a `SparseTensor`.
		
		Let N be the size of source (typically N will be the batch size). Split each
		element of `source` based on `delimiter` and return a `SparseTensor`
		containing the split tokens. Empty tokens are ignored.
		
		If `delimiter` is an empty string, each element of the `source` is split
		into individual strings, each containing one byte. (This includes splitting
		multibyte sequences of UTF-8.) If delimiter contains multiple bytes, it is
		treated as a set of delimiters with each considered a potential split point.
		
		For example:
		N = 2, source[0] is 'hello world' and source[1] is 'a b c', then the output
		will be
		
		st.indices = [0, 0;
		              0, 1;
		              1, 0;
		              1, 1;
		              1, 2]
		st.shape = [2, 3]
		st.values = ['hello', 'world', 'a', 'b', 'c']
		
		Args:
		  source: `1-D` string `Tensor`, the strings to split.
		  delimiter: `0-D` string `Tensor`, the delimiter character, the string should
		    be length 0 or 1.
		  skip_empty: A `bool`. If `True`, skip the empty strings from the result.
		
		Raises:
		  ValueError: If delimiter is not a string.
		
		Returns:
		  A `SparseTensor` of rank `2`, the strings split according to the delimiter.
		  The first column of the indices corresponds to the row in `source` and the
		  second column corresponds to the index of the split component in this row.
	**/
	static public function string_split(source:Dynamic, ?delimiter:Dynamic, ?skip_empty:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_split
	**/
	static public function string_split_eager_fallback(input:Dynamic, delimiter:Dynamic, ?skip_empty:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Split elements of `source` based on `sep` into a `SparseTensor`.
		
		Let N be the size of source (typically N will be the batch size). Split each
		element of `source` based on `sep` and return a `SparseTensor`
		containing the split tokens. Empty tokens are ignored.
		
		For example, N = 2, source[0] is 'hello world' and source[1] is 'a b c',
		then the output will be
		
		st.indices = [0, 0;
		              0, 1;
		              1, 0;
		              1, 1;
		              1, 2]
		st.shape = [2, 3]
		st.values = ['hello', 'world', 'a', 'b', 'c']
		
		If `sep` is given, consecutive delimiters are not grouped together and are
		deemed to delimit empty strings. For example, source of `"1<>2<><>3"` and
		sep of `"<>"` returns `["1", "2", "", "3"]`. If `sep` is None or an empty
		string, consecutive whitespace are regarded as a single separator, and the
		result will contain no empty strings at the startor end if the string has
		leading or trailing whitespace.
		
		Note that the above mentioned behavior matches python's str.split.
		
		Args:
		  source: `1-D` string `Tensor`, the strings to split.
		  sep: `0-D` string `Tensor`, the delimiter character.
		  maxsplit: An `int`. If `maxsplit > 0`, limit of the split of the result.
		
		Raises:
		  ValueError: If sep is not a string.
		
		Returns:
		  A `SparseTensor` of rank `2`, the strings split according to the delimiter.
		  The first column of the indices corresponds to the row in `source` and the
		  second column corresponds to the index of the split component in this row.
	**/
	static public function string_split_v2(source:Dynamic, ?sep:Dynamic, ?maxsplit:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_split_v2
	**/
	static public function string_split_v2_eager_fallback(input:Dynamic, sep:Dynamic, ?maxsplit:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Strip leading and trailing whitespaces from the Tensor.
		
		Args:
		  input: A `Tensor` of type `string`. A string `Tensor` of any shape.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function string_strip(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_strip
	**/
	static public function string_strip_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to its hash mod by a number of buckets.
		
		The hash function is deterministic on the content of the string within the
		process.
		
		Note that the hash function may change from time to time.
		This functionality will be deprecated and it's recommended to use
		`tf.string_to_hash_bucket_fast()` or `tf.string_to_hash_bucket_strong()`.
		
		Args:
		  string_tensor: A `Tensor` of type `string`.
		  num_buckets: An `int` that is `>= 1`. The number of buckets.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function string_to_hash_bucket(string_tensor:Dynamic, num_buckets:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_to_hash_bucket
	**/
	static public function string_to_hash_bucket_eager_fallback(string_tensor:Dynamic, num_buckets:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to its hash mod by a number of buckets.
		
		The hash function is deterministic on the content of the string within the
		process and will never change. However, it is not suitable for cryptography.
		This function may be used when CPU time is scarce and inputs are trusted or
		unimportant. There is a risk of adversaries constructing inputs that all hash
		to the same bucket. To prevent this problem, use a strong hash function with
		`tf.string_to_hash_bucket_strong`.
		
		Args:
		  input: A `Tensor` of type `string`. The strings to assign a hash bucket.
		  num_buckets: An `int` that is `>= 1`. The number of buckets.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function string_to_hash_bucket_fast(input:Dynamic, num_buckets:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_to_hash_bucket_fast
	**/
	static public function string_to_hash_bucket_fast_eager_fallback(input:Dynamic, num_buckets:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to its hash mod by a number of buckets.
		
		The hash function is deterministic on the content of the string within the
		process. The hash function is a keyed hash function, where attribute `key`
		defines the key of the hash function. `key` is an array of 2 elements.
		
		A strong hash is important when inputs may be malicious, e.g. URLs with
		additional components. Adversaries could try to make their inputs hash to the
		same bucket for a denial-of-service attack or to skew the results. A strong
		hash prevents this by making it difficult, if not infeasible, to compute inputs
		that hash to the same bucket. This comes at a cost of roughly 4x higher compute
		time than `tf.string_to_hash_bucket_fast`.
		
		Args:
		  input: A `Tensor` of type `string`. The strings to assign a hash bucket.
		  num_buckets: An `int` that is `>= 1`. The number of buckets.
		  key: A list of `ints`.
		    The key for the keyed hash function passed as a list of two uint64
		    elements.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function string_to_hash_bucket_strong(input:Dynamic, num_buckets:Dynamic, key:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_to_hash_bucket_strong
	**/
	static public function string_to_hash_bucket_strong_eager_fallback(input:Dynamic, num_buckets:Dynamic, key:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to the specified numeric type.
		
		(Note that int32 overflow results in an error while float overflow
		results in a rounded value.)
		
		Args:
		  string_tensor: A `Tensor` of type `string`.
		  out_type: An optional `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.int64`. Defaults to `tf.float32`.
		    The numeric type to interpret each string in `string_tensor` as.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function string_to_number(string_tensor:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_to_number
	**/
	static public function string_to_number_eager_fallback(string_tensor:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns x - y element-wise.
		
		*NOTE*: `Subtract` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function sub(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sub
	**/
	static public function sub_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Return substrings from `Tensor` of strings.
		
		For each string in the input `Tensor`, creates a substring starting at index
		`pos` with a total length of `len`.
		
		If `len` defines a substring that would extend beyond the length of the input
		string, then as many characters as possible are used.
		
		A negative `pos` indicates distance within the string backwards from the end.
		
		If `pos` specifies an index which is out of range for any of the input strings,
		then an `InvalidArgumentError` is thrown.
		
		`pos` and `len` must have the same shape, otherwise a `ValueError` is thrown on
		Op creation.
		
		*NOTE*: `strings.substr` supports broadcasting up to two dimensions. More about
		broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		---
		
		Examples
		
		Using scalar `pos` and `len`:
		
		```python
		input = [b'Hello', b'World']
		position = 1
		length = 3
		
		output = [b'ell', b'orl']
		```
		
		Using `pos` and `len` with same shape as `input`:
		
		```python
		input = [[b'ten', b'eleven', b'twelve'],
		         [b'thirteen', b'fourteen', b'fifteen'],
		         [b'sixteen', b'seventeen', b'eighteen']]
		position = [[1, 2, 3],
		            [1, 2, 3],
		            [1, 2, 3]]
		length =   [[2, 3, 4],
		            [4, 3, 2],
		            [5, 5, 5]]
		
		output = [[b'en', b'eve', b'lve'],
		          [b'hirt', b'urt', b'te'],
		          [b'ixtee', b'vente', b'hteen']]
		```
		
		Broadcasting `pos` and `len` onto `input`:
		
		```
		input = [[b'ten', b'eleven', b'twelve'],
		         [b'thirteen', b'fourteen', b'fifteen'],
		         [b'sixteen', b'seventeen', b'eighteen'],
		         [b'nineteen', b'twenty', b'twentyone']]
		position = [1, 2, 3]
		length =   [1, 2, 3]
		
		output = [[b'e', b'ev', b'lve'],
		          [b'h', b'ur', b'tee'],
		          [b'i', b've', b'hte'],
		          [b'i', b'en', b'nty']]
		```
		
		Broadcasting `input` onto `pos` and `len`:
		
		```
		input = b'thirteen'
		position = [1, 5, 7]
		length =   [3, 2, 1]
		
		output = [b'hir', b'ee', b'n']
		```
		
		Args:
		  input: A `Tensor` of type `string`. Tensor of strings
		  pos: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Scalar defining the position of first character in each substring
		  len: A `Tensor`. Must have the same type as `pos`.
		    Scalar defining the number of characters to include in each substring
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function substr(input:Dynamic, pos:Dynamic, len:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function substr
	**/
	static public function substr_eager_fallback(input:Dynamic, pos:Dynamic, len:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns x - y element-wise.
		
		*NOTE*: `Subtract` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function subtract(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the singular value decompositions of one or more matrices.
		
		Computes the SVD of each inner matrix in `tensor` such that
		`tensor[..., :, :] = u[..., :, :] * diag(s[..., :, :]) *
		 transpose(conj(v[..., :, :]))`
		
		```python
		# a is a tensor.
		# s is a tensor of singular values.
		# u is a tensor of left singular vectors.
		# v is a tensor of right singular vectors.
		s, u, v = svd(a)
		s = svd(a, compute_uv=False)
		```
		
		Args:
		  tensor: `Tensor` of shape `[..., M, N]`. Let `P` be the minimum of `M` and
		    `N`.
		  full_matrices: If true, compute full-sized `u` and `v`. If false
		    (the default), compute only the leading `P` singular vectors.
		    Ignored if `compute_uv` is `False`.
		  compute_uv: If `True` then left and right singular vectors will be
		    computed and returned in `u` and `v`, respectively. Otherwise, only the
		    singular values will be computed, which can be significantly faster.
		  name: string, optional name of the operation.
		
		Returns:
		  s: Singular values. Shape is `[..., P]`. The values are sorted in reverse
		    order of magnitude, so s[..., 0] is the largest value, s[..., 1] is the
		    second largest, etc.
		  u: Left singular vectors. If `full_matrices` is `False` (default) then
		    shape is `[..., M, P]`; if `full_matrices` is `True` then shape is
		    `[..., M, M]`. Not returned if `compute_uv` is `False`.
		  v: Right singular vectors. If `full_matrices` is `False` (default) then
		    shape is `[..., N, P]`. If `full_matrices` is `True` then shape is
		    `[..., N, N]`. Not returned if `compute_uv` is `False`.
		
		@compatibility(numpy)
		Mostly equivalent to numpy.linalg.svd, except that
		  * The order of output  arguments here is `s`, `u`, `v` when `compute_uv` is
		    `True`, as opposed to `u`, `s`, `v` for numpy.linalg.svd.
		  * full_matrices is `False` by default as opposed to `True` for
		     numpy.linalg.svd.
		  * tf.linalg.svd uses the standard definition of the SVD
		    \\(A = U \Sigma V^H\\), such that the left singular vectors of `a` are
		    the columns of `u`, while the right singular vectors of `a` are the
		    columns of `v`. On the other hand, numpy.linalg.svd returns the adjoint
		    \\(V^H\\) as the third output argument.
		```python
		import tensorflow as tf
		import numpy as np
		s, u, v = tf.linalg.svd(a)
		tf_a_approx = tf.matmul(u, tf.matmul(tf.linalg.diag(s), v, adjoint_b=True))
		u, s, v_adj = np.linalg.svd(a, full_matrices=False)
		np_a_approx = np.dot(u, np.dot(np.diag(s), v_adj))
		# tf_a_approx and np_a_approx should be numerically close.
		```
		@end_compatibility
	**/
	static public function svd(tensor:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function svd
	**/
	static public function svd_eager_fallback(input:Dynamic, ?compute_uv:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		Returns an Op that initializes all tables of the default graph.
		
		Args:
		  name: Optional name for the initialization op.
		
		Returns:
		  An Op that initializes all tables.  Note that if there are
		  not tables the returned Op is a NoOp.
	**/
	static public function tables_initializer(?name:Dynamic):Dynamic;
	/**
		Read `SparseTensors` from a `SparseTensorsMap` and concatenate them.
		
		The input `sparse_handles` must be an `int64` matrix of shape `[N, 1]` where
		`N` is the minibatch size and the rows correspond to the output handles of
		`AddSparseToTensorsMap` or `AddManySparseToTensorsMap`.  The ranks of the
		original `SparseTensor` objects that went into the given input ops must all
		match.  When the final `SparseTensor` is created, it has rank one
		higher than the ranks of the incoming `SparseTensor` objects
		(they have been concatenated along a new row dimension on the left).
		
		The output `SparseTensor` object's shape values for all dimensions but the
		first are the max across the input `SparseTensor` objects' shape values
		for the corresponding dimensions.  Its first shape value is `N`, the minibatch
		size.
		
		The input `SparseTensor` objects' indices are assumed ordered in
		standard lexicographic order.  If this is not the case, after this
		step run `SparseReorder` to restore index ordering.
		
		For example, if the handles represent an input, which is a `[2, 3]` matrix
		representing two original `SparseTensor` objects:
		
		```
		    index = [ 0]
		            [10]
		            [20]
		    values = [1, 2, 3]
		    shape = [50]
		```
		
		and
		
		```
		    index = [ 2]
		            [10]
		    values = [4, 5]
		    shape = [30]
		```
		
		then the final `SparseTensor` will be:
		
		```
		    index = [0  0]
		            [0 10]
		            [0 20]
		            [1  2]
		            [1 10]
		    values = [1, 2, 3, 4, 5]
		    shape = [2 50]
		```
		
		Args:
		  sparse_handles: A `Tensor` of type `int64`.
		    1-D, The `N` serialized `SparseTensor` objects.
		    Shape: `[N]`.
		  dtype: A `tf.DType`.
		    The `dtype` of the `SparseTensor` objects stored in the
		    `SparseTensorsMap`.
		  container: An optional `string`. Defaults to `""`.
		    The container name for the `SparseTensorsMap` read by this op.
		  shared_name: An optional `string`. Defaults to `""`.
		    The shared name for the `SparseTensorsMap` read by this op.
		    It should not be blank; rather the `shared_name` or unique Operation name
		    of the Op that created the original `SparseTensorsMap` should be used.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sparse_indices, sparse_values, sparse_shape).
		
		  sparse_indices: A `Tensor` of type `int64`.
		  sparse_values: A `Tensor` of type `dtype`.
		  sparse_shape: A `Tensor` of type `int64`.
	**/
	static public function take_many_sparse_from_tensors_map(sparse_handles:Dynamic, dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function take_many_sparse_from_tensors_map
	**/
	static public function take_many_sparse_from_tensors_map_eager_fallback(sparse_handles:Dynamic, dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes tan of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function tan(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tan
	**/
	static public function tan_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes hyperbolic tangent of `x` element-wise.
		
		Args:
		  x: A Tensor or SparseTensor with type `float16`, `float32`, `double`,
		    `complex64`, or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor or SparseTensor respectively with the same type as `x`.
	**/
	static public function tanh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tanh
	**/
	static public function tanh_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the gradient for the tanh of `x` wrt its input.
		
		Specifically, `grad = dy * (1 - y*y)`, where `y = tanh(x)`, and `dy`
		is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function tanh_grad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tanh_grad
	**/
	static public function tanh_grad_eager_fallback(y:Dynamic, dy:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  size: A `Tensor` of type `int32`.
		  dtype: A `tf.DType`.
		  dynamic_size: An optional `bool`. Defaults to `False`.
		  clear_after_read: An optional `bool`. Defaults to `True`.
		  tensor_array_name: An optional `string`. Defaults to `""`.
		  element_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `None`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function tensor_array(size:Dynamic, dtype:Dynamic, ?dynamic_size:Dynamic, ?clear_after_read:Dynamic, ?tensor_array_name:Dynamic, ?element_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function tensor_array_close(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArrayCloseV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function tensor_array_close_v2(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_close_v2
	**/
	static public function tensor_array_close_v2_eager_fallback(handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Delete the TensorArray from its resource container.
		
		This enables the user to close and release the resource in the middle
		of a step/run.
		
		Args:
		  handle: A `Tensor` of type `resource`.
		    The handle to a TensorArray (output of TensorArray or TensorArrayGrad).
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function tensor_array_close_v3(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_close_v3
	**/
	static public function tensor_array_close_v3_eager_fallback(handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  flow_in: A `Tensor` of type `float32`.
		  dtype: A `tf.DType`.
		  element_shape_except0: An optional `tf.TensorShape` or list of `ints`. Defaults to `None`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (value, lengths).
		
		  value: A `Tensor` of type `dtype`.
		  lengths: A `Tensor` of type `int64`.
	**/
	static public function tensor_array_concat(handle:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape_except0:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArrayConcatV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  flow_in: A `Tensor` of type `float32`.
		  dtype: A `tf.DType`.
		  element_shape_except0: An optional `tf.TensorShape` or list of `ints`. Defaults to `None`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (value, lengths).
		
		  value: A `Tensor` of type `dtype`.
		  lengths: A `Tensor` of type `int64`.
	**/
	static public function tensor_array_concat_v2(handle:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape_except0:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_concat_v2
	**/
	static public function tensor_array_concat_v2_eager_fallback(handle:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape_except0:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Concat the elements from the TensorArray into value `value`.
		
		Takes `T` elements of shapes
		
		  ```
		  (n0 x d0 x d1 x ...), (n1 x d0 x d1 x ...), ..., (n(T-1) x d0 x d1 x ...)
		  ```
		
		and concatenates them into a Tensor of shape:
		
		  ```(n0 + n1 + ... + n(T-1) x d0 x d1 x ...)```
		
		All elements must have the same shape (excepting the first dimension).
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a TensorArray.
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  dtype: A `tf.DType`. The type of the elem that is returned.
		  element_shape_except0: An optional `tf.TensorShape` or list of `ints`. Defaults to `None`.
		    The expected shape of an element, if known,
		    excluding the first dimension. Used to validate the shapes of
		    TensorArray elements. If this shape is not fully specified, concatenating
		    zero-size TensorArrays is an error.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (value, lengths).
		
		  value: A `Tensor` of type `dtype`.
		  lengths: A `Tensor` of type `int64`.
	**/
	static public function tensor_array_concat_v3(handle:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape_except0:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_concat_v3
	**/
	static public function tensor_array_concat_v3_eager_fallback(handle:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape_except0:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  indices: A `Tensor` of type `int32`.
		  flow_in: A `Tensor` of type `float32`.
		  dtype: A `tf.DType`.
		  element_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `None`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function tensor_array_gather(handle:Dynamic, indices:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArrayGatherV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  indices: A `Tensor` of type `int32`.
		  flow_in: A `Tensor` of type `float32`.
		  dtype: A `tf.DType`.
		  element_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `None`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function tensor_array_gather_v2(handle:Dynamic, indices:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_gather_v2
	**/
	static public function tensor_array_gather_v2_eager_fallback(handle:Dynamic, indices:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Gather specific elements from the TensorArray into output `value`.
		
		All elements selected by `indices` must have the same shape.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a TensorArray.
		  indices: A `Tensor` of type `int32`.
		    The locations in the TensorArray from which to read tensor elements.
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  dtype: A `tf.DType`. The type of the elem that is returned.
		  element_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `None`.
		    The expected shape of an element, if known. Used to
		    validate the shapes of TensorArray elements. If this shape is not
		    fully specified, gathering zero-size TensorArrays is an error.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function tensor_array_gather_v3(handle:Dynamic, indices:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_gather_v3
	**/
	static public function tensor_array_gather_v3_eager_fallback(handle:Dynamic, indices:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type `string`.
		  flow_in: A `Tensor` of type `float32`.
		  source: A `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function tensor_array_grad(handle:Dynamic, flow_in:Dynamic, source:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArrayGradV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  flow_in: A `Tensor` of type `float32`.
		  source: A `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function tensor_array_grad_v2(handle:Dynamic, flow_in:Dynamic, source:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_grad_v2
	**/
	static public function tensor_array_grad_v2_eager_fallback(handle:Dynamic, flow_in:Dynamic, source:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a TensorArray for storing the gradients of values in the given handle.
		
		If the given TensorArray gradient already exists, returns a reference to it.
		
		Locks the size of the original TensorArray by disabling its dynamic size flag.
		
		**A note about the input flow_in:**
		
		The handle flow_in forces the execution of the gradient lookup to occur
		only after certain other operations have occurred.  For example, when
		the forward TensorArray is dynamically sized, writes to this TensorArray
		may resize the object.  The gradient TensorArray is statically sized based
		on the size of the forward TensorArray when this operation executes.
		Furthermore, the size of the forward TensorArray is frozen by this call.
		As a result, the flow is used to ensure that the call to generate the gradient
		TensorArray only happens after all writes are executed.
		
		In the case of dynamically sized TensorArrays, gradient computation should
		only be performed on read operations that have themselves been chained via
		flow to occur only after all writes have executed. That way the final size
		of the forward TensorArray is known when this operation is called.
		
		**A note about the source attribute:**
		
		TensorArray gradient calls use an accumulator TensorArray object.  If
		multiple gradients are calculated and run in the same session, the multiple
		gradient nodes may accidentally flow through the same accumulator TensorArray.
		This double counts and generally breaks the TensorArray gradient flow.
		
		The solution is to identify which gradient call this particular
		TensorArray gradient is being called in.  This is performed by identifying
		a unique string (e.g. "gradients", "gradients_1", ...) from the input
		gradient Tensor's name.  This string is used as a suffix when creating
		the TensorArray gradient object here (the attribute `source`).
		
		The attribute `source` is added as a suffix to the forward TensorArray's
		name when performing the creation / lookup, so that each separate gradient
		calculation gets its own TensorArray accumulator.
		
		Args:
		  handle: A `Tensor` of type `resource`.
		    The handle to the forward TensorArray.
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  source: A `string`.
		    The gradient source string, used to decide which gradient TensorArray
		    to return.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (grad_handle, flow_out).
		
		  grad_handle: A `Tensor` of type `resource`.
		  flow_out: A `Tensor` of type `float32`.
	**/
	static public function tensor_array_grad_v3(handle:Dynamic, flow_in:Dynamic, source:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_grad_v3
	**/
	static public function tensor_array_grad_v3_eager_fallback(handle:Dynamic, flow_in:Dynamic, source:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a TensorArray for storing multiple gradients of values in the given handle.
		
		Similar to TensorArrayGradV3. However it creates an accumulator with an
		expanded shape compared to the input TensorArray whose gradient is being
		computed. This enables multiple gradients for the same TensorArray to be
		calculated using the same accumulator.
		
		Args:
		  handle: A `Tensor` of type `resource`.
		    The handle to the forward TensorArray.
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  shape_to_prepend: A `Tensor` of type `int32`.
		    An int32 vector representing a shape. Elements in the gradient accumulator will
		    have shape which is this shape_to_prepend value concatenated with shape of the
		    elements in the TensorArray corresponding to the input handle.
		  source: A `string`.
		    The gradient source string, used to decide which gradient TensorArray
		    to return.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (grad_handle, flow_out).
		
		  grad_handle: A `Tensor` of type `resource`.
		  flow_out: A `Tensor` of type `float32`.
	**/
	static public function tensor_array_grad_with_shape(handle:Dynamic, flow_in:Dynamic, shape_to_prepend:Dynamic, source:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_grad_with_shape
	**/
	static public function tensor_array_grad_with_shape_eager_fallback(handle:Dynamic, flow_in:Dynamic, shape_to_prepend:Dynamic, source:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  flow_in: A `Tensor` of type `float32`.
		  dtype: A `tf.DType`.
		  element_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `None`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function tensor_array_pack(handle:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  index: A `Tensor` of type `int32`.
		  flow_in: A `Tensor` of type `float32`.
		  dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function tensor_array_read(handle:Dynamic, index:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArrayReadV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  index: A `Tensor` of type `int32`.
		  flow_in: A `Tensor` of type `float32`.
		  dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function tensor_array_read_v2(handle:Dynamic, index:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_read_v2
	**/
	static public function tensor_array_read_v2_eager_fallback(handle:Dynamic, index:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Read an element from the TensorArray into output `value`.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a TensorArray.
		  index: A `Tensor` of type `int32`.
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  dtype: A `tf.DType`. The type of the elem that is returned.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function tensor_array_read_v3(handle:Dynamic, index:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_read_v3
	**/
	static public function tensor_array_read_v3_eager_fallback(handle:Dynamic, index:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  indices: A `Tensor` of type `int32`.
		  value: A `Tensor`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function tensor_array_scatter(handle:Dynamic, indices:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArrayScatterV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  indices: A `Tensor` of type `int32`.
		  value: A `Tensor`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function tensor_array_scatter_v2(handle:Dynamic, indices:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_scatter_v2
	**/
	static public function tensor_array_scatter_v2_eager_fallback(handle:Dynamic, indices:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Scatter the data from the input value into specific TensorArray elements.
		
		`indices` must be a vector, its length must match the first dim of `value`.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a TensorArray.
		  indices: A `Tensor` of type `int32`.
		    The locations at which to write the tensor elements.
		  value: A `Tensor`. The concatenated tensor to write to the TensorArray.
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function tensor_array_scatter_v3(handle:Dynamic, indices:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_scatter_v3
	**/
	static public function tensor_array_scatter_v3_eager_fallback(handle:Dynamic, indices:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function tensor_array_size(handle:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArraySizeV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function tensor_array_size_v2(handle:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_size_v2
	**/
	static public function tensor_array_size_v2_eager_fallback(handle:Dynamic, flow_in:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Get the current size of the TensorArray.
		
		Args:
		  handle: A `Tensor` of type `resource`.
		    The handle to a TensorArray (output of TensorArray or TensorArrayGrad).
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function tensor_array_size_v3(handle:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_size_v3
	**/
	static public function tensor_array_size_v3_eager_fallback(handle:Dynamic, flow_in:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  value: A `Tensor`.
		  lengths: A `Tensor` of type `int64`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function tensor_array_split(handle:Dynamic, value:Dynamic, lengths:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArraySplitV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  value: A `Tensor`.
		  lengths: A `Tensor` of type `int64`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function tensor_array_split_v2(handle:Dynamic, value:Dynamic, lengths:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_split_v2
	**/
	static public function tensor_array_split_v2_eager_fallback(handle:Dynamic, value:Dynamic, lengths:Dynamic, flow_in:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Split the data from the input value into TensorArray elements.
		
		Assuming that `lengths` takes on values
		
		  ```(n0, n1, ..., n(T-1))```
		
		and that `value` has shape
		
		  ```(n0 + n1 + ... + n(T-1) x d0 x d1 x ...)```,
		
		this splits values into a TensorArray with T tensors.
		
		TensorArray index t will be the subtensor of values with starting position
		
		  ```(n0 + n1 + ... + n(t-1), 0, 0, ...)```
		
		and having size
		
		  ```nt x d0 x d1 x ...```
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a TensorArray.
		  value: A `Tensor`. The concatenated tensor to write to the TensorArray.
		  lengths: A `Tensor` of type `int64`.
		    The vector of lengths, how to split the rows of value into the
		    TensorArray.
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function tensor_array_split_v3(handle:Dynamic, value:Dynamic, lengths:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_split_v3
	**/
	static public function tensor_array_split_v3_eager_fallback(handle:Dynamic, value:Dynamic, lengths:Dynamic, flow_in:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  value: A `Tensor`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function tensor_array_unpack(handle:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArrayV3
		
		Args:
		  size: A `Tensor` of type `int32`.
		  dtype: A `tf.DType`.
		  element_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `None`.
		  dynamic_size: An optional `bool`. Defaults to `False`.
		  clear_after_read: An optional `bool`. Defaults to `True`.
		  tensor_array_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function tensor_array_v2(size:Dynamic, dtype:Dynamic, ?element_shape:Dynamic, ?dynamic_size:Dynamic, ?clear_after_read:Dynamic, ?tensor_array_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_v2
	**/
	static public function tensor_array_v2_eager_fallback(size:Dynamic, dtype:Dynamic, ?element_shape:Dynamic, ?dynamic_size:Dynamic, ?clear_after_read:Dynamic, ?tensor_array_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		An array of Tensors of given size.
		
		Write data via Write and read via Read or Pack.
		
		Args:
		  size: A `Tensor` of type `int32`. The size of the array.
		  dtype: A `tf.DType`. The type of the elements on the tensor_array.
		  element_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `None`.
		    The expected shape of an element, if known. Used to
		    validate the shapes of TensorArray elements. If this shape is not
		    fully specified, gathering zero-size TensorArrays is an error.
		  dynamic_size: An optional `bool`. Defaults to `False`.
		    A boolean that determines whether writes to the TensorArray
		    are allowed to grow the size.  By default, this is not allowed.
		  clear_after_read: An optional `bool`. Defaults to `True`.
		    If true (default), Tensors in the TensorArray are cleared
		    after being read.  This disables multiple read semantics but allows early
		    release of memory.
		  identical_element_shapes: An optional `bool`. Defaults to `False`.
		    If true (default is false), then all
		    elements in the TensorArray will be expected to have have identical shapes.
		    This allows certain behaviors, like dynamically checking for
		    consistent shapes on write, and being able to fill in properly
		    shaped zero tensors on stack -- even if the element_shape attribute
		    is not fully defined.
		  tensor_array_name: An optional `string`. Defaults to `""`.
		    Overrides the name used for the temporary tensor_array
		    resource. Default value is the name of the 'TensorArray' op (which
		    is guaranteed unique).
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (handle, flow).
		
		  handle: A `Tensor` of type `resource`.
		  flow: A `Tensor` of type `float32`.
	**/
	static public function tensor_array_v3(size:Dynamic, dtype:Dynamic, ?element_shape:Dynamic, ?dynamic_size:Dynamic, ?clear_after_read:Dynamic, ?identical_element_shapes:Dynamic, ?tensor_array_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_v3
	**/
	static public function tensor_array_v3_eager_fallback(size:Dynamic, dtype:Dynamic, ?element_shape:Dynamic, ?dynamic_size:Dynamic, ?clear_after_read:Dynamic, ?identical_element_shapes:Dynamic, ?tensor_array_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  index: A `Tensor` of type `int32`.
		  value: A `Tensor`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function tensor_array_write(handle:Dynamic, index:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArrayGradV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  index: A `Tensor` of type `int32`.
		  value: A `Tensor`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function tensor_array_write_v2(handle:Dynamic, index:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_write_v2
	**/
	static public function tensor_array_write_v2_eager_fallback(handle:Dynamic, index:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Push an element onto the tensor_array.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a TensorArray.
		  index: A `Tensor` of type `int32`.
		    The position to write to inside the TensorArray.
		  value: A `Tensor`. The tensor to write to the TensorArray.
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function tensor_array_write_v3(handle:Dynamic, index:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_array_write_v3
	**/
	static public function tensor_array_write_v3_eager_fallback(handle:Dynamic, index:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Tensor contraction of a and b along specified axes.
		
		Tensordot (also known as tensor contraction) sums the product of elements
		from `a` and `b` over the indices specified by `a_axes` and `b_axes`.
		The lists `a_axes` and `b_axes` specify those pairs of axes along which to
		contract the tensors. The axis `a_axes[i]` of `a` must have the same dimension
		as axis `b_axes[i]` of `b` for all `i` in `range(0, len(a_axes))`. The lists
		`a_axes` and `b_axes` must have identical length and consist of unique
		integers that specify valid axes for each of the tensors.
		
		This operation corresponds to `numpy.tensordot(a, b, axes)`.
		
		Example 1: When `a` and `b` are matrices (order 2), the case `axes = 1`
		is equivalent to matrix multiplication.
		
		Example 2: When `a` and `b` are matrices (order 2), the case
		`axes = [[1], [0]]` is equivalent to matrix multiplication.
		
		Example 3: Suppose that \\(a_{ijk}\\) and \\(b_{lmn}\\) represent two
		tensors of order 3. Then, `contract(a, b, [[0], [2]])` is the order 4 tensor
		\\(c_{jklm}\\) whose entry
		corresponding to the indices \\((j,k,l,m)\\) is given by:
		
		\\( c_{jklm} = \sum_i a_{ijk} b_{lmi} \\).
		
		In general, `order(c) = order(a) + order(b) - 2*len(axes[0])`.
		
		Args:
		  a: `Tensor` of type `float32` or `float64`.
		  b: `Tensor` with the same type as `a`.
		  axes: Either a scalar `N`, or a list or an `int32` `Tensor` of shape [2, k].
		   If axes is a scalar, sum over the last N axes of a and the first N axes
		   of b in order.
		   If axes is a list or `Tensor` the first and second row contain the set of
		   unique integers specifying axes along which the contraction is computed,
		   for `a` and `b`, respectively. The number of axes for `a` and `b` must
		   be equal.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as `a`.
		
		Raises:
		  ValueError: If the shapes of `a`, `b`, and `axes` are incompatible.
		  IndexError: If the values in axes exceed the rank of the corresponding
		    tensor.
	**/
	static public function tensordot(a:Dynamic, b:Dynamic, axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A Reader that outputs the lines of a file delimited by '\n'.
		
		Args:
		  skip_header_lines: An optional `int`. Defaults to `0`.
		    Number of lines to skip from the beginning of every file.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function text_line_reader(?skip_header_lines:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A Reader that outputs the lines of a file delimited by '\n'.
		
		Args:
		  skip_header_lines: An optional `int`. Defaults to `0`.
		    Number of lines to skip from the beginning of every file.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function text_line_reader_v2(?skip_header_lines:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function text_line_reader_v2
	**/
	static public function text_line_reader_v2_eager_fallback(?skip_header_lines:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Reader that outputs the records from a TensorFlow Records file.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  compression_type: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function tf_record_reader(?container:Dynamic, ?shared_name:Dynamic, ?compression_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A Reader that outputs the records from a TensorFlow Records file.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  compression_type: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function tf_record_reader_v2(?container:Dynamic, ?shared_name:Dynamic, ?compression_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tf_record_reader_v2
	**/
	static public function tf_record_reader_v2_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?compression_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Constructs a tensor by tiling a given tensor.
		
		This operation creates a new tensor by replicating `input` `multiples` times.
		The output tensor's i'th dimension has `input.dims(i) * multiples[i]` elements,
		and the values of `input` are replicated `multiples[i]` times along the 'i'th
		dimension. For example, tiling `[a b c d]` by `[2]` produces
		`[a b c d a b c d]`.
		
		Args:
		  input: A `Tensor`. 1-D or higher.
		  multiples: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D. Length must be the same as the number of dimensions in `input`
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function tile(input:Dynamic, multiples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tile
	**/
	static public function tile_eager_fallback(input:Dynamic, multiples:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the gradient of `Tile`.
		
		Since `Tile` takes an input and repeats the input `multiples` times
		along each dimension, `TileGrad` takes in `multiples` and aggregates
		each repeated tile of `input` into `output`.
		
		Args:
		  input: A `Tensor`.
		  multiples: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function tile_grad(input:Dynamic, multiples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tile_grad
	**/
	static public function tile_grad_eager_fallback(input:Dynamic, multiples:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Provides the time since epoch in seconds.
		
		Returns the timestamp as a `float64` for seconds since the Unix epoch.
		
		Note: the timestamp is computed when the op is executed, not when it is added
		to the graph.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float64`.
	**/
	static public function timestamp(?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `bfloat16`.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `bfloat16`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `bfloat16`.
	**/
	static public function to_bfloat16(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `complex128`.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `complex128`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `complex128`.
	**/
	static public function to_complex128(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `complex64`.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `complex64`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `complex64`.
	**/
	static public function to_complex64(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `float64`.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `float64`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `float64`.
	**/
	static public function to_double(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `float32`.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `float32`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `float32`.
	**/
	static public function to_float(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `int32`.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `int32`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `int32`.
	**/
	static public function to_int32(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `int64`.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `int64`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `int64`.
	**/
	static public function to_int64(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the trace of a tensor `x`.
		
		`trace(x)` returns the sum along the main diagonal of each inner-most matrix
		in x. If x is of rank `k` with shape `[I, J, K, ..., L, M, N]`, then output
		is a tensor of rank `k-2` with dimensions `[I, J, K, ..., L]` where
		
		`output[i, j, k, ..., l] = trace(x[i, j, i, ..., l, :, :])`
		
		For example:
		
		```python
		x = tf.constant([[1, 2], [3, 4]])
		tf.linalg.trace(x)  # 5
		
		x = tf.constant([[1, 2, 3],
		                 [4, 5, 6],
		                 [7, 8, 9]])
		tf.linalg.trace(x)  # 15
		
		x = tf.constant([[[1, 2, 3],
		                  [4, 5, 6],
		                  [7, 8, 9]],
		                 [[-1, -2, -3],
		                  [-4, -5, -6],
		                  [-7, -8, -9]]])
		tf.linalg.trace(x)  # [15, -15]
		```
		
		Args:
		  x: tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  The trace of input tensor.
	**/
	static public function trace(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns all variables created with `trainable=True`.
		
		When passed `trainable=True`, the `Variable()` constructor automatically
		adds new variables to the graph collection
		`GraphKeys.TRAINABLE_VARIABLES`. This convenience function returns the
		contents of that collection.
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered
		    to include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a
		    scope is supplied. The choice of `re.match` means that a `scope` without
		    special tokens filters by prefix.
		
		Returns:
		  A list of Variable objects.
	**/
	static public function trainable_variables(?scope:Dynamic):Dynamic;
	/**
		Transposes `a`. Permutes the dimensions according to `perm`.
		
		The returned tensor's dimension i will correspond to the input dimension
		`perm[i]`. If `perm` is not given, it is set to (n-1...0), where n is
		the rank of the input tensor. Hence by default, this operation performs a
		regular matrix transpose on 2-D input Tensors. If conjugate is True and
		`a.dtype` is either `complex64` or `complex128` then the values of `a`
		are conjugated and transposed.
		
		@compatibility(numpy)
		In `numpy` transposes are memory-efficient constant time operations as they
		simply return a new view of the same data with adjusted `strides`.
		
		TensorFlow does not support strides, so `transpose` returns a new tensor with
		the items permuted.
		@end_compatibility
		
		For example:
		
		```python
		x = tf.constant([[1, 2, 3], [4, 5, 6]])
		tf.transpose(x)  # [[1, 4]
		                 #  [2, 5]
		                 #  [3, 6]]
		
		# Equivalently
		tf.transpose(x, perm=[1, 0])  # [[1, 4]
		                              #  [2, 5]
		                              #  [3, 6]]
		
		# If x is complex, setting conjugate=True gives the conjugate transpose
		x = tf.constant([[1 + 1j, 2 + 2j, 3 + 3j],
		                 [4 + 4j, 5 + 5j, 6 + 6j]])
		tf.transpose(x, conjugate=True)  # [[1 - 1j, 4 - 4j],
		                                 #  [2 - 2j, 5 - 5j],
		                                 #  [3 - 3j, 6 - 6j]]
		
		# 'perm' is more useful for n-dimensional tensors, for n > 2
		x = tf.constant([[[ 1,  2,  3],
		                  [ 4,  5,  6]],
		                 [[ 7,  8,  9],
		                  [10, 11, 12]]])
		
		# Take the transpose of the matrices in dimension-0
		# (this common operation has a shorthand `linalg.transpose`)
		tf.transpose(x, perm=[0, 2, 1])  # [[[1,  4],
		                                 #   [2,  5],
		                                 #   [3,  6]],
		                                 #  [[7, 10],
		                                 #   [8, 11],
		                                 #   [9, 12]]]
		```
		
		Args:
		  a: A `Tensor`.
		  perm: A permutation of the dimensions of `a`.
		  name: A name for the operation (optional).
		  conjugate: Optional bool. Setting it to `True` is mathematically equivalent
		    to tf.conj(tf.transpose(input)).
		
		Returns:
		  A transposed `Tensor`.
	**/
	static public function transpose(a:Dynamic, ?perm:Dynamic, ?name:Dynamic, ?conjugate:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function transpose
	**/
	static public function transpose_eager_fallback(x:Dynamic, perm:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Divides x / y elementwise (using Python 3 division operator semantics).
		
		NOTE: Prefer using the Tensor operator or tf.divide which obey Python
		division operator semantics.
		
		This function forces Python 3 division operator semantics where all integer
		arguments are cast to floating types first.   This op is generated by normal
		`x / y` division in Python 3 and in Python 2.7 with
		`from __future__ import division`.  If you want integer division that rounds
		down, use `x // y` or `tf.math.floordiv`.
		
		`x` and `y` must have the same numeric type.  If the inputs are floating
		point, the output will have the same type.  If the inputs are integral, the
		inputs are cast to `float32` for `int8` and `int16` and `float64` for `int32`
		and `int64` (matching the behavior of Numpy).
		
		Args:
		  x: `Tensor` numerator of numeric type.
		  y: `Tensor` denominator of numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  `x / y` evaluated in floating point.
		
		Raises:
		  TypeError: If `x` and `y` have different dtypes.
	**/
	static public function truediv(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x / y element-wise for integer types.
		
		Truncation designates that negative numbers will round fractional quantities
		toward zero. I.e. -7 / 5 = -1. This matches C semantics but it is different
		than Python semantics. See `FloorDiv` for a division function that matches
		Python Semantics.
		
		*NOTE*: `TruncateDiv` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function truncate_div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function truncate_div
	**/
	static public function truncate_div_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns element-wise remainder of division. This emulates C semantics in that
		
		the result here is consistent with a truncating divide. E.g. `truncate(x / y) *
		y + truncate_mod(x, y) = x`.
		
		*NOTE*: `TruncateMod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`, `bfloat16`, `half`, `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function truncate_mod(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function truncate_mod
	**/
	static public function truncate_mod_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Outputs random values from a truncated normal distribution.
		
		The generated values follow a normal distribution with specified mean and
		standard deviation, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  mean: A 0-D Tensor or Python value of type `dtype`. The mean of the
		    truncated normal distribution.
		  stddev: A 0-D Tensor or Python value of type `dtype`. The standard deviation
		    of the normal distribution, before truncation.
		  dtype: The type of the output.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    `tf.set_random_seed`
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random truncated normal values.
	**/
	static public function truncated_normal(shape:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function truncated_normal
	**/
	static public function truncated_normal_eager_fallback(shape:Dynamic, dtype:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns x / y element-wise for integer types.
		
		Truncation designates that negative numbers will round fractional quantities
		toward zero. I.e. -7 / 5 = -1. This matches C semantics but it is different
		than Python semantics. See `FloorDiv` for a division function that matches
		Python Semantics.
		
		*NOTE*: `TruncateDiv` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function truncatediv(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns element-wise remainder of division. This emulates C semantics in that
		
		the result here is consistent with a truncating divide. E.g. `truncate(x / y) *
		y + truncate_mod(x, y) = x`.
		
		*NOTE*: `TruncateMod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`, `bfloat16`, `half`, `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function truncatemod(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public var uint16 : Dynamic;
	static public var uint16_ref : Dynamic;
	static public var uint32 : Dynamic;
	static public var uint32_ref : Dynamic;
	static public var uint64 : Dynamic;
	static public var uint64_ref : Dynamic;
	static public var uint8 : Dynamic;
	static public var uint8_ref : Dynamic;
	/**
		Determine the script codes of a given tensor of Unicode integer code points.
		
		This operation converts Unicode code points to script codes corresponding to
		each code point. Script codes correspond to International Components for
		Unicode (ICU) UScriptCode values. See http://icu-project.org/apiref/icu4c/uscript_8h.html.
		Returns -1 (USCRIPT_INVALID_CODE) for invalid codepoints. Output shape will
		match input shape.
		
		Args:
		  input: A `Tensor` of type `int32`. A Tensor of int32 Unicode code points.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function unicode_script(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unicode_script
	**/
	static public function unicode_script_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Finds unique elements in a 1-D tensor.
		
		This operation returns a tensor `y` containing all of the unique elements of `x`
		sorted in the same order that they occur in `x`. This operation also returns a
		tensor `idx` the same size as `x` that contains the index of each value of `x`
		in the unique output `y`. In other words:
		
		`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`
		
		For example:
		
		```
		# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
		y, idx = unique(x)
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
		```
		
		Args:
		  x: A `Tensor`. 1-D.
		  out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, idx).
		
		  y: A `Tensor`. Has the same type as `x`.
		  idx: A `Tensor` of type `out_idx`.
	**/
	static public function unique(x:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unique
	**/
	static public function unique_eager_fallback(x:Dynamic, ?out_idx:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Finds unique elements along an axis of a tensor.
		
		This operation either returns a tensor `y` containing unique elements
		along the `axis` of a tensor. The returned unique elements is sorted
		in the same order as they occur along `axis` in `x`.
		This operation also returns a tensor `idx` that is the same size as
		the number of the elements in `x` along the `axis` dimension. It
		contains the index in the unique output `y`.
		In other words, for an `1-D` tensor `x` with `axis = None:
		
		`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`
		
		For example:
		
		```
		# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
		y, idx = unique(x)
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
		```
		
		For an `2-D` tensor `x` with `axis = 0`:
		
		```
		# tensor 'x' is [[1, 0, 0],
		#                [1, 0, 0],
		#                [2, 0, 0]]
		y, idx = unique(x, axis=0)
		y ==> [[1, 0, 0],
		       [2, 0, 0]]
		idx ==> [0, 0, 1]
		```
		
		For an `2-D` tensor `x` with `axis = 1`:
		
		```
		# tensor 'x' is [[1, 0, 0],
		#                [1, 0, 0],
		#                [2, 0, 0]]
		y, idx = unique(x, axis=1)
		y ==> [[1, 0],
		       [1, 0],
		       [2, 0]]
		idx ==> [0, 1, 1]
		```
		
		Args:
		  x: A `Tensor`. A `Tensor`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A `Tensor` of type `int32` (default: None). The axis of the Tensor to
		    find the unique elements.
		  out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, idx).
		
		  y: A `Tensor`. Has the same type as `x`.
		  idx: A `Tensor` of type `out_idx`.
	**/
	static public function unique_v2(x:Dynamic, axis:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unique_v2
	**/
	static public function unique_v2_eager_fallback(x:Dynamic, axis:Dynamic, ?out_idx:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Finds unique elements in a 1-D tensor.
		
		This operation returns a tensor `y` containing all of the unique elements of `x`
		sorted in the same order that they occur in `x`. This operation also returns a
		tensor `idx` the same size as `x` that contains the index of each value of `x`
		in the unique output `y`. Finally, it returns a third tensor `count` that
		contains the count of each element of `y` in `x`. In other words:
		
		`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`
		
		For example:
		
		```
		# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
		y, idx, count = unique_with_counts(x)
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
		count ==> [2, 1, 3, 1, 2]
		```
		
		Args:
		  x: A `Tensor`. 1-D.
		  out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, idx, count).
		
		  y: A `Tensor`. Has the same type as `x`.
		  idx: A `Tensor` of type `out_idx`.
		  count: A `Tensor` of type `out_idx`.
	**/
	static public function unique_with_counts(x:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unique_with_counts
	**/
	static public function unique_with_counts_eager_fallback(x:Dynamic, ?out_idx:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Finds unique elements along an axis of a tensor.
		
		This operation either returns a tensor `y` containing unique elements
		along the `axis` of a tensor. The returned unique elements is sorted
		in the same order as they occur along `axis` in `x`.
		This operation also returns a tensor `idx` and a tensor `count`
		that are the same size as the number of the elements in `x` along the
		`axis` dimension. The `idx` contains the index in the unique output `y`
		and the `count` contains the count in the unique output `y`.
		In other words, for an `1-D` tensor `x` with `axis = None:
		
		`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`
		
		For example:
		
		```
		# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
		y, idx, count = unique_with_counts(x)
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
		count ==> [2, 1, 3, 1, 2]
		```
		
		For an `2-D` tensor `x` with `axis = 0`:
		
		```
		# tensor 'x' is [[1, 0, 0],
		#                [1, 0, 0],
		#                [2, 0, 0]]
		y, idx, count = unique_with_counts(x, axis=0)
		y ==> [[1, 0, 0],
		       [2, 0, 0]]
		idx ==> [0, 0, 1]
		count ==> [2, 1]
		```
		
		For an `2-D` tensor `x` with `axis = 1`:
		
		```
		# tensor 'x' is [[1, 0, 0],
		#                [1, 0, 0],
		#                [2, 0, 0]]
		y, idx, count = unique_with_counts(x, axis=1)
		y ==> [[1, 0],
		       [1, 0],
		       [2, 0]]
		idx ==> [0, 1, 1]
		count ==> [1, 2]
		```
		
		Args:
		  x: A `Tensor`. A `Tensor`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A `Tensor` of type `int32` (default: None). The axis of the Tensor to
		    find the unique elements.
		  out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, idx, count).
		
		  y: A `Tensor`. Has the same type as `x`.
		  idx: A `Tensor` of type `out_idx`.
		  count: A `Tensor` of type `out_idx`.
	**/
	static public function unique_with_counts_v2(x:Dynamic, axis:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unique_with_counts_v2
	**/
	static public function unique_with_counts_v2_eager_fallback(x:Dynamic, axis:Dynamic, ?out_idx:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Unpacks a given dimension of a rank-`R` tensor into `num` rank-`(R-1)` tensors.
		
		Unpacks `num` tensors from `value` by chipping it along the `axis` dimension.
		For example, given a tensor of shape `(A, B, C, D)`;
		
		If `axis == 0` then the i'th tensor in `output` is the slice `value[i, :, :, :]`
		  and each tensor in `output` will have shape `(B, C, D)`. (Note that the
		  dimension unpacked along is gone, unlike `split`).
		
		If `axis == 1` then the i'th tensor in `output` is the slice `value[:, i, :, :]`
		  and each tensor in `output` will have shape `(A, C, D)`.
		Etc.
		
		This is the opposite of `pack`.
		
		Args:
		  value: A `Tensor`.
		    1-D or higher, with `axis` dimension size equal to `num`.
		  num: An `int` that is `>= 0`.
		  axis: An optional `int`. Defaults to `0`.
		    Dimension along which to unpack.  Negative values wrap around, so the
		    valid range is `[-R, R)`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num` `Tensor` objects with the same type as `value`.
	**/
	static public function unpack(value:Dynamic, num:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unpack
	**/
	static public function unpack_eager_fallback(value:Dynamic, num:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Converts a flat index or array of flat indices into a tuple of
		
		coordinate arrays.
		
		@compatibility(numpy)
		Equivalent to np.unravel_index
		@end_compatibility
		
		Args:
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    An 0-D or 1-D `int` Tensor whose elements are indices into the
		    flattened version of an array of dimensions dims.
		  dims: A `Tensor`. Must have the same type as `indices`.
		    An 1-D `int` Tensor. The shape of the array to use for unraveling
		    indices.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `indices`.
	**/
	static public function unravel_index(indices:Dynamic, dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unravel_index
	**/
	static public function unravel_index_eager_fallback(indices:Dynamic, dims:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the maximum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[(here)](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
		Instead of computing the sum over segments, it computes the maximum such that:
		
		\\(output_i = \max_{j...} data[j...]\\) where max is over tuples `j...` such
		that `segment_ids[j...] == i`.
		
		If the maximum is empty for a given segment ID `i`, it outputs the smallest
		possible value for the specific numeric type,
		`output[i] = numeric_limits<T>::lowest()`.
		
		If the given segment ID `i` is negative, then the corresponding value is
		dropped, and will not be included in the result.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/UnsortedSegmentMax.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor whose shape is a prefix of `data.shape`.END
		      }
		      out_arg {
		        name: "output"
		        description: <<END
		    Has same shape as data, except for the first `segment_ids.rank`
		    dimensions, which are replaced with a single dimension which has size
		    `num_segments`.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function unsorted_segment_max(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unsorted_segment_max
	**/
	static public function unsorted_segment_max_eager_fallback(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the mean along segments of a tensor.
		
		Read [the section on
		segmentation](https://tensorflow.org/api_guides/python/math_ops#segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[here](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
		Instead of computing the sum over segments, it computes the mean of all
		entries belonging to a segment such that:
		
		\\(output_i = 1/N_i \sum_{j...} data[j...]\\) where the sum is over tuples
		`j...` such that `segment_ids[j...] == i` with \\N_i\\ being the number of
		occurrences of id \\i\\.
		
		If there is no entry for a given segment ID `i`, it outputs 0.
		
		If the given segment ID `i` is negative, the value is dropped and will not
		be added to the sum of the segment.
		
		Args:
		  data: A `Tensor` with floating point or complex dtype.
		  segment_ids: An integer tensor whose shape is a prefix of `data.shape`.
		  num_segments: An integer scalar `Tensor`.  The number of distinct
		    segment IDs.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`.  Has same shape as data, except for the first `segment_ids.rank`
		  dimensions, which are replaced with a single dimension which has size
		 `num_segments`.
	**/
	static public function unsorted_segment_mean(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the minimum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[(here)](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
		Instead of computing the sum over segments, it computes the minimum such that:
		
		\\(output_i = \min_{j...} data_[j...]\\) where min is over tuples `j...` such
		that `segment_ids[j...] == i`.
		
		If the minimum is empty for a given segment ID `i`, it outputs the largest
		possible value for the specific numeric type,
		`output[i] = numeric_limits<T>::max()`.
		
		If the given segment ID `i` is negative, then the corresponding value is
		dropped, and will not be included in the result.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor whose shape is a prefix of `data.shape`.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function unsorted_segment_min(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unsorted_segment_min
	**/
	static public function unsorted_segment_min_eager_fallback(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the product along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[(here)](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
		Instead of computing the sum over segments, it computes the product of all
		entries belonging to a segment such that:
		
		\\(output_i = \prod_{j...} data[j...]\\) where the product is over tuples
		`j...` such that `segment_ids[j...] == i`.
		
		If there is no entry for a given segment ID `i`, it outputs 1.
		
		If the given segment ID `i` is negative, then the corresponding value is
		dropped, and will not be included in the result.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor whose shape is a prefix of `data.shape`.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function unsorted_segment_prod(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unsorted_segment_prod
	**/
	static public function unsorted_segment_prod_eager_fallback(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the sum along segments of a tensor divided by the sqrt(N).
		
		Read [the section on
		segmentation](https://tensorflow.org/api_guides/python/math_ops#segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[here](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
		Additionally to computing the sum over segments, it divides the results by
		sqrt(N).
		
		\\(output_i = 1/sqrt(N_i) \sum_{j...} data[j...]\\) where the sum is over
		tuples `j...` such that `segment_ids[j...] == i` with \\N_i\\ being the
		number of occurrences of id \\i\\.
		
		If there is no entry for a given segment ID `i`, it outputs 0.
		
		Note that this op only supports floating point and complex dtypes,
		due to tf.sqrt only supporting these types.
		
		If the given segment ID `i` is negative, the value is dropped and will not
		be added to the sum of the segment.
		
		Args:
		  data: A `Tensor` with floating point or complex dtype.
		  segment_ids: An integer tensor whose shape is a prefix of `data.shape`.
		  num_segments: An integer scalar `Tensor`.  The number of distinct
		    segment IDs.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`.  Has same shape as data, except for the first `segment_ids.rank`
		  dimensions, which are replaced with a single dimension which has size
		 `num_segments`.
	**/
	static public function unsorted_segment_sqrt_n(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output[i] = \sum_{j...} data[j...]\\) where the sum is over tuples `j...` such
		that `segment_ids[j...] == i`.  Unlike `SegmentSum`, `segment_ids`
		need not be sorted and need not cover all values in the full
		range of valid values.
		
		If the sum is empty for a given segment ID `i`, `output[i] = 0`.
		If the given segment ID `i` is negative, the value is dropped and will not be
		added to the sum of the segment.
		
		`num_segments` should equal the number of distinct segment IDs.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/UnsortedSegmentSum.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor whose shape is a prefix of `data.shape`.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function unsorted_segment_sum(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unsorted_segment_sum
	**/
	static public function unsorted_segment_sum_eager_fallback(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Unpacks the given dimension of a rank-`R` tensor into rank-`(R-1)` tensors.
		
		Unpacks `num` tensors from `value` by chipping it along the `axis` dimension.
		If `num` is not specified (the default), it is inferred from `value`'s shape.
		If `value.shape[axis]` is not known, `ValueError` is raised.
		
		For example, given a tensor of shape `(A, B, C, D)`;
		
		If `axis == 0` then the i'th tensor in `output` is the slice
		  `value[i, :, :, :]` and each tensor in `output` will have shape `(B, C, D)`.
		  (Note that the dimension unpacked along is gone, unlike `split`).
		
		If `axis == 1` then the i'th tensor in `output` is the slice
		  `value[:, i, :, :]` and each tensor in `output` will have shape `(A, C, D)`.
		Etc.
		
		This is the opposite of stack.
		
		Args:
		  value: A rank `R > 0` `Tensor` to be unstacked.
		  num: An `int`. The length of the dimension `axis`. Automatically inferred
		    if `None` (the default).
		  axis: An `int`. The axis to unstack along. Defaults to the first
		    dimension. Negative values wrap around, so the valid range is `[-R, R)`.
		  name: A name for the operation (optional).
		
		Returns:
		  The list of `Tensor` objects unstacked from `value`.
		
		Raises:
		  ValueError: If `num` is unspecified and cannot be inferred.
		  ValueError: If `axis` is out of the range [-R, R).
	**/
	static public function unstack(value:Dynamic, ?num:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Op is similar to a lightweight Dequeue.
		
		The basic functionality is similar to dequeue with many fewer
		capabilities and options.  This Op is optimized for performance.
		
		Args:
		  dtypes: A list of `tf.DTypes` that has length `>= 1`.
		  capacity: An optional `int` that is `>= 0`. Defaults to `0`.
		  memory_limit: An optional `int` that is `>= 0`. Defaults to `0`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `dtypes`.
	**/
	static public function unstage(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unstage
	**/
	static public function unstage_eager_fallback(dtypes:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Applies upper_bound(sorted_search_values, values) along each row.
		
		Each set of rows with the same index in (sorted_inputs, values) is treated
		independently.  The resulting row is the equivalent of calling
		`np.searchsorted(sorted_inputs, values, side='right')`.
		
		The result is not a global index to the entire 
		`Tensor`, but rather just the index in the last dimension.
		
		A 2-D example:
		  sorted_sequence = [[0, 3, 9, 9, 10],
		                     [1, 2, 3, 4, 5]]
		  values = [[2, 4, 9],
		            [0, 2, 6]]
		
		  result = UpperBound(sorted_sequence, values)
		
		  result == [[1, 2, 4],
		             [0, 2, 5]]
		
		Args:
		  sorted_inputs: A `Tensor`. 2-D Tensor where each row is ordered.
		  values: A `Tensor`. Must have the same type as `sorted_inputs`.
		    2-D Tensor with the same numbers of rows as `sorted_search_values`. Contains
		    the values that will be searched for in `sorted_search_values`.
		  out_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function upper_bound(sorted_inputs:Dynamic, values:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function upper_bound
	**/
	static public function upper_bound_eager_fallback(sorted_inputs:Dynamic, values:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Get a partitioner for VariableScope to keep shards below `max_shard_bytes`.
		
		This partitioner will shard a Variable along one axis, attempting to keep
		the maximum shard size below `max_shard_bytes`.  In practice, this is not
		always possible when sharding along only one axis.  When this happens,
		this axis is sharded as much as possible (i.e., every dimension becomes
		a separate shard).
		
		If the partitioner hits the `max_shards` limit, then each shard may end up
		larger than `max_shard_bytes`. By default `max_shards` equals `None` and no
		limit on the number of shards is enforced.
		
		One reasonable value for `max_shard_bytes` is `(64 << 20) - 1`, or almost
		`64MB`, to keep below the protobuf byte limit.
		
		Args:
		  max_shard_bytes: The maximum size any given shard is allowed to be.
		  axis: The axis to partition along.  Default: outermost axis.
		  bytes_per_string_element: If the `Variable` is of type string, this provides
		    an estimate of how large each scalar in the `Variable` is.
		  max_shards: The maximum number of shards in int created taking precedence
		    over `max_shard_bytes`.
		
		Returns:
		  A partition function usable as the `partitioner` argument to
		  `variable_scope`, `get_variable`, and `get_partitioned_variable_list`.
		
		Raises:
		  ValueError: If any of the byte counts are non-positive.
	**/
	static public function variable_axis_size_partitioner(max_shard_bytes:Dynamic, ?axis:Dynamic, ?bytes_per_string_element:Dynamic, ?max_shards:Dynamic):Dynamic;
	/**
		Deprecated: context manager for defining an op that creates variables.
	**/
	static public function variable_op_scope(values:Dynamic, name_or_scope:Dynamic, ?default_name:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?reuse:Dynamic, ?dtype:Dynamic, ?use_resource:Dynamic, ?constraint:Dynamic):Dynamic;
	/**
		Returns an Op that initializes a list of variables.
		
		After you launch the graph in a session, you can run the returned Op to
		initialize all the variables in `var_list`. This Op runs all the
		initializers of the variables in `var_list` in parallel.
		
		Calling `initialize_variables()` is equivalent to passing the list of
		initializers to `Group()`.
		
		If `var_list` is empty, however, the function still returns an Op that can
		be run. That Op just has no effect.
		
		Args:
		  var_list: List of `Variable` objects to initialize.
		  name: Optional name for the returned operation.
		
		Returns:
		  An Op that run the initializers of all the specified variables.
	**/
	static public function variables_initializer(var_list:Dynamic, ?name:Dynamic):Dynamic;
	static public var variant : Dynamic;
	static public var variant_ref : Dynamic;
	/**
		Assert that the tensor does not contain any NaN's or Inf's.
		
		Args:
		  t: Tensor to check.
		  msg: Message to log on failure.
		  name: A name for this operation (optional).
		
		Returns:
		  Same tensor as `t`.
	**/
	static public function verify_tensor_all_finite(t:Dynamic, msg:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return the elements, either from `x` or `y`, depending on the `condition`.
		
		If both `x` and `y` are None, then this operation returns the coordinates of
		true elements of `condition`.  The coordinates are returned in a 2-D tensor
		where the first dimension (rows) represents the number of true elements, and
		the second dimension (columns) represents the coordinates of the true
		elements. Keep in mind, the shape of the output tensor can vary depending on
		how many true values there are in input. Indices are output in row-major
		order.
		
		If both non-None, `x` and `y` must have the same shape.
		The `condition` tensor must be a scalar if `x` and `y` are scalar.
		If `x` and `y` are vectors of higher rank, then `condition` must be either a
		vector with size matching the first dimension of `x`, or must have the same
		shape as `x`.
		
		The `condition` tensor acts as a mask that chooses, based on the value at each
		element, whether the corresponding element / row in the output should be taken
		from `x` (if true) or `y` (if false).
		
		If `condition` is a vector and `x` and `y` are higher rank matrices, then it
		chooses which row (outer dimension) to copy from `x` and `y`. If `condition`
		has the same shape as `x` and `y`, then it chooses which element to copy from
		`x` and `y`.
		
		Args:
		  condition: A `Tensor` of type `bool`
		  x: A Tensor which may have the same shape as `condition`. If `condition` is
		    rank 1, `x` may have higher rank, but its first dimension must match the
		    size of `condition`.
		  y: A `tensor` with the same shape and type as `x`.
		  name: A name of the operation (optional)
		
		Returns:
		  A `Tensor` with the same type and shape as `x`, `y` if they are non-None.
		  A `Tensor` with shape `(num_true, dim_size(condition))`.
		
		Raises:
		  ValueError: When exactly one of `x` or `y` is non-None.
	**/
	static public function where(condition:Dynamic, ?x:Dynamic, ?y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function where
	**/
	static public function where_eager_fallback(condition:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  parallel_iterations: The number of iterations allowed to run in parallel.
		    It must be a positive integer.
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
		b = lambda i, x: (tf.Print(i + 1, [i]), tf.Print(x + 1, [i], "x:"))
		i, out = tf.while_loop(c, b, (0, x))
		with tf.Session() as sess:
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
		A Reader that outputs the entire contents of a file as a value.
		
		To use, enqueue filenames in a Queue.  The output of ReaderRead will
		be a filename (key) and the contents of that file (value).
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function whole_file_reader(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A Reader that outputs the entire contents of a file as a value.
		
		To use, enqueue filenames in a Queue.  The output of ReaderRead will
		be a filename (key) and the contents of that file (value).
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function whole_file_reader_v2(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function whole_file_reader_v2
	**/
	static public function whole_file_reader_v2_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Writes contents to the file at input filename. Creates file and recursively
		
		creates directory if not existing.
		
		Args:
		  filename: A `Tensor` of type `string`.
		    scalar. The name of the file to which we write the contents.
		  contents: A `Tensor` of type `string`.
		    scalar. The content to be written to the output file.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function write_file(filename:Dynamic, contents:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function write_file
	**/
	static public function write_file_eager_fallback(filename:Dynamic, contents:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns 0 if x == 0, and x / y otherwise, elementwise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function xdivy(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function xdivy
	**/
	static public function xdivy_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns 0 if x == 0, and x * log(y) otherwise, elementwise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function xlogy(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function xlogy
	**/
	static public function xlogy_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to zero.
		
		This operation returns a tensor of type `dtype` with shape `shape` and
		all elements set to zero.
		
		For example:
		
		```python
		tf.zeros([3, 4], tf.int32)  # [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]
		```
		
		Args:
		  shape: A list of integers, a tuple of integers, or a 1-D `Tensor` of type
		    `int32`.
		  dtype: The type of an element in the resulting `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with all elements set to zero.
	**/
	static public function zeros(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to zero.
		
		Given a single tensor (`tensor`), this operation returns a tensor of the
		same type and shape as `tensor` with all elements set to zero. Optionally,
		you can use `dtype` to specify a new type for the returned tensor.
		
		For example:
		
		```python
		tensor = tf.constant([[1, 2, 3], [4, 5, 6]])
		tf.zeros_like(tensor)  # [[0, 0, 0], [0, 0, 0]]
		```
		
		Args:
		  tensor: A `Tensor`.
		  dtype: A type for the returned `Tensor`. Must be `float16`, `float32`,
		    `float64`, `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`,
		    `complex64`, `complex128`, `bool` or `string`.
		  name: A name for the operation (optional).
		  optimize: if true, attempt to statically determine the shape of 'tensor'
		  and encode it as a constant.
		
		Returns:
		  A `Tensor` with all elements set to zero.
	**/
	static public function zeros_like(tensor:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?optimize:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function zeros_like
	**/
	static public function zeros_like_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Compute the Hurwitz zeta function \\(\zeta(x, q)\\).
		
		The Hurwitz zeta function is defined as:
		
		
		\\(\zeta(x, q) = \sum_{n=0}^{\infty} (q + n)^{-x}\\)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  q: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function zeta(x:Dynamic, q:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function zeta
	**/
	static public function zeta_eager_fallback(x:Dynamic, q:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
}