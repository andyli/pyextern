/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_tensor;
@:pythonImport("tensorflow.python.ops.ragged.ragged_tensor", "RaggedTensor") extern class RaggedTensor {
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
	static public var __abstractmethods__ : Dynamic;
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
	static public function __and__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dummy method to prevent a RaggedTensor from being used as a Python bool.
	**/
	static public function __bool__(_:Dynamic):Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function __div__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __floordiv__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
		The operation invoked by the `RaggedTensor.__hash__` operator.
	**/
	public function __hash__():Dynamic;
	/**
		Creates a `RaggedTensor` with a specified partitioning for `values`.
		
		This constructor is private -- please use one of the following ops to
		build `RaggedTensor`s:
		
		  * `tf.RaggedTensor.from_row_lengths`
		  * `tf.RaggedTensor.from_value_rowids`
		  * `tf.RaggedTensor.from_row_splits`
		  * `tf.RaggedTensor.from_row_starts`
		  * `tf.RaggedTensor.from_row_limits`
		  * `tf.RaggedTensor.from_nested_row_splits`
		  * `tf.RaggedTensor.from_nested_row_lengths`
		  * `tf.RaggedTensor.from_nested_value_rowids`
		
		Args:
		  values: A potentially ragged tensor of any dtype and shape `[nvals, ...]`.
		  row_partition: A `RowPartition` object, representing the arrangement of
		    the lists at the top level.
		  internal: True if the constructor is being called by one of the factory
		    methods.  If false, an exception will be raised.
		
		Raises:
		  ValueError: If internal = False. Note that this method is intended only
		             for internal use.
		  TypeError: If values is not a `RaggedTensor` or `Tensor`, or
		             row_partition is not a `RowPartition`.
	**/
	@:native("__init__")
	public function ___init__(values:Dynamic, row_partition:Dynamic, ?internal:Dynamic):Dynamic;
	/**
		Creates a `RaggedTensor` with a specified partitioning for `values`.
		
		This constructor is private -- please use one of the following ops to
		build `RaggedTensor`s:
		
		  * `tf.RaggedTensor.from_row_lengths`
		  * `tf.RaggedTensor.from_value_rowids`
		  * `tf.RaggedTensor.from_row_splits`
		  * `tf.RaggedTensor.from_row_starts`
		  * `tf.RaggedTensor.from_row_limits`
		  * `tf.RaggedTensor.from_nested_row_splits`
		  * `tf.RaggedTensor.from_nested_row_lengths`
		  * `tf.RaggedTensor.from_nested_value_rowids`
		
		Args:
		  values: A potentially ragged tensor of any dtype and shape `[nvals, ...]`.
		  row_partition: A `RowPartition` object, representing the arrangement of
		    the lists at the top level.
		  internal: True if the constructor is being called by one of the factory
		    methods.  If false, an exception will be raised.
		
		Raises:
		  ValueError: If internal = False. Note that this method is intended only
		             for internal use.
		  TypeError: If values is not a `RaggedTensor` or `Tensor`, or
		             row_partition is not a `RowPartition`.
	**/
	public function new(values:Dynamic, row_partition:Dynamic, ?internal:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __invert__(x:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __mod__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		Dummy method to prevent a RaggedTensor from being used as a Python bool.
	**/
	static public function __nonzero__(_:Dynamic):Dynamic;
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
	static public function __or__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __pow__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __rand__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __rdiv__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __rfloordiv__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __rmod__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __ror__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __rpow__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __rsub__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __rtruediv__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __rxor__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __sub__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function __truediv__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
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
	static public function __xor__(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public var _abc_impl : Dynamic;
	/**
		Convert `self` to a graph element.
	**/
	public function _as_graph_element():Dynamic;
	/**
		Returns a list of `Operation`s that consume this `CompositeTensor`.
		
		Returns:
		  A list of `Operation`s.
		
		Raises:
		  RuntimeError: If this method is called while executing eagerly.
	**/
	public function _consumers():Dynamic;
	/**
		Converts `values` and `partition` to Tensors.
		
		If `values` is a `RaggedTensor`, then converts `values` and `partition`
		to have compatible row-partitioning dtypes.  In particular, if any of the
		row partitioning tensors are `int64`, then all of the other row
		partitioning tensors wil be cast to `int64` (if auto_cast_partition_dtype()
		is true) or an error will be raised (if auto_cast_partition_dtype() is
		false).
		
		Args:
		  values: The `values` for the `RaggedTensor` being constructed.
		  row_partition: A RowPartition object for the `RaggedTensor` being
		    constructed.
		  name: The name of the RowPartition object.
		
		Returns:
		  A tuple (values, partition).
	**/
	static public function _convert_values_and_partition(values:Dynamic, row_partition:Dynamic, name:Dynamic):Dynamic;
	/**
		Returns a RaggedTensorValue for self.  Requires self._is_eager()=true.
	**/
	public function _eager_value():Dynamic;
	/**
		Creates a `RaggedTensor` from a nested list of row partitions.
		
		Equivalent to:
		
		```python
		result = flat_values
		for row_partition in reversed(nested_row_partitions):
		  result = _from_row_partition(result, row_partition)
		```
		
		Args:
		  flat_values: A potentially ragged tensor.
		  nested_row_partitions: A list of row partitions.  The `i`th element is
		    used as the row partition for the `i`th ragged dimension.
		  name: A name prefix for the RaggedTensor (optional).
		  validate: If true, then use assertions to check that the arguments form
		    a valid `RaggedTensor`.  Note: these assertions incur a runtime cost,
		      since they must be checked for each tensor value.
		
		Returns:
		  A `RaggedTensor` (or `flat_values` if `nested_row_lengths` is empty).
	**/
	static public function _from_nested_row_partitions(flat_values:Dynamic, nested_row_partitions:Dynamic, ?name:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Creates a `RaggedTensor` with a row partition.
		
		This is used as a way for RaggedTensors to share row partitions.
		
		The outer dimension of values must be equal to `partition.nvals()`.
		
		Args:
		  values: A potentially ragged tensor.
		  row_partition: a `RowPartition`: can be shared between tensors.
		  validate: If true, then use assertions to check that the arguments form a
		    valid `RaggedTensor`.
		
		Returns:
		  A `RaggedTensor`.  `result.rank = values.rank + 1`.
		  `result.ragged_rank = values.ragged_rank + 1`.
		
		Raises:
		  ValueError: If partition.nvals() != _nrows(values)
	**/
	static public function _from_row_partition(values:Dynamic, row_partition:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Converts a `variant` Tensor into a `RaggedTensor`.
		
		The input `variant` could be a scalar, meaning it encodes a single
		`RaggedTensor` with ragged_rank `output_ragged_rank`. Alternatively it could
		have an arbitrary rank, in which case each element is decoded into a
		`RaggedTensor` with ragged_rank `input_ragged_rank` and these are then
		stacked according to the input shape to output a single `RaggedTensor`
		with ragged_rank `output_ragged_rank`. If `input_ragged_rank` is not
		provided, it is inferred dynamically as `output_ragged_rank` -
		`rank(variant)`. If `input_ragged_rank` is provided, the following must be
		true: `output_ragged_rank` = `input_ragged_rank` + `rank(variant)`.
		
		Example:
		
		>>> rt = tf.ragged.constant([[0], [1, 2]])
		>>> et = rt._to_variant()
		>>> stacked_et = tf.stack([et, et])
		>>> tf.RaggedTensor._from_variant(  # scalar input.
		...     et, dtype=tf.int32, output_ragged_rank=1).to_list()
		[[0], [1, 2]]
		>>> tf.RaggedTensor._from_variant(  # batched input.
		...     stacked_et, dtype=tf.int32, output_ragged_rank=2).to_list()
		[[[0], [1, 2]], [[0], [1, 2]]]
		
		Args:
		  variant: A `variant` Tensor representing an encoded (possibly
		    nested-batched) `RaggedTensor`.
		  dtype: The dtype of the encoded `RaggedTensor`.
		  output_ragged_rank: The expected ragged rank of the output `RaggedTensor`.
		  input_ragged_rank: The ragged rank of each encoded `RaggedTensor`. This is
		    optional and inferred dynamically if not provided.
		  row_splits_dtype: `dtype` for the RaggedTensor's `row_splits` tensor. One
		    of `tf.int32` or `tf.int64`.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A `RaggedTensor` of dtype `dtype` and ragged rank `output_ragged_rank`.
		
		Raises:
		  ValueError: If the input rank is known, `input_ragged_rank` is provided
		      and `output_ragged_rank` = `input_ragged_rank` + `rank(variant)` does
		      not hold.
	**/
	static public function _from_variant(variant:Dynamic, dtype:Dynamic, output_ragged_rank:Dynamic, ?input_ragged_rank:Dynamic, ?row_splits_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns True if values & row_splits Tensors are all `EagerTensor`s.
	**/
	public function _is_eager():Dynamic;
	/**
		Returns the row partitions for this `RaggedTensor`.
	**/
	public var _nested_row_partitions : Dynamic;
	/**
		Updates the static shape of `self` to be `shape`.
		
		* If a dimension of `shape` has known rank, and is encoded via
		  partitioning, then this will update the corresponding partition to
		  define `_uniform_row_length` and `nrows`.
		* If a dimension of `shape` has a known rank, and is encoded as one
		  of the `flat_values` dimensions, then `flat_values.set_shape()` will
		  be used to update its shape.
		
		Warning: Using this method to assert an incorrect shape for a RaggedTensor
		(i.e., one that's not consistent with its actual shape) can cause
		segmentation faults and very difficult-to-diagnose behavior.  Only use this
		method if you are certain that the shape is correct.
		
		Args:
		  shape: `tf.TensorShape` specifying the shape for this `RaggedTensor`.
	**/
	public function _set_shape(shape:Dynamic):Dynamic;
	/**
		Returns a TypeSpec given a shape invariant (used by `tf.while_loop`).
		
		Args:
		  shape: A `tf.TensorShape` object.  The shape invariant for this
		    `CompositeTensor`, or `None` if a default shape invariant should be used
		    (based on the value of this `CompositeTensor`).
		
		Returns:
		  A nested structure whose values are `tf.TensorShape` objects, specifying
		  the shape invariants for the tensors that comprise this `CompositeTensor`.
	**/
	public function _shape_invariant_to_type_spec(shape:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Converts this `RaggedTensor` into a `variant` Tensor.
		
		If `batched_input` is `True`, then the `RaggedTensor` is unbatched along the
		zero-th dimension, each component `RaggedTensor` is encoded into a scalar
		`variant` Tensor, and these are stacked to return a 1-D `variant` Tensor.
		If `batched_input` is `False`, then the `RaggedTensor` is encoded as is and
		a scalar `variant` Tensor is returned.
		
		Example:
		>>> rt = tf.ragged.constant([[[0]], [[1]], [[2]]])
		>>> rt._to_variant().shape.as_list()
		[]
		>>> rt._to_variant(batched_input=True).shape.as_list()
		[3]
		
		Args:
		  batched_input: If `True`, the `RaggedTensor` is unbatched and converted to
		    a `variant` vector. Set to `False` by default.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A `variant` Tensor that encodes this `RaggedTensor`.
	**/
	public function _to_variant(?batched_input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A `TypeSpec` describing the type of this value.
	**/
	public var _type_spec : Dynamic;
	/**
		Returns the tight bounding box shape for this `RaggedTensor`.
		
		Args:
		  axis: An integer scalar or vector indicating which axes to return the
		    bounding box for.  If not specified, then the full bounding box is
		    returned.
		  name: A name prefix for the returned tensor (optional).
		  out_type: `dtype` for the returned tensor.  Defaults to
		    `self.row_splits.dtype`.
		
		Returns:
		  An integer `Tensor` (`dtype=self.row_splits.dtype`).  If `axis` is not
		  specified, then `output` is a vector with
		  `output.shape=[self.shape.ndims]`.  If `axis` is a scalar, then the
		  `output` is a scalar.  If `axis` is a vector, then `output` is a vector,
		  where `output[i]` is the bounding size for dimension `axis[i]`.
		
		#### Example:
		
		>>> rt = tf.ragged.constant([[1, 2, 3, 4], [5], [], [6, 7, 8, 9], [10]])
		>>> rt.bounding_shape().numpy()
		array([5, 4])
	**/
	public function bounding_shape(?axis:Dynamic, ?name:Dynamic, ?out_type:Dynamic):Dynamic;
	public function consumers():Dynamic;
	/**
		The `DType` of values in this tensor.
	**/
	public var dtype : Dynamic;
	/**
		The innermost `values` tensor for this ragged tensor.
		
		Concretely, if `rt.values` is a `Tensor`, then `rt.flat_values` is
		`rt.values`; otherwise, `rt.flat_values` is `rt.values.flat_values`.
		
		Conceptually, `flat_values` is the tensor formed by flattening the
		outermost dimension and all of the ragged dimensions into a single
		dimension.
		
		`rt.flat_values.shape = [nvals] + rt.shape[rt.ragged_rank + 1:]`
		(where `nvals` is the number of items in the flattened dimensions).
		
		Returns:
		  A `Tensor`.
		
		#### Example:
		
		>>> rt = tf.ragged.constant([[[3, 1, 4, 1], [], [5, 9, 2]], [], [[6], []]])
		>>> print(rt.flat_values)
		tf.Tensor([3 1 4 1 5 9 2 6], shape=(8,), dtype=int32)
	**/
	public var flat_values : Dynamic;
	/**
		Creates a `RaggedTensor` from a nested list of `row_lengths` tensors.
		
		Equivalent to:
		
		```python
		result = flat_values
		for row_lengths in reversed(nested_row_lengths):
		  result = from_row_lengths(result, row_lengths)
		```
		
		Args:
		  flat_values: A potentially ragged tensor.
		  nested_row_lengths: A list of 1-D integer tensors.  The `i`th tensor is
		    used as the `row_lengths` for the `i`th ragged dimension.
		  name: A name prefix for the RaggedTensor (optional).
		  validate: If true, then use assertions to check that the arguments form
		    a valid `RaggedTensor`.  Note: these assertions incur a runtime cost,
		      since they must be checked for each tensor value.
		
		Returns:
		  A `RaggedTensor` (or `flat_values` if `nested_row_lengths` is empty).
	**/
	static public function from_nested_row_lengths(flat_values:Dynamic, nested_row_lengths:Dynamic, ?name:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Creates a `RaggedTensor` from a nested list of `row_splits` tensors.
		
		Equivalent to:
		
		```python
		result = flat_values
		for row_splits in reversed(nested_row_splits):
		  result = from_row_splits(result, row_splits)
		```
		
		Args:
		  flat_values: A potentially ragged tensor.
		  nested_row_splits: A list of 1-D integer tensors.  The `i`th tensor is
		    used as the `row_splits` for the `i`th ragged dimension.
		  name: A name prefix for the RaggedTensor (optional).
		  validate: If true, then use assertions to check that the arguments form
		    a valid `RaggedTensor`.  Note: these assertions incur a runtime cost,
		      since they must be checked for each tensor value.
		
		Returns:
		  A `RaggedTensor` (or `flat_values` if `nested_row_splits` is empty).
	**/
	static public function from_nested_row_splits(flat_values:Dynamic, nested_row_splits:Dynamic, ?name:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Creates a `RaggedTensor` from a nested list of `value_rowids` tensors.
		
		Equivalent to:
		
		```python
		result = flat_values
		for (rowids, nrows) in reversed(zip(nested_value_rowids, nested_nrows)):
		  result = from_value_rowids(result, rowids, nrows)
		```
		
		Args:
		  flat_values: A potentially ragged tensor.
		  nested_value_rowids: A list of 1-D integer tensors.  The `i`th tensor is
		    used as the `value_rowids` for the `i`th ragged dimension.
		  nested_nrows: A list of integer scalars.  The `i`th scalar is used as the
		    `nrows` for the `i`th ragged dimension.
		  name: A name prefix for the RaggedTensor (optional).
		  validate: If true, then use assertions to check that the arguments form
		    a valid `RaggedTensor`.  Note: these assertions incur a runtime cost,
		      since they must be checked for each tensor value.
		
		Returns:
		  A `RaggedTensor` (or `flat_values` if `nested_value_rowids` is empty).
		
		Raises:
		  ValueError: If `len(nested_values_rowids) != len(nested_nrows)`.
	**/
	static public function from_nested_value_rowids(flat_values:Dynamic, nested_value_rowids:Dynamic, ?nested_nrows:Dynamic, ?name:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Creates a `RaggedTensor` with rows partitioned by `row_lengths`.
		
		The returned `RaggedTensor` corresponds with the python list defined by:
		
		```python
		result = [[values.pop(0) for i in range(length)]
		          for length in row_lengths]
		```
		
		Args:
		  values: A potentially ragged tensor with shape `[nvals, ...]`.
		  row_lengths: A 1-D integer tensor with shape `[nrows]`.  Must be
		    nonnegative.  `sum(row_lengths)` must be `nvals`.
		  name: A name prefix for the RaggedTensor (optional).
		  validate: If true, then use assertions to check that the arguments form
		    a valid `RaggedTensor`.  Note: these assertions incur a runtime cost,
		      since they must be checked for each tensor value.
		
		Returns:
		  A `RaggedTensor`.  `result.rank = values.rank + 1`.
		  `result.ragged_rank = values.ragged_rank + 1`.
		
		#### Example:
		
		>>> print(tf.RaggedTensor.from_row_lengths(
		...     values=[3, 1, 4, 1, 5, 9, 2, 6],
		...     row_lengths=[4, 0, 3, 1, 0]))
		<tf.RaggedTensor [[3, 1, 4, 1], [], [5, 9, 2], [6], []]>
	**/
	static public function from_row_lengths(values:Dynamic, row_lengths:Dynamic, ?name:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Creates a `RaggedTensor` with rows partitioned by `row_limits`.
		
		Equivalent to: `from_row_splits(values, concat([0, row_limits]))`.
		
		Args:
		  values: A potentially ragged tensor with shape `[nvals, ...]`.
		  row_limits: A 1-D integer tensor with shape `[nrows]`.  Must be sorted in
		    ascending order.  If `nrows>0`, then `row_limits[-1]` must be `nvals`.
		  name: A name prefix for the RaggedTensor (optional).
		  validate: If true, then use assertions to check that the arguments form
		    a valid `RaggedTensor`.  Note: these assertions incur a runtime cost,
		      since they must be checked for each tensor value.
		
		Returns:
		  A `RaggedTensor`.  `result.rank = values.rank + 1`.
		  `result.ragged_rank = values.ragged_rank + 1`.
		
		#### Example:
		
		>>> print(tf.RaggedTensor.from_row_limits(
		...     values=[3, 1, 4, 1, 5, 9, 2, 6],
		...     row_limits=[4, 4, 7, 8, 8]))
		<tf.RaggedTensor [[3, 1, 4, 1], [], [5, 9, 2], [6], []]>
	**/
	static public function from_row_limits(values:Dynamic, row_limits:Dynamic, ?name:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Creates a `RaggedTensor` with rows partitioned by `row_splits`.
		
		The returned `RaggedTensor` corresponds with the python list defined by:
		
		```python
		result = [values[row_splits[i]:row_splits[i + 1]]
		          for i in range(len(row_splits) - 1)]
		```
		
		Args:
		  values: A potentially ragged tensor with shape `[nvals, ...]`.
		  row_splits: A 1-D integer tensor with shape `[nrows+1]`.  Must not be
		    empty, and must be sorted in ascending order.  `row_splits[0]` must be
		    zero and `row_splits[-1]` must be `nvals`.
		  name: A name prefix for the RaggedTensor (optional).
		  validate: If true, then use assertions to check that the arguments form
		    a valid `RaggedTensor`.  Note: these assertions incur a runtime cost,
		      since they must be checked for each tensor value.
		
		Returns:
		  A `RaggedTensor`.  `result.rank = values.rank + 1`.
		  `result.ragged_rank = values.ragged_rank + 1`.
		
		Raises:
		  ValueError: If `row_splits` is an empty list.
		
		#### Example:
		
		>>> print(tf.RaggedTensor.from_row_splits(
		...     values=[3, 1, 4, 1, 5, 9, 2, 6],
		...     row_splits=[0, 4, 4, 7, 8, 8]))
		<tf.RaggedTensor [[3, 1, 4, 1], [], [5, 9, 2], [6], []]>
	**/
	static public function from_row_splits(values:Dynamic, row_splits:Dynamic, ?name:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Creates a `RaggedTensor` with rows partitioned by `row_starts`.
		
		Equivalent to: `from_row_splits(values, concat([row_starts, nvals]))`.
		
		Args:
		  values: A potentially ragged tensor with shape `[nvals, ...]`.
		  row_starts: A 1-D integer tensor with shape `[nrows]`.  Must be
		    nonnegative and sorted in ascending order.  If `nrows>0`, then
		    `row_starts[0]` must be zero.
		  name: A name prefix for the RaggedTensor (optional).
		  validate: If true, then use assertions to check that the arguments form
		    a valid `RaggedTensor`.  Note: these assertions incur a runtime cost,
		      since they must be checked for each tensor value.
		
		Returns:
		  A `RaggedTensor`.  `result.rank = values.rank + 1`.
		  `result.ragged_rank = values.ragged_rank + 1`.
		
		#### Example:
		
		>>> print(tf.RaggedTensor.from_row_starts(
		...     values=[3, 1, 4, 1, 5, 9, 2, 6],
		...     row_starts=[0, 4, 4, 7, 8]))
		<tf.RaggedTensor [[3, 1, 4, 1], [], [5, 9, 2], [6], []]>
	**/
	static public function from_row_starts(values:Dynamic, row_starts:Dynamic, ?name:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Converts a 2D `tf.sparse.SparseTensor` to a `RaggedTensor`.
		
		Each row of the `output` `RaggedTensor` will contain the explicit values
		from the same row in `st_input`.  `st_input` must be ragged-right.  If not
		it is not ragged-right, then an error will be generated.
		
		Example:
		
		>>> indices = [[0, 0], [0, 1], [0, 2], [1, 0], [3, 0]]
		>>> st = tf.sparse.SparseTensor(indices=indices,
		...                             values=[1, 2, 3, 4, 5],
		...                             dense_shape=[4, 3])
		>>> tf.RaggedTensor.from_sparse(st).to_list()
		[[1, 2, 3], [4], [], [5]]
		
		Currently, only two-dimensional `SparseTensors` are supported.
		
		Args:
		  st_input: The sparse tensor to convert.  Must have rank 2.
		  name: A name prefix for the returned tensors (optional).
		  row_splits_dtype: `dtype` for the returned `RaggedTensor`'s `row_splits`
		    tensor.  One of `tf.int32` or `tf.int64`.
		
		Returns:
		  A `RaggedTensor` with the same values as `st_input`.
		  `output.ragged_rank = rank(st_input) - 1`.
		  `output.shape = [st_input.dense_shape[0], None]`.
		Raises:
		  ValueError: If the number of dimensions in `st_input` is not known
		    statically, or is not two.
	**/
	static public function from_sparse(st_input:Dynamic, ?name:Dynamic, ?row_splits_dtype:Dynamic):Dynamic;
	/**
		Converts a `tf.Tensor` into a `RaggedTensor`.
		
		The set of absent/default values may be specified using a vector of lengths
		or a padding value (but not both).  If `lengths` is specified, then the
		output tensor will satisfy `output[row] = tensor[row][:lengths[row]]`. If
		'lengths' is a list of lists or tuple of lists, those lists will be used
		as nested row lengths. If `padding` is specified, then any row *suffix*
		consisting entirely of `padding` will be excluded from the returned
		`RaggedTensor`.  If neither `lengths` nor `padding` is specified, then the
		returned `RaggedTensor` will have no absent/default values.
		
		Examples:
		
		>>> dt = tf.constant([[5, 7, 0], [0, 3, 0], [6, 0, 0]])
		>>> tf.RaggedTensor.from_tensor(dt)
		<tf.RaggedTensor [[5, 7, 0], [0, 3, 0], [6, 0, 0]]>
		>>> tf.RaggedTensor.from_tensor(dt, lengths=[1, 0, 3])
		<tf.RaggedTensor [[5], [], [6, 0, 0]]>
		
		>>> tf.RaggedTensor.from_tensor(dt, padding=0)
		<tf.RaggedTensor [[5, 7], [0, 3], [6]]>
		
		>>> dt = tf.constant([[[5, 0], [7, 0], [0, 0]],
		...                   [[0, 0], [3, 0], [0, 0]],
		...                   [[6, 0], [0, 0], [0, 0]]])
		>>> tf.RaggedTensor.from_tensor(dt, lengths=([2, 0, 3], [1, 1, 2, 0, 1]))
		<tf.RaggedTensor [[[5], [7]], [], [[6, 0], [], [0]]]>
		
		Args:
		  tensor: The `Tensor` to convert.  Must have rank `ragged_rank + 1` or
		    higher.
		  lengths: An optional set of row lengths, specified using a 1-D integer
		    `Tensor` whose length is equal to `tensor.shape[0]` (the number of rows
		    in `tensor`).  If specified, then `output[row]` will contain
		    `tensor[row][:lengths[row]]`.  Negative lengths are treated as zero. You
		      may optionally pass a list or tuple of lengths to this argument, which
		      will be used as nested row lengths to construct a ragged tensor with
		      multiple ragged dimensions.
		  padding: An optional padding value.  If specified, then any row suffix
		    consisting entirely of `padding` will be excluded from the returned
		    RaggedTensor.  `padding` is a `Tensor` with the same dtype as `tensor`
		    and with `shape=tensor.shape[ragged_rank + 1:]`.
		  ragged_rank: Integer specifying the ragged rank for the returned
		    `RaggedTensor`.  Must be greater than zero.
		  name: A name prefix for the returned tensors (optional).
		  row_splits_dtype: `dtype` for the returned `RaggedTensor`'s `row_splits`
		    tensor.  One of `tf.int32` or `tf.int64`.
		
		Returns:
		  A `RaggedTensor` with the specified `ragged_rank`.  The shape of the
		  returned ragged tensor is compatible with the shape of `tensor`.
		Raises:
		  ValueError: If both `lengths` and `padding` are specified.
	**/
	static public function from_tensor(tensor:Dynamic, ?lengths:Dynamic, ?padding:Dynamic, ?ragged_rank:Dynamic, ?name:Dynamic, ?row_splits_dtype:Dynamic):Dynamic;
	/**
		Creates a `RaggedTensor` with rows partitioned by `uniform_row_length`.
		
		This method can be used to create `RaggedTensor`s with multiple uniform
		outer dimensions.  For example, a `RaggedTensor` with shape `[2, 2, None]`
		can be constructed with this method from a `RaggedTensor` values with shape
		`[4, None]`:
		
		>>> values = tf.ragged.constant([[1, 2, 3], [4], [5, 6], [7, 8, 9, 10]])
		>>> print(values.shape)
		(4, None)
		>>> rt1 = tf.RaggedTensor.from_uniform_row_length(values, 2)
		>>> print(rt1)
		<tf.RaggedTensor [[[1, 2, 3], [4]], [[5, 6], [7, 8, 9, 10]]]>
		>>> print(rt1.shape)
		(2, 2, None)
		
		Note that `rt1` only contains one ragged dimension (the innermost
		dimension). In contrast, if `from_row_splits` is used to construct a similar
		`RaggedTensor`, then that `RaggedTensor` will have two ragged dimensions:
		
		>>> rt2 = tf.RaggedTensor.from_row_splits(values, [0, 2, 4])
		>>> print(rt2.shape)
		(2, None, None)
		
		Args:
		  values: A potentially ragged tensor with shape `[nvals, ...]`.
		  uniform_row_length: A scalar integer tensor.  Must be nonnegative. The
		    size of the outer axis of `values` must be evenly divisible by
		    `uniform_row_length`.
		  nrows: The number of rows in the constructed RaggedTensor.  If not
		    specified, then it defaults to `nvals/uniform_row_length` (or `0` if
		    `uniform_row_length==0`).  `nrows` only needs to be specified if
		    `uniform_row_length` might be zero.  `uniform_row_length*nrows` must be
		    `nvals`.
		  validate: If true, then use assertions to check that the arguments form
		    a valid `RaggedTensor`.  Note: these assertions incur a runtime cost,
		      since they must be checked for each tensor value.
		  name: A name prefix for the RaggedTensor (optional).
		
		Returns:
		  A `RaggedTensor` that corresponds with the python list defined by:
		
		  ```python
		  result = [[values.pop(0) for i in range(uniform_row_length)]
		            for _ in range(nrows)]
		  ```
		
		  `result.rank = values.rank + 1`.
		  `result.ragged_rank = values.ragged_rank + 1`.
	**/
	static public function from_uniform_row_length(values:Dynamic, uniform_row_length:Dynamic, ?nrows:Dynamic, ?validate:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a `RaggedTensor` with rows partitioned by `value_rowids`.
		
		The returned `RaggedTensor` corresponds with the python list defined by:
		
		```python
		result = [[values[i] for i in range(len(values)) if value_rowids[i] == row]
		          for row in range(nrows)]
		```
		
		Args:
		  values: A potentially ragged tensor with shape `[nvals, ...]`.
		  value_rowids: A 1-D integer tensor with shape `[nvals]`, which corresponds
		    one-to-one with `values`, and specifies each value's row index.  Must be
		    nonnegative, and must be sorted in ascending order.
		  nrows: An integer scalar specifying the number of rows.  This should be
		    specified if the `RaggedTensor` may containing empty training rows. Must
		    be greater than `value_rowids[-1]` (or zero if `value_rowids` is empty).
		    Defaults to `value_rowids[-1] + 1` (or zero if `value_rowids` is empty).
		  name: A name prefix for the RaggedTensor (optional).
		  validate: If true, then use assertions to check that the arguments form
		    a valid `RaggedTensor`.  Note: these assertions incur a runtime cost,
		      since they must be checked for each tensor value.
		
		Returns:
		  A `RaggedTensor`.  `result.rank = values.rank + 1`.
		  `result.ragged_rank = values.ragged_rank + 1`.
		
		Raises:
		  ValueError: If `nrows` is incompatible with `value_rowids`.
		
		#### Example:
		
		>>> print(tf.RaggedTensor.from_value_rowids(
		...     values=[3, 1, 4, 1, 5, 9, 2, 6],
		...     value_rowids=[0, 0, 0, 0, 2, 2, 2, 3],
		...     nrows=5))
		<tf.RaggedTensor [[3, 1, 4, 1], [], [5, 9, 2], [6], []]>
	**/
	static public function from_value_rowids(values:Dynamic, value_rowids:Dynamic, ?nrows:Dynamic, ?name:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		The statically known shape of this ragged tensor.
		
		Returns:
		  A `TensorShape` containing the statically known shape of this ragged
		  tensor.  Ragged dimensions have a size of `None`.
		
		Alias for `shape` property.
		
		Examples:
		
		>>> tf.ragged.constant([[0], [1, 2]]).get_shape()
		TensorShape([2, None])
		
		>>> tf.ragged.constant(
		...    [[[0, 1]], [[1, 2], [3, 4]]], ragged_rank=1).get_shape()
		TensorShape([2, None, 2])
	**/
	public function get_shape():Dynamic;
	/**
		Merges outer_axis...inner_axis into a single dimension.
		
		Returns a copy of this RaggedTensor with the specified range of dimensions
		flattened into a single dimension, with elements in row-major order.
		
		#### Examples:
		
		>>> rt = tf.ragged.constant([[[1, 2], [3]], [[4, 5, 6]]])
		>>> print(rt.merge_dims(0, 1))
		<tf.RaggedTensor [[1, 2], [3], [4, 5, 6]]>
		>>> print(rt.merge_dims(1, 2))
		<tf.RaggedTensor [[1, 2, 3], [4, 5, 6]]>
		>>> print(rt.merge_dims(0, 2))
		tf.Tensor([1 2 3 4 5 6], shape=(6,), dtype=int32)
		
		To mimic the behavior of `np.flatten` (which flattens all dimensions), use
		`rt.merge_dims(0, -1).  To mimic the behavior of `tf.layers.Flatten` (which
		flattens all dimensions except the outermost batch dimension), use
		`rt.merge_dims(1, -1)`.
		
		Args:
		  outer_axis: `int`: The first dimension in the range of dimensions to
		    merge. May be negative if `self.shape.rank` is statically known.
		  inner_axis: `int`: The last dimension in the range of dimensions to merge.
		    May be negative if `self.shape.rank` is statically known.
		
		Returns:
		  A copy of this tensor, with the specified dimensions merged into a
		  single dimension.  The shape of the returned tensor will be
		  `self.shape[:outer_axis] + [N] + self.shape[inner_axis + 1:]`, where `N`
		  is the total number of slices in the merged dimensions.
	**/
	public function merge_dims(outer_axis:Dynamic, inner_axis:Dynamic):Dynamic;
	/**
		Returns a tuple containing the row_lengths for all ragged dimensions.
		
		`rt.nested_row_lengths()` is a tuple containing the `row_lengths` tensors
		for all ragged dimensions in `rt`, ordered from outermost to innermost.
		
		Args:
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A `tuple` of 1-D integer `Tensors`.  The length of the tuple is equal to
		  `self.ragged_rank`.
	**/
	public function nested_row_lengths(?name:Dynamic):Dynamic;
	/**
		A tuple containing the row_splits for all ragged dimensions.
		
		`rt.nested_row_splits` is a tuple containing the `row_splits` tensors for
		all ragged dimensions in `rt`, ordered from outermost to innermost.  In
		particular, `rt.nested_row_splits = (rt.row_splits,) + value_splits` where:
		
		    * `value_splits = ()` if `rt.values` is a `Tensor`.
		    * `value_splits = rt.values.nested_row_splits` otherwise.
		
		Returns:
		  A `tuple` of 1-D integer `Tensor`s.
		
		#### Example:
		
		>>> rt = tf.ragged.constant(
		...     [[[[3, 1, 4, 1], [], [5, 9, 2]], [], [[6], []]]])
		>>> for i, splits in enumerate(rt.nested_row_splits):
		...   print('Splits for dimension %d: %s' % (i+1, splits.numpy()))
		Splits for dimension 1: [0 3]
		Splits for dimension 2: [0 3 3 5]
		Splits for dimension 3: [0 4 4 7 8 8]
	**/
	public var nested_row_splits : Dynamic;
	/**
		Returns a tuple containing the value_rowids for all ragged dimensions.
		
		`rt.nested_value_rowids` is a tuple containing the `value_rowids` tensors
		for
		all ragged dimensions in `rt`, ordered from outermost to innermost.  In
		particular, `rt.nested_value_rowids = (rt.value_rowids(),) + value_ids`
		where:
		
		* `value_ids = ()` if `rt.values` is a `Tensor`.
		* `value_ids = rt.values.nested_value_rowids` otherwise.
		
		Args:
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A `tuple` of 1-D integer `Tensor`s.
		
		#### Example:
		
		>>> rt = tf.ragged.constant(
		...     [[[[3, 1, 4, 1], [], [5, 9, 2]], [], [[6], []]]])
		>>> for i, ids in enumerate(rt.nested_value_rowids()):
		...   print('row ids for dimension %d: %s' % (i+1, ids.numpy()))
		row ids for dimension 1: [0 0 0]
		row ids for dimension 2: [0 0 0 2 2]
		row ids for dimension 3: [0 0 0 0 2 2 2 3]
	**/
	public function nested_value_rowids(?name:Dynamic):Dynamic;
	/**
		Returns the number of rows in this ragged tensor.
		
		I.e., the size of the outermost dimension of the tensor.
		
		Args:
		  out_type: `dtype` for the returned tensor.  Defaults to
		    `self.row_splits.dtype`.
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A scalar `Tensor` with dtype `out_type`.
		
		#### Example:
		
		>>> rt = tf.ragged.constant([[3, 1, 4, 1], [], [5, 9, 2], [6], []])
		>>> print(rt.nrows())  # rt has 5 rows.
		tf.Tensor(5, shape=(), dtype=int64)
	**/
	public function nrows(?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a numpy `array` with the values for this `RaggedTensor`.
		
		Requires that this `RaggedTensor` was constructed in eager execution mode.
		
		Ragged dimensions are encoded using numpy `arrays` with `dtype=object` and
		`rank=1`, where each element is a single row.
		
		#### Examples
		
		In the following example, the value returned by `RaggedTensor.numpy()`
		contains three numpy `array` objects: one for each row (with `rank=1` and
		`dtype=int64`), and one to combine them (with `rank=1` and `dtype=object`):
		
		>>> tf.ragged.constant([[1, 2, 3], [4, 5]], dtype=tf.int64).numpy()
		array([array([1, 2, 3]), array([4, 5])], dtype=object)
		
		Uniform dimensions are encoded using multidimensional numpy `array`s.  In
		the following example, the value returned by `RaggedTensor.numpy()` contains
		a single numpy `array` object, with `rank=2` and `dtype=int64`:
		
		>>> tf.ragged.constant([[1, 2, 3], [4, 5, 6]], dtype=tf.int64).numpy()
		array([[1, 2, 3], [4, 5, 6]])
		
		Returns:
		  A numpy `array`.
	**/
	public function numpy():Dynamic;
	/**
		The number of times the RaggedTensor's flat_values is partitioned.
		
		Examples:
		
		>>> values = tf.ragged.constant([[1, 2, 3], [4], [5, 6], [7, 8, 9, 10]])
		>>> values.ragged_rank
		1
		
		>>> rt = tf.RaggedTensor.from_uniform_row_length(values, 2)
		>>> rt.ragged_rank
		2
		
		Returns:
		  A Python `int` indicating the number of times the underlying `flat_values`
		  Tensor has been partitioned to add a new dimension.
		  I.e., `tf.rank(rt) = tf.rank(rt.flat_values) + rt.ragged_rank`.
	**/
	public var ragged_rank : Dynamic;
	/**
		Returns the lengths of the rows in this ragged tensor.
		
		`rt.row_lengths()[i]` indicates the number of values in the
		`i`th row of `rt`.
		
		Args:
		  axis: An integer constant indicating the axis whose row lengths should be
		    returned.
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A potentially ragged integer Tensor with shape `self.shape[:axis]`.
		
		Raises:
		  ValueError: If `axis` is out of bounds.
		
		#### Example:
		
		>>> rt = tf.ragged.constant(
		...     [[[3, 1, 4], [1]], [], [[5, 9], [2]], [[6]], []])
		>>> print(rt.row_lengths())  # lengths of rows in rt
		tf.Tensor([2 0 2 1 0], shape=(5,), dtype=int64)
		>>> print(rt.row_lengths(axis=2))  # lengths of axis=2 rows.
		<tf.RaggedTensor [[3, 1], [], [2, 1], [1], []]>
	**/
	public function row_lengths(?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the limit indices for rows in this ragged tensor.
		
		These indices specify where the values for each row end in
		`self.values`.  `rt.row_limits(self)` is equal to `rt.row_splits[:-1]`.
		
		Args:
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A 1-D integer Tensor with shape `[nrows]`.
		  The returned tensor is nonnegative, and is sorted in ascending order.
		
		#### Example:
		
		>>> rt = tf.ragged.constant([[3, 1, 4, 1], [], [5, 9, 2], [6], []])
		>>> print(rt.values)
		tf.Tensor([3 1 4 1 5 9 2 6], shape=(8,), dtype=int32)
		>>> print(rt.row_limits())  # indices of row limits in rt.values
		tf.Tensor([4 4 7 8 8], shape=(5,), dtype=int64)
	**/
	public function row_limits(?name:Dynamic):Dynamic;
	/**
		The row-split indices for this ragged tensor's `values`.
		
		`rt.row_splits` specifies where the values for each row begin and end in
		`rt.values`.  In particular, the values for row `rt[i]` are stored in
		the slice `rt.values[rt.row_splits[i]:rt.row_splits[i+1]]`.
		
		Returns:
		  A 1-D integer `Tensor` with shape `[self.nrows+1]`.
		  The returned tensor is non-empty, and is sorted in ascending order.
		  `self.row_splits[0]` is zero, and `self.row_splits[-1]` is equal to
		  `self.values.shape[0]`.
		
		#### Example:
		
		>>> rt = tf.ragged.constant([[3, 1, 4, 1], [], [5, 9, 2], [6], []])
		>>> print(rt.row_splits)  # indices of row splits in rt.values
		tf.Tensor([0 4 4 7 8 8], shape=(6,), dtype=int64)
	**/
	public var row_splits : Dynamic;
	/**
		Returns the start indices for rows in this ragged tensor.
		
		These indices specify where the values for each row begin in
		`self.values`.  `rt.row_starts()` is equal to `rt.row_splits[:-1]`.
		
		Args:
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A 1-D integer Tensor with shape `[nrows]`.
		  The returned tensor is nonnegative, and is sorted in ascending order.
		
		#### Example:
		
		>>> rt = tf.ragged.constant([[3, 1, 4, 1], [], [5, 9, 2], [6], []])
		>>> print(rt.values)
		tf.Tensor([3 1 4 1 5 9 2 6], shape=(8,), dtype=int32)
		>>> print(rt.row_starts())  # indices of row starts in rt.values
		tf.Tensor([0 4 4 7 8], shape=(5,), dtype=int64)
	**/
	public function row_starts(?name:Dynamic):Dynamic;
	/**
		The statically known shape of this ragged tensor.
		
		Returns:
		  A `TensorShape` containing the statically known shape of this ragged
		  tensor.  Ragged dimensions have a size of `None`.
		
		Examples:
		
		>>> tf.ragged.constant([[0], [1, 2]]).shape
		TensorShape([2, None])
		
		>>> tf.ragged.constant([[[0, 1]], [[1, 2], [3, 4]]], ragged_rank=1).shape
		TensorShape([2, None, 2])
	**/
	public var shape : Dynamic;
	/**
		Returns a nested Python `list` with the values for this `RaggedTensor`.
		
		Requires that `rt` was constructed in eager execution mode.
		
		Returns:
		  A nested Python `list`.
	**/
	public function to_list():Dynamic;
	/**
		Converts this `RaggedTensor` into a `tf.sparse.SparseTensor`.
		
		Example:
		
		>>> rt = tf.ragged.constant([[1, 2, 3], [4], [], [5, 6]])
		>>> print(rt.to_sparse())
		SparseTensor(indices=tf.Tensor(
		                 [[0 0] [0 1] [0 2] [1 0] [3 0] [3 1]],
		                 shape=(6, 2), dtype=int64),
		             values=tf.Tensor([1 2 3 4 5 6], shape=(6,), dtype=int32),
		             dense_shape=tf.Tensor([4 3], shape=(2,), dtype=int64))
		
		Args:
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A SparseTensor with the same values as `self`.
	**/
	public function to_sparse(?name:Dynamic):Dynamic;
	/**
		Converts this `RaggedTensor` into a `tf.Tensor`.
		
		If `shape` is specified, then the result is padded and/or truncated to
		the specified shape.
		
		Examples:
		
		>>> rt = tf.ragged.constant([[9, 8, 7], [], [6, 5], [4]])
		>>> print(rt.to_tensor())
		tf.Tensor(
		    [[9 8 7] [0 0 0] [6 5 0] [4 0 0]], shape=(4, 3), dtype=int32)
		>>> print(rt.to_tensor(shape=[5, 2]))
		tf.Tensor(
		    [[9 8] [0 0] [6 5] [4 0] [0 0]], shape=(5, 2), dtype=int32)
		
		Args:
		  default_value: Value to set for indices not specified in `self`. Defaults
		    to zero.  `default_value` must be broadcastable to
		    `self.shape[self.ragged_rank + 1:]`.
		  name: A name prefix for the returned tensors (optional).
		  shape: The shape of the resulting dense tensor.  In particular,
		    `result.shape[i]` is `shape[i]` (if `shape[i]` is not None), or
		    `self.bounding_shape(i)` (otherwise).`shape.rank` must be `None` or
		    equal to `self.rank`.
		
		Returns:
		  A `Tensor` with shape `ragged.bounding_shape(self)` and the
		  values specified by the non-empty values in `self`.  Empty values are
		  assigned `default_value`.
	**/
	public function to_tensor(?default_value:Dynamic, ?name:Dynamic, ?shape:Dynamic):Dynamic;
	/**
		The length of each row in this ragged tensor, or None if rows are ragged.
		
		>>> rt1 = tf.ragged.constant([[1, 2, 3], [4], [5, 6], [7, 8, 9, 10]])
		>>> print(rt1.uniform_row_length)  # rows are ragged.
		None
		
		>>> rt2 = tf.RaggedTensor.from_uniform_row_length(
		...     values=rt1, uniform_row_length=2)
		>>> print(rt2)
		<tf.RaggedTensor [[[1, 2, 3], [4]], [[5, 6], [7, 8, 9, 10]]]>
		>>> print(rt2.uniform_row_length)  # rows are not ragged (all have size 2).
		tf.Tensor(2, shape=(), dtype=int64)
		
		A RaggedTensor's rows are only considered to be uniform (i.e. non-ragged)
		if it can be determined statically (at graph construction time) that the
		rows all have the same length.
		
		Returns:
		  A scalar integer `Tensor`, specifying the length of every row in this
		  ragged tensor (for ragged tensors whose rows are uniform); or `None`
		  (for ragged tensors whose rows are ragged).
	**/
	public var uniform_row_length : Dynamic;
	/**
		Returns the row indices for the `values` in this ragged tensor.
		
		`rt.value_rowids()` corresponds one-to-one with the outermost dimension of
		`rt.values`, and specifies the row containing each value.  In particular,
		the row `rt[row]` consists of the values `rt.values[j]` where
		`rt.value_rowids()[j] == row`.
		
		Args:
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A 1-D integer `Tensor` with shape `self.values.shape[:1]`.
		  The returned tensor is nonnegative, and is sorted in ascending order.
		
		#### Example:
		
		>>> rt = tf.ragged.constant([[3, 1, 4, 1], [], [5, 9, 2], [6], []])
		>>> print(rt.values)
		tf.Tensor([3 1 4 1 5 9 2 6], shape=(8,), dtype=int32)
		>>> print(rt.value_rowids())  # corresponds 1:1 with rt.values
		tf.Tensor([0 0 0 0 2 2 2 3], shape=(8,), dtype=int64)
	**/
	public function value_rowids(?name:Dynamic):Dynamic;
	/**
		The concatenated rows for this ragged tensor.
		
		`rt.values` is a potentially ragged tensor formed by flattening the two
		outermost dimensions of `rt` into a single dimension.
		
		`rt.values.shape = [nvals] + rt.shape[2:]` (where `nvals` is the
		number of items in the outer two dimensions of `rt`).
		
		`rt.ragged_rank = self.ragged_rank - 1`
		
		Returns:
		  A potentially ragged tensor.
		
		#### Example:
		
		>>> rt = tf.ragged.constant([[3, 1, 4, 1], [], [5, 9, 2], [6], []])
		>>> print(rt.values)
		tf.Tensor([3 1 4 1 5 9 2 6], shape=(8,), dtype=int32)
	**/
	public var values : Dynamic;
	/**
		Returns a copy of `self` with `flat_values` replaced by `new_value`.
		
		Preserves cached row-partitioning tensors such as `self.cached_nrows` and
		`self.cached_value_rowids` if they have values.
		
		Args:
		  new_values: Potentially ragged tensor that should replace
		    `self.flat_values`.  Must have `rank > 0`, and must have the same number
		    of rows as `self.flat_values`.
		
		Returns:
		  A `RaggedTensor`.
		  `result.rank = self.ragged_rank + new_values.rank`.
		  `result.ragged_rank = self.ragged_rank + new_values.ragged_rank`.
	**/
	public function with_flat_values(new_values:Dynamic):Dynamic;
	/**
		Returns a copy of this RaggedTensor with the given `row_splits` dtype.
		
		For RaggedTensors with multiple ragged dimensions, the `row_splits` for all
		nested `RaggedTensor` objects are cast to the given dtype.
		
		Args:
		  dtype: The dtype for `row_splits`.  One of `tf.int32` or `tf.int64`.
		
		Returns:
		  A copy of this RaggedTensor, with the `row_splits` cast to the given
		  type.
	**/
	public function with_row_splits_dtype(dtype:Dynamic):Dynamic;
	/**
		Returns a copy of `self` with `values` replaced by `new_value`.
		
		Preserves cached row-partitioning tensors such as `self.cached_nrows` and
		`self.cached_value_rowids` if they have values.
		
		Args:
		  new_values: Potentially ragged tensor to use as the `values` for the
		    returned `RaggedTensor`.  Must have `rank > 0`, and must have the same
		    number of rows as `self.values`.
		
		Returns:
		  A `RaggedTensor`.  `result.rank = 1 + new_values.rank`.
		  `result.ragged_rank = 1 + new_values.ragged_rank`
	**/
	public function with_values(new_values:Dynamic):Dynamic;
}