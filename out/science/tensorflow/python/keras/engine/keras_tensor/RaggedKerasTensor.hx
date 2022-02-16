/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.keras_tensor;
@:pythonImport("tensorflow.python.keras.engine.keras_tensor", "RaggedKerasTensor") extern class RaggedKerasTensor {
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
	static public function __add__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function __and__(x:Dynamic, y:Dynamic):Dynamic;
	public function __array__():Dynamic;
	static public var __array_priority__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Returns the specified piece of this RaggedTensor.
		
		Supports multidimensional indexing and slicing, with one restriction:
		indexing into a ragged inner dimension is not allowed.  This case is
		problematic because the indicated value may exist in some rows but not
		others.  In such cases, it's not obvious whether we should (1) report an
		IndexError; (2) use a default value; or (3) skip that value and return a
		tensor with fewer rows than we started with.  Following the guiding
		principles of Python ("In the face of ambiguity, refuse the temptation to
		guess"), we simply disallow this operation.
		
		Args:
		  rt_input: The RaggedTensor to slice.
		  key: Indicates which piece of the RaggedTensor to return, using standard
		    Python semantics (e.g., negative values index from the end).  `key`
		    may have any of the following types:
		
		    * `int` constant
		    * Scalar integer `Tensor`
		    * `slice` containing integer constants and/or scalar integer
		      `Tensor`s
		    * `Ellipsis`
		    * `tf.newaxis`
		    * `tuple` containing any of the above (for multidimensional indexing)
		
		Returns:
		  A `Tensor` or `RaggedTensor` object.  Values that include at least one
		  ragged dimension are returned as `RaggedTensor`.  Values that include no
		  ragged dimensions are returned as `Tensor`.  See above for examples of
		  expressions that return `Tensor`s vs `RaggedTensor`s.
		
		Raises:
		  ValueError: If `key` is out of bounds.
		  ValueError: If `key` is not supported.
		  TypeError: If the indices in `key` have an unsupported type.
		
		Examples:
		
		>>> # A 2-D ragged tensor with 1 ragged dimension.
		>>> rt = tf.ragged.constant([['a', 'b', 'c'], ['d', 'e'], ['f'], ['g']])
		>>> rt[0].numpy()                 # First row (1-D `Tensor`)
		array([b'a', b'b', b'c'], dtype=object)
		>>> rt[:3].to_list()              # First three rows (2-D RaggedTensor)
		[[b'a', b'b', b'c'], [b'd', b'e'], [b'f']]
		>>> rt[3, 0].numpy()              # 1st element of 4th row (scalar)
		b'g'
		
		>>> # A 3-D ragged tensor with 2 ragged dimensions.
		>>> rt = tf.ragged.constant([[[1, 2, 3], [4]],
		...                          [[5], [], [6]],
		...                          [[7]],
		...                          [[8, 9], [10]]])
		>>> rt[1].to_list()               # Second row (2-D RaggedTensor)
		[[5], [], [6]]
		>>> rt[3, 0].numpy()              # First element of fourth row (1-D Tensor)
		array([8, 9], dtype=int32)
		>>> rt[:, 1:3].to_list()          # Items 1-3 of each row (3-D RaggedTensor)
		[[[4]], [[], [6]], [], [[10]]]
		>>> rt[:, -1:].to_list()          # Last item of each row (3-D RaggedTensor)
		[[[4]], [[6]], [[7]], [[10]]]
	**/
	static public function __getitem__(rt_input:Dynamic, key:Dynamic):Dynamic;
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
		Constructs a KerasTensor.
	**/
	@:native("__init__")
	public function ___init__(type_spec:Dynamic, ?inferred_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Constructs a KerasTensor.
	**/
	public function new(type_spec:Dynamic, ?inferred_value:Dynamic, ?name:Dynamic):Void;
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
	static public function __mul__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __radd__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __rmul__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function __ror__(y:Dynamic, x:Dynamic):Dynamic;
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
		Register overloads for all operators.
	**/
	static public function _overload_all_operators(tensor_class:Dynamic):Dynamic;
	/**
		Overload an operator with the same implementation as a base Tensor class.
		
		We pull the operator out of the class dynamically to avoid ordering issues.
		
		Args:
		  tensor_class: The (Composite)Tensor to get the method from.
		  operator: string. The operator name.
	**/
	static public function _overload_operator(tensor_class:Dynamic, _operator:Dynamic):Dynamic;
	/**
		Convert this KerasTensor to a placeholder in a graph.
	**/
	public function _to_placeholder():Dynamic;
	public function bounding_shape(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the `dtype` symbolically inferred for this Keras output.
	**/
	public var dtype : Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use ref() instead.
	**/
	public function experimental_ref():Dynamic;
	public var flat_values : Dynamic;
	/**
		Convert a traced (composite)tensor to a representative KerasTensor.
	**/
	static public function from_tensor(tensor:Dynamic):Dynamic;
	static public function from_type_spec(type_spec:Dynamic, ?name:Dynamic):Dynamic;
	public function get_shape():Dynamic;
	public var is_tensor_like : Dynamic;
	public function merge_dims(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the (non-unique, optional) name of this symbolic Keras value.
	**/
	public var name : Dynamic;
	public function nested_row_lengths(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var nested_row_splits : Dynamic;
	public function nested_value_rowids(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function nrows(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var op : Dynamic;
	public var ragged_rank : Dynamic;
	/**
		Returns a hashable reference object to this KerasTensor.
		
		The primary use case for this API is to put KerasTensors in a
		set/dictionary. We can't put tensors in a set/dictionary as
		`tensor.__hash__()` is not available and tensor equality (`==`) is supposed
		to produce a tensor representing if the two inputs are equal.
		
		See the documentation of `tf.Tensor.ref()` for more info.
	**/
	public function ref():Dynamic;
	public function row_lengths(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function row_limits(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var row_splits : Dynamic;
	public function row_starts(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Updates the shape of this KerasTensor. Mimics `tf.Tensor.set_shape()`.
	**/
	public function set_shape(shape:Dynamic):Dynamic;
	/**
		Returns the `TensorShape` symbolically inferred for this Keras output.
	**/
	public var shape : Dynamic;
	public function to_sparse(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_tensor(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the `tf.TypeSpec` symbolically inferred for this Keras output.
	**/
	public var type_spec : Dynamic;
	public function value_rowids(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var values : Dynamic;
	public function with_flat_values(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function with_row_splits_dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function with_values(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}