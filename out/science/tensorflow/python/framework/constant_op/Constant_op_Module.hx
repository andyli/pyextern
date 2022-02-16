/* This file is generated, do not edit! */
package tensorflow.python.framework.constant_op;
@:pythonImport("tensorflow.python.framework.constant_op") extern class Constant_op_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates a constant on the current device.
	**/
	static public function _constant_eager_impl(ctx:Dynamic, value:Dynamic, dtype:Dynamic, shape:Dynamic, verify_shape:Dynamic):Dynamic;
	/**
		Implementation of constant.
	**/
	static public function _constant_impl(value:Dynamic, dtype:Dynamic, shape:Dynamic, name:Dynamic, verify_shape:Dynamic, allow_broadcast:Dynamic):Dynamic;
	static public function _constant_tensor_conversion_function(v:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	/**
		Function to convert Dimension to Tensor.
	**/
	static public function _dimension_tensor_conversion_function(d:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	/**
		Copy a constant to the current device.
	**/
	static public function _eager_const(tensor:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Eager-only version of Fill op; requires value is an eager Tensor.
	**/
	static public function _eager_fill(dims:Dynamic, value:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Eager-only version of Identity op; requires tensor is an eager Tensor.
	**/
	static public function _eager_identity(tensor:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Eager-only version of Reshape op; requires tensor is an eager Tensor.
	**/
	static public function _eager_reshape(tensor:Dynamic, shape:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Function to convert TensorShape to Tensor.
	**/
	static public function _tensor_shape_tensor_conversion_function(s:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a constant tensor from a tensor-like object.
		
		Note: All eager `tf.Tensor` values are immutable (in contrast to
		`tf.Variable`). There is nothing especially _constant_ about the value
		returned from `tf.constant`. This function is not fundamentally different from
		`tf.convert_to_tensor`. The name `tf.constant` comes from the `value` being
		embedded in a `Const` node in the `tf.Graph`. `tf.constant` is useful
		for asserting that the value can be embedded that way.
		
		If the argument `dtype` is not specified, then the type is inferred from
		the type of `value`.
		
		>>> # Constant 1-D Tensor from a python list.
		>>> tf.constant([1, 2, 3, 4, 5, 6])
		<tf.Tensor: shape=(6,), dtype=int32,
		    numpy=array([1, 2, 3, 4, 5, 6], dtype=int32)>
		>>> # Or a numpy array
		>>> a = np.array([[1, 2, 3], [4, 5, 6]])
		>>> tf.constant(a)
		<tf.Tensor: shape=(2, 3), dtype=int64, numpy=
		  array([[1, 2, 3],
		         [4, 5, 6]])>
		
		If `dtype` is specified, the resulting tensor values are cast to the requested
		`dtype`.
		
		>>> tf.constant([1, 2, 3, 4, 5, 6], dtype=tf.float64)
		<tf.Tensor: shape=(6,), dtype=float64,
		    numpy=array([1., 2., 3., 4., 5., 6.])>
		
		If `shape` is set, the `value` is reshaped to match. Scalars are expanded to
		fill the `shape`:
		
		>>> tf.constant(0, shape=(2, 3))
		  <tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		  array([[0, 0, 0],
		         [0, 0, 0]], dtype=int32)>
		>>> tf.constant([1, 2, 3, 4, 5, 6], shape=[2, 3])
		<tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		  array([[1, 2, 3],
		         [4, 5, 6]], dtype=int32)>
		
		`tf.constant` has no effect if an eager Tensor is passed as the `value`, it
		even transmits gradients:
		
		>>> v = tf.Variable([0.0])
		>>> with tf.GradientTape() as g:
		...     loss = tf.constant(v + v)
		>>> g.gradient(loss, v).numpy()
		array([2.], dtype=float32)
		
		But, since `tf.constant` embeds the value in the `tf.Graph` this fails for
		symbolic tensors:
		
		>>> with tf.compat.v1.Graph().as_default():
		...   i = tf.compat.v1.placeholder(shape=[None, None], dtype=tf.float32)
		...   t = tf.constant(i)
		Traceback (most recent call last):
		...
		TypeError: ...
		
		`tf.constant` will create tensors on the current device. Inputs which are
		already tensors maintain their placements unchanged.
		
		Related Ops:
		
		* `tf.convert_to_tensor` is similar but:
		  * It has no `shape` argument.
		  * Symbolic tensors are allowed to pass through.
		
		  >>> with tf.compat.v1.Graph().as_default():
		  ...   i = tf.compat.v1.placeholder(shape=[None, None], dtype=tf.float32)
		  ...   t = tf.convert_to_tensor(i)
		
		* `tf.fill`: differs in a few ways:
		  *   `tf.constant` supports arbitrary constants, not just uniform scalar
		      Tensors like `tf.fill`.
		  *   `tf.fill` creates an Op in the graph that is expanded at runtime, so it
		      can efficiently represent large tensors.
		  *   Since `tf.fill` does not embed the value, it can produce dynamically
		      sized outputs.
		
		Args:
		  value: A constant value (or list) of output type `dtype`.
		  dtype: The type of the elements of the resulting tensor.
		  shape: Optional dimensions of resulting tensor.
		  name: Optional name for the tensor.
		
		Returns:
		  A Constant Tensor.
		
		Raises:
		  TypeError: if shape is incorrectly specified or unsupported.
		  ValueError: if called on a symbolic tensor.
	**/
	static public function constant(value:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function constant_v1(value:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic, ?verify_shape:Dynamic):Dynamic;
	/**
		Converts the given `value` to an `EagerTensor`.
		
		Note that this function could return cached copies of created constants for
		performance reasons.
		
		Args:
		  value: value to convert to EagerTensor.
		  ctx: value of context.context().
		  dtype: optional desired dtype of the converted EagerTensor.
		
		Returns:
		  EagerTensor created from value.
		
		Raises:
		  TypeError: if `dtype` is not compatible with the type of t.
	**/
	static public function convert_to_eager_tensor(value:Dynamic, ctx:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function is_constant(tensor_or_op:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}