/* This file is generated, do not edit! */
package tensorflow.compat.v2.compat.v1;
@:pythonImport("tensorflow.compat.v2.compat.v1") extern class V1_Module {
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
	static public var COMPILER_VERSION : Dynamic;
	static public var CXX11_ABI_FLAG : Dynamic;
	static public var GIT_VERSION : Dynamic;
	static public var GRAPH_DEF_VERSION : Dynamic;
	static public var GRAPH_DEF_VERSION_MIN_CONSUMER : Dynamic;
	static public var GRAPH_DEF_VERSION_MIN_PRODUCER : Dynamic;
	static public var MONOLITHIC_BUILD : Dynamic;
	/**
		Specifies that ops of type `op_type` is not differentiable.
		
		This function should *not* be used for operations that have a
		well-defined gradient that is not yet implemented.
		
		This function is only used when defining a new op type. It may be
		used for ops such as `tf.size()` that are not differentiable.  For
		example:
		
		```python
		tf.no_gradient("Size")
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
		tf.no_gradient("Size")
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
	/**
		Prints a list of tensors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-08-20.
		Instructions for updating:
		Use tf.print instead of tf.Print. Note that tf.print returns a no-output operator that directly prints the output. Outside of defuns or eager mode, this operator will not be executed unless it is directly specified in session.run or used as a control dependency for other operators. This is only a concern in graph mode. Below is an example of how to ensure tf.print executes in graph mode:
		
		
		This is an identity op (behaves like `tf.identity`) with the side effect
		of printing `data` when evaluating.
		
		Note: This op prints to the standard error. It is not currently compatible
		  with jupyter notebook (printing to the notebook *server's* output, not into
		  the notebook).
		
		@compatibility(TF2)
		This API is deprecated. Use `tf.print` instead. `tf.print` does not need the
		`input_` argument.
		
		`tf.print` works in TF2 when executing eagerly and inside a `tf.function`.
		
		In TF1-styled sessions, an explicit control dependency declaration is needed
		to execute the `tf.print` operation. Refer to the documentation of
		`tf.print` for more details.
		@end_compatibility
		
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
		
		  ```python
		  sess = tf.compat.v1.Session()
		  with sess.as_default():
		      tensor = tf.range(10)
		      print_op = tf.print(tensor)
		      with tf.control_dependencies([print_op]):
		        out = tf.add(tensor, tensor)
		      sess.run(out)
		  ```
	**/
	static public function Print(input_:Dynamic, data:Dynamic, ?message:Dynamic, ?first_n:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	static public var QUANTIZED_DTYPES : Dynamic;
	static public var VERSION : Dynamic;
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
	static public var _absolute_import : Dynamic;
	static public var _division : Dynamic;
	static public var _estimator_module : Dynamic;
	static public var _keras_module : Dynamic;
	static public var _layer_package : Dynamic;
	static public var _legacy_rnn_package : Dynamic;
	static public var _module_dir : Dynamic;
	static public var _print_function : Dynamic;
	/**
		Computes the absolute value of a tensor.
		
		Given a tensor of integer or floating-point values, this operation returns a
		tensor of the same type, where each element contains the absolute value of the
		corresponding element in the input.
		
		Given a tensor `x` of complex numbers, this operation returns a tensor of type
		`float32` or `float64` that is the absolute value of each element in `x`. For
		a complex number \\(a + bj\\), its absolute value is computed as
		\\(\sqrt{a^2 + b^2}\\).
		
		For example:
		
		>>> # real number
		>>> x = tf.constant([-2.25, 3.25])
		>>> tf.abs(x)
		<tf.Tensor: shape=(2,), dtype=float32,
		numpy=array([2.25, 3.25], dtype=float32)>
		
		>>> # complex number
		>>> x = tf.constant([[-2.25 + 4.75j], [-3.25 + 5.75j]])
		>>> tf.abs(x)
		<tf.Tensor: shape=(2, 1), dtype=float64, numpy=
		array([[5.25594901],
		       [6.60492241]])>
		
		Args:
		  x: A `Tensor` or `SparseTensor` of type `float16`, `float32`, `float64`,
		    `int32`, `int64`, `complex64` or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` of the same size, type and sparsity as `x`,
		    with absolute values. Note, for `complex64` or `complex128` input, the
		    returned `Tensor` will be of type `float32` or `float64`, respectively.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.abs(x.values, ...), x.dense_shape)`
	**/
	static public function abs(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the element-wise sum of a list of tensors.
		
		Optionally, pass `shape` and `tensor_dtype` for shape and type checking,
		otherwise, these are inferred.
		
		`accumulate_n` performs the same operation as `tf.math.add_n`.
		
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
		  shape: Expected shape of elements of `inputs` (optional). Also controls the
		    output shape of this op, which may affect type inference in other ops. A
		    value of `None` means "infer the input shape from the shapes in `inputs`".
		  tensor_dtype: Expected data type of `inputs` (optional). A value of `None`
		    means "infer the input dtype from `inputs[0]`".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of same shape and type as the elements of `inputs`.
		
		Raises:
		  ValueError: If `inputs` don't all have same shape and dtype or the shape
		  cannot be inferred.
	**/
	static public function accumulate_n(inputs:Dynamic, ?shape:Dynamic, ?tensor_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes acos of x element-wise.
		
		Provided an input tensor, the `tf.math.acos` operation
		returns the inverse cosine of each element of the tensor.
		If `y = tf.math.cos(x)` then, `x = tf.math.acos(y)`.
		
		Input range is `[-1, 1]` and the output has a range of `[0, pi]`.
		
		For example:
		
		>>> x = tf.constant([1.0, -0.5, 3.4, 0.2, 0.0, -2], dtype = tf.float32)
		>>> tf.math.acos(x)
		<tf.Tensor: shape=(6,), dtype=float32,
		numpy= array([0. , 2.0943952, nan, 1.3694383, 1.5707964, nan],
		dtype=float32)>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`,
		    `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`,
		    `complex64`, `complex128`, `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as x.
	**/
	static public function acos(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes inverse hyperbolic cosine of x element-wise.
		
		Given an input tensor, the function computes inverse hyperbolic cosine of every element.
		Input range is `[1, inf]`. It returns `nan` if the input lies outside the range.
		
		```python
		x = tf.constant([-2, -0.5, 1, 1.2, 200, 10000, float("inf")])
		tf.math.acosh(x) ==> [nan nan 0. 0.62236255 5.9914584 9.903487 inf]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function acosh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x + y element-wise.
		
		Example usages below.
		
		Add a scalar and a list:
		
		>>> x = [1, 2, 3, 4, 5]
		>>> y = 1
		>>> tf.add(x, y)
		<tf.Tensor: shape=(5,), dtype=int32, numpy=array([2, 3, 4, 5, 6],
		dtype=int32)>
		
		Note that binary `+` operator can be used instead:
		
		>>> x = tf.convert_to_tensor([1, 2, 3, 4, 5])
		>>> y = tf.convert_to_tensor(1)
		>>> x + y
		<tf.Tensor: shape=(5,), dtype=int32, numpy=array([2, 3, 4, 5, 6],
		dtype=int32)>
		
		Add a tensor and a list of same shape:
		
		>>> x = [1, 2, 3, 4, 5]
		>>> y = tf.constant([1, 2, 3, 4, 5])
		>>> tf.add(x, y)
		<tf.Tensor: shape=(5,), dtype=int32,
		numpy=array([ 2,  4,  6,  8, 10], dtype=int32)>
		
		**Warning**: If one of the inputs (`x` or `y`) is a tensor and the other is a
		non-tensor, the non-tensor input will adopt (or get casted to) the data type
		of the tensor input. This can potentially cause unwanted overflow or underflow
		conversion.
		
		For example,
		
		>>> x = tf.constant([1, 2], dtype=tf.int8)
		>>> y = [2**7 + 1, 2**7 + 2]
		>>> tf.add(x, y)
		<tf.Tensor: shape=(2,), dtype=int8, numpy=array([-126, -124], dtype=int8)>
		
		When adding two input values of different shapes, `Add` follows NumPy
		broadcasting rules. The two input array shapes are compared element-wise.
		Starting with the trailing dimensions, the two dimensions either have to be
		equal or one of them needs to be `1`.
		
		For example,
		
		>>> x = np.ones(6).reshape(1, 2, 1, 3)
		>>> y = np.ones(6).reshape(2, 1, 3, 1)
		>>> tf.add(x, y).shape.as_list()
		[2, 2, 3, 3]
		
		Another example with two arrays of different dimension.
		
		>>> x = np.ones([1, 2, 1, 4])
		>>> y = np.ones([3, 4])
		>>> tf.add(x, y).shape.as_list()
		[1, 2, 3, 4]
		
		The reduction version of this elementwise operation is `tf.math.reduce_sum`
		
		Args:
		  x: A `tf.Tensor`. Must be one of the following types: bfloat16, half,
		    float32, float64, uint8, int8, int16, int32, int64, complex64, complex128,
		    string.
		  y: A `tf.Tensor`. Must have the same type as x.
		  name: A name for the operation (optional)
	**/
	static public function add(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Connect a `tf.debugging.check_numerics` to every floating point tensor.
		
		`check_numerics` operations themselves are added for each `half`, `float`,
		or `double` tensor in the current default graph. For all ops in the graph, the
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
		eager execution, call `tf.debugging.enable_check_numerics()` once before
		executing the checked operations.
		@end_compatibility
	**/
	static public function add_check_numerics_ops():Dynamic;
	/**
		Adds all input tensors element-wise.
		
		`tf.math.add_n` performs the same operation as `tf.math.accumulate_n`.
		
		This op does not [broadcast](
		https://docs.scipy.org/doc/numpy-1.13.0/user/basics.broadcasting.html)
		its inputs. If you need broadcasting, use `tf.math.add` (or the `+` operator)
		instead.
		
		For example:
		
		>>> a = tf.constant([[3, 5], [4, 8]])
		>>> b = tf.constant([[1, 6], [2, 9]])
		>>> tf.math.add_n([a, b, a])
		<tf.Tensor: shape=(2, 2), dtype=int32, numpy=
		array([[ 7, 16],
		       [10, 25]], dtype=int32)>
		
		Args:
		  inputs: A list of `tf.Tensor` or `tf.IndexedSlices` objects, each with the
		    same shape and type. `tf.IndexedSlices` objects will be converted into
		    dense tensors prior to adding.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of the same shape and type as the elements of `inputs`.
		
		Raises:
		  ValueError: If `inputs` don't all have same shape and dtype or the shape
		  cannot be inferred.
	**/
	static public function add_n(inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.add_to_collection()` using the default graph.
		
		See `tf.Graph.add_to_collection`
		for more details.
		
		Args:
		  name: The key for the collection. For example, the `GraphKeys` class
		    contains many standard names for collections.
		  value: The value to add to the collection.
		
		@compatibility(eager)
		Collections are only supported in eager when variables are created inside
		an EagerVariableStore (e.g. as part of a layer or template).
		@end_compatibility
	**/
	static public function add_to_collection(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.add_to_collections()` using the default graph.
		
		See `tf.Graph.add_to_collections`
		for more details.
		
		Args:
		  names: The key for the collections. The `GraphKeys` class contains many
		    standard names for collections.
		  value: The value to add to the collections.
		
		@compatibility(eager)
		Collections are only supported in eager when variables are created inside
		an EagerVariableStore (e.g. as part of a layer or template).
		@end_compatibility
	**/
	static public function add_to_collections(names:Dynamic, value:Dynamic):Dynamic;
	/**
		Use `tf.compat.v1.global_variables` instead. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-02.
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
		input = tf.constant([-2.25 + 4.75j, 3.25 + 5.75j], dtype=tf.complex64)
		tf.math.angle(input).numpy()
		# ==> array([2.0131705, 1.056345 ], dtype=float32)
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
		Returns the index with the largest value across dimensions of a tensor.
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Usage:
		  ```python
		  import tensorflow as tf
		  a = [1, 10, 26.9, 2.8, 166.32, 62.3]
		  b = tf.math.argmax(input = a)
		  c = tf.keras.backend.eval(b)
		  # c = 4
		  # here a[4] = 166.32 which is the largest element of a across axis 0
		  ```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
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
		Returns the index with the smallest value across dimensions of a tensor.
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Usage:
		  ```python
		  import tensorflow as tf
		  a = [1, 10, 26.9, 2.8, 166.32, 62.3]
		  b = tf.math.argmin(input = a)
		  c = tf.keras.backend.eval(b)
		  # c = 0
		  # here a[0] = 1 which is the smallest element of a across axis 0
		  ```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
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
		Returns the index with the largest value across axes of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dimension)`. They will be removed in a future version.
		Instructions for updating:
		Use the `axis` argument instead
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Usage:
		  ```python
		  import tensorflow as tf
		  a = [1, 10, 26.9, 2.8, 166.32, 62.3]
		  b = tf.math.argmax(input = a)
		  c = tf.keras.backend.eval(b)
		  # c = 4
		  # here a[4] = 166.32 which is the largest element of a across axis 0
		  ```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
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
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dimension)`. They will be removed in a future version.
		Instructions for updating:
		Use the `axis` argument instead
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Usage:
		  ```python
		  import tensorflow as tf
		  a = [1, 10, 26.9, 2.8, 166.32, 62.3]
		  b = tf.math.argmin(input = a)
		  c = tf.keras.backend.eval(b)
		  # c = 0
		  # here a[0] = 1 which is the smallest element of a across axis 0
		  ```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
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
		Returns the indices of a tensor that give its sorted order along an axis.
		
		>>> values = [1, 10, 26.9, 2.8, 166.32, 62.3]
		>>> sort_order = tf.argsort(values)
		>>> sort_order.numpy()
		array([0, 3, 1, 2, 5, 4], dtype=int32)
		
		For a 1D tensor:
		
		>>> sorted = tf.gather(values, sort_order)
		>>> assert tf.reduce_all(sorted == tf.sort(values))
		
		For higher dimensions, the output has the same shape as
		`values`, but along the given axis, values represent the index of the sorted
		element in that slice of the tensor at the given position.
		
		>>> mat = [[30,20,10],
		...        [20,10,30],
		...        [10,30,20]]
		>>> indices = tf.argsort(mat)
		>>> indices.numpy()
		array([[2, 1, 0],
		       [1, 0, 2],
		       [0, 2, 1]], dtype=int32)
		
		If `axis=-1` these indices can be used to apply a sort using `tf.gather`:
		
		>>> tf.gather(mat, indices, batch_dims=-1).numpy()
		array([[10, 20, 30],
		       [10, 20, 30],
		       [10, 20, 30]], dtype=int32)
		
		See also:
		
		  * `tf.sort`: Sort along an axis.
		  * `tf.math.top_k`: A partial sort that returns a fixed number of top values
		    and corresponding indices.
		
		Args:
		  values: 1-D or higher **numeric** `Tensor`.
		  axis: The axis along which to sort. The default is -1, which sorts the last
		    axis.
		  direction: The direction in which to sort the values (`'ASCENDING'` or
		    `'DESCENDING'`).
		  stable: If True, equal elements in the original tensor will not be
		    re-ordered in the returned order. Unstable sort is not yet implemented,
		    but will eventually be the default for performance reasons. If you require
		    a stable order, pass `stable=True` for forwards compatibility.
		  name: Optional name for the operation.
		
		Returns:
		  An int32 `Tensor` with the same shape as `values`. The indices that would
		      sort each slice of the given `values` along the given `axis`.
		
		Raises:
		  ValueError: If axis is not a constant scalar, or the direction is invalid.
		  tf.errors.InvalidArgumentError: If the `values.dtype` is not a `float` or
		      `int` type.
	**/
	static public function argsort(values:Dynamic, ?axis:Dynamic, ?direction:Dynamic, ?stable:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts the given `type_value` to a `DType`.
		
		Note: `DType` values are interned. When passed a new `DType` object,
		`as_dtype` always returns the interned value.
		
		Args:
		  type_value: A value that can be converted to a `tf.DType` object. This may
		    currently be a `tf.DType` object, a [`DataType`
		    enum](https://www.tensorflow.org/code/tensorflow/core/framework/types.proto),
		      a string type name, or a [`numpy.dtype`](https://numpy.org/doc/stable/reference/generated/numpy.dtype.html).
		
		Returns:
		  A `DType` corresponding to `type_value`.
		
		Raises:
		  TypeError: If `type_value` cannot be converted to a `DType`.
	**/
	static public function as_dtype(type_value:Dynamic):Dynamic;
	/**
		Converts each entry in the given tensor to strings.
		
		Supports many numeric types and boolean.
		
		For Unicode, see the
		[https://www.tensorflow.org/tutorials/representation/unicode](Working with Unicode text)
		tutorial.
		
		Examples:
		
		>>> tf.strings.as_string([3, 2])
		<tf.Tensor: shape=(2,), dtype=string, numpy=array([b'3', b'2'], dtype=object)>
		>>> tf.strings.as_string([3.1415926, 2.71828], precision=2).numpy()
		array([b'3.14', b'2.72'], dtype=object)
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`, `complex64`, `complex128`, `bool`, `variant`.
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
		Computes the trignometric inverse sine of x element-wise.
		
		The `tf.math.asin` operation returns the inverse of `tf.math.sin`, such that
		if `y = tf.math.sin(x)` then, `x = tf.math.asin(y)`.
		
		**Note**: The output of `tf.math.asin` will lie within the invertible range
		of sine, i.e [-pi/2, pi/2].
		
		For example:
		
		```python
		# Note: [1.047, 0.785] ~= [(pi/3), (pi/4)]
		x = tf.constant([1.047, 0.785])
		y = tf.math.sin(x) # [0.8659266, 0.7068252]
		
		tf.math.asin(y) # [1.047, 0.785] = x
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function asin(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes inverse hyperbolic sine of x element-wise.
		
		  Given an input tensor, this function computes inverse hyperbolic sine
		  for every element in the tensor. Both input and output has a range of
		  `[-inf, inf]`.
		
		  ```python
		  x = tf.constant([-float("inf"), -2, -0.5, 1, 1.2, 200, 10000, float("inf")])
		  tf.math.asinh(x) ==> [-inf -1.4436355 -0.4812118 0.8813736 1.0159732 5.991471 9.903487 inf]
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function asinh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x == y` holds element-wise.
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] == y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
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
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x == y` is False. The check can be performed immediately during
		    eager execution or if `x` and `y` are statically known.
		
		@compatibility(TF2)
		`tf.compat.v1.assert_equal` is compatible with eager execution and
		`tf.function`.
		Please use `tf.debugging.assert_equal` instead when migrating to TF2. Apart
		from `data`, all arguments are supported with the same argument name.
		
		If you want to ensure the assert statements run before the
		potentially-invalid computation, please use `tf.control_dependencies`,
		as tf.function auto-control dependencies are insufficient for assert
		statements.
		
		#### Structural Mapping to Native TF2
		
		Before:
		
		```python
		tf.compat.v1.assert_equal(
		  x=x, y=y, data=data, summarize=summarize,
		  message=message, name=name)
		```
		
		After:
		
		```python
		tf.debugging.assert_equal(
		  x=x, y=y, message=message,
		  summarize=summarize, name=name)
		```
		
		#### TF1 & TF2 Usage Example
		
		TF1:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   a = tf.compat.v1.placeholder(tf.float32, [2])
		...   b = tf.compat.v1.placeholder(tf.float32, [2])
		...   result = tf.compat.v1.assert_equal(a, b,
		...     message='"a == b" does not hold for the given inputs')
		...   with tf.compat.v1.control_dependencies([result]):
		...     sum_node = a + b
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> val = sess.run(sum_node, feed_dict={a: [1, 2], b:[1, 2]})
		
		
		TF2:
		
		>>> a = tf.Variable([1, 2], dtype=tf.float32)
		>>> b = tf.Variable([1, 2], dtype=tf.float32)
		>>> assert_op = tf.debugging.assert_equal(a, b, message=
		...   '"a == b" does not hold for the given inputs')
		>>> # When working with tf.control_dependencies
		>>> with tf.control_dependencies([assert_op]):
		...   val = a + b
		
		@end_compatibility
	**/
	static public function assert_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x > y` holds element-wise.
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] > y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_greater(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
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
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x > y` is False. The check can be performed immediately during
		    eager execution or if `x` and `y` are statically known.
		
		@compatibility(TF2)
		`tf.compat.v1.assert_greater` is compatible with eager execution and
		`tf.function`.
		Please use `tf.debugging.assert_greater` instead when migrating to TF2. Apart
		from `data`, all arguments are supported with the same argument name.
		
		If you want to ensure the assert statements run before the
		potentially-invalid computation, please use `tf.control_dependencies`,
		as tf.function auto-control dependencies are insufficient for assert
		statements.
		
		#### Structural Mapping to Native TF2
		
		Before:
		
		```python
		tf.compat.v1.assert_greater(
		  x=x, y=y, data=data, summarize=summarize,
		  message=message, name=name)
		```
		
		After:
		
		```python
		tf.debugging.assert_greater(
		  x=x, y=y, message=message,
		  summarize=summarize, name=name)
		```
		
		#### TF1 & TF2 Usage Example
		
		TF1:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   a = tf.compat.v1.placeholder(tf.float32, [2])
		...   b = tf.compat.v1.placeholder(tf.float32, [2])
		...   result = tf.compat.v1.assert_greater(a, b,
		...     message='"a > b" does not hold for the given inputs')
		...   with tf.compat.v1.control_dependencies([result]):
		...     sum_node = a + b
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> val = sess.run(sum_node, feed_dict={a: [1, 2], b:[0, 1]})
		
		
		TF2:
		
		>>> a = tf.Variable([1, 2], dtype=tf.float32)
		>>> b = tf.Variable([0, 1], dtype=tf.float32)
		>>> assert_op = tf.debugging.assert_greater(a, b, message=
		...   '"a > b" does not hold for the given inputs')
		>>> # When working with tf.control_dependencies
		>>> with tf.control_dependencies([assert_op]):
		...   val = a + b
		
		@end_compatibility
	**/
	static public function assert_greater(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x >= y` holds element-wise.
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] >= y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_greater_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_greater_equal".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x >= y` is False.
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x >= y` is False. The check can be performed immediately during
		    eager execution or if `x` and `y` are statically known.
		
		@compatibility(TF2)
		`tf.compat.v1.assert_greater_equal` is compatible with eager execution and
		`tf.function`.
		Please use `tf.debugging.assert_greater_equal` instead when migrating to TF2. Apart
		from `data`, all arguments are supported with the same argument name.
		
		If you want to ensure the assert statements run before the
		potentially-invalid computation, please use `tf.control_dependencies`,
		as tf.function auto-control dependencies are insufficient for assert
		statements.
		
		#### Structural Mapping to Native TF2
		
		Before:
		
		```python
		tf.compat.v1.assert_greater_equal(
		  x=x, y=y, data=data, summarize=summarize,
		  message=message, name=name)
		```
		
		After:
		
		```python
		tf.debugging.assert_greater_equal(
		  x=x, y=y, message=message,
		  summarize=summarize, name=name)
		```
		
		#### TF1 & TF2 Usage Example
		
		TF1:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   a = tf.compat.v1.placeholder(tf.float32, [2])
		...   b = tf.compat.v1.placeholder(tf.float32, [2])
		...   result = tf.compat.v1.assert_greater_equal(a, b,
		...     message='"a >= b" does not hold for the given inputs')
		...   with tf.compat.v1.control_dependencies([result]):
		...     sum_node = a + b
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> val = sess.run(sum_node, feed_dict={a: [1, 2], b:[1, 0]})
		
		
		TF2:
		
		>>> a = tf.Variable([1, 2], dtype=tf.float32)
		>>> b = tf.Variable([1, 0], dtype=tf.float32)
		>>> assert_op = tf.debugging.assert_greater_equal(a, b, message=
		...   '"a >= b" does not hold for the given inputs')
		>>> # When working with tf.control_dependencies
		>>> with tf.control_dependencies([assert_op]):
		...   val = a + b
		
		@end_compatibility
	**/
	static public function assert_greater_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert that `x` is of integer dtype.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_integer(x)]):
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
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] < y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_less(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
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
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x < y` is False. The check can be performed immediately during
		    eager execution or if `x` and `y` are statically known.
		
		@compatibility(TF2)
		`tf.compat.v1.assert_less` is compatible with eager execution and
		`tf.function`.
		Please use `tf.debugging.assert_less` instead when migrating to TF2. Apart
		from `data`, all arguments are supported with the same argument name.
		
		If you want to ensure the assert statements run before the
		potentially-invalid computation, please use `tf.control_dependencies`,
		as tf.function auto-control dependencies are insufficient for assert
		statements.
		
		#### Structural Mapping to Native TF2
		
		Before:
		
		```python
		tf.compat.v1.assert_less(
		  x=x, y=y, data=data, summarize=summarize,
		  message=message, name=name)
		```
		
		After:
		
		```python
		tf.debugging.assert_less(
		  x=x, y=y, message=message,
		  summarize=summarize, name=name)
		```
		
		#### TF1 & TF2 Usage Example
		
		TF1:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   a = tf.compat.v1.placeholder(tf.float32, [2])
		...   b = tf.compat.v1.placeholder(tf.float32, [2])
		...   result = tf.compat.v1.assert_less(a, b,
		...     message='"a < b" does not hold for the given inputs')
		...   with tf.compat.v1.control_dependencies([result]):
		...     sum_node = a + b
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> val = sess.run(sum_node, feed_dict={a: [1, 2], b:[2, 3]})
		
		
		TF2:
		
		>>> a = tf.Variable([1, 2], dtype=tf.float32)
		>>> b = tf.Variable([2, 3], dtype=tf.float32)
		>>> assert_op = tf.debugging.assert_less(a, b, message=
		...   '"a < b" does not hold for the given inputs')
		>>> # When working with tf.control_dependencies
		>>> with tf.control_dependencies([assert_op]):
		...   val = a + b
		
		@end_compatibility
	**/
	static public function assert_less(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x <= y` holds element-wise.
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] <= y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_less_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_less_equal".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x <= y` is False.
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x <= y` is False. The check can be performed immediately during
		    eager execution or if `x` and `y` are statically known.
		
		@compatibility(TF2)
		`tf.compat.v1.assert_less_equal` is compatible with eager execution and
		`tf.function`.
		Please use `tf.debugging.assert_less_equal` instead when migrating to TF2. Apart
		from `data`, all arguments are supported with the same argument name.
		
		If you want to ensure the assert statements run before the
		potentially-invalid computation, please use `tf.control_dependencies`,
		as tf.function auto-control dependencies are insufficient for assert
		statements.
		
		#### Structural Mapping to Native TF2
		
		Before:
		
		```python
		tf.compat.v1.assert_less_equal(
		  x=x, y=y, data=data, summarize=summarize,
		  message=message, name=name)
		```
		
		After:
		
		```python
		tf.debugging.assert_less_equal(
		  x=x, y=y, message=message,
		  summarize=summarize, name=name)
		```
		
		#### TF1 & TF2 Usage Example
		
		TF1:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   a = tf.compat.v1.placeholder(tf.float32, [2])
		...   b = tf.compat.v1.placeholder(tf.float32, [2])
		...   result = tf.compat.v1.assert_less_equal(a, b,
		...     message='"a <= b" does not hold for the given inputs')
		...   with tf.compat.v1.control_dependencies([result]):
		...     sum_node = a + b
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> val = sess.run(sum_node, feed_dict={a: [1, 2], b:[1, 3]})
		
		
		TF2:
		
		>>> a = tf.Variable([1, 2], dtype=tf.float32)
		>>> b = tf.Variable([1, 3], dtype=tf.float32)
		>>> assert_op = tf.debugging.assert_less_equal(a, b, message=
		...   '"a <= b" does not hold for the given inputs')
		>>> # When working with tf.control_dependencies
		>>> with tf.control_dependencies([assert_op]):
		...   val = a + b
		
		@end_compatibility
	**/
	static public function assert_less_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x` and `y` are close element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_near(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have
		
		```tf.abs(x[i] - y[i]) <= atol + rtol * tf.abs(y[i])```.
		
		If both `x` and `y` are empty, this is trivially satisfied.
		
		The default `atol` and `rtol` is `10 * eps`, where `eps` is the smallest
		representable positive number such that `1 + eps != 1`.  This is about
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
		Similar to `numpy.testing.assert_allclose`, except tolerance depends on data
		type. This is due to the fact that `TensorFlow` is often used with `32bit`,
		`64bit`, and even `16bit` data.
		@end_compatibility
	**/
	static public function assert_near(x:Dynamic, y:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x < 0` holds element-wise.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.debugging.assert_negative(x, y)]):
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
		  Op that raises `InvalidArgumentError` if `x < 0` is False.
		  @compatibility(eager)
		    returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x < 0` is False. The check can be performed immediately during
		    eager execution or if `x` is statically known.
	**/
	static public function assert_negative(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x >= 0` holds element-wise.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.debugging.assert_non_negative(x, y)]):
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
		  name: A name for this operation (optional).  Defaults to "assert_non_negative".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x >= 0` is False.
		  @compatibility(eager)
		    returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x >= 0` is False. The check can be performed immediately during
		    eager execution or if `x` is statically known.
	**/
	static public function assert_non_negative(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x <= 0` holds element-wise.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.debugging.assert_non_positive(x, y)]):
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
		  name: A name for this operation (optional).  Defaults to "assert_non_positive".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x <= 0` is False.
		  @compatibility(eager)
		    returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x <= 0` is False. The check can be performed immediately during
		    eager execution or if `x` is statically known.
	**/
	static public function assert_non_positive(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x != y` holds element-wise.
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] != y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_none_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_none_equal".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x != y` is False.
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x != y` is False. The check can be performed immediately during
		    eager execution or if `x` and `y` are statically known.
		
		@compatibility(TF2)
		`tf.compat.v1.assert_none_equal` is compatible with eager execution and
		`tf.function`.
		Please use `tf.debugging.assert_none_equal` instead when migrating to TF2. Apart
		from `data`, all arguments are supported with the same argument name.
		
		If you want to ensure the assert statements run before the
		potentially-invalid computation, please use `tf.control_dependencies`,
		as tf.function auto-control dependencies are insufficient for assert
		statements.
		
		#### Structural Mapping to Native TF2
		
		Before:
		
		```python
		tf.compat.v1.assert_none_equal(
		  x=x, y=y, data=data, summarize=summarize,
		  message=message, name=name)
		```
		
		After:
		
		```python
		tf.debugging.assert_none_equal(
		  x=x, y=y, message=message,
		  summarize=summarize, name=name)
		```
		
		#### TF1 & TF2 Usage Example
		
		TF1:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   a = tf.compat.v1.placeholder(tf.float32, [2])
		...   b = tf.compat.v1.placeholder(tf.float32, [2])
		...   result = tf.compat.v1.assert_none_equal(a, b,
		...     message='"a != b" does not hold for the given inputs')
		...   with tf.compat.v1.control_dependencies([result]):
		...     sum_node = a + b
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> val = sess.run(sum_node, feed_dict={a: [1, 2], b:[2, 1]})
		
		
		TF2:
		
		>>> a = tf.Variable([1, 2], dtype=tf.float32)
		>>> b = tf.Variable([2, 1], dtype=tf.float32)
		>>> assert_op = tf.debugging.assert_none_equal(a, b, message=
		...   '"a != b" does not hold for the given inputs')
		>>> # When working with tf.control_dependencies
		>>> with tf.control_dependencies([assert_op]):
		...   val = a + b
		
		@end_compatibility
	**/
	static public function assert_none_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x > 0` holds element-wise.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.debugging.assert_positive(x, y)]):
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
		  Op that raises `InvalidArgumentError` if `x > 0` is False.
		  @compatibility(eager)
		    returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x > 0` is False. The check can be performed immediately during
		    eager execution or if `x` is statically known.
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
		with tf.control_dependencies([tf.compat.v1.assert_rank(x, 2)]):
		  output = tf.reduce_sum(x)
		```
		
		Args:
		  x:  Numeric `Tensor`.
		  rank:  Scalar integer `Tensor`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and the shape of `x`.
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
		with tf.control_dependencies([tf.compat.v1.assert_rank_at_least(x, 2)]):
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
		with tf.control_dependencies([tf.compat.v1.assert_rank_in(x, (2, 4))]):
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
	/**
		Asserts that the given `tensor` is a scalar (i.e. zero-dimensional).
		
		This function raises `ValueError` unless it can be certain that the given
		`tensor` is a scalar. `ValueError` is also raised if the shape of `tensor` is
		unknown.
		
		Args:
		  tensor: A `Tensor`.
		  name:  A name for this operation. Defaults to "assert_scalar"
		  message: A string to prefix to the default message.
		
		Returns:
		  The input tensor (potentially converted to a `Tensor`).
		
		Raises:
		  ValueError: If the tensor is not scalar (rank 0), or if its shape is
		    unknown.
	**/
	static public function assert_scalar(tensor:Dynamic, ?name:Dynamic, ?message:Dynamic):Dynamic;
	/**
		Statically asserts that the given `Tensor` is of the specified type.
		
		Args:
		  tensor: A `Tensor` or `SparseTensor`.
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
		  var_list: List of `Variable` objects to check. Defaults to the value of
		    `global_variables().`
		
		Returns:
		  An Op, or None if there are no variables.
		
		
		Note: The output of this function should be used. If it is not, a warning will be logged or an error may be raised. To mark the output as used, call its .mark_used() method.
	**/
	static public function assert_variables_initialized(?var_list:Dynamic):Dynamic;
	/**
		Update `ref` by assigning `value` to it.
		
		This operation outputs a Tensor that holds the new value of `ref` after
		the value has been assigned. This makes it easier to chain operations that
		need to use the reset value.
		
		Args:
		  ref: A mutable `Tensor`. Should be from a `Variable` node. May be
		    uninitialized.
		  value: A `Tensor`. Must have the same shape and dtype as `ref`. The value to
		    be assigned to the variable.
		  validate_shape: An optional `bool`. Defaults to `True`. If true, the
		    operation will validate that the shape of 'value' matches the shape of the
		    Tensor being assigned to.  If false, 'ref' will take on the shape of
		    'value'.
		  use_locking: An optional `bool`. Defaults to `True`. If True, the assignment
		    will be protected by a lock; otherwise the behavior is undefined, but may
		    exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` that will hold the new value of `ref` after
		    the assignment has completed.
		
		@compatibility(TF2)
		`tf.compat.v1.assign` is mostly compatible with eager
		execution and `tf.function`. However, argument 'validate_shape' will be
		ignored. To avoid shape validation, set 'shape' to tf.TensorShape(None) when
		constructing the variable:
		
		>>> import tensorflow as tf
		>>> a = tf.Variable([1], shape=tf.TensorShape(None))
		>>> tf.compat.v1.assign(a, [2,3])
		
		To switch to the native TF2 style, one could use method 'assign' of
		`tf.Variable`:
		
		#### How to Map Arguments
		
		| TF1 Arg Name          | TF2 Arg Name    | Note                       |
		| :-------------------- | :-------------- | :------------------------- |
		| `ref`                 | `self`          | In `assign()` method       |
		| `value`               | `value`         | In `assign()` method       |
		| `validate_shape`      | Not supported   | Specify `shape` in the     |
		:                       :                 : constructor to replicate   :
		:                       :                 : behavior                   :
		| `use_locking`         | `use_locking`   | In `assign()` method       |
		| `name`                | `name`          | In `assign()` method       |
		| -                     | `read_value`    | Set to True to replicate   |
		:                       :                 : behavior (True is default) :
		@end_compatibility
		
		
		#### Before & After Usage Example
		
		Before:
		
		>>> with tf.Graph().as_default():
		...   with tf.compat.v1.Session() as sess:
		...     a = tf.compat.v1.Variable(0, dtype=tf.int64)
		...     sess.run(a.initializer)
		...     update_op = tf.compat.v1.assign(a, 2)
		...     res_a = sess.run(update_op)
		...     res_a
		2
		
		After:
		
		>>> b = tf.Variable(0, dtype=tf.int64)
		>>> res_b = b.assign(2)
		>>> res_b.numpy()
		2
	**/
	static public function assign(ref:Dynamic, value:Dynamic, ?validate_shape:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update `ref` by adding `value` to it.
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		Unlike `tf.math.add`, this op does not broadcast. `ref` and `value` must have
		the same shape.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`,
		    `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`,
		    `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`. Should be
		    from a `Variable` node.
		  value: A `Tensor`. Must have the same shape and dtype as `ref`. The value to
		    be added to the variable.
		  use_locking: An optional `bool`. Defaults to `False`. If True, the addition
		    will be protected by a lock; otherwise the behavior is undefined, but may
		    exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as `ref`.  Returned as a convenience for operations that want
		  to use the new value after the variable has been updated.
		
		@compatibility(TF2)
		`tf.compat.v1.assign_add` is mostly compatible with eager
		execution and `tf.function`.
		
		To switch to the native TF2 style, one could use method 'assign_add' of
		`tf.Variable`:
		
		#### How to Map Arguments
		
		| TF1 Arg Name          | TF2 Arg Name    | Note                       |
		| :-------------------- | :-------------- | :------------------------- |
		| `ref`                 | `self`          | In `assign_add()` method   |
		| `value`               | `value`         | In `assign_add()` method   |
		| `use_locking`         | `use_locking`   | In `assign_add()` method   |
		| `name`                | `name`          | In `assign_add()` method   |
		| -                     | `read_value`    | Set to True to replicate   |
		:                       :                 : behavior (True is default) :
		
		
		#### Before & After Usage Example
		
		Before:
		
		>>> with tf.Graph().as_default():
		...   with tf.compat.v1.Session() as sess:
		...     a = tf.compat.v1.Variable(0, dtype=tf.int64)
		...     sess.run(a.initializer)
		...     update_op = tf.compat.v1.assign_add(a, 1)
		...     res_a = sess.run(update_op)
		...     res_a
		1
		
		After:
		
		>>> b = tf.Variable(0, dtype=tf.int64)
		>>> res_b = b.assign_add(1)
		>>> res_b.numpy()
		1
		
		@end_compatibility
	**/
	static public function assign_add(ref:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update `ref` by subtracting `value` from it.
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		Unlike `tf.math.subtract`, this op does not broadcast. `ref` and `value`
		must have the same shape.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`,
		    `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`,
		    `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`. Should be
		    from a `Variable` node.
		  value: A `Tensor`. Must have the same shape and dtype as `ref`. The value to
		    be subtracted to the variable.
		  use_locking: An optional `bool`. Defaults to `False`. If True, the
		    subtraction will be protected by a lock; otherwise the behavior is
		    undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as `ref`.  Returned as a convenience for operations that want
		  to use the new value after the variable has been updated.
		
		@compatibility(TF2)
		`tf.compat.v1.assign_sub` is mostly compatible with eager
		execution and `tf.function`.
		
		To switch to the native TF2 style, one could use method 'assign_sub' of
		`tf.Variable`:
		
		#### How to Map Arguments
		
		| TF1 Arg Name          | TF2 Arg Name    | Note                       |
		| :-------------------- | :-------------- | :------------------------- |
		| `ref`                 | `self`          | In `assign_sub()` method   |
		| `value`               | `value`         | In `assign_sub()` method   |
		| `use_locking`         | `use_locking`   | In `assign_sub()` method   |
		| `name`                | `name`          | In `assign_sub()` method   |
		| -                     | `read_value`    | Set to True to replicate   |
		:                       :                 : behavior (True is default) :
		
		
		#### Before & After Usage Example
		
		Before:
		
		>>> with tf.Graph().as_default():
		...   with tf.compat.v1.Session() as sess:
		...     a = tf.compat.v1.Variable(1, dtype=tf.int64)
		...     sess.run(a.initializer)
		...     update_op = tf.compat.v1.assign_sub(a, 1)
		...     res_a = sess.run(update_op)
		...     res_a
		0
		
		After:
		
		>>> b = tf.Variable(1, dtype=tf.int64)
		>>> res_b = b.assign_sub(1)
		>>> res_b.numpy()
		0
		
		@end_compatibility
	**/
	static public function assign_sub(ref:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the trignometric inverse tangent of x element-wise.
		
		The `tf.math.atan` operation returns the inverse of `tf.math.tan`, such that
		if `y = tf.math.tan(x)` then, `x = tf.math.atan(y)`.
		
		**Note**: The output of `tf.math.atan` will lie within the invertible range
		of tan, i.e (-pi/2, pi/2).
		
		For example:
		
		```python
		# Note: [1.047, 0.785] ~= [(pi/3), (pi/4)]
		x = tf.constant([1.047, 0.785])
		y = tf.math.tan(x) # [1.731261, 0.99920404]
		
		tf.math.atan(y) # [1.047, 0.785] = x
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function atan(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes arctangent of `y/x` element-wise, respecting signs of the arguments.
		
		This is the angle \\( \theta \in [-\pi, \pi] \\) such that
		\\[ x = r \cos(\theta) \\]
		and
		\\[ y = r \sin(\theta) \\]
		where \\(r = \sqrt{x^2 + y^2} \\).
		
		For example:
		
		>>> x = [1., 1.]
		>>> y = [1., -1.]
		>>> print((tf.math.atan2(y,x) * (180 / np.pi)).numpy())
		[ 45. -45.]
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function atan2(y:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes inverse hyperbolic tangent of x element-wise.
		
		  Given an input tensor, this function computes inverse hyperbolic tangent
		  for every element in the tensor. Input range is `[-1,1]` and output range is
		  `[-inf, inf]`. If input is `-1`, output will be `-inf` and if the
		  input is `1`, output will be `inf`. Values outside the range will have
		  `nan` as output.
		
		  ```python
		  x = tf.constant([-float("inf"), -1, -0.5, 1, 0, 0.5, 10, float("inf")])
		  tf.math.atanh(x) ==> [nan -inf -0.54930615 inf  0. 0.54930615 nan nan]
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function atanh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gather slices from params according to indices with leading batch dims. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2017-10-25.
		Instructions for updating:
		`tf.batch_gather` is deprecated, please use `tf.gather` with `batch_dims=-1` instead.
	**/
	static public function batch_gather(params:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generalization of `tf.compat.v1.scatter_update` to axis different than 0. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-11-29.
		Instructions for updating:
		Use the batch_scatter_update method of Variable instead.
		
		Analogous to `batch_gather`. This assumes that `ref`, `indices` and `updates`
		have a series of leading dimensions that are the same for all of them, and the
		updates are performed on the last dimension of indices. In other words, the
		dimensions should be the following:
		
		`num_prefix_dims = indices.ndims - 1`
		`batch_dim = num_prefix_dims + 1`
		`updates.shape = indices.shape + var.shape[batch_dim:]`
		
		where
		
		`updates.shape[:num_prefix_dims]`
		`== indices.shape[:num_prefix_dims]`
		`== var.shape[:num_prefix_dims]`
		
		And the operation performed can be expressed as:
		
		`var[i_1, ..., i_n, indices[i_1, ..., i_n, j]] = updates[i_1, ..., i_n, j]`
		
		When indices is a 1D tensor, this operation is equivalent to
		`tf.compat.v1.scatter_update`.
		
		To avoid this operation there would be 2 alternatives:
		1) Reshaping the variable by merging the first `ndims` dimensions. However,
		   this is not possible because `tf.reshape` returns a Tensor, which we
		   cannot use `tf.compat.v1.scatter_update` on.
		2) Looping over the first `ndims` of the variable and using
		   `tf.compat.v1.scatter_update` on the subtensors that result of slicing the
		   first
		   dimension. This is a valid option for `ndims = 1`, but less efficient than
		   this implementation.
		
		See also `tf.compat.v1.scatter_update` and `tf.compat.v1.scatter_nd_update`.
		
		Args:
		  ref: `Variable` to scatter onto.
		  indices: Tensor containing indices as described above.
		  updates: Tensor of updates to apply to `ref`.
		  use_locking: Boolean indicating whether to lock the writing operation.
		  name: Optional scope name string.
		
		Returns:
		  Ref to `variable` after it has been modified.
		
		Raises:
		  ValueError: If the initial `ndims` of `ref`, `indices`, and `updates` are
		      not the same.
	**/
	static public function batch_scatter_update(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function batch_to_space(input:Dynamic, crops:Dynamic, block_size:Dynamic, ?name:Dynamic, ?block_shape:Dynamic):Dynamic;
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
		    [[[[1, 2, 3]]], [[[4, 5, 6]]], [[[7, 8, 9]]], [[[10, 11, 12]]]]
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
		    x = [[[[1],   [2],  [3],  [4]],
		         [[5],   [6],  [7],  [8]],
		         [[9],  [10], [11],  [12]],
		         [[13], [14], [15],  [16]]]]
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
	static public var bfloat16 : Dynamic;
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
		    `arr`, the bin will be incremented by the corresponding weight instead of
		    1.
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
		Bitcasts a tensor from one type to another without copying data.
		
		Given a tensor `input`, this operation returns a tensor that has the same buffer
		data as `input` with datatype `type`.
		
		If the input datatype `T` is larger than the output datatype `type` then the
		shape changes from [...] to [..., sizeof(`T`)/sizeof(`type`)].
		
		If `T` is smaller than `type`, the operator requires that the rightmost
		dimension be equal to sizeof(`type`)/sizeof(`T`). The shape then goes from
		[..., sizeof(`type`)/sizeof(`T`)] to [...].
		
		tf.bitcast() and tf.cast() work differently when real dtype is casted as a complex dtype
		(e.g. tf.complex64 or tf.complex128) as tf.cast() make imaginary part 0 while tf.bitcast()
		gives module error.
		For example,
		
		Example 1:
		
		>>> a = [1., 2., 3.]
		>>> equality_bitcast = tf.bitcast(a, tf.complex128)
		Traceback (most recent call last):
		...
		InvalidArgumentError: Cannot bitcast from 1 to 18 [Op:Bitcast]
		>>> equality_cast = tf.cast(a, tf.complex128)
		>>> print(equality_cast)
		tf.Tensor([1.+0.j 2.+0.j 3.+0.j], shape=(3,), dtype=complex128)
		
		Example 2:
		
		>>> tf.bitcast(tf.constant(0xffffffff, dtype=tf.uint32), tf.uint8)
		<tf.Tensor: shape=(4,), dtype=uint8, numpy=array([255, 255, 255, 255], dtype=uint8)>
		
		Example 3:
		
		>>> x = [1., 2., 3.]
		>>> y = [0., 2., 3.]
		>>> equality= tf.equal(x,y)
		>>> equality_cast = tf.cast(equality,tf.float32)
		>>> equality_bitcast = tf.bitcast(equality_cast,tf.uint8)
		>>> print(equality)
		tf.Tensor([False True True], shape=(3,), dtype=bool)
		>>> print(equality_cast)
		tf.Tensor([0. 1. 1.], shape=(3,), dtype=float32)
		>>> print(equality_bitcast)
		tf.Tensor(
		    [[  0   0   0   0]
		     [  0   0 128  63]
		     [  0   0 128  63]], shape=(3, 4), dtype=uint8)
		
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
	static public var bool : Dynamic;
	/**
		Apply boolean mask to tensor.
		
		Numpy equivalent is `tensor[mask]`.
		
		In general, `0 < dim(mask) = K <= dim(tensor)`, and `mask`'s shape must match
		the first K dimensions of `tensor`'s shape.  We then have:
		  `boolean_mask(tensor, mask)[i, j1,...,jd] = tensor[i1,...,iK,j1,...,jd]`
		where `(i1,...,iK)` is the ith `True` entry of `mask` (row-major order).
		The `axis` could be used with `mask` to indicate the axis to mask from.
		In that case, `axis + dim(mask) <= dim(tensor)` and `mask`'s shape must match
		the first `axis + dim(mask)` dimensions of `tensor`'s shape.
		
		See also: `tf.ragged.boolean_mask`, which can be applied to both dense and
		ragged tensors, and can be used if you need to preserve the masked dimensions
		of `tensor` (rather than flattening them, as `tf.boolean_mask` does).
		
		Examples:
		
		```python
		# 1-D example
		tensor = [0, 1, 2, 3]
		mask = np.array([True, False, True, False])
		tf.boolean_mask(tensor, mask)  # [0, 2]
		
		# 2-D example
		tensor = [[1, 2], [3, 4], [5, 6]]
		mask = np.array([True, False, True])
		tf.boolean_mask(tensor, mask)  # [[1, 2], [5, 6]]
		```
		
		Args:
		  tensor:  N-D Tensor.
		  mask:  K-D boolean Tensor, K <= N and K must be known statically.
		  name:  A name for this operation (optional).
		  axis:  A 0-D int Tensor representing the axis in `tensor` to mask from. By
		    default, axis is 0 which will mask from the first dimension. Otherwise K +
		    axis <= N.
		
		Returns:
		  (N-K+1)-dimensional tensor populated by entries in `tensor` corresponding
		  to `True` values in `mask`.
		
		Raises:
		  ValueError:  If shapes do not conform.
	**/
	static public function boolean_mask(tensor:Dynamic, mask:Dynamic, ?name:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Computes the shape of a broadcast given symbolic shapes.
		
		When `shape_x` and `shape_y` are Tensors representing shapes (i.e. the result
		of calling tf.shape on another Tensor) this computes a Tensor which is the
		shape of the result of a broadcasting op applied in tensors of shapes
		`shape_x` and `shape_y`.
		
		This is useful when validating the result of a broadcasting operation when the
		tensors do not have statically known shapes.
		
		Example:
		
		>>> shape_x = (1, 2, 3)
		>>> shape_y = (5, 1, 3)
		>>> tf.broadcast_dynamic_shape(shape_x, shape_y)
		<tf.Tensor: shape=(3,), dtype=int32, numpy=array([5, 2, 3], ...>
		
		Args:
		  shape_x: A rank 1 integer `Tensor`, representing the shape of x.
		  shape_y: A rank 1 integer `Tensor`, representing the shape of y.
		
		Returns:
		  A rank 1 integer `Tensor` representing the broadcasted shape.
		
		Raises:
		  InvalidArgumentError: If the two shapes are incompatible for
		  broadcasting.
	**/
	static public function broadcast_dynamic_shape(shape_x:Dynamic, shape_y:Dynamic):Dynamic;
	/**
		Computes the shape of a broadcast given known shapes.
		
		When `shape_x` and `shape_y` are fully known `TensorShape`s this computes a
		`TensorShape` which is the shape of the result of a broadcasting op applied in
		tensors of shapes `shape_x` and `shape_y`.
		
		For example, if shape_x is `TensorShape([1, 2, 3])` and shape_y is
		`TensorShape([5, 1, 3])`, the result is a TensorShape whose value is
		`TensorShape([5, 2, 3])`.
		
		This is useful when validating the result of a broadcasting operation when the
		tensors have statically known shapes.
		
		Example:
		
		>>> shape_x = tf.TensorShape([1, 2, 3])
		>>> shape_y = tf.TensorShape([5, 1 ,3])
		>>> tf.broadcast_static_shape(shape_x, shape_y)
		TensorShape([5, 2, 3])
		
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
		
		>>> x = tf.constant([1, 2, 3])
		>>> y = tf.broadcast_to(x, [3, 3])
		>>> print(y)
		tf.Tensor(
		    [[1 2 3]
		     [1 2 3]
		     [1 2 3]], shape=(3, 3), dtype=int32)
		
		In the above example, the input Tensor with the shape of `[1, 3]`
		is broadcasted to output Tensor with shape of `[3, 3]`.
		
		When doing broadcasted operations such as multiplying a tensor
		by a scalar, broadcasting (usually) confers some time or space
		benefit, as the broadcasted tensor is never materialized.
		
		However, `broadcast_to` does not carry with it any such benefits.
		The newly-created tensor takes the full memory of the broadcasted
		shape. (In a graph context, `broadcast_to` might be fused to
		subsequent operation and then be optimized away, however.)
		
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
		Casts a tensor to a new type.
		
		The operation casts `x` (in case of `Tensor`) or `x.values`
		(in case of `SparseTensor` or `IndexedSlices`) to `dtype`.
		
		For example:
		
		>>> x = tf.constant([1.8, 2.2], dtype=tf.float32)
		>>> tf.cast(x, tf.int32)
		<tf.Tensor: shape=(2,), dtype=int32, numpy=array([1, 2], dtype=int32)>
		
		Notice `tf.cast` has an alias `tf.dtypes.cast`:
		
		>>> x = tf.constant([1.8, 2.2], dtype=tf.float32)
		>>> tf.dtypes.cast(x, tf.int32)
		<tf.Tensor: shape=(2,), dtype=int32, numpy=array([1, 2], dtype=int32)>
		
		The operation supports data types (for `x` and `dtype`) of
		`uint8`, `uint16`, `uint32`, `uint64`, `int8`, `int16`, `int32`, `int64`,
		`float16`, `float32`, `float64`, `complex64`, `complex128`, `bfloat16`.
		In case of casting from complex types (`complex64`, `complex128`) to real
		types, only the real part of `x` is returned. In case of casting from real
		types to complex types (`complex64`, `complex128`), the imaginary part of the
		returned value is set to `0`. The handling of complex types here matches the
		behavior of numpy.
		
		Note casting nan and inf values to integral types has undefined behavior.
		
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
		Return the ceiling of the input, element-wise.
		
		For example:
		
		>>> tf.math.ceil([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		<tf.Tensor: shape=(7,), dtype=float32,
		numpy=array([-1., -1., -0.,  1.,  2.,  2.,  2.], dtype=float32)>
		
		Args:
		  x: A `tf.Tensor`. Must be one of the following types: `bfloat16`, `half`,
		    `float32`, `float64`. `int32`
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor`. Has the same type as `x`.
		
		@compatibility(numpy)
		Equivalent to np.ceil
		@end_compatibility
	**/
	static public function ceil(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Checks a tensor for NaN and Inf values.
		
		When run, reports an `InvalidArgument` error if `tensor` has any values
		that are not a number (NaN) or infinity (Inf). Otherwise, returns the input
		tensor.
		
		Example usage:
		
		``` python
		a = tf.Variable(1.0)
		tf.debugging.check_numerics(a, message='')
		
		b = tf.Variable(np.nan)
		try:
		  tf.debugging.check_numerics(b, message='Checking b')
		except Exception as e:
		  assert "Checking b : Tensor had NaN values" in e.message
		
		c = tf.Variable(np.inf)
		try:
		  tf.debugging.check_numerics(c, message='Checking c')
		except Exception as e:
		  assert "Checking c : Tensor had Inf values" in e.message
		```
		
		Args:
		  tensor: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  message: A `string`. Prefix of the error message.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function check_numerics(tensor:Dynamic, message:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function cholesky(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves systems of linear eqns `A X = RHS`, given Cholesky factorizations.
		
		Specifically, returns `X` from `A X = RHS`, where `A = L L^T`, `L` is the
		`chol` arg and `RHS` is the `rhs` arg.
		
		```python
		# Solve 10 separate 2x2 linear systems:
		A = ... # shape 10 x 2 x 2
		RHS = ... # shape 10 x 2 x 1
		chol = tf.linalg.cholesky(A)  # shape 10 x 2 x 2
		X = tf.linalg.cholesky_solve(chol, RHS)  # shape 10 x 2 x 1
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
		    Cholesky factorization of `A`, e.g. `chol = tf.linalg.cholesky(A)`.
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
		Clips tensor values to a maximum average L2-norm. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		clip_by_average_norm is deprecated in TensorFlow 2.0. Please use clip_by_norm(t, clip_norm * tf.cast(tf.size(t), tf.float32), name) instead.
		
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
		
		If `global_norm == infinity` then the entries in `t_list` are all set to `NaN`
		to signal that an error occurred.
		
		Any of the entries of `t_list` that are of type `None` are ignored.
		
		This is the correct way to perform gradient clipping (Pascanu et al., 2012).
		
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
		
		References:
		  On the difficulty of training Recurrent Neural Networks:
		    [Pascanu et al., 2012](http://proceedings.mlr.press/v28/pascanu13.html)
		    ([pdf](http://proceedings.mlr.press/v28/pascanu13.pdf))
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
		of the output will have L2-norm less than or equal to `clip_norm`. If
		`axes == [0]` instead, each column of the output will be clipped.
		
		Code example:
		
		>>> some_nums = tf.constant([[1, 2, 3, 4, 5]], dtype=tf.float32)
		>>> tf.clip_by_norm(some_nums, 2.0).numpy()
		array([[0.26967996, 0.5393599 , 0.80903983, 1.0787199 , 1.3483998 ]],
		      dtype=float32)
		
		This operation is typically used to clip gradients before applying them with
		an optimizer.  Most gradient data is a collection of different shaped tensors
		for different parts of the model.  Thus, this is a common usage:
		
		```
		# Get your gradients after training
		loss_value, grads = grad(model, features, labels)
		
		# Apply some clipping
		grads = [tf.clip_by_norm(g, norm)
		             for g in grads]
		
		# Continue on with training
		optimizer.apply_gradients(grads)
		```
		
		Args:
		  t: A `Tensor` or `IndexedSlices`.  This must be a floating point type.
		  clip_norm: A 0-D (scalar) `Tensor` > 0. A maximum clipping value, also
		    floating point
		  axes: A 1-D (vector) `Tensor` of type int32 containing the dimensions
		    to use for computing the L2-norm. If `None` (the default), uses all
		    dimensions.
		  name: A name for the operation (optional).
		
		Returns:
		  A clipped `Tensor` or `IndexedSlices`.
		
		Raises:
		  ValueError: If the clip_norm tensor is not a 0-D scalar tensor.
		  TypeError: If dtype of the input is not a floating point or
		    complex type.
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
		
		For example:
		
		Basic usage passes a scalar as the min and max value.
		
		>>> t = tf.constant([[-10., -1., 0.], [0., 2., 10.]])
		>>> t2 = tf.clip_by_value(t, clip_value_min=-1, clip_value_max=1)
		>>> t2.numpy()
		array([[-1., -1.,  0.],
		       [ 0.,  1.,  1.]], dtype=float32)
		
		The min and max can be the same size as `t`, or broadcastable to that size.
		
		>>> t = tf.constant([[-1, 0., 10.], [-1, 0, 10]])
		>>> clip_min = [[2],[1]]
		>>> t3 = tf.clip_by_value(t, clip_value_min=clip_min, clip_value_max=100)
		>>> t3.numpy()
		array([[ 2.,  2., 10.],
		       [ 1.,  1., 10.]], dtype=float32)
		
		Broadcasting fails, intentionally, if you would expand the dimensions of `t`
		
		>>> t = tf.constant([[-1, 0., 10.], [-1, 0, 10]])
		>>> clip_min = [[[2, 1]]] # Has a third axis
		>>> t4 = tf.clip_by_value(t, clip_value_min=clip_min, clip_value_max=100)
		Traceback (most recent call last):
		...
		InvalidArgumentError: Incompatible shapes: [2,3] vs. [1,1,2]
		
		It throws a `TypeError` if you try to clip an `int` to a `float` value
		(`tf.cast` the input to `float` first).
		
		>>> t = tf.constant([[1, 2], [3, 4]], dtype=tf.int32)
		>>> t5 = tf.clip_by_value(t, clip_value_min=-3.1, clip_value_max=3.1)
		Traceback (most recent call last):
		...
		TypeError: Cannot convert ...
		
		
		Args:
		  t: A `Tensor` or `IndexedSlices`.
		  clip_value_min: The minimum value to clip to. A scalar `Tensor` or one that
		    is broadcastable to the shape of `t`.
		  clip_value_max: The maximum value to clip to. A scalar `Tensor` or one that
		    is broadcastable to the shape of `t`.
		  name: A name for the operation (optional).
		
		Returns:
		  A clipped `Tensor` or `IndexedSlices`.
		
		Raises:
		  `tf.errors.InvalidArgumentError`: If the clip tensors would trigger array
		    broadcasting that would make the returned tensor larger than the input.
		  TypeError: If dtype of the input is `int32` and dtype of
		    the `clip_value_min` or `clip_value_max` is `float32`
	**/
	static public function clip_by_value(t:Dynamic, clip_value_min:Dynamic, clip_value_max:Dynamic, ?name:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Colocations handled automatically by placer.
	**/
	static public function colocate_with(op:Dynamic, ?ignore_existing:Dynamic):Dynamic;
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
		  real: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  imag: A `Tensor`. Must have the same type as `real`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64` or `complex128`.
		
		Raises:
		  TypeError: Real and imag must be correct types
	**/
	static public function complex(real:Dynamic, imag:Dynamic, ?name:Dynamic):Dynamic;
	static public var complex128 : Dynamic;
	static public var complex64 : Dynamic;
	/**
		Concatenates tensors along one dimension.
		
		See also `tf.tile`, `tf.stack`, `tf.repeat`.
		
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
		
		>>> t1 = [[1, 2, 3], [4, 5, 6]]
		>>> t2 = [[7, 8, 9], [10, 11, 12]]
		>>> tf.concat([t1, t2], 0)
		<tf.Tensor: shape=(4, 3), dtype=int32, numpy=
		array([[ 1,  2,  3],
		       [ 4,  5,  6],
		       [ 7,  8,  9],
		       [10, 11, 12]], dtype=int32)>
		
		>>> tf.concat([t1, t2], 1)
		<tf.Tensor: shape=(2, 6), dtype=int32, numpy=
		array([[ 1,  2,  3,  7,  8,  9],
		       [ 4,  5,  6, 10, 11, 12]], dtype=int32)>
		
		As in Python, the `axis` could also be negative numbers. Negative `axis`
		are interpreted as counting from the end of the rank, i.e.,
		 `axis + rank(values)`-th dimension.
		
		For example:
		
		>>> t1 = [[[1, 2], [2, 3]], [[4, 4], [5, 3]]]
		>>> t2 = [[[7, 4], [8, 4]], [[2, 10], [15, 11]]]
		>>> tf.concat([t1, t2], -1)
		<tf.Tensor: shape=(2, 2, 4), dtype=int32, numpy=
		  array([[[ 1,  2,  7,  4],
		          [ 2,  3,  8,  4]],
		         [[ 4,  4,  2, 10],
		          [ 5,  3, 15, 11]]], dtype=int32)>
		
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
		    in the range `[-rank(values), rank(values))`. As in Python, indexing for
		    axis is 0-based. Positive axis in the rage of `[0, rank(values))` refers
		    to `axis`-th dimension. And negative axis refers to `axis +
		    rank(values)`-th dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` resulting from concatenation of the input tensors.
	**/
	static public function concat(values:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
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
		  tf.math.confusion_matrix([1, 2, 4], [2, 2, 4]) ==>
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
		  num_classes: The possible number of labels the classification task can have.
		    If this value is not provided, it will be calculated using both
		    predictions and labels array.
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
		
		Given a tensor `x` of complex numbers, this operation returns a tensor of
		complex numbers that are the complex conjugate of each element in `x`. The
		complex numbers in `x` must be of the form \\(a + bj\\), where `a` is the
		real part and `b` is the imaginary part.
		
		The complex conjugate returned by this operation is of the form \\(a - bj\\).
		
		For example:
		
		>>> x = tf.constant([-2.25 + 4.75j, 3.25 + 5.75j])
		>>> tf.math.conj(x)
		<tf.Tensor: shape=(2,), dtype=complex128,
		numpy=array([-2.25-4.75j,  3.25-5.75j])>
		
		If `x` is real, it is returned unchanged.
		
		For example:
		
		>>> x = tf.constant([-2.25, 3.25])
		>>> tf.math.conj(x)
		<tf.Tensor: shape=(2,), dtype=float32,
		numpy=array([-2.25,  3.25], dtype=float32)>
		
		Args:
		  x: `Tensor` to conjugate.  Must have numeric or variant type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` that is the conjugate of `x` (with the same type).
		
		Raises:
		  TypeError: If `x` is not a numeric tensor.
		
		@compatibility(numpy)
		Equivalent to numpy.conj.
		@end_compatibility
	**/
	static public function conj(x:Dynamic, ?name:Dynamic):Dynamic;
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
		
		See `tf.Graph.control_dependencies` for more details.
		
		Note: *In TensorFlow 2 with eager and/or Autograph, you should not require
		this method, as ops execute in the expected order thanks to automatic control
		dependencies.* Only use `tf.control_dependencies` when working with v1
		`tf.Graph` code.
		
		When eager execution is enabled, any callable object in the `control_inputs`
		list will be called.
		
		Args:
		  control_inputs: A list of `Operation` or `Tensor` objects which must be
		    executed or computed before running the operations defined in the context.
		    Can also be `None` to clear the control dependencies. If eager execution
		    is enabled, any callable object in the `control_inputs` list will be
		    called.
		
		Returns:
		 A context manager that specifies control dependencies for all
		 operations constructed within the context.
	**/
	static public function control_dependencies(control_inputs:Dynamic):Dynamic;
	/**
		Returns `True` if v2 control flow is enabled.
		
		Note: v2 control flow is always enabled inside of tf.function.
	**/
	static public function control_flow_v2_enabled():Dynamic;
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
		  dtype: Optional element type for the returned tensor. If missing, the type
		    is inferred from the type of `value`.
		  name: Optional name to use if a new `Tensor` is created.
		  preferred_dtype: Optional element type for the returned tensor, used when
		    dtype is None. In some cases, a caller may not have a dtype in mind when
		    converting to a tensor, so preferred_dtype can be used as a soft
		    preference.  If the conversion to `preferred_dtype` is not possible, this
		    argument has no effect.
		  dtype_hint: same meaning as preferred_dtype, and overrides it.
		
		Returns:
		  A `Tensor` based on `value`.
		
		Raises:
		  TypeError: If no conversion function is registered for `value` to `dtype`.
		  RuntimeError: If a registered conversion function returns an invalid value.
		  ValueError: If the `value` is a tensor not of given `dtype` in graph mode.
	**/
	static public function convert_to_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?preferred_dtype:Dynamic, ?dtype_hint:Dynamic):Dynamic;
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
		  A `Tensor`, `IndexedSlices`, or `SparseTensor` based on `value`.
		
		Raises:
		  ValueError: If `dtype` does not match the element type of `value`.
	**/
	static public function convert_to_tensor_or_indexed_slices(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts value to a `SparseTensor` or `Tensor`.
		
		Args:
		  value: A `SparseTensor`, `SparseTensorValue`, or an object whose type has a
		    registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor. If missing, the type
		    is inferred from the type of `value`.
		  name: Optional name to use if a new `Tensor` is created.
		
		Returns:
		  A `SparseTensor` or `Tensor` based on `value`.
		
		Raises:
		  RuntimeError: If result type is incompatible with `dtype`.
	**/
	static public function convert_to_tensor_or_sparse_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes cos of x element-wise.
		
		  Given an input tensor, this function computes cosine of every
		  element in the tensor. Input range is `(-inf, inf)` and
		  output range is `[-1,1]`. If input lies outside the boundary, `nan`
		  is returned.
		
		  ```python
		  x = tf.constant([-float("inf"), -9, -0.5, 1, 1.2, 200, 10000, float("inf")])
		  tf.math.cos(x) ==> [nan -0.91113025 0.87758255 0.5403023 0.36235774 0.48718765 -0.95215535 nan]
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function cos(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes hyperbolic cosine of x element-wise.
		
		  Given an input tensor, this function computes hyperbolic cosine of every
		  element in the tensor. Input range is `[-inf, inf]` and output range
		  is `[1, inf]`.
		
		  ```python
		  x = tf.constant([-float("inf"), -9, -0.5, 1, 1.2, 2, 10, float("inf")])
		  tf.math.cosh(x) ==> [inf 4.0515420e+03 1.1276259e+00 1.5430807e+00 1.8106556e+00 3.7621956e+00 1.1013233e+04 inf]
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function cosh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes number of nonzero elements across dimensions of a tensor. (deprecated arguments) (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(reduction_indices)`. They will be removed in a future version.
		Instructions for updating:
		reduction_indices is deprecated, use axis instead
		
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
		tf.math.count_nonzero(x)  # 3
		tf.math.count_nonzero(x, 0)  # [1, 2, 0]
		tf.math.count_nonzero(x, 1)  # [1, 2]
		tf.math.count_nonzero(x, 1, keepdims=True)  # [[1], [2]]
		tf.math.count_nonzero(x, [0, 1])  # 3
		```
		
		**NOTE** Strings are compared against zero-length empty string `""`. Any
		string with a size greater than zero is already considered as nonzero.
		
		For example:
		```python
		x = tf.constant(["", "a", "  ", "b", ""])
		tf.math.count_nonzero(x) # 3, with "a", "  ", and "b" as nonzero strings.
		```
		
		Args:
		  input_tensor: The tensor to reduce. Should be of numeric type, `bool`, or
		    `string`.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  dtype: The output dtype; defaults to `tf.int64`.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		  input: Overrides input_tensor. For compatibility.
		
		Returns:
		  The reduced tensor (number of nonzero values).
	**/
	static public function count_nonzero(?input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Increments 'ref' until it reaches 'limit'. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Prefer Dataset.range instead.
		
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
		Create a list of partitioned variables according to the given `slicing`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.get_variable` with a partitioner set.
		
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
		Compute the cumulative sum of the tensor `x` along `axis`.
		
		By default, this op performs an inclusive cumsum, which means that the first
		element of the input is identical to the first element of the output:
		For example:
		
		>>> # tf.cumsum([a, b, c])   # [a, a + b, a + b + c]
		>>> x = tf.constant([2, 4, 6, 8])
		>>> tf.cumsum(x)
		<tf.Tensor: shape=(4,), dtype=int32,
		numpy=array([ 2,  6, 12, 20], dtype=int32)>
		
		>>> # using varying `axis` values
		>>> y = tf.constant([[2, 4, 6, 8], [1,3,5,7]])
		>>> tf.cumsum(y, axis=0)
		<tf.Tensor: shape=(2, 4), dtype=int32, numpy=
		array([[ 2,  4,  6,  8],
		       [ 3,  7, 11, 15]], dtype=int32)>
		>>> tf.cumsum(y, axis=1)
		<tf.Tensor: shape=(2, 4), dtype=int32, numpy=
		array([[ 2,  6, 12, 20],
		       [ 1,  4,  9, 16]], dtype=int32)>
		
		By setting the `exclusive` kwarg to `True`, an exclusive cumsum is performed
		instead:
		
		>>> # tf.cumsum([a, b, c], exclusive=True)  => [0, a, a + b]
		>>> x = tf.constant([2, 4, 6, 8])
		>>> tf.cumsum(x, exclusive=True)
		<tf.Tensor: shape=(4,), dtype=int32,
		numpy=array([ 0,  2,  6, 12], dtype=int32)>
		
		By setting the `reverse` kwarg to `True`, the cumsum is performed in the
		opposite direction:
		
		>>> # tf.cumsum([a, b, c], reverse=True)  # [a + b + c, b + c, c]
		>>> x = tf.constant([2, 4, 6, 8])
		>>> tf.cumsum(x, reverse=True)
		<tf.Tensor: shape=(4,), dtype=int32,
		numpy=array([20, 18, 14,  8], dtype=int32)>
		
		This is more efficient than using separate `tf.reverse` ops.
		The `reverse` and `exclusive` kwargs can also be combined:
		
		>>> # tf.cumsum([a, b, c], exclusive=True, reverse=True)  # [b + c, c, 0]
		>>> x = tf.constant([2, 4, 6, 8])
		>>> tf.cumsum(x, exclusive=True, reverse=True)
		<tf.Tensor: shape=(4,), dtype=int32,
		numpy=array([18, 14,  8,  0], dtype=int32)>
		
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
		Decorator to define a function with a custom gradient.
		
		This decorator allows fine grained control over the gradients of a sequence
		for operations.  This may be useful for multiple reasons, including providing
		a more efficient or numerically stable gradient for a sequence of operations.
		
		For example, consider the following function that commonly occurs in the
		computation of cross entropy and log likelihoods:
		
		```python
		def log1pexp(x):
		  return tf.math.log(1 + tf.exp(x))
		```
		
		Due to numerical instability, the gradient of this function evaluated at x=100
		is NaN.  For example:
		
		```python
		x = tf.constant(100.)
		y = log1pexp(x)
		dy_dx = tf.gradients(y, x) # Will be NaN when evaluated.
		```
		
		The gradient expression can be analytically simplified to provide numerical
		stability:
		
		```python
		@tf.custom_gradient
		def log1pexp(x):
		  e = tf.exp(x)
		  def grad(upstream):
		    return upstream * (1 - 1 / (1 + e))
		  return tf.math.log(1 + e), grad
		```
		
		With this definition, the gradient `dy_dx` at `x = 100` will be correctly
		evaluated as 1.0.
		
		The variable `upstream` is defined as the upstream gradient. i.e. the gradient
		from all the layers or functions originating from this layer. The above
		example has no upstream functions, therefore `upstream = dy/dy = 1.0`.
		
		Assume that `x_i` is `log1pexp` in the forward pass `x_1 = x_1(x_0)`,
		`x_2 = x_2(x_1)`, ..., `x_i = x_i(x_i-1)`, ..., `x_n = x_n(x_n-1)`. By
		chain rule we know that `dx_n/dx_0 = dx_n/dx_n-1 * dx_n-1/dx_n-2 * ... *
		dx_i/dx_i-1 * ... * dx_1/dx_0`.
		
		In this case the gradient of our current function defined as
		`dx_i/dx_i-1 = (1 - 1 / (1 + e))`. The upstream gradient `upstream` would be
		`dx_n/dx_n-1 * dx_n-1/dx_n-2 * ... * dx_i+1/dx_i`. The upstream gradient
		multiplied by the current gradient is then passed downstream.
		
		In case the function takes multiple variables as input, the `grad`
		function must also return  the same number of variables.
		We take the function `z = x * y` as an example.
		
		>>> @tf.custom_gradient
		... def bar(x, y):
		...   def grad(upstream):
		...     dz_dx = y
		...     dz_dy = x
		...     return upstream * dz_dx, upstream * dz_dy
		...   z = x * y
		...   return z, grad
		>>> x = tf.constant(2.0, dtype=tf.float32)
		>>> y = tf.constant(3.0, dtype=tf.float32)
		>>> with tf.GradientTape(persistent=True) as tape:
		...   tape.watch(x)
		...   tape.watch(y)
		...   z = bar(x, y)
		>>> z
		<tf.Tensor: shape=(), dtype=float32, numpy=6.0>
		>>> tape.gradient(z, x)
		<tf.Tensor: shape=(), dtype=float32, numpy=3.0>
		>>> tape.gradient(z, y)
		<tf.Tensor: shape=(), dtype=float32, numpy=2.0>
		
		Nesting custom gradients can lead to unintuitive results. The default
		behavior does not correspond to n-th order derivatives. For example
		
		```python
		@tf.custom_gradient
		def op(x):
		  y = op1(x)
		  @tf.custom_gradient
		  def grad_fn(dy):
		    gdy = op2(x, y, dy)
		    def grad_grad_fn(ddy):  # Not the 2nd order gradient of op w.r.t. x.
		      return op3(x, y, dy, ddy)
		    return gdy, grad_grad_fn
		  return y, grad_fn
		```
		
		The function `grad_grad_fn` will be calculating the first order gradient
		of `grad_fn` with respect to `dy`, which is used to generate forward-mode
		gradient graphs from backward-mode gradient graphs, but is not the same as
		the second order gradient of `op` with respect to `x`.
		
		Instead, wrap nested `@tf.custom_gradients` in another function:
		
		```python
		@tf.custom_gradient
		def op_with_fused_backprop(x):
		  y, x_grad = fused_op(x)
		  def first_order_gradient(dy):
		    @tf.custom_gradient
		    def first_order_custom(unused_x):
		      def second_order_and_transpose(ddy):
		        return second_order_for_x(...), gradient_wrt_dy(...)
		      return x_grad, second_order_and_transpose
		    return dy * first_order_custom(x)
		  return y, first_order_gradient
		```
		
		Additional arguments to the inner `@tf.custom_gradient`-decorated function
		control the expected return values of the innermost function.
		
		The examples above illustrate how to specify custom gradients for functions
		which do not read from variables. The following example uses variables, which
		require special handling because they are effectively inputs of the forward
		function.
		
		>>> weights = tf.Variable(tf.ones([2]))  # Trainable variable weights
		>>> @tf.custom_gradient
		... def linear_poly(x):
		...   # Creating polynomial
		...   poly = weights[1] * x + weights[0]
		...
		...   def grad_fn(dpoly, variables):
		...     # dy/dx = weights[1] and we need to left multiply dpoly
		...     grad_xs = dpoly * weights[1]  # Scalar gradient
		...
		...     grad_vars = []  # To store gradients of passed variables
		...     assert variables is not None
		...     assert len(variables) == 1
		...     assert variables[0] is weights
		...     # Manually computing dy/dweights
		...     dy_dw = dpoly * tf.stack([x ** 1, x ** 0])
		...     grad_vars.append(
		...         tf.reduce_sum(tf.reshape(dy_dw, [2, -1]), axis=1)
		...     )
		...     return grad_xs, grad_vars
		...   return poly, grad_fn
		>>> x = tf.constant([1., 2., 3.])
		>>> with tf.GradientTape(persistent=True) as tape:
		...   tape.watch(x)
		...   poly = linear_poly(x)
		>>> poly # poly = x + 1
		<tf.Tensor: shape=(3,),
		  dtype=float32,
		  numpy=array([2., 3., 4.], dtype=float32)>
		>>> tape.gradient(poly, x)  # conventional scalar gradient dy/dx
		<tf.Tensor: shape=(3,),
		  dtype=float32,
		  numpy=array([1., 1., 1.], dtype=float32)>
		>>> tape.gradient(poly, weights)
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([6., 3.], dtype=float32)>
		
		Above example illustrates usage of trainable variable `weights`.
		In the example, the inner `grad_fn` accepts an extra `variables` input
		parameter and also returns an extra `grad_vars` output. That extra argument
		is passed if the forward function reads any variables. You need to
		compute the gradient w.r.t. each of those `variables` and output it as a list
		of `grad_vars`. Note here that default value of `variables` is set to `None`
		when no variables are used in the forward function.
		
		It should be noted `tf.GradientTape` is still watching the forward pass of a
		`tf.custom_gradient`, and will use the ops it watches. As a consequence,
		calling `tf.function` while the tape is still watching leads
		to a gradient graph being built. If an op is used in `tf.function` without
		registered gradient, a `LookupError` will be raised.
		
		Users can insert `tf.stop_gradient` to customize this behavior. This
		is demonstrated in the example below. `tf.random.shuffle` does not have a
		registered gradient. As a result `tf.stop_gradient` is used to avoid the
		`LookupError`.
		
		```python
		x = tf.constant([0.3, 0.5], dtype=tf.float32)
		
		@tf.custom_gradient
		def test_func_with_stop_grad(x):
		  @tf.function
		  def _inner_func():
		    # Avoid exception during the forward pass
		    return tf.stop_gradient(tf.random.shuffle(x))
		    # return tf.random.shuffle(x)  # This will raise
		
		  res = _inner_func()
		  def grad(upstream):
		    return upstream  # Arbitrarily defined custom gradient
		  return res, grad
		
		with tf.GradientTape() as g:
		  g.watch(x)
		  res = test_func_with_stop_grad(x)
		
		g.gradient(res, x)
		```
		
		See also `tf.RegisterGradient` which registers a gradient function for a
		primitive TensorFlow operation. `tf.custom_gradient` on the other hand allows
		for fine grained control over the gradient computation of a sequence of
		operations.
		
		Note that if the decorated function uses `Variable`s, the enclosing variable
		scope must be using `ResourceVariable`s.
		
		Args:
		  f: function `f(*x)` that returns a tuple `(y, grad_fn)` where:
		     - `x` is a sequence of (nested structures of) `Tensor` inputs to the
		       function.
		     - `y` is a (nested structure of) `Tensor` outputs of applying TensorFlow
		       operations in `f` to `x`.
		     - `grad_fn` is a function with the signature `g(*grad_ys)` which returns
		       a list of `Tensor`s the same size as (flattened) `x` - the derivatives
		       of `Tensor`s in `y` with respect to the `Tensor`s in `x`.  `grad_ys` is
		       a sequence of `Tensor`s the same size as (flattened) `y` holding the
		       initial value gradients for each `Tensor` in `y`.
		
		       In a pure mathematical sense, a vector-argument vector-valued function
		       `f`'s derivatives should be its Jacobian matrix `J`. Here we are
		       expressing the Jacobian `J` as a function `grad_fn` which defines how
		       `J` will transform a vector `grad_ys` when left-multiplied with it
		       (`grad_ys * J`, the vector-Jacobian product, or VJP). This functional
		       representation of a matrix is convenient to use for chain-rule
		       calculation (in e.g. the back-propagation algorithm).
		
		       If `f` uses `Variable`s (that are not part of the
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
	static public function custom_gradient(?f:Dynamic):Dynamic;
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
		Convert JSON-encoded Example records to binary protocol buffer strings.
		
		Note: This is **not** a general purpose JSON parsing op.
		
		This op converts JSON-serialized `tf.train.Example` (maybe created with
		`json_format.MessageToJson`, following the
		[standard JSON mapping](
		https://developers.google.com/protocol-buffers/docs/proto3#json))
		to a binary-serialized `tf.train.Example` (equivalent to
		`Example.SerializeToString()`) suitable for conversion to tensors with
		`tf.io.parse_example`.
		
		Here is a `tf.train.Example` proto:
		
		>>> example = tf.train.Example(
		...   features=tf.train.Features(
		...       feature={
		...           "a": tf.train.Feature(
		...               int64_list=tf.train.Int64List(
		...                   value=[1, 1, 3]))}))
		
		Here it is converted to JSON:
		
		>>> from google.protobuf import json_format
		>>> example_json = json_format.MessageToJson(example)
		>>> print(example_json)
		{
		  "features": {
		    "feature": {
		      "a": {
		        "int64List": {
		          "value": [
		            "1",
		            "1",
		            "3"
		          ]
		        }
		      }
		    }
		  }
		}
		
		This op converts the above json string to a binary proto:
		
		>>> example_binary = tf.io.decode_json_example(example_json)
		>>> example_binary.numpy()
		b'\n\x0f\n\r\n\x01a\x12\x08\x1a\x06\x08\x01\x08\x01\x08\x03'
		
		The OP works on string tensors of andy shape:
		
		>>> tf.io.decode_json_example([
		...     [example_json, example_json],
		...     [example_json, example_json]]).shape.as_list()
		[2, 2]
		
		This resulting binary-string is equivalent to `Example.SerializeToString()`,
		and can be converted to Tensors using `tf.io.parse_example` and related
		functions:
		
		>>> tf.io.parse_example(
		...   serialized=[example_binary.numpy(),
		...              example.SerializeToString()],
		...   features = {'a': tf.io.FixedLenFeature(shape=[3], dtype=tf.int64)})
		{'a': <tf.Tensor: shape=(2, 3), dtype=int64, numpy=
		 array([[1, 1, 3],
		        [1, 1, 3]])>}
		
		Args:
		  json_examples: A string tensor containing json-serialized `tf.Example`
		    protos.
		  name: A name for the op.
		
		Returns:
		  A string Tensor containing the binary-serialized `tf.Example` protos.
		
		Raises:
		   `tf.errors.InvalidArgumentError`: If the JSON could not be converted to a
		   `tf.Example`
	**/
	static public function decode_json_example(json_examples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert raw byte strings into tensors. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(bytes)`. They will be removed in a future version.
		Instructions for updating:
		bytes is deprecated, use input_bytes instead
		
		Args:
		  input_bytes:
		    Each element of the input Tensor is converted to an array of bytes.
		  out_type:
		    `DType` of the output. Acceptable types are `half`, `float`, `double`,
		    `int32`, `uint16`, `uint8`, `int16`, `int8`, `int64`.
		  little_endian:
		    Whether the `input_bytes` data is in little-endian format. Data will be
		    converted into host byte order if necessary.
		  name: A name for the operation (optional).
		  bytes: Deprecated parameter. Use `input_bytes` instead.
		
		Returns:
		  A `Tensor` object storing the decoded bytes.
	**/
	static public function decode_raw(?input_bytes:Dynamic, ?out_type:Dynamic, ?little_endian:Dynamic, ?name:Dynamic, ?bytes:Dynamic):Dynamic;
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
		Dequantize the 'input' tensor into a float or bfloat16 Tensor.
		
		[min_range, max_range] are scalar floats that specify the range for
		the output. The 'mode' attribute controls exactly which calculations are
		used to convert the float values to their quantized equivalents.
		
		In 'MIN_COMBINED' mode, each value of the tensor will undergo the following:
		
		```
		if T == qint8: in[i] += (range(T) + 1)/ 2.0
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
		
		If the mode is `SCALED`, dequantization is performed by multiplying each
		input value by a scaling_factor. (Thus an input of 0 always maps to 0.0).
		
		The scaling_factor is determined from `min_range`, `max_range`, and
		`narrow_range` in a way that is compatible with `QuantizeAndDequantize{V2|V3}`
		and `QuantizeV2`, using the following algorithm:
		
		```c++
		
		  const int min_expected_T = std::numeric_limits<T>::min() +
		    (narrow_range ? 1 : 0);
		  const int max_expected_T = std::numeric_limits<T>::max();
		  const float max_expected_T = std::numeric_limits<float>::max();
		
		  const float scale_factor =
		    (std::numeric_limits<T>::min() == 0) ? (max_range / max_expected_T)
		                                         : std::max(min_range / min_expected_T,
		                                                    max_range / max_expected_T);
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_range: A `Tensor` of type `float32`.
		    The minimum scalar value possibly produced for the input.
		  max_range: A `Tensor` of type `float32`.
		    The maximum scalar value possibly produced for the input.
		  mode: An optional `string` from: `"MIN_COMBINED", "MIN_FIRST", "SCALED"`. Defaults to `"MIN_COMBINED"`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  axis: An optional `int`. Defaults to `-1`.
		  dtype: An optional `tf.DType` from: `tf.bfloat16, tf.float32`. Defaults to `tf.float32`.
		    Type of the output tensor. Currently Dequantize supports float and bfloat16.
		    If 'dtype' is 'bfloat16', it only supports 'MIN_COMBINED' mode.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function dequantize(input:Dynamic, min_range:Dynamic, max_range:Dynamic, ?mode:Dynamic, ?name:Dynamic, ?axis:Dynamic, ?narrow_range:Dynamic, ?dtype:Dynamic):Dynamic;
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
		Wrapper for `Graph.device()` using the default graph.
		
		See `tf.Graph.device` for more details.
		
		Args:
		  device_name_or_function: The device name or function to use in the context.
		
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
		Returns the diagonal part of the tensor.
		
		This operation returns a tensor with the `diagonal` part
		of the `input`. The `diagonal` part is computed as follows:
		
		Assume `input` has dimensions `[D1,..., Dk, D1,..., Dk]`, then the output is a
		tensor of rank `k` with dimensions `[D1,..., Dk]` where:
		
		`diagonal[i1,..., ik] = input[i1, ..., ik, i1,..., ik]`.
		
		For a rank 2 tensor, `linalg.diag_part` and `linalg.tensor_diag_part`
		produce the same result. For rank 3 and higher, linalg.diag_part extracts
		the diagonal of each inner-most matrix in the tensor. An example where
		they differ is given below.
		
		>>> x = [[[[1111,1112],[1121,1122]],
		...       [[1211,1212],[1221,1222]]],
		...      [[[2111, 2112], [2121, 2122]],
		...       [[2211, 2212], [2221, 2222]]]
		...      ]
		>>> tf.linalg.tensor_diag_part(x)
		<tf.Tensor: shape=(2, 2), dtype=int32, numpy=
		array([[1111, 1212],
		       [2121, 2222]], dtype=int32)>
		>>> tf.linalg.diag_part(x).shape
		TensorShape([2, 2, 2])
		
		Args:
		  input: A `Tensor` with rank `2k`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor containing diagonals of `input`. Has the same type as `input`, and
		  rank `k`.
	**/
	static public function diag_part(input:Dynamic, ?name:Dynamic):Dynamic;
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
		Compatibility utility required to allow for both V1 and V2 behavior in TF.
		
		Until the release of TF 2.0, we need the legacy behavior of `TensorShape` to
		coexist with the new behavior. This utility is a bridge between the two.
		
		If you want to retrieve the Dimension instance corresponding to a certain
		index in a TensorShape instance, use this utility, like this:
		
		```
		# If you had this in your V1 code:
		dim = tensor_shape[i]
		
		# Use `dimension_at_index` as direct replacement compatible with both V1 & V2:
		dim = dimension_at_index(tensor_shape, i)
		
		# Another possibility would be this, but WARNING: it only works if the
		# tensor_shape instance has a defined rank.
		dim = tensor_shape.dims[i]  # `dims` may be None if the rank is undefined!
		
		# In native V2 code, we recommend instead being more explicit:
		if tensor_shape.rank is None:
		  dim = Dimension(None)
		else:
		  dim = tensor_shape.dims[i]
		
		# Being more explicit will save you from the following trap (present in V1):
		# you might do in-place modifications to `dim` and expect them to be reflected
		# in `tensor_shape[i]`, but they would not be (as the Dimension object was
		# instantiated on the fly.
		```
		
		Args:
		  shape: A TensorShape instance.
		  index: An integer index.
		
		Returns:
		  A dimension object.
	**/
	static public function dimension_at_index(shape:Dynamic, index:Dynamic):Dynamic;
	/**
		Compatibility utility required to allow for both V1 and V2 behavior in TF.
		
		Until the release of TF 2.0, we need the legacy behavior of `TensorShape` to
		coexist with the new behavior. This utility is a bridge between the two.
		
		When accessing the value of a TensorShape dimension,
		use this utility, like this:
		
		```
		# If you had this in your V1 code:
		value = tensor_shape[i].value
		
		# Use `dimension_value` as direct replacement compatible with both V1 & V2:
		value = dimension_value(tensor_shape[i])
		
		# This would be the V2 equivalent:
		value = tensor_shape[i]  # Warning: this will return the dim value in V2!
		```
		
		Args:
		  dimension: Either a `Dimension` instance, an integer, or None.
		
		Returns:
		  A plain value, i.e. an integer or None.
	**/
	static public function dimension_value(dimension:Dynamic):Dynamic;
	/**
		Opts out of control flow v2.
		
		Note: v2 control flow is always enabled inside of tf.function. Calling this
		function has no effect in that case.
		
		If your code needs tf.disable_control_flow_v2() to be called to work
		properly please file a bug.
	**/
	static public function disable_control_flow_v2():Dynamic;
	/**
		Disables eager execution.
		
		This function can only be called before any Graphs, Ops, or Tensors have been
		created.
		
		@compatibility(TF2)
		This function is not necessary if you are using TF2. Eager execution is
		enabled by default. If you want to use Graph mode please consider
		[tf.function](https://www.tensorflow.org/api_docs/python/tf/function).
		@end_compatibility
	**/
	static public function disable_eager_execution():Dynamic;
	/**
		Opts out of resource variables. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		non-resource variables are not supported in the long term
		
		If your code needs tf.disable_resource_variables() to be called to work
		properly please file a bug.
	**/
	static public function disable_resource_variables():Dynamic;
	/**
		Compare Tensors by their id and be hashable.
		
		This is a legacy behaviour of TensorFlow and is highly discouraged.
	**/
	static public function disable_tensor_equality():Dynamic;
	/**
		Disables TensorFlow 2.x behaviors.
		
		This function can be called at the beginning of the program (before `Tensors`,
		`Graphs` or other structures have been created, and before devices have been
		initialized. It switches all global behaviors that are different between
		TensorFlow 1.x and 2.x to behave as intended for 1.x.
		
		User can call this function to disable 2.x behavior during complex migrations.
		
		@compatibility(TF2)
		Using this function indicates that your software is not compatible
		with eager execution and `tf.function` in TF2.
		
		To migrate to TF2, rewrite your code to be compatible with eager execution.
		Please refer to the [migration guide]
		(https://www.tensorflow.org/guide/migrate) for additional resource on the
		topic.
		@end_compatibility
	**/
	static public function disable_v2_behavior():Dynamic;
	/**
		Disables the V2 TensorShape behavior and reverts to V1 behavior.
		
		See docstring for `enable_v2_tensorshape` for details about the new behavior.
	**/
	static public function disable_v2_tensorshape():Dynamic;
	/**
		Divides x / y elementwise (using Python 2 division operator semantics). (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Deprecated in favor of operator or tf.math.divide.
		
		@compatibility(TF2)
		This function is deprecated in TF2. Prefer using the Tensor division operator,
		`tf.divide`, or `tf.math.divide`, which obey the Python 3 division operator
		semantics.
		@end_compatibility
		
		
		This function divides `x` and `y`, forcing Python 2 semantics. That is, if `x`
		and `y` are both integers then the result will be an integer. This is in
		contrast to Python 3, where division with `/` is always a float while division
		with `//` is always an integer.
		
		Args:
		  x: `Tensor` numerator of real numeric type.
		  y: `Tensor` denominator of real numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  `x / y` returns the quotient of x and y.
	**/
	static public function div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a safe divide which returns 0 if `y` (denominator) is zero.
		
		For example:
		
		>>> tf.constant(3.0) / 0.0
		<tf.Tensor: shape=(), dtype=float32, numpy=inf>
		>>> tf.math.divide_no_nan(3.0, 0.0)
		<tf.Tensor: shape=(), dtype=float32, numpy=0.0>
		
		Note that 0 is returned if `y` is 0 even if `x` is nonfinite:
		
		>>> tf.math.divide_no_nan(np.nan, 0.0)
		<tf.Tensor: shape=(), dtype=float32, numpy=0.0>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  y: A `Tensor` whose dtype is compatible with `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  The element-wise value of the x divided by y.
	**/
	static public function div_no_nan(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Python style division of `x` by `y`.
		
		For example:
		
		>>> x = tf.constant([16, 12, 11])
		>>> y = tf.constant([4, 6, 2])
		>>> tf.divide(x,y)
		<tf.Tensor: shape=(3,), dtype=float64,
		numpy=array([4. , 2. , 5.5])>
		
		Args:
		  x: A `Tensor`
		  y: A `Tensor`
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with same shape as input
	**/
	static public function divide(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public var double : Dynamic;
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
		Computes the Levenshtein distance between sequences.
		
		This operation takes variable-length sequences (`hypothesis` and `truth`),
		each provided as a `SparseTensor`, and computes the Levenshtein distance.
		You can normalize the edit distance by length of `truth` by setting
		`normalize` to true.
		
		For example:
		
		Given the following input,
		* `hypothesis` is a `tf.SparseTensor` of shape `[2, 1, 1]`
		* `truth` is a `tf.SparseTensor` of shape `[2, 2, 2]`
		
		>>> hypothesis = tf.SparseTensor(
		...   [[0, 0, 0],
		...    [1, 0, 0]],
		...   ["a", "b"],
		...   (2, 1, 1))
		>>> truth = tf.SparseTensor(
		...   [[0, 1, 0],
		...    [1, 0, 0],
		...    [1, 0, 1],
		...    [1, 1, 0]],
		...    ["a", "b", "c", "a"],
		...    (2, 2, 2))
		>>> tf.edit_distance(hypothesis, truth, normalize=True)
		<tf.Tensor: shape=(2, 2), dtype=float32, numpy=
		array([[inf, 1. ],
		       [0.5, 1. ]], dtype=float32)>
		
		The operation returns a dense Tensor of shape `[2, 2]` with
		edit distances normalized by `truth` lengths.
		
		**Note**: It is possible to calculate edit distance between two
		sparse tensors with variable-length values. However, attempting to create
		them while eager execution is enabled will result in a `ValueError`.
		
		For the following  inputs,
		
		```python
		# 'hypothesis' is a tensor of shape `[2, 1]` with variable-length values:
		#   (0,0) = ["a"]
		#   (1,0) = ["b"]
		hypothesis = tf.sparse.SparseTensor(
		    [[0, 0, 0],
		     [1, 0, 0]],
		    ["a", "b"],
		    (2, 1, 1))
		
		# 'truth' is a tensor of shape `[2, 2]` with variable-length values:
		#   (0,0) = []
		#   (0,1) = ["a"]
		#   (1,0) = ["b", "c"]
		#   (1,1) = ["a"]
		truth = tf.sparse.SparseTensor(
		    [[0, 1, 0],
		     [1, 0, 0],
		     [1, 0, 1],
		     [1, 1, 0]],
		    ["a", "b", "c", "a"],
		    (2, 2, 2))
		
		normalize = True
		
		# The output would be a dense Tensor of shape `(2,)`, with edit distances
		normalized by 'truth' lengths.
		# output => array([0., 0.5], dtype=float32)
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
		Tensor contraction over specified indices and outer product.
		
		Einsum allows defining Tensors by defining their element-wise computation.
		This computation is defined by `equation`, a shorthand form based on Einstein
		summation. As an example, consider multiplying two matrices A and B to form a
		matrix C.  The elements of C are given by:
		
		$$ C_{i,k} = \sum_j A_{i,j} B_{j,k} $$
		
		or
		
		```
		C[i,k] = sum_j A[i,j] * B[j,k]
		```
		
		The corresponding einsum `equation` is:
		
		```
		ij,jk->ik
		```
		
		In general, to convert the element-wise equation into the `equation` string,
		use the following procedure (intermediate strings for matrix multiplication
		example provided in parentheses):
		
		1. remove variable names, brackets, and commas, (`ik = sum_j ij * jk`)
		2. replace "*" with ",", (`ik = sum_j ij , jk`)
		3. drop summation signs, and (`ik = ij, jk`)
		4. move the output to the right, while replacing "=" with "->". (`ij,jk->ik`)
		
		Note: If the output indices are not specified repeated indices are summed.
		So `ij,jk->ik` can be simplified to `ij,jk`.
		
		Many common operations can be expressed in this way.  For example:
		
		**Matrix multiplication**
		
		>>> m0 = tf.random.normal(shape=[2, 3])
		>>> m1 = tf.random.normal(shape=[3, 5])
		>>> e = tf.einsum('ij,jk->ik', m0, m1)
		>>> # output[i,k] = sum_j m0[i,j] * m1[j, k]
		>>> print(e.shape)
		(2, 5)
		
		Repeated indices are summed if the output indices are not specified.
		
		>>> e = tf.einsum('ij,jk', m0, m1)  # output[i,k] = sum_j m0[i,j] * m1[j, k]
		>>> print(e.shape)
		(2, 5)
		
		
		**Dot product**
		
		>>> u = tf.random.normal(shape=[5])
		>>> v = tf.random.normal(shape=[5])
		>>> e = tf.einsum('i,i->', u, v)  # output = sum_i u[i]*v[i]
		>>> print(e.shape)
		()
		
		**Outer product**
		
		>>> u = tf.random.normal(shape=[3])
		>>> v = tf.random.normal(shape=[5])
		>>> e = tf.einsum('i,j->ij', u, v)  # output[i,j] = u[i]*v[j]
		>>> print(e.shape)
		(3, 5)
		
		**Transpose**
		
		>>> m = tf.ones(2,3)
		>>> e = tf.einsum('ij->ji', m0)  # output[j,i] = m0[i,j]
		>>> print(e.shape)
		(3, 2)
		
		**Diag**
		
		>>> m = tf.reshape(tf.range(9), [3,3])
		>>> diag = tf.einsum('ii->i', m)
		>>> print(diag.shape)
		(3,)
		
		**Trace**
		
		>>> # Repeated indices are summed.
		>>> trace = tf.einsum('ii', m)  # output[j,i] = trace(m) = sum_i m[i, i]
		>>> assert trace == sum(diag)
		>>> print(trace.shape)
		()
		
		**Batch matrix multiplication**
		
		>>> s = tf.random.normal(shape=[7,5,3])
		>>> t = tf.random.normal(shape=[7,3,2])
		>>> e = tf.einsum('bij,bjk->bik', s, t)
		>>> # output[a,i,k] = sum_j s[a,i,j] * t[a, j, k]
		>>> print(e.shape)
		(7, 5, 2)
		
		This method does not support broadcasting on named-axes. All axes with
		matching labels should have the same length. If you have length-1 axes,
		use `tf.squeseze` or `tf.reshape` to eliminate them.
		
		To write code that is agnostic to the number of indices in the input
		use an ellipsis. The ellipsis is a placeholder for "whatever other indices
		fit here".
		
		For example, to perform a NumPy-style broadcasting-batch-matrix multiplication
		where the matrix multiply acts on the last two axes of the input, use:
		
		>>> s = tf.random.normal(shape=[11, 7, 5, 3])
		>>> t = tf.random.normal(shape=[11, 7, 3, 2])
		>>> e =  tf.einsum('...ij,...jk->...ik', s, t)
		>>> print(e.shape)
		(11, 7, 5, 2)
		
		Einsum **will** broadcast over axes covered by the ellipsis.
		
		>>> s = tf.random.normal(shape=[11, 1, 5, 3])
		>>> t = tf.random.normal(shape=[1, 7, 3, 2])
		>>> e =  tf.einsum('...ij,...jk->...ik', s, t)
		>>> print(e.shape)
		(11, 7, 5, 2)
		
		Args:
		  equation: a `str` describing the contraction, in the same format as
		    `numpy.einsum`.
		  *inputs: the inputs to contract (each one a `Tensor`), whose shapes should
		    be consistent with `equation`.
		  **kwargs:
		    - optimize: Optimization strategy to use to find contraction path using
		      opt_einsum. Must be 'greedy', 'optimal', 'branch-2', 'branch-all' or
		        'auto'. (optional, default: 'greedy').
		    - name: A name for the operation (optional).
		
		Returns:
		  The contracted `Tensor`, with shape determined by `equation`.
		
		Raises:
		  ValueError: If
		    - the format of `equation` is incorrect,
		    - number of inputs or their shapes are inconsistent with `equation`.
	**/
	static public function einsum(equation:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Use control flow v2.
		
		control flow v2 (cfv2) is an improved version of control flow in TensorFlow
		with support for higher order derivatives. Enabling cfv2 will change the
		graph/function representation of control flow, e.g., `tf.while_loop` and
		`tf.cond` will generate functional `While` and `If` ops instead of low-level
		`Switch`, `Merge` etc. ops. Note: Importing and running graphs exported
		with old control flow will still be supported.
		
		Calling tf.enable_control_flow_v2() lets you opt-in to this TensorFlow 2.0
		feature.
		
		Note: v2 control flow is always enabled inside of tf.function. Calling this
		function is not required.
	**/
	static public function enable_control_flow_v2():Dynamic;
	/**
		Enables eager execution for the lifetime of this program.
		
		Eager execution provides an imperative interface to TensorFlow. With eager
		execution enabled, TensorFlow functions execute operations immediately (as
		opposed to adding to a graph to be executed later in a `tf.compat.v1.Session`)
		and
		return concrete values (as opposed to symbolic references to a node in a
		computational graph).
		
		For example:
		
		```python
		tf.compat.v1.enable_eager_execution()
		
		# After eager execution is enabled, operations are executed as they are
		# defined and Tensor objects hold concrete values, which can be accessed as
		# numpy.ndarray`s through the numpy() method.
		assert tf.multiply(6, 7).numpy() == 42
		```
		
		Eager execution cannot be enabled after TensorFlow APIs have been used to
		create or execute graphs. It is typically recommended to invoke this function
		at program startup and not in a library (as most libraries should be usable
		both with and without eager execution).
		
		@compatibility(TF2)
		This function is not necessary if you are using TF2. Eager execution is
		enabled by default.
		@end_compatibility
		
		Args:
		  config: (Optional.) A `tf.compat.v1.ConfigProto` to use to configure the
		    environment in which operations are executed. Note that
		    `tf.compat.v1.ConfigProto` is also used to configure graph execution (via
		    `tf.compat.v1.Session`) and many options within `tf.compat.v1.ConfigProto`
		    are not implemented (or are irrelevant) when eager execution is enabled.
		  device_policy: (Optional.) Policy controlling how operations requiring
		    inputs on a specific device (e.g., a GPU 0) handle inputs on a different
		    device  (e.g. GPU 1 or CPU). When set to None, an appropriate value will
		    be picked automatically. The value picked may change between TensorFlow
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
		Creates resource variables by default.
		
		Resource variables are improved versions of TensorFlow variables with a
		well-defined memory model. Accessing a resource variable reads its value, and
		all ops which access a specific read value of the variable are guaranteed to
		see the same value for that tensor. Writes which happen after a read (by
		having a control or data dependency on the read) are guaranteed not to affect
		the value of the read tensor, and similarly writes which happen before a read
		are guaranteed to affect the value. No guarantees are made about unordered
		read/write pairs.
		
		Calling tf.enable_resource_variables() lets you opt-in to this TensorFlow 2.0
		feature.
	**/
	static public function enable_resource_variables():Dynamic;
	/**
		Compare Tensors with element-wise comparison and thus be unhashable.
		
		Comparing tensors with element-wise allows comparisons such as
		tf.Variable(1.0) == 1.0. Element-wise equality implies that tensors are
		unhashable. Thus tensors can no longer be directly used in sets or as a key in
		a dictionary.
	**/
	static public function enable_tensor_equality():Dynamic;
	/**
		Enables TensorFlow 2.x behaviors.
		
		This function can be called at the beginning of the program (before `Tensors`,
		`Graphs` or other structures have been created, and before devices have been
		initialized. It switches all global behaviors that are different between
		TensorFlow 1.x and 2.x to behave as intended for 2.x.
		
		This function is called in the main TensorFlow `__init__.py` file, user should
		not need to call it, except during complex migrations.
		
		@compatibility(TF2)
		This function is not necessary if you are using TF2. V2 behavior is enabled by
		default.
		@end_compatibility
	**/
	static public function enable_v2_behavior():Dynamic;
	/**
		In TensorFlow 2.0, iterating over a TensorShape instance returns values.
		
		This enables the new behavior.
		
		Concretely, `tensor_shape[i]` returned a Dimension instance in V1, but
		it V2 it returns either an integer, or None.
		
		Examples:
		
		```
		#######################
		# If you had this in V1:
		value = tensor_shape[i].value
		
		# Do this in V2 instead:
		value = tensor_shape[i]
		
		#######################
		# If you had this in V1:
		for dim in tensor_shape:
		  value = dim.value
		  print(value)
		
		# Do this in V2 instead:
		for value in tensor_shape:
		  print(value)
		
		#######################
		# If you had this in V1:
		dim = tensor_shape[i]
		dim.assert_is_compatible_with(other_shape)  # or using any other shape method
		
		# Do this in V2 instead:
		if tensor_shape.rank is None:
		  dim = Dimension(None)
		else:
		  dim = tensor_shape.dims[i]
		dim.assert_is_compatible_with(other_shape)  # or using any other shape method
		
		# The V2 suggestion above is more explicit, which will save you from
		# the following trap (present in V1):
		# you might do in-place modifications to `dim` and expect them to be reflected
		# in `tensor_shape[i]`, but they would not be.
		```
	**/
	static public function enable_v2_tensorshape():Dynamic;
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
		Updates the shape of a tensor and checks at runtime that the shape holds.
		
		When executed, this operation asserts that the input tensor `x`'s shape
		is compatible with the `shape` argument.
		See `tf.TensorShape.is_compatible_with` for details.
		
		>>> x = tf.constant([[1, 2, 3],
		...                  [4, 5, 6]])
		>>> x = tf.ensure_shape(x, [2, 3])
		
		Use `None` for unknown dimensions:
		
		>>> x = tf.ensure_shape(x, [None, 3])
		>>> x = tf.ensure_shape(x, [2, None])
		
		If the tensor's shape is not compatible with the `shape` argument, an error
		is raised:
		
		>>> x = tf.ensure_shape(x, [5])
		Traceback (most recent call last):
		...
		tf.errors.InvalidArgumentError: Shape of tensor dummy_input [3] is not
		  compatible with expected shape [5]. [Op:EnsureShape]
		
		During graph construction (typically tracing a `tf.function`),
		`tf.ensure_shape` updates the static-shape of the **result** tensor by
		merging the two shapes. See `tf.TensorShape.merge_with` for details.
		
		This is most useful when **you** know a shape that can't be determined
		statically by TensorFlow.
		
		The following trivial `tf.function` prints the input tensor's
		static-shape before and after `ensure_shape` is applied.
		
		>>> @tf.function
		... def f(tensor):
		...   print("Static-shape before:", tensor.shape)
		...   tensor = tf.ensure_shape(tensor, [None, 3])
		...   print("Static-shape after:", tensor.shape)
		...   return tensor
		
		This lets you see the effect of `tf.ensure_shape` when the function is traced:
		>>> cf = f.get_concrete_function(tf.TensorSpec([None, None]))
		Static-shape before: (None, None)
		Static-shape after: (None, 3)
		
		>>> cf(tf.zeros([3, 3])) # Passes
		>>> cf(tf.constant([1, 2, 3])) # fails
		Traceback (most recent call last):
		...
		InvalidArgumentError:  Shape of tensor x [3] is not compatible with expected shape [3,3].
		
		The above example raises `tf.errors.InvalidArgumentError`, because `x`'s
		shape, `(3,)`, is not compatible with the `shape` argument, `(None, 3)`
		
		Inside a `tf.function` or `v1.Graph` context it checks both the buildtime and
		runtime shapes. This is stricter than `tf.Tensor.set_shape` which only
		checks the buildtime shape.
		
		Note: This differs from `tf.Tensor.set_shape` in that it sets the static shape
		of the resulting tensor and enforces it at runtime, raising an error if the
		tensor's runtime shape is incompatible with the specified shape.
		`tf.Tensor.set_shape` sets the static shape of the tensor without enforcing it
		at runtime, which may result in inconsistencies between the statically-known
		shape of tensors and the runtime value of tensors.
		
		For example, of loading images of a known size:
		
		>>> @tf.function
		... def decode_image(png):
		...   image = tf.image.decode_png(png, channels=3)
		...   # the `print` executes during tracing.
		...   print("Initial shape: ", image.shape)
		...   image = tf.ensure_shape(image,[28, 28, 3])
		...   print("Final shape: ", image.shape)
		...   return image
		
		When tracing a function, no ops are being executed, shapes may be unknown.
		See the [Concrete Functions Guide](https://www.tensorflow.org/guide/concrete_function)
		for details.
		
		>>> concrete_decode = decode_image.get_concrete_function(
		...     tf.TensorSpec([], dtype=tf.string))
		Initial shape:  (None, None, 3)
		Final shape:  (28, 28, 3)
		
		>>> image = tf.random.uniform(maxval=255, shape=[28, 28, 3], dtype=tf.int32)
		>>> image = tf.cast(image,tf.uint8)
		>>> png = tf.image.encode_png(image)
		>>> image2 = concrete_decode(png)
		>>> print(image2.shape)
		(28, 28, 3)
		
		>>> image = tf.concat([image,image], axis=0)
		>>> print(image.shape)
		(56, 28, 3)
		>>> png = tf.image.encode_png(image)
		>>> image2 = concrete_decode(png)
		Traceback (most recent call last):
		...
		tf.errors.InvalidArgumentError:  Shape of tensor DecodePng [56,28,3] is not
		  compatible with expected shape [28,28,3].
		
		Caution: if you don't use the result of `tf.ensure_shape` the check may not
		run.
		
		>>> @tf.function
		... def bad_decode_image(png):
		...   image = tf.image.decode_png(png, channels=3)
		...   # the `print` executes during tracing.
		...   print("Initial shape: ", image.shape)
		...   # BAD: forgot to use the returned tensor.
		...   tf.ensure_shape(image,[28, 28, 3])
		...   print("Final shape: ", image.shape)
		...   return image
		
		>>> image = bad_decode_image(png)
		Initial shape:  (None, None, 3)
		Final shape:  (None, None, 3)
		>>> print(image.shape)
		(56, 28, 3)
		
		Args:
		  x: A `Tensor`.
		  shape: A `TensorShape` representing the shape of this tensor, a
		    `TensorShapeProto`, a list, a tuple, or None.
		  name: A name for this operation (optional). Defaults to "EnsureShape".
		
		Returns:
		  A `Tensor`. Has the same type and contents as `x`.
		
		Raises:
		  tf.errors.InvalidArgumentError: If `shape` is incompatible with the shape
		  of `x`.
	**/
	static public function ensure_shape(x:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of (x == y) element-wise.
		
		Performs a [broadcast](
		https://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) with the
		arguments and then an element-wise equality comparison, returning a Tensor of
		boolean values.
		
		For example:
		
		>>> x = tf.constant([2, 4])
		>>> y = tf.constant(2)
		>>> tf.math.equal(x, y)
		<tf.Tensor: shape=(2,), dtype=bool, numpy=array([ True,  False])>
		
		>>> x = tf.constant([2, 4])
		>>> y = tf.constant([2, 4])
		>>> tf.math.equal(x, y)
		<tf.Tensor: shape=(2,), dtype=bool, numpy=array([ True,  True])>
		
		Args:
		  x: A `tf.Tensor` or `tf.sparse.SparseTensor` or `tf.IndexedSlices`.
		  y: A `tf.Tensor` or `tf.sparse.SparseTensor` or `tf.IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of type bool with the same size as that of x or y.
		
		Raises:
		  `tf.errors.InvalidArgumentError`: If shapes of arguments are incompatible
	**/
	static public function equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the [Gauss error function](https://en.wikipedia.org/wiki/Error_function) of `x` element-wise. In statistics, for non-negative values of $x$, the error function has the following interpretation: for a random variable $Y$ that is normally distributed with mean 0 and variance $1/\sqrt{2}$, $erf(x)$ is the probability that $Y$ falls in the range $[−x, x]$.
		
		For example:
		
		>>> tf.math.erf([[1.0, 2.0, 3.0], [0.0, -1.0, -2.0]])
		<tf.Tensor: shape=(2, 3), dtype=float32, numpy=
		array([[ 0.8427007,  0.9953223,  0.999978 ],
		       [ 0.       , -0.8427007, -0.9953223]], dtype=float32)>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.erf(x.values, ...), x.dense_shape)`
	**/
	static public function erf(x:Dynamic, ?name:Dynamic):Dynamic;
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
		Checks whether the current thread has eager execution enabled.
		
		Eager execution is typically enabled via
		`tf.compat.v1.enable_eager_execution`, but may also be enabled within the
		context of a Python function via tf.contrib.eager.py_func.
		
		When eager execution is enabled, returns `True` in most cases. However,
		this API might return `False` in the following use cases.
		
		*  Executing inside `tf.function`, unless under `tf.init_scope` or
		   `tf.config.run_functions_eagerly(True)` is previously called.
		*  Executing inside a transformation function for `tf.dataset`.
		*  `tf.compat.v1.disable_eager_execution()` is called.
		
		>>> tf.compat.v1.enable_eager_execution()
		
		General case:
		
		>>> print(tf.executing_eagerly())
		True
		
		Inside `tf.function`:
		
		>>> @tf.function
		... def fn():
		...   with tf.init_scope():
		...     print(tf.executing_eagerly())
		...   print(tf.executing_eagerly())
		>>> fn()
		True
		False
		
		Inside `tf.function`
		after  `tf.config.run_functions_eagerly(True)` is called:
		
		>>> tf.config.run_functions_eagerly(True)
		>>> @tf.function
		... def fn():
		...   with tf.init_scope():
		...     print(tf.executing_eagerly())
		...   print(tf.executing_eagerly())
		>>> fn()
		True
		True
		>>> tf.config.run_functions_eagerly(False)
		
		Inside a transformation function for `tf.dataset`:
		
		>>> def data_fn(x):
		...   print(tf.executing_eagerly())
		...   return x
		>>> dataset = tf.data.Dataset.range(100)
		>>> dataset = dataset.map(data_fn)
		False
		
		Returns:
		  `True` if the current thread has eager execution enabled.
	**/
	static public function executing_eagerly():Dynamic;
	/**
		Returns True if executing eagerly, even if inside a graph function.
		
		This function will check the outermost context for the program and see if
		it is in eager mode. It is useful comparing to `tf.executing_eagerly()`,
		which checks the current context and will return `False` within a
		`tf.function` body. It can be used to build library that behave differently
		in eager runtime and v1 session runtime (deprecated).
		
		Example:
		
		>>> tf.compat.v1.enable_eager_execution()
		>>> @tf.function
		... def func():
		...   # A function constructs TensorFlow graphs, it does not execute eagerly,
		...   # but the outer most context is still eager.
		...   assert not tf.executing_eagerly()
		...   return tf.compat.v1.executing_eagerly_outside_functions()
		>>> func()
		<tf.Tensor: shape=(), dtype=bool, numpy=True>
		
		Returns:
		  boolean, whether the outermost context is in eager mode.
	**/
	static public function executing_eagerly_outside_functions():Dynamic;
	/**
		Computes exponential of x element-wise.  \\(y = e^x\\).
		
		This function computes the exponential of the input tensor element-wise.
		i.e. `math.exp(x)` or \\(e^x\\), where `x` is the input tensor.
		\\(e\\) denotes Euler's number and is approximately equal to 2.718281.
		Output is positive for any real input.
		
		>>> x = tf.constant(2.0)
		>>> tf.math.exp(x)
		<tf.Tensor: shape=(), dtype=float32, numpy=7.389056>
		
		>>> x = tf.constant([2.0, 8.0])
		>>> tf.math.exp(x)
		<tf.Tensor: shape=(2,), dtype=float32,
		numpy=array([   7.389056, 2980.958   ], dtype=float32)>
		
		For complex numbers, the exponential value is calculated as
		$$
		e^{x+iy} = {e^x} {e^{iy}} = {e^x} ({\cos (y) + i \sin (y)})
		$$
		
		For `1+1j` the value would be computed as:
		$$
		e^1 (\cos (1) + i \sin (1)) = 2.7182817 \times (0.5403023+0.84147096j)
		$$
		
		>>> x = tf.constant(1 + 1j)
		>>> tf.math.exp(x)
		<tf.Tensor: shape=(), dtype=complex128,
		numpy=(1.4686939399158851+2.2873552871788423j)>
		
		Args:
		  x: A `tf.Tensor`. Must be one of the following types: `bfloat16`, `half`,
		    `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor`. Has the same type as `x`.
		
		@compatibility(numpy)
		Equivalent to np.exp
		@end_compatibility
	**/
	static public function exp(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a tensor with a length 1 axis inserted at index `axis`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		Use the `axis` argument instead
		
		Given a tensor `input`, this operation inserts a dimension of length 1 at the
		dimension index `axis` of `input`'s shape. The dimension index follows Python
		indexing rules: It's zero-based, a negative index it is counted backward
		from the end.
		
		This operation is useful to:
		
		* Add an outer "batch" dimension to a single element.
		* Align axes for broadcasting.
		* To add an inner vector length axis to a tensor of scalars.
		
		For example:
		
		If you have a single image of shape `[height, width, channels]`:
		
		>>> image = tf.zeros([10,10,3])
		
		You can add an outer `batch` axis by passing `axis=0`:
		
		>>> tf.expand_dims(image, axis=0).shape.as_list()
		[1, 10, 10, 3]
		
		The new axis location matches Python `list.insert(axis, 1)`:
		
		>>> tf.expand_dims(image, axis=1).shape.as_list()
		[10, 1, 10, 3]
		
		Following standard Python indexing rules, a negative `axis` counts from the
		end so `axis=-1` adds an inner most dimension:
		
		>>> tf.expand_dims(image, -1).shape.as_list()
		[10, 10, 3, 1]
		
		This operation requires that `axis` is a valid index for `input.shape`,
		following Python indexing rules:
		
		```
		-1-tf.rank(input) <= axis <= tf.rank(input)
		```
		
		This operation is related to:
		
		* `tf.squeeze`, which removes dimensions of size 1.
		* `tf.reshape`, which provides more flexible reshaping capability.
		* `tf.sparse.expand_dims`, which provides this functionality for
		  `tf.SparseTensor`
		
		Args:
		  input: A `Tensor`.
		  axis: 0-D (scalar). Specifies the dimension index at which to expand the
		    shape of `input`. Must be in the range `[-rank(input) - 1, rank(input)]`.
		  name: The name of the output `Tensor` (optional).
		  dim: 0-D (scalar). Equivalent to `axis`, to be deprecated.
		
		Returns:
		  A `Tensor` with the same data as `input`, but its shape has an additional
		  dimension of size 1 added.
		
		Raises:
		  ValueError: if either both or neither of `dim` and `axis` are specified.
	**/
	static public function expand_dims(input:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Computes `exp(x) - 1` element-wise.
		
		  i.e. `exp(x) - 1` or `e^(x) - 1`, where `x` is the input tensor.
		  `e` denotes Euler's number and is approximately equal to 2.718281.
		
		  ```python
		  x = tf.constant(2.0)
		  tf.math.expm1(x) ==> 6.389056
		
		  x = tf.constant([2.0, 8.0])
		  tf.math.expm1(x) ==> array([6.389056, 2979.958], dtype=float32)
		
		  x = tf.constant(1 + 1j)
		  tf.math.expm1(x) ==> (0.46869393991588515+2.2873552871788423j)
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function expm1(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extract `patches` from `images` and put them in the "depth" output dimension.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`, `complex64`, `complex128`, `bool`.
		    4-D Tensor with shape `[batch, in_rows, in_cols, depth]`.
		  ksizes: A list of `ints` that has length `>= 4`.
		    The size of the sliding window for each dimension of `images`.
		  strides: A list of `ints` that has length `>= 4`.
		    How far the centers of two consecutive patches are in
		    the images. Must be: `[1, stride_rows, stride_cols, 1]`.
		  rates: A list of `ints` that has length `>= 4`.
		    Must be: `[1, rate_rows, rate_cols, 1]`. This is the
		    input stride, specifying how far two consecutive patch samples are in the
		    input. Equivalent to extracting patches with
		    `patch_sizes_eff = patch_sizes + (patch_sizes - 1) * (rates - 1)`, followed by
		    subsampling them spatially by a factor of `rates`. This is equivalent to
		    `rate` in dilated (a.k.a. Atrous) convolutions.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function extract_image_patches(images:Dynamic, ?ksizes:Dynamic, ?strides:Dynamic, ?rates:Dynamic, ?padding:Dynamic, ?name:Dynamic, ?sizes:Dynamic):Dynamic;
	/**
		Extract `patches` from `input` and put them in the `"depth"` output dimension. 3D extension of `extract_image_patches`.
		
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
		
		    The size-related attributes are specified as follows:
		
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
		Construct an identity matrix, or a batch of matrices.
		
		See also `tf.ones`, `tf.zeros`, `tf.fill`, `tf.one_hot`.
		
		```python
		# Construct one identity matrix.
		tf.eye(2)
		==> [[1., 0.],
		     [0., 1.]]
		
		# Construct a batch of 3 identity matrices, each 2 x 2.
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
		
		Attributes
		
		*   `[min; max]` define the clamping range for the `inputs` data.
		*   `inputs` values are quantized into the quantization range (
		`[0; 2^num_bits - 1]` when `narrow_range` is false and `[1; 2^num_bits - 1]`
		when it is true) and then de-quantized and output as floats in `[min; max]`
		interval.
		*   `num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
		Before quantization, `min` and `max` values are adjusted with the following
		logic.
		It is suggested to have `min <= 0 <= max`. If `0` is not in the range of values,
		the behavior can be unexpected:
		
		*   If `0 < min < max`: `min_adj = 0` and `max_adj = max - min`.
		*   If `min < max < 0`: `min_adj = min - max` and `max_adj = 0`.
		*   If `min <= 0 <= max`: `scale = (max - min) / (2^num_bits - 1) `,
		`min_adj = scale * round(min / scale)` and `max_adj = max + min_adj - min`.
		
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
		Fake-quantize the 'inputs' tensor of type float via global float scalars
		
		Fake-quantize the `inputs` tensor of type float via global float scalars
		`min` and `max` to `outputs` tensor of same shape as `inputs`.
		
		Attributes
		
		*   `[min; max]` define the clamping range for the `inputs` data.
		*   `inputs` values are quantized into the quantization range (
		`[0; 2^num_bits - 1]` when `narrow_range` is false and `[1; 2^num_bits - 1]`
		when it is true) and then de-quantized and output as floats in `[min; max]`
		interval.
		*   `num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
		Before quantization, `min` and `max` values are adjusted with the following
		logic.
		It is suggested to have `min <= 0 <= max`. If `0` is not in the range of values,
		the behavior can be unexpected:
		
		*   If `0 < min < max`: `min_adj = 0` and `max_adj = max - min`.
		*   If `min < max < 0`: `min_adj = min - max` and `max_adj = 0`.
		*   If `min <= 0 <= max`: `scale = (max - min) / (2^num_bits - 1) `,
		`min_adj = scale * round(min / scale)` and `max_adj = max + min_adj - min`.
		
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
		Fake-quantize the 'inputs' tensor of type float via per-channel floats
		
		Fake-quantize the `inputs` tensor of type float per-channel and one of the
		shapes: `[d]`, `[b, d]` `[b, h, w, d]` via per-channel floats `min` and `max`
		of shape `[d]` to `outputs` tensor of same shape as `inputs`.
		
		Attributes
		
		*   `[min; max]` define the clamping range for the `inputs` data.
		*   `inputs` values are quantized into the quantization range (
		`[0; 2^num_bits - 1]` when `narrow_range` is false and `[1; 2^num_bits - 1]`
		when it is true) and then de-quantized and output as floats in `[min; max]`
		interval.
		*   `num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
		Before quantization, `min` and `max` values are adjusted with the following
		logic.
		It is suggested to have `min <= 0 <= max`. If `0` is not in the range of values,
		the behavior can be unexpected:
		
		*   If `0 < min < max`: `min_adj = 0` and `max_adj = max - min`.
		*   If `min < max < 0`: `min_adj = min - max` and `max_adj = 0`.
		*   If `min <= 0 <= max`: `scale = (max - min) / (2^num_bits - 1) `,
		`min_adj = scale * round(min / scale)` and `max_adj = max + min_adj - min`.
		
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
		Fast Fourier transform.
		
		Computes the 1-dimensional discrete Fourier transform over the inner-most
		dimension of `input`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex tensor.
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
		    A complex tensor.
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
		    A complex tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function fft3d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor filled with a scalar value.
		
		See also `tf.ones`, `tf.zeros`, `tf.one_hot`, `tf.eye`.
		
		This operation creates a tensor of shape `dims` and fills it with `value`.
		
		For example:
		
		>>> tf.fill([2, 3], 9)
		<tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		array([[9, 9, 9],
		       [9, 9, 9]], dtype=int32)>
		
		`tf.fill` evaluates at graph runtime and supports dynamic shapes based on
		other runtime `tf.Tensors`, unlike `tf.constant(value, shape=dims)`, which
		embeds the value as a `Const` node.
		
		Args:
		  dims: A 1-D sequence of non-negative numbers. Represents the shape of the
		    output `tf.Tensor`. Entries should be of type: `int32`, `int64`.
		  value: A value to fill the returned `tf.Tensor`.
		  name: Optional string. The name of the output `tf.Tensor`.
		
		Returns:
		  A `tf.Tensor` with shape `dims` and the same dtype as `value`.
		
		Raises:
		  InvalidArgumentError: `dims` contains negative entries.
		  NotFoundError: `dims` contains non-integer entries.
		
		@compatibility(numpy)
		Similar to `np.full`. In `numpy`, more parameters are supported. Passing a
		number argument as the shape (`np.full(5, value)`) is valid in `numpy` for
		specifying a 1-D shaped result, while TensorFlow does not support this syntax.
		@end_compatibility
	**/
	static public function fill(dims:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates fingerprint values.
		
		Generates fingerprint values of `data`.
		
		Fingerprint op considers the first dimension of `data` as the batch dimension,
		and `output[i]` contains the fingerprint value generated from contents in
		`data[i, ...]` for all `i`.
		
		Fingerprint op writes fingerprint values as byte arrays. For example, the
		default method `farmhash64` generates a 64-bit fingerprint value at a time.
		This 8-byte value is written out as an `tf.uint8` array of size 8, in
		little-endian order.
		
		For example, suppose that `data` has data type `tf.int32` and shape (2, 3, 4),
		and that the fingerprint method is `farmhash64`. In this case, the output
		shape is (2, 8), where 2 is the batch dimension size of `data`, and 8 is the
		size of each fingerprint value in bytes. `output[0, :]` is generated from
		12 integers in `data[0, :, :]` and similarly `output[1, :]` is generated from
		other 12 integers in `data[1, :, :]`.
		
		Note that this op fingerprints the raw underlying buffer, and it does not
		fingerprint Tensor's metadata such as data type and/or shape. For example, the
		fingerprint values are invariant under reshapes and bitcasts as long as the
		batch dimension remain the same:
		
		```python
		tf.fingerprint(data) == tf.fingerprint(tf.reshape(data, ...))
		tf.fingerprint(data) == tf.fingerprint(tf.bitcast(data, ...))
		```
		
		For string data, one should expect `tf.fingerprint(data) !=
		tf.fingerprint(tf.string.reduce_join(data))` in general.
		
		Args:
		  data: A `Tensor`. Must have rank 1 or higher.
		  method: A `Tensor` of type `tf.string`. Fingerprint method used by this op.
		    Currently available method is `farmhash64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A two-dimensional `Tensor` of type `tf.uint8`. The first dimension equals to
		  `data`'s first dimension, and the second dimension size depends on the
		  fingerprint algorithm.
	**/
	static public function fingerprint(data:Dynamic, ?method:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Partitioner to specify a fixed number of shards along given axis.
		
		@compatibility(TF2)
		This API is deprecated in TF2. In TF2, partitioner is no longer part of
		the variable declaration via `tf.Variable`.
		[ParameterServer Training]
		(https://www.tensorflow.org/tutorials/distribute/parameter_server_training)
		handles partitioning of variables. The corresponding TF2 partitioner class of
		`fixed_size_partitioner` is
		`tf.distribute.experimental.partitioners.FixedShardsPartitioner`.
		
		Check the [migration guide]
		(https://www.tensorflow.org/guide/migrate#2_use_python_objects_to_track_variables_and_losses)
		on the differences in treatment of variables and losses between TF1 and TF2.
		
		Before:
		
		  ```
		  x = tf.compat.v1.get_variable(
		    "x", shape=(2,), partitioner=tf.compat.v1.fixed_size_partitioner(2)
		  )
		  ```
		After:
		
		  ```
		  partitioner = (
		      tf.distribute.experimental.partitioners.FixedShardsPartitioner(
		          num_shards=2)
		  )
		  strategy = tf.distribute.experimental.ParameterServerStrategy(
		                 cluster_resolver=cluster_resolver,
		                 variable_partitioner=partitioner)
		
		  with strategy.scope():
		    x = tf.Variable([1.0, 2.0])
		  ```
		@end_compatibility
		
		Args:
		  num_shards: `int`, number of shards to partition variable.
		  axis: `int`, axis to partition on.
		
		Returns:
		  A partition function usable as the `partitioner` argument to
		  `variable_scope` and `get_variable`.
	**/
	static public function fixed_size_partitioner(num_shards:Dynamic, ?axis:Dynamic):Dynamic;
	static public var float16 : Dynamic;
	static public var float32 : Dynamic;
	static public var float64 : Dynamic;
	/**
		Returns element-wise largest integer not greater than x.
		
		Both input range is `(-inf, inf)` and the
		output range consists of all integer values.
		
		For example:
		
		>>> x = tf.constant([1.3324, -1.5, 5.555, -2.532, 0.99, float("inf")])
		>>> tf.floor(x).numpy()
		array([ 1., -2.,  5., -3.,  0., inf], dtype=float32)
		
		Args:
		  x:  A `Tensor`. Must be one of the following types: `bfloat16`, `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as x.
	**/
	static public function floor(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x // y element-wise.
		
		*NOTE*: `floor_div` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `uint32`, `uint64`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function floor_div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Divides `x / y` elementwise, rounding toward the most negative integer.
		
		The same as `tf.compat.v1.div(x,y)` for integers, but uses
		`tf.floor(tf.compat.v1.div(x,y))` for
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
		
		*NOTE*: `math.floormod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`, `bfloat16`, `half`, `float32`, `float64`.
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
		Compiles a function into a callable TensorFlow graph. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(experimental_compile)`. They will be removed in a future version.
		Instructions for updating:
		experimental_compile is deprecated, use jit_compile instead
		
		`tf.function` constructs a `tf.types.experimental.GenericFunction` that
		executes a TensorFlow graph (`tf.Graph`) created by trace-compiling the
		TensorFlow operations in `func`. More information on the topic can be found
		in [Introduction to Graphs and tf.function]
		(https://www.tensorflow.org/guide/intro_to_graphs).
		
		See [Better Performance with tf.function]
		(https://www.tensorflow.org/guide/function) for tips on performance and
		known limitations.
		
		Example usage:
		
		>>> @tf.function
		... def f(x, y):
		...   return x ** 2 + y
		>>> x = tf.constant([2, 3])
		>>> y = tf.constant([3, -2])
		>>> f(x, y)
		<tf.Tensor: ... numpy=array([7, 7], ...)>
		
		The trace-compilation allows non-TensorFlow operations to execute, but under
		special conditions. In general, only TensorFlow operations are guaranteed to
		run and create fresh results whenever the `GenericFunction` is called.
		
		## Features
		
		`func` may use data-dependent control flow, including `if`, `for`, `while`
		`break`, `continue` and `return` statements:
		
		>>> @tf.function
		... def f(x):
		...   if tf.reduce_sum(x) > 0:
		...     return x * x
		...   else:
		...     return -x // 2
		>>> f(tf.constant(-2))
		<tf.Tensor: ... numpy=1>
		
		`func`'s closure may include `tf.Tensor` and `tf.Variable` objects:
		
		>>> @tf.function
		... def f():
		...   return x ** 2 + y
		>>> x = tf.constant([-2, -3])
		>>> y = tf.Variable([3, -2])
		>>> f()
		<tf.Tensor: ... numpy=array([7, 7], ...)>
		
		`func` may also use ops with side effects, such as `tf.print`, `tf.Variable`
		and others:
		
		>>> v = tf.Variable(1)
		>>> @tf.function
		... def f(x):
		...   for i in tf.range(x):
		...     v.assign_add(i)
		>>> f(3)
		>>> v
		<tf.Variable ... numpy=4>
		
		Important: Any Python side-effects (appending to a list, printing with
		`print`, etc) will only happen once, when `func` is traced. To have
		side-effects executed into your `tf.function` they need to be written
		as TF ops:
		
		>>> l = []
		>>> @tf.function
		... def f(x):
		...   for i in x:
		...     l.append(i + 1)    # Caution! Will only happen once when tracing
		>>> f(tf.constant([1, 2, 3]))
		>>> l
		[<tf.Tensor ...>]
		
		Instead, use TensorFlow collections like `tf.TensorArray`:
		
		>>> @tf.function
		... def f(x):
		...   ta = tf.TensorArray(dtype=tf.int32, size=0, dynamic_size=True)
		...   for i in range(len(x)):
		...     ta = ta.write(i, x[i] + 1)
		...   return ta.stack()
		>>> f(tf.constant([1, 2, 3]))
		<tf.Tensor: ..., numpy=array([2, 3, 4], ...)>
		
		## `tf.function` creates polymorphic callables
		
		Internally, `tf.types.experimental.GenericFunction` may contain multiple
		`tf.types.experimental.ConcreteFunction`s, each specialized to arguments with
		different data types or shapes, since TensorFlow can perform more
		optimizations on graphs of specific shapes, dtypes and values of constant
		arguments. `tf.function` treats any pure Python values as opaque objects (best
		thought of as compile-time constants), and builds a separate `tf.Graph` for
		each set of Python arguments that it encounters.
		For more information, see the
		[tf.function guide](https://www.tensorflow.org/guide/function#rules_of_tracing)
		
		Executing a `GenericFunction` will select and execute the appropriate
		`ConcreteFunction` based on the argument types and values.
		
		To obtain an individual `ConcreteFunction`, use the
		`GenericFunction.get_concrete_function` method. It can be called with the
		same arguments as `func` and returns a
		`tf.types.experimental.ConcreteFunction`. `ConcreteFunction`s are backed by a
		single `tf.Graph`:
		
		>>> @tf.function
		... def f(x):
		...   return x + 1
		>>> isinstance(f.get_concrete_function(1).graph, tf.Graph)
		True
		
		`ConcreteFunction`s can be executed just like `GenericFunction`s, but their
		input is resticted to the types to which they're specialized.
		
		## Retracing
		
		`ConcreteFunctions` are built (traced) on the fly, as the `GenericFunction` is
		called with new TensorFlow types or shapes, or with new Python values as
		arguments. When `GenericFunction` builds a new trace, it is said that `func`
		is retraced. Retracing is a frequent performance concern for `tf.function` as
		it can be considerably slower than executing a graph that's already been
		traced. It is ideal to minimize the amount of retracing in your code.
		
		Caution: Passing python scalars or lists as arguments to `tf.function` will
		usually retrace. To avoid this, pass numeric arguments as Tensors whenever
		possible:
		
		>>> @tf.function
		... def f(x):
		...   return tf.abs(x)
		>>> f1 = f.get_concrete_function(1)
		>>> f2 = f.get_concrete_function(2)  # Slow - compiles new graph
		>>> f1 is f2
		False
		>>> f1 = f.get_concrete_function(tf.constant(1))
		>>> f2 = f.get_concrete_function(tf.constant(2))  # Fast - reuses f1
		>>> f1 is f2
		True
		
		Python numerical arguments should only be used when they take few distinct
		values, such as hyperparameters like the number of layers in a neural network.
		
		## Input signatures
		
		For Tensor arguments, `GenericFunction`creates a new `ConcreteFunction` for
		every unique set of input shapes and datatypes. The example below creates two
		separate `ConcreteFunction`s, each specialized to a different shape:
		
		>>> @tf.function
		... def f(x):
		...   return x + 1
		>>> vector = tf.constant([1.0, 1.0])
		>>> matrix = tf.constant([[3.0]])
		>>> f.get_concrete_function(vector) is f.get_concrete_function(matrix)
		False
		
		An "input signature" can be optionally provided to `tf.function` to control
		this process. The input signature specifies the shape and type of each
		Tensor argument to the function using a `tf.TensorSpec` object. More general
		shapes can be used. This ensures only one `ConcreteFunction` is created, and
		restricts the `GenericFunction` to the specified shapes and types. It is
		an effective way to limit retracing when Tensors have dynamic shapes.
		
		>>> @tf.function(
		...     input_signature=[tf.TensorSpec(shape=None, dtype=tf.float32)])
		... def f(x):
		...   return x + 1
		>>> vector = tf.constant([1.0, 1.0])
		>>> matrix = tf.constant([[3.0]])
		>>> f.get_concrete_function(vector) is f.get_concrete_function(matrix)
		True
		
		## Variables may only be created once
		
		`tf.function` only allows creating new `tf.Variable` objects when it is called
		for the first time:
		
		>>> class MyModule(tf.Module):
		...   def __init__(self):
		...     self.v = None
		...
		...   @tf.function
		...   def __call__(self, x):
		...     if self.v is None:
		...       self.v = tf.Variable(tf.ones_like(x))
		...     return self.v * x
		
		In general, it is recommended to create `tf.Variable`s outside of
		`tf.function`.
		In simple cases, persisting state across `tf.function` boundaries may be
		implemented using a pure functional style in which state is represented by
		`tf.Tensor`s passed as arguments and returned as return values.
		
		Contrast the two styles below:
		
		>>> state = tf.Variable(1)
		>>> @tf.function
		... def f(x):
		...   state.assign_add(x)
		>>> f(tf.constant(2))  # Non-pure functional style
		>>> state
		<tf.Variable ... numpy=3>
		
		>>> state = tf.constant(1)
		>>> @tf.function
		... def f(state, x):
		...   state += x
		...   return state
		>>> state = f(state, tf.constant(2))  # Pure functional style
		>>> state
		<tf.Tensor: ... numpy=3>
		
		## Python operations execute only once per trace
		
		`func` may contain TensorFlow operations mixed with pure Python operations.
		However, when the function is executed, only the TensorFlow operations will
		run. The Python operations run only once, at trace time. If TensorFlow
		operations depend on results from Pyhton operations, those results will be
		frozen into the graph.
		
		>>> @tf.function
		... def f(a, b):
		...   print('this runs at trace time; a is', a, 'and b is', b)
		...   return b
		>>> f(1, tf.constant(1))
		this runs at trace time; a is 1 and b is Tensor("...", shape=(), dtype=int32)
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		
		>>> f(1, tf.constant(2))
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		
		>>> f(2, tf.constant(1))
		this runs at trace time; a is 2 and b is Tensor("...", shape=(), dtype=int32)
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		
		>>> f(2, tf.constant(2))
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		
		## Using type annotations to improve performance
		
		'experimental_follow_type_hints` can be used along with type annotations to
		reduce retracing by automatically casting any Python values to `tf.Tensor`
		(something that is not done by default, unless you use input signatures).
		
		>>> @tf.function(experimental_follow_type_hints=True)
		... def f_with_hints(x: tf.Tensor):
		...   print('Tracing')
		...   return x
		>>> @tf.function(experimental_follow_type_hints=False)
		... def f_no_hints(x: tf.Tensor):
		...   print('Tracing')
		...   return x
		>>> f_no_hints(1)
		Tracing
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		>>> f_no_hints(2)
		Tracing
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		>>> f_with_hints(1)
		Tracing
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		>>> f_with_hints(2)
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		
		Args:
		  func: the function to be compiled. If `func` is None, `tf.function` returns
		    a decorator that can be invoked with a single argument - `func`. In other
		    words, `tf.function(input_signature=...)(func)` is equivalent to
		    `tf.function(func, input_signature=...)`. The former can be used as
		    decorator.
		  input_signature: A possibly nested sequence of `tf.TensorSpec` objects
		    specifying the shapes and dtypes of the Tensors that will be supplied to
		    this function. If `None`, a separate function is instantiated for each
		    inferred input signature.  If input_signature is specified, every input to
		    `func` must be a `Tensor`, and `func` cannot accept `**kwargs`.
		  autograph: Whether autograph should be applied on `func` before tracing a
		    graph. Data-dependent control flow requires `autograph=True`. For more
		    information, see the [tf.function and AutoGraph guide](
		    https://www.tensorflow.org/guide/function#autograph_transformations).
		  jit_compile: If `True`, compiles the function using
		    [XLA](https://tensorflow.org/xla). XLA performs compiler optimizations,
		    such as fusion, and attempts to emit more efficient code. This may
		    drastically improve the performance. If set to `True`,
		    the whole function needs to be compilable by XLA, or an
		    `errors.InvalidArgumentError` is thrown.
		    If `None` (default), compiles the function with XLA when running on TPU
		    and goes through the regular function execution path when running on
		    other devices.
		    If `False`, executes the function without XLA compilation.  Set this value
		    to `False` when directly running a multi-device function on TPUs (e.g. two
		    TPU cores, one TPU core and its host CPU).
		    Not all functions are compilable, see a list of
		    [sharp corners](https://tensorflow.org/xla/known_issues).
		  experimental_implements: If provided, contains a name of a "known" function
		    this implements. For example "mycompany.my_recurrent_cell".
		    This is stored as an attribute in inference function,
		    which can then be detected when processing serialized function.
		    See [standardizing composite ops](https://github.com/tensorflow/community/blob/master/rfcs/20190610-standardizing-composite_ops.md)  # pylint: disable=line-too-long
		    for details.  For an example of utilizing this attribute see this
		    [example](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/compiler/mlir/lite/transforms/prepare_composite_functions_tf.cc)
		    The code above automatically detects and substitutes function that
		    implements "embedded_matmul" and allows TFLite to substitute its own
		    implementations. For instance, a tensorflow user can use this
		     attribute to mark that their function also implements
		    `embedded_matmul` (perhaps more efficiently!)
		    by specifying it using this parameter:
		    `@tf.function(experimental_implements="embedded_matmul")`
		    This can either be specified as just the string name of the function or
		    a NameAttrList corresponding to a list of key-value attributes associated
		    with the function name. The name of the function will be in the 'name'
		    field of the NameAttrList. To define a formal TF op for this function
		    implements, try the experimental [composite TF](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/compiler/mlir/tfr)
		    project.
		  experimental_autograph_options: Optional tuple of
		    `tf.autograph.experimental.Feature` values.
		  experimental_relax_shapes: When True, `tf.function` may generate fewer,
		    graphs that are less specialized on input shapes.
		  experimental_compile: Deprecated alias to 'jit_compile'.
		  experimental_follow_type_hints: When True, the function may use type
		    annotations from `func` to optimize the tracing performance. For example,
		    arguments annotated with `tf.Tensor` will automatically be converted
		    to a Tensor.
		
		Returns:
		   If `func` is not None, returns a `tf.types.experimental.GenericFunction`.
		   If `func` is None, returns a decorator that, when invoked with a single
		   `func` argument, returns a `tf.types.experimental.GenericFunction`.
		
		Raises:
		   `ValueError` when attempting to use `jit_compile=True`, but XLA support is
		   not available.
	**/
	@:native("function")
	static public function _function(?func:Dynamic, ?input_signature:Dynamic, ?autograph:Dynamic, ?jit_compile:Dynamic, ?experimental_implements:Dynamic, ?experimental_autograph_options:Dynamic, ?experimental_relax_shapes:Dynamic, ?experimental_compile:Dynamic, ?experimental_follow_type_hints:Dynamic):Dynamic;
	/**
		Gather slices from params axis `axis` according to indices. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(validate_indices)`. They will be removed in a future version.
		Instructions for updating:
		The `validate_indices` argument has no effect. Indices are always validated on CPU and never validated on GPU.
		
		Gather slices from `params` axis `axis` according to `indices`.  `indices`
		must be an integer tensor of any dimension (often 1-D).
		
		`Tensor.__getitem__` works for scalars, `tf.newaxis`, and
		[python slices](https://numpy.org/doc/stable/reference/arrays.indexing.html#basic-slicing-and-indexing)
		
		`tf.gather` extends indexing to handle tensors of indices.
		
		In the simplest case it's identical to scalar indexing:
		
		>>> params = tf.constant(['p0', 'p1', 'p2', 'p3', 'p4', 'p5'])
		>>> params[3].numpy()
		b'p3'
		>>> tf.gather(params, 3).numpy()
		b'p3'
		
		The most common case is to pass a single axis tensor of indices (this
		can't be expressed as a python slice because the indices are not sequential):
		
		>>> indices = [2, 0, 2, 5]
		>>> tf.gather(params, indices).numpy()
		array([b'p2', b'p0', b'p2', b'p5'], dtype=object)
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/Gather.png"
		alt>
		</div>
		
		The indices can have any shape. When the `params` has 1 axis, the
		output shape is equal to the input shape:
		
		>>> tf.gather(params, [[2, 0], [2, 5]]).numpy()
		array([[b'p2', b'p0'],
		       [b'p2', b'p5']], dtype=object)
		
		The `params` may also have any shape. `gather` can select slices
		across any axis depending on the `axis` argument (which defaults to 0).
		Below it is used to gather first rows, then columns from a matrix:
		
		>>> params = tf.constant([[0, 1.0, 2.0],
		...                       [10.0, 11.0, 12.0],
		...                       [20.0, 21.0, 22.0],
		...                       [30.0, 31.0, 32.0]])
		>>> tf.gather(params, indices=[3,1]).numpy()
		array([[30., 31., 32.],
		       [10., 11., 12.]], dtype=float32)
		>>> tf.gather(params, indices=[2,1], axis=1).numpy()
		array([[ 2.,  1.],
		       [12., 11.],
		       [22., 21.],
		       [32., 31.]], dtype=float32)
		
		More generally: The output shape has the same shape as the input, with the
		indexed-axis replaced by the shape of the indices.
		
		>>> def result_shape(p_shape, i_shape, axis=0):
		...   return p_shape[:axis] + i_shape + p_shape[axis+1:]
		>>>
		>>> result_shape([1, 2, 3], [], axis=1)
		[1, 3]
		>>> result_shape([1, 2, 3], [7], axis=1)
		[1, 7, 3]
		>>> result_shape([1, 2, 3], [7, 5], axis=1)
		[1, 7, 5, 3]
		
		Here are some examples:
		
		>>> params.shape.as_list()
		[4, 3]
		>>> indices = tf.constant([[0, 2]])
		>>> tf.gather(params, indices=indices, axis=0).shape.as_list()
		[1, 2, 3]
		>>> tf.gather(params, indices=indices, axis=1).shape.as_list()
		[4, 1, 2]
		
		>>> params = tf.random.normal(shape=(5, 6, 7, 8))
		>>> indices = tf.random.uniform(shape=(10, 11), maxval=7, dtype=tf.int32)
		>>> result = tf.gather(params, indices, axis=2)
		>>> result.shape.as_list()
		[5, 6, 10, 11, 8]
		
		This is because each index takes a slice from `params`, and
		places it at the corresponding location in the output. For the above example
		
		>>> # For any location in indices
		>>> a, b = 0, 1
		>>> tf.reduce_all(
		...     # the corresponding slice of the result
		...     result[:, :, a, b, :] ==
		...     # is equal to the slice of `params` along `axis` at the index.
		...     params[:, :, indices[a, b], :]
		... ).numpy()
		True
		
		### Batching:
		
		The `batch_dims` argument lets you gather different items from each element
		of a batch.
		
		Using `batch_dims=1` is equivalent to having an outer loop over the first
		axis of `params` and `indices`:
		
		>>> params = tf.constant([
		...     [0, 0, 1, 0, 2],
		...     [3, 0, 0, 0, 4],
		...     [0, 5, 0, 6, 0]])
		>>> indices = tf.constant([
		...     [2, 4],
		...     [0, 4],
		...     [1, 3]])
		
		>>> tf.gather(params, indices, axis=1, batch_dims=1).numpy()
		array([[1, 2],
		       [3, 4],
		       [5, 6]], dtype=int32)
		
		This is is equivalent to:
		
		>>> def manually_batched_gather(params, indices, axis):
		...   batch_dims=1
		...   result = []
		...   for p,i in zip(params, indices):
		...     r = tf.gather(p, i, axis=axis-batch_dims)
		...     result.append(r)
		...   return tf.stack(result)
		>>> manually_batched_gather(params, indices, axis=1).numpy()
		array([[1, 2],
		       [3, 4],
		       [5, 6]], dtype=int32)
		
		Higher values of `batch_dims` are equivalent to multiple nested loops over
		the outer axes of `params` and `indices`. So the overall shape function is
		
		>>> def batched_result_shape(p_shape, i_shape, axis=0, batch_dims=0):
		...   return p_shape[:axis] + i_shape[batch_dims:] + p_shape[axis+1:]
		>>>
		>>> batched_result_shape(
		...     p_shape=params.shape.as_list(),
		...     i_shape=indices.shape.as_list(),
		...     axis=1,
		...     batch_dims=1)
		[3, 2]
		
		>>> tf.gather(params, indices, axis=1, batch_dims=1).shape.as_list()
		[3, 2]
		
		This comes up naturally if you need to use the indices of an operation like
		`tf.argsort`, or `tf.math.top_k` where the last dimension of the indices
		indexes into the last dimension of input, at the corresponding location.
		In this case you can use `tf.gather(values, indices, batch_dims=-1)`.
		
		See also:
		
		* `tf.Tensor.__getitem__`: The direct tensor index operation (`t[]`), handles
		  scalars and python-slices `tensor[..., 7, 1:-1]`
		* `tf.scatter`: A collection of operations similar to `__setitem__`
		  (`t[i] = x`)
		* `tf.gather_nd`: An operation similar to `tf.gather` but gathers across
		  multiple axis at once (it can gather elements of a matrix instead of rows
		  or columns)
		* `tf.boolean_mask`, `tf.where`: Binary indexing.
		* `tf.slice` and `tf.strided_slice`: For lower level access to the
		  implementation of `__getitem__`'s python-slice handling (`t[1:-1:2]`)
		
		Args:
		  params: The `Tensor` from which to gather values. Must be at least rank
		    `axis + 1`.
		  indices: The index `Tensor`.  Must be one of the following types: `int32`,
		    `int64`. The values must be in range `[0, params.shape[axis])`.
		  validate_indices: Deprecated, does nothing. Indices are always validated on
		    CPU, never validated on GPU.
		
		    Caution: On CPU, if an out of bound index is found, an error is raised.
		    On GPU, if an out of bound index is found, a 0 is stored in the
		    corresponding output value.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`. The
		    `axis` in `params` to gather `indices` from. Must be greater than or equal
		    to `batch_dims`.  Defaults to the first non-batch dimension. Supports
		    negative indexes.
		  batch_dims: An `integer`.  The number of batch dimensions.  Must be less
		    than or equal to `rank(indices)`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `params`.
	**/
	static public function gather(params:Dynamic, indices:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic, ?axis:Dynamic, ?batch_dims:Dynamic):Dynamic;
	/**
		Gather slices from `params` into a Tensor with shape specified by `indices`.
		
		`indices` is an K-dimensional integer tensor, best thought of as a
		(K-1)-dimensional tensor of indices into `params`, where each element defines
		a slice of `params`:
		
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
		
		Additionally both 'params' and 'indices' can have M leading batch
		dimensions that exactly match. In this case 'batch_dims' must be M.
		
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
		
		The examples below are for the case when only indices have leading extra
		dimensions. If both 'params' and 'indices' have leading batch dimensions, use
		the 'batch_dims' parameter to run gather_nd in batch mode.
		
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
		
		Examples with batched 'params' and 'indices':
		
		```python
		    batch_dims = 1
		    indices = [[1], [0]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = [['c0', 'd0'], ['a1', 'b1']]
		
		    batch_dims = 1
		    indices = [[[1]], [[0]]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = [[['c0', 'd0']], [['a1', 'b1']]]
		
		    batch_dims = 1
		    indices = [[[1, 0]], [[0, 1]]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = [['c0'], ['b1']]
		```
		
		See also `tf.gather`.
		
		Args:
		  params: A `Tensor`. The tensor from which to gather values.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor.
		  name: A name for the operation (optional).
		  batch_dims: An integer or a scalar 'Tensor'. The number of batch dimensions.
		
		Returns:
		  A `Tensor`. Has the same type as `params`.
	**/
	static public function gather_nd(params:Dynamic, indices:Dynamic, ?name:Dynamic, ?batch_dims:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.get_collection()` using the default graph.
		
		See `tf.Graph.get_collection`
		for more details.
		
		Args:
		  key: The key for the collection. For example, the `GraphKeys` class contains
		    many standard names for collections.
		  scope: (Optional.) If supplied, the resulting list is filtered to include
		    only items whose `name` attribute matches using `re.match`. Items without
		    a `name` attribute are never returned if a scope is supplied and the
		    choice or `re.match` means that a `scope` without special tokens filters
		    by prefix.
		
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
		  key: The key for the collection. For example, the `GraphKeys` class contains
		    many standard names for collections.
		
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
		
		@compatibility(TF2)
		`get_default_graph` does not work with either eager execution or
		`tf.function`, and you should not invoke it directly. To migrate code that
		uses Graph-related functions to TF2, rewrite the code without them. See the
		[migration guide](https://www.tensorflow.org/guide/migrate) for more
		description about the behavior and semantic changes between Tensorflow 1 and
		Tensorflow 2.
		@end_compatibility
		
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
		    when to synchronize.
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
		Return TF logger instance.
	**/
	static public function get_logger():Dynamic;
	/**
		Returns the local seeds an operation should use given an op-specific seed.
		
		Given operation-specific seed, `op_seed`, this helper function returns two
		seeds derived from graph-level and op-level seeds. Many random operations
		internally use the two seeds to allow user to change the seed globally for a
		graph, or for only specific operations.
		
		For details on how the graph-level seed interacts with op seeds, see
		`tf.compat.v1.random.set_random_seed`.
		
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
		h = tf.compat.v1.get_session_handle(c)
		h = sess.run(h)
		
		p, a = tf.compat.v1.get_session_tensor(h.handle, tf.float32)
		b = tf.multiply(a, 10)
		c = sess.run(b, feed_dict={p: h.handle})
		```
	**/
	static public function get_session_handle(data:Dynamic, ?name:Dynamic):Dynamic;
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
		h = tf.compat.v1.get_session_handle(c)
		h = sess.run(h)
		
		p, a = tf.compat.v1.get_session_tensor(h.handle, tf.float32)
		b = tf.multiply(a, 10)
		c = sess.run(b, feed_dict={p: h.handle})
		```
	**/
	static public function get_session_tensor(handle:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the constant value of the given tensor, if efficiently calculable.
		
		This function attempts to partially evaluate the given tensor, and
		returns its value as a numpy ndarray if this succeeds.
		
		Example usage:
		
		>>> a = tf.constant(10)
		>>> tf.get_static_value(a)
		10
		>>> b = tf.constant(20)
		>>> tf.get_static_value(tf.add(a, b))
		30
		
		>>> # `tf.Variable` is not supported.
		>>> c = tf.Variable(30)
		>>> print(tf.get_static_value(c))
		None
		
		Using `partial` option is most relevant when calling `get_static_value` inside
		a `tf.function`. Setting it to `True` will return the results but for the
		values that cannot be evaluated will be `None`. For example:
		
		```python
		class Foo(object):
		  def __init__(self):
		    self.a = tf.Variable(1)
		    self.b = tf.constant(2)
		
		  @tf.function
		  def bar(self, partial):
		    packed = tf.raw_ops.Pack(values=[self.a, self.b])
		    static_val = tf.get_static_value(packed, partial=partial)
		    tf.print(static_val)
		
		f = Foo()
		f.bar(partial=True)  # `array([None, array(2, dtype=int32)], dtype=object)`
		f.bar(partial=False)  # `None`
		```
		
		Compatibility(V1): If `constant_value(tensor)` returns a non-`None` result, it
		will no longer be possible to feed a different value for `tensor`. This allows
		the result of this function to influence the graph that is constructed, and
		permits static shape optimizations.
		
		Args:
		  tensor: The Tensor to be evaluated.
		  partial: If True, the returned numpy array is allowed to have partially
		    evaluated values. Values that can't be evaluated will be None.
		
		Returns:
		  A numpy ndarray containing the constant value of the given `tensor`,
		  or None if it cannot be calculated.
		
		Raises:
		  TypeError: if tensor is not an ops.Tensor.
	**/
	static public function get_static_value(tensor:Dynamic, ?partial:Dynamic):Dynamic;
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
		    when to synchronize.
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
		`tf.compat.v1.local_variables`
		
		@compatibility(TF2)
		Not compatible with eager execution and `tf.function`. In particular, Graph
		collections are deprecated in TF2. Instead please create a
		[tf.Module](https://www.tensorflow.org/guide/intro_to_modules)
		container for all your model state, including variables.
		You can then list all the variables in your `tf.Module` through the
		`variables` attribute.
		@end_compatibility
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered to
		    include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a scope
		    is supplied. The choice of `re.match` means that a `scope` without special
		    tokens filters by prefix.
		
		Returns:
		  A list of `Variable` objects.
	**/
	static public function global_variables(?scope:Dynamic):Dynamic;
	/**
		Returns an Op that initializes global variables.
		
		This is just a shortcut for `variables_initializer(global_variables())`
		
		@compatibility(TF2)
		In TF2, variables are initialized immediately when they are created. There is
		no longer a need to run variable initializers before using them.
		@end_compatibility
		
		Returns:
		  An Op that initializes global variables in the graph.
	**/
	static public function global_variables_initializer():Dynamic;
	/**
		Creates a grad-pass-through op with the forward behavior provided in f.
		
		Use this function to wrap any op, maintaining its behavior in the forward
		pass, but replacing the original op in the backward graph with an identity.
		For example:
		
		```python
		x = tf.Variable(1.0, name="x")
		z = tf.Variable(3.0, name="z")
		
		with tf.GradientTape() as tape:
		  # y will evaluate to 9.0
		  y = tf.grad_pass_through(x.assign)(z**2)
		# grads will evaluate to 6.0
		grads = tape.gradient(y, z)
		```
		
		Another example is a 'differentiable' moving average approximation, where
		gradients are allowed to flow into the last value fed to the moving average,
		but the moving average is still used for the forward pass:
		
		```python
		x = ... # Some scalar value
		# A moving average object, we don't need to know how this is implemented
		moving_average = MovingAverage()
		with backprop.GradientTape() as tape:
		  # mavg_x will evaluate to the current running average value
		  mavg_x = tf.grad_pass_through(moving_average)(x)
		grads = tape.gradient(mavg_x, x) # grads will evaluate to 1.0
		```
		
		Args:
		  f: function `f(*x)` that returns a `Tensor` or nested structure of `Tensor`
		    outputs.
		
		Returns:
		  A function `h(x)` which returns the same values as `f(x)` and whose
		  gradients are the same as those of an identity function.
	**/
	static public function grad_pass_through(f:Dynamic):Dynamic;
	/**
		Constructs symbolic derivatives of sum of `ys` w.r.t. x in `xs`.
		
		`ys` and `xs` are each a `Tensor` or a list of tensors.  `grad_ys`
		is a list of `Tensor`, holding the gradients received by the
		`ys`. The list must be the same length as `ys`.
		
		`gradients()` adds ops to the graph to output the derivatives of `ys` with
		respect to `xs`.  It returns a list of `Tensor` of length `len(xs)` where
		each tensor is the `sum(dy/dx)` for y in `ys` and for x in `xs`.
		
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
		against errors. Mathematically these gradients are zero which can be requested
		using the `'zero'` option. `tf.UnconnectedGradients` provides the
		following options and behaviors:
		
		```python
		a = tf.ones([1, 2])
		b = tf.ones([3, 1])
		g1 = tf.gradients([b], [a], unconnected_gradients='none')
		sess.run(g1)  # [None]
		
		g2 = tf.gradients([b], [a], unconnected_gradients='zero')
		sess.run(g2)  # [array([[0., 0.]], dtype=float32)]
		```
		
		Let us take one practical example which comes during the back propogation
		phase. This function is used to evaluate the derivatives of the cost function
		with respect to Weights `Ws` and Biases `bs`. Below sample implementation
		provides the exaplantion of what it is actually used for :
		
		```python
		Ws = tf.constant(0.)
		bs = 2 * Ws
		cost = Ws + bs  # This is just an example. So, please ignore the formulas.
		g = tf.gradients(cost, [Ws, bs])
		dCost_dW, dCost_db = g
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
		  A list of `Tensor` of length `len(xs)` where each tensor is the `sum(dy/dx)`
		  for y in `ys` and for x in `xs`.
		
		Raises:
		  LookupError: if one of the operations between `x` and `y` does not
		    have a registered gradient function.
		  ValueError: if the arguments are invalid.
		  RuntimeError: if called in Eager mode.
	**/
	static public function gradients(ys:Dynamic, xs:Dynamic, ?grad_ys:Dynamic, ?name:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?stop_gradients:Dynamic, ?unconnected_gradients:Dynamic):Dynamic;
	/**
		Returns the truth value of (x > y) element-wise.
		
		*NOTE*: `math.greater` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Example:
		
		```python
		x = tf.constant([5, 4, 6])
		y = tf.constant([5, 2, 5])
		tf.math.greater(x, y) ==> [False, True, True]
		
		x = tf.constant([5, 4, 6])
		y = tf.constant([5])
		tf.math.greater(x, y) ==> [False, False, True]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function greater(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of (x >= y) element-wise.
		
		*NOTE*: `math.greater_equal` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Example:
		
		```python
		x = tf.constant([5, 4, 6, 7])
		y = tf.constant([5, 2, 5, 10])
		tf.math.greater_equal(x, y) ==> [True, True, True, False]
		
		x = tf.constant([5, 4, 6, 7])
		y = tf.constant([5])
		tf.math.greater_equal(x, y) ==> [True, False, True, True]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function greater_equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
		Promise to the TF runtime that the input tensor is a constant. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Not for public use.
		
		The runtime is then free to make optimizations based on this.
		
		Returns the input tensor without modification.
		
		Args:
		  input: A `Tensor`.
		  name: A name for this operation.
		
		Returns:
		  A `Tensor`. Has the same dtype as `input`.
	**/
	static public function guarantee_const(input:Dynamic, ?name:Dynamic):Dynamic;
	static public var half : Dynamic;
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
		
		Raises:
		  TypeError: If any unsupported dtype is provided.
		  tf.errors.InvalidArgumentError: If value_range does not
		      satisfy value_range[0] < value_range[1].
		
		Examples:
		
		>>> # Bins will be:  (-inf, 1), [1, 2), [2, 3), [3, 4), [4, inf)
		...
		>>> nbins = 5
		>>> value_range = [0.0, 5.0]
		>>> new_values = [-1.0, 0.0, 1.5, 2.0, 5.0, 15]
		>>> hist = tf.histogram_fixed_width(new_values, value_range, nbins=5)
		>>> hist.numpy()
		array([2, 1, 1, 0, 2], dtype=int32)
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
		
		Raises:
		  TypeError: If any unsupported dtype is provided.
		  tf.errors.InvalidArgumentError: If value_range does not
		      satisfy value_range[0] < value_range[1].
		
		Examples:
		
		>>> # Bins will be:  (-inf, 1), [1, 2), [2, 3), [3, 4), [4, inf)
		...
		>>> nbins = 5
		>>> value_range = [0.0, 5.0]
		>>> new_values = [-1.0, 0.0, 1.5, 2.0, 5.0, 15]
		>>> indices = tf.histogram_fixed_width_bins(new_values, value_range, nbins=5)
		>>> indices.numpy()
		array([0, 0, 1, 2, 4, 4], dtype=int32)
	**/
	static public function histogram_fixed_width_bins(values:Dynamic, value_range:Dynamic, ?nbins:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a Tensor with the same shape and contents as input.
		
		The return value is not the same Tensor as the original, but contains the same
		values.  This operation is fast when used on the same device.
		
		For example:
		
		>>> a = tf.constant([0.78])
		>>> a_identity = tf.identity(a)
		>>> a.numpy()
		array([0.78], dtype=float32)
		>>> a_identity.numpy()
		array([0.78], dtype=float32)
		
		Calling `tf.identity` on a variable will make a Tensor that represents the
		value of that variable at the time it is called. This is equivalent to calling
		`<variable>.read_value()`.
		
		>>> a = tf.Variable(5)
		>>> a_identity = tf.identity(a)
		>>> a.assign_add(1)
		<tf.Variable ... shape=() dtype=int32, numpy=6>
		>>> a.numpy()
		6
		>>> a_identity.numpy()
		5
		
		Args:
		  input: A `Tensor`, a `Variable`, a `CompositeTensor` or anything that can be
		  converted to a tensor using `tf.convert_to_tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or CompositeTensor. Has the same type and contents as `input`.
	**/
	static public function identity(input:Dynamic, ?name:Dynamic):Dynamic;
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
		Inverse fast Fourier transform.
		
		Computes the inverse 1-dimensional discrete Fourier transform over the
		inner-most dimension of `input`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex tensor.
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
		    A complex tensor.
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
		    A complex tensor.
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
		  a: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function igamma(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the upper regularized incomplete Gamma function `Q(a, x)`.
		
		The upper regularized incomplete Gamma function is defined as:
		
		\\(Q(a, x) = Gamma(a, x) / Gamma(a) = 1 - P(a, x)\\)
		
		where
		
		\\(Gamma(a, x) = \int_{x}^{\infty} t^{a-1} exp(-t) dt\\)
		
		is the upper incomplete Gamma function.
		
		Note, above `P(a, x)` (`Igamma`) is the lower regularized complete
		Gamma function.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function igammac(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the imaginary part of a complex (or real) tensor.
		
		Given a tensor `input`, this operation returns a tensor of type `float` that
		is the imaginary part of each element in `input` considered as a complex
		number. If `input` is real, a tensor of all zeros is returned.
		
		For example:
		
		```python
		x = tf.constant([-2.25 + 4.75j, 3.25 + 5.75j])
		tf.math.imag(x)  # [4.75, 5.75]
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
		Imports the graph from `graph_def` into the current default `Graph`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(op_dict)`. They will be removed in a future version.
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
		  corresponding to the names in `return_elements`,
		  and None if `returns_elements` is None.
		
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
		A context manager that lifts ops out of control-flow scopes and function-building graphs.
		
		There is often a need to lift variable initialization ops out of control-flow
		scopes, function-building graphs, and gradient tapes. Entering an
		`init_scope` is a mechanism for satisfying these desiderata. In particular,
		entering an `init_scope` has three effects:
		
		  (1) All control dependencies are cleared the moment the scope is entered;
		      this is equivalent to entering the context manager returned from
		      `control_dependencies(None)`, which has the side-effect of exiting
		      control-flow scopes like `tf.cond` and `tf.while_loop`.
		
		  (2) All operations that are created while the scope is active are lifted
		      into the lowest context on the `context_stack` that is not building a
		      graph function. Here, a context is defined as either a graph or an eager
		      context. Every context switch, i.e., every installation of a graph as
		      the default graph and every switch into eager mode, is logged in a
		      thread-local stack called `context_switches`; the log entry for a
		      context switch is popped from the stack when the context is exited.
		      Entering an `init_scope` is equivalent to crawling up
		      `context_switches`, finding the first context that is not building a
		      graph function, and entering it. A caveat is that if graph mode is
		      enabled but the default graph stack is empty, then entering an
		      `init_scope` will simply install a fresh graph as the default one.
		
		  (3) The gradient tape is paused while the scope is active.
		
		When eager execution is enabled, code inside an init_scope block runs with
		eager execution enabled even when tracing a `tf.function`. For example:
		
		```python
		tf.compat.v1.enable_eager_execution()
		
		@tf.function
		def func():
		  # A function constructs TensorFlow graphs,
		  # it does not execute eagerly.
		  assert not tf.executing_eagerly()
		  with tf.init_scope():
		    # Initialization runs with eager execution enabled
		    assert tf.executing_eagerly()
		```
		
		Raises:
		  RuntimeError: if graph state is incompatible with this initialization.
	**/
	static public function init_scope():Dynamic;
	/**
		Returns an Op that initializes all tables of the default graph. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
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
		See `tf.compat.v1.global_variables_initializer`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-02.
		Instructions for updating:
		Use `tf.global_variables_initializer` instead.
		
		Note: The output of this function should be used. If it is not, a warning will be logged or an error may be raised. To mark the output as used, call its .mark_used() method.
	**/
	static public function initialize_all_variables():Dynamic;
	/**
		See `tf.compat.v1.local_variables_initializer`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-02.
		Instructions for updating:
		Use `tf.local_variables_initializer` instead.
		
		Note: The output of this function should be used. If it is not, a warning will be logged or an error may be raised. To mark the output as used, call its .mark_used() method.
	**/
	static public function initialize_local_variables():Dynamic;
	/**
		See `tf.compat.v1.variables_initializer`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-02.
		Instructions for updating:
		Use `tf.variables_initializer` instead.
		
		Note: The output of this function should be used. If it is not, a warning will be logged or an error may be raised. To mark the output as used, call its .mark_used() method.
	**/
	static public function initialize_variables(var_list:Dynamic, ?name:Dynamic):Dynamic;
	static public var int16 : Dynamic;
	static public var int32 : Dynamic;
	static public var int64 : Dynamic;
	static public var int8 : Dynamic;
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
		Returns which elements of x are finite.
		
		@compatibility(numpy)
		Equivalent to np.isfinite
		@end_compatibility
		
		Example:
		
		```python
		x = tf.constant([5.0, 4.8, 6.8, np.inf, np.nan])
		tf.math.is_finite(x) ==> [True, True, True, False, False]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_finite(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns which elements of x are Inf.
		
		@compatibility(numpy)
		Equivalent to np.isinf
		@end_compatibility
		
		Example:
		
		```python
		x = tf.constant([5.0, np.inf, 6.8, np.inf])
		tf.math.is_inf(x) ==> [False, True, False, True]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_inf(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns which elements of x are NaN.
		
		@compatibility(numpy)
		Equivalent to np.isnan
		@end_compatibility
		
		Example:
		
		```python
		x = tf.constant([5.0, np.nan, 6.8, np.nan, np.inf])
		tf.math.is_nan(x) ==> [False, True, False, True, False]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_nan(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns `True` if `x` is non-decreasing.
		
		Elements of `x` are compared in row-major order.  The tensor `[x[0],...]`
		is non-decreasing if for every adjacent pair we have `x[i] <= x[i+1]`.
		If `x` has less than two elements, it is trivially non-decreasing.
		
		See also:  `is_strictly_increasing`
		
		>>> x1 = tf.constant([1.0, 1.0, 3.0])
		>>> tf.math.is_non_decreasing(x1)
		<tf.Tensor: shape=(), dtype=bool, numpy=True>
		>>> x2 = tf.constant([3.0, 1.0, 2.0])
		>>> tf.math.is_non_decreasing(x2)
		<tf.Tensor: shape=(), dtype=bool, numpy=False>
		
		Args:
		  x: Numeric `Tensor`.
		  name: A name for this operation (optional).  Defaults to "is_non_decreasing"
		
		Returns:
		  Boolean `Tensor`, equal to `True` iff `x` is non-decreasing.
		
		Raises:
		  TypeError: if `x` is not a numeric tensor.
	**/
	static public function is_non_decreasing(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns `True` if the elements of `tensor` are numbers.
		
		Specifically, returns `True` if the dtype of `tensor` is one of the following:
		
		* `tf.float32`
		* `tf.float64`
		* `tf.int8`
		* `tf.int16`
		* `tf.int32`
		* `tf.int64`
		* `tf.uint8`
		* `tf.qint8`
		* `tf.qint32`
		* `tf.quint8`
		* `tf.complex64`
		
		Returns `False` if `tensor` is of a non-numeric type or if `tensor` is not
		a `tf.Tensor` object.
	**/
	static public function is_numeric_tensor(tensor:Dynamic):Dynamic;
	/**
		Returns `True` if `x` is strictly increasing.
		
		Elements of `x` are compared in row-major order.  The tensor `[x[0],...]`
		is strictly increasing if for every adjacent pair we have `x[i] < x[i+1]`.
		If `x` has less than two elements, it is trivially strictly increasing.
		
		See also:  `is_non_decreasing`
		
		>>> x1 = tf.constant([1.0, 2.0, 3.0])
		>>> tf.math.is_strictly_increasing(x1)
		<tf.Tensor: shape=(), dtype=bool, numpy=True>
		>>> x2 = tf.constant([3.0, 1.0, 2.0])
		>>> tf.math.is_strictly_increasing(x2)
		<tf.Tensor: shape=(), dtype=bool, numpy=False>
		
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
		Checks whether `x` is a TF-native type that can be passed to many TF ops.
		
		Use `is_tensor` to differentiate types that can ingested by TensorFlow ops
		without any conversion (e.g., `tf.Tensor`, `tf.SparseTensor`, and
		`tf.RaggedTensor`) from types that need to be converted into tensors before
		they are ingested (e.g., numpy `ndarray` and Python scalars).
		
		For example, in the following code block:
		
		```python
		if not tf.is_tensor(t):
		  t = tf.convert_to_tensor(t)
		return t.shape, t.dtype
		```
		
		we check to make sure that `t` is a tensor (and convert it if not) before
		accessing its `shape` and `dtype`.  (But note that not all TensorFlow native
		types have shapes or dtypes; `tf.data.Dataset` is an example of a TensorFlow
		native type that has neither shape nor dtype.)
		
		Args:
		  x: A python object to check.
		
		Returns:
		  `True` if `x` is a TensorFlow-native type.
	**/
	static public function is_tensor(x:Dynamic):Dynamic;
	/**
		Tests if a variable has been initialized.
		
		Args:
		  variable: A `Variable`.
		
		Returns:
		  Returns a scalar boolean Tensor, `True` if the variable has been
		  initialized, `False` otherwise.
		
		
		Note: The output of this function should be used. If it is not, a warning will be logged or an error may be raised. To mark the output as used, call its .mark_used() method.
	**/
	static public function is_variable_initialized(variable:Dynamic):Dynamic;
	/**
		Computes \\(ln(|Beta(x)|)\\), reducing along the last dimension.
		
		Given one-dimensional $z = [z_1,...,z_K]$, we define
		
		$$Beta(z) = \frac{\prod_j \Gamma(z_j)}{\Gamma(\sum_j z_j)},$$
		
		where $\Gamma$ is the gamma function.
		
		And for $n + 1$ dimensional $x$ with shape $[N_1, ..., N_n, K]$, we define
		
		$$lbeta(x)[i_1, ..., i_n] = \log{|Beta(x[i_1, ..., i_n, :])|}.$$
		
		In other words, the last dimension is treated as the $z$ vector.
		
		Note that if $z = [u, v]$, then
		
		$$Beta(z) = \frac{\Gamma(u)\Gamma(v)}{\Gamma(u + v)}
		  = \int_0^1 t^{u-1} (1 - t)^{v-1} \mathrm{d}t,$$
		
		which defines the traditional bivariate beta function.
		
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
		Returns the truth value of (x < y) element-wise.
		
		*NOTE*: `math.less` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Example:
		
		```python
		x = tf.constant([5, 4, 6])
		y = tf.constant([5])
		tf.math.less(x, y) ==> [False, True, False]
		
		x = tf.constant([5, 4, 6])
		y = tf.constant([5, 6, 7])
		tf.math.less(x, y) ==> [False, True, True]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function less(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of (x <= y) element-wise.
		
		*NOTE*: `math.less_equal` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Example:
		
		```python
		x = tf.constant([5, 4, 6])
		y = tf.constant([5])
		tf.math.less_equal(x, y) ==> [True, True, False]
		
		x = tf.constant([5, 4, 6])
		y = tf.constant([5, 6, 6])
		tf.math.less_equal(x, y) ==> [True, True, True]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function less_equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the log of the absolute value of `Gamma(x)` element-wise.
		
		  For positive numbers, this function computes log((input - 1)!) for every element in the tensor.
		  `lgamma(5) = log((5-1)!) = log(4!) = log(24) = 3.1780539`
		
		Example:
		
		```python
		x = tf.constant([0, 0.5, 1, 4.5, -4, -5.6])
		tf.math.lgamma(x) ==> [inf, 0.5723649, 0., 2.4537368, inf, -4.6477685]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function lgamma(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates evenly-spaced values in an interval along a given axis.
		
		A sequence of `num` evenly-spaced values are generated beginning at `start`
		along a given `axis`.
		If `num > 1`, the values in the sequence increase by
		`(stop - start) / (num - 1)`, so that the last one is exactly `stop`.
		If `num <= 0`, `ValueError` is raised.
		
		Matches
		[np.linspace](https://docs.scipy.org/doc/numpy/reference/generated/numpy.linspace.html)'s
		behaviour
		except when `num == 0`.
		
		For example:
		
		```
		tf.linspace(10.0, 12.0, 3, name="linspace") => [ 10.0  11.0  12.0]
		```
		
		`Start` and `stop` can be tensors of arbitrary size:
		
		>>> tf.linspace([0., 5.], [10., 40.], 5, axis=0)
		<tf.Tensor: shape=(5, 2), dtype=float32, numpy=
		array([[ 0.  ,  5.  ],
		       [ 2.5 , 13.75],
		       [ 5.  , 22.5 ],
		       [ 7.5 , 31.25],
		       [10.  , 40.  ]], dtype=float32)>
		
		`Axis` is where the values will be generated (the dimension in the
		returned tensor which corresponds to the axis will be equal to `num`)
		
		>>> tf.linspace([0., 5.], [10., 40.], 5, axis=-1)
		<tf.Tensor: shape=(2, 5), dtype=float32, numpy=
		array([[ 0.  ,  2.5 ,  5.  ,  7.5 , 10.  ],
		       [ 5.  , 13.75, 22.5 , 31.25, 40.  ]], dtype=float32)>
		
		
		
		Args:
		  start: A `Tensor`. Must be one of the following types: `bfloat16`,
		    `float32`, `float64`. N-D tensor. First entry in the range.
		  stop: A `Tensor`. Must have the same type and shape as `start`. N-D tensor.
		    Last entry in the range.
		  num: A `Tensor`. Must be one of the following types: `int32`, `int64`. 0-D
		    tensor. Number of values to generate.
		  name: A name for the operation (optional).
		  axis: Axis along which the operation is performed (used only when N-D
		    tensors are provided).
		
		Returns:
		  A `Tensor`. Has the same type as `start`.
	**/
	static public function lin_space(start:Dynamic, stop:Dynamic, num:Dynamic, ?name:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Generates evenly-spaced values in an interval along a given axis.
		
		A sequence of `num` evenly-spaced values are generated beginning at `start`
		along a given `axis`.
		If `num > 1`, the values in the sequence increase by
		`(stop - start) / (num - 1)`, so that the last one is exactly `stop`.
		If `num <= 0`, `ValueError` is raised.
		
		Matches
		[np.linspace](https://docs.scipy.org/doc/numpy/reference/generated/numpy.linspace.html)'s
		behaviour
		except when `num == 0`.
		
		For example:
		
		```
		tf.linspace(10.0, 12.0, 3, name="linspace") => [ 10.0  11.0  12.0]
		```
		
		`Start` and `stop` can be tensors of arbitrary size:
		
		>>> tf.linspace([0., 5.], [10., 40.], 5, axis=0)
		<tf.Tensor: shape=(5, 2), dtype=float32, numpy=
		array([[ 0.  ,  5.  ],
		       [ 2.5 , 13.75],
		       [ 5.  , 22.5 ],
		       [ 7.5 , 31.25],
		       [10.  , 40.  ]], dtype=float32)>
		
		`Axis` is where the values will be generated (the dimension in the
		returned tensor which corresponds to the axis will be equal to `num`)
		
		>>> tf.linspace([0., 5.], [10., 40.], 5, axis=-1)
		<tf.Tensor: shape=(2, 5), dtype=float32, numpy=
		array([[ 0.  ,  2.5 ,  5.  ,  7.5 , 10.  ],
		       [ 5.  , 13.75, 22.5 , 31.25, 40.  ]], dtype=float32)>
		
		
		
		Args:
		  start: A `Tensor`. Must be one of the following types: `bfloat16`,
		    `float32`, `float64`. N-D tensor. First entry in the range.
		  stop: A `Tensor`. Must have the same type and shape as `start`. N-D tensor.
		    Last entry in the range.
		  num: A `Tensor`. Must be one of the following types: `int32`, `int64`. 0-D
		    tensor. Number of values to generate.
		  name: A name for the operation (optional).
		  axis: Axis along which the operation is performed (used only when N-D
		    tensors are provided).
		
		Returns:
		  A `Tensor`. Has the same type as `start`.
	**/
	static public function linspace(start:Dynamic, stop:Dynamic, num:Dynamic, ?name:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Loads a TensorFlow plugin, containing file system implementation. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.load_library` instead.
		
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
		If it is a folder, all shared objects that are named "libtfkernel*" will be
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
		`tf.compat.v1.global_variables`
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered to
		    include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a scope
		    is supplied. The choice of `re.match` means that a `scope` without special
		    tokens filters by prefix.
		
		Returns:
		  A list of local `Variable` objects.
	**/
	static public function local_variables(?scope:Dynamic):Dynamic;
	/**
		Returns an Op that initializes all local variables.
		
		This is just a shortcut for `variables_initializer(local_variables())`
		
		@compatibility(TF2)
		In TF2, variables are initialized immediately when they are created. There is
		no longer a need to run variable initializers before using them.
		@end_compatibility
		
		Returns:
		  An Op that initializes all local variables in the graph.
	**/
	static public function local_variables_initializer():Dynamic;
	/**
		Computes natural logarithm of x element-wise.
		
		I.e., \\(y = \log_e x\\).
		
		Example:
		>>> x = tf.constant([0, 0.5, 1, 5])
		>>> tf.math.log(x)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=array([      -inf, -0.6931472,  0.       ,  1.609438 ], dtype=float32)>
		
		See: https://en.wikipedia.org/wiki/Logarithm
		
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
		
		Example:
		>>> x = tf.constant([0, 0.5, 1, 5])
		>>> tf.math.log1p(x)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=array([0.       , 0.4054651, 0.6931472, 1.7917595], dtype=float32)>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function log1p(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes log sigmoid of `x` element-wise.
		
		Specifically, `y = log(1 / (1 + exp(-x)))`.  For numerical stability,
		we use `y = -tf.nn.softplus(-x)`.
		
		Args:
		  x: A Tensor with type `float32` or `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor with the same type as `x`.
		
		Usage Example:
		
		If a positive number is large, then its log_sigmoid will approach to 0 since
		the formula will be `y = log( <large_num> / (1 + <large_num>) )` which
		approximates to `log (1)` which is 0.
		
		>>> x = tf.constant([0.0, 1.0, 50.0, 100.0])
		>>> tf.math.log_sigmoid(x)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=
		array([-6.9314718e-01, -3.1326169e-01, -1.9287499e-22, -0.0000000e+00],
		      dtype=float32)>
		
		If a negative number is large, its log_sigmoid will approach to the number
		itself since the formula will be `y = log( 1 / (1 + <large_num>) )` which is
		`log (1) - log ( (1 + <large_num>) )` which approximates to `- <large_num>`
		that is the number itself.
		
		>>> x = tf.constant([-100.0, -50.0, -1.0, 0.0])
		>>> tf.math.log_sigmoid(x)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=
		array([-100.       ,  -50.       ,   -1.3132616,   -0.6931472],
		      dtype=float32)>
	**/
	static public function log_sigmoid(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of x AND y element-wise.
		
		Logical AND function.
		
		Requires that `x` and `y` have the same shape or have
		[broadcast-compatible](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		shapes. For example, `x` and `y` can be:
		
		  - Two single elements of type `bool`.
		  - One `tf.Tensor` of type `bool` and one single `bool`, where the result will
		    be calculated by applying logical AND with the single element to each
		    element in the larger Tensor.
		  - Two `tf.Tensor` objects of type `bool` of the same shape. In this case,
		    the result will be the element-wise logical AND of the two input tensors.
		
		You can also use the `&` operator instead.
		
		Usage:
		
		  >>> a = tf.constant([True])
		  >>> b = tf.constant([False])
		  >>> tf.math.logical_and(a, b)
		  <tf.Tensor: shape=(1,), dtype=bool, numpy=array([False])>
		  >>> a & b
		  <tf.Tensor: shape=(1,), dtype=bool, numpy=array([False])>
		
		  >>> c = tf.constant([True])
		  >>> x = tf.constant([False, True, True, False])
		  >>> tf.math.logical_and(c, x)
		  <tf.Tensor: shape=(4,), dtype=bool, numpy=array([False,  True,  True, False])>
		  >>> c & x
		  <tf.Tensor: shape=(4,), dtype=bool, numpy=array([False,  True,  True, False])>
		
		  >>> y = tf.constant([False, False, True, True])
		  >>> z = tf.constant([False, True, False, True])
		  >>> tf.math.logical_and(y, z)
		  <tf.Tensor: shape=(4,), dtype=bool, numpy=array([False, False, False, True])>
		  >>> y & z
		  <tf.Tensor: shape=(4,), dtype=bool, numpy=array([False, False, False, True])>
		
		  This op also supports broadcasting
		
		  >>> tf.logical_and([[True, False]], [[True], [False]])
		  <tf.Tensor: shape=(2, 2), dtype=bool, numpy=
		    array([[ True, False],
		           [False, False]])>
		
		The reduction version of this elementwise operation is `tf.math.reduce_all`.
		
		Args:
		    x: A `tf.Tensor` of type bool.
		    y: A `tf.Tensor` of type bool.
		    name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of type bool with the shape that `x` and `y` broadcast to.
		
		Args:
		  x: A `Tensor` of type `bool`.
		  y: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function logical_and(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of `NOT x` element-wise.
		
		Example:
		
		>>> tf.math.logical_not(tf.constant([True, False]))
		<tf.Tensor: shape=(2,), dtype=bool, numpy=array([False,  True])>
		
		Args:
		  x: A `Tensor` of type `bool`. A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function logical_not(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of x OR y element-wise.
		
		Logical OR function.
		
		Requires that `x` and `y` have the same shape or have
		[broadcast-compatible](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		shapes. For example, `x` and `y` can be:
		
		- Two single elements of type `bool`.
		- One `tf.Tensor` of type `bool` and one single `bool`, where the result will
		  be calculated by applying logical OR with the single element to each
		  element in the larger Tensor.
		- Two `tf.Tensor` objects of type `bool` of the same shape. In this case,
		  the result will be the element-wise logical OR of the two input tensors.
		
		You can also use the `|` operator instead.
		
		Usage:
		
		  >>> a = tf.constant([True])
		  >>> b = tf.constant([False])
		  >>> tf.math.logical_or(a, b)
		  <tf.Tensor: shape=(1,), dtype=bool, numpy=array([ True])>
		  >>> a | b
		  <tf.Tensor: shape=(1,), dtype=bool, numpy=array([ True])>
		
		  >>> c = tf.constant([False])
		  >>> x = tf.constant([False, True, True, False])
		  >>> tf.math.logical_or(c, x)
		  <tf.Tensor: shape=(4,), dtype=bool, numpy=array([False, True,  True, False])>
		  >>> c | x
		  <tf.Tensor: shape=(4,), dtype=bool, numpy=array([False, True,  True, False])>
		
		  >>> y = tf.constant([False, False, True, True])
		  >>> z = tf.constant([False, True, False, True])
		  >>> tf.math.logical_or(y, z)
		  <tf.Tensor: shape=(4,), dtype=bool, numpy=array([False, True, True, True])>
		  >>> y | z
		  <tf.Tensor: shape=(4,), dtype=bool, numpy=array([False, True, True, True])>
		
		  This op also supports broadcasting
		
		  >>> tf.logical_or([[True, False]], [[True], [False]])
		  <tf.Tensor: shape=(2, 2), dtype=bool, numpy=
		  array([[ True,  True],
		       [ True, False]])>
		
		The reduction version of this elementwise operation is `tf.math.reduce_any`.
		
		Args:
		    x: A `tf.Tensor` of type bool.
		    y: A `tf.Tensor` of type bool.
		    name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of type bool with the shape that `x` and `y` broadcast to.
		
		Args:
		  x: A `Tensor` of type `bool`.
		  y: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function logical_or(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Logical XOR function.
		
		x ^ y = (x | y) & ~(x & y)
		
		Requires that `x` and `y` have the same shape or have
		[broadcast-compatible](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		shapes. For example, `x` and `y` can be:
		
		- Two single elements of type `bool`
		- One `tf.Tensor` of type `bool` and one single `bool`, where the result will
		  be calculated by applying logical XOR with the single element to each
		  element in the larger Tensor.
		- Two `tf.Tensor` objects of type `bool` of the same shape. In this case,
		  the result will be the element-wise logical XOR of the two input tensors.
		
		Usage:
		
		>>> a = tf.constant([True])
		>>> b = tf.constant([False])
		>>> tf.math.logical_xor(a, b)
		<tf.Tensor: shape=(1,), dtype=bool, numpy=array([ True])>
		
		>>> c = tf.constant([True])
		>>> x = tf.constant([False, True, True, False])
		>>> tf.math.logical_xor(c, x)
		<tf.Tensor: shape=(4,), dtype=bool, numpy=array([ True, False, False,  True])>
		
		>>> y = tf.constant([False, False, True, True])
		>>> z = tf.constant([False, True, False, True])
		>>> tf.math.logical_xor(y, z)
		<tf.Tensor: shape=(4,), dtype=bool, numpy=array([False,  True,  True, False])>
		
		Args:
		    x: A `tf.Tensor` type bool.
		    y: A `tf.Tensor` of type bool.
		    name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of type bool with the same size as that of x or y.
	**/
	static public function logical_xor(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create a numpy ndarray from a tensor.
		
		Create a numpy ndarray with the same shape and data as the tensor.
		
		For example:
		
		```python
		# Tensor a has shape (2,3)
		a = tf.constant([[1,2,3],[4,5,6]])
		proto_tensor = tf.make_tensor_proto(a)  # convert `tensor a` to a proto tensor
		tf.make_ndarray(proto_tensor) # output: array([[1, 2, 3],
		#                                              [4, 5, 6]], dtype=int32)
		# output has shape (2,3)
		```
		
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
		   should be reused by calling `tf.compat.v1.get_variable`. If a trainable
		   variable is
		   created using `tf.Variable`, then a ValueError will be thrown. Variables
		   that are intended to be locals can be created by specifying
		   `tf.Variable(..., trainable=false)`.
		* The function may use variable scopes and other templates internally to
		    create and reuse variables, but it shouldn't use
		    `tf.compat.v1.global_variables` to
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
		  var1 = tf.compat.v1.get_variable(scalar_name,
		                         shape=[],
		                         initializer=tf.compat.v1.constant_initializer(1))
		  return x * var1
		
		scale_by_y = tf.compat.v1.make_template('scale_by_y', my_op, scalar_name='y')
		
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
		  var1 = tf.compat.v1.get_variable(scalar_name,
		                         shape=[],
		                         initializer=tf.compat.v1.constant_initializer(1))
		  return x * var1
		
		with tf.compat.v1.variable_scope('scope') as vs:
		  scale_by_y = tf.compat.v1.make_template('scale_by_y', my_op,
		  scalar_name='y')
		  z = scale_by_y(input1)
		  w = scale_by_y(input2)
		
		# Creates a template that reuses the variables above.
		with tf.compat.v1.variable_scope(vs, reuse=True):
		  scale_by_y2 = tf.compat.v1.make_template('scale_by_y', my_op,
		  scalar_name='y')
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
		    the `tf.compat.v1.get_variable` `custom_getter` documentation for more
		    information.
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
		
		In TensorFlow 2.0, representing tensors as protos should no longer be a
		common workflow. That said, this utility function is still useful for
		generating TF Serving request protos:
		
		```python
		  request = tensorflow_serving.apis.predict_pb2.PredictRequest()
		  request.model_spec.name = "my_model"
		  request.model_spec.signature_name = "serving_default"
		  request.inputs["images"].CopyFrom(tf.make_tensor_proto(X_new))
		```
		
		`make_tensor_proto` accepts "values" of a python scalar, a python list, a
		numpy ndarray, or a numpy scalar.
		
		If "values" is a python scalar or a python list, make_tensor_proto
		first convert it to numpy ndarray. If dtype is None, the
		conversion tries its best to infer the right numpy data
		type. Otherwise, the resulting numpy array has a compatible data
		type with the given dtype.
		
		In either case above, the numpy ndarray (either the caller provided
		or the auto-converted) must have the compatible type with dtype.
		
		`make_tensor_proto` then converts the numpy array to a tensor proto.
		
		If "shape" is None, the resulting tensor proto represents the numpy
		array precisely.
		
		Otherwise, "shape" specifies the tensor's shape and the numpy array
		can not have more elements than what "shape" specifies.
		
		Args:
		  values:         Values to put in the TensorProto.
		  dtype:          Optional tensor_pb2 DataType value.
		  shape:          List of integers representing the dimensions of tensor.
		  verify_shape:   Boolean that enables verification of a shape of values.
		  allow_broadcast:  Boolean that enables allowing scalars and 1 length vector
		      broadcasting. Cannot be true when verify_shape is true.
		
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
	**/
	static public function make_tensor_proto(values:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?verify_shape:Dynamic, ?allow_broadcast:Dynamic):Dynamic;
	/**
		Transforms `elems` by applying `fn` to each element unstacked on axis 0. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dtype)`. They will be removed in a future version.
		Instructions for updating:
		Use fn_output_signature instead
		
		See also `tf.scan`.
		
		`map_fn` unstacks `elems` on axis 0 to obtain a sequence of elements;
		calls `fn` to transform each element; and then stacks the transformed
		values back together.
		
		#### Mapping functions with single-Tensor inputs and outputs
		
		If `elems` is a single tensor and `fn`'s signature is `tf.Tensor->tf.Tensor`,
		then `map_fn(fn, elems)` is equivalent to
		`tf.stack([fn(elem) for elem in tf.unstack(elems)])`.  E.g.:
		
		>>> tf.map_fn(fn=lambda t: tf.range(t, t + 3), elems=tf.constant([3, 5, 2]))
		<tf.Tensor: shape=(3, 3), dtype=int32, numpy=
		  array([[3, 4, 5],
		         [5, 6, 7],
		         [2, 3, 4]], dtype=int32)>
		
		`map_fn(fn, elems).shape = [elems.shape[0]] + fn(elems[0]).shape`.
		
		#### Mapping functions with multi-arity inputs and outputs
		
		`map_fn` also supports functions with multi-arity inputs and outputs:
		
		* If `elems` is a tuple (or nested structure) of tensors, then those tensors
		  must all have the same outer-dimension size (`num_elems`); and `fn` is
		  used to transform each tuple (or structure) of corresponding slices from
		  `elems`.  E.g., if `elems` is a tuple `(t1, t2, t3)`, then `fn` is used to
		  transform each tuple of slices `(t1[i], t2[i], t3[i])`
		  (where `0 <= i < num_elems`).
		
		* If `fn` returns a tuple (or nested structure) of tensors, then the
		  result is formed by stacking corresponding elements from those structures.
		
		#### Specifying `fn`'s output signature
		
		If `fn`'s input and output signatures are different, then the output
		signature must be specified using `fn_output_signature`.  (The input and
		output signatures are differ if their structures, dtypes, or tensor types do
		not match).  E.g.:
		
		>>> tf.map_fn(fn=tf.strings.length,  # input & output have different dtypes
		...           elems=tf.constant(["hello", "moon"]),
		...           fn_output_signature=tf.int32)
		<tf.Tensor: shape=(2,), dtype=int32, numpy=array([5, 4], dtype=int32)>
		>>> tf.map_fn(fn=tf.strings.join,  # input & output have different structures
		...           elems=[tf.constant(['The', 'A']), tf.constant(['Dog', 'Cat'])],
		...           fn_output_signature=tf.string)
		<tf.Tensor: shape=(2,), dtype=string,
		 numpy=array([b'TheDog', b'ACat'], dtype=object)>
		
		`fn_output_signature` can be specified using any of the following:
		
		* A `tf.DType` or `tf.TensorSpec` (to describe a `tf.Tensor`)
		* A `tf.RaggedTensorSpec` (to describe a `tf.RaggedTensor`)
		* A `tf.SparseTensorSpec` (to describe a `tf.sparse.SparseTensor`)
		* A (possibly nested) tuple, list, or dict containing the above types.
		
		#### RaggedTensors
		
		`map_fn` supports `tf.RaggedTensor` inputs and outputs.  In particular:
		
		* If `elems` is a `RaggedTensor`, then `fn` will be called with each
		  row of that ragged tensor.
		  * If `elems` has only one ragged dimension, then the values passed to
		    `fn` will be `tf.Tensor`s.
		  * If `elems` has multiple ragged dimensions, then the values passed to
		    `fn` will be `tf.RaggedTensor`s with one fewer ragged dimension.
		
		* If the result of `map_fn` should be a `RaggedTensor`, then use a
		  `tf.RaggedTensorSpec` to specify `fn_output_signature`.
		  * If `fn` returns `tf.Tensor`s with varying sizes, then use a
		    `tf.RaggedTensorSpec` with `ragged_rank=0` to combine them into a
		    single ragged tensor (which will have ragged_rank=1).
		  * If `fn` returns `tf.RaggedTensor`s, then use a `tf.RaggedTensorSpec`
		    with the same `ragged_rank`.
		
		>>> # Example: RaggedTensor input
		>>> rt = tf.ragged.constant([[1, 2, 3], [], [4, 5], [6]])
		>>> tf.map_fn(tf.reduce_sum, rt, fn_output_signature=tf.int32)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([6, 0, 9, 6], dtype=int32)>
		
		>>> # Example: RaggedTensor output
		>>> elems = tf.constant([3, 5, 0, 2])
		>>> tf.map_fn(tf.range, elems,
		...           fn_output_signature=tf.RaggedTensorSpec(shape=[None],
		...                                                   dtype=tf.int32))
		<tf.RaggedTensor [[0, 1, 2], [0, 1, 2, 3, 4], [], [0, 1]]>
		
		Note: `map_fn` should only be used if you need to map a function over the
		*rows* of a `RaggedTensor`.  If you wish to map a function over the
		individual values, then you should use:
		
		* `tf.ragged.map_flat_values(fn, rt)`
		  (if fn is expressible as TensorFlow ops)
		* `rt.with_flat_values(map_fn(fn, rt.flat_values))`
		  (otherwise)
		
		E.g.:
		
		>>> rt = tf.ragged.constant([[1, 2, 3], [], [4, 5], [6]])
		>>> tf.ragged.map_flat_values(lambda x: x + 2, rt)
		<tf.RaggedTensor [[3, 4, 5], [], [6, 7], [8]]>
		
		#### SparseTensors
		
		`map_fn` supports `tf.sparse.SparseTensor` inputs and outputs.  In particular:
		
		* If `elems` is a `SparseTensor`, then `fn` will be called with each row
		  of that sparse tensor. In particular, the value passed to `fn` will be a
		  `tf.sparse.SparseTensor` with one fewer dimension than `elems`.
		
		* If the result of `map_fn` should be a `SparseTensor`, then use a
		  `tf.SparseTensorSpec` to specify `fn_output_signature`.  The individual
		  `SparseTensor`s returned by `fn` will be stacked into a single
		  `SparseTensor` with one more dimension.
		
		>>> # Example: SparseTensor input
		>>> st = tf.sparse.SparseTensor([[0, 0], [2, 0], [2, 1]], [2, 3, 4], [4, 4])
		>>> tf.map_fn(tf.sparse.reduce_sum, st, fn_output_signature=tf.int32)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([2, 0, 7, 0], dtype=int32)>
		
		>>> # Example: SparseTensor output
		>>> tf.sparse.to_dense(
		...     tf.map_fn(tf.sparse.eye, tf.constant([2, 3]),
		...               fn_output_signature=tf.SparseTensorSpec(None, tf.float32)))
		<tf.Tensor: shape=(2, 3, 3), dtype=float32, numpy=
		  array([[[1., 0., 0.],
		          [0., 1., 0.],
		          [0., 0., 0.]],
		         [[1., 0., 0.],
		          [0., 1., 0.],
		          [0., 0., 1.]]], dtype=float32)>
		
		Note: `map_fn` should only be used if you need to map a function over the
		*rows* of a `SparseTensor`.  If you wish to map a function over the nonzero
		values, then you should use:
		
		* If the function is expressible as TensorFlow ops, use:
		  ```python
		  tf.sparse.SparseTensor(st.indices, fn(st.values), st.dense_shape)
		  ```
		* Otherwise, use:
		  ```python
		  tf.sparse.SparseTensor(st.indices, tf.map_fn(fn, st.values),
		                         st.dense_shape)
		  ```
		
		#### `map_fn` vs. vectorized operations
		
		`map_fn` will apply the operations used by `fn` to each element of `elems`,
		resulting in `O(elems.shape[0])` total operations.  This is somewhat
		mitigated by the fact that `map_fn` can process elements in parallel.
		However, a transform expressed using `map_fn` is still typically less
		efficient than an equivalent transform expressed using vectorized operations.
		
		`map_fn` should typically only be used if one of the following is true:
		
		* It is difficult or expensive to express the desired transform with
		  vectorized operations.
		* `fn` creates large intermediate values, so an equivalent vectorized
		  transform would take too much memory.
		* Processing elements in parallel is more efficient than an equivalent
		  vectorized transform.
		* Efficiency of the transform is not critical, and using `map_fn` is
		  more readable.
		
		E.g., the example given above that maps `fn=lambda t: tf.range(t, t + 3)`
		across `elems` could be rewritten more efficiently using vectorized ops:
		
		>>> elems = tf.constant([3, 5, 2])
		>>> tf.range(3) + tf.expand_dims(elems, 1)
		<tf.Tensor: shape=(3, 3), dtype=int32, numpy=
		  array([[3, 4, 5],
		         [5, 6, 7],
		         [2, 3, 4]], dtype=int32)>
		
		In some cases, `tf.vectorized_map` can be used to automatically convert a
		function to a vectorized equivalent.
		
		#### Eager execution
		
		When executing eagerly, `map_fn` does not execute in parallel even if
		`parallel_iterations` is set to a value > 1. You can still get the
		performance benefits of running a function in parallel by using the
		`tf.function` decorator:
		
		>>> fn=lambda t: tf.range(t, t + 3)
		>>> @tf.function
		... def func(elems):
		...   return tf.map_fn(fn, elems, parallel_iterations=3)
		>>> func(tf.constant([3, 5, 2]))
		<tf.Tensor: shape=(3, 3), dtype=int32, numpy=
		  array([[3, 4, 5],
		         [5, 6, 7],
		         [2, 3, 4]], dtype=int32)>
		
		
		Note: if you use the `tf.function` decorator, any non-TensorFlow Python
		code that you may have written in your function won't get executed. See
		`tf.function` for more  details. The recommendation would be to debug without
		`tf.function` but switch to it to get performance benefits of running `map_fn`
		in parallel.
		
		Args:
		  fn: The callable to be performed.  It accepts one argument, which will have
		    the same (possibly nested) structure as `elems`.  Its output must have the
		    same structure as `fn_output_signature` if one is provided; otherwise it
		    must have the same structure as `elems`.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unstacked along their first dimension.  `fn` will be applied to the
		    nested sequence of the resulting slices.  `elems` may include ragged and
		    sparse tensors. `elems` must consist of at least one tensor.
		  dtype: Deprecated: Equivalent to `fn_output_signature`.
		  parallel_iterations: (optional) The number of iterations allowed to run in
		    parallel. When graph building, the default value is 10. While executing
		    eagerly, the default value is set to 1.
		  back_prop: (optional) False disables support for back propagation.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  infer_shape: (optional) False disables tests for consistent output shapes.
		  name: (optional) Name prefix for the returned tensors.
		  fn_output_signature: The output signature of `fn`. Must be specified if
		    `fn`'s input and output signatures are different (i.e., if their
		    structures, dtypes, or tensor types do not match).
		    `fn_output_signature` can be specified using any of the following:
		
		    * A `tf.DType` or `tf.TensorSpec` (to describe a `tf.Tensor`)
		    * A `tf.RaggedTensorSpec` (to describe a `tf.RaggedTensor`)
		    * A `tf.SparseTensorSpec` (to describe a `tf.sparse.SparseTensor`)
		    * A (possibly nested) tuple, list, or dict containing the above types.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors.  Each tensor stacks the
		  results of applying `fn` to tensors unstacked from `elems` along the first
		  dimension, from first to last.  The result may include ragged and sparse
		  tensors.
		
		Raises:
		  TypeError: if `fn` is not callable or the structure of the output of
		    `fn` and `fn_output_signature` do not match.
		  ValueError: if the lengths of the output of `fn` and `fn_output_signature`
		    do not match, or if the `elems` does not contain any tensor.
		
		Examples:
		
		  >>> elems = np.array([1, 2, 3, 4, 5, 6])
		  >>> tf.map_fn(lambda x: x * x, elems)
		  <tf.Tensor: shape=(6,), dtype=int64, numpy=array([ 1,  4,  9, 16, 25, 36])>
		
		  >>> elems = (np.array([1, 2, 3]), np.array([-1, 1, -1]))
		  >>> tf.map_fn(lambda x: x[0] * x[1], elems, fn_output_signature=tf.int64)
		  <tf.Tensor: shape=(3,), dtype=int64, numpy=array([-1,  2, -3])>
		
		  >>> elems = np.array([1, 2, 3])
		  >>> tf.map_fn(lambda x: (x, -x), elems,
		  ...          fn_output_signature=(tf.int64, tf.int64))
		  (<tf.Tensor: shape=(3,), dtype=int64, numpy=array([1, 2, 3])>,
		   <tf.Tensor: shape=(3,), dtype=int64, numpy=array([-1, -2, -3])>)
	**/
	static public function map_fn(fn:Dynamic, elems:Dynamic, ?dtype:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?infer_shape:Dynamic, ?name:Dynamic, ?fn_output_signature:Dynamic):Dynamic;
	/**
		Returns the set of files matching one or more glob patterns.
		
		Note that this routine only supports wildcard characters in the
		basename portion of the pattern, not in the directory portion.
		Note also that the order of filenames returned is deterministic.
		
		Args:
		  pattern: A `Tensor` of type `string`.
		    Shell wildcard pattern(s). Scalar or vector of type string.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function matching_files(pattern:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies matrix `a` by matrix `b`, producing `a` * `b`.
		
		The inputs must, following any transpositions, be tensors of rank >= 2
		where the inner 2 dimensions specify valid matrix multiplication dimensions,
		and any further outer dimensions specify matching batch size.
		
		Both matrices must be of the same type. The supported types are:
		`bfloat16`, `float16`, `float32`, `float64`, `int32`, `int64`,
		`complex64`, `complex128`.
		
		Either matrix can be transposed or adjointed (conjugated and transposed) on
		the fly by setting one of the corresponding flag to `True`. These are `False`
		by default.
		
		If one or both of the matrices contain a lot of zeros, a more efficient
		multiplication algorithm can be used by setting the corresponding
		`a_is_sparse` or `b_is_sparse` flag to `True`. These are `False` by default.
		This optimization is only available for plain matrices (rank-2 tensors) with
		datatypes `bfloat16` or `float32`.
		
		A simple 2-D tensor matrix multiplication:
		
		>>> a = tf.constant([1, 2, 3, 4, 5, 6], shape=[2, 3])
		>>> a  # 2-D tensor
		<tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		array([[1, 2, 3],
		       [4, 5, 6]], dtype=int32)>
		>>> b = tf.constant([7, 8, 9, 10, 11, 12], shape=[3, 2])
		>>> b  # 2-D tensor
		<tf.Tensor: shape=(3, 2), dtype=int32, numpy=
		array([[ 7,  8],
		       [ 9, 10],
		       [11, 12]], dtype=int32)>
		>>> c = tf.matmul(a, b)
		>>> c  # `a` * `b`
		<tf.Tensor: shape=(2, 2), dtype=int32, numpy=
		array([[ 58,  64],
		       [139, 154]], dtype=int32)>
		
		A batch matrix multiplication with batch shape [2]:
		
		>>> a = tf.constant(np.arange(1, 13, dtype=np.int32), shape=[2, 2, 3])
		>>> a  # 3-D tensor
		<tf.Tensor: shape=(2, 2, 3), dtype=int32, numpy=
		array([[[ 1,  2,  3],
		        [ 4,  5,  6]],
		       [[ 7,  8,  9],
		        [10, 11, 12]]], dtype=int32)>
		>>> b = tf.constant(np.arange(13, 25, dtype=np.int32), shape=[2, 3, 2])
		>>> b  # 3-D tensor
		<tf.Tensor: shape=(2, 3, 2), dtype=int32, numpy=
		array([[[13, 14],
		        [15, 16],
		        [17, 18]],
		       [[19, 20],
		        [21, 22],
		        [23, 24]]], dtype=int32)>
		>>> c = tf.matmul(a, b)
		>>> c  # `a` * `b`
		<tf.Tensor: shape=(2, 2, 2), dtype=int32, numpy=
		array([[[ 94, 100],
		        [229, 244]],
		       [[508, 532],
		        [697, 730]]], dtype=int32)>
		
		Since python >= 3.5 the @ operator is supported
		(see [PEP 465](https://www.python.org/dev/peps/pep-0465/)). In TensorFlow,
		it simply calls the `tf.matmul()` function, so the following lines are
		equivalent:
		
		>>> d = a @ b @ [[10], [11]]
		>>> d = tf.matmul(tf.matmul(a, b), [[10], [11]])
		
		Args:
		  a: `tf.Tensor` of type `float16`, `float32`, `float64`, `int32`,
		    `complex64`, `complex128` and rank > 1.
		  b: `tf.Tensor` with same type and rank as `a`.
		  transpose_a: If `True`, `a` is transposed before multiplication.
		  transpose_b: If `True`, `b` is transposed before multiplication.
		  adjoint_a: If `True`, `a` is conjugated and transposed before
		    multiplication.
		  adjoint_b: If `True`, `b` is conjugated and transposed before
		    multiplication.
		  a_is_sparse: If `True`, `a` is treated as a sparse matrix. Notice, this
		    **does not support `tf.sparse.SparseTensor`**, it just makes optimizations
		    that assume most values in `a` are zero.
		    See `tf.sparse.sparse_dense_matmul`
		    for some support for `tf.sparse.SparseTensor` multiplication.
		  b_is_sparse: If `True`, `b` is treated as a sparse matrix. Notice, this
		    **does not support `tf.sparse.SparseTensor`**, it just makes optimizations
		    that assume most values in `a` are zero.
		    See `tf.sparse.sparse_dense_matmul`
		    for some support for `tf.sparse.SparseTensor` multiplication.
		  output_type: The output datatype if needed. Defaults to None in which case
		    the output_type is the same as input type. Currently only works when input
		    tensors are type (u)int8 and output_type can be int32.
		  name: Name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of the same type as `a` and `b` where each inner-most matrix
		  is the product of the corresponding matrices in `a` and `b`, e.g. if all
		  transpose or adjoint attributes are `False`:
		
		  `output[..., i, j] = sum_k (a[..., i, k] * b[..., k, j])`,
		  for all indices `i`, `j`.
		
		  Note: This is matrix product, not element-wise product.
		
		
		Raises:
		  ValueError: If `transpose_a` and `adjoint_a`, or `transpose_b` and
		    `adjoint_b` are both set to `True`.
		  TypeError: If output_type is specified but the types of `a`, `b` and
		    `output_type` is not (u)int8, (u)int8 and int32.
	**/
	static public function matmul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Copy a tensor setting everything outside a central band in each innermost matrix to zero.
		
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
		#                [-1,  0,  1, 2]
		#                [-2, -1,  0, 1]
		#                [-3, -2, -1, 0]],
		
		tf.linalg.band_part(input, 1, -1) ==> [[ 0,  1,  2, 3]
		                                       [-1,  0,  1, 2]
		                                       [ 0, -1,  0, 1]
		                                       [ 0,  0, -1, 0]],
		
		tf.linalg.band_part(input, 2, 1) ==> [[ 0,  1,  0, 0]
		                                      [-1,  0,  1, 0]
		                                      [-2, -1,  0, 1]
		                                      [ 0, -2, -1, 0]]
		```
		
		Useful special cases:
		
		```
		 tf.linalg.band_part(input, 0, -1) ==> Upper triangular part.
		 tf.linalg.band_part(input, -1, 0) ==> Lower triangular part.
		 tf.linalg.band_part(input, 0, 0) ==> Diagonal.
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
		Computes the determinant of one or more square matrices.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor containing the determinants
		for all input submatrices `[..., :, :]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_determinant(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a batched diagonal tensor with given batched diagonal values.
		
		Returns a tensor with the contents in `diagonal` as `k[0]`-th to `k[1]`-th
		diagonals of a matrix, with everything else padded with `padding`. `num_rows`
		and `num_cols` specify the dimension of the innermost matrix of the output. If
		both are not specified, the op assumes the innermost matrix is square and
		infers its size from `k` and the innermost dimension of `diagonal`. If only
		one of them is specified, the op assumes the unspecified value is the smallest
		possible based on other criteria.
		
		Let `diagonal` have `r` dimensions `[I, J, ..., L, M, N]`. The output tensor
		has rank `r+1` with shape `[I, J, ..., L, M, num_rows, num_cols]` when only
		one diagonal is given (`k` is an integer or `k[0] == k[1]`). Otherwise, it has
		rank `r` with shape `[I, J, ..., L, num_rows, num_cols]`.
		
		The second innermost dimension of `diagonal` has double meaning. When `k` is
		scalar or `k[0] == k[1]`, `M` is part of the batch size [I, J, ..., M], and
		the output tensor is:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, n-max(d_upper, 0)] ; if n - m == d_upper
		    padding_value                             ; otherwise
		```
		
		Otherwise, `M` is treated as the number of diagonals for the matrix in the
		same batch (`M = k[1]-k[0]+1`), and the output tensor is:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, diag_index, index_in_diag] ; if k[0] <= d <= k[1]
		    padding_value                                     ; otherwise
		```
		where `d = n - m`, `diag_index = k[1] - d`, and
		`index_in_diag = n - max(d, 0) + offset`.
		
		`offset` is zero except when the alignment of the diagonal is to the right.
		```
		offset = max_diag_len - diag_len(d) ; if (`align` in {RIGHT_LEFT, RIGHT_RIGHT}
		                                           and `d >= 0`) or
		                                         (`align` in {LEFT_RIGHT, RIGHT_RIGHT}
		                                           and `d <= 0`)
		         0                          ; otherwise
		```
		where `diag_len(d) = min(cols - max(d, 0), rows + min(d, 0))`.
		
		For example:
		
		```
		# The main diagonal.
		diagonal = np.array([[1, 2, 3, 4],            # Input shape: (2, 4)
		                     [5, 6, 7, 8]])
		tf.matrix_diag(diagonal) ==> [[[1, 0, 0, 0],  # Output shape: (2, 4, 4)
		                               [0, 2, 0, 0],
		                               [0, 0, 3, 0],
		                               [0, 0, 0, 4]],
		                              [[5, 0, 0, 0],
		                               [0, 6, 0, 0],
		                               [0, 0, 7, 0],
		                               [0, 0, 0, 8]]]
		
		# A superdiagonal (per batch).
		diagonal = np.array([[1, 2, 3],  # Input shape: (2, 3)
		                     [4, 5, 6]])
		tf.matrix_diag(diagonal, k = 1)
		  ==> [[[0, 1, 0, 0],  # Output shape: (2, 4, 4)
		        [0, 0, 2, 0],
		        [0, 0, 0, 3],
		        [0, 0, 0, 0]],
		       [[0, 4, 0, 0],
		        [0, 0, 5, 0],
		        [0, 0, 0, 6],
		        [0, 0, 0, 0]]]
		
		# A tridiagonal band (per batch).
		diagonals = np.array([[[8, 9, 0],  # Input shape: (2, 2, 3)
		                       [1, 2, 3],
		                       [0, 4, 5]],
		                      [[2, 3, 0],
		                       [6, 7, 9],
		                       [0, 9, 1]]])
		tf.matrix_diag(diagonals, k = (-1, 1))
		  ==> [[[1, 8, 0],  # Output shape: (2, 3, 3)
		        [4, 2, 9],
		        [0, 5, 3]],
		       [[6, 2, 0],
		        [9, 7, 3],
		        [0, 1, 9]]]
		
		# RIGHT_LEFT alignment.
		diagonals = np.array([[[0, 8, 9],  # Input shape: (2, 2, 3)
		                       [1, 2, 3],
		                       [4, 5, 0]],
		                      [[0, 2, 3],
		                       [6, 7, 9],
		                       [9, 1, 0]]])
		tf.matrix_diag(diagonals, k = (-1, 1), align="RIGHT_LEFT")
		  ==> [[[1, 8, 0],  # Output shape: (2, 3, 3)
		        [4, 2, 9],
		        [0, 5, 3]],
		       [[6, 2, 0],
		        [9, 7, 3],
		        [0, 1, 9]]]
		
		# Rectangular matrix.
		diagonal = np.array([1, 2])  # Input shape: (2)
		tf.matrix_diag(diagonal, k = -1, num_rows = 3, num_cols = 4)
		  ==> [[0, 0, 0, 0],  # Output shape: (3, 4)
		       [1, 0, 0, 0],
		       [0, 2, 0, 0]]
		
		# Rectangular matrix with inferred num_cols and padding_value = 9.
		tf.matrix_diag(diagonal, k = -1, num_rows = 3, padding_value = 9)
		  ==> [[9, 9],  # Output shape: (3, 2)
		       [1, 9],
		       [9, 2]]
		```
		
		Args:
		  diagonal: A `Tensor` with `rank k >= 1`.
		  name: A name for the operation (optional).
		  k: Diagonal offset(s). Positive value means superdiagonal, 0 refers to the
		    main diagonal, and negative value means subdiagonals. `k` can be a single
		    integer (for a single diagonal) or a pair of integers specifying the low
		    and high ends of a matrix band. `k[0]` must not be larger than `k[1]`.
		  num_rows: The number of rows of the output matrix. If it is not provided,
		    the op assumes the output matrix is a square matrix and infers the matrix
		    size from `d_lower`, `d_upper`, and the innermost dimension of `diagonal`.
		  num_cols: The number of columns of the output matrix. If it is not provided,
		    the op assumes the output matrix is a square matrix and infers the matrix
		    size from `d_lower`, `d_upper`, and the innermost dimension of `diagonal`.
		  padding_value: The value to fill the area outside the specified diagonal
		    band with. Default is 0.
		  align: Some diagonals are shorter than `max_diag_len` and need to be padded.
		    `align` is a string specifying how superdiagonals and subdiagonals should
		    be aligned, respectively. There are four possible alignments: "RIGHT_LEFT"
		    (default), "LEFT_RIGHT", "LEFT_LEFT", and "RIGHT_RIGHT". "RIGHT_LEFT"
		    aligns superdiagonals to the right (left-pads the row) and subdiagonals to
		    the left (right-pads the row). It is the packing format LAPACK uses.
		    cuSPARSE uses "LEFT_RIGHT", which is the opposite alignment.
		
		Returns:
		  A Tensor. Has the same type as `diagonal`.
	**/
	static public function matrix_diag(diagonal:Dynamic, ?name:Dynamic, ?k:Dynamic, ?num_rows:Dynamic, ?num_cols:Dynamic, ?padding_value:Dynamic, ?align:Dynamic):Dynamic;
	/**
		Returns the batched diagonal part of a batched tensor.
		
		Returns a tensor with the `k[0]`-th to `k[1]`-th diagonals of the batched
		`input`.
		
		Assume `input` has `r` dimensions `[I, J, ..., L, M, N]`.
		Let `max_diag_len` be the maximum length among all diagonals to be extracted,
		`max_diag_len = min(M + min(k[1], 0), N + min(-k[0], 0))`
		Let `num_diags` be the number of diagonals to extract,
		`num_diags = k[1] - k[0] + 1`.
		
		If `num_diags == 1`, the output tensor is of rank `r - 1` with shape
		`[I, J, ..., L, max_diag_len]` and values:
		
		```
		diagonal[i, j, ..., l, n]
		  = input[i, j, ..., l, n+y, n+x] ; if 0 <= n+y < M and 0 <= n+x < N,
		    padding_value                 ; otherwise.
		```
		where `y = max(-k[1], 0)`, `x = max(k[1], 0)`.
		
		Otherwise, the output tensor has rank `r` with dimensions
		`[I, J, ..., L, num_diags, max_diag_len]` with values:
		
		```
		diagonal[i, j, ..., l, m, n]
		  = input[i, j, ..., l, n+y, n+x] ; if 0 <= n+y < M and 0 <= n+x < N,
		    padding_value                 ; otherwise.
		```
		where `d = k[1] - m`, `y = max(-d, 0) - offset`, and `x = max(d, 0) - offset`.
		
		`offset` is zero except when the alignment of the diagonal is to the right.
		```
		offset = max_diag_len - diag_len(d) ; if (`align` in {RIGHT_LEFT, RIGHT_RIGHT}
		                                           and `d >= 0`) or
		                                         (`align` in {LEFT_RIGHT, RIGHT_RIGHT}
		                                           and `d <= 0`)
		         0                          ; otherwise
		```
		where `diag_len(d) = min(cols - max(d, 0), rows + min(d, 0))`.
		
		The input must be at least a matrix.
		
		For example:
		
		```
		input = np.array([[[1, 2, 3, 4],  # Input shape: (2, 3, 4)
		                   [5, 6, 7, 8],
		                   [9, 8, 7, 6]],
		                  [[5, 4, 3, 2],
		                   [1, 2, 3, 4],
		                   [5, 6, 7, 8]]])
		
		# A main diagonal from each batch.
		tf.linalg.diag_part(input) ==> [[1, 6, 7],  # Output shape: (2, 3)
		                                [5, 2, 7]]
		
		# A superdiagonal from each batch.
		tf.linalg.diag_part(input, k = 1)
		  ==> [[2, 7, 6],  # Output shape: (2, 3)
		       [4, 3, 8]]
		
		# A band from each batch.
		tf.linalg.diag_part(input, k = (-1, 2))
		  ==> [[[3, 8, 0],  # Output shape: (2, 4, 3)
		        [2, 7, 6],
		        [1, 6, 7],
		        [0, 5, 8]],
		       [[3, 4, 0],
		        [4, 3, 8],
		        [5, 2, 7],
		        [0, 1, 6]]]
		
		# RIGHT_LEFT alignment.
		tf.linalg.diag_part(input, k = (-1, 2), align="RIGHT_LEFT")
		  ==> [[[0, 3, 8],  # Output shape: (2, 4, 3)
		        [2, 7, 6],
		        [1, 6, 7],
		        [5, 8, 0]],
		       [[0, 3, 4],
		        [4, 3, 8],
		        [5, 2, 7],
		        [1, 6, 0]]]
		
		# max_diag_len can be shorter than the main diagonal.
		tf.linalg.diag_part(input, k = (-2, -1))
		  ==> [[[5, 8],
		        [0, 9]],
		       [[1, 6],
		        [0, 5]]]
		
		# padding_value = 9
		tf.linalg.diag_part(input, k = (1, 3), padding_value = 9)
		  ==> [[[4, 9, 9],  # Output shape: (2, 3, 3)
		        [3, 8, 9],
		        [2, 7, 6]],
		       [[2, 9, 9],
		        [3, 4, 9],
		        [4, 3, 8]]]
		
		```
		
		Args:
		  input: A `Tensor` with `rank k >= 2`.
		  name: A name for the operation (optional).
		  k: Diagonal offset(s). Positive value means superdiagonal, 0 refers to the
		    main diagonal, and negative value means subdiagonals. `k` can be a single
		    integer (for a single diagonal) or a pair of integers specifying the low
		    and high ends of a matrix band. `k[0]` must not be larger than `k[1]`.
		  padding_value: The value to fill the area outside the specified diagonal
		    band with. Default is 0.
		  align: Some diagonals are shorter than `max_diag_len` and need to be padded.
		    `align` is a string specifying how superdiagonals and subdiagonals should
		    be aligned, respectively. There are four possible alignments: "RIGHT_LEFT"
		    (default), "LEFT_RIGHT", "LEFT_LEFT", and "RIGHT_RIGHT". "RIGHT_LEFT"
		    aligns superdiagonals to the right (left-pads the row) and subdiagonals to
		    the left (right-pads the row). It is the packing format LAPACK uses.
		    cuSPARSE uses "LEFT_RIGHT", which is the opposite alignment.
		
		Returns:
		  A Tensor containing diagonals of `input`. Has the same type as `input`.
		
		Raises:
		  InvalidArgumentError: When `k` is out of bound or when `k[0]>k[1:]`.
	**/
	static public function matrix_diag_part(input:Dynamic, ?name:Dynamic, ?k:Dynamic, ?padding_value:Dynamic, ?align:Dynamic):Dynamic;
	/**
		Computes the inverse of one or more square invertible matrices or their adjoints (conjugate transposes).
		
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor of the same shape as the input
		containing the inverse for all input submatrices `[..., :, :]`.
		
		The op uses LU decomposition with partial pivoting to compute the inverses.
		
		If a matrix is not invertible there is no guarantee what the op does. It
		may detect the condition and raise an exception or it may simply return a
		garbage result.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_inverse(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a batched matrix tensor with new batched diagonal values.
		
		Given `input` and `diagonal`, this operation returns a tensor with the
		same shape and values as `input`, except for the specified diagonals of the
		innermost matrices. These will be overwritten by the values in `diagonal`.
		
		`input` has `r+1` dimensions `[I, J, ..., L, M, N]`. When `k` is scalar or
		`k[0] == k[1]`, `diagonal` has `r` dimensions `[I, J, ..., L, max_diag_len]`.
		Otherwise, it has `r+1` dimensions `[I, J, ..., L, num_diags, max_diag_len]`.
		`num_diags` is the number of diagonals, `num_diags = k[1] - k[0] + 1`.
		`max_diag_len` is the longest diagonal in the range `[k[0], k[1]]`,
		`max_diag_len = min(M + min(k[1], 0), N + min(-k[0], 0))`
		
		The output is a tensor of rank `k+1` with dimensions `[I, J, ..., L, M, N]`.
		If `k` is scalar or `k[0] == k[1]`:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, n-max(k[1], 0)] ; if n - m == k[1]
		    input[i, j, ..., l, m, n]              ; otherwise
		```
		
		Otherwise,
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, diag_index, index_in_diag] ; if k[0] <= d <= k[1]
		    input[i, j, ..., l, m, n]                         ; otherwise
		```
		where `d = n - m`, `diag_index = k[1] - d`, and
		`index_in_diag = n - max(d, 0) + offset`.
		
		`offset` is zero except when the alignment of the diagonal is to the right.
		```
		offset = max_diag_len - diag_len(d) ; if (`align` in {RIGHT_LEFT, RIGHT_RIGHT}
		                                           and `d >= 0`) or
		                                         (`align` in {LEFT_RIGHT, RIGHT_RIGHT}
		                                           and `d <= 0`)
		         0                          ; otherwise
		```
		where `diag_len(d) = min(cols - max(d, 0), rows + min(d, 0))`.
		
		For example:
		
		```
		# The main diagonal.
		input = np.array([[[7, 7, 7, 7],              # Input shape: (2, 3, 4)
		                   [7, 7, 7, 7],
		                   [7, 7, 7, 7]],
		                  [[7, 7, 7, 7],
		                   [7, 7, 7, 7],
		                   [7, 7, 7, 7]]])
		diagonal = np.array([[1, 2, 3],               # Diagonal shape: (2, 3)
		                     [4, 5, 6]])
		tf.matrix_set_diag(input, diagonal)
		  ==> [[[1, 7, 7, 7],  # Output shape: (2, 3, 4)
		        [7, 2, 7, 7],
		        [7, 7, 3, 7]],
		       [[4, 7, 7, 7],
		        [7, 5, 7, 7],
		        [7, 7, 6, 7]]]
		
		# A superdiagonal (per batch).
		tf.matrix_set_diag(input, diagonal, k = 1)
		  ==> [[[7, 1, 7, 7],  # Output shape: (2, 3, 4)
		        [7, 7, 2, 7],
		        [7, 7, 7, 3]],
		       [[7, 4, 7, 7],
		        [7, 7, 5, 7],
		        [7, 7, 7, 6]]]
		
		# A band of diagonals.
		diagonals = np.array([[[9, 1, 0],  # Diagonal shape: (2, 4, 3)
		                       [6, 5, 8],
		                       [1, 2, 3],
		                       [0, 4, 5]],
		                      [[1, 2, 0],
		                       [5, 6, 4],
		                       [6, 1, 2],
		                       [0, 3, 4]]])
		tf.matrix_set_diag(input, diagonals, k = (-1, 2))
		  ==> [[[1, 6, 9, 7],  # Output shape: (2, 3, 4)
		        [4, 2, 5, 1],
		        [7, 5, 3, 8]],
		       [[6, 5, 1, 7],
		        [3, 1, 6, 2],
		        [7, 4, 2, 4]]]
		
		# RIGHT_LEFT alignment.
		diagonals = np.array([[[0, 9, 1],  # Diagonal shape: (2, 4, 3)
		                       [6, 5, 8],
		                       [1, 2, 3],
		                       [4, 5, 0]],
		                      [[0, 1, 2],
		                       [5, 6, 4],
		                       [6, 1, 2],
		                       [3, 4, 0]]])
		tf.matrix_set_diag(input, diagonals, k = (-1, 2), align="RIGHT_LEFT")
		  ==> [[[1, 6, 9, 7],  # Output shape: (2, 3, 4)
		        [4, 2, 5, 1],
		        [7, 5, 3, 8]],
		       [[6, 5, 1, 7],
		        [3, 1, 6, 2],
		        [7, 4, 2, 4]]]
		
		```
		
		Args:
		  input: A `Tensor` with rank `k + 1`, where `k >= 1`.
		  diagonal:  A `Tensor` with rank `k`, when `d_lower == d_upper`, or `k + 1`,
		    otherwise. `k >= 1`.
		  name: A name for the operation (optional).
		  k: Diagonal offset(s). Positive value means superdiagonal, 0 refers to the
		    main diagonal, and negative value means subdiagonals. `k` can be a single
		    integer (for a single diagonal) or a pair of integers specifying the low
		    and high ends of a matrix band. `k[0]` must not be larger than `k[1]`.
		  align: Some diagonals are shorter than `max_diag_len` and need to be padded.
		    `align` is a string specifying how superdiagonals and subdiagonals should
		    be aligned, respectively. There are four possible alignments: "RIGHT_LEFT"
		    (default), "LEFT_RIGHT", "LEFT_LEFT", and "RIGHT_RIGHT". "RIGHT_LEFT"
		    aligns superdiagonals to the right (left-pads the row) and subdiagonals to
		    the left (right-pads the row). It is the packing format LAPACK uses.
		    cuSPARSE uses "LEFT_RIGHT", which is the opposite alignment.
	**/
	static public function matrix_set_diag(input:Dynamic, diagonal:Dynamic, ?name:Dynamic, ?k:Dynamic, ?align:Dynamic):Dynamic;
	/**
		Solves systems of linear equations.
		
		`Matrix` is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. `Rhs` is a tensor of shape `[..., M, K]`. The `output` is
		a tensor shape `[..., M, K]`.  If `adjoint` is `False` then each output matrix
		satisfies `matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]`.
		If `adjoint` is `True` then each output matrix satisfies
		`adjoint(matrix[..., :, :]) * output[..., :, :] = rhs[..., :, :]`.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
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
		Computes the matrix square root of one or more square matrices:
		
		matmul(sqrtm(A), sqrtm(A)) = A
		
		The input matrix should be invertible. If the input matrix is real, it should
		have no eigenvalues which are real and negative (pairs of complex conjugate
		eigenvalues are allowed).
		
		The matrix square root is computed by first reducing the matrix to
		quasi-triangular form with the real Schur decomposition. The square root
		of the quasi-triangular matrix is then computed directly. Details of
		the algorithm can be found in: Nicholas J. Higham, "Computing real
		square roots of a real matrix", Linear Algebra Appl., 1987.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor of the same shape as the input
		containing the matrix square root for all input submatrices `[..., :, :]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_square_root(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transposes last two dimensions of tensor `a`.
		
		For example:
		
		```python
		x = tf.constant([[1, 2, 3], [4, 5, 6]])
		tf.linalg.matrix_transpose(x)  # [[1, 4],
		                               #  [2, 5],
		                               #  [3, 6]]
		
		x = tf.constant([[1 + 1j, 2 + 2j, 3 + 3j],
		                 [4 + 4j, 5 + 5j, 6 + 6j]])
		tf.linalg.matrix_transpose(x, conjugate=True)  # [[1 - 1j, 4 - 4j],
		                                               #  [2 - 2j, 5 - 5j],
		                                               #  [3 - 3j, 6 - 6j]]
		
		# Matrix with two batch dimensions.
		# x.shape is [1, 2, 3, 4]
		# tf.linalg.matrix_transpose(x) is shape [1, 2, 4, 3]
		```
		
		Note that `tf.matmul` provides kwargs allowing for transpose of arguments.
		This is done with minimal cost, and is preferable to using this function. E.g.
		
		```python
		# Good!  Transpose is taken at minimal additional cost.
		tf.matmul(matrix, b, transpose_b=True)
		
		# Inefficient!
		tf.matmul(matrix, tf.linalg.matrix_transpose(b))
		```
		
		@compatibility(numpy)
		In `numpy` transposes are memory-efficient constant time operations as they
		simply return a new view of the same data with adjusted `strides`.
		
		TensorFlow does not support strides, `linalg.matrix_transpose` returns a new
		tensor with the items permuted.
		@end_compatibility
		
		Args:
		  a: A `Tensor` with `rank >= 2`.
		  name: A name for the operation (optional).
		  conjugate: Optional bool. Setting it to `True` is mathematically equivalent
		    to tf.math.conj(tf.linalg.matrix_transpose(input)).
		
		Returns:
		  A transposed batch matrix `Tensor`.
		
		Raises:
		  ValueError:  If `a` is determined statically to have `rank < 2`.
	**/
	static public function matrix_transpose(a:Dynamic, ?name:Dynamic, ?conjugate:Dynamic):Dynamic;
	/**
		Solve systems of linear equations with upper or lower triangular matrices.
		
		`matrix` is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions form
		square matrices. If `lower` is `True` then the strictly upper triangular part
		of each inner-most matrix is assumed to be zero and not accessed. If `lower`
		is `False` then the strictly lower triangular part of each inner-most matrix
		is assumed to be zero and not accessed. `rhs` is a tensor of shape
		`[..., M, N]`.
		
		The output is a tensor of shape `[..., M, N]`. If `adjoint` is `True` then the
		innermost matrices in output satisfy matrix equations `
		sum_k matrix[..., i, k] * output[..., k, j] = rhs[..., i, j]`.
		If `adjoint` is `False` then the
		innermost matrices in output satisfy matrix equations
		`sum_k adjoint(matrix[..., i, k]) * output[..., k, j] = rhs[..., i, j]`.
		
		Example:
		
		>>> a = tf.constant([[3,  0,  0,  0],
		...   [2,  1,  0,  0],
		...   [1,  0,  1,  0],
		...   [1,  1,  1,  1]], dtype=tf.float32)
		
		>>> b = tf.constant([[4], [2], [4], [2]], dtype=tf.float32)
		>>> x = tf.linalg.triangular_solve(a, b, lower=True)
		>>> x
		<tf.Tensor: shape=(4, 1), dtype=float32, numpy=
		array([[ 1.3333334 ],
		       [-0.66666675],
		       [ 2.6666665 ],
		       [-1.3333331 ]], dtype=float32)>
		>>> tf.matmul(a, x)
		<tf.Tensor: shape=(4, 1), dtype=float32, numpy=
		array([[4.],
		       [2.],
		       [4.],
		       [2.]], dtype=float32)>
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`,
		    `float32`, `half`, `complex64`, `complex128`. Shape is `[..., M, M]`.
		  rhs: A `Tensor`. Must have the same type as `matrix`. Shape is `[..., M,
		    N]`.
		  lower: An optional `bool`. Defaults to `True`. Boolean indicating whether
		    the innermost matrices in matrix are lower or upper triangular.
		  adjoint: An optional `bool`. Defaults to `False`. Boolean indicating whether
		    to solve with matrix or its (block-wise) adjoint.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as matrix, and shape is `[..., M, N]`.
	**/
	static public function matrix_triangular_solve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the max of x and y (i.e. x > y ? x : y) element-wise.
		
		Example:
		
		>>> x = tf.constant([0., 0., 0., 0.])
		>>> y = tf.constant([-2., 0., 2., 5.])
		>>> tf.math.maximum(x, y)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=array([0., 0., 2., 5.], dtype=float32)>
		
		Note that `maximum` supports [broadcast semantics](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) for `x` and `y`.
		
		>>> x = tf.constant([-5., 0., 0., 0.])
		>>> y = tf.constant([-3.])
		>>> tf.math.maximum(x, y)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=array([-3., 0., 0., 0.], dtype=float32)>
		
		The reduction version of this elementwise operation is `tf.math.reduce_max`
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `uint8`, `int16`, `uint16`, `int32`, `uint32`, `int64`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function maximum(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
		  `variable_scope` and `get_variable`.
	**/
	static public function min_max_variable_partitioner(?max_partitions:Dynamic, ?axis:Dynamic, ?min_slice_size:Dynamic, ?bytes_per_string_element:Dynamic):Dynamic;
	/**
		Returns the min of x and y (i.e. x < y ? x : y) element-wise.
		
		Both inputs are number-type tensors (except complex).  `minimum` expects that
		both tensors have the same `dtype`.
		
		Examples:
		
		>>> x = tf.constant([0., 0., 0., 0.])
		>>> y = tf.constant([-5., -2., 0., 3.])
		>>> tf.math.minimum(x, y)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=array([-5., -2., 0., 0.], dtype=float32)>
		
		Note that `minimum` supports [broadcast semantics](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) for `x` and `y`.
		
		>>> x = tf.constant([-5., 0., 0., 0.])
		>>> y = tf.constant([-3.])
		>>> tf.math.minimum(x, y)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=array([-5., -3., -3., -3.], dtype=float32)>
		
		The reduction version of this elementwise operation is `tf.math.reduce_min`
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `uint8`, `int16`, `uint16`, `int32`, `uint32`, `int64`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function minimum(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns element-wise remainder of division. When `x < 0` xor `y < 0` is
		
		true, this follows Python semantics in that the result here is consistent
		with a flooring divide. E.g. `floor(x / y) * y + mod(x, y) = x`.
		
		*NOTE*: `math.floormod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`, `bfloat16`, `half`, `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function mod(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns all variables in the MODEL_VARIABLES collection.
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered to
		    include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a scope
		    is supplied. The choice of `re.match` means that a `scope` without special
		    tokens filters by prefix.
		
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
		  scope: (Optional.) A string. If supplied, the resulting list is filtered to
		    include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a scope
		    is supplied. The choice of `re.match` means that a `scope` without special
		    tokens filters by prefix.
		
		Returns:
		  A list of Variable objects.
	**/
	static public function moving_average_variables(?scope:Dynamic):Dynamic;
	/**
		Draws samples from a multinomial distribution. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.random.categorical` instead.
		
		Example:
		
		```python
		# samples has shape [1, 5], where each value is either 0 or 1 with equal
		# probability.
		samples = tf.random.categorical(tf.math.log([[0.5, 0.5]]), 5)
		```
		
		Args:
		  logits: 2-D Tensor with shape `[batch_size, num_classes]`.  Each slice
		    `[i, :]` represents the unnormalized log-probabilities for all classes.
		  num_samples: 0-D.  Number of independent samples to draw for each row slice.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See `tf.random.set_seed` for behavior.
		  name: Optional name for the operation.
		  output_dtype: integer type to use for the output. Defaults to int64.
		
		Returns:
		  The drawn samples of shape `[batch_size, num_samples]`.
	**/
	static public function multinomial(logits:Dynamic, num_samples:Dynamic, ?seed:Dynamic, ?name:Dynamic, ?output_dtype:Dynamic):Dynamic;
	/**
		Returns an element-wise x * y.
		
		For example:
		
		>>> x = tf.constant(([1, 2, 3, 4]))
		>>> tf.math.multiply(x, x)
		<tf.Tensor: shape=(4,), dtype=..., numpy=array([ 1,  4,  9, 16], dtype=int32)>
		
		Since `tf.math.multiply` will convert its arguments to `Tensor`s, you can also
		pass in non-`Tensor` arguments:
		
		>>> tf.math.multiply(7,6)
		<tf.Tensor: shape=(), dtype=int32, numpy=42>
		
		If `x.shape` is not the same as `y.shape`, they will be broadcast to a
		compatible shape. (More about broadcasting
		[here](https://docs.scipy.org/doc/numpy/user/basics.broadcasting.html).)
		
		For example:
		
		>>> x = tf.ones([1, 2]);
		>>> y = tf.ones([2, 1]);
		>>> x * y  # Taking advantage of operator overriding
		<tf.Tensor: shape=(2, 2), dtype=float32, numpy=
		array([[1., 1.],
		     [1., 1.]], dtype=float32)>
		
		The reduction version of this elementwise operation is `tf.math.reduce_prod`
		
		Args:
		  x: A Tensor. Must be one of the following types: `bfloat16`,
		    `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`,
		    `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		
		A `Tensor`.  Has the same type as `x`.
		
		Raises:
		
		 * InvalidArgumentError: When `x` and `y` have incompatible shapes or types.
	**/
	static public function multiply(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes numerical negative value element-wise.
		
		I.e., \\(y = -x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.negative(x.values, ...), x.dense_shape)`
	**/
	static public function negative(x:Dynamic, ?name:Dynamic):Dynamic;
	static public var newaxis : Dynamic;
	/**
		Specifies that ops of type `op_type` is not differentiable.
		
		This function should *not* be used for operations that have a
		well-defined gradient that is not yet implemented.
		
		This function is only used when defining a new op type. It may be
		used for ops such as `tf.size()` that are not differentiable.  For
		example:
		
		```python
		tf.no_gradient("Size")
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
	static public function no_gradient(op_type:Dynamic):Dynamic;
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
		Batches the computation done by the decorated function.
		
		So, for example, in the following code
		
		```python
		@batch_function(1, 2, 3)
		def layer(a):
		  return tf.matmul(a, a)
		
		b = layer(w)
		```
		
		if more than one session.run call is simultaneously trying to compute `b`
		the values of `w` will be gathered, non-deterministically concatenated
		along the first axis, and only one thread will run the computation. See the
		documentation of the `Batch` op for more details.
		
		Assumes that all arguments of the decorated function are Tensors which will
		be batched along their first dimension.
		
		SparseTensor is not supported. The return value of the decorated function
		must be a Tensor or a list/tuple of Tensors.
		
		Args:
		  num_batch_threads: Number of scheduling threads for processing batches
		   of work. Determines the number of batches processed in parallel.
		  max_batch_size: Batch sizes will never be bigger than this.
		  batch_timeout_micros: Maximum number of microseconds to wait before
		   outputting an incomplete batch.
		  allowed_batch_sizes: Optional list of allowed batch sizes. If left empty,
		   does nothing. Otherwise, supplies a list of batch sizes, causing the op
		   to pad batches up to one of those sizes. The entries must increase
		   monotonically, and the final entry must equal max_batch_size.
		  max_enqueued_batches: The maximum depth of the batch queue. Defaults to 10.
		  autograph: Whether to use autograph to compile python and eager style code
		   for efficient graph-mode execution.
		  enable_large_batch_splitting: The value of this option doesn't affect
		   processing output given the same input; it affects implementation details
		   as stated below: 1. Improve batching efficiency by eliminating unnecessary
		   adding. 2.`max_batch_size` specifies the limit of input and
		   `allowed_batch_sizes` specifies the limit of a task to be processed. API
		   user can give an input of size 128 when 'max_execution_batch_size'
		   is 32 -> implementation can split input of 128 into 4 x 32, schedule
		   concurrent processing, and then return concatenated results corresponding
		   to 128.
		
		Returns:
		  The decorated function will return the unbatched computation output Tensors.
	**/
	static public function nondifferentiable_batch_function(num_batch_threads:Dynamic, max_batch_size:Dynamic, batch_timeout_micros:Dynamic, ?allowed_batch_sizes:Dynamic, ?max_enqueued_batches:Dynamic, ?autograph:Dynamic, ?enable_large_batch_splitting:Dynamic):Dynamic;
	/**
		Computes the norm of vectors, matrices, and tensors. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
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
		
		Performs a [broadcast](
		https://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) with the
		arguments and then an element-wise inequality comparison, returning a Tensor
		of boolean values.
		
		For example:
		
		>>> x = tf.constant([2, 4])
		>>> y = tf.constant(2)
		>>> tf.math.not_equal(x, y)
		<tf.Tensor: shape=(2,), dtype=bool, numpy=array([False,  True])>
		
		>>> x = tf.constant([2, 4])
		>>> y = tf.constant([2, 4])
		>>> tf.math.not_equal(x, y)
		<tf.Tensor: shape=(2,), dtype=bool, numpy=array([False,  False])>
		
		Args:
		  x: A `tf.Tensor` or `tf.sparse.SparseTensor` or `tf.IndexedSlices`.
		  y: A `tf.Tensor` or `tf.sparse.SparseTensor` or `tf.IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of type bool with the same size as that of x or y.
		
		Raises:
		  `tf.errors.InvalidArgumentError`: If shapes of arguments are incompatible
	**/
	static public function not_equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps a python function and uses it as a TensorFlow op.
		
		Given a python function `func` wrap this function as an operation in a
		TensorFlow function. `func` must take numpy arrays as its arguments and
		return numpy arrays as its outputs.
		
		The following example creates a TensorFlow graph with `np.sinh()` as an
		operation in the graph:
		
		>>> def my_numpy_func(x):
		...   # x will be a numpy array with the contents of the input to the
		...   # tf.function
		...   return np.sinh(x)
		>>> @tf.function(input_signature=[tf.TensorSpec(None, tf.float32)])
		... def tf_function(input):
		...   y = tf.numpy_function(my_numpy_func, [input], tf.float32)
		...   return y * y
		>>> tf_function(tf.constant(1.))
		<tf.Tensor: shape=(), dtype=float32, numpy=1.3810978>
		
		Comparison to `tf.py_function`:
		`tf.py_function` and `tf.numpy_function` are very similar, except that
		`tf.numpy_function` takes numpy arrays, and not `tf.Tensor`s. If you want the
		function to contain `tf.Tensors`, and have any TensorFlow operations executed
		in the function be differentiable, please use `tf.py_function`.
		
		Note: The `tf.numpy_function` operation has the following known
		limitations:
		
		* The body of the function (i.e. `func`) will not be serialized in a
		  `tf.SavedModel`. Therefore, you should not use this function if you need to
		  serialize your model and restore it in a different environment.
		
		* The operation must run in the same address space as the Python program
		  that calls `tf.numpy_function()`. If you are using distributed
		  TensorFlow, you must run a `tf.distribute.Server` in the same process as the
		  program that calls `tf.numpy_function`  you must pin the created
		  operation to a device in that server (e.g. using `with tf.device():`).
		
		* Since the function takes numpy arrays, you cannot take gradients
		  through a numpy_function. If you require something that is differentiable,
		  please consider using tf.py_function.
		
		* The resulting function is assumed stateful and will never be optimized.
		
		Args:
		  func: A Python function, which accepts `numpy.ndarray` objects as arguments
		    and returns a list of `numpy.ndarray` objects (or a single
		    `numpy.ndarray`). This function must accept as many arguments as there are
		    tensors in `inp`, and these argument types will match the corresponding
		    `tf.Tensor` objects in `inp`. The returns `numpy.ndarray`s must match the
		    number and types defined `Tout`.
		    Important Note: Input and output `numpy.ndarray`s of `func` are not
		      guaranteed to be copies. In some cases their underlying memory will be
		      shared with the corresponding TensorFlow tensors. In-place modification
		      or storing `func` input or return values in python datastructures
		      without explicit (np.)copy can have non-deterministic consequences.
		  inp: A list of `tf.Tensor` objects.
		  Tout: A list or tuple of tensorflow data types or a single tensorflow data
		    type if there is only one, indicating what `func` returns.
		  name: (Optional) A name for the operation.
		
		Returns:
		  Single or list of `tf.Tensor` which `func` computes.
	**/
	static public function numpy_function(func:Dynamic, inp:Dynamic, Tout:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a one-hot tensor.
		
		See also `tf.fill`, `tf.eye`.
		
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
		
		If `indices` is a RaggedTensor, the 'axis' argument must be positive and refer
		to a non-ragged axis. The output will be equivalent to applying 'one_hot' on
		the values of the RaggedTensor, and creating a new RaggedTensor from the
		result.
		
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
		
		indices = tf.ragged.constant([[0, 1], [2]])
		depth = 3
		tf.one_hot(indices, depth)  # output: [2 x None x 3]
		# [[[1., 0., 0.],
		#   [0., 1., 0.]],
		#  [[0., 0., 1.]]]
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
		Creates a tensor with all elements set to one (1).
		
		See also `tf.ones_like`, `tf.zeros`, `tf.fill`, `tf.eye`.
		
		This operation returns a tensor of type `dtype` with shape `shape` and
		all elements set to one.
		
		>>> tf.ones([3, 4], tf.int32)
		<tf.Tensor: shape=(3, 4), dtype=int32, numpy=
		array([[1, 1, 1, 1],
		       [1, 1, 1, 1],
		       [1, 1, 1, 1]], dtype=int32)>
		
		Args:
		  shape: A `list` of integers, a `tuple` of integers, or
		    a 1-D `Tensor` of type `int32`.
		  dtype: Optional DType of an element in the resulting `Tensor`. Default is
		    `tf.float32`.
		  name: Optional string. A name for the operation.
		
		Returns:
		  A `Tensor` with all elements set to one (1).
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to 1.
		
		See also `tf.ones`.
		
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
		    `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`, `complex64`,
		    `complex128` or `bool`.
		  name: A name for the operation (optional).
		  optimize: if true, attempt to statically determine the shape of 'tensor' and
		    encode it as a constant.
		
		Returns:
		  A `Tensor` with all elements set to 1.
	**/
	static public function ones_like(tensor:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?optimize:Dynamic):Dynamic;
	/**
		DEPRECATED. Same as name_scope above, just different argument order.
	**/
	static public function op_scope(values:Dynamic, name:Dynamic, ?default_name:Dynamic):Dynamic;
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
		
		@compatibility(eager)
		parallel_stack is not compatible with eager execution.
		@end_compatibility
		
		Args:
		  values: A list of `Tensor` objects with the same shape and type.
		  name: A name for this operation (optional).
		
		Returns:
		  output: A stacked `Tensor` with the same type as `values`.
		
		Raises:
		  RuntimeError: if executed in eager mode.
	**/
	static public function parallel_stack(values:Dynamic, ?name:Dynamic):Dynamic;
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
		`SparseTensor`, and `RaggedTensor` objects. `features` is a dict from keys to
		`VarLenFeature`, `SparseFeature`, `RaggedFeature`, and `FixedLenFeature`
		objects. Each `VarLenFeature` and `SparseFeature` is mapped to a
		`SparseTensor`; each `FixedLenFeature` is mapped to a `Tensor`; and each
		`RaggedFeature` is mapped to a `RaggedTensor`.
		
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
		
		Each `RaggedFeature` maps to a `RaggedTensor` of the specified type.  It
		is formed by stacking the `RaggedTensor` for each example, where the
		`RaggedTensor` for each individual example is constructed using the tensors
		specified by `RaggedTensor.values_key` and `RaggedTensor.partition`.  See
		the `tf.io.RaggedFeature` documentation for details and examples.
		
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
		
		See the `tf.io.RaggedFeature` documentation for examples showing how
		`RaggedFeature` can be used to obtain `RaggedTensor`s.
		
		Args:
		  serialized: A vector (1-D Tensor) of strings, a batch of binary
		    serialized `Example` protos.
		  features: A `dict` mapping feature keys to `FixedLenFeature`,
		    `VarLenFeature`, `SparseFeature`, and `RaggedFeature` values.
		  example_names: A vector (1-D Tensor) of strings (optional), the names of
		    the serialized protos in the batch.
		  name: A name for this operation (optional).
		
		Returns:
		  A `dict` mapping feature keys to `Tensor`, `SparseTensor`, and
		  `RaggedTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_example(serialized:Dynamic, features:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
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
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  name: A name for this operation (optional).
		  example_names: (Optional) A scalar string Tensor, the associated name.
		
		Returns:
		  A `dict` mapping feature keys to `Tensor` and `SparseTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_single_example(serialized:Dynamic, features:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
	/**
		Parses a single `SequenceExample` proto.
		
		Parses a single serialized [`SequenceExample`](https://www.tensorflow.org/code/tensorflow/core/example/example.proto)
		proto given in `serialized`.
		
		This op parses a serialized sequence example into a tuple of dictionaries,
		each mapping keys to `Tensor` and `SparseTensor` objects.
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
		
		`context_features` contains `VarLenFeature`, `RaggedFeature`, and
		`FixedLenFeature` objects. Each `VarLenFeature` is mapped to a `SparseTensor`;
		each `RaggedFeature` is mapped to a `RaggedTensor`; and each `FixedLenFeature`
		is mapped to a `Tensor`, of the specified type, shape, and default value.
		
		`sequence_features` contains `VarLenFeature`, `RaggedFeature`, and
		`FixedLenSequenceFeature` objects. Each `VarLenFeature` is mapped to a
		`SparseTensor`; each `RaggedFeature` is mapped to a `RaggedTensor`; and each
		`FixedLenSequenceFeature` is mapped to a `Tensor`, each of the specified type.
		The shape will be `(T,) + df.dense_shape` for `FixedLenSequenceFeature` `df`,
		where `T` is the length of the associated `FeatureList` in the
		`SequenceExample`. For instance, `FixedLenSequenceFeature([])` yields a scalar
		1-D `Tensor` of static shape `[None]` and dynamic shape `[T]`, while
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
		
		Note that the batch version of this function, `tf.parse_sequence_example`,
		is written for better memory efficiency and will be faster on large
		`SequenceExample`s.
		
		Args:
		  serialized: A scalar (0-D Tensor) of type string, a single binary
		    serialized `SequenceExample` proto.
		  context_features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` or `RaggedFeature` values. These features are associated
		    with a `SequenceExample` as a whole.
		  sequence_features: A `dict` mapping feature keys to
		    `FixedLenSequenceFeature` or `VarLenFeature` or `RaggedFeature` values.
		    These features are associated with data within the `FeatureList` section
		    of the `SequenceExample` proto.
		  example_name: A scalar (0-D Tensor) of strings (optional), the name of
		    the serialized proto.
		  name: A name for this operation (optional).
		
		Returns:
		  A tuple of two `dict`s, each mapping keys to `Tensor`s and `SparseTensor`s
		  and `RaggedTensor`s.
		
		  * The first dict contains the context key/values.
		  * The second dict contains the feature_list key/values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_single_sequence_example(serialized:Dynamic, ?context_features:Dynamic, ?sequence_features:Dynamic, ?example_name:Dynamic, ?name:Dynamic):Dynamic;
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
		Inserts a placeholder for a tensor that will be always fed.
		
		**Important**: This tensor will produce an error if evaluated. Its value must
		be fed using the `feed_dict` optional argument to `Session.run()`,
		`Tensor.eval()`, or `Operation.run()`.
		
		For example:
		
		```python
		x = tf.compat.v1.placeholder(tf.float32, shape=(1024, 1024))
		y = tf.matmul(x, x)
		
		with tf.compat.v1.Session() as sess:
		  print(sess.run(y))  # ERROR: will fail because x was not fed.
		
		  rand_array = np.random.rand(1024, 1024)
		  print(sess.run(y, feed_dict={x: rand_array}))  # Will succeed.
		```
		
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
		
		@compatibility(TF2)
		This API is not compatible with eager execution and `tf.function`. To migrate
		to TF2, rewrite the code to be compatible with eager execution. Check the
		[migration
		guide](https://www.tensorflow.org/guide/migrate#1_replace_v1sessionrun_calls)
		on replacing `Session.run` calls. In TF2, you can just pass tensors directly
		into ops and layers. If you want to explicitly set up your inputs, also see
		[Keras functional API](https://www.tensorflow.org/guide/keras/functional) on
		how to use `tf.keras.Input` to replace `tf.compat.v1.placeholder`.
		`tf.function` arguments also do the job of `tf.compat.v1.placeholder`.
		For more details please read [Better
		performance with tf.function](https://www.tensorflow.org/guide/function).
		@end_compatibility
	**/
	static public function placeholder(dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A placeholder op that passes through `input` when its output is not fed.
		
		@compatibility(TF2)
		This API is strongly discouraged for use with eager execution and
		`tf.function`. The primary use of this API is for testing computation wrapped
		within a `tf.function` where the input tensors might not have statically known
		fully-defined shapes. The same can be achieved by creating a
		[concrete function](
		https://www.tensorflow.org/guide/function#obtaining_concrete_functions)
		from the `tf.function` with a `tf.TensorSpec` input which has partially
		defined shapes. For example, the code
		
		>>> @tf.function
		... def f():
		...   x = tf.compat.v1.placeholder_with_default(
		...       tf.constant([[1., 2., 3.], [4., 5., 6.]]), [None, 3])
		...   y = tf.constant([[1.],[2.], [3.]])
		...   z = tf.matmul(x, y)
		...   assert z.shape[0] == None
		...   assert z.shape[1] == 1
		
		>>> f()
		
		can easily be replaced by
		
		>>> @tf.function
		... def f(x):
		...   y = tf.constant([[1.],[2.], [3.]])
		...   z = tf.matmul(x, y)
		...   assert z.shape[0] == None
		...   assert z.shape[1] == 1
		
		>>> g = f.get_concrete_function(tf.TensorSpec([None, 3]))
		
		You can learn more about `tf.function` at [Better
		performance with tf.function](https://www.tensorflow.org/guide/function).
		@end_compatibility
		
		Args:
		  input: A `Tensor`. The default value to produce when output is not fed.
		  shape: A `tf.TensorShape` or list of `int`s. The (possibly partial) shape of
		    the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function placeholder_with_default(input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the polygamma function \\(\psi^{(n)}(x)\\).
		
		The polygamma function is defined as:
		
		
		\\(\psi^{(a)}(x) = \frac{d^a}{dx^a} \psi(x)\\)
		
		where \\(\psi(x)\\) is the digamma function.
		The polygamma function is defined only for non-negative integer orders \\a\\.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function polygamma(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
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
		Print the specified inputs.
		
		A TensorFlow operator that prints the specified inputs to a desired
		output stream or logging level. The inputs may be dense or sparse Tensors,
		primitive python objects, data structures that contain tensors, and printable
		Python objects. Printed tensors will recursively show the first and last
		elements of each dimension to summarize.
		
		Example:
		  Single-input usage:
		
		  ```python
		  tensor = tf.range(10)
		  tf.print(tensor, output_stream=sys.stderr)
		  ```
		
		  (This prints "[0 1 2 ... 7 8 9]" to sys.stderr)
		
		  Multi-input usage:
		
		  ```python
		  tensor = tf.range(10)
		  tf.print("tensors:", tensor, {2: tensor * 2}, output_stream=sys.stdout)
		  ```
		
		  (This prints "tensors: [0 1 2 ... 7 8 9] {2: [0 2 4 ... 14 16 18]}" to
		  sys.stdout)
		
		  Changing the input separator:
		  ```python
		  tensor_a = tf.range(2)
		  tensor_b = tensor_a * 2
		  tf.print(tensor_a, tensor_b, output_stream=sys.stderr, sep=',')
		  ```
		
		  (This prints "[0 1],[0 2]" to sys.stderr)
		
		  Usage in a `tf.function`:
		
		  ```python
		  @tf.function
		  def f():
		      tensor = tf.range(10)
		      tf.print(tensor, output_stream=sys.stderr)
		      return tensor
		
		  range_tensor = f()
		  ```
		
		  (This prints "[0 1 2 ... 7 8 9]" to sys.stderr)
		
		*Compatibility usage in TF 1.x graphs*:
		
		  In graphs manually created outside of `tf.function`, this method returns
		  the created TF operator that prints the data. To make sure the
		  operator runs, users need to pass the produced op to
		  `tf.compat.v1.Session`'s run method, or to use the op as a control
		  dependency for executed ops by specifying
		  `with tf.compat.v1.control_dependencies([print_op])`.
		
		  ```python
		  tf.compat.v1.disable_v2_behavior()  # for TF1 compatibility only
		
		  sess = tf.compat.v1.Session()
		  with sess.as_default():
		    tensor = tf.range(10)
		    print_op = tf.print("tensors:", tensor, {2: tensor * 2},
		                        output_stream=sys.stdout)
		    with tf.control_dependencies([print_op]):
		      tripled_tensor = tensor * 3
		
		    sess.run(tripled_tensor)
		  ```
		
		  (This prints "tensors: [0 1 2 ... 7 8 9] {2: [0 2 4 ... 14 16 18]}" to
		  sys.stdout)
		
		Note: In Jupyter notebooks and colabs, `tf.print` prints to the notebook
		  cell outputs. It will not write to the notebook kernel's console logs.
		
		Args:
		  *inputs: Positional arguments that are the inputs to print. Inputs in the
		    printed output will be separated by spaces. Inputs may be python
		    primitives, tensors, data structures such as dicts and lists that may
		    contain tensors (with the data structures possibly nested in arbitrary
		    ways), and printable python objects.
		  output_stream: The output stream, logging level, or file to print to.
		    Defaults to sys.stderr, but sys.stdout, tf.compat.v1.logging.info,
		    tf.compat.v1.logging.warning, tf.compat.v1.logging.error,
		    absl.logging.info, absl.logging.warning and absl.logging.error are also
		    supported. To print to a file, pass a string started with "file://"
		    followed by the file path, e.g., "file:///tmp/foo.out".
		  summarize: The first and last `summarize` elements within each dimension are
		    recursively printed per Tensor. If None, then the first 3 and last 3
		    elements of each dimension are printed for each tensor. If set to -1, it
		    will print all elements of every tensor.
		  sep: The string to use to separate the inputs. Defaults to " ".
		  end: End character that is appended at the end the printed string. Defaults
		    to the newline character.
		  name: A name for the operation (optional).
		
		Returns:
		  None when executing eagerly. During graph tracing this returns
		  a TF operator that prints the specified inputs in the specified output
		  stream or logging level. This operator will be automatically executed
		  except inside of `tf.compat.v1` graphs and sessions.
		
		Raises:
		  ValueError: If an unsupported output stream is specified.
	**/
	static public function print(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		input = tf.compat.v1.placeholder(tf.float32)
		y = tf.compat.v1.py_func(my_func, [input], tf.float32)
		```
		
		**N.B.** The `tf.compat.v1.py_func()` operation has the following known
		limitations:
		
		* The body of the function (i.e. `func`) will not be serialized in a
		  `GraphDef`. Therefore, you should not use this function if you need to
		  serialize your model and restore it in a different environment.
		
		* The operation must run in the same address space as the Python program
		  that calls `tf.compat.v1.py_func()`. If you are using distributed
		  TensorFlow, you
		  must run a `tf.distribute.Server` in the same process as the program that
		  calls
		  `tf.compat.v1.py_func()` and you must pin the created operation to a device
		  in that
		  server (e.g. using `with tf.device():`).
		
		Note: It produces tensors of unknown shape and rank as shape inference
		  does not work on arbitrary Python code.
		  If you need the shape, you need to set it based on statically
		  available information.
		
		  E.g.
		  ```python
		  import tensorflow as tf
		  import numpy as np
		
		  def make_synthetic_data(i):
		      return np.cast[np.uint8](i) * np.ones([20,256,256,3],
		              dtype=np.float32) / 10.
		
		  def preprocess_fn(i):
		      ones = tf.py_function(make_synthetic_data,[i],tf.float32)
		      ones.set_shape(tf.TensorShape([None, None, None, None]))
		      ones = tf.image.resize(ones, [224,224])
		      return ones
		
		  ds = tf.data.Dataset.range(10)
		  ds = ds.map(preprocess_fn)
		  ```
		
		Args:
		  func: A Python function, which accepts `ndarray` objects as arguments and
		    returns a list of `ndarray` objects (or a single `ndarray`). This function
		    must accept as many arguments as there are tensors in `inp`, and these
		    argument types will match the corresponding `tf.Tensor` objects in `inp`.
		    The returns `ndarray`s must match the number and types defined `Tout`.
		    Important Note: Input and output numpy `ndarray`s of `func` are not
		      guaranteed to be copies. In some cases their underlying memory will be
		      shared with the corresponding TensorFlow tensors. In-place modification
		      or storing `func` input or return values in python datastructures
		      without explicit (np.)copy can have non-deterministic consequences.
		  inp: A list of `Tensor` objects.
		  Tout: A list or tuple of tensorflow data types or a single tensorflow data
		    type if there is only one, indicating what `func` returns.
		  stateful: (Boolean.) If True, the function should be considered stateful. If
		    a function is stateless, when given the same input it will return the same
		    output and have no observable side effects. Optimizations such as common
		    subexpression elimination are only performed on stateless operations.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` or a single `Tensor` which `func` computes.
		
		@compatibility(TF2)
		
		This name was deprecated and removed in TF2, but `tf.numpy_function` is a
		near-exact replacement, just drop the `stateful` argument (all
		`tf.numpy_function` calls are considered stateful). It is compatible with
		eager execution and `tf.function`.
		
		`tf.py_function` is a close but not an exact replacement, passing TensorFlow
		tensors to the wrapped function instead of NumPy arrays, which provides
		gradients and can take advantage of accelerators.
		
		Before:
		
		>>> def fn_using_numpy(x):
		...   x[0] = 0.
		...   return x
		>>> tf.compat.v1.py_func(fn_using_numpy, inp=[tf.constant([1., 2.])],
		...     Tout=tf.float32, stateful=False)
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([0., 2.], dtype=float32)>
		
		After:
		
		>>> tf.numpy_function(fn_using_numpy, inp=[tf.constant([1., 2.])],
		...     Tout=tf.float32)
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([0., 2.], dtype=float32)>
		
		@end_compatibility
	**/
	static public function py_func(func:Dynamic, inp:Dynamic, Tout:Dynamic, ?stateful:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps a python function into a TensorFlow op that executes it eagerly.
		
		This function allows expressing computations in a TensorFlow graph as
		Python functions. In particular, it wraps a Python function `func`
		in a once-differentiable TensorFlow operation that executes it with eager
		execution enabled. As a consequence, `tf.py_function` makes it
		possible to express control flow using Python constructs (`if`, `while`,
		`for`, etc.), instead of TensorFlow control flow constructs (`tf.cond`,
		`tf.while_loop`). For example, you might use `tf.py_function` to
		implement the log huber function:
		
		```python
		def log_huber(x, m):
		  if tf.abs(x) <= m:
		    return x**2
		  else:
		    return m**2 * (1 - 2 * tf.math.log(m) + tf.math.log(x**2))
		
		x = tf.compat.v1.placeholder(tf.float32)
		m = tf.compat.v1.placeholder(tf.float32)
		
		y = tf.py_function(func=log_huber, inp=[x, m], Tout=tf.float32)
		dy_dx = tf.gradients(y, x)[0]
		
		with tf.compat.v1.Session() as sess:
		  # The session executes `log_huber` eagerly. Given the feed values below,
		  # it will take the first branch, so `y` evaluates to 1.0 and
		  # `dy_dx` evaluates to 2.0.
		  y, dy_dx = sess.run([y, dy_dx], feed_dict={x: 1.0, m: 2.0})
		```
		
		You can also use `tf.py_function` to debug your models at runtime
		using Python tools, i.e., you can isolate portions of your code that
		you want to debug, wrap them in Python functions and insert `pdb` tracepoints
		or print statements as desired, and wrap those functions in
		`tf.py_function`.
		
		For more information on eager execution, see the
		[Eager guide](https://tensorflow.org/guide/eager).
		
		`tf.py_function` is similar in spirit to `tf.compat.v1.py_func`, but unlike
		the latter, the former lets you use TensorFlow operations in the wrapped
		Python function. In particular, while `tf.compat.v1.py_func` only runs on CPUs
		and
		wraps functions that take NumPy arrays as inputs and return NumPy arrays as
		outputs, `tf.py_function` can be placed on GPUs and wraps functions
		that take Tensors as inputs, execute TensorFlow operations in their bodies,
		and return Tensors as outputs.
		
		Like `tf.compat.v1.py_func`, `tf.py_function` has the following limitations
		with respect to serialization and distribution:
		
		* The body of the function (i.e. `func`) will not be serialized in a
		  `GraphDef`. Therefore, you should not use this function if you need to
		  serialize your model and restore it in a different environment.
		
		* The operation must run in the same address space as the Python program
		  that calls `tf.py_function()`. If you are using distributed
		  TensorFlow, you must run a `tf.distribute.Server` in the same process as the
		  program that calls `tf.py_function()` and you must pin the created
		  operation to a device in that server (e.g. using `with tf.device():`).
		
		
		Args:
		  func: A Python function that accepts `inp` as arguments, and returns a
		    value (or list of values) whose type is described by `Tout`.
		
		  inp: Input arguments for `func`.  A list whose elements are `Tensor`s or
		    `CompositeTensors` (such as `tf.RaggedTensor`); or a single `Tensor` or
		    `CompositeTensor`.
		
		  Tout: The type(s) of the value(s) returned by `func`.  One of the
		    following.
		
		    * If `func` returns a `Tensor` (or a value that can be converted to a
		      Tensor): the `tf.DType` for that value.
		    * If `func` returns a `CompositeTensor`: The `tf.TypeSpec` for that value.
		    * If `func` returns `None`: the empty list (`[]`).
		    * If `func` returns a list of `Tensor` and `CompositeTensor` values:
		      a corresponding list of `tf.DType`s and `tf.TypeSpec`s for each value.
		
		  name: A name for the operation (optional).
		
		Returns:
		  The value(s) computed by `func`: a `Tensor`, `CompositeTensor`, or list of
		  `Tensor` and `CompositeTensor`; or an empty list if `func` returns `None`.
	**/
	static public function py_function(func:Dynamic, inp:Dynamic, Tout:Dynamic, ?name:Dynamic):Dynamic;
	static public var qint16 : Dynamic;
	static public var qint32 : Dynamic;
	static public var qint8 : Dynamic;
	/**
		Computes the QR decompositions of one or more matrices.
		
		Computes the QR decomposition of each inner matrix in `tensor` such that
		`tensor[..., :, :] = q[..., :, :] * r[..., :,:])`
		
		Currently, the gradient for the QR decomposition is well-defined only when
		the first `P` columns of the inner matrix are linearly independent, where
		`P` is the minimum of `M` and `N`, the 2 inner-most dimmensions of `tensor`.
		
		```python
		# a is a tensor.
		# q is a tensor of orthonormal matrices.
		# r is a tensor of upper triangular matrices.
		q, r = qr(a)
		q_full, r_full = qr(a, full_matrices=True)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
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
		Quantize the 'input' tensor of type float to 'output' tensor of type 'T'.
		
		[min_range, max_range] are scalar floats that specify the range for
		the 'input' data. The 'mode' attribute controls exactly which calculations are
		used to convert the float values to their quantized equivalents.  The
		'round_mode' attribute controls which rounding tie-breaking algorithm is used
		when rounding float values to their quantized equivalents.
		
		In 'MIN_COMBINED' mode, each value of the tensor will undergo the following:
		
		```
		out[i] = (in[i] - min_range) * range(T) / (max_range - min_range)
		if T == qint8: out[i] -= (range(T) + 1) / 2.0
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
		
		If the mode is `SCALED`, the quantization is performed by multiplying each
		input value by a scaling_factor.
		The scaling_factor is determined from `min_range` and `max_range` to be as large
		as possible such that the range from `min_range` to `max_range` is representable
		within values of type T.
		
		```c++
		
		  const int min_T = std::numeric_limits<T>::min();
		  const int max_T = std::numeric_limits<T>::max();
		  const float max_float = std::numeric_limits<float>::max();
		
		  const float scale_factor_from_min_side =
		      (min_T * min_range > 0) ? min_T / min_range : max_float;
		  const float scale_factor_from_max_side =
		      (max_T * max_range > 0) ? max_T / max_range : max_float;
		
		  const float scale_factor = std::min(scale_factor_from_min_side,
		                                      scale_factor_from_max_side);
		```
		
		We next use the scale_factor to adjust min_range and max_range as follows:
		
		```c++
		      min_range = min_T / scale_factor;
		      max_range = max_T / scale_factor;
		```
		
		
		e.g. if T = qint8, and initially min_range = -10, and max_range = 9, we would
		compare -128/-10.0 = 12.8 to 127/9.0 = 14.11, and set scaling_factor = 12.8
		In this case, min_range would remain -10, but max_range would be adjusted to
		127 / 12.8 = 9.921875
		
		So we will quantize input values in the range (-10, 9.921875) to (-128, 127).
		
		The input tensor can now be quantized by clipping values to the range
		`min_range` to `max_range`, then multiplying by scale_factor as follows:
		
		```c++
		result = round(min(max_range, max(min_range, input)) * scale_factor)
		```
		
		The adjusted `min_range` and `max_range` are returned as outputs 2 and 3 of
		this operation. These outputs should be used as the range for any further
		calculations.
		
		
		*narrow_range (bool) attribute*
		
		If true, we do not use the minimum quantized value.
		i.e. for int8 the quantized output, it would be restricted to the range
		-127..127 instead of the full -128..127 range.
		This is provided for compatibility with certain inference backends.
		(Only applies to SCALED mode)
		
		
		*axis (int) attribute*
		
		An optional `axis` attribute can specify a dimension index of the input tensor,
		such that quantization ranges will be calculated and applied separately for each
		slice of the tensor along that dimension. This is useful for per-channel
		quantization.
		
		If axis is specified, min_range and max_range
		
		if `axis`=None, per-tensor quantization is performed as normal.
		
		
		*ensure_minimum_range (float) attribute*
		
		Ensures the minimum quantization range is at least this value.
		The legacy default value for this is 0.01, but it is strongly suggested to
		set it to 0 for new uses.
		
		Args:
		  input: A `Tensor` of type `float32`.
		  min_range: A `Tensor` of type `float32`.
		    The minimum value of the quantization range. This value may be adjusted by the
		    op depending on other parameters. The adjusted value is written to `output_min`.
		    If the `axis` attribute is specified, this must be a 1-D tensor whose size
		    matches the `axis` dimension of the input and output tensors.
		  max_range: A `Tensor` of type `float32`.
		    The maximum value of the quantization range. This value may be adjusted by the
		    op depending on other parameters. The adjusted value is written to `output_max`.
		    If the `axis` attribute is specified, this must be a 1-D tensor whose size
		    matches the `axis` dimension of the input and output tensors.
		  T: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
		  mode: An optional `string` from: `"MIN_COMBINED", "MIN_FIRST", "SCALED"`. Defaults to `"MIN_COMBINED"`.
		  round_mode: An optional `string` from: `"HALF_AWAY_FROM_ZERO", "HALF_TO_EVEN"`. Defaults to `"HALF_AWAY_FROM_ZERO"`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  axis: An optional `int`. Defaults to `-1`.
		  ensure_minimum_range: An optional `float`. Defaults to `0.01`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor` of type `T`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function quantize(input:Dynamic, min_range:Dynamic, max_range:Dynamic, T:Dynamic, ?mode:Dynamic, ?round_mode:Dynamic, ?name:Dynamic, ?narrow_range:Dynamic, ?axis:Dynamic, ?ensure_minimum_range:Dynamic):Dynamic;
	/**
		Please use `tf.quantization.quantize` instead.
	**/
	static public function quantize_v2(input:Dynamic, min_range:Dynamic, max_range:Dynamic, T:Dynamic, ?mode:Dynamic, ?name:Dynamic, ?round_mode:Dynamic, ?narrow_range:Dynamic, ?axis:Dynamic, ?ensure_minimum_range:Dynamic):Dynamic;
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
	static public var quint16 : Dynamic;
	static public var quint8 : Dynamic;
	/**
		Randomly crops a tensor to a given size.
		
		Slices a shape `size` portion out of `value` at a uniformly chosen offset.
		Requires `value.shape >= size`.
		
		If a dimension should not be cropped, pass the full size of that dimension.
		For example, RGB images can be cropped with
		`size = [crop_height, crop_width, 3]`.
		
		Example usage:
		
		>>> image = [[1, 2, 3], [4, 5, 6]]
		>>> result = tf.image.random_crop(value=image, size=(1, 3))
		>>> result.shape.as_list()
		[1, 3]
		
		For producing deterministic results given a `seed` value, use
		`tf.image.stateless_random_crop`. Unlike using the `seed` param with
		`tf.image.random_*` ops, `tf.image.stateless_random_*` ops guarantee the same
		results given the same seed independent of how many times the function is
		called, and independent of global seed settings (e.g. tf.random.set_seed).
		
		Args:
		  value: Input tensor to crop.
		  size: 1-D tensor with size the rank of `value`.
		  seed: Python integer. Used to create a random seed. See
		    `tf.random.set_seed`
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
		The derivatives are computed using the approach described in
		(Figurnov et al., 2018).
		
		Example:
		
		```python
		samples = tf.random.gamma([10], [0.5, 1.5])
		# samples has shape [10, 2], where each slice [:, 0] and [:, 1] represents
		# the samples drawn from each distribution
		
		samples = tf.random.gamma([7, 5], [0.5, 1.5])
		# samples has shape [7, 5, 2], where each slice [:, :, 0] and [:, :, 1]
		# represents the 7x5 samples drawn from each of the two distributions
		
		alpha = tf.constant([[1.],[3.],[5.]])
		beta = tf.constant([[3., 4.]])
		samples = tf.random.gamma([30], alpha=alpha, beta=beta)
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
		    `tf.random.set_seed`
		    for behavior.
		  name: Optional name for the operation.
		
		Returns:
		  samples: a `Tensor` of shape
		    `tf.concat([shape, tf.shape(alpha + beta)], axis=0)` with values of type
		    `dtype`.
		
		References:
		  Implicit Reparameterization Gradients:
		    [Figurnov et al., 2018]
		    (http://papers.nips.cc/paper/7326-implicit-reparameterization-gradients)
		    ([pdf]
		    (http://papers.nips.cc/paper/7326-implicit-reparameterization-gradients.pdf))
	**/
	static public function random_gamma(shape:Dynamic, alpha:Dynamic, ?beta:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a normal distribution.
		
		Example that generates a new set of random values every time:
		
		>>> tf.random.set_seed(5);
		>>> tf.random.normal([4], 0, 1, tf.float32)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=..., dtype=float32)>
		
		Example that outputs a reproducible result:
		
		>>> tf.random.set_seed(5);
		>>> tf.random.normal([2,2], 0, 1, tf.float32, seed=1)
		<tf.Tensor: shape=(2, 2), dtype=float32, numpy=
		array([[-1.3768897 , -0.01258316],
		      [-0.169515   ,  1.0824056 ]], dtype=float32)>
		
		In this case, we are setting both the global and operation-level seed to
		ensure this result is reproducible.  See `tf.random.set_seed` for more
		information.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  mean: A Tensor or Python value of type `dtype`, broadcastable with `stddev`.
		    The mean of the normal distribution.
		  stddev: A Tensor or Python value of type `dtype`, broadcastable with `mean`.
		    The standard deviation of the normal distribution.
		  dtype: The type of the output.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See
		    `tf.random.set_seed`
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
		samples = tf.random.poisson([0.5, 1.5], [10])
		# samples has shape [10, 2], where each slice [:, 0] and [:, 1] represents
		# the samples drawn from each distribution
		
		samples = tf.random.poisson([12.2, 3.3], [7, 5])
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
		    `tf.random.set_seed`
		    for behavior.
		  name: Optional name for the operation.
		
		Returns:
		  samples: a `Tensor` of shape `tf.concat([shape, tf.shape(lam)], axis=0)`
		    with values of type `dtype`.
	**/
	static public function random_poisson(lam:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
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
		    `tf.random.set_seed`
		    for behavior.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of same shape and type as `value`, shuffled along its first
		  dimension.
	**/
	static public function random_shuffle(value:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
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
		
		Examples:
		
		>>> tf.random.uniform(shape=[2])
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([..., ...], dtype=float32)>
		>>> tf.random.uniform(shape=[], minval=-1., maxval=0.)
		<tf.Tensor: shape=(), dtype=float32, numpy=-...>
		>>> tf.random.uniform(shape=[], minval=5, maxval=10, dtype=tf.int64)
		<tf.Tensor: shape=(), dtype=int64, numpy=...>
		
		The `seed` argument produces a deterministic sequence of tensors across
		multiple calls. To repeat that sequence, use `tf.random.set_seed`:
		
		>>> tf.random.set_seed(5)
		>>> tf.random.uniform(shape=[], maxval=3, dtype=tf.int32, seed=10)
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		>>> tf.random.uniform(shape=[], maxval=3, dtype=tf.int32, seed=10)
		<tf.Tensor: shape=(), dtype=int32, numpy=0>
		>>> tf.random.set_seed(5)
		>>> tf.random.uniform(shape=[], maxval=3, dtype=tf.int32, seed=10)
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		>>> tf.random.uniform(shape=[], maxval=3, dtype=tf.int32, seed=10)
		<tf.Tensor: shape=(), dtype=int32, numpy=0>
		
		Without `tf.random.set_seed` but with a `seed` argument is specified, small
		changes to function graphs or previously executed operations will change the
		returned value. See `tf.random.set_seed` for details.
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  minval: A Tensor or Python value of type `dtype`, broadcastable with
		    `shape` (for integer types, broadcasting is not supported, so it needs to
		    be a scalar). The lower bound on the range of random values to generate
		    (inclusive).  Defaults to 0.
		  maxval: A Tensor or Python value of type `dtype`, broadcastable with
		    `shape` (for integer types, broadcasting is not supported, so it needs to
		    be a scalar). The upper bound on the range of random values to generate
		    (exclusive). Defaults to 1 if `dtype` is floating point.
		  dtype: The type of the output: `float16`, `float32`, `float64`, `int32`,
		    or `int64`.
		  seed: A Python integer. Used in combination with `tf.random.set_seed` to
		    create a reproducible sequence of tensors across multiple calls.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random uniform values.
		
		Raises:
		  ValueError: If `dtype` is integral and `maxval` is not specified.
	**/
	static public function random_uniform(shape:Dynamic, ?minval:Dynamic, ?maxval:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a sequence of numbers.
		
		Creates a sequence of numbers that begins at `start` and extends by
		increments of `delta` up to but not including `limit`.
		
		The dtype of the resulting tensor is inferred from the inputs unless
		it is provided explicitly.
		
		Like the Python builtin `range`, `start` defaults to 0, so that
		`range(n) = range(0, n)`.
		
		For example:
		
		>>> start = 3
		>>> limit = 18
		>>> delta = 3
		>>> tf.range(start, limit, delta)
		<tf.Tensor: shape=(5,), dtype=int32,
		numpy=array([ 3,  6,  9, 12, 15], dtype=int32)>
		
		>>> start = 3
		>>> limit = 1
		>>> delta = -0.5
		>>> tf.range(start, limit, delta)
		<tf.Tensor: shape=(4,), dtype=float32,
		numpy=array([3. , 2.5, 2. , 1.5], dtype=float32)>
		
		>>> limit = 5
		>>> tf.range(limit)
		<tf.Tensor: shape=(5,), dtype=int32,
		numpy=array([0, 1, 2, 3, 4], dtype=int32)>
		
		Args:
		  start: A 0-D `Tensor` (scalar). Acts as first entry in the range if `limit`
		    is not None; otherwise, acts as range limit and first entry defaults to 0.
		  limit: A 0-D `Tensor` (scalar). Upper limit of sequence, exclusive. If None,
		    defaults to the value of `start` while the first entry of the range
		    defaults to 0.
		  delta: A 0-D `Tensor` (scalar). Number that increments `start`. Defaults to
		    1.
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
		
		See also `tf.shape`.
		
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
		Reads the contents of file.
		
		This operation returns a tensor with the entire contents of the input
		filename. It does not do any parsing, it just returns the contents as
		they are. Usually, this is the first step in the input pipeline.
		
		Example:
		
		>>> with open("/tmp/file.txt", "w") as f:
		...   f.write("asdf")
		...
		4
		>>> tf.io.read_file("/tmp/file.txt")
		<tf.Tensor: shape=(), dtype=string, numpy=b'asdf'>
		
		Example of using the op in a function to read an image, decode it and reshape
		the tensor containing the pixel data:
		
		>>> @tf.function
		... def load_image(filename):
		...   raw = tf.io.read_file(filename)
		...   image = tf.image.decode_png(raw, channels=3)
		...   # the `print` executes during tracing.
		...   print("Initial shape: ", image.shape)
		...   image.set_shape([28, 28, 3])
		...   print("Final shape: ", image.shape)
		...   return image
		
		Args:
		  filename: string. filename to read from.
		  name: string.  Optional name for the op.
		
		Returns:
		  A tensor of dtype "string", with the file contents.
	**/
	static public function read_file(filename:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the real part of a complex (or real) tensor.
		
		Given a tensor `input`, this operation returns a tensor of type `float` that
		is the real part of each element in `input` considered as a complex number.
		
		For example:
		
		```python
		x = tf.constant([-2.25 + 4.75j, 3.25 + 5.75j])
		tf.math.real(x)  # [-2.25, 3.25]
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
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `uint32`, `uint64`, `int64`, `complex64`, `complex128`.
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
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function reciprocal(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An eager-compatible version of recompute_grad.
		
		For f(*args, **kwargs), this supports gradients with respect to args or
		kwargs, but kwargs are currently only supported in eager-mode.
		Note that for keras layer and model objects, this is handled automatically.
		
		Warning: If `f` was originally a tf.keras Model or Layer object, `g` will not
		be able to access the member variables of that object, because `g` returns
		through the wrapper function `inner`.  When recomputing gradients through
		objects that inherit from keras, we suggest keeping a reference to the
		underlying object around for the purpose of accessing these variables.
		
		Args:
		  f: function `f(*x)` that returns a `Tensor` or sequence of `Tensor` outputs.
		
		Returns:
		  A function `g` that wraps `f`, but which recomputes `f` on the backwards
		  pass of a gradient call.
	**/
	static public function recompute_grad(f:Dynamic):Dynamic;
	/**
		Computes `tf.math.logical_and` of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		This is the reduction operation for the elementwise `tf.math.logical_and` op.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		  >>> x = tf.constant([[True,  True], [False, False]])
		  >>> tf.math.reduce_all(x)
		  <tf.Tensor: shape=(), dtype=bool, numpy=False>
		  >>> tf.math.reduce_all(x, 0)
		  <tf.Tensor: shape=(2,), dtype=bool, numpy=array([False, False])>
		  >>> tf.math.reduce_all(x, 1)
		  <tf.Tensor: shape=(2,), dtype=bool, numpy=array([ True, False])>
		
		Args:
		  input_tensor: The boolean tensor to reduce.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
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
		Computes `tf.math.logical_or` of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		This is the reduction operation for the elementwise `tf.math.logical_or` op.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		  >>> x = tf.constant([[True,  True], [False, False]])
		  >>> tf.reduce_any(x)
		  <tf.Tensor: shape=(), dtype=bool, numpy=True>
		  >>> tf.reduce_any(x, 0)
		  <tf.Tensor: shape=(2,), dtype=bool, numpy=array([ True,  True])>
		  >>> tf.reduce_any(x, 1)
		  <tf.Tensor: shape=(2,), dtype=bool, numpy=array([ True, False])>
		
		Args:
		  input_tensor: The boolean tensor to reduce.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
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
		Joins all strings into a single string, or joins along an axis.
		
		This is the reduction operation for the elementwise `tf.strings.join` op.
		
		>>> tf.strings.reduce_join([['abc','123'],
		...                         ['def','456']]).numpy()
		b'abc123def456'
		>>> tf.strings.reduce_join([['abc','123'],
		...                         ['def','456']], axis=-1).numpy()
		array([b'abc123', b'def456'], dtype=object)
		>>> tf.strings.reduce_join([['abc','123'],
		...                         ['def','456']],
		...                        axis=-1,
		...                        separator=" ").numpy()
		array([b'abc 123', b'def 456'], dtype=object)
		
		Args:
		  inputs: A `tf.string` tensor.
		  axis: Which axis to join along. The default behavior is to join all
		    elements, producing a scalar.
		  keepdims: If true, retains reduced dimensions with length 1.
		  separator: a string added between each string being joined.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.string` tensor.
	**/
	static public function reduce_join(inputs:Dynamic, ?axis:Dynamic, ?keep_dims:Dynamic, ?separator:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Computes log(sum(exp(elements across dimensions of a tensor))). (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
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
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
	**/
	static public function reduce_logsumexp(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes `tf.math.maximum` of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		This is the reduction operation for the elementwise `tf.math.maximum` op.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		Usage example:
		
		  >>> x = tf.constant([5, 1, 2, 4])
		  >>> tf.reduce_max(x)
		  <tf.Tensor: shape=(), dtype=int32, numpy=5>
		  >>> x = tf.constant([-5, -1, -2, -4])
		  >>> tf.reduce_max(x)
		  <tf.Tensor: shape=(), dtype=int32, numpy=-1>
		  >>> x = tf.constant([4, float('nan')])
		  >>> tf.reduce_max(x)
		  <tf.Tensor: shape=(), dtype=float32, numpy=nan>
		  >>> x = tf.constant([float('nan'), float('nan')])
		  >>> tf.reduce_max(x)
		  <tf.Tensor: shape=(), dtype=float32, numpy=nan>
		  >>> x = tf.constant([float('-inf'), float('inf')])
		  >>> tf.reduce_max(x)
		  <tf.Tensor: shape=(), dtype=float32, numpy=inf>
		
		See the numpy docs for `np.amax` and `np.nanmax` behavior.
		
		Args:
		  input_tensor: The tensor to reduce. Should have real numeric type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
	**/
	static public function reduce_max(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the mean of elements across dimensions of a tensor.
		
		Reduces `input_tensor` along the dimensions given in `axis` by computing the
		mean of elements across the dimensions in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a tensor with a single
		element is returned.
		
		For example:
		
		>>> x = tf.constant([[1., 1.], [2., 2.]])
		>>> tf.reduce_mean(x)
		<tf.Tensor: shape=(), dtype=float32, numpy=1.5>
		>>> tf.reduce_mean(x, 0)
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([1.5, 1.5], dtype=float32)>
		>>> tf.reduce_mean(x, 1)
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([1., 2.], dtype=float32)>
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
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
		
		>>> x = tf.constant([1, 0, 1, 0])
		>>> tf.reduce_mean(x)
		<tf.Tensor: shape=(), dtype=int32, numpy=0>
		>>> y = tf.constant([1., 0., 1., 0.])
		>>> tf.reduce_mean(y)
		<tf.Tensor: shape=(), dtype=float32, numpy=0.5>
		
		@end_compatibility
	**/
	static public function reduce_mean(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the `tf.math.minimum` of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		This is the reduction operation for the elementwise `tf.math.minimum` op.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		Usage example:
		
		  >>> x = tf.constant([5, 1, 2, 4])
		  >>> tf.reduce_min(x)
		  <tf.Tensor: shape=(), dtype=int32, numpy=1>
		  >>> x = tf.constant([-5, -1, -2, -4])
		  >>> tf.reduce_min(x)
		  <tf.Tensor: shape=(), dtype=int32, numpy=-5>
		  >>> x = tf.constant([4, float('nan')])
		  >>> tf.reduce_min(x)
		  <tf.Tensor: shape=(), dtype=float32, numpy=nan>
		  >>> x = tf.constant([float('nan'), float('nan')])
		  >>> tf.reduce_min(x)
		  <tf.Tensor: shape=(), dtype=float32, numpy=nan>
		  >>> x = tf.constant([float('-inf'), float('inf')])
		  >>> tf.reduce_min(x)
		  <tf.Tensor: shape=(), dtype=float32, numpy=-inf>
		
		See the numpy docs for `np.amin` and `np.nanmin` behavior.
		
		Args:
		  input_tensor: The tensor to reduce. Should have real numeric type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
	**/
	static public function reduce_min(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes `tf.math.multiply` of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		This is the reduction operation for the elementwise `tf.math.multiply` op.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		  >>> x = tf.constant([[1., 2.], [3., 4.]])
		  >>> tf.math.reduce_prod(x)
		  <tf.Tensor: shape=(), dtype=float32, numpy=24.>
		  >>> tf.math.reduce_prod(x, 0)
		  <tf.Tensor: shape=(2,), dtype=float32, numpy=array([3., 8.], dtype=float32)>
		  >>> tf.math.reduce_prod(x, 1)
		  <tf.Tensor: shape=(2,), dtype=float32, numpy=array([2., 12.],
		  dtype=float32)>
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
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
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		This is the reduction operation for the elementwise `tf.math.add` op.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		  >>> # x has a shape of (2, 3) (two rows and three columns):
		  >>> x = tf.constant([[1, 1, 1], [1, 1, 1]])
		  >>> x.numpy()
		  array([[1, 1, 1],
		         [1, 1, 1]], dtype=int32)
		  >>> # sum all the elements
		  >>> # 1 + 1 + 1 + 1 + 1+ 1 = 6
		  >>> tf.reduce_sum(x).numpy()
		  6
		  >>> # reduce along the first dimension
		  >>> # the result is [1, 1, 1] + [1, 1, 1] = [2, 2, 2]
		  >>> tf.reduce_sum(x, 0).numpy()
		  array([2, 2, 2], dtype=int32)
		  >>> # reduce along the second dimension
		  >>> # the result is [1, 1] + [1, 1] + [1, 1] = [3, 3]
		  >>> tf.reduce_sum(x, 1).numpy()
		  array([3, 3], dtype=int32)
		  >>> # keep the original dimensions
		  >>> tf.reduce_sum(x, 1, keepdims=True).numpy()
		  array([[3],
		         [3]], dtype=int32)
		  >>> # reduce along both dimensions
		  >>> # the result is 1 + 1 + 1 + 1 + 1 + 1 = 6
		  >>> # or, equivalently, reduce along rows, then reduce the resultant array
		  >>> # [1, 1, 1] + [1, 1, 1] = [2, 2, 2]
		  >>> # 2 + 2 + 2 = 6
		  >>> tf.reduce_sum(x, [0, 1]).numpy()
		  6
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
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
		Replace elements of `input` matching regex `pattern` with `rewrite`.
		
		>>> tf.strings.regex_replace("Text with tags.<br /><b>contains html</b>",
		...                          "<[^>]+>", " ")
		<tf.Tensor: shape=(), dtype=string, numpy=b'Text with tags.  contains html '>
		
		Args:
		  input: string `Tensor`, the source strings to process.
		  pattern: string or scalar string `Tensor`, regular expression to use,
		    see more details at https://github.com/google/re2/wiki/Syntax
		  rewrite: string or scalar string `Tensor`, value to use in match
		    replacement, supports backslash-escaped digits (\1 to \9) can be to insert
		    text matching corresponding parenthesized group.
		  replace_global: `bool`, if `True` replace all non-overlapping matches,
		    else replace only the first match.
		  name: A name for the operation (optional).
		
		Returns:
		  string `Tensor` of the same shape as `input` with specified replacements.
	**/
	static public function regex_replace(input:Dynamic, pattern:Dynamic, rewrite:Dynamic, ?replace_global:Dynamic, ?name:Dynamic):Dynamic;
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
		    conversion function. Conversion functions with smaller priority values run
		    earlier than conversion functions with larger priority values. Defaults to
		    100.
		
		Raises:
		  TypeError: If the arguments do not have the appropriate type.
	**/
	static public function register_tensor_conversion_function(base_type:Dynamic, conversion_func:Dynamic, ?priority:Dynamic):Dynamic;
	/**
		Repeat elements of `input`.
		
		See also `tf.concat`, `tf.stack`, `tf.tile`.
		
		Args:
		  input: An `N`-dimensional Tensor.
		  repeats: An 1-D `int` Tensor. The number of repetitions for each element.
		    repeats is broadcasted to fit the shape of the given axis. `len(repeats)`
		    must equal `input.shape[axis]` if axis is not None.
		  axis: An int. The axis along which to repeat values. By default (axis=None),
		    use the flattened input array, and return a flat output array.
		  name: A name for the operation.
		
		Returns:
		  A Tensor which has the same shape as `input`, except along the given axis.
		    If axis is None then the output array is flattened to match the flattened
		    input array.
		
		Example usage:
		
		>>> repeat(['a', 'b', 'c'], repeats=[3, 0, 2], axis=0)
		<tf.Tensor: shape=(5,), dtype=string,
		numpy=array([b'a', b'a', b'a', b'c', b'c'], dtype=object)>
		
		>>> repeat([[1, 2], [3, 4]], repeats=[2, 3], axis=0)
		<tf.Tensor: shape=(5, 2), dtype=int32, numpy=
		array([[1, 2],
		       [1, 2],
		       [3, 4],
		       [3, 4],
		       [3, 4]], dtype=int32)>
		
		>>> repeat([[1, 2], [3, 4]], repeats=[2, 3], axis=1)
		<tf.Tensor: shape=(2, 5), dtype=int32, numpy=
		array([[1, 1, 2, 2, 2],
		       [3, 3, 4, 4, 4]], dtype=int32)>
		
		>>> repeat(3, repeats=4)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([3, 3, 3, 3], dtype=int32)>
		
		>>> repeat([[1,2], [3,4]], repeats=2)
		<tf.Tensor: shape=(8,), dtype=int32,
		numpy=array([1, 1, 2, 2, 3, 3, 4, 4], dtype=int32)>
	**/
	static public function repeat(input:Dynamic, repeats:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds ops to list the names of uninitialized variables.
		
		When run, it returns a 1-D tensor containing the names of uninitialized
		variables if there are any, or an empty array if there are none.
		
		Args:
		  var_list: List of `Variable` objects to check. Defaults to the value of
		    `global_variables() + local_variables()`
		  name: Optional name of the `Operation`.
		
		Returns:
		  A 1-D tensor containing names of the uninitialized variables, or an empty
		  1-D tensor if there are no variables or no uninitialized variables.
		
		
		Note: The output of this function should be used. If it is not, a warning will be logged or an error may be raised. To mark the output as used, call its .mark_used() method.
	**/
	static public function report_uninitialized_variables(?var_list:Dynamic, ?name:Dynamic):Dynamic;
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
		a `tf.compat.v1.Session` or `tf.compat.v1.InteractiveSession` is active will
		result in undefined
		behavior. Using any previously created `tf.Operation` or `tf.Tensor` objects
		after calling this function will result in undefined behavior.
		
		@compatibility(TF2)
		`reset_default_graph` does not work with either eager execution or
		`tf.function`, and you should not invoke it directly. To migrate code that
		uses Graph-related functions to TF2, rewrite the code without them. See the
		[migration guide](https://www.tensorflow.org/guide/migrate) for more
		description about the behavior and semantic changes between Tensorflow 1 and
		Tensorflow 2.
		@end_compatibility
		
		Raises:
		  AssertionError: If this function is called within a nested graph.
	**/
	static public function reset_default_graph():Dynamic;
	/**
		Reshapes a tensor.
		
		Given `tensor`, this operation returns a new `tf.Tensor` that has the same
		values as `tensor` in the same order, except with a new shape given by
		`shape`.
		
		>>> t1 = [[1, 2, 3],
		...       [4, 5, 6]]
		>>> print(tf.shape(t1).numpy())
		[2 3]
		>>> t2 = tf.reshape(t1, [6])
		>>> t2
		<tf.Tensor: shape=(6,), dtype=int32,
		  numpy=array([1, 2, 3, 4, 5, 6], dtype=int32)>
		>>> tf.reshape(t2, [3, 2])
		<tf.Tensor: shape=(3, 2), dtype=int32, numpy=
		  array([[1, 2],
		         [3, 4],
		         [5, 6]], dtype=int32)>
		
		The `tf.reshape` does not change the order of or the total number of elements
		in the tensor, and so it can reuse the underlying data buffer. This makes it
		a fast operation independent of how big of a tensor it is operating on.
		
		>>> tf.reshape([1, 2, 3], [2, 2])
		Traceback (most recent call last):
		...
		InvalidArgumentError: Input to reshape is a tensor with 3 values, but the
		requested shape has 4
		
		To instead reorder the data to rearrange the dimensions of a tensor, see
		`tf.transpose`.
		
		>>> t = [[1, 2, 3],
		...      [4, 5, 6]]
		>>> tf.reshape(t, [3, 2]).numpy()
		array([[1, 2],
		       [3, 4],
		       [5, 6]], dtype=int32)
		>>> tf.transpose(t, perm=[1, 0]).numpy()
		array([[1, 4],
		       [2, 5],
		       [3, 6]], dtype=int32)
		
		If one component of `shape` is the special value -1, the size of that
		dimension is computed so that the total size remains constant.  In particular,
		a `shape` of `[-1]` flattens into 1-D.  At most one component of `shape` can
		be -1.
		
		>>> t = [[1, 2, 3],
		...      [4, 5, 6]]
		>>> tf.reshape(t, [-1])
		<tf.Tensor: shape=(6,), dtype=int32,
		  numpy=array([1, 2, 3, 4, 5, 6], dtype=int32)>
		>>> tf.reshape(t, [3, -1])
		<tf.Tensor: shape=(3, 2), dtype=int32, numpy=
		  array([[1, 2],
		         [3, 4],
		         [5, 6]], dtype=int32)>
		>>> tf.reshape(t, [-1, 2])
		<tf.Tensor: shape=(3, 2), dtype=int32, numpy=
		  array([[1, 2],
		         [3, 4],
		         [5, 6]], dtype=int32)>
		
		`tf.reshape(t, [])` reshapes a tensor `t` with one element to a scalar.
		
		>>> tf.reshape([7], []).numpy()
		7
		
		More examples:
		
		>>> t = [1, 2, 3, 4, 5, 6, 7, 8, 9]
		>>> print(tf.shape(t).numpy())
		[9]
		>>> tf.reshape(t, [3, 3])
		<tf.Tensor: shape=(3, 3), dtype=int32, numpy=
		  array([[1, 2, 3],
		         [4, 5, 6],
		         [7, 8, 9]], dtype=int32)>
		
		>>> t = [[[1, 1], [2, 2]],
		...      [[3, 3], [4, 4]]]
		>>> print(tf.shape(t).numpy())
		[2 2 2]
		>>> tf.reshape(t, [2, 4])
		<tf.Tensor: shape=(2, 4), dtype=int32, numpy=
		  array([[1, 1, 2, 2],
		         [3, 3, 4, 4]], dtype=int32)>
		
		>>> t = [[[1, 1, 1],
		...       [2, 2, 2]],
		...      [[3, 3, 3],
		...       [4, 4, 4]],
		...      [[5, 5, 5],
		...       [6, 6, 6]]]
		>>> print(tf.shape(t).numpy())
		[3 2 3]
		>>> # Pass '[-1]' to flatten 't'.
		>>> tf.reshape(t, [-1])
		<tf.Tensor: shape=(18,), dtype=int32,
		  numpy=array([1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6],
		  dtype=int32)>
		>>> # -- Using -1 to infer the shape --
		>>> # Here -1 is inferred to be 9:
		>>> tf.reshape(t, [2, -1])
		<tf.Tensor: shape=(2, 9), dtype=int32, numpy=
		  array([[1, 1, 1, 2, 2, 2, 3, 3, 3],
		         [4, 4, 4, 5, 5, 5, 6, 6, 6]], dtype=int32)>
		>>> # -1 is inferred to be 2:
		>>> tf.reshape(t, [-1, 9])
		<tf.Tensor: shape=(2, 9), dtype=int32, numpy=
		  array([[1, 1, 1, 2, 2, 2, 3, 3, 3],
		         [4, 4, 4, 5, 5, 5, 6, 6, 6]], dtype=int32)>
		>>> # -1 is inferred to be 3:
		>>> tf.reshape(t, [ 2, -1, 3])
		<tf.Tensor: shape=(2, 3, 3), dtype=int32, numpy=
		  array([[[1, 1, 1],
		          [2, 2, 2],
		          [3, 3, 3]],
		         [[4, 4, 4],
		          [5, 5, 5],
		          [6, 6, 6]]], dtype=int32)>
		
		Args:
		  tensor: A `Tensor`.
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Defines the shape of the output tensor.
		  name: Optional string. A name for the operation.
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function reshape(tensor:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	static public var resource : Dynamic;
	/**
		Returns `True` if resource variables are enabled.
		
		Resource variables are improved versions of TensorFlow variables with a
		well-defined memory model. Accessing a resource variable reads its value, and
		all ops which access a specific read value of the variable are guaranteed to
		see the same value for that tensor. Writes which happen after a read (by
		having a control or data dependency on the read) are guaranteed not to affect
		the value of the read tensor, and similarly writes which happen before a read
		are guaranteed to affect the value. No guarantees are made about unordered
		read/write pairs.
		
		Calling tf.enable_resource_variables() lets you opt-in to this TensorFlow 2.0
		feature.
	**/
	static public function resource_variables_enabled():Dynamic;
	/**
		Reverses specific dimensions of a tensor.
		
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
		  tensor: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `uint16`, `int16`, `int32`, `uint32`, `int64`, `uint64`, `bool`, `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`, `string`.
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
		Reverses variable length slices. (deprecated arguments) (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(seq_dim)`. They will be removed in a future version.
		Instructions for updating:
		seq_dim is deprecated, use seq_axis instead
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(batch_dim)`. They will be removed in a future version.
		Instructions for updating:
		batch_dim is deprecated, use batch_axis instead
		
		This op first slices `input` along the dimension `batch_axis`, and for
		each slice `i`, reverses the first `seq_lengths[i]` elements along the
		dimension `seq_axis`.
		
		The elements of `seq_lengths` must obey `seq_lengths[i] <=
		input.dims[seq_axis]`, and `seq_lengths` must be a vector of length
		`input.dims[batch_axis]`.
		
		The output slice `i` along dimension `batch_axis` is then given by
		input slice `i`, with the first `seq_lengths[i]` slices along
		dimension `seq_axis` reversed.
		
		Example usage:
		
		>>> seq_lengths = [7, 2, 3, 5]
		>>> input = [[1, 2, 3, 4, 5, 0, 0, 0], [1, 2, 0, 0, 0, 0, 0, 0],
		...          [1, 2, 3, 4, 0, 0, 0, 0], [1, 2, 3, 4, 5, 6, 7, 8]]
		>>> output = tf.reverse_sequence(input, seq_lengths, seq_axis=1, batch_axis=0)
		>>> output
		<tf.Tensor: shape=(4, 8), dtype=int32, numpy=
		array([[0, 0, 5, 4, 3, 2, 1, 0],
		       [2, 1, 0, 0, 0, 0, 0, 0],
		       [3, 2, 1, 4, 0, 0, 0, 0],
		       [5, 4, 3, 2, 1, 6, 7, 8]], dtype=int32)>
		
		Args:
		  input: A `Tensor`. The input to reverse.
		  seq_lengths: A `Tensor`. Must be one of the following types: `int32`,
		    `int64`. 1-D with length `input.dims(batch_axis)` and `max(seq_lengths) <=
		    input.dims(seq_axis)`
		  seq_axis: An `int`. The dimension which is partially reversed.
		  batch_axis: An optional `int`. Defaults to `0`. The dimension along which
		    reversal is performed.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor. Has the same type as input.
	**/
	static public function reverse_sequence(input:Dynamic, seq_lengths:Dynamic, ?seq_axis:Dynamic, ?batch_axis:Dynamic, ?name:Dynamic, ?seq_dim:Dynamic, ?batch_dim:Dynamic):Dynamic;
	/**
		Reverses specific dimensions of a tensor.
		
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
		  tensor: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `uint16`, `int16`, `int32`, `uint32`, `int64`, `uint64`, `bool`, `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`, `string`.
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
	static public function roll(input:Dynamic, shift:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes reciprocal of square root of x element-wise.
		
		For example:
		
		>>> x = tf.constant([2., 0., -2.])
		>>> tf.math.rsqrt(x)
		<tf.Tensor: shape=(3,), dtype=float32,
		numpy=array([0.707, inf, nan], dtype=float32)>
		
		Args:
		  x: A `tf.Tensor`. Must be one of the following types: `bfloat16`, `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor`. Has the same type as `x`.
	**/
	static public function rsqrt(x:Dynamic, ?name:Dynamic):Dynamic;
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
		Multiplies a scalar times a `Tensor` or `IndexedSlices` object.
		
		This is a special case of `tf.math.multiply`, where the first value must be a
		`scalar`. Unlike the general form of `tf.math.multiply`, this is operation is
		guaranteed to be efficient for `tf.IndexedSlices`.
		
		>>> x = tf.reshape(tf.range(30, dtype=tf.float32), [10, 3])
		>>> with tf.GradientTape() as g:
		...   g.watch(x)
		...   y = tf.gather(x, [1, 2])  # IndexedSlices
		...   z = tf.math.scalar_mul(10.0, y)
		
		Args:
		  scalar: A 0-D scalar `Tensor`. Must have known shape.
		  x: A `Tensor` or `IndexedSlices` to be scaled.
		  name: A name for the operation (optional).
		
		Returns:
		  `scalar * x` of the same type (`Tensor` or `IndexedSlices`) as `x`.
		
		Raises:
		  ValueError: if scalar is not a 0-D `scalar`.
	**/
	static public function scalar_mul(scalar:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
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
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape =
		[]`.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`,
		    `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`,
		    `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`,
		    `uint32`, `uint64`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`. A
		    tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`. A tensor of values
		    that `ref` is divided by.
		  use_locking: An optional `bool`. Defaults to `False`. If True, the operation
		    will be protected by a lock; otherwise the behavior is undefined, but may
		    exhibit less contention.
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
		    ref[indices[i, ..., j], ...] = max(ref[indices[i, ..., j], ...],
		    updates[i, ..., j, ...])
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions combine.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape =
		[]`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterAdd.png"
		alt>
		</div>
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `half`,
		    `bfloat16`, `float32`, `float64`, `int32`, `int64`. Should be from a
		    `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`. A
		    tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`. A tensor of updated
		    values to reduce into `ref`.
		  use_locking: An optional `bool`. Defaults to `False`. If True, the update
		    will be protected by a lock; otherwise the behavior is undefined, but may
		    exhibit less contention.
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
		    ref[indices[i, ..., j], ...] = min(ref[indices[i, ..., j], ...],
		    updates[i, ..., j, ...])
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions combine.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape =
		[]`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterAdd.png"
		alt>
		</div>
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `half`,
		    `bfloat16`, `float32`, `float64`, `int32`, `int64`. Should be from a
		    `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`. A
		    tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`. A tensor of updated
		    values to reduce into `ref`.
		  use_locking: An optional `bool`. Defaults to `False`. If True, the update
		    will be protected by a lock; otherwise the behavior is undefined, but may
		    exhibit less contention.
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
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape =
		[]`.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`,
		    `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`,
		    `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`,
		    `uint32`, `uint64`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`. A
		    tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`. A tensor of updated
		    values to multiply to `ref`.
		  use_locking: An optional `bool`. Defaults to `False`. If True, the operation
		    will be protected by a lock; otherwise the behavior is undefined, but may
		    exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function scatter_mul(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Scatters `updates` into a tensor of shape `shape` according to `indices`.
		
		Update the input tensor by scattering sparse `updates` according to individual values at the specified `indices`.
		This op returns an `output` tensor with the `shape` you specify. This op is the
		inverse of the `tf.gather_nd` operator which extracts values or slices from a
		given tensor.
		
		This operation is similar to `tf.tensor_scatter_add`, except that the tensor is
		zero-initialized. Calling `tf.scatter_nd(indices, values, shape)`
		is identical to calling
		`tf.tensor_scatter_add(tf.zeros(shape, values.dtype), indices, values)`.
		
		If `indices` contains duplicates, the duplicate `values` are accumulated
		(summed).
		
		**WARNING**: The order in which updates are applied is nondeterministic, so the
		output will be nondeterministic if `indices` contains duplicates;
		numbers summed in different order may yield different results because of some
		numerical approximation issues.
		
		`indices` is an integer tensor of shape `shape`. The last dimension
		of `indices` can be at most the rank of `shape`:
		
		    indices.shape[-1] <= shape.rank
		
		The last dimension of `indices` corresponds to indices of elements
		(if `indices.shape[-1] = shape.rank`) or slices
		(if `indices.shape[-1] < shape.rank`) along dimension `indices.shape[-1]` of
		`shape`.
		
		`updates` is a tensor with shape:
		
		    indices.shape[:-1] + shape[indices.shape[-1]:]
		
		The simplest form of the scatter op is to insert individual elements in
		a tensor by index. Consider an example where you want to insert 4 scattered
		elements in a rank-1 tensor with 8 elements.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterNd1.png" alt>
		</div>
		
		In Python, this scatter operation would look like this:
		
		```python
		    indices = tf.constant([[4], [3], [1], [7]])
		    updates = tf.constant([9, 10, 11, 12])
		    shape = tf.constant([8])
		    scatter = tf.scatter_nd(indices, updates, shape)
		    print(scatter)
		```
		
		The resulting tensor would look like this:
		
		    [0, 11, 0, 10, 9, 0, 0, 12]
		
		You can also insert entire slices of a higher rank tensor all at once. For
		example, you can insert two slices in the first dimension of a rank-3 tensor
		with two matrices of new values.
		
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
		    print(scatter)
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
		    Tensor of indices.
		  updates: A `Tensor`. Values to scatter into the output tensor.
		  shape: A `Tensor`. Must have the same type as `indices`.
		    1-D. The shape of the output tensor.
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
		[d_0, ..., d_{Q-2}, ref.shape[K], ..., ref.shape[P-1]]
		```
		
		For example, say we want to add 4 scattered elements to a rank-1 tensor to
		8 elements. In Python, that addition would look like this:
		
		```python
		ref = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
		indices = tf.constant([[4], [3], [1], [7]])
		updates = tf.constant([9, 10, 11, 12])
		add = tf.compat.v1.scatter_nd_add(ref, indices, updates)
		with tf.compat.v1.Session() as sess:
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
		    If True, the assignment will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function scatter_nd_add(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
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
		[d_0, ..., d_{Q-2}, ref.shape[K], ..., ref.shape[P-1]]
		```
		
		For example, say we want to subtract 4 scattered elements from a rank-1 tensor
		with 8 elements. In Python, that update would look like this:
		
		```python
		ref = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
		indices = tf.constant([[4], [3], [1] ,[7]])
		updates = tf.constant([9, 10, 11, 12])
		op = tf.compat.v1.scatter_nd_sub(ref, indices, updates)
		with tf.compat.v1.Session() as sess:
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
		    update = tf.compat.v1.scatter_nd_update(ref, indices, updates)
		    with tf.compat.v1.Session() as sess:
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
		Searches for where a value would go in a sorted sequence.
		
		This is not a method for checking containment (like python `in`).
		
		The typical use case for this operation is "binning", "bucketing", or
		"discretizing". The `values` are assigned to bucket-indices based on the
		**edges** listed in `sorted_sequence`. This operation
		returns the bucket-index for each value.
		
		>>> edges = [-1, 3.3, 9.1, 10.0]
		>>> values = [0.0, 4.1, 12.0]
		>>> tf.searchsorted(edges, values).numpy()
		array([1, 2, 4], dtype=int32)
		
		The `side` argument controls which index is returned if a value lands exactly
		on an edge:
		
		>>> seq = [0, 3, 9, 10, 10]
		>>> values = [0, 4, 10]
		>>> tf.searchsorted(seq, values).numpy()
		array([0, 2, 3], dtype=int32)
		>>> tf.searchsorted(seq, values, side="right").numpy()
		array([1, 2, 5], dtype=int32)
		
		The `axis` is not settable for this operation. It always operates on the
		innermost dimension (`axis=-1`). The operation will accept any number of
		outer dimensions. Here it is applied to the rows of a matrix:
		
		>>> sorted_sequence = [[0., 3., 8., 9., 10.],
		...                    [1., 2., 3., 4., 5.]]
		>>> values = [[9.8, 2.1, 4.3],
		...           [0.1, 6.6, 4.5, ]]
		>>> tf.searchsorted(sorted_sequence, values).numpy()
		array([[4, 1, 2],
		       [0, 5, 4]], dtype=int32)
		
		Note: This operation assumes that `sorted_sequence` **is sorted** along the
		innermost axis, maybe using `tf.sort(..., axis=-1)`. **If the sequence is not
		sorted no error is raised** and the content of the returned tensor is not well
		defined.
		
		Args:
		  sorted_sequence: N-D `Tensor` containing a sorted sequence.
		  values: N-D `Tensor` containing the search values.
		  side: 'left' or 'right'; 'left' corresponds to lower_bound and 'right' to
		    upper_bound.
		  out_type: The output type (`int32` or `int64`).  Default is `tf.int32`.
		  name: Optional name for the operation.
		
		Returns:
		  An N-D `Tensor` the size of `values` containing the result of applying
		  either lower_bound or upper_bound (depending on side) to each value.  The
		  result is not a global index to the entire `Tensor`, but the index in the
		  last dimension.
		
		Raises:
		  ValueError: If the last dimension of `sorted_sequence >= 2^31-1` elements.
		              If the total size of `values` exceeds `2^31 - 1` elements.
		              If the first `N-1` dimensions of the two tensors don't match.
	**/
	static public function searchsorted(sorted_sequence:Dynamic, values:Dynamic, ?side:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the maximum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \max_j(data_j)\\) where `max` is over `j` such
		that `segment_ids[j] == i`.
		
		If the max is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentMax.png" alt>
		</div>
		
		For example:
		
		```
		c = tf.constant([[1,2,3,4], [4, 3, 2, 1], [5,6,7,8]])
		tf.segment_max(c, tf.constant([0, 0, 1]))
		# ==> [[4, 3, 3, 4],
		#      [5, 6, 7, 8]]
		```
		
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
		Computes the mean along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \frac{\sum_j data_j}{N}\\) where `mean` is
		over `j` such that `segment_ids[j] == i` and `N` is the total number of
		values summed.
		
		If the mean is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentMean.png" alt>
		</div>
		
		For example:
		
		```
		c = tf.constant([[1.0,2,3,4], [4, 3, 2, 1], [5,6,7,8]])
		tf.segment_mean(c, tf.constant([0, 0, 1]))
		# ==> [[2.5, 2.5, 2.5, 2.5],
		#      [5, 6, 7, 8]]
		```
		
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
		Computes the minimum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \min_j(data_j)\\) where `min` is over `j` such
		that `segment_ids[j] == i`.
		
		If the min is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentMin.png" alt>
		</div>
		
		For example:
		
		```
		c = tf.constant([[1,2,3,4], [4, 3, 2, 1], [5,6,7,8]])
		tf.segment_min(c, tf.constant([0, 0, 1]))
		# ==> [[1, 2, 2, 1],
		#      [5, 6, 7, 8]]
		```
		
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
		Computes the product along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \prod_j data_j\\) where the product is over `j` such
		that `segment_ids[j] == i`.
		
		If the product is empty for a given segment ID `i`, `output[i] = 1`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentProd.png" alt>
		</div>
		
		For example:
		
		```
		c = tf.constant([[1,2,3,4], [4, 3, 2, 1], [5,6,7,8]])
		tf.segment_prod(c, tf.constant([0, 0, 1]))
		# ==> [[4, 6, 6, 4],
		#      [5, 6, 7, 8]]
		```
		
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
		Computes the sum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \sum_j data_j\\) where sum is over `j` such
		that `segment_ids[j] == i`.
		
		If the sum is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentSum.png" alt>
		</div>
		
		For example:
		
		```
		c = tf.constant([[1,2,3,4], [4, 3, 2, 1], [5,6,7,8]])
		tf.segment_sum(c, tf.constant([0, 0, 1]))
		# ==> [[5, 5, 5, 5],
		#      [5, 6, 7, 8]]
		```
		
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
		Computes the eigenvalues of one or more self-adjoint matrices.
		
		Note: If your program backpropagates through this function, you should replace
		it with a call to tf.linalg.eigh (possibly ignoring the second output) to
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
		Transforms a Tensor into a serialized TensorProto proto.
		
		This operation transforms data in a `tf.Tensor` into a `tf.Tensor` of type
		`tf.string` containing the data in a binary string format. This operation can
		transform scalar data and linear arrays, but it is most useful in converting
		multidimensional arrays into a format accepted by binary storage formats such
		as a `TFRecord` or `tf.train.Example`.
		
		See also:
		- `tf.io.parse_tensor`: inverse operation of `tf.io.serialize_tensor` that
		transforms a scalar string containing a serialized Tensor into a Tensor of a
		specified type.
		- `tf.ensure_shape`: `parse_tensor` cannot statically determine the shape of
		the parsed tensor. Use `tf.ensure_shape` to set the static shape when running
		under a `tf.function`
		- `.SerializeToString`, serializes a proto to a binary-string
		
		Example of serializing scalar data:
		
		>>> t = tf.constant(1)
		>>> tf.io.serialize_tensor(t)
		<tf.Tensor: shape=(), dtype=string, numpy=b'\x08...\x00'>
		
		Example of storing non-scalar data into a `tf.train.Example`:
		
		>>> t1 = [[1, 2]]
		>>> t2 = [[7, 8]]
		>>> nonscalar = tf.concat([t1, t2], 0)
		>>> nonscalar
		<tf.Tensor: shape=(2, 2), dtype=int32, numpy=
		array([[1, 2],
		       [7, 8]], dtype=int32)>
		
		Serialize the data using `tf.io.serialize_tensor`.
		
		>>> serialized_nonscalar = tf.io.serialize_tensor(nonscalar)
		>>> serialized_nonscalar
		<tf.Tensor: shape=(), dtype=string, numpy=b'\x08...\x00'>
		
		Store the data in a `tf.train.Feature`.
		
		>>> feature_of_bytes = tf.train.Feature(
		...   bytes_list=tf.train.BytesList(value=[serialized_nonscalar.numpy()]))
		>>> feature_of_bytes
		bytes_list {
		  value: "\010...\000"
		}
		
		Put the `tf.train.Feature` message into a `tf.train.Example`.
		
		>>> features_for_example = {
		...   'feature0': feature_of_bytes
		... }
		>>> example_proto = tf.train.Example(
		...   features=tf.train.Features(feature=features_for_example))
		>>> example_proto
		features {
		  feature {
		    key: "feature0"
		    value {
		      bytes_list {
		        value: "\010...\000"
		      }
		    }
		  }
		}
		
		Args:
		  tensor: A `tf.Tensor`.
		  name: string.  Optional name for the op.
		
		Returns:
		  A Tensor of dtype string.
	**/
	static public function serialize_tensor(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sets the graph-level random seed for the default graph.
		
		Operations that rely on a random seed actually derive it from two seeds:
		the graph-level and operation-level seeds. This sets the graph-level seed.
		
		Its interactions with operation-level seeds is as follows:
		
		  1. If neither the graph-level nor the operation seed is set:
		    A random seed is used for this op.
		  2. If the graph-level seed is set, but the operation seed is not:
		    The system deterministically picks an operation seed in conjunction with
		    the graph-level seed so that it gets a unique random sequence. Within the
		    same version of tensorflow and user code, this sequence is deterministic.
		    However across different versions, this sequence might change. If the
		    code depends on particular seeds to work, specify both graph-level
		    and operation-level seeds explicitly.
		  3. If the graph-level seed is not set, but the operation seed is set:
		    A default graph-level seed and the specified operation seed are used to
		    determine the random sequence.
		  4. If both the graph-level and the operation seed are set:
		    Both seeds are used in conjunction to determine the random sequence.
		
		To illustrate the user-visible effects, consider these examples:
		
		To generate different sequences across sessions, set neither
		graph-level nor op-level seeds:
		
		```python
		a = tf.random.uniform([1])
		b = tf.random.normal([1])
		
		print("Session 1")
		with tf.compat.v1.Session() as sess1:
		  print(sess1.run(a))  # generates 'A1'
		  print(sess1.run(a))  # generates 'A2'
		  print(sess1.run(b))  # generates 'B1'
		  print(sess1.run(b))  # generates 'B2'
		
		print("Session 2")
		with tf.compat.v1.Session() as sess2:
		  print(sess2.run(a))  # generates 'A3'
		  print(sess2.run(a))  # generates 'A4'
		  print(sess2.run(b))  # generates 'B3'
		  print(sess2.run(b))  # generates 'B4'
		```
		
		To generate the same repeatable sequence for an op across sessions, set the
		seed for the op:
		
		```python
		a = tf.random.uniform([1], seed=1)
		b = tf.random.normal([1])
		
		# Repeatedly running this block with the same graph will generate the same
		# sequence of values for 'a', but different sequences of values for 'b'.
		print("Session 1")
		with tf.compat.v1.Session() as sess1:
		  print(sess1.run(a))  # generates 'A1'
		  print(sess1.run(a))  # generates 'A2'
		  print(sess1.run(b))  # generates 'B1'
		  print(sess1.run(b))  # generates 'B2'
		
		print("Session 2")
		with tf.compat.v1.Session() as sess2:
		  print(sess2.run(a))  # generates 'A1'
		  print(sess2.run(a))  # generates 'A2'
		  print(sess2.run(b))  # generates 'B3'
		  print(sess2.run(b))  # generates 'B4'
		```
		
		To make the random sequences generated by all ops be repeatable across
		sessions, set a graph-level seed:
		
		```python
		tf.compat.v1.random.set_random_seed(1234)
		a = tf.random.uniform([1])
		b = tf.random.normal([1])
		
		# Repeatedly running this block with the same graph will generate the same
		# sequences of 'a' and 'b'.
		print("Session 1")
		with tf.compat.v1.Session() as sess1:
		  print(sess1.run(a))  # generates 'A1'
		  print(sess1.run(a))  # generates 'A2'
		  print(sess1.run(b))  # generates 'B1'
		  print(sess1.run(b))  # generates 'B2'
		
		print("Session 2")
		with tf.compat.v1.Session() as sess2:
		  print(sess2.run(a))  # generates 'A1'
		  print(sess2.run(a))  # generates 'A2'
		  print(sess2.run(b))  # generates 'B1'
		  print(sess2.run(b))  # generates 'B2'
		```
		
		@compatibility(TF2)
		'tf.compat.v1.set_random_seed' is compatible with eager mode. However,
		in eager mode this API will set the global seed instead of the
		graph-level seed of the default graph. In TF2 this API is changed to
		[tf.random.set_seed]
		(https://www.tensorflow.org/api_docs/python/tf/random/set_seed).
		@end_compatibility
		
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
		  out_type: (Optional) The specified output type of the operation (`int32`
		  or `int64`). Defaults to `tf.int32`.
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function shape(input:Dynamic, ?name:Dynamic, ?out_type:Dynamic):Dynamic;
	/**
		Returns shape of tensors.
		
		Args:
		  input: A list of at least 1 `Tensor` object with the same type.
		  out_type: The specified output type of the operation (`int32` or `int64`).
		    Defaults to `tf.int32`(optional).
		  name: A name for the operation (optional).
		
		Returns:
		  A list with the same length as `input` of `Tensor` objects with
		    type `out_type`.
	**/
	static public function shape_n(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sigmoid of `x` element-wise.
		
		Formula for calculating $\mathrm{sigmoid}(x) = y = 1 / (1 + \exp(-x))$.
		
		For $x \in (-\infty, \infty)$, $\mathrm{sigmoid}(x) \in (0, 1)$.
		
		Example Usage:
		
		If a positive number is large, then its sigmoid will approach to 1 since the
		formula will be `y = <large_num> / (1 + <large_num>)`
		
		>>> x = tf.constant([0.0, 1.0, 50.0, 100.0])
		>>> tf.math.sigmoid(x)
		<tf.Tensor: shape=(4,), dtype=float32,
		numpy=array([0.5      , 0.7310586, 1.       , 1.       ], dtype=float32)>
		
		If a negative number is large, its sigmoid will approach to 0 since the
		formula will be `y = 1 / (1 + <large_num>)`
		
		>>> x = tf.constant([-100.0, -50.0, -1.0, 0.0])
		>>> tf.math.sigmoid(x)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=
		array([0.0000000e+00, 1.9287499e-22, 2.6894143e-01, 0.5],
		      dtype=float32)>
		
		Args:
		  x: A Tensor with type `float16`, `float32`, `float64`, `complex64`, or
		    `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor with the same type as `x`.
		
		Usage Example:
		
		>>> x = tf.constant([-128.0, 0.0, 128.0], dtype=tf.float32)
		>>> tf.sigmoid(x)
		<tf.Tensor: shape=(3,), dtype=float32,
		numpy=array([0. , 0.5, 1. ], dtype=float32)>
		
		@compatibility(scipy)
		Equivalent to scipy.special.expit
		@end_compatibility
	**/
	static public function sigmoid(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns an element-wise indication of the sign of a number.
		
		`y = sign(x) = -1 if x < 0; 0 if x == 0; 1 if x > 0`.
		
		For complex numbers, `y = sign(x) = x / |x| if x != 0, otherwise y = 0`.
		
		Example usage:
		
		>>> # real number
		>>> tf.math.sign([0., 2., -3.])
		<tf.Tensor: shape=(3,), dtype=float32,
		numpy=array([ 0.,  1., -1.], dtype=float32)>
		
		>>> # complex number
		>>> tf.math.sign([1 + 1j, 0 + 0j])
		<tf.Tensor: shape=(2,), dtype=complex128,
		numpy=array([0.70710678+0.70710678j, 0.        +0.j        ])>
		
		Args:
		 x: A Tensor. Must be one of the following types: bfloat16, half, float32,
		   float64, int32, int64, complex64, complex128.
		 name: A name for the operation (optional).
		
		Returns:
		 A Tensor. Has the same type as x.
		
		 If x is a SparseTensor, returns SparseTensor(x.indices,
		   tf.math.sign(x.values, ...), x.dense_shape).
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.sign(x.values, ...), x.dense_shape)`
	**/
	static public function sign(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sine of x element-wise.
		
		  Given an input tensor, this function computes sine of every
		  element in the tensor. Input range is `(-inf, inf)` and
		  output range is `[-1,1]`.
		
		  ```python
		  x = tf.constant([-float("inf"), -9, -0.5, 1, 1.2, 200, 10, float("inf")])
		  tf.math.sin(x) ==> [nan -0.4121185 -0.47942555 0.84147096 0.9320391 -0.87329733 -0.54402107 nan]
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function sin(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes hyperbolic sine of x element-wise.
		
		  Given an input tensor, this function computes hyperbolic sine of every
		  element in the tensor. Input range is `[-inf,inf]` and output range
		  is `[-inf,inf]`.
		
		  ```python
		  x = tf.constant([-float("inf"), -9, -0.5, 1, 1.2, 2, 10, float("inf")])
		  tf.math.sinh(x) ==> [-inf -4.0515420e+03 -5.2109528e-01 1.1752012e+00 1.5094614e+00 3.6268604e+00 1.1013232e+04 inf]
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function sinh(x:Dynamic, ?name:Dynamic):Dynamic;
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
		  out_type: (Optional) The specified non-quantized numeric output type of the
		    operation. Defaults to `tf.int32`.
		
		Returns:
		  A `Tensor` of type `out_type`. Defaults to `tf.int32`.
		
		@compatibility(numpy)
		Equivalent to np.size()
		@end_compatibility
	**/
	static public function size(input:Dynamic, ?name:Dynamic, ?out_type:Dynamic):Dynamic;
	/**
		Extracts a slice from a tensor.
		
		See also `tf.strided_slice`.
		
		This operation extracts a slice of size `size` from a tensor `input_` starting
		at the location specified by `begin`. The slice `size` is represented as a
		tensor shape, where `size[i]` is the number of elements of the 'i'th dimension
		of `input_` that you want to slice. The starting location (`begin`) for the
		slice is represented as an offset in each dimension of `input_`. In other
		words, `begin[i]` is the offset into the i'th dimension of `input_` that you
		want to slice from.
		
		Note that `tf.Tensor.__getitem__` is typically a more pythonic way to
		perform slices, as it allows you to write `foo[3:7, :-2]` instead of
		`tf.slice(foo, [3, 0], [4, foo.get_shape()[1]-2])`.
		
		`begin` is zero-based; `size` is one-based. If `size[i]` is -1,
		all remaining elements in dimension i are included in the
		slice. In other words, this is equivalent to setting:
		
		`size[i] = input_.dim_size(i) - begin[i]`
		
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
		  A `Tensor` the same type as `input_`.
	**/
	static public function slice(input_:Dynamic, begin:Dynamic, size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sorts a tensor.
		
		Usage:
		
		>>> a = [1, 10, 26.9, 2.8, 166.32, 62.3]
		>>> tf.sort(a).numpy()
		array([  1.  ,   2.8 ,  10.  ,  26.9 ,  62.3 , 166.32], dtype=float32)
		
		>>> tf.sort(a, direction='DESCENDING').numpy()
		array([166.32,  62.3 ,  26.9 ,  10.  ,   2.8 ,   1.  ], dtype=float32)
		
		For multidimensional inputs you can control which axis the sort is applied
		along. The default `axis=-1` sorts the innermost axis.
		
		>>> mat = [[3,2,1],
		...        [2,1,3],
		...        [1,3,2]]
		>>> tf.sort(mat, axis=-1).numpy()
		array([[1, 2, 3],
		       [1, 2, 3],
		       [1, 2, 3]], dtype=int32)
		>>> tf.sort(mat, axis=0).numpy()
		array([[1, 1, 1],
		       [2, 2, 2],
		       [3, 3, 3]], dtype=int32)
		
		See also:
		
		  * `tf.argsort`: Like sort, but it returns the sort indices.
		  * `tf.math.top_k`: A partial sort that returns a fixed number of top values
		    and corresponding indices.
		
		
		Args:
		  values: 1-D or higher **numeric** `Tensor`.
		  axis: The axis along which to sort. The default is -1, which sorts the last
		    axis.
		  direction: The direction in which to sort the values (`'ASCENDING'` or
		    `'DESCENDING'`).
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` with the same dtype and shape as `values`, with the elements
		      sorted along the given `axis`.
		
		Raises:
		  tf.errors.InvalidArgumentError: If the `values.dtype` is not a `float` or
		      `int` type.
		  ValueError: If axis is not a constant scalar, or the direction is invalid.
	**/
	static public function sort(values:Dynamic, ?axis:Dynamic, ?direction:Dynamic, ?name:Dynamic):Dynamic;
	/**
		SpaceToBatch for 4-D tensors of type T.
		
		This is a legacy version of the more general SpaceToBatchND.
		
		Zero-pads and then rearranges (permutes) blocks of spatial data into batch.
		More specifically, this op outputs a copy of the input tensor where values from
		the `height` and `width` dimensions are moved to the `batch` dimension. After
		the zero-padding, both `height` and `width` of the input must be divisible by the
		block size.
		
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
		[[[[1, 2, 3]]], [[[4, 5, 6]]], [[[7, 8, 9]]], [[[10, 11, 12]]]]
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
		
		Args:
		  input: A `Tensor`. 4-D with shape `[batch, height, width, depth]`.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D tensor of non-negative integers with shape `[2, 2]`. It specifies
		      the padding of the input with zeros across the spatial dimensions as follows:
		
		          paddings = [[pad_top, pad_bottom], [pad_left, pad_right]]
		
		      The effective spatial dimensions of the zero-padded input tensor will be:
		
		          height_pad = pad_top + height + pad_bottom
		          width_pad = pad_left + width + pad_right
		  block_size: An `int` that is `>= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_batch(input:Dynamic, paddings:Dynamic, ?block_size:Dynamic, ?name:Dynamic, ?block_shape:Dynamic):Dynamic;
	/**
		SpaceToBatch for N-D tensors of type T.
		
		This operation divides "spatial" dimensions `[1, ..., M]` of the input into a
		grid of blocks of shape `block_shape`, and interleaves these blocks with the
		"batch" dimension (0) such that in the output, the spatial dimensions
		`[1, ..., M]` correspond to the position within the grid, and the batch
		dimension combines both the position within a spatial block and the original
		batch position.  Prior to division into blocks, the spatial dimensions of the
		input are optionally zero padded according to `paddings`. See below for a
		precise description.
		
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
		[[[[1, 2, 3]]], [[[4, 5, 6]]], [[[7, 8, 9]]], [[[10, 11, 12]]]]
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
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_batch_nd(input:Dynamic, block_shape:Dynamic, paddings:Dynamic, ?name:Dynamic):Dynamic;
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
		Adds two tensors, at least one of each is a `SparseTensor`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(thresh)`. They will be removed in a future version.
		Instructions for updating:
		thresh is deprecated, use threshold instead
		
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
		  b: The second operand; `SparseTensor` or `Tensor`. At least one operand
		    must be sparse.
		  threshold: An optional 0-D `Tensor` (defaults to `0`). The magnitude
		    threshold that determines if an output value/index pair takes space. Its
		    dtype should match that of the values if they are real; if the latter are
		    complex64/complex128, then the dtype should be float32/float64,
		    correspondingly.
		  thresh: Deprecated alias for `threshold`.
		
		Returns:
		  A `SparseTensor` or a `Tensor`, representing the sum.
		
		Raises:
		  TypeError: If both `a` and `b` are `Tensor`s.  Use `tf.add()` instead.
	**/
	static public function sparse_add(a:Dynamic, b:Dynamic, ?threshold:Dynamic, ?thresh:Dynamic):Dynamic;
	/**
		Concatenates a list of `SparseTensor` along the specified dimension. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(concat_dim)`. They will be removed in a future version.
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
		  expand_nonconcat_dims: alias for expand_nonconcat_dim
		
		Returns:
		  A `SparseTensor` with the concatenated output.
		
		Raises:
		  TypeError: If `sp_inputs` is not a list of `SparseTensor`.
	**/
	static public function sparse_concat(axis:Dynamic, sp_inputs:Dynamic, ?name:Dynamic, ?expand_nonconcat_dim:Dynamic, ?concat_dim:Dynamic, ?expand_nonconcat_dims:Dynamic):Dynamic;
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
	static public function sparse_matmul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the element-wise max of two SparseTensors.
		
		Assumes the two SparseTensors have the same shape, i.e., no broadcasting.
		
		Example:
		
		  >>> sp_zero = tf.sparse.SparseTensor([[0]], [0], [7])
		  >>> sp_one = tf.sparse.SparseTensor([[1]], [1], [7])
		  >>> res = tf.sparse.maximum(sp_zero, sp_one)
		  >>> res.indices
		  <tf.Tensor: shape=(2, 1), dtype=int64, numpy=
		  array([[0],
		         [1]])>
		  >>> res.values
		  <tf.Tensor: shape=(2,), dtype=int32, numpy=array([0, 1], dtype=int32)>
		  >>> res.dense_shape
		  <tf.Tensor: shape=(1,), dtype=int64, numpy=array([7])>
		
		The reduction version of this elementwise operation is `tf.sparse.reduce_max`
		
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
		Combines a batch of feature ids and values into a single `SparseTensor`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		No similar op available at this time.
		
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
		
		  >>> sp_zero = tf.sparse.SparseTensor([[0]], [0], [7])
		  >>> sp_one = tf.sparse.SparseTensor([[1]], [1], [7])
		  >>> res = tf.sparse.minimum(sp_zero, sp_one)
		  >>> res.indices
		  <tf.Tensor: shape=(2, 1), dtype=int64, numpy=
		  array([[0],
		         [1]])>
		  >>> res.values
		  <tf.Tensor: shape=(2,), dtype=int32, numpy=array([0, 0], dtype=int32)>
		  >>> res.dense_shape
		  <tf.Tensor: shape=(1,), dtype=int64, numpy=array([7])>
		
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
		x = tf.compat.v1.sparse.placeholder(tf.float32)
		y = tf.sparse.reduce_sum(x)
		
		with tf.compat.v1.Session() as sess:
		  print(sess.run(y))  # ERROR: will fail because x was not fed.
		
		  indices = np.array([[3, 2, 0], [4, 5, 1]], dtype=np.int64)
		  values = np.array([1.0, 2.0], dtype=np.float32)
		  shape = np.array([7, 9, 2], dtype=np.int64)
		  print(sess.run(y, feed_dict={
		    x: tf.compat.v1.SparseTensorValue(indices, values, shape)}))  # Will
		    succeed.
		  print(sess.run(y, feed_dict={
		    x: (indices, values, shape)}))  # Will succeed.
		
		  sp = tf.sparse.SparseTensor(indices=indices, values=values,
		                              dense_shape=shape)
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
		Computes `tf.sparse.maximum` of elements across dimensions of a SparseTensor. (deprecated arguments) (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(reduction_axes)`. They will be removed in a future version.
		Instructions for updating:
		reduction_axes is deprecated, use axis instead
		
		This is the reduction operation for the elementwise `tf.sparse.maximum` op.
		
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
		
		  # 'x' represents [[1, ?, 2]
		  #                 [?, 3, ?]]
		  # where ? is implicitly-zero.
		
		  >>> x = tf.sparse.SparseTensor([[0, 0], [0, 2], [1, 1]], [1, 2, 3], [2, 3])
		  >>> tf.sparse.reduce_max(x)
		  <tf.Tensor: shape=(), dtype=int32, numpy=3>
		  >>> tf.sparse.reduce_max(x, 0)
		  <tf.Tensor: shape=(3,), dtype=int32, numpy=array([1, 3, 2], dtype=int32)>
		  >>> tf.sparse.reduce_max(x, 1)
		  <tf.Tensor: shape=(2,), dtype=int32, numpy=array([2, 3], dtype=int32)>
		  >>> tf.sparse.reduce_max(x, 1, keepdims=True)
		  <tf.Tensor: shape=(2, 1), dtype=int32, numpy=
		  array([[2],
		         [3]], dtype=int32)>
		  >>> tf.sparse.reduce_max(x, [0, 1])
		  <tf.Tensor: shape=(), dtype=int32, numpy=3>
		
		  # 'y' represents [[-7, ?]
		  #                 [ 4, 3]
		  #                 [ ?, ?]
		
		  >>> y = tf.sparse.SparseTensor([[0, 0,], [1, 0], [1, 1]], [-7, 4, 3],
		  ... [3, 2])
		  >>> tf.sparse.reduce_max(y, 1)
		  <tf.Tensor: shape=(3,), dtype=int32, numpy=array([-7,  4,  0], dtype=int32)>
		
		Args:
		  sp_input: The SparseTensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce; list or scalar. If `None` (the
		    default), reduces all dimensions.
		  keepdims: If true, retain reduced dimensions with length 1.
		  reduction_axes: Deprecated name of `axis`.
		  keep_dims:  Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced Tensor.
	**/
	static public function sparse_reduce_max(sp_input:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?reduction_axes:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the max of elements across dimensions of a SparseTensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
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
		Computes `tf.sparse.add` of elements across dimensions of a SparseTensor. (deprecated arguments) (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(reduction_axes)`. They will be removed in a future version.
		Instructions for updating:
		reduction_axes is deprecated, use axis instead
		
		This is the reduction operation for the elementwise `tf.sparse.add` op.
		
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
		
		  # 'x' represents [[1, ?, 1]
		  #                 [?, 1, ?]]
		  # where ? is implicitly-zero.
		
		  >>> x = tf.sparse.SparseTensor([[0, 0], [0, 2], [1, 1]], [1, 1, 1], [2, 3])
		  >>> tf.sparse.reduce_sum(x)
		  <tf.Tensor: shape=(), dtype=int32, numpy=3>
		  >>> tf.sparse.reduce_sum(x, 0)
		  <tf.Tensor: shape=(3,), dtype=int32, numpy=array([1, 1, 1], dtype=int32)>
		  >>> tf.sparse.reduce_sum(x, 1)  # Can also use -1 as the axis
		  <tf.Tensor: shape=(2,), dtype=int32, numpy=array([2, 1], dtype=int32)>
		  >>> tf.sparse.reduce_sum(x, 1, keepdims=True)
		  <tf.Tensor: shape=(2, 1), dtype=int32, numpy=
		  array([[2],
		         [1]], dtype=int32)>
		  >>> tf.sparse.reduce_sum(x, [0, 1])
		  <tf.Tensor: shape=(), dtype=int32, numpy=3>
		
		Args:
		  sp_input: The SparseTensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce; list or scalar. If `None` (the
		    default), reduces all dimensions.
		  keepdims: If true, retain reduced dimensions with length 1.
		  reduction_axes: Deprecated name of `axis`.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced Tensor.
	**/
	static public function sparse_reduce_sum(sp_input:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?reduction_axes:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the sum of elements across dimensions of a SparseTensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
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
		  A `SparseTensor` indices and values unchanged from `sp_input`. Its shape is
		    `new_shape` if that is set. Otherwise it is the tight bounding box of
		     `sp_input`
		
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
		segmentation](https://www.tensorflow.org/versions/r2.0/api_docs/python/tf/math#about_segmentation)
		for an explanation of segments.
		
		Like `tf.math.segment_mean`, but `segment_ids` can have rank less than
		`data`'s first dimension, selecting a subset of dimension 0, specified by
		`indices`.
		`segment_ids` is allowed to have missing ids, in which case the output will
		be zeros at those indices. In those cases `num_segments` is used to determine
		the size of the output.
		
		Args:
		  data: A `Tensor` with data that will be assembled in the output.
		  indices: A 1-D `Tensor` with indices into `data`. Has same rank as
		    `segment_ids`.
		  segment_ids: A 1-D `Tensor` with indices into the output `Tensor`. Values
		    should be sorted and can be repeated.
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
		Computes the sum along sparse segments of a tensor divided by the sqrt(N).
		
		`N` is the size of the segment being reduced.
		
		Args:
		  data: A `Tensor` with data that will be assembled in the output.
		  indices: A 1-D `Tensor` with indices into `data`. Has same rank as
		    `segment_ids`.
		  segment_ids: A 1-D `Tensor` with indices into the output `Tensor`. Values
		    should be sorted and can be repeated.
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
		Computes the sum along sparse segments of a tensor.
		
		Read [the section on
		segmentation](https://www.tensorflow.org/versions/r2.0/api_docs/python/tf/math#about_segmentation)
		for an explanation of segments.
		
		Like `tf.math.segment_sum`, but `segment_ids` can have rank less than `data`'s
		first dimension, selecting a subset of dimension 0, specified by `indices`.
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
		tf.math.segment_sum(c, tf.constant([0, 0, 1]))
		```
		
		Args:
		  data: A `Tensor` with data that will be assembled in the output.
		  indices: A 1-D `Tensor` with indices into `data`. Has same rank as
		    `segment_ids`.
		  segment_ids: A 1-D `Tensor` with indices into the output `Tensor`. Values
		    should be sorted and can be repeated.
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
		Slice a `SparseTensor` based on the `start` and `size`.
		
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
		
		result = tf.sparse.softmax(tf.sparse.SparseTensor(indices, values, shape))
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
		Split a `SparseTensor` into `num_split` tensors along `axis`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(split_dim)`. They will be removed in a future version.
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
		    [    a   ]
		    [b c     ]
		
		    output_tensor[1] =
		    [ d e  ]
		    [      ]
		
		Args:
		  keyword_required: Python 2 standin for * (temporary for argument reorder)
		  sp_input: The `SparseTensor` to split.
		  num_split: A Python integer. The number of ways to split.
		  axis: A 0-D `int32` `Tensor`. The dimension along which to split. Must be in
		    range [-rank, rank), where rank is the number of dimensions in the input
		    `SparseTensor`.
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
		Multiply SparseTensor (or dense Matrix) (of rank 2) "A" by dense matrix
		
		(or SparseTensor) "B". Please note that one and only one of the inputs MUST
		be a SparseTensor and the other MUST be a dense matrix.
		
		The following input format is recommended (but not required) for optimal
		performance:
		
		* If `adjoint_a == false`: `A` should be sorted in lexicographically
		  increasing order.  Use `sparse.reorder` if you're not sure.
		* If `adjoint_a == true`: `A` should be sorted in order of increasing
		  dimension 1 (i.e., "column major" order instead of "row major" order).
		
		Args:
		  sp_a: SparseTensor (or dense Matrix) A, of rank 2.
		  b: dense Matrix (or SparseTensor) B, with the same dtype as sp_a.
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
		
		Notes:
		
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
	**/
	static public function sparse_tensor_dense_matmul(sp_a:Dynamic, b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a `SparseTensor` into a dense tensor.
		
		For this sparse tensor with three non-empty values:
		
		>>> sp_input = tf.SparseTensor(
		...   dense_shape=[3, 5],
		...   values=[7, 8, 9],
		...   indices =[[0, 1],
		...             [0, 3],
		...             [2, 0]])
		
		The output will be a dense `[3, 5]` tensor with values:
		
		>>> tf.sparse.to_dense(sp_input).numpy()
		array([[0, 7, 0, 8, 0],
		       [0, 0, 0, 0, 0],
		       [9, 0, 0, 0, 0]], dtype=int32)
		
		Note: Indices must be without repeats.  This is only tested if
		`validate_indices` is `True`.
		
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
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
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
		    [1, 1, 1]: 150
		    [1, 1, 2]: 149
		    [1, 1, 3]: 150
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
		Splits a tensor `value` into a list of sub tensors.
		
		See also `tf.unstack`.
		
		If `num_or_size_splits` is an integer,  then `value` is split along the
		dimension `axis` into `num_or_size_splits` smaller tensors. This requires that
		`value.shape[axis]` is divisible by `num_or_size_splits`.
		
		If `num_or_size_splits` is a 1-D Tensor (or list), then `value` is split into
		`len(num_or_size_splits)` elements. The shape of the `i`-th
		element has the same size as the `value` except along dimension `axis` where
		the size is `num_or_size_splits[i]`.
		
		For example:
		
		>>> x = tf.Variable(tf.random.uniform([5, 30], -1, 1))
		>>>
		>>> # Split `x` into 3 tensors along dimension 1
		>>> s0, s1, s2 = tf.split(x, num_or_size_splits=3, axis=1)
		>>> tf.shape(s0).numpy()
		array([ 5, 10], dtype=int32)
		>>>
		>>> # Split `x` into 3 tensors with sizes [4, 15, 11] along dimension 1
		>>> split0, split1, split2 = tf.split(x, [4, 15, 11], 1)
		>>> tf.shape(split0).numpy()
		array([5, 4], dtype=int32)
		>>> tf.shape(split1).numpy()
		array([ 5, 15], dtype=int32)
		>>> tf.shape(split2).numpy()
		array([ 5, 11], dtype=int32)
		
		Args:
		  value: The `Tensor` to split.
		  num_or_size_splits: Either an integer indicating the number of splits along
		    `axis` or a 1-D integer `Tensor` or Python list containing the sizes of
		    each output tensor along `axis`. If a scalar, then it must evenly divide
		    `value.shape[axis]`; otherwise the sum of sizes along the split axis
		    must match that of the `value`.
		  axis: An integer or scalar `int32` `Tensor`. The dimension along which to
		    split. Must be in the range `[-rank(value), rank(value))`. Defaults to 0.
		  num: Optional, used to specify the number of outputs when it cannot be
		    inferred from the shape of `size_splits`.
		  name: A name for the operation (optional).
		
		Returns:
		  if `num_or_size_splits` is a scalar returns a list of `num_or_size_splits`
		  `Tensor` objects; if `num_or_size_splits` is a 1-D Tensor returns
		  `num_or_size_splits.get_shape[0]` `Tensor` objects resulting from splitting
		  `value`.
		
		Raises:
		  ValueError: If `num` is unspecified and cannot be inferred.
	**/
	static public function split(value:Dynamic, num_or_size_splits:Dynamic, ?axis:Dynamic, ?num:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes element-wise square root of the input tensor.
		
		Note: This operation does not support integer types.
		
		>>> x = tf.constant([[4.0], [16.0]])
		>>> tf.sqrt(x)
		<tf.Tensor: shape=(2, 1), dtype=float32, numpy=
		  array([[2.],
		         [4.]], dtype=float32)>
		>>> y = tf.constant([[-4.0], [16.0]])
		>>> tf.sqrt(y)
		<tf.Tensor: shape=(2, 1), dtype=float32, numpy=
		  array([[nan],
		         [ 4.]], dtype=float32)>
		>>> z = tf.constant([[-1.0], [16.0]], dtype=tf.complex128)
		>>> tf.sqrt(z)
		<tf.Tensor: shape=(2, 1), dtype=complex128, numpy=
		  array([[0.0+1.j],
		         [4.0+0.j]])>
		
		Note: In order to support complex type, please provide an input tensor
		of `complex64` or `complex128`.
		
		Args:
		  x: A `tf.Tensor` of type `bfloat16`, `half`, `float32`, `float64`,
		    `complex64`, `complex128`
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of same size, type and sparsity as `x`.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.sqrt(x.values, ...), x.dense_shape)`
	**/
	static public function sqrt(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes square of x element-wise.
		
		I.e., \\(y = x * x = x^2\\).
		
		>>> tf.math.square([-2., 0., 3.])
		<tf.Tensor: shape=(3,), dtype=float32, numpy=array([4., 0., 9.], dtype=float32)>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.square(x.values, ...), x.dense_shape)`
	**/
	static public function square(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns conj(x - y)(x - y) element-wise.
		
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
		Removes dimensions of size 1 from the shape of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(squeeze_dims)`. They will be removed in a future version.
		Instructions for updating:
		Use the `axis` argument instead
		
		Given a tensor `input`, this operation returns a tensor of the same type with
		all dimensions of size 1 removed. If you don't want to remove all size 1
		dimensions, you can remove specific size 1 dimensions by specifying
		`axis`.
		
		For example:
		
		>>> # 't' is a tensor of shape [1, 2, 1, 3, 1, 1]
		>>> t = tf.ones([1, 2, 1, 3, 1, 1])
		>>> print(tf.shape(tf.squeeze(t)).numpy())
		[2 3]
		
		Or, to remove specific size 1 dimensions:
		
		>>> # 't' is a tensor of shape [1, 2, 1, 3, 1, 1]
		>>> t = tf.ones([1, 2, 1, 3, 1, 1])
		>>> print(tf.shape(tf.squeeze(t, [2, 4])).numpy())
		[1 2 3 1]
		
		Note: if `input` is a `tf.RaggedTensor`, then this operation takes `O(N)`
		time, where `N` is the number of elements in the squeezed dimensions.
		
		Args:
		  input: A `Tensor`. The `input` to squeeze.
		  axis: An optional list of `ints`. Defaults to `[]`. If specified, only
		    squeezes the dimensions listed. The dimension index starts at 0. It is an
		    error to squeeze a dimension that is not 1. Must be in the range
		    `[-rank(input), rank(input))`. Must be specified if `input` is a
		    `RaggedTensor`.
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
		Stacks a list of rank-`R` tensors into one rank-`(R+1)` tensor.
		
		See also `tf.concat`, `tf.tile`, `tf.repeat`.
		
		Packs the list of tensors in `values` into a tensor with rank one higher than
		each tensor in `values`, by packing them along the `axis` dimension.
		Given a list of length `N` of tensors of shape `(A, B, C)`;
		
		if `axis == 0` then the `output` tensor will have the shape `(N, A, B, C)`.
		if `axis == 1` then the `output` tensor will have the shape `(A, N, B, C)`.
		Etc.
		
		For example:
		
		>>> x = tf.constant([1, 4])
		>>> y = tf.constant([2, 5])
		>>> z = tf.constant([3, 6])
		>>> tf.stack([x, y, z])
		<tf.Tensor: shape=(3, 2), dtype=int32, numpy=
		array([[1, 4],
		       [2, 5],
		       [3, 6]], dtype=int32)>
		>>> tf.stack([x, y, z], axis=1)
		<tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		array([[1, 2, 3],
		       [4, 5, 6]], dtype=int32)>
		
		This is the opposite of unstack.  The numpy equivalent is `np.stack`
		
		>>> np.array_equal(np.stack([x, y, z]), tf.stack([x, y, z]))
		True
		
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
		Stops gradient computation.
		
		When executed in a graph, this op outputs its input tensor as-is.
		
		When building ops to compute gradients, this op prevents the contribution of
		its inputs to be taken into account.  Normally, the gradient generator adds ops
		to a graph to compute the derivatives of a specified 'loss' by recursively
		finding out inputs that contributed to its computation.  If you insert this op
		in the graph it inputs are masked from the gradient generator.  They are not
		taken into account for computing gradients.
		
		This is useful any time you want to compute a value with TensorFlow but need
		to pretend that the value was a constant. For example, the softmax function
		for a vector x can be written as
		
		```python
		
		  def softmax(x):
		    numerator = tf.exp(x)
		    denominator = tf.reduce_sum(numerator)
		    return numerator / denominator
		```
		
		This however is susceptible to overflow if the values in x are large. An
		alternative more stable way is to subtract the maximum of x from each of the
		values.
		
		```python
		
		  def stable_softmax(x):
		    z = x - tf.reduce_max(x)
		    numerator = tf.exp(z)
		    denominator = tf.reduce_sum(numerator)
		    return numerator / denominator
		```
		
		However, when we backprop through the softmax to x, we dont want to backprop
		through the `tf.reduce_max(x)` (if the max values are not unique then the
		gradient could flow to the wrong input) calculation and treat that as a
		constant. Therefore, we should write this out as
		
		```python
		
		  def stable_softmax(x):
		    z = x - tf.stop_gradient(tf.reduce_max(x))
		    numerator = tf.exp(z)
		    denominator = tf.reduce_sum(numerator)
		    return numerator / denominator
		```
		
		Some other examples include:
		
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
		Extracts a strided slice of a tensor (generalized Python array indexing).
		
		See also `tf.slice`.
		
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
	static public var string : Dynamic;
	/**
		Perform element-wise concatenation of a list of string tensors.
		
		Given a list of string tensors of same shape, performs element-wise
		concatenation of the strings of the same index in all tensors.
		
		
		>>> tf.strings.join(['abc','def']).numpy()
		b'abcdef'
		>>> tf.strings.join([['abc','123'],
		...                  ['def','456'],
		...                  ['ghi','789']]).numpy()
		array([b'abcdefghi', b'123456789'], dtype=object)
		>>> tf.strings.join([['abc','123'],
		...                  ['def','456']],
		...                  separator=" ").numpy()
		array([b'abc def', b'123 456'], dtype=object)
		
		The reduction version of this elementwise operation is
		`tf.strings.reduce_join`
		
		Args:
		  inputs: A list of `tf.Tensor` objects of same size and `tf.string` dtype.
		  separator: A string added between each string being joined.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.string` tensor.
	**/
	static public function string_join(inputs:Dynamic, ?separator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Split elements of `source` based on `delimiter`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(delimiter)`. They will be removed in a future version.
		Instructions for updating:
		delimiter is deprecated, please use sep instead.
		
		Let N be the size of `source` (typically N will be the batch size). Split each
		element of `source` based on `delimiter` and return a `SparseTensor`
		or `RaggedTensor` containing the split tokens. Empty tokens are ignored.
		
		If `sep` is an empty string, each element of the `source` is split
		into individual strings, each containing one byte. (This includes splitting
		multibyte sequences of UTF-8.) If delimiter contains multiple bytes, it is
		treated as a set of delimiters with each considered a potential split point.
		
		Examples:
		
		>>> print(tf.compat.v1.string_split(['hello world', 'a b c']))
		SparseTensor(indices=tf.Tensor( [[0 0] [0 1] [1 0] [1 1] [1 2]], ...),
		             values=tf.Tensor([b'hello' b'world' b'a' b'b' b'c'], ...),
		             dense_shape=tf.Tensor([2 3], shape=(2,), dtype=int64))
		
		>>> print(tf.compat.v1.string_split(['hello world', 'a b c'],
		...     result_type="RaggedTensor"))
		<tf.RaggedTensor [[b'hello', b'world'], [b'a', b'b', b'c']]>
		
		Args:
		  source: `1-D` string `Tensor`, the strings to split.
		  sep: `0-D` string `Tensor`, the delimiter character, the string should
		    be length 0 or 1. Default is ' '.
		  skip_empty: A `bool`. If `True`, skip the empty strings from the result.
		  delimiter: deprecated alias for `sep`.
		  result_type: The tensor type for the result: one of `"RaggedTensor"` or
		    `"SparseTensor"`.
		  name: A name for the operation (optional).
		
		Raises:
		  ValueError: If delimiter is not a string.
		
		Returns:
		  A `SparseTensor` or `RaggedTensor` of rank `2`, the strings split according
		  to the delimiter.  The first column of the indices corresponds to the row
		  in `source` and the second column corresponds to the index of the split
		  component in this row.
	**/
	static public function string_split(source:Dynamic, ?sep:Dynamic, ?skip_empty:Dynamic, ?delimiter:Dynamic, ?result_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Strip leading and trailing whitespaces from the Tensor.
		
		Examples:
		
		>>> tf.strings.strip(["\nTensorFlow", "     The python library    "]).numpy()
		array([b'TensorFlow', b'The python library'], dtype=object)
		
		Args:
		  input: A `Tensor` of type `string`. A string `Tensor` of any shape.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function string_strip(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function string_to_hash_bucket(?string_tensor:Dynamic, ?num_buckets:Dynamic, ?name:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to its hash mod by a number of buckets.
		
		The hash function is deterministic on the content of the string within the
		process and will never change. However, it is not suitable for cryptography.
		This function may be used when CPU time is scarce and inputs are trusted or
		unimportant. There is a risk of adversaries constructing inputs that all hash
		to the same bucket. To prevent this problem, use a strong hash function with
		`tf.string_to_hash_bucket_strong`.
		
		Examples:
		
		>>> tf.strings.to_hash_bucket_fast(["Hello", "TensorFlow", "2.x"], 3).numpy()
		array([0, 2, 2])
		
		Args:
		  input: A `Tensor` of type `string`. The strings to assign a hash bucket.
		  num_buckets: An `int` that is `>= 1`. The number of buckets.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function string_to_hash_bucket_fast(input:Dynamic, num_buckets:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to its hash mod by a number of buckets.
		
		The hash function is deterministic on the content of the string within the
		process. The hash function is a keyed hash function, where attribute `key`
		defines the key of the hash function. `key` is an array of 2 elements.
		
		A strong hash is important when inputs may be malicious, e.g. URLs with
		additional components. Adversaries could try to make their inputs hash to the
		same bucket for a denial-of-service attack or to skew the results. A strong
		hash can be used to make it difficult to find inputs with a skewed hash value
		distribution over buckets. This requires that the hash function is
		seeded by a high-entropy (random) "key" unknown to the adversary.
		
		The additional robustness comes at a cost of roughly 4x higher compute
		time than `tf.string_to_hash_bucket_fast`.
		
		Examples:
		
		>>> tf.strings.to_hash_bucket_strong(["Hello", "TF"], 3, [1, 2]).numpy()
		array([2, 0])
		
		Args:
		  input: A `Tensor` of type `string`. The strings to assign a hash bucket.
		  num_buckets: An `int` that is `>= 1`. The number of buckets.
		  key: A list of `ints`.
		    The key used to seed the hash function, passed as a list of two uint64
		    elements.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function string_to_hash_bucket_strong(input:Dynamic, num_buckets:Dynamic, key:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to the specified numeric type.
		
		(Note that int32 overflow results in an error while float overflow
		results in a rounded value.)
		
		Example:
		
		>>> strings = ["5.0", "3.0", "7.0"]
		>>> tf.strings.to_number(strings)
		<tf.Tensor: shape=(3,), dtype=float32, numpy=array([5., 3., 7.], dtype=float32)>
		
		Args:
		  string_tensor: A `Tensor` of type `string`.
		  out_type: An optional `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.int64`. Defaults to `tf.float32`.
		    The numeric type to interpret each string in `string_tensor` as.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function string_to_number(?string_tensor:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Return substrings from `Tensor` of strings.
		
		For each string in the input `Tensor`, creates a substring starting at index
		`pos` with a total length of `len`.
		
		If `len` defines a substring that would extend beyond the length of the input
		string, or if `len` is negative, then as many characters as possible are used.
		
		A negative `pos` indicates distance within the string backwards from the end.
		
		If `pos` specifies an index which is out of range for any of the input strings,
		then an `InvalidArgumentError` is thrown.
		
		`pos` and `len` must have the same shape, otherwise a `ValueError` is thrown on
		Op creation.
		
		*NOTE*: `Substr` supports broadcasting up to two dimensions. More about
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
		
		Raises:
		
		  * `ValueError`: If the first argument cannot be converted to a
		     Tensor of `dtype string`.
		  * `InvalidArgumentError`: If indices are out of range.
		  * `ValueError`: If `pos` and `len` are not the same shape.
		
		Args:
		  input: A `Tensor` of type `string`. Tensor of strings
		  pos: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Scalar defining the position of first character in each substring
		  len: A `Tensor`. Must have the same type as `pos`.
		    Scalar defining the number of characters to include in each substring
		  unit: An optional `string` from: `"BYTE", "UTF8_CHAR"`. Defaults to `"BYTE"`.
		    The unit that is used to create the substring.  One of: `"BYTE"` (for
		    defining position and length by bytes) or `"UTF8_CHAR"` (for the UTF-8
		    encoded Unicode code points).  The default is `"BYTE"`. Results are undefined if
		    `unit=UTF8_CHAR` and the `input` strings do not contain structurally valid
		    UTF-8.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function substr(input:Dynamic, pos:Dynamic, len:Dynamic, ?name:Dynamic, ?unit:Dynamic):Dynamic;
	/**
		Returns x - y element-wise.
		
		*NOTE*: `tf.subtract` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Both input and output have a range `(-inf, inf)`.
		
		Example usages below.
		
		Subtract operation between an array and a scalar:
		
		>>> x = [1, 2, 3, 4, 5]
		>>> y = 1
		>>> tf.subtract(x, y)
		<tf.Tensor: shape=(5,), dtype=int32, numpy=array([0, 1, 2, 3, 4], dtype=int32)>
		>>> tf.subtract(y, x)
		<tf.Tensor: shape=(5,), dtype=int32,
		numpy=array([ 0, -1, -2, -3, -4], dtype=int32)>
		
		Note that binary `-` operator can be used instead:
		
		>>> x = tf.convert_to_tensor([1, 2, 3, 4, 5])
		>>> y = tf.convert_to_tensor(1)
		>>> x - y
		<tf.Tensor: shape=(5,), dtype=int32, numpy=array([0, 1, 2, 3, 4], dtype=int32)>
		
		Subtract operation between an array and a tensor of same shape:
		
		>>> x = [1, 2, 3, 4, 5]
		>>> y = tf.constant([5, 4, 3, 2, 1])
		>>> tf.subtract(y, x)
		<tf.Tensor: shape=(5,), dtype=int32,
		numpy=array([ 4,  2,  0, -2, -4], dtype=int32)>
		
		**Warning**: If one of the inputs (`x` or `y`) is a tensor and the other is a
		non-tensor, the non-tensor input will adopt (or get casted to) the data type
		of the tensor input. This can potentially cause unwanted overflow or underflow
		conversion.
		
		For example,
		
		>>> x = tf.constant([1, 2], dtype=tf.int8)
		>>> y = [2**8 + 1, 2**8 + 2]
		>>> tf.subtract(x, y)
		<tf.Tensor: shape=(2,), dtype=int8, numpy=array([0, 0], dtype=int8)>
		
		When subtracting two input values of different shapes, `tf.subtract` follows the
		[general broadcasting rules](https://numpy.org/doc/stable/user/basics.broadcasting.html#general-broadcasting-rules)
		. The two input array shapes are compared element-wise. Starting with the
		trailing dimensions, the two dimensions either have to be equal or one of them
		needs to be `1`.
		
		For example,
		
		>>> x = np.ones(6).reshape(2, 3, 1)
		>>> y = np.ones(6).reshape(2, 1, 3)
		>>> tf.subtract(x, y)
		<tf.Tensor: shape=(2, 3, 3), dtype=float64, numpy=
		array([[[0., 0., 0.],
		        [0., 0., 0.],
		        [0., 0., 0.]],
		       [[0., 0., 0.],
		        [0., 0., 0.],
		        [0., 0., 0.]]])>
		
		Example with inputs of different dimensions:
		
		>>> x = np.ones(6).reshape(2, 3, 1)
		>>> y = np.ones(6).reshape(1, 6)
		>>> tf.subtract(x, y)
		<tf.Tensor: shape=(2, 3, 6), dtype=float64, numpy=
		array([[[0., 0., 0., 0., 0., 0.],
		        [0., 0., 0., 0., 0., 0.],
		        [0., 0., 0., 0., 0., 0.]],
		       [[0., 0., 0., 0., 0., 0.],
		        [0., 0., 0., 0., 0., 0.],
		        [0., 0., 0., 0., 0., 0.]]])>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`, `uint32`, `uint64`.
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
	/**
		Returns an Op that initializes all tables of the default graph.
		
		Args:
		  name: Optional name for the initialization op.
		
		Returns:
		  An Op that initializes all tables.  Note that if there are
		  not tables the returned Op is a NoOp.
		
		@compatibility(TF2)
		`tf.compat.v1.tables_initializer` is no longer needed with eager execution and
		`tf.function`. In TF2, when creating an initializable table like a
		`tf.lookup.StaticHashTable`, the table will automatically be initialized on
		creation.
		
		#### Before & After Usage Example
		
		Before:
		
		>>> with tf.compat.v1.Session():
		...   init = tf.compat.v1.lookup.KeyValueTensorInitializer(['a', 'b'], [1, 2])
		...   table = tf.compat.v1.lookup.StaticHashTable(init, default_value=-1)
		...   tf.compat.v1.tables_initializer().run()
		...   result = table.lookup(tf.constant(['a', 'c'])).eval()
		>>> result
		array([ 1, -1], dtype=int32)
		
		After:
		
		>>> init = tf.lookup.KeyValueTensorInitializer(['a', 'b'], [1, 2])
		>>> table = tf.lookup.StaticHashTable(init, default_value=-1)
		>>> table.lookup(tf.constant(['a', 'c'])).numpy()
		array([ 1, -1], dtype=int32)
		
		@end_compatibility
	**/
	static public function tables_initializer(?name:Dynamic):Dynamic;
	/**
		Computes tan of x element-wise.
		
		  Given an input tensor, this function computes tangent of every
		  element in the tensor. Input range is `(-inf, inf)` and
		  output range is `(-inf, inf)`. If input lies outside the boundary, `nan`
		  is returned.
		
		  ```python
		  x = tf.constant([-float("inf"), -9, -0.5, 1, 1.2, 200, 10000, float("inf")])
		  tf.math.tan(x) ==> [nan 0.45231566 -0.5463025 1.5574077 2.572152 -1.7925274 0.32097113 nan]
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function tan(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes hyperbolic tangent of `x` element-wise.
		
		  Given an input tensor, this function computes hyperbolic tangent of every
		  element in the tensor. Input range is `[-inf, inf]` and
		  output range is `[-1,1]`.
		
		  >>> x = tf.constant([-float("inf"), -5, -0.5, 1, 1.2, 2, 3, float("inf")])
		  >>> tf.math.tanh(x)
		  <tf.Tensor: shape=(8,), dtype=float32, numpy=
		  array([-1.        , -0.99990916, -0.46211717,  0.7615942 ,  0.8336547 ,
		          0.9640276 ,  0.9950547 ,  1.        ], dtype=float32)>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.tanh(x.values, ...), x.dense_shape)`
	**/
	static public function tanh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds sparse `updates` to an existing tensor according to `indices`.
		
		This operation creates a new tensor by adding sparse `updates` to the passed
		in `tensor`.
		This operation is very similar to `tf.compat.v1.scatter_nd_add`, except that the updates
		are added onto an existing tensor (as opposed to a variable). If the memory
		for the existing tensor cannot be re-used, a copy is made and updated.
		
		`indices` is an integer tensor containing indices into a new tensor of shape
		`tensor.shape`.  The last dimension of `indices` can be at most the rank of
		`tensor.shape`:
		
		    indices.shape[-1] <= tensor.shape.rank
		
		The last dimension of `indices` corresponds to indices into elements
		(if `indices.shape[-1] = tensor.shape.rank`) or slices
		(if `indices.shape[-1] < tensor.shape.rank`) along dimension
		`indices.shape[-1]` of `tensor.shape`.  `updates` is a tensor with shape
		
		    indices.shape[:-1] + tensor.shape[indices.shape[-1]:]
		
		The simplest form of tensor_scatter_add is to add individual elements to a
		tensor by index. For example, say we want to add 4 elements in a rank-1
		tensor with 8 elements.
		
		In Python, this scatter add operation would look like this:
		
		```python
		    indices = tf.constant([[4], [3], [1], [7]])
		    updates = tf.constant([9, 10, 11, 12])
		    tensor = tf.ones([8], dtype=tf.int32)
		    updated = tf.tensor_scatter_nd_add(tensor, indices, updates)
		    print(updated)
		```
		
		The resulting tensor would look like this:
		
		    [1, 12, 1, 11, 10, 1, 1, 13]
		
		We can also, insert entire slices of a higher rank tensor all at once. For
		example, if we wanted to insert two slices in the first dimension of a
		rank-3 tensor with two matrices of new values.
		
		In Python, this scatter add operation would look like this:
		
		```python
		    indices = tf.constant([[0], [2]])
		    updates = tf.constant([[[5, 5, 5, 5], [6, 6, 6, 6],
		                            [7, 7, 7, 7], [8, 8, 8, 8]],
		                           [[5, 5, 5, 5], [6, 6, 6, 6],
		                            [7, 7, 7, 7], [8, 8, 8, 8]]])
		    tensor = tf.ones([4, 4, 4],dtype=tf.int32)
		    updated = tf.tensor_scatter_nd_add(tensor, indices, updates)
		    print(updated)
		```
		
		The resulting tensor would look like this:
		
		    [[[6, 6, 6, 6], [7, 7, 7, 7], [8, 8, 8, 8], [9, 9, 9, 9]],
		     [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]],
		     [[6, 6, 6, 6], [7, 7, 7, 7], [8, 8, 8, 8], [9, 9, 9, 9]],
		     [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]]]
		
		Note that on CPU, if an out of bound index is found, an error is returned.
		On GPU, if an out of bound index is found, the index is ignored.
		
		Args:
		  tensor: A `Tensor`. Tensor to copy/update.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor.
		  updates: A `Tensor`. Must have the same type as `tensor`.
		    Updates to scatter into output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function tensor_scatter_add(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds sparse `updates` to an existing tensor according to `indices`.
		
		This operation creates a new tensor by adding sparse `updates` to the passed
		in `tensor`.
		This operation is very similar to `tf.compat.v1.scatter_nd_add`, except that the updates
		are added onto an existing tensor (as opposed to a variable). If the memory
		for the existing tensor cannot be re-used, a copy is made and updated.
		
		`indices` is an integer tensor containing indices into a new tensor of shape
		`tensor.shape`.  The last dimension of `indices` can be at most the rank of
		`tensor.shape`:
		
		    indices.shape[-1] <= tensor.shape.rank
		
		The last dimension of `indices` corresponds to indices into elements
		(if `indices.shape[-1] = tensor.shape.rank`) or slices
		(if `indices.shape[-1] < tensor.shape.rank`) along dimension
		`indices.shape[-1]` of `tensor.shape`.  `updates` is a tensor with shape
		
		    indices.shape[:-1] + tensor.shape[indices.shape[-1]:]
		
		The simplest form of tensor_scatter_add is to add individual elements to a
		tensor by index. For example, say we want to add 4 elements in a rank-1
		tensor with 8 elements.
		
		In Python, this scatter add operation would look like this:
		
		```python
		    indices = tf.constant([[4], [3], [1], [7]])
		    updates = tf.constant([9, 10, 11, 12])
		    tensor = tf.ones([8], dtype=tf.int32)
		    updated = tf.tensor_scatter_nd_add(tensor, indices, updates)
		    print(updated)
		```
		
		The resulting tensor would look like this:
		
		    [1, 12, 1, 11, 10, 1, 1, 13]
		
		We can also, insert entire slices of a higher rank tensor all at once. For
		example, if we wanted to insert two slices in the first dimension of a
		rank-3 tensor with two matrices of new values.
		
		In Python, this scatter add operation would look like this:
		
		```python
		    indices = tf.constant([[0], [2]])
		    updates = tf.constant([[[5, 5, 5, 5], [6, 6, 6, 6],
		                            [7, 7, 7, 7], [8, 8, 8, 8]],
		                           [[5, 5, 5, 5], [6, 6, 6, 6],
		                            [7, 7, 7, 7], [8, 8, 8, 8]]])
		    tensor = tf.ones([4, 4, 4],dtype=tf.int32)
		    updated = tf.tensor_scatter_nd_add(tensor, indices, updates)
		    print(updated)
		```
		
		The resulting tensor would look like this:
		
		    [[[6, 6, 6, 6], [7, 7, 7, 7], [8, 8, 8, 8], [9, 9, 9, 9]],
		     [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]],
		     [[6, 6, 6, 6], [7, 7, 7, 7], [8, 8, 8, 8], [9, 9, 9, 9]],
		     [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]]]
		
		Note that on CPU, if an out of bound index is found, an error is returned.
		On GPU, if an out of bound index is found, the index is ignored.
		
		Args:
		  tensor: A `Tensor`. Tensor to copy/update.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor.
		  updates: A `Tensor`. Must have the same type as `tensor`.
		    Updates to scatter into output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function tensor_scatter_nd_add(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  tensor: A `Tensor`. Tensor to update.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor.
		  updates: A `Tensor`. Must have the same type as `tensor`.
		    Updates to scatter into output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function tensor_scatter_nd_max(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  tensor: A `Tensor`. Tensor to update.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor.
		  updates: A `Tensor`. Must have the same type as `tensor`.
		    Updates to scatter into output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function tensor_scatter_nd_min(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Subtracts sparse `updates` from an existing tensor according to `indices`.
		
		This operation creates a new tensor by subtracting sparse `updates` from the
		passed in `tensor`.
		This operation is very similar to `tf.scatter_nd_sub`, except that the updates
		are subtracted from an existing tensor (as opposed to a variable). If the memory
		for the existing tensor cannot be re-used, a copy is made and updated.
		
		`indices` is an integer tensor containing indices into a new tensor of shape
		`shape`.  The last dimension of `indices` can be at most the rank of `shape`:
		
		    indices.shape[-1] <= shape.rank
		
		The last dimension of `indices` corresponds to indices into elements
		(if `indices.shape[-1] = shape.rank`) or slices
		(if `indices.shape[-1] < shape.rank`) along dimension `indices.shape[-1]` of
		`shape`.  `updates` is a tensor with shape
		
		    indices.shape[:-1] + shape[indices.shape[-1]:]
		
		The simplest form of tensor_scatter_sub is to subtract individual elements
		from a tensor by index. For example, say we want to insert 4 scattered elements
		in a rank-1 tensor with 8 elements.
		
		In Python, this scatter subtract operation would look like this:
		
		```python
		    indices = tf.constant([[4], [3], [1], [7]])
		    updates = tf.constant([9, 10, 11, 12])
		    tensor = tf.ones([8], dtype=tf.int32)
		    updated = tf.tensor_scatter_nd_sub(tensor, indices, updates)
		    print(updated)
		```
		
		The resulting tensor would look like this:
		
		    [1, -10, 1, -9, -8, 1, 1, -11]
		
		We can also, insert entire slices of a higher rank tensor all at once. For
		example, if we wanted to insert two slices in the first dimension of a
		rank-3 tensor with two matrices of new values.
		
		In Python, this scatter add operation would look like this:
		
		```python
		    indices = tf.constant([[0], [2]])
		    updates = tf.constant([[[5, 5, 5, 5], [6, 6, 6, 6],
		                            [7, 7, 7, 7], [8, 8, 8, 8]],
		                           [[5, 5, 5, 5], [6, 6, 6, 6],
		                            [7, 7, 7, 7], [8, 8, 8, 8]]])
		    tensor = tf.ones([4, 4, 4],dtype=tf.int32)
		    updated = tf.tensor_scatter_nd_sub(tensor, indices, updates)
		    print(updated)
		```
		
		The resulting tensor would look like this:
		
		    [[[-4, -4, -4, -4], [-5, -5, -5, -5], [-6, -6, -6, -6], [-7, -7, -7, -7]],
		     [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]],
		     [[-4, -4, -4, -4], [-5, -5, -5, -5], [-6, -6, -6, -6], [-7, -7, -7, -7]],
		     [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]]]
		
		Note that on CPU, if an out of bound index is found, an error is returned.
		On GPU, if an out of bound index is found, the index is ignored.
		
		Args:
		  tensor: A `Tensor`. Tensor to copy/update.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor.
		  updates: A `Tensor`. Must have the same type as `tensor`.
		    Updates to scatter into output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function tensor_scatter_nd_sub(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		"Scatter `updates` into an existing tensor according to `indices`.
		
		This operation creates a new tensor by applying sparse `updates` to the
		input `tensor`. This is similar to an index assignment.
		
		```
		# Not implemented: tensors cannot be updated inplace.
		tensor[indices] = updates
		```
		
		If an out of bound index is found on CPU, an error is returned.
		
		> **WARNING**: There are some GPU specific semantics for this operation.
		>
		> - If an out of bound index is found, the index is ignored.
		> - The order in which updates are applied is nondeterministic, so the output
		>   will be nondeterministic if `indices` contains duplicates.
		
		This operation is very similar to `tf.scatter_nd`, except that the updates are
		scattered onto an existing tensor (as opposed to a zero-tensor). If the memory
		for the existing tensor cannot be re-used, a copy is made and updated.
		
		In general:
		
		* `indices` is an integer tensor - the indices to update in `tensor`.
		* `indices` has **at least two** axes, the last axis is the depth of the
		  index vectors.
		* For each index vector in `indices` there is a corresponding entry in
		  `updates`.
		* If the length of the index vectors matches the rank of the `tensor`, then
		  the index vectors each point to scalars in `tensor` and each update is a
		  scalar.
		* If the length of the index vectors is less than the rank of `tensor`, then
		  the index vectors each point to slices of `tensor` and shape of the updates
		  must match that slice.
		
		Overall this leads to the following shape constraints:
		
		```
		assert tf.rank(indices) >= 2
		index_depth = indices.shape[-1]
		batch_shape = indices.shape[:-1]
		assert index_depth <= tf.rank(tensor)
		outer_shape = tensor.shape[:index_depth]
		inner_shape = tensor.shape[index_depth:]
		assert updates.shape == batch_shape + inner_shape
		```
		
		Typical usage is often much simpler than this general form, and it
		can be better understood starting with simple examples:
		
		### Scalar updates
		
		The simplest usage inserts scalar elements into a tensor by index.
		In this case, the `index_depth` must equal the rank of the
		input `tensor`, slice each column of `indices` is an index into an axis of the
		input `tensor`.
		
		In this simplest case the shape constraints are:
		
		```
		num_updates, index_depth = indices.shape.as_list()
		assert updates.shape == [num_updates]
		assert index_depth == tf.rank(tensor)`
		```
		
		For example, to insert 4 scattered elements in a rank-1 tensor with
		8 elements.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%"
		  src="https://www.tensorflow.org/images/ScatterNd1.png">
		</div>
		
		This scatter operation would look like this:
		
		>>> tensor = [0, 0, 0, 0, 0, 0, 0, 0]    # tf.rank(tensor) == 1
		>>> indices = [[1], [3], [4], [7]]       # num_updates == 4, index_depth == 1
		>>> updates = [9, 10, 11, 12]            # num_updates == 4
		>>> print(tf.tensor_scatter_nd_update(tensor, indices, updates))
		tf.Tensor([ 0 9  0 10  11  0  0 12], shape=(8,), dtype=int32)
		
		The length (first axis) of `updates` must equal the length of the `indices`:
		`num_updates`. This is the number of updates being inserted. Each scalar
		update is inserted into `tensor` at the indexed location.
		
		For a higher rank input `tensor` scalar updates can be inserted by using an
		`index_depth` that matches `tf.rank(tensor)`:
		
		>>> tensor = [[1, 1], [1, 1], [1, 1]]    # tf.rank(tensor) == 2
		>>> indices = [[0, 1], [2, 0]]           # num_updates == 2, index_depth == 2
		>>> updates = [5, 10]                    # num_updates == 2
		>>> print(tf.tensor_scatter_nd_update(tensor, indices, updates))
		tf.Tensor(
		    [[ 1  5]
		     [ 1  1]
		     [10  1]], shape=(3, 2), dtype=int32)
		
		### Slice updates
		
		When the input `tensor` has more than one axis scatter can be used to update
		entire slices.
		
		In this case it's helpful to think of the input `tensor` as being a two level
		array-of-arrays. The shape of this two level array is split into the
		`outer_shape` and the `inner_shape`.
		
		`indices` indexes into the outer level of the input tensor (`outer_shape`).
		and replaces the sub-array at that location with the corresponding item from
		the `updates` list. The shape of each update is `inner_shape`.
		
		When updating a list of slices the shape constraints are:
		
		```
		num_updates, index_depth = indices.shape.as_list()
		inner_shape = tensor.shape[:index_depth]
		outer_shape = tensor.shape[index_depth:]
		assert updates.shape == [num_updates, inner_shape]
		```
		
		For example, to update rows of a `(6, 3)` `tensor`:
		
		>>> tensor = tf.zeros([6, 3], dtype=tf.int32)
		
		Use an index depth of one.
		
		>>> indices = tf.constant([[2], [4]])     # num_updates == 2, index_depth == 1
		>>> num_updates, index_depth = indices.shape.as_list()
		
		The `outer_shape` is `6`, the inner shape is `3`:
		
		>>> outer_shape = tensor.shape[:index_depth]
		>>> inner_shape = tensor.shape[index_depth:]
		
		2 rows are being indexed so 2 `updates` must be supplied.
		Each update must be shaped to match the `inner_shape`.
		
		>>> # num_updates == 2, inner_shape==3
		>>> updates = tf.constant([[1, 2, 3],
		...                        [4, 5, 6]])
		
		Altogether this gives:
		
		>>> tf.tensor_scatter_nd_update(tensor, indices, updates).numpy()
		array([[0, 0, 0],
		       [0, 0, 0],
		       [1, 2, 3],
		       [0, 0, 0],
		       [4, 5, 6],
		       [0, 0, 0]], dtype=int32)
		
		#### More slice update examples
		
		A tensor representing a batch of uniformly sized video clips naturally has 5
		axes: `[batch_size, time, width, height, channels]`.
		
		For example:
		
		>>> batch_size, time, width, height, channels = 13,11,7,5,3
		>>> video_batch = tf.zeros([batch_size, time, width, height, channels])
		
		To replace a selection of video clips:
		  * Use an `index_depth` of 1 (indexing the `outer_shape`: `[batch_size]`)
		  * Provide updates each with a shape matching the `inner_shape`:
		    `[time, width, height, channels]`.
		
		To replace the first two clips with ones:
		
		>>> indices = [[0],[1]]
		>>> new_clips = tf.ones([2, time, width, height, channels])
		>>> tf.tensor_scatter_nd_update(video_batch, indices, new_clips)
		
		To replace a selection of frames in the videos:
		
		* `indices` must have an `index_depth` of 2 for the `outer_shape`:
		  `[batch_size, time]`.
		* `updates` must be shaped like a list of images.  Each update must have a
		  shape, matching the `inner_shape`: `[width, height, channels]`.
		
		To replace the first frame of the first three video clips:
		
		>>> indices = [[0, 0], [1, 0], [2, 0]] # num_updates=3, index_depth=2
		>>> new_images = tf.ones([
		...   # num_updates=3, inner_shape=(width, height, channels)
		...   3, width, height, channels])
		>>> tf.tensor_scatter_nd_update(video_batch, indices, new_images)
		
		### Folded indices
		
		In simple cases it's convenient to think of `indices` and `updates` as
		lists, but this is not a strict requirement. Instead of a flat `num_updates`,
		the `indices` and `updates` can be folded into a `batch_shape`. This
		`batch_shape` is all axes of the `indices`, except for the innermost
		`index_depth` axis.
		
		```
		index_depth = indices.shape[-1]
		batch_shape = indices.shape[:-1]
		```
		
		Note: The one exception is that the `batch_shape` cannot be `[]`. You can't
		update a single index by passing indices with shape `[index_depth]`.
		
		`updates` must have a matching `batch_shape` (the axes before `inner_shape`).
		
		```
		assert updates.shape == batch_shape + inner_shape
		```
		
		Note: The result is equivalent to flattening the `batch_shape` axes of
		`indices` and `updates`. This generalization just avoids the need
		for reshapes when it is more natural to construct "folded" indices and
		updates.
		
		With this generalization the full shape constraints are:
		
		```
		assert tf.rank(indices) >= 2
		index_depth = indices.shape[-1]
		batch_shape = indices.shape[:-1]
		assert index_depth <= tf.rank(tensor)
		outer_shape = tensor.shape[:index_depth]
		inner_shape = tensor.shape[index_depth:]
		assert updates.shape == batch_shape + inner_shape
		```
		
		For example, to draw an `X` on a `(5,5)` matrix start with these indices:
		
		>>> tensor = tf.zeros([5,5])
		>>> indices = tf.constant([
		...  [[0,0],
		...   [1,1],
		...   [2,2],
		...   [3,3],
		...   [4,4]],
		...  [[0,4],
		...   [1,3],
		...   [2,2],
		...   [3,1],
		...   [4,0]],
		... ])
		>>> indices.shape.as_list()  # batch_shape == [2, 5], index_depth == 2
		[2, 5, 2]
		
		Here the `indices` do not have a shape of `[num_updates, index_depth]`, but a
		shape of `batch_shape+[index_depth]`.
		
		Since the `index_depth` is equal to the rank of `tensor`:
		
		* `outer_shape` is `(5,5)`
		* `inner_shape` is `()` - each update is scalar
		* `updates.shape` is `batch_shape + inner_shape == (5,2) + ()`
		
		>>> updates = [
		...   [1,1,1,1,1],
		...   [1,1,1,1,1],
		... ]
		
		Putting this together gives:
		
		>>> tf.tensor_scatter_nd_update(tensor, indices, updates).numpy()
		array([[1., 0., 0., 0., 1.],
		       [0., 1., 0., 1., 0.],
		       [0., 0., 1., 0., 0.],
		       [0., 1., 0., 1., 0.],
		       [1., 0., 0., 0., 1.]], dtype=float32)
		
		Args:
		  tensor: Tensor to copy/update.
		  indices: Indices to update.
		  updates: Updates to apply at the indices.
		  name: Optional name for the operation.
		
		Returns:
		  A new tensor with the given shape and updates applied according to the
		  indices.
	**/
	static public function tensor_scatter_nd_update(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Subtracts sparse `updates` from an existing tensor according to `indices`.
		
		This operation creates a new tensor by subtracting sparse `updates` from the
		passed in `tensor`.
		This operation is very similar to `tf.scatter_nd_sub`, except that the updates
		are subtracted from an existing tensor (as opposed to a variable). If the memory
		for the existing tensor cannot be re-used, a copy is made and updated.
		
		`indices` is an integer tensor containing indices into a new tensor of shape
		`shape`.  The last dimension of `indices` can be at most the rank of `shape`:
		
		    indices.shape[-1] <= shape.rank
		
		The last dimension of `indices` corresponds to indices into elements
		(if `indices.shape[-1] = shape.rank`) or slices
		(if `indices.shape[-1] < shape.rank`) along dimension `indices.shape[-1]` of
		`shape`.  `updates` is a tensor with shape
		
		    indices.shape[:-1] + shape[indices.shape[-1]:]
		
		The simplest form of tensor_scatter_sub is to subtract individual elements
		from a tensor by index. For example, say we want to insert 4 scattered elements
		in a rank-1 tensor with 8 elements.
		
		In Python, this scatter subtract operation would look like this:
		
		```python
		    indices = tf.constant([[4], [3], [1], [7]])
		    updates = tf.constant([9, 10, 11, 12])
		    tensor = tf.ones([8], dtype=tf.int32)
		    updated = tf.tensor_scatter_nd_sub(tensor, indices, updates)
		    print(updated)
		```
		
		The resulting tensor would look like this:
		
		    [1, -10, 1, -9, -8, 1, 1, -11]
		
		We can also, insert entire slices of a higher rank tensor all at once. For
		example, if we wanted to insert two slices in the first dimension of a
		rank-3 tensor with two matrices of new values.
		
		In Python, this scatter add operation would look like this:
		
		```python
		    indices = tf.constant([[0], [2]])
		    updates = tf.constant([[[5, 5, 5, 5], [6, 6, 6, 6],
		                            [7, 7, 7, 7], [8, 8, 8, 8]],
		                           [[5, 5, 5, 5], [6, 6, 6, 6],
		                            [7, 7, 7, 7], [8, 8, 8, 8]]])
		    tensor = tf.ones([4, 4, 4],dtype=tf.int32)
		    updated = tf.tensor_scatter_nd_sub(tensor, indices, updates)
		    print(updated)
		```
		
		The resulting tensor would look like this:
		
		    [[[-4, -4, -4, -4], [-5, -5, -5, -5], [-6, -6, -6, -6], [-7, -7, -7, -7]],
		     [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]],
		     [[-4, -4, -4, -4], [-5, -5, -5, -5], [-6, -6, -6, -6], [-7, -7, -7, -7]],
		     [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]]]
		
		Note that on CPU, if an out of bound index is found, an error is returned.
		On GPU, if an out of bound index is found, the index is ignored.
		
		Args:
		  tensor: A `Tensor`. Tensor to copy/update.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor.
		  updates: A `Tensor`. Must have the same type as `tensor`.
		    Updates to scatter into output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function tensor_scatter_sub(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		"Scatter `updates` into an existing tensor according to `indices`.
		
		This operation creates a new tensor by applying sparse `updates` to the
		input `tensor`. This is similar to an index assignment.
		
		```
		# Not implemented: tensors cannot be updated inplace.
		tensor[indices] = updates
		```
		
		If an out of bound index is found on CPU, an error is returned.
		
		> **WARNING**: There are some GPU specific semantics for this operation.
		>
		> - If an out of bound index is found, the index is ignored.
		> - The order in which updates are applied is nondeterministic, so the output
		>   will be nondeterministic if `indices` contains duplicates.
		
		This operation is very similar to `tf.scatter_nd`, except that the updates are
		scattered onto an existing tensor (as opposed to a zero-tensor). If the memory
		for the existing tensor cannot be re-used, a copy is made and updated.
		
		In general:
		
		* `indices` is an integer tensor - the indices to update in `tensor`.
		* `indices` has **at least two** axes, the last axis is the depth of the
		  index vectors.
		* For each index vector in `indices` there is a corresponding entry in
		  `updates`.
		* If the length of the index vectors matches the rank of the `tensor`, then
		  the index vectors each point to scalars in `tensor` and each update is a
		  scalar.
		* If the length of the index vectors is less than the rank of `tensor`, then
		  the index vectors each point to slices of `tensor` and shape of the updates
		  must match that slice.
		
		Overall this leads to the following shape constraints:
		
		```
		assert tf.rank(indices) >= 2
		index_depth = indices.shape[-1]
		batch_shape = indices.shape[:-1]
		assert index_depth <= tf.rank(tensor)
		outer_shape = tensor.shape[:index_depth]
		inner_shape = tensor.shape[index_depth:]
		assert updates.shape == batch_shape + inner_shape
		```
		
		Typical usage is often much simpler than this general form, and it
		can be better understood starting with simple examples:
		
		### Scalar updates
		
		The simplest usage inserts scalar elements into a tensor by index.
		In this case, the `index_depth` must equal the rank of the
		input `tensor`, slice each column of `indices` is an index into an axis of the
		input `tensor`.
		
		In this simplest case the shape constraints are:
		
		```
		num_updates, index_depth = indices.shape.as_list()
		assert updates.shape == [num_updates]
		assert index_depth == tf.rank(tensor)`
		```
		
		For example, to insert 4 scattered elements in a rank-1 tensor with
		8 elements.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%"
		  src="https://www.tensorflow.org/images/ScatterNd1.png">
		</div>
		
		This scatter operation would look like this:
		
		>>> tensor = [0, 0, 0, 0, 0, 0, 0, 0]    # tf.rank(tensor) == 1
		>>> indices = [[1], [3], [4], [7]]       # num_updates == 4, index_depth == 1
		>>> updates = [9, 10, 11, 12]            # num_updates == 4
		>>> print(tf.tensor_scatter_nd_update(tensor, indices, updates))
		tf.Tensor([ 0 9  0 10  11  0  0 12], shape=(8,), dtype=int32)
		
		The length (first axis) of `updates` must equal the length of the `indices`:
		`num_updates`. This is the number of updates being inserted. Each scalar
		update is inserted into `tensor` at the indexed location.
		
		For a higher rank input `tensor` scalar updates can be inserted by using an
		`index_depth` that matches `tf.rank(tensor)`:
		
		>>> tensor = [[1, 1], [1, 1], [1, 1]]    # tf.rank(tensor) == 2
		>>> indices = [[0, 1], [2, 0]]           # num_updates == 2, index_depth == 2
		>>> updates = [5, 10]                    # num_updates == 2
		>>> print(tf.tensor_scatter_nd_update(tensor, indices, updates))
		tf.Tensor(
		    [[ 1  5]
		     [ 1  1]
		     [10  1]], shape=(3, 2), dtype=int32)
		
		### Slice updates
		
		When the input `tensor` has more than one axis scatter can be used to update
		entire slices.
		
		In this case it's helpful to think of the input `tensor` as being a two level
		array-of-arrays. The shape of this two level array is split into the
		`outer_shape` and the `inner_shape`.
		
		`indices` indexes into the outer level of the input tensor (`outer_shape`).
		and replaces the sub-array at that location with the corresponding item from
		the `updates` list. The shape of each update is `inner_shape`.
		
		When updating a list of slices the shape constraints are:
		
		```
		num_updates, index_depth = indices.shape.as_list()
		inner_shape = tensor.shape[:index_depth]
		outer_shape = tensor.shape[index_depth:]
		assert updates.shape == [num_updates, inner_shape]
		```
		
		For example, to update rows of a `(6, 3)` `tensor`:
		
		>>> tensor = tf.zeros([6, 3], dtype=tf.int32)
		
		Use an index depth of one.
		
		>>> indices = tf.constant([[2], [4]])     # num_updates == 2, index_depth == 1
		>>> num_updates, index_depth = indices.shape.as_list()
		
		The `outer_shape` is `6`, the inner shape is `3`:
		
		>>> outer_shape = tensor.shape[:index_depth]
		>>> inner_shape = tensor.shape[index_depth:]
		
		2 rows are being indexed so 2 `updates` must be supplied.
		Each update must be shaped to match the `inner_shape`.
		
		>>> # num_updates == 2, inner_shape==3
		>>> updates = tf.constant([[1, 2, 3],
		...                        [4, 5, 6]])
		
		Altogether this gives:
		
		>>> tf.tensor_scatter_nd_update(tensor, indices, updates).numpy()
		array([[0, 0, 0],
		       [0, 0, 0],
		       [1, 2, 3],
		       [0, 0, 0],
		       [4, 5, 6],
		       [0, 0, 0]], dtype=int32)
		
		#### More slice update examples
		
		A tensor representing a batch of uniformly sized video clips naturally has 5
		axes: `[batch_size, time, width, height, channels]`.
		
		For example:
		
		>>> batch_size, time, width, height, channels = 13,11,7,5,3
		>>> video_batch = tf.zeros([batch_size, time, width, height, channels])
		
		To replace a selection of video clips:
		  * Use an `index_depth` of 1 (indexing the `outer_shape`: `[batch_size]`)
		  * Provide updates each with a shape matching the `inner_shape`:
		    `[time, width, height, channels]`.
		
		To replace the first two clips with ones:
		
		>>> indices = [[0],[1]]
		>>> new_clips = tf.ones([2, time, width, height, channels])
		>>> tf.tensor_scatter_nd_update(video_batch, indices, new_clips)
		
		To replace a selection of frames in the videos:
		
		* `indices` must have an `index_depth` of 2 for the `outer_shape`:
		  `[batch_size, time]`.
		* `updates` must be shaped like a list of images.  Each update must have a
		  shape, matching the `inner_shape`: `[width, height, channels]`.
		
		To replace the first frame of the first three video clips:
		
		>>> indices = [[0, 0], [1, 0], [2, 0]] # num_updates=3, index_depth=2
		>>> new_images = tf.ones([
		...   # num_updates=3, inner_shape=(width, height, channels)
		...   3, width, height, channels])
		>>> tf.tensor_scatter_nd_update(video_batch, indices, new_images)
		
		### Folded indices
		
		In simple cases it's convenient to think of `indices` and `updates` as
		lists, but this is not a strict requirement. Instead of a flat `num_updates`,
		the `indices` and `updates` can be folded into a `batch_shape`. This
		`batch_shape` is all axes of the `indices`, except for the innermost
		`index_depth` axis.
		
		```
		index_depth = indices.shape[-1]
		batch_shape = indices.shape[:-1]
		```
		
		Note: The one exception is that the `batch_shape` cannot be `[]`. You can't
		update a single index by passing indices with shape `[index_depth]`.
		
		`updates` must have a matching `batch_shape` (the axes before `inner_shape`).
		
		```
		assert updates.shape == batch_shape + inner_shape
		```
		
		Note: The result is equivalent to flattening the `batch_shape` axes of
		`indices` and `updates`. This generalization just avoids the need
		for reshapes when it is more natural to construct "folded" indices and
		updates.
		
		With this generalization the full shape constraints are:
		
		```
		assert tf.rank(indices) >= 2
		index_depth = indices.shape[-1]
		batch_shape = indices.shape[:-1]
		assert index_depth <= tf.rank(tensor)
		outer_shape = tensor.shape[:index_depth]
		inner_shape = tensor.shape[index_depth:]
		assert updates.shape == batch_shape + inner_shape
		```
		
		For example, to draw an `X` on a `(5,5)` matrix start with these indices:
		
		>>> tensor = tf.zeros([5,5])
		>>> indices = tf.constant([
		...  [[0,0],
		...   [1,1],
		...   [2,2],
		...   [3,3],
		...   [4,4]],
		...  [[0,4],
		...   [1,3],
		...   [2,2],
		...   [3,1],
		...   [4,0]],
		... ])
		>>> indices.shape.as_list()  # batch_shape == [2, 5], index_depth == 2
		[2, 5, 2]
		
		Here the `indices` do not have a shape of `[num_updates, index_depth]`, but a
		shape of `batch_shape+[index_depth]`.
		
		Since the `index_depth` is equal to the rank of `tensor`:
		
		* `outer_shape` is `(5,5)`
		* `inner_shape` is `()` - each update is scalar
		* `updates.shape` is `batch_shape + inner_shape == (5,2) + ()`
		
		>>> updates = [
		...   [1,1,1,1,1],
		...   [1,1,1,1,1],
		... ]
		
		Putting this together gives:
		
		>>> tf.tensor_scatter_nd_update(tensor, indices, updates).numpy()
		array([[1., 0., 0., 0., 1.],
		       [0., 1., 0., 1., 0.],
		       [0., 0., 1., 0., 0.],
		       [0., 1., 0., 1., 0.],
		       [1., 0., 0., 0., 1.]], dtype=float32)
		
		Args:
		  tensor: Tensor to copy/update.
		  indices: Indices to update.
		  updates: Updates to apply at the indices.
		  name: Optional name for the operation.
		
		Returns:
		  A new tensor with the given shape and updates applied according to the
		  indices.
	**/
	static public function tensor_scatter_update(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Tensor contraction of a and b along specified axes and outer product.
		
		Tensordot (also known as tensor contraction) sums the product of elements
		from `a` and `b` over the indices specified by `axes`.
		
		This operation corresponds to `numpy.tensordot(a, b, axes)`.
		
		Example 1: When `a` and `b` are matrices (order 2), the case `axes=1`
		is equivalent to matrix multiplication.
		
		Example 2: When `a` and `b` are matrices (order 2), the case
		`axes = [[1], [0]]` is equivalent to matrix multiplication.
		
		Example 3: When `a` and `b` are matrices (order 2), the case `axes=0` gives
		the outer product, a tensor of order 4.
		
		Example 4: Suppose that \\(a_{ijk}\\) and \\(b_{lmn}\\) represent two
		tensors of order 3. Then, `contract(a, b, [[0], [2]])` is the order 4 tensor
		\\(c_{jklm}\\) whose entry
		corresponding to the indices \\((j,k,l,m)\\) is given by:
		
		\\( c_{jklm} = \sum_i a_{ijk} b_{lmi} \\).
		
		In general, `order(c) = order(a) + order(b) - 2*len(axes[0])`.
		
		Args:
		  a: `Tensor` of type `float32` or `float64`.
		  b: `Tensor` with the same type as `a`.
		  axes: Either a scalar `N`, or a list or an `int32` `Tensor` of shape [2, k].
		    If axes is a scalar, sum over the last N axes of a and the first N axes of
		    b in order. If axes is a list or `Tensor` the first and second row contain
		    the set of unique integers specifying axes along which the contraction is
		    computed, for `a` and `b`, respectively. The number of axes for `a` and
		    `b` must be equal. If `axes=0`, computes the outer product between `a` and
		    `b`.
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
		Constructs a tensor by tiling a given tensor.
		
		This operation creates a new tensor by replicating `input` `multiples` times.
		The output tensor's i'th dimension has `input.dims(i) * multiples[i]` elements,
		and the values of `input` are replicated `multiples[i]` times along the 'i'th
		dimension. For example, tiling `[a b c d]` by `[2]` produces
		`[a b c d a b c d]`.
		
		>>> a = tf.constant([[1,2,3],[4,5,6]], tf.int32)
		>>> b = tf.constant([1,2], tf.int32)
		>>> tf.tile(a, b)
		<tf.Tensor: shape=(2, 6), dtype=int32, numpy=
		array([[1, 2, 3, 1, 2, 3],
		       [4, 5, 6, 4, 5, 6]], dtype=int32)>
		>>> c = tf.constant([2,1], tf.int32)
		>>> tf.tile(a, c)
		<tf.Tensor: shape=(4, 3), dtype=int32, numpy=
		array([[1, 2, 3],
		       [4, 5, 6],
		       [1, 2, 3],
		       [4, 5, 6]], dtype=int32)>
		>>> d = tf.constant([2,2], tf.int32)
		>>> tf.tile(a, d)
		<tf.Tensor: shape=(4, 6), dtype=int32, numpy=
		array([[1, 2, 3, 1, 2, 3],
		       [4, 5, 6, 4, 5, 6],
		       [1, 2, 3, 1, 2, 3],
		       [4, 5, 6, 4, 5, 6]], dtype=int32)>
		
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
		Casts a tensor to type `bfloat16`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.cast` instead.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `bfloat16`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `bfloat16`.
		
		@compatibility(TF2)
		
		This name was deprecated and removed in TF2, but has an exact replacement
		`tf.cast(..., tf.bfloat16)`. There are no further issues with eager execution
		or tf.function.
		
		Before:
		
		>>> tf.compat.v1.to_bfloat16(tf.constant(3.14, dtype=tf.float32))
		<tf.Tensor: shape=(), dtype=bfloat16, numpy=3.14>
		
		After:
		
		>>> tf.cast(tf.constant(3.14, dtype=tf.float32), tf.bfloat16)
		<tf.Tensor: shape=(), dtype=bfloat16, numpy=3.14>
		
		@end_compatibility
	**/
	static public function to_bfloat16(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `complex128`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.cast` instead.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `complex128`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `complex128`.
		
		@compatibility(TF2)
		
		This name was deprecated and removed in TF2, but has an exact replacement
		`tf.cast(..., tf.complex128)`. There are no further issues with eager
		execution or tf.function.
		
		Before:
		
		>>> tf.compat.v1.to_complex128(tf.constant(1. + 2.j, dtype=tf.complex64))
		<tf.Tensor: shape=(), dtype=complex128, numpy=(1+2j)>
		
		After:
		
		>>> tf.cast(tf.constant(1. + 2.j, dtype=tf.complex64), tf.complex128)
		<tf.Tensor: shape=(), dtype=complex128, numpy=(1+2j)>
		
		@end_compatibility
	**/
	static public function to_complex128(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `complex64`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.cast` instead.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `complex64`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `complex64`.
		
		@compatibility(TF2)
		
		This name was deprecated and removed in TF2, but has an exact replacement
		`tf.cast(..., tf.complex64)`. There are no further issues with eager execution
		or tf.function.
		
		Before:
		
		>>> tf.compat.v1.to_complex64(tf.constant(1. + 2.j, dtype=tf.complex128))
		<tf.Tensor: shape=(), dtype=complex64, numpy=(1+2j)>
		
		After:
		
		>>> tf.cast(tf.constant(1. + 2.j, dtype=tf.complex128), tf.complex64)
		<tf.Tensor: shape=(), dtype=complex64, numpy=(1+2j)>
		
		@end_compatibility
	**/
	static public function to_complex64(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `float64`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.cast` instead.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `float64`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `float64`.
		
		@compatibility(TF2)
		
		This name was deprecated and removed in TF2, but has an exact replacement
		`tf.cast(..., tf.double)`. There are no further issues with eager execution or
		tf.function.
		
		Before:
		
		>>> tf.compat.v1.to_double(tf.constant(3.14, dtype=tf.float32))
		<tf.Tensor: shape=(), dtype=float64, numpy=3.14>
		
		After:
		
		>>> tf.cast(tf.constant(3.14, dtype=tf.float32), tf.double)
		<tf.Tensor: shape=(), dtype=float64, numpy=3.14>
		
		@end_compatibility
	**/
	static public function to_double(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `float32`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.cast` instead.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `float32`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `float32`.
		
		@compatibility(TF2)
		
		This name was deprecated and removed in TF2, but has an exact replacement
		`tf.cast(..., tf.float32)`. There are no further issues with eager execution
		or tf.function.
		
		Before:
		
		>>> tf.compat.v1.to_float(tf.constant(3.14, dtype=tf.double))
		<tf.Tensor: shape=(), dtype=float32, numpy=3.14>
		
		After:
		
		>>> tf.cast(tf.constant(3.14, dtype=tf.double), tf.float32)
		<tf.Tensor: shape=(), dtype=float32, numpy=3.14>
		
		@end_compatibility
	**/
	static public function to_float(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `int32`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.cast` instead.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `int32`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `int32`.
		
		@compatibility(TF2)
		
		This name was deprecated and removed in TF2, but has an exact replacement
		`tf.cast(..., tf.int32)`. There are no further issues with eager execution or
		tf.function.
		
		Before:
		
		>>> tf.compat.v1.to_int32(tf.constant(1, dtype=tf.int64))
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		
		After:
		
		>>> tf.cast(tf.constant(1, dtype=tf.int64), tf.int32)
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		
		@end_compatibility
	**/
	static public function to_int32(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `int64`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.cast` instead.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `int64`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `int64`.
		
		@compatibility(TF2)
		
		This name was deprecated and removed in TF2, but has an exact replacement
		`tf.cast(..., tf.int64)`. There are no further issues with eager execution or
		tf.function.
		
		Before:
		
		>>> tf.compat.v1.to_int64(tf.constant(1, dtype=tf.int32))
		<tf.Tensor: shape=(), dtype=int64, numpy=1>
		
		After:
		
		>>> tf.cast(tf.constant(1, dtype=tf.int32), tf.int64)
		<tf.Tensor: shape=(), dtype=int64, numpy=1>
		
		@end_compatibility
	**/
	static public function to_int64(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the trace of a tensor `x`.
		
		`trace(x)` returns the sum along the main diagonal of each inner-most matrix
		in x. If x is of rank `k` with shape `[I, J, K, ..., L, M, N]`, then output
		is a tensor of rank `k-2` with dimensions `[I, J, K, ..., L]` where
		
		`output[i, j, k, ..., l] = trace(x[i, j, k, ..., l, :, :])`
		
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
		
		@compatibility(TF2)
		Not compatible with eager execution and `tf.function`. In particular, Graph
		collections are deprecated in TF2. Instead please create a `tf.Module`
		container for all your model state, including variables.
		You can then list all the trainable variables in your `tf.Module` through the
		`trainable_variables` attribute.
		@end_compatibility
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered to
		    include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a scope
		    is supplied. The choice of `re.match` means that a `scope` without special
		    tokens filters by prefix.
		
		Returns:
		  A list of Variable objects.
	**/
	static public function trainable_variables(?scope:Dynamic):Dynamic;
	/**
		Transposes `a`.
		
		Permutes the dimensions according to `perm`.
		
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
		# (this common operation has a shorthand `linalg.matrix_transpose`)
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
		    to tf.math.conj(tf.transpose(input)).
		
		Returns:
		  A transposed `Tensor`.
	**/
	static public function transpose(a:Dynamic, ?perm:Dynamic, ?name:Dynamic, ?conjugate:Dynamic):Dynamic;
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
		Outputs random values from a truncated normal distribution.
		
		The values are drawn from a normal distribution with specified mean and
		standard deviation, discarding and re-drawing any samples that are more than
		two standard deviations from the mean.
		
		Examples:
		
		>>> tf.random.truncated_normal(shape=[2])
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([..., ...], dtype=float32)>
		
		>>> tf.random.truncated_normal(shape=[2], mean=3, stddev=1, dtype=tf.float32)
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([..., ...], dtype=float32)>
		
		Args:
		  shape: A 1-D integer Tensor or Python array. The shape of the output tensor.
		  mean: A 0-D Tensor or Python value of type `dtype`. The mean of the
		    truncated normal distribution.
		  stddev: A 0-D Tensor or Python value of type `dtype`. The standard deviation
		    of the normal distribution, before truncation.
		  dtype: The type of the output. Restricted to floating-point types:
		    `tf.half`, `tf.float`, `tf.double`, etc.
		  seed: A Python integer. Used to create a random seed for the distribution.
		    See `tf.random.set_seed` for more information.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of the specified shape filled with random truncated normal values.
	**/
	static public function truncated_normal(shape:Dynamic, ?mean:Dynamic, ?stddev:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x / y element-wise for integer types.
		
		Truncation designates that negative numbers will round fractional quantities
		toward zero. I.e. -7 / 5 = -1. This matches C semantics but it is different
		than Python semantics. See `FloorDiv` for a division function that matches
		Python Semantics.
		
		*NOTE*: `truncatediv` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `uint32`, `uint64`, `int64`, `complex64`, `complex128`.
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
		
		*NOTE*: `truncatemod` supports broadcasting. More about broadcasting
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
	/**
		Returns a `tf.TypeSpec` that represents the given `value`.
		
		Examples:
		
		  >>> tf.type_spec_from_value(tf.constant([1, 2, 3]))
		  TensorSpec(shape=(3,), dtype=tf.int32, name=None)
		  >>> tf.type_spec_from_value(np.array([4.0, 5.0], np.float64))
		  TensorSpec(shape=(2,), dtype=tf.float64, name=None)
		  >>> tf.type_spec_from_value(tf.ragged.constant([[1, 2], [3, 4, 5]]))
		  RaggedTensorSpec(TensorShape([2, None]), tf.int32, 1, tf.int64)
		
		  >>> example_input = tf.ragged.constant([[1, 2], [3]])
		  >>> @tf.function(input_signature=[tf.type_spec_from_value(example_input)])
		  ... def f(x):
		  ...   return tf.reduce_sum(x, axis=1)
		
		Args:
		  value: A value that can be accepted or returned by TensorFlow APIs. Accepted
		    types for `value` include `tf.Tensor`, any value that can be converted to
		    `tf.Tensor` using `tf.convert_to_tensor`, and any subclass of
		    `CompositeTensor` (such as `tf.RaggedTensor`).
		
		Returns:
		  A `TypeSpec` that is compatible with `value`.
		
		Raises:
		  TypeError: If a TypeSpec cannot be built for `value`, because its type
		    is not supported.
	**/
	static public function type_spec_from_value(value:Dynamic):Dynamic;
	static public var uint16 : Dynamic;
	static public var uint32 : Dynamic;
	static public var uint64 : Dynamic;
	static public var uint8 : Dynamic;
	/**
		Finds unique elements in a 1-D tensor.
		
		This operation returns a tensor `y` containing all of the unique elements of `x`
		sorted in the same order that they occur in `x`; `x` does not need to be sorted.
		This operation also returns a tensor `idx` the same size as `x` that contains
		the index of each value of `x` in the unique output `y`. In other words:
		
		`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`
		
		Examples:
		
		```
		# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
		y, idx = unique(x)
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
		```
		
		```
		# tensor 'x' is [4, 5, 1, 2, 3, 3, 4, 5]
		y, idx = unique(x)
		y ==> [4, 5, 1, 2, 3]
		idx ==> [0, 1, 2, 3, 4, 4, 0, 1]
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
		Converts an array of flat indices into a tuple of coordinate arrays.
		
		
		Example:
		
		```
		y = tf.unravel_index(indices=[2, 5, 7], dims=[3, 3])
		# 'dims' represent a hypothetical (3, 3) tensor of indices:
		# [[0, 1, *2*],
		#  [3, 4, *5*],
		#  [6, *7*, 8]]
		# For each entry from 'indices', this operation returns
		# its coordinates (marked with '*'), such as
		# 2 ==> (0, 2)
		# 5 ==> (1, 2)
		# 7 ==> (2, 1)
		y ==> [[0, 1, 2], [2, 2, 1]]
		```
		
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
		Computes the maximum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
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
		
		For example:
		
		``` python
		c = tf.constant([[1,2,3,4], [5,6,7,8], [4,3,2,1]])
		tf.unsorted_segment_max(c, tf.constant([0, 1, 0]), num_segments=2)
		# ==> [[ 4,  3, 3, 4],
		#       [5,  6, 7, 8]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor whose shape is a prefix of `data.shape`.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function unsorted_segment_max(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean along segments of a tensor.
		
		Read [the section on
		segmentation](https://www.tensorflow.org/versions/r2.0/api_docs/python/tf/math#about_segmentation)
		for an explanation of segments.
		
		This operator is similar to the `tf.math.unsorted_segment_sum` operator.
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
		  num_segments: An integer scalar `Tensor`.  The number of distinct segment
		    IDs.
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
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[(here)](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
		Instead of computing the sum over segments, it computes the minimum such that:
		
		\\(output_i = \min_{j...} data_[j...]\\) where min is over tuples `j...` such
		that `segment_ids[j...] == i`.
		
		If the minimum is empty for a given segment ID `i`, it outputs the largest
		possible value for the specific numeric type,
		`output[i] = numeric_limits<T>::max()`.
		
		For example:
		
		``` python
		c = tf.constant([[1,2,3,4], [5,6,7,8], [4,3,2,1]])
		tf.unsorted_segment_min(c, tf.constant([0, 1, 0]), num_segments=2)
		# ==> [[ 1,  2, 2, 1],
		#       [5,  6, 7, 8]]
		```
		
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
		Computes the product along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[(here)](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
		Instead of computing the sum over segments, it computes the product of all
		entries belonging to a segment such that:
		
		\\(output_i = \prod_{j...} data[j...]\\) where the product is over tuples
		`j...` such that `segment_ids[j...] == i`.
		
		For example:
		
		``` python
		c = tf.constant([[1,2,3,4], [5,6,7,8], [4,3,2,1]])
		tf.unsorted_segment_prod(c, tf.constant([0, 1, 0]), num_segments=2)
		# ==> [[ 4,  6, 6, 4],
		#       [5,  6, 7, 8]]
		```
		
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
		Computes the sum along segments of a tensor divided by the sqrt(N).
		
		Read [the section on
		segmentation](https://www.tensorflow.org/versions/r2.0/api_docs/python/tf/math#about_segmentation)
		for an explanation of segments.
		
		This operator is similar to the `tf.math.unsorted_segment_sum` operator.
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
		  num_segments: An integer scalar `Tensor`.  The number of distinct segment
		    IDs.
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
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
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
		
		``` python
		c = tf.constant([[1,2,3,4], [5,6,7,8], [4,3,2,1]])
		tf.math.unsorted_segment_sum(c, tf.constant([0, 1, 0]), num_segments=2)
		# ==> [[ 5, 5, 5, 5],
		#       [5, 6, 7, 8]]
		```
		
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
		Unpacks the given dimension of a rank-`R` tensor into rank-`(R-1)` tensors.
		
		Unpacks tensors from `value` by chipping it along the `axis` dimension.
		
		>>> x = tf.reshape(tf.range(12), (3,4))
		>>>
		>>> p, q, r = tf.unstack(x)
		>>> p.shape.as_list()
		[4]
		
		>>> i, j, k, l = tf.unstack(x, axis=1)
		>>> i.shape.as_list()
		[3]
		
		This is the opposite of stack.
		
		>>> x = tf.stack([i, j, k, l], axis=1)
		
		More generally if you have a tensor of shape `(A, B, C, D)`:
		
		>>> A, B, C, D = [2, 3, 4, 5]
		>>> t = tf.random.normal(shape=[A, B, C, D])
		
		The number of tensor returned is equal to the length of the target `axis`:
		
		>>> axis = 2
		>>> items = tf.unstack(t, axis=axis)
		>>> len(items) == t.shape[axis]
		True
		
		The shape of each result tensor is equal to the shape of the input tensor,
		with the target `axis` removed.
		
		>>> items[0].shape.as_list()  # [A, B, D]
		[2, 3, 5]
		
		The value of each tensor `items[i]` is equal to the slice of `input` across
		`axis` at index `i`:
		
		>>> for i in range(len(items)):
		...   slice = t[:,:,i,:]
		...   assert tf.reduce_all(slice == items[i])
		
		#### Python iterable unpacking
		
		With eager execution you _can_ unstack the 0th axis of a tensor using python's
		iterable unpacking:
		
		>>> t = tf.constant([1,2,3])
		>>> a,b,c = t
		
		`unstack` is still necessary because Iterable unpacking doesn't work in
		a `@tf.function`: Symbolic tensors are not iterable.
		
		You need to use `tf.unstack` here:
		
		>>> @tf.function
		... def bad(t):
		...   a,b,c = t
		...   return a
		>>>
		>>> bad(t)
		Traceback (most recent call last):
		...
		OperatorNotAllowedInGraphError: ...
		
		>>> @tf.function
		... def good(t):
		...   a,b,c = tf.unstack(t)
		...   return a
		>>>
		>>> good(t).numpy()
		1
		
		#### Unknown shapes
		
		Eager tensors have concrete values, so their shape is always known.
		Inside a `tf.function` the symbolic tensors may have unknown shapes.
		If the length of `axis` is unknown `tf.unstack` will fail because it cannot
		handle an unknown number of tensors:
		
		>>> @tf.function(input_signature=[tf.TensorSpec([None], tf.float32)])
		... def bad(t):
		...   tensors = tf.unstack(t)
		...   return tensors[0]
		>>>
		>>> bad(tf.constant([1,2,3]))
		Traceback (most recent call last):
		...
		ValueError: Cannot infer argument `num` from shape (None,)
		
		If you know the `axis` length you can pass it as the `num` argument. But this
		must be a constant value.
		
		If you actually need a variable number of tensors in a single `tf.function`
		trace, you will need to use exlicit loops and a `tf.TensorArray` instead.
		
		Args:
		  value: A rank `R > 0` `Tensor` to be unstacked.
		  num: An `int`. The length of the dimension `axis`. Automatically inferred if
		    `None` (the default).
		  axis: An `int`. The axis to unstack along. Defaults to the first dimension.
		    Negative values wrap around, so the valid range is `[-R, R)`.
		  name: A name for the operation (optional).
		
		Returns:
		  The list of `Tensor` objects unstacked from `value`.
		
		Raises:
		  ValueError: If `axis` is out of the range `[-R, R)`.
		  ValueError: If `num` is unspecified and cannot be inferred.
		  InvalidArgumentError: If `num` does not match the shape of `value`.
	**/
	static public function unstack(value:Dynamic, ?num:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
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
		  `variable_scope` and `get_variable`.
		
		Raises:
		  ValueError: If any of the byte counts are non-positive.
	**/
	static public function variable_axis_size_partitioner(max_shard_bytes:Dynamic, ?axis:Dynamic, ?bytes_per_string_element:Dynamic, ?max_shards:Dynamic):Dynamic;
	/**
		Scope which defines a variable creation function to be used by variable().
		
		variable_creator is expected to be a function with the following signature:
		
		```
		  def variable_creator(next_creator, **kwargs)
		```
		
		The creator is supposed to eventually call the next_creator to create a
		variable if it does want to create a variable and not call Variable or
		ResourceVariable directly. This helps make creators composable. A creator may
		choose to create multiple variables, return already existing variables, or
		simply register that a variable was created and defer to the next creators in
		line. Creators can also modify the keyword arguments seen by the next
		creators.
		
		Custom getters in the variable scope will eventually resolve down to these
		custom creators when they do create variables.
		
		The valid keyword arguments in kwds are:
		
		 * initial_value: A `Tensor`, or Python object convertible to a `Tensor`,
		      which is the initial value for the Variable. The initial value must have
		      a shape specified unless `validate_shape` is set to False. Can also be a
		      callable with no argument that returns the initial value when called. In
		      that case, `dtype` must be specified. (Note that initializer functions
		      from init_ops.py must first be bound to a shape before being used here.)
		 * trainable: If `True`, the default, also adds the variable to the graph
		      collection `GraphKeys.TRAINABLE_VARIABLES`. This collection is used as
		      the default list of variables to use by the `Optimizer` classes.
		      `trainable` defaults to `True`, unless `synchronization` is
		      set to `ON_READ`, in which case it defaults to `False`.
		 * collections: List of graph collections keys. The new variable is added to
		      these collections. Defaults to `[GraphKeys.GLOBAL_VARIABLES]`.
		 * validate_shape: If `False`, allows the variable to be initialized with a
		      value of unknown shape. If `True`, the default, the shape of
		      `initial_value` must be known.
		 * caching_device: Optional device string describing where the Variable
		      should be cached for reading.  Defaults to the Variable's device.
		      If not `None`, caches on another device.  Typical use is to cache
		      on the device where the Ops using the Variable reside, to deduplicate
		      copying through `Switch` and other conditional statements.
		 * name: Optional name for the variable. Defaults to `'Variable'` and gets
		      uniquified automatically.
		 * dtype: If set, initial_value will be converted to the given type.
		      If `None`, either the datatype will be kept (if `initial_value` is
		      a Tensor), or `convert_to_tensor` will decide.
		 * constraint: A constraint function to be applied to the variable after
		      updates by some algorithms.
		 * use_resource: if True, a ResourceVariable is always created.
		 * synchronization: Indicates when a distributed a variable will be
		      aggregated. Accepted values are constants defined in the class
		      `tf.VariableSynchronization`. By default the synchronization is set to
		      `AUTO` and the current `DistributionStrategy` chooses
		      when to synchronize.
		 * aggregation: Indicates how a distributed variable will be aggregated.
		      Accepted values are constants defined in the class
		      `tf.VariableAggregation`.
		
		This set may grow over time, so it's important the signature of creators is as
		mentioned above.
		
		Args:
		  variable_creator: the passed creator
		
		Yields:
		  A scope in which the creator is active
	**/
	static public function variable_creator_scope(variable_creator:Dynamic):Dynamic;
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
		
		@compatibility(TF2)
		In TF2, variables are initialized immediately when they are created. There is
		no longer a need to run variable initializers before using them.
		@end_compatibility
		
		Args:
		  var_list: List of `Variable` objects to initialize.
		  name: Optional name for the returned operation.
		
		Returns:
		  An Op that run the initializers of all the specified variables.
	**/
	static public function variables_initializer(var_list:Dynamic, ?name:Dynamic):Dynamic;
	static public var variant : Dynamic;
	/**
		Parallel map on the list of tensors unpacked from `elems` on dimension 0.
		
		This method works similar to `tf.map_fn` but is optimized to run much faster,
		possibly with a much larger memory footprint. The speedups are obtained by
		vectorization (see [Auto-Vectorizing TensorFlow Graphs: Jacobians,
		Auto-Batching and Beyond](https://arxiv.org/pdf/1903.04243.pdf)). The idea
		behind vectorization is to semantically launch all the invocations of `fn` in
		parallel and fuse corresponding operations across all these invocations. This
		fusion is done statically at graph generation time and the generated code is
		often similar in performance to a manually fused version.
		
		Because `tf.vectorized_map` fully parallelizes the batch, this method will
		generally be significantly faster than using `tf.map_fn`, especially in eager
		mode. However this is an experimental feature and currently has a lot of
		limitations:
		  - There should be no data dependency between the different semantic
		    invocations of `fn`, i.e. it should be safe to map the elements of the
		    inputs in any order.
		  - Stateful kernels may mostly not be supported since these often imply a
		    data dependency. We do support a limited set of such stateful kernels
		    though (like RandomFoo, Variable operations like reads, etc).
		  - `fn` has limited support for control flow operations.
		  - `fn` should return nested structure of Tensors or Operations. However
		    if an Operation is returned, it should have zero outputs.
		  - The shape and dtype of any intermediate or output tensors in the
		    computation of `fn` should not depend on the input to `fn`.
		
		Examples:
		```python
		def outer_product(a):
		  return tf.tensordot(a, a, 0)
		
		batch_size = 100
		a = tf.ones((batch_size, 32, 32))
		c = tf.vectorized_map(outer_product, a)
		assert c.shape == (batch_size, 32, 32, 32, 32)
		```
		
		```python
		# Computing per-example gradients
		
		batch_size = 10
		num_features = 32
		layer = tf.keras.layers.Dense(1)
		
		def model_fn(arg):
		  with tf.GradientTape() as g:
		    inp, label = arg
		    inp = tf.expand_dims(inp, 0)
		    label = tf.expand_dims(label, 0)
		    prediction = layer(inp)
		    loss = tf.nn.l2_loss(label - prediction)
		  return g.gradient(loss, (layer.kernel, layer.bias))
		
		inputs = tf.random.uniform([batch_size, num_features])
		labels = tf.random.uniform([batch_size, 1])
		per_example_gradients = tf.vectorized_map(model_fn, (inputs, labels))
		assert per_example_gradients[0].shape == (batch_size, num_features, 1)
		assert per_example_gradients[1].shape == (batch_size, 1)
		```
		
		Args:
		  fn: The callable to be performed. It accepts one argument, which will have
		    the same (possibly nested) structure as `elems`, and returns a possibly
		    nested structure of Tensors and Operations, which may be different than
		    the structure of `elems`.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unpacked along their first dimension. The nested sequence of the
		    resulting slices will be mapped over by `fn`. The first dimensions of all
		    elements must broadcast to a consistent value; equivalently, each
		    element tensor must have first dimension of either `B` or `1`, for some
		    common batch size `B >= 1`.
		  fallback_to_while_loop: If true, on failing to vectorize an operation,
		    the unsupported op is wrapped in a tf.while_loop to execute the map
		    iterations. Note that this fallback only happens for unsupported ops and
		    other parts of `fn` are still vectorized. If false, on encountering an
		    unsupported op, a ValueError is thrown. Note that the fallbacks can result
		    in slowdowns since vectorization often yields speedup of one to two orders
		    of magnitude.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors. Each tensor packs the
		  results of applying fn to tensors unpacked from elems along the first
		  dimension, from first to last.
		
		  Although they are less common as user-visible inputs and outputs, note that
		  tensors of type `tf.variant` which represent tensor lists (for example from
		  `tf.raw_ops.TensorListFromTensor`) are vectorized by stacking the list
		  contents rather than the variant itself, and so the container tensor will
		  have a scalar shape when returned rather than the usual stacked shape. This
		  improves the performance of control flow gradient vectorization.
		
		Raises:
		  ValueError: If vectorization fails and fallback_to_while_loop is False.
	**/
	static public function vectorized_map(fn:Dynamic, elems:Dynamic, ?fallback_to_while_loop:Dynamic):Dynamic;
	/**
		Assert that the tensor does not contain any NaN's or Inf's.
		
		Args:
		  t: Tensor to check.
		  msg: Message to log on failure.
		  name: A name for this operation (optional).
		  x: Alias for t.
		  message: Alias for msg.
		
		Returns:
		  Same tensor as `t`.
	**/
	static public function verify_tensor_all_finite(?t:Dynamic, ?msg:Dynamic, ?name:Dynamic, ?x:Dynamic, ?message:Dynamic):Dynamic;
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
		If `x` and `y` are tensors of higher rank, then `condition` must be either a
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
		  Otherwise, a `Tensor` with shape `(num_true, rank(condition))`.
		
		Raises:
		  ValueError: When exactly one of `x` or `y` is non-None.
		
		@compatibility(TF2)
		
		This API is compatible with eager execution and `tf.function`. However, this
		is still a legacy API endpoint originally designed for TF1. To migrate to
		fully-native TF2, please replace its usage with `tf.where` instead, which is
		directly backwards compatible with `tf.compat.v1.where`.
		
		However,`tf.compat.v1.where` is more restrictive than `tf.where`, requiring
		`x` and `y` to have the same shape, and returning a `Tensor` with the same
		type and shape as `x`, `y` (if they are both non-None).
		
		`tf.where` will accept `x`, `y` that are not the same shape as long as they
		are broadcastable with one another and with `condition`, and will return a
		`Tensor` with shape broadcast from `condition`, `x`, and `y`.
		
		For example, the following works with `tf.where` but not `tf.compat.v1.where`:
		
		>>> tf.where([True, False, False, True], [1,2,3,4], [100])
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([  1, 100, 100,   4],
		dtype=int32)>
		
		>>> tf.where(True, [1,2,3,4], 100)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([1, 2, 3, 4],
		dtype=int32)>
		
		@end_compatibility
	**/
	static public function where(condition:Dynamic, ?x:Dynamic, ?y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return the elements where `condition` is `True` (multiplexing `x` and `y`).
		
		This operator has two modes: in one mode both `x` and `y` are provided, in
		another mode neither are provided. `condition` is always expected to be a
		`tf.Tensor` of type `bool`.
		
		#### Retrieving indices of `True` elements
		
		If `x` and `y` are not provided (both are None):
		
		`tf.where` will return the indices of `condition` that are `True`, in
		the form of a 2-D tensor with shape (n, d).
		(Where n is the number of matching indices in `condition`,
		and d is the number of dimensions in `condition`).
		
		Indices are output in row-major order.
		
		>>> tf.where([True, False, False, True])
		<tf.Tensor: shape=(2, 1), dtype=int64, numpy=
		array([[0],
		       [3]])>
		
		>>> tf.where([[True, False], [False, True]])
		<tf.Tensor: shape=(2, 2), dtype=int64, numpy=
		array([[0, 0],
		       [1, 1]])>
		
		>>> tf.where([[[True, False], [False, True], [True, True]]])
		<tf.Tensor: shape=(4, 3), dtype=int64, numpy=
		array([[0, 0, 0],
		       [0, 1, 1],
		       [0, 2, 0],
		       [0, 2, 1]])>
		
		#### Multiplexing between `x` and `y`
		
		If `x` and `y` are provided (both have non-None values):
		
		`tf.where` will choose an output shape from the shapes of `condition`, `x`,
		and `y` that all three shapes are
		[broadcastable](https://docs.scipy.org/doc/numpy/reference/ufuncs.html) to.
		
		The `condition` tensor acts as a mask that chooses whether the corresponding
		element / row in the output should be taken from `x`
		(if the element in `condition` is True) or `y` (if it is false).
		
		>>> tf.where([True, False, False, True], [1,2,3,4], [100,200,300,400])
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([  1, 200, 300,   4],
		dtype=int32)>
		>>> tf.where([True, False, False, True], [1,2,3,4], [100])
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([  1, 100, 100,   4],
		dtype=int32)>
		>>> tf.where([True, False, False, True], [1,2,3,4], 100)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([  1, 100, 100,   4],
		dtype=int32)>
		>>> tf.where([True, False, False, True], 1, 100)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([  1, 100, 100,   1],
		dtype=int32)>
		
		>>> tf.where(True, [1,2,3,4], 100)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([1, 2, 3, 4],
		dtype=int32)>
		>>> tf.where(False, [1,2,3,4], 100)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([100, 100, 100, 100],
		dtype=int32)>
		
		Note that if the gradient of either branch of the tf.where generates
		a NaN, then the gradient of the entire tf.where will be NaN. This is because
		the gradient calculation for tf.where combines the two branches, for
		performance reasons.
		
		A workaround is to use an inner tf.where to ensure the function has
		no asymptote, and to avoid computing a value whose gradient is NaN by
		replacing dangerous inputs with safe inputs.
		
		Instead of this,
		
		>>> x = tf.constant(0., dtype=tf.float32)
		>>> with tf.GradientTape() as tape:
		...   tape.watch(x)
		...   y = tf.where(x < 1., 0., 1. / x)
		>>> print(tape.gradient(y, x))
		tf.Tensor(nan, shape=(), dtype=float32)
		
		Although, the `1. / x` values are never used, its gradient is a NaN when x =
		0. Instead, we should guard that with another `tf.where`
		
		>>> x = tf.constant(0., dtype=tf.float32)
		>>> with tf.GradientTape() as tape:
		...   tape.watch(x)
		...   safe_x = tf.where(tf.equal(x, 0.), 1., x)
		...   y = tf.where(x < 1., 0., 1. / safe_x)
		>>> print(tape.gradient(y, x))
		tf.Tensor(0.0, shape=(), dtype=float32)
		
		Args:
		  condition: A `tf.Tensor` of type `bool`
		  x: If provided, a Tensor which is of the same type as `y`, and has a shape
		    broadcastable with `condition` and `y`.
		  y: If provided, a Tensor which is of the same type as `x`, and has a shape
		    broadcastable with `condition` and `x`.
		  name: A name of the operation (optional).
		
		Returns:
		  If `x` and `y` are provided:
		    A `Tensor` with the same type as `x` and `y`, and shape that
		    is broadcast from `condition`, `x`, and `y`.
		  Otherwise, a `Tensor` with shape `(num_true, dim_size(condition))`.
		
		Raises:
		  ValueError: When exactly one of `x` or `y` is non-None, or the shapes
		    are not all broadcastable.
	**/
	static public function where_v2(condition:Dynamic, ?x:Dynamic, ?y:Dynamic, ?name:Dynamic):Dynamic;
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
		Wraps the TF 1.x function fn into a graph function.
		
		The python function `fn` will be called once with symbolic arguments specified
		in the `signature`, traced, and turned into a graph function. Any variables
		created by `fn` will be owned by the object returned by `wrap_function`. The
		resulting graph function can be called with tensors which match the
		signature.
		
		```python
		def f(x, do_add):
		  v = tf.Variable(5.0)
		  if do_add:
		    op = v.assign_add(x)
		  else:
		    op = v.assign_sub(x)
		  with tf.control_dependencies([op]):
		    return v.read_value()
		
		f_add = tf.compat.v1.wrap_function(f, [tf.TensorSpec((), tf.float32), True])
		
		assert float(f_add(1.0)) == 6.0
		assert float(f_add(1.0)) == 7.0
		
		# Can call tf.compat.v1.wrap_function again to get a new trace, a new set
		# of variables, and possibly different non-template arguments.
		f_sub= tf.compat.v1.wrap_function(f, [tf.TensorSpec((), tf.float32), False])
		
		assert float(f_sub(1.0)) == 4.0
		assert float(f_sub(1.0)) == 3.0
		```
		
		Both `tf.compat.v1.wrap_function` and `tf.function` create a callable
		TensorFlow graph. But while `tf.function` runs all stateful operations
		(e.g. `tf.print`) and sequences operations to provide the same semantics as
		eager execution, `wrap_function` is closer to the behavior of `session.run` in
		TensorFlow 1.x. It will not run any operations unless they are required to
		compute the function's outputs, either through a data dependency or a control
		dependency. Nor will it sequence operations.
		
		Unlike `tf.function`, `wrap_function` will only trace the Python function
		once. As with placeholders in TF 1.x, shapes and dtypes must be provided to
		`wrap_function`'s `signature` argument.
		
		Since it is only traced once, variables and state may be created inside the
		function and owned by the function wrapper object.
		
		Args:
		  fn: python function to be wrapped
		  signature: the placeholder and python arguments to be passed to the wrapped
		    function
		  name: Optional. The name of the function.
		
		Returns:
		  the wrapped graph function.
	**/
	static public function wrap_function(fn:Dynamic, signature:Dynamic, ?name:Dynamic):Dynamic;
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
		Creates a tensor with all elements set to zero.
		
		See also `tf.zeros_like`, `tf.ones`, `tf.fill`, `tf.eye`.
		
		This operation returns a tensor of type `dtype` with shape `shape` and
		all elements set to zero.
		
		>>> tf.zeros([3, 4], tf.int32)
		<tf.Tensor: shape=(3, 4), dtype=int32, numpy=
		array([[0, 0, 0, 0],
		       [0, 0, 0, 0],
		       [0, 0, 0, 0]], dtype=int32)>
		
		Args:
		  shape: A `list` of integers, a `tuple` of integers, or
		    a 1-D `Tensor` of type `int32`.
		  dtype: The DType of an element in the resulting `Tensor`.
		  name: Optional string. A name for the operation.
		
		Returns:
		  A `Tensor` with all elements set to zero.
	**/
	static public function zeros(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to zero.
		
		See also `tf.zeros`.
		
		Given a single tensor (`tensor`), this operation returns a tensor of the
		same type and shape as `tensor` with all elements set to zero. Optionally,
		you can use `dtype` to specify a new type for the returned tensor.
		
		Examples:
		
		  >>> tensor = tf.constant([[1, 2, 3], [4, 5, 6]])
		  >>> tf.zeros_like(tensor)
		  <tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		  array([[0, 0, 0],
		         [0, 0, 0]], dtype=int32)>
		
		  >>> tf.zeros_like(tensor, dtype=tf.float32)
		  <tf.Tensor: shape=(2, 3), dtype=float32, numpy=
		  array([[0., 0., 0.],
		         [0., 0., 0.]], dtype=float32)>
		
		Args:
		  tensor: A `Tensor`.
		  dtype: A type for the returned `Tensor`. Must be `float16`, `float32`,
		    `float64`, `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`,
		    `complex64`, `complex128`, `bool` or `string`. (optional)
		  name: A name for the operation (optional).
		  optimize: if `True`, attempt to statically determine the shape of `tensor`
		    and encode it as a constant. (optional, defaults to `True`)
		
		Returns:
		  A `Tensor` with all elements set to zero.
	**/
	static public function zeros_like(tensor:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?optimize:Dynamic):Dynamic;
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
}