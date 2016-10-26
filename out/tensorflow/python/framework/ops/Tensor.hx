/* This file is generated, do not edit! */
package tensorflow.python.framework.ops;
@:pythonImport("tensorflow.python.framework.ops", "Tensor") extern class Tensor {
	static public var OVERLOADABLE_OPERATORS : Dynamic;
	/**
		Computes the absolute value of a tensor.
		
		Given a tensor of real numbers `x`, this operation returns a tensor
		containing the absolute value of each element in `x`. For example, if x is
		an input element and y is an output element, this operation computes
		\\(y = |x|\\).
		
		See [`tf.complex_abs()`](#tf_complex_abs) to compute the absolute value of a complex
		number.
		
		Args:
		  x: A `Tensor` or `SparseTensor` of type `float32`, `float64`, `int32`, or
		    `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` the same size and type as `x` with absolute
		    values.
	**/
	public function __abs__(?name:Dynamic):Dynamic;
	public function __add__(y:Dynamic):Dynamic;
	public function __and__(y:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	/**
		Dummy method to prevent a tensor from being used as a Python `bool`.
		
		This overload raises a `TypeError` when the user inadvertently
		treats a `Tensor` as a boolean (e.g. in an `if` statement). For
		example:
		
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
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __div__(y:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	public function __floordiv__(y:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns the truth value of (x >= y) element-wise.
		
		*NOTE*: `GreaterEqual` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	public function __ge__(y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Overload for Tensor.__getitem__.
		
		This operation extracts the specified region from the tensor.
		The notation is similar to numpy with the restriction that
		currently only support basic indexing. That means that
		using a tensor as input is not currently allowed
		
		Args:
		  tensor: An ops.Tensor object.
		  slice_spec: The arguments to Tensor.__getitem__.
		
		Returns:
		  The appropriate slice of "tensor", based on "slice_spec".
		
		Raises:
		  ValueError: If a slice range is negative size.
		  TypeError: If the slice indices aren't int, slice, or Ellipsis.
	**/
	public function __getitem__(slice_spec:Dynamic):Dynamic;
	/**
		Returns the truth value of (x > y) element-wise.
		
		*NOTE*: `Greater` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	public function __gt__(y:Dynamic, ?name:Dynamic):Dynamic;
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
		Returns the truth value of NOT x element-wise.
		
		Args:
		  x: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	public function __invert__(?name:Dynamic):Dynamic;
	/**
		Dummy method to prevent iteration. Do not call.
		
		NOTE(mrry): If we register __getitem__ as an overloaded operator,
		Python will valiantly attempt to iterate over the Tensor from 0 to
		infinity.  Declaring this method prevents this unintended
		behavior.
		
		Raises:
		  TypeError: when invoked.
	**/
	public function __iter__():Dynamic;
	/**
		Returns the truth value of (x <= y) element-wise.
		
		*NOTE*: `LessEqual` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	public function __le__(y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of (x < y) element-wise.
		
		*NOTE*: `Less` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	public function __lt__(y:Dynamic, ?name:Dynamic):Dynamic;
	public function __mod__(y:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(y:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Computes numerical negative value element-wise.
		
		I.e., \\(y = -x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	public function __neg__(?name:Dynamic):Dynamic;
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
	public function __or__(y:Dynamic):Dynamic;
	public function __pow__(y:Dynamic):Dynamic;
	public function __radd__(x:Dynamic):Dynamic;
	public function __rand__(x:Dynamic):Dynamic;
	public function __rdiv__(x:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	public function __rfloordiv__(x:Dynamic):Dynamic;
	public function __rmod__(x:Dynamic):Dynamic;
	public function __rmul__(x:Dynamic):Dynamic;
	public function __ror__(x:Dynamic):Dynamic;
	public function __rpow__(x:Dynamic):Dynamic;
	public function __rsub__(x:Dynamic):Dynamic;
	public function __rtruediv__(x:Dynamic):Dynamic;
	public function __rxor__(x:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	public function __sub__(y:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(y:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function __xor__(y:Dynamic):Dynamic;
	/**
		Add a consumer to this tensor.
		
		Args:
		  consumer: an Operation.
		
		Raises:
		  TypeError: if the consumer is not an Operation.
	**/
	public function _add_consumer(consumer:Dynamic):Dynamic;
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
	static public function _override_operator(operator:Dynamic, func:Dynamic):Dynamic;
	public function _shape_as_list():Dynamic;
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
		
		Calling this method will execute all preceding operations that
		produce the inputs needed for the operation that produces this
		tensor.
		
		*N.B.* Before invoking `Tensor.eval()`, its graph must have been
		launched in a session, and either a default session must be
		available, or `session` must be specified explicitly.
		
		Args:
		  feed_dict: A dictionary that maps `Tensor` objects to feed values.
		    See [`Session.run()`](../../api_docs/python/client.md#Session.run) for a
		    description of the valid feed values.
		  session: (Optional.) The `Session` to be used to evaluate this tensor. If
		    none, the default session will be used.
		
		Returns:
		  A numpy array corresponding to the value of this tensor.
	**/
	public function eval(?feed_dict:Dynamic, ?session:Dynamic):Dynamic;
	/**
		Returns the `TensorShape` that represents the shape of this tensor.
		
		The shape is computed using shape inference functions that are
		registered for each `Operation` type using `tf.RegisterShape`.
		See [`TensorShape`](../../api_docs/python/framework.md#TensorShape) for more
		details of what a shape represents.
		
		The inferred shape of a tensor is used to provide shape
		information without having to launch the graph in a session. This
		can be used for debugging, and providing early error messages. For
		example:
		
		```python
		c = tf.constant([[1.0, 2.0, 3.0], [4.0, 5.0, 6.0]])
		
		print(c.get_shape())
		==> TensorShape([Dimension(2), Dimension(3)])
		
		d = tf.constant([[1.0, 0.0], [0.0, 1.0], [1.0, 0.0], [0.0, 1.0]])
		
		print(d.get_shape())
		==> TensorShape([Dimension(4), Dimension(2)])
		
		# Raises a ValueError, because `c` and `d` do not have compatible
		# inner dimensions.
		e = tf.matmul(c, d)
		
		f = tf.matmul(c, d, transpose_a=True, transpose_b=True)
		
		print(f.get_shape())
		==> TensorShape([Dimension(3), Dimension(4)])
		```
		
		In some cases, the inferred shape may have unknown dimensions. If
		the caller has additional information about the values of these
		dimensions, `Tensor.set_shape()` can be used to augment the
		inferred shape.
		
		Returns:
		  A `TensorShape` representing the shape of this tensor.
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
		Updates the shape of this tensor.
		
		This method can be called multiple times, and will merge the given
		`shape` with the current shape of this tensor. It can be used to
		provide additional information about the shape of this tensor that
		cannot be inferred from the graph alone. For example, this can be used
		to provide additional information about the shapes of images:
		
		```python
		_, image_data = tf.TFRecordReader(...).read(...)
		image = tf.image.decode_png(image_data, channels=3)
		
		# The height and width dimensions of `image` are data dependent, and
		# cannot be computed without executing the op.
		print(image.get_shape())
		==> TensorShape([Dimension(None), Dimension(None), Dimension(3)])
		
		# We know that each image in this dataset is 28 x 28 pixels.
		image.set_shape([28, 28, 3])
		print(image.get_shape())
		==> TensorShape([Dimension(28), Dimension(28), Dimension(3)])
		```
		
		Args:
		  shape: A `TensorShape` representing the shape of this tensor.
		
		Raises:
		  ValueError: If `shape` is not compatible with the current shape of
		    this tensor.
	**/
	public function set_shape(shape:Dynamic):Dynamic;
	/**
		The index of this tensor in the outputs of its `Operation`.
	**/
	public var value_index : Dynamic;
}