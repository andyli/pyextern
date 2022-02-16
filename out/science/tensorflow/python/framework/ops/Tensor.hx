/* This file is generated, do not edit! */
package tensorflow.python.framework.ops;
@:pythonImport("tensorflow.python.framework.ops", "Tensor") extern class Tensor {
	static public var OVERLOADABLE_OPERATORS : Dynamic;
	static public var _USE_EQUALITY : Dynamic;
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
	static public function __abs__(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The operation invoked by the `Tensor.__add__` operator.
		
		  Purpose in the API:
		
		    This method is exposed in TensorFlow's API so that library developers
		    can register dispatching for `Tensor.__add__` to allow it to handle
		    custom composite tensors & other custom objects.
		
		    The API symbol is not intended to be called by users directly and does
		    appear in TensorFlow's generated documentation.
		
		Args:
		  x: The left-hand side of the `+` operator.
		  y: The right-hand side of the `+` operator.
		  name: an optional name for the operation.
		
		Returns:
		  The result of the elementwise `+` operation.
	**/
	static public function __add__(x:Dynamic, y:Dynamic):Dynamic;
	static public function __and__(x:Dynamic, y:Dynamic):Dynamic;
	public function __array__(?dtype:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	/**
		Dummy method to prevent a tensor from being used as a Python `bool`.
		
		This overload raises a `TypeError` when the user inadvertently
		treats a `Tensor` as a boolean (most commonly in an `if` or `while`
		statement), in code that was not converted by AutoGraph. For example:
		
		```python
		if tf.constant(True):  # Will raise.
		  # ...
		
		if tf.constant(5) < tf.constant(7):  # Will raise.
		  # ...
		```
		
		Raises:
		  `TypeError`.
	**/
	public function __bool__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__():Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
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
	static public function __div__(x:Dynamic, y:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		The operation invoked by the `Tensor.__eq__` operator.
		
		Compares two tensors element-wise for equality if they are
		broadcast-compatible; or returns False if they are not broadcast-compatible.
		(Note that this behavior differs from `tf.math.equal`, which raises an
		exception if the two tensors are not broadcast-compatible.)
		
		Purpose in the API:
		
		  This method is exposed in TensorFlow's API so that library developers
		  can register dispatching for `Tensor.__eq__` to allow it to handle
		  custom composite tensors & other custom objects.
		
		  The API symbol is not intended to be called by users directly and does
		  appear in TensorFlow's generated documentation.
		
		Args:
		  self: The left-hand side of the `==` operator.
		  other: The right-hand side of the `==` operator.
		
		Returns:
		  The result of the elementwise `==` operation, or `False` if the arguments
		  are not broadcast-compatible.
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
	static public function __floordiv__(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	static public function __ge__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	public function __getattr__(name:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Overload for Tensor.__getitem__.
		
		This operation extracts the specified region from the tensor.
		The notation is similar to NumPy with the restriction that
		currently only support basic indexing. That means that
		using a non-scalar tensor as input is not currently allowed.
		
		Some useful examples:
		
		```python
		# Strip leading and trailing 2 elements
		foo = tf.constant([1,2,3,4,5,6])
		print(foo[2:-2].eval())  # => [3,4]
		
		# Skip every other row and reverse the order of the columns
		foo = tf.constant([[1,2,3], [4,5,6], [7,8,9]])
		print(foo[::2,::-1].eval())  # => [[3,2,1], [9,8,7]]
		
		# Use scalar tensors as indices on both dimensions
		print(foo[tf.constant(0), tf.constant(2)].eval())  # => 3
		
		# Insert another dimension
		foo = tf.constant([[1,2,3], [4,5,6], [7,8,9]])
		print(foo[tf.newaxis, :, :].eval()) # => [[[1,2,3], [4,5,6], [7,8,9]]]
		print(foo[:, tf.newaxis, :].eval()) # => [[[1,2,3]], [[4,5,6]], [[7,8,9]]]
		print(foo[:, :, tf.newaxis].eval()) # => [[[1],[2],[3]], [[4],[5],[6]],
		[[7],[8],[9]]]
		
		# Ellipses (3 equivalent operations)
		foo = tf.constant([[1,2,3], [4,5,6], [7,8,9]])
		print(foo[tf.newaxis, :, :].eval())  # => [[[1,2,3], [4,5,6], [7,8,9]]]
		print(foo[tf.newaxis, ...].eval())  # => [[[1,2,3], [4,5,6], [7,8,9]]]
		print(foo[tf.newaxis].eval())  # => [[[1,2,3], [4,5,6], [7,8,9]]]
		
		# Masks
		foo = tf.constant([[1,2,3], [4,5,6], [7,8,9]])
		print(foo[foo > 2].eval())  # => [3, 4, 5, 6, 7, 8, 9]
		```
		
		Notes:
		  - `tf.newaxis` is `None` as in NumPy.
		  - An implicit ellipsis is placed at the end of the `slice_spec`
		  - NumPy advanced indexing is currently not supported.
		
		Purpose in the API:
		
		  This method is exposed in TensorFlow's API so that library developers
		  can register dispatching for `Tensor.__getitem__` to allow it to handle
		  custom composite tensors & other custom objects.
		
		  The API symbol is not intended to be called by users directly and does
		  appear in TensorFlow's generated documentation.
		
		Args:
		  tensor: An ops.Tensor object.
		  slice_spec: The arguments to Tensor.__getitem__.
		  var: In the case of variable slice assignment, the Variable object to slice
		    (i.e. tensor is the read-only view of this variable).
		
		Returns:
		  The appropriate slice of "tensor", based on "slice_spec".
		
		Raises:
		  ValueError: If a slice range is negative size.
		  TypeError: If the slice indices aren't int, slice, ellipsis,
		    tf.newaxis or scalar int32/int64 tensors.
	**/
	static public function __getitem__(tensor:Dynamic, slice_spec:Dynamic, ?_var:Dynamic):Dynamic;
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
	static public function __gt__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Creates a new `Tensor`.
		
		Args:
		  op: An `Operation`. `Operation` that computes this tensor.
		  value_index: An `int`. Index of the operation's endpoint that produces
		    this tensor.
		  dtype: A `DType`. Type of elements stored in this tensor.
		
		Raises:
		  TypeError: If the op is not an `Operation`.
	**/
	@:native("__init__")
	public function ___init__(op:Dynamic, value_index:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Creates a new `Tensor`.
		
		Args:
		  op: An `Operation`. `Operation` that computes this tensor.
		  value_index: An `int`. Index of the operation's endpoint that produces
		    this tensor.
		  dtype: A `DType`. Type of elements stored in this tensor.
		
		Raises:
		  TypeError: If the op is not an `Operation`.
	**/
	public function new(op:Dynamic, value_index:Dynamic, dtype:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __invert__(x:Dynamic, ?name:Dynamic):Dynamic;
	public function __iter__():Dynamic;
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
	static public function __le__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	public function __len__():Dynamic;
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
	static public function __lt__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __matmul__(x:Dynamic, y:Dynamic):Dynamic;
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
	static public function __mod__(x:Dynamic, y:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Dispatches cwise mul for "Dense*Dense" and "Dense*Sparse".
	**/
	static public function __mul__(x:Dynamic, y:Dynamic):Dynamic;
	/**
		The operation invoked by the `Tensor.__ne__` operator.
		
		Compares two tensors element-wise for inequality if they are
		broadcast-compatible; or returns True if they are not broadcast-compatible.
		(Note that this behavior differs from `tf.math.not_equal`, which raises an
		exception if the two tensors are not broadcast-compatible.)
		
		Purpose in the API:
		
		  This method is exposed in TensorFlow's API so that library developers
		  can register dispatching for `Tensor.__ne__` to allow it to handle
		  custom composite tensors & other custom objects.
		
		  The API symbol is not intended to be called by users directly and does
		  appear in TensorFlow's generated documentation.
		
		Args:
		  self: The left-hand side of the `!=` operator.
		  other: The right-hand side of the `!=` operator.
		
		Returns:
		  The result of the elementwise `!=` operation, or `True` if the arguments
		  are not broadcast-compatible.
	**/
	public function __ne__(other:Dynamic):Dynamic;
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
	static public function __neg__(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Dummy method to prevent a tensor from being used as a Python `bool`.
		
		This is the Python 2.x counterpart to `__bool__()` above.
		
		Raises:
		  `TypeError`.
	**/
	public function __nonzero__():Dynamic;
	static public function __or__(x:Dynamic, y:Dynamic):Dynamic;
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
	static public function __pow__(x:Dynamic, y:Dynamic):Dynamic;
	/**
		The operation invoked by the `Tensor.__add__` operator.
		
		  Purpose in the API:
		
		    This method is exposed in TensorFlow's API so that library developers
		    can register dispatching for `Tensor.__add__` to allow it to handle
		    custom composite tensors & other custom objects.
		
		    The API symbol is not intended to be called by users directly and does
		    appear in TensorFlow's generated documentation.
		
		Args:
		  x: The left-hand side of the `+` operator.
		  y: The right-hand side of the `+` operator.
		  name: an optional name for the operation.
		
		Returns:
		  The result of the elementwise `+` operation.
	**/
	static public function __radd__(y:Dynamic, x:Dynamic):Dynamic;
	static public function __rand__(y:Dynamic, x:Dynamic):Dynamic;
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
	static public function __rdiv__(y:Dynamic, x:Dynamic):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
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
	static public function __rfloordiv__(y:Dynamic, x:Dynamic):Dynamic;
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
	static public function __rmatmul__(y:Dynamic, x:Dynamic):Dynamic;
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
	static public function __rmod__(y:Dynamic, x:Dynamic):Dynamic;
	/**
		Dispatches cwise mul for "Dense*Dense" and "Dense*Sparse".
	**/
	static public function __rmul__(y:Dynamic, x:Dynamic):Dynamic;
	static public function __ror__(y:Dynamic, x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `around`.
		
		Unsupported arguments: `out`.
		
		See the NumPy documentation for [`numpy.around`](https://numpy.org/doc/1.16/reference/generated/numpy.around.html).
	**/
	static public function __round__(a:Dynamic, ?decimals:Dynamic):Dynamic;
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
	static public function __rpow__(y:Dynamic, x:Dynamic):Dynamic;
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
	static public function __rsub__(y:Dynamic, x:Dynamic):Dynamic;
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
	static public function __rtruediv__(y:Dynamic, x:Dynamic):Dynamic;
	static public function __rxor__(y:Dynamic, x:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
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
	static public function __sub__(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __truediv__(x:Dynamic, y:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public function __xor__(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Return a value to use for the NodeDef "input" attribute.
		
		The returned string can be used in a NodeDef "input" attribute
		to indicate that the NodeDef uses this Tensor as input.
		
		Raises:
		  ValueError: if this Tensor's Operation does not have a name.
		
		Returns:
		  a string.
	**/
	public function _as_node_def_input():Dynamic;
	public function _as_tf_output():Dynamic;
	/**
		Returns the TensorShape of this tensor according to the C API.
	**/
	public function _c_api_shape():Dynamic;
	static public function _create_with_tf_output(op:Dynamic, value_index:Dynamic, dtype:Dynamic, tf_output:Dynamic):Dynamic;
	public function _disallow_bool_casting():Dynamic;
	public function _disallow_in_graph_mode(task:Dynamic):Dynamic;
	public function _disallow_iteration():Dynamic;
	public function _disallow_when_autograph_disabled(task:Dynamic):Dynamic;
	public function _disallow_when_autograph_enabled(task:Dynamic):Dynamic;
	public function _disallow_when_autograph_unavailable(task:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `matmul`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.matmul`](https://numpy.org/doc/1.16/reference/generated/numpy.matmul.html).
	**/
	static public function _matmul(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Implementation of ndarray.__getitem__.
	**/
	public function _numpy_style_getitem(slice_spec:Dynamic):Dynamic;
	static public function _override_operator(_operator:Dynamic, func:Dynamic):Dynamic;
	/**
		Integer rank of this Tensor, if known, else None.
		
		Returns:
		  Integer rank or None
	**/
	public function _rank():Dynamic;
	public var _shape : Dynamic;
	public function _shape_as_list():Dynamic;
	public function _shape_tuple():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	static public function _with_index_add(a:Dynamic, slice_spec:Dynamic, updates:Dynamic):Dynamic;
	static public function _with_index_max(a:Dynamic, slice_spec:Dynamic, updates:Dynamic):Dynamic;
	static public function _with_index_min(a:Dynamic, slice_spec:Dynamic, updates:Dynamic):Dynamic;
	static public function _with_index_update(a:Dynamic, slice_spec:Dynamic, updates:Dynamic):Dynamic;
	/**
		Returns a list of `Operation`s that consume this tensor.
		
		Returns:
		  A list of `Operation`s.
	**/
	public function consumers():Dynamic;
	/**
		The name of the device on which this tensor will be produced, or None.
	**/
	public var device : Dynamic;
	/**
		The `DType` of elements in this tensor.
	**/
	public var dtype : Dynamic;
	/**
		Evaluates this tensor in a `Session`.
		
		Note: If you are not using `compat.v1` libraries, you should not need this,
		(or `feed_dict` or `Session`).  In eager execution (or within `tf.function`)
		you do not need to call `eval`.
		
		Calling this method will execute all preceding operations that
		produce the inputs needed for the operation that produces this
		tensor.
		
		*N.B.* Before invoking `Tensor.eval()`, its graph must have been
		launched in a session, and either a default session must be
		available, or `session` must be specified explicitly.
		
		Args:
		  feed_dict: A dictionary that maps `Tensor` objects to feed values. See
		    `tf.Session.run` for a description of the valid feed values.
		  session: (Optional.) The `Session` to be used to evaluate this tensor. If
		    none, the default session will be used.
		
		Returns:
		  A numpy array corresponding to the value of this tensor.
	**/
	public function eval(?feed_dict:Dynamic, ?session:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use ref() instead.
	**/
	public function experimental_ref():Dynamic;
	/**
		Returns a `tf.TensorShape` that represents the shape of this tensor.
		
		In eager execution the shape is always fully-known.
		
		>>> a = tf.constant([[1.0, 2.0, 3.0], [4.0, 5.0, 6.0]])
		>>> print(a.shape)
		(2, 3)
		
		`tf.Tensor.get_shape()` is equivalent to `tf.Tensor.shape`.
		
		
		When executing in a `tf.function` or building a model using
		`tf.keras.Input`, `Tensor.shape` may return a partial shape (including
		`None` for unknown dimensions). See `tf.TensorShape` for more details.
		
		>>> inputs = tf.keras.Input(shape = [10])
		>>> # Unknown batch size
		>>> print(inputs.shape)
		(None, 10)
		
		The shape is computed using shape inference functions that are
		registered for each `tf.Operation`.
		
		The returned `tf.TensorShape` is determined at *build* time, without
		executing the underlying kernel. It is not a `tf.Tensor`. If you need a
		shape *tensor*, either convert the `tf.TensorShape` to a `tf.constant`, or
		use the `tf.shape(tensor)` function, which returns the tensor's shape at
		*execution* time.
		
		This is useful for debugging and providing early errors. For
		example, when tracing a `tf.function`, no ops are being executed, shapes
		may be unknown (See the [Concrete Functions
		Guide](https://www.tensorflow.org/guide/concrete_function) for details).
		
		>>> @tf.function
		... def my_matmul(a, b):
		...   result = a@b
		...   # the `print` executes during tracing.
		...   print("Result shape: ", result.shape)
		...   return result
		
		The shape inference functions propagate shapes to the extent possible:
		
		>>> f = my_matmul.get_concrete_function(
		...   tf.TensorSpec([None,3]),
		...   tf.TensorSpec([3,5]))
		Result shape: (None, 5)
		
		Tracing may fail if a shape missmatch can be detected:
		
		>>> cf = my_matmul.get_concrete_function(
		...   tf.TensorSpec([None,3]),
		...   tf.TensorSpec([4,5]))
		Traceback (most recent call last):
		...
		ValueError: Dimensions must be equal, but are 3 and 4 for 'matmul' (op:
		'MatMul') with input shapes: [?,3], [4,5].
		
		In some cases, the inferred shape may have unknown dimensions. If
		the caller has additional information about the values of these
		dimensions, `tf.ensure_shape` or `Tensor.set_shape()` can be used to augment
		the inferred shape.
		
		>>> @tf.function
		... def my_fun(a):
		...   a = tf.ensure_shape(a, [5, 5])
		...   # the `print` executes during tracing.
		...   print("Result shape: ", a.shape)
		...   return a
		
		>>> cf = my_fun.get_concrete_function(
		...   tf.TensorSpec([None, None]))
		Result shape: (5, 5)
		
		Returns:
		  A `tf.TensorShape` representing the shape of this tensor.
	**/
	public function get_shape():Dynamic;
	/**
		The `Graph` that contains this tensor.
	**/
	public var graph : Dynamic;
	/**
		The string name of this tensor.
	**/
	public var name : Dynamic;
	/**
		The `Operation` that produces this tensor as an output.
	**/
	public var op : Dynamic;
	/**
		Returns a hashable reference object to this Tensor.
		
		The primary use case for this API is to put tensors in a set/dictionary.
		We can't put tensors in a set/dictionary as `tensor.__hash__()` is no longer
		available starting Tensorflow 2.0.
		
		The following will raise an exception starting 2.0
		
		>>> x = tf.constant(5)
		>>> y = tf.constant(10)
		>>> z = tf.constant(10)
		>>> tensor_set = {x, y, z}
		Traceback (most recent call last):
		  ...
		TypeError: Tensor is unhashable. Instead, use tensor.ref() as the key.
		>>> tensor_dict = {x: 'five', y: 'ten'}
		Traceback (most recent call last):
		  ...
		TypeError: Tensor is unhashable. Instead, use tensor.ref() as the key.
		
		Instead, we can use `tensor.ref()`.
		
		>>> tensor_set = {x.ref(), y.ref(), z.ref()}
		>>> x.ref() in tensor_set
		True
		>>> tensor_dict = {x.ref(): 'five', y.ref(): 'ten', z.ref(): 'ten'}
		>>> tensor_dict[y.ref()]
		'ten'
		
		Also, the reference object provides `.deref()` function that returns the
		original Tensor.
		
		>>> x = tf.constant(5)
		>>> x.ref().deref()
		<tf.Tensor: shape=(), dtype=int32, numpy=5>
	**/
	public function ref():Dynamic;
	/**
		Updates the shape of this tensor.
		
		Note: It is recommended to use `tf.ensure_shape` instead of
		`Tensor.set_shape`, because `tf.ensure_shape` provides better checking for
		programming errors and can create guarantees for compiler
		optimization.
		
		With eager execution this operates as a shape assertion.
		Here the shapes match:
		
		>>> t = tf.constant([[1,2,3]])
		>>> t.set_shape([1, 3])
		
		Passing a `None` in the new shape allows any value for that axis:
		
		>>> t.set_shape([1,None])
		
		An error is raised if an incompatible shape is passed.
		
		>>> t.set_shape([1,5])
		Traceback (most recent call last):
		...
		ValueError: Tensor's shape (1, 3) is not compatible with supplied
		shape [1, 5]
		
		When executing in a `tf.function`, or building a model using
		`tf.keras.Input`, `Tensor.set_shape` will *merge* the given `shape` with
		the current shape of this tensor, and set the tensor's shape to the
		merged value (see `tf.TensorShape.merge_with` for details):
		
		>>> t = tf.keras.Input(shape=[None, None, 3])
		>>> print(t.shape)
		(None, None, None, 3)
		
		Dimensions set to `None` are not updated:
		
		>>> t.set_shape([None, 224, 224, None])
		>>> print(t.shape)
		(None, 224, 224, 3)
		
		The main use case for this is to provide additional shape information
		that cannot be inferred from the graph alone.
		
		For example if you know all the images in a dataset have shape [28,28,3] you
		can set it with `tf.set_shape`:
		
		>>> @tf.function
		... def load_image(filename):
		...   raw = tf.io.read_file(filename)
		...   image = tf.image.decode_png(raw, channels=3)
		...   # the `print` executes during tracing.
		...   print("Initial shape: ", image.shape)
		...   image.set_shape([28, 28, 3])
		...   print("Final shape: ", image.shape)
		...   return image
		
		Trace the function, see the [Concrete Functions
		Guide](https://www.tensorflow.org/guide/concrete_function) for details.
		
		>>> cf = load_image.get_concrete_function(
		...     tf.TensorSpec([], dtype=tf.string))
		Initial shape:  (None, None, 3)
		Final shape: (28, 28, 3)
		
		Similarly the `tf.io.parse_tensor` function could return a tensor with
		any shape, even the `tf.rank` is unknown. If you know that all your
		serialized tensors will be 2d, set it with `set_shape`:
		
		>>> @tf.function
		... def my_parse(string_tensor):
		...   result = tf.io.parse_tensor(string_tensor, out_type=tf.float32)
		...   # the `print` executes during tracing.
		...   print("Initial shape: ", result.shape)
		...   result.set_shape([None, None])
		...   print("Final shape: ", result.shape)
		...   return result
		
		Trace the function
		
		>>> concrete_parse = my_parse.get_concrete_function(
		...     tf.TensorSpec([], dtype=tf.string))
		Initial shape:  <unknown>
		Final shape:  (None, None)
		
		Make sure it works:
		
		>>> t = tf.ones([5,3], dtype=tf.float32)
		>>> serialized = tf.io.serialize_tensor(t)
		>>> print(serialized.dtype)
		<dtype: 'string'>
		>>> print(serialized.shape)
		()
		>>> t2 = concrete_parse(serialized)
		>>> print(t2.shape)
		(5, 3)
		
		Caution: `set_shape` ensures that the applied shape is compatible with
		the existing shape, but it does not check at runtime. Setting
		incorrect shapes can result in inconsistencies between the
		statically-known graph and the runtime value of tensors. For runtime
		validation of the shape, use `tf.ensure_shape` instead. It also modifies
		the `shape` of the tensor.
		
		>>> # Serialize a rank-3 tensor
		>>> t = tf.ones([5,5,5], dtype=tf.float32)
		>>> serialized = tf.io.serialize_tensor(t)
		>>> # The function still runs, even though it `set_shape([None,None])`
		>>> t2 = concrete_parse(serialized)
		>>> print(t2.shape)
		(5, 5, 5)
		
		Args:
		  shape: A `TensorShape` representing the shape of this tensor, a
		    `TensorShapeProto`, a list, a tuple, or None.
		
		Raises:
		  ValueError: If `shape` is not compatible with the current shape of
		    this tensor.
	**/
	public function set_shape(shape:Dynamic):Dynamic;
	/**
		Returns a `tf.TensorShape` that represents the shape of this tensor.
		
		>>> t = tf.constant([1,2,3,4,5])
		>>> t.shape
		TensorShape([5])
		
		`tf.Tensor.shape` is equivalent to `tf.Tensor.get_shape()`.
		
		In a `tf.function` or when building a model using
		`tf.keras.Input`, they return the build-time shape of the
		tensor, which may be partially unknown.
		
		A `tf.TensorShape` is not a tensor. Use `tf.shape(t)` to get a tensor
		containing the shape, calculated at runtime.
		
		See `tf.Tensor.get_shape()`, and `tf.TensorShape` for details and examples.
	**/
	public var shape : Dynamic;
	/**
		The index of this tensor in the outputs of its `Operation`.
	**/
	public var value_index : Dynamic;
}