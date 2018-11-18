/* This file is generated, do not edit! */
package tensorflow.contrib.labeled_tensor;
@:pythonImport("tensorflow.contrib.labeled_tensor") extern class Labeled_tensor_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		LabeledTensor version of `tf.abs`.
		
		See `tf.abs` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.abs` elementwise.
	**/
	static public function abs(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		LabeledTensor version of `tf.acos`.
		
		See `tf.acos` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.acos` elementwise.
	**/
	static public function acos(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.add` with label based alignment.
		
		See `tf.add` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.add` elementwise.
	**/
	static public function add(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Align the axes of two tensors so they may be broadcast to each other.
		
		Axes are ordered by the current axis order scope, if present, or by the left-
		most consistent ordering. An exception is raised if it is impossible to align
		the tensors without a transpose (align never copies the input data).
		
		Example usage:
		
		  >>> a = lt.LabeledTensor(tf.ones((2, 4)), ['x', 'z'])
		  >>> b = lt.LabeledTensor(tf.ones((3, 4)), ['y', 'z'])
		  >>> a2, b2, axes = lt.align(a, b)
		  >>> a2
		  <LabeledTensor 'lt_align_1/lt_align_1/0:...' shape=(2, 1, 4) dtype=float32
		   axes=[('x', Dimension(2)),
		         ('y', Dimension(1)),
		         ('z', Dimension(4))]>
		  >>> b2
		  <LabeledTensor 'lt_align_1/lt_align_1/1:...' shape=(1, 3, 4) dtype=float32
		   axes=[('x', Dimension(1)),
		         ('y', Dimension(3)),
		         ('z', Dimension(4))]>
		  >>> axes
		  Axes([('x', Dimension(2)),
		        ('y', Dimension(3)),
		        ('z', Dimension(4))])
		
		Args:
		  labeled_tensor_0: An input tensor.
		  labeled_tensor_1: An input tensor.
		  name: Optional op name.
		
		Returns:
		  The aligned tensors and the axes the resulting tensor would have if the two
		  aligned tensors were broadcast to each other. The aligned tensors have the
		  same rank but not necessarily the same shape, with axes in the same order.
		
		Raises:
		  ValueError: If axes with the same name on the inputs are not equal.
		  AxisOrderError: If there is no way to reshape the input tensors into the
		    output without a transpose.
	**/
	static public function align(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert an AxisLike object into an Axis.
		
		Args:
		  axis_data: Axis object or tuple (axis_name, axis_value) describing an axis.
		
		Returns:
		  Axis object. This may be the original object if axis_data is an Axis.
	**/
	static public function as_axis(axis_data:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.asin`.
		
		See `tf.asin` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.asin` elementwise.
	**/
	static public function asin(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.atan`.
		
		See `tf.atan` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.atan` elementwise.
	**/
	static public function atan(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Set axis order for the result of broadcasting operations within a scope.
		
		This allows you to ensure that tensors resulting from arithmetic have a
		predictable axis order.
		
		Example usage:
		
		  with lt.axis_order_scope(['x', 'y', 'z']):
		    # result is guaranteed to have the correct axis order
		    result = w + b
		
		You can nest scopes, in which case only the inner-most scope applies, e.g.,
		
		  with lt.axis_order(['x', 'y', 'z']):
		    with lt.axis_order():
		      result = w + b  # uses the default (left-most) axis ordering
		
		Args:
		  axis_order: optional list of strings providing axis names. By default,
		    creates a scope without axis order.
		
		Yields:
		  The provided axis_order or `None`.
	**/
	static public function axis_order_scope(?axis_order:Dynamic):Dynamic;
	/**
		Rebatch a tensor.
		
		See tf.batch.
		
		Args:
		  labeled_tensors: The input tensors.
		  batch_size: The output batch size.
		  num_threads: See tf.batch.
		  capacity: See tf.batch.
		  enqueue_many: If true, the input tensors must contain a 'batch' axis as
		    their first axis.
		    If false, the input tensors must not contain a 'batch' axis.
		    See tf.batch.
		  allow_smaller_final_batch: See tf.batch.
		  name: Optional op name.
		
		Returns:
		  The rebatched tensors.
		  If enqueue_many is false, the output tensors will have a new 'batch' axis
		    as their first axis.
		
		Raises:
		  ValueError: If enqueue_many is True and the first axis of the tensors
		    isn't "batch".
	**/
	static public function batch(labeled_tensors:Dynamic, batch_size:Dynamic, ?num_threads:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?allow_smaller_final_batch:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Apply a boolean mask to a labeled tensor.
		
		Unlike `tf.boolean_mask`, this currently only works on 1-dimensional masks.
		The mask is applied to the first axis of `labeled_tensor`. Labels on the first
		axis are removed, because True indices in `mask` may not be known dynamically.
		
		Args:
		  labeled_tensor: The input tensor.
		  mask: The type of the returned tensor.
		  name: Optional op name.
		
		Returns:
		  The masked labeled tensor.
		
		Raises:
		  ValueError: if the first axis of the mask
	**/
	static public function boolean_mask(labeled_tensor:Dynamic, mask:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a labeled tensor to a new type.
		
		Args:
		  labeled_tensor: The input tensor.
		  dtype: The type of the returned tensor.
		  name: Optional op name.
		
		Returns:
		  A labeled tensor with the new dtype.
	**/
	@:native("cast")
	static public function _cast(labeled_tensor:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.ceil`.
		
		See `tf.ceil` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.ceil` elementwise.
	**/
	static public function ceil(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Verify that the given tensor has a consistent axis order.
		
		Args:
		  labeled_tensor: The input tensor. All axes on this tensor must appear in
		    axis_order.
		  axis_order: Optional desired axis order, as a list of names. If not
		    provided, defaults to the current axis_order_scope (if set).
		
		Raises:
		  AxisOrderError: If the axis_order is unavailable, inconsistent or does not
		    include all existing axes.
	**/
	static public function check_axis_order(labeled_tensor:Dynamic, ?axis_order:Dynamic):Dynamic;
	/**
		Concatenate tensors along a dimension.
		
		See tf.concat.
		
		Args:
		  labeled_tensors: A list of input LabeledTensors.
		  axis_name: The name of the axis along which to concatenate.
		  name: Optional op name.
		
		Returns:
		  The concatenated tensor.
		  The coordinate labels for the concatenation dimension are also concatenated,
		  if they are available for every tensor.
		
		Raises:
		  ValueError: If fewer than one tensor inputs is provided, if the tensors
		    have incompatible axes, or if `axis_name` isn't the name of an axis.
	**/
	static public function concat(labeled_tensors:Dynamic, axis_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a constant tensor.
		
		If `axes` includes any strings, shape is inferred from `value`. Otherwise,
		the sizes of the given `axes` are used to set `shape` for `tf.constant`.
		
		See tf.constant for more details.
		
		Args:
		  value: The input tensor.
		  dtype: The type of the returned tensor.
		  axes: Optional Axes, list of strings or list of objects coercible to Axis
		    objects. By default, axes are assumed to be an empty list (i.e., `value`
		    is treated as a scalar).
		  name: Optional op name.
		
		Returns:
		  The tensor with elements set to zero.
	**/
	static public function constant(value:Dynamic, ?dtype:Dynamic, ?axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts the given `value` to a `LabeledTensor`.
		
		This function accepts `LabeledTensor` objects, 0-dimensional `Tensor` objects
		and numpy arrays, and Python scalars. Higher dimensional unlabeled tensors
		must use the `LabeledTensor` constructor explicitly.
		
		Args:
		  value: Object to convert.
		  dtype: Optional element type for the returned tensor. If missing, the type
		    is inferred from the type of value.
		  name: Optional name to use if a new Tensor is created.
		
		Returns:
		  `value` converted into a `LabeledTensor` object.
		
		Raises:
		  ValueError: If the output would have rank>0 but the input was not already a
		    `LabeledTensor`.
	**/
	static public function convert_to_labeled_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.cos`.
		
		See `tf.cos` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.cos` elementwise.
	**/
	static public function cos(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Define a binary operation that broadcasts labeled tensors.
		
		Args:
		  op_name: string name of the TensorFlow op.
		  elementwise_function: function to call to evaluate the op on tf.Tensor
		    objects. This function must accept three arguments: two tf.Tensor objects,
		    and an optional `name`.
		
		Returns:
		  Function defining the given op that acts on LabeledTensors.
	**/
	static public function define_binary_op(op_name:Dynamic, elementwise_function:Dynamic):Dynamic;
	/**
		Define a reduction op for labeled tensors.
		
		Args:
		  op_name: string name of the TensorFlow op.
		  reduce_fn: function to call to evaluate the op on a tf.Tensor.
		
		Returns:
		  Function defining the given reduction op that acts on a LabeledTensor.
	**/
	static public function define_reduce_op(op_name:Dynamic, reduce_fn:Dynamic):Dynamic;
	/**
		Define a unary operation for labeled tensors.
		
		Args:
		  op_name: string name of the TensorFlow op.
		  elementwise_function: function to call to evaluate the op on a single
		    tf.Tensor object. This function must accept two arguments: a tf.Tensor
		    object, and an optional `name`.
		
		Returns:
		  Function defining the given op that acts on LabeledTensors.
	**/
	static public function define_unary_op(op_name:Dynamic, elementwise_function:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.digamma`.
		
		See `tf.digamma` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.digamma` elementwise.
	**/
	static public function digamma(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.div` with label based alignment.
		
		See `tf.div` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.div` elementwise.
	**/
	static public function div(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		LabeledTensor version of `tf.equal` with label based alignment.
		
		See `tf.equal` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.equal` elementwise.
	**/
	static public function equal(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.erf`.
		
		See `tf.erf` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.erf` elementwise.
	**/
	static public function erf(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.erfc`.
		
		See `tf.erfc` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.erfc` elementwise.
	**/
	static public function erfc(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.exp`.
		
		See `tf.exp` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.exp` elementwise.
	**/
	static public function exp(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Insert dimensions of size 1.
		
		See tf.expand_dims.
		
		Args:
		  labeled_tensor: The input tensor.
		  axes: The desired axis names as strings or tuples of (name, label),
		    where `label` is the coordinate name for the new dimension `name`.
		    These must include the existing axis names, and the existing names must
		    appear in the same order in this list as they do in the input tensor.
		  name: Optional op name.
		
		Returns:
		  A tensor with an axis for each axis in axes.
		  New axes are created with size 1 and do not have labeled coordinates.
		
		Raises:
		  AxisOrderError: If axis names don't appear in the same order in axes
		    and the labeled tensor.
	**/
	static public function expand_dims(labeled_tensor:Dynamic, axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.floor`.
		
		See `tf.floor` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.floor` elementwise.
	**/
	static public function floor(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Left fold on the list of tensors unpacked from labeled_tensor.
		
		See tf.foldl.
		
		Args:
		  fn: The function to apply to each unpacked LabeledTensor.
		    It should have type (LabeledTensor, LabeledTensor) -> LabeledTensor.
		    Its arguments are (accumulated_value, next_value).
		  labeled_tensor: The input tensor.
		  initial_value: The initial value of the accumulator.
		  name: Optional op name.
		
		Returns:
		  The accumulated value.
	**/
	static public function foldl(fn:Dynamic, labeled_tensor:Dynamic, initial_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.greater` with label based alignment.
		
		See `tf.greater` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.greater` elementwise.
	**/
	static public function greater(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.greater_equal` with label based alignment.
		
		See `tf.greater_equal` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.greater_equal` elementwise.
	**/
	static public function greater_equal(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The identity op.
		
		See tf.identity.
		
		Args:
		  labeled_tensor: The input tensor.
		  name: Optional op name.
		
		Returns:
		  The tensor.
	**/
	static public function identity(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.igamma` with label based alignment.
		
		See `tf.igamma` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.igamma` elementwise.
	**/
	static public function igamma(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.igammac` with label based alignment.
		
		See `tf.igammac` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.igammac` elementwise.
	**/
	static public function igammac(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Impose desired axis order on a labeled tensor.
		
		Args:
		  labeled_tensor: The input tensor.
		  axis_order: Optional desired axis order, as a list of names. If not
		    provided, defaults to the current axis_order_scope (if set).
		  name: Optional op name.
		
		Returns:
		  Labeled tensor with possibly transposed axes.
		
		Raises:
		  AxisOrderError: If no axis_order is provided or axis_order does not contain
		    all axes on the input tensor.
	**/
	static public function impose_axis_order(labeled_tensor:Dynamic, ?axis_order:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.less` with label based alignment.
		
		See `tf.less` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.less` elementwise.
	**/
	static public function less(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.less_equal` with label based alignment.
		
		See `tf.less_equal` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.less_equal` elementwise.
	**/
	static public function less_equal(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.lgamma`.
		
		See `tf.lgamma` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.lgamma` elementwise.
	**/
	static public function lgamma(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.log`.
		
		See `tf.log` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.log` elementwise.
	**/
	static public function log(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.logical_and` with label based alignment.
		
		See `tf.logical_and` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.logical_and` elementwise.
	**/
	static public function logical_and(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.logical_not`.
		
		See `tf.logical_not` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.logical_not` elementwise.
	**/
	static public function logical_not(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.logical_or` with label based alignment.
		
		See `tf.logical_or` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.logical_or` elementwise.
	**/
	static public function logical_or(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.logical_xor` with label based alignment.
		
		See `tf.logical_xor` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.logical_xor` elementwise.
	**/
	static public function logical_xor(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Map on the list of tensors unpacked from labeled_tensor.
		
		See tf.map_fn.
		
		Args:
		  fn: The function to apply to each unpacked LabeledTensor.
		    It should have type LabeledTensor -> LabeledTensor.
		  labeled_tensor: The input tensor.
		  name: Optional op name.
		
		Returns:
		  A tensor that packs the results of applying fn to the list of tensors
		  unpacked from labeled_tensor.
	**/
	static public function map_fn(fn:Dynamic, labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Matrix multiply two tensors with rank 1 or 2.
		
		If both tensors have rank 2, a matrix-matrix product is performed.
		If one tensor has rank 1 and the other has rank 2, then a matrix-vector
		product is performed.
		If both tensors have rank 1, then a vector dot-product is performed.
		(This behavior matches that of `numpy.dot`.)
		
		Both tensors must share exactly one dimension in common, which is the
		dimension the operation is summed along. The inputs will be automatically
		transposed if necessary as part of the matmul op.
		
		We intend to eventually support `matmul` on higher rank input, and also
		eventually support summing over any number shared dimensions (via an `axis`
		argument), but neither of these features has been implemented yet.
		
		Args:
		  a: First LabeledTensor.
		  b: Second LabeledTensor.
		  name: Optional op name.
		
		Returns:
		  LabeledTensor with the result of matrix multiplication. Axes are ordered by
		  the current axis_order_scope, if set, or in or order of appearance on the
		  inputs.
		
		Raises:
		  NotImplementedError: If inputs have rank >2 or share multiple axes.
		  ValueError: If the inputs have rank 0 or do not share any axes.
	**/
	static public function matmul(a:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.maximum` with label based alignment.
		
		See `tf.maximum` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.maximum` elementwise.
	**/
	static public function maximum(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.minimum` with label based alignment.
		
		See `tf.minimum` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.minimum` elementwise.
	**/
	static public function minimum(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.mod` with label based alignment.
		
		See `tf.mod` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.mod` elementwise.
	**/
	static public function mod(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.mul` with label based alignment.
		
		See `tf.mul` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.mul` elementwise.
	**/
	static public function mul(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.neg`.
		
		See `tf.neg` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.neg` elementwise.
	**/
	static public function neg(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.not_equal` with label based alignment.
		
		See `tf.not_equal` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.not_equal` elementwise.
	**/
	static public function not_equal(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates an identical tensor with all elements set to one.
		
		Args:
		  labeled_tensor: The input tensor.
		  dtype: The type of the returned tensor.
		  name: Optional op name.
		
		Returns:
		  The tensor with elements set to one.
	**/
	static public function ones_like(labeled_tensor:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Pack tensors along a new axis.
		
		See tf.pack.
		
		Args:
		  labeled_tensors: The input tensors, which must have identical axes.
		  new_axis: The name of the new axis, or a tuple containing the name
		    and coordinate labels.
		  axis_position: Optional integer position at which to insert the new axis.
		  name: Optional op name.
		
		Returns:
		  The packed tensors as a single LabeledTensor, with `new_axis` in the given
		  `axis_position`.
		
		Raises:
		  ValueError: If fewer than one input tensors is provided, or if the tensors
		    don't have identical axes.
	**/
	static public function pack(labeled_tensors:Dynamic, new_axis:Dynamic, ?axis_position:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Pads a tensor.
		
		See tf.pad.
		
		Args:
		  labeled_tensor: The input tensor.
		  paddings: A mapping where the keys are axis names and the values are
		    tuples where the first element is the padding to insert at the beginning
		    of the axis and the second is the padding to insert at the end of the
		    axis.
		  mode: One of "CONSTANT", "REFLECT", or "SYMMETRIC".
		  name: Optional op name.
		
		Returns:
		  A tensor with the indicated axes padded, optionally with those axes extended
		  with the provided labels.
		
		Raises:
		  ValueError: If the padded axes are not axes in the input tensor.
	**/
	static public function pad(labeled_tensor:Dynamic, paddings:Dynamic, ?mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Parse `Example` protos into a `dict` of labeled tensors.
		
		See tf.parse_example.
		
		Args:
		  serialized: A 1-D LabeledTensor of strings, a batch of binary serialized
		    `Example` protos.
		  features: A `dict` mapping feature keys to `labeled_tensor.FixedLenFeature`
		    values.
		  name: A name for this operation (optional).
		  example_names: A vector (1-D Tensor) of strings (optional), the names of
		    the serialized protos in the batch.
		
		Returns:
		  A `dict` mapping feature keys to `LabeledTensor` values. The single axis
		  from `serialized` will be prepended to the axes provided by each feature.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_example(serialized:Dynamic, features:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
	/**
		Parses a single `Example` proto.
		
		See tf.parse_single_example.
		
		Args:
		  serialized: A scalar string Tensor or LabeledTensor, a single serialized
		    Example.
		  features: A `dict` mapping feature keys to `labeled_tensor.FixedLenFeature`
		    values.
		  name: A name for this operation (optional).
		  example_names: (Optional) A scalar string Tensor, the associated name.
		
		Returns:
		  A `dict` mapping feature keys to `LabeledTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_single_example(serialized:Dynamic, features:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
	/**
		Create a placeholder for a labeled tensor.
		
		For example:
		
		  lt.placeholder(tf.float32, ['batch', ('channel', ['r', 'g', 'b'])])
		
		See tf.placeholder for more details.
		
		Args:
		  dtype: The type of elements in the tensor to be fed.
		  axes: sequence of strings (denoting axes of unknown size) and/or objects
		    convertable to lt.Axis to label the result.
		  name: Optional op name.
		
		Returns:
		  Placeholder labeled tensor.
	**/
	static public function placeholder(dtype:Dynamic, axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.polygamma` with label based alignment.
		
		See `tf.polygamma` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.polygamma` elementwise.
	**/
	static public function polygamma(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.pow` with label based alignment.
		
		See `tf.pow` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.pow` elementwise.
	**/
	static public function pow(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Randomly crops a tensor to a given size.
		
		See tf.random_crop.
		
		Args:
		  labeled_tensor: The input tensor.
		  shape_map: A dictionary mapping axis names to the size of the random crop
		    for that dimension.
		  seed: An optional random seed.
		  name: An optional op name.
		
		Returns:
		  A tensor of the same rank as `labeled_tensor`, cropped randomly in the
		  selected dimensions.
		
		Raises:
		  ValueError: If the shape map contains an axis name not in the input tensor.
	**/
	static public function random_crop(labeled_tensor:Dynamic, shape_map:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.reciprocal`.
		
		See `tf.reciprocal` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.reciprocal` elementwise.
	**/
	static public function reciprocal(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the given reduction across the given axes of a LabeledTensor.
		
		See `tf.reduce_all` for full details.
		
		Args:
		  labeled_tensor: The input tensor.
		  axes: A set of axes or None.
		    If None, all axes will be reduced.
		    Axes must all be strings, in which case those dimensions will be
		    removed, or pairs of (name, None) or (name, label), in which case those
		    dimensions will be kept.
		  name: Optional op name.
		
		Returns:
		  The reduced LabeledTensor.
		
		Raises:
		  ValueError: if any of the axes to reduce over are not found on
		    `labeled_tensor`.
	**/
	static public function reduce_all(labeled_tensor:Dynamic, ?axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the given reduction across the given axes of a LabeledTensor.
		
		See `tf.reduce_any` for full details.
		
		Args:
		  labeled_tensor: The input tensor.
		  axes: A set of axes or None.
		    If None, all axes will be reduced.
		    Axes must all be strings, in which case those dimensions will be
		    removed, or pairs of (name, None) or (name, label), in which case those
		    dimensions will be kept.
		  name: Optional op name.
		
		Returns:
		  The reduced LabeledTensor.
		
		Raises:
		  ValueError: if any of the axes to reduce over are not found on
		    `labeled_tensor`.
	**/
	static public function reduce_any(labeled_tensor:Dynamic, ?axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the given reduction across the given axes of a LabeledTensor.
		
		See `tf.reduce_logsumexp` for full details.
		
		Args:
		  labeled_tensor: The input tensor.
		  axes: A set of axes or None.
		    If None, all axes will be reduced.
		    Axes must all be strings, in which case those dimensions will be
		    removed, or pairs of (name, None) or (name, label), in which case those
		    dimensions will be kept.
		  name: Optional op name.
		
		Returns:
		  The reduced LabeledTensor.
		
		Raises:
		  ValueError: if any of the axes to reduce over are not found on
		    `labeled_tensor`.
	**/
	static public function reduce_logsumexp(labeled_tensor:Dynamic, ?axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the given reduction across the given axes of a LabeledTensor.
		
		See `tf.reduce_max` for full details.
		
		Args:
		  labeled_tensor: The input tensor.
		  axes: A set of axes or None.
		    If None, all axes will be reduced.
		    Axes must all be strings, in which case those dimensions will be
		    removed, or pairs of (name, None) or (name, label), in which case those
		    dimensions will be kept.
		  name: Optional op name.
		
		Returns:
		  The reduced LabeledTensor.
		
		Raises:
		  ValueError: if any of the axes to reduce over are not found on
		    `labeled_tensor`.
	**/
	static public function reduce_max(labeled_tensor:Dynamic, ?axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the given reduction across the given axes of a LabeledTensor.
		
		See `tf.reduce_mean` for full details.
		
		Args:
		  labeled_tensor: The input tensor.
		  axes: A set of axes or None.
		    If None, all axes will be reduced.
		    Axes must all be strings, in which case those dimensions will be
		    removed, or pairs of (name, None) or (name, label), in which case those
		    dimensions will be kept.
		  name: Optional op name.
		
		Returns:
		  The reduced LabeledTensor.
		
		Raises:
		  ValueError: if any of the axes to reduce over are not found on
		    `labeled_tensor`.
	**/
	static public function reduce_mean(labeled_tensor:Dynamic, ?axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the given reduction across the given axes of a LabeledTensor.
		
		See `tf.reduce_min` for full details.
		
		Args:
		  labeled_tensor: The input tensor.
		  axes: A set of axes or None.
		    If None, all axes will be reduced.
		    Axes must all be strings, in which case those dimensions will be
		    removed, or pairs of (name, None) or (name, label), in which case those
		    dimensions will be kept.
		  name: Optional op name.
		
		Returns:
		  The reduced LabeledTensor.
		
		Raises:
		  ValueError: if any of the axes to reduce over are not found on
		    `labeled_tensor`.
	**/
	static public function reduce_min(labeled_tensor:Dynamic, ?axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the given reduction across the given axes of a LabeledTensor.
		
		See `tf.reduce_prod` for full details.
		
		Args:
		  labeled_tensor: The input tensor.
		  axes: A set of axes or None.
		    If None, all axes will be reduced.
		    Axes must all be strings, in which case those dimensions will be
		    removed, or pairs of (name, None) or (name, label), in which case those
		    dimensions will be kept.
		  name: Optional op name.
		
		Returns:
		  The reduced LabeledTensor.
		
		Raises:
		  ValueError: if any of the axes to reduce over are not found on
		    `labeled_tensor`.
	**/
	static public function reduce_prod(labeled_tensor:Dynamic, ?axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the given reduction across the given axes of a LabeledTensor.
		
		See `tf.reduce_sum` for full details.
		
		Args:
		  labeled_tensor: The input tensor.
		  axes: A set of axes or None.
		    If None, all axes will be reduced.
		    Axes must all be strings, in which case those dimensions will be
		    removed, or pairs of (name, None) or (name, label), in which case those
		    dimensions will be kept.
		  name: Optional op name.
		
		Returns:
		  The reduced LabeledTensor.
		
		Raises:
		  ValueError: if any of the axes to reduce over are not found on
		    `labeled_tensor`.
	**/
	static public function reduce_sum(labeled_tensor:Dynamic, ?axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Rename an axis of LabeledTensor.
		
		Args:
		  labeled_tensor: The input tensor.
		  existing_name: Name for an existing axis on the input.
		  new_name: Desired replacement name.
		  name: Optional op name.
		
		Returns:
		  LabeledTensor with renamed axis.
		
		Raises:
		  ValueError: If `existing_name` is not an axis on the input.
	**/
	static public function rename_axis(labeled_tensor:Dynamic, existing_name:Dynamic, new_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reshape specific axes of a LabeledTensor.
		
		Non-indicated axes remain in their original locations.
		
		Args:
		  labeled_tensor: The input tensor.
		  existing_axes: List of axis names found on the input tensor. These must
		    appear sequentially in the list of axis names on the input. In other
		    words, they must be a valid slice of `list(labeled_tensor.axes.keys())`.
		  new_axes: List of strings, tuples of (axis_name, axis_value) or Axis objects
		    providing new axes with which to replace `existing_axes` in the reshaped
		    result. At most one element of `new_axes` may be a string, indicating an
		    axis with unknown size.
		  name: Optional op name.
		
		Returns:
		  The reshaped LabeledTensor.
		
		Raises:
		  ValueError: If `existing_axes` are not all axes on the input, or if more
		   than one of `new_axes` has unknown size.
		  AxisOrderError: If `existing_axes` are not a slice of axis names on the
		    input.
	**/
	static public function reshape(labeled_tensor:Dynamic, existing_axes:Dynamic, new_axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.round`.
		
		See `tf.round` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.round` elementwise.
	**/
	static public function round(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.rsqrt`.
		
		See `tf.rsqrt` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.rsqrt` elementwise.
	**/
	static public function rsqrt(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Slice out a subset of the tensor.
		
		Args:
		  labeled_tensor: The input tensor.
		  selection: A dictionary mapping an axis name to a scalar, slice or list of
		    values to select. Currently supports two types of selections:
		      (a) Any number of scalar and/or slice selections.
		      (b) Exactly one list selection, without any scalars or slices.
		  name: Optional op name.
		
		Returns:
		  The selection as a `LabeledTensor`.
		
		Raises:
		  ValueError: If the tensor doesn't have an axis in the selection or if
		    that axis lacks labels.
		  KeyError: If any labels in a selection are not found in the original axis.
		  NotImplementedError: If you attempt to combine a list selection with
		    scalar selection or another list selection.
	**/
	static public function select(labeled_tensor:Dynamic, selection:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Rebatch a tensor, with shuffling.
		
		See tf.batch.
		
		Args:
		  labeled_tensors: The input tensors.
		  batch_size: The output batch size.
		  num_threads: See tf.batch.
		  capacity: See tf.batch.
		  enqueue_many: If true, the input tensors must contain a 'batch' axis as
		    their first axis.
		    If false, the input tensors must not contain a 'batch' axis.
		    See tf.batch.
		  min_after_dequeue: Minimum number of elements in the queue after a dequeue,
		    used to ensure mixing.
		  seed: Optional random seed.
		  allow_smaller_final_batch: See tf.batch.
		  name: Optional op name.
		
		Returns:
		  The rebatched tensors.
		  If enqueue_many is false, the output tensors will have a new 'batch' axis
		    as their first axis.
		
		Raises:
		  ValueError: If enqueue_many is True and the first axis of the tensors
		    isn't "batch".
	**/
	static public function shuffle_batch(labeled_tensors:Dynamic, batch_size:Dynamic, ?num_threads:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?min_after_dequeue:Dynamic, ?seed:Dynamic, ?allow_smaller_final_batch:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.sigmoid`.
		
		See `tf.sigmoid` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.sigmoid` elementwise.
	**/
	static public function sigmoid(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.sign`.
		
		See `tf.sign` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.sign` elementwise.
	**/
	static public function sign(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.sin`.
		
		See `tf.sin` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.sin` elementwise.
	**/
	static public function sin(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Slice out a subset of the tensor.
		
		This is an analog of tf.slice.
		For example:
		>>> tensor = tf.reshape(tf.range(0, 6), [3, 2])
		>>> labeled_tensor = lt.LabeledTensor(tensor, ['a', ('b', ['foo', 'bar'])])
		>>> lt.slice(labeled_tensor, {'a': slice(0, 2), 'b': 1})
		<LabeledTensor 'lt_slice:...' shape=(2,) dtype=int32
		 axes=[('a', Dimension(2))]>
		
		Args:
		  labeled_tensor: The input tensor.
		  selection: A dictionary of type str -> Union(int, slice of int) mapping
		    axis names to sub-selections.
		  name: Optional op name.
		
		Returns:
		  The slice as a `LabeledTensor`.
	**/
	static public function slice(labeled_tensor:Dynamic, selection:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.sqrt`.
		
		See `tf.sqrt` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.sqrt` elementwise.
	**/
	static public function sqrt(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.square`.
		
		See `tf.square` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.square` elementwise.
	**/
	static public function square(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.squared_difference` with label based alignment.
		
		See `tf.squared_difference` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.squared_difference` elementwise.
	**/
	static public function squared_difference(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Remove size-1 dimensions.
		
		See tf.squeeze.
		
		Args:
		  labeled_tensor: The input tensor.
		  axis_names: The names of the dimensions to remove, or None to remove
		    all size-1 dimensions.
		  name: Optional op name.
		
		Returns:
		  A tensor with the specified dimensions removed.
		
		Raises:
		  ValueError: If the named axes are not in the tensor, or if they are
		    not size-1.
	**/
	static public function squeeze(labeled_tensor:Dynamic, ?axis_names:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.sub` with label based alignment.
		
		See `tf.sub` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.sub` elementwise.
	**/
	static public function sub(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.tan`.
		
		See `tf.tan` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.tan` elementwise.
	**/
	static public function tan(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.tanh`.
		
		See `tf.tanh` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.tanh` elementwise.
	**/
	static public function tanh(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Constructs a tensor by tiling a given tensor.
		
		Only axes without tick-labels can be tiled. (Otherwise, axis labels on tiled
		tensors would no longer be unique.)
		
		See lt.tile.
		
		Args:
		  labeled_tensor: The input tensor.
		  multiples: A mapping where the keys are axis names and the values are the
		    integer number of times to tile along that axis. Only axes with a multiple
		    different than 1 need be included.
		  name: Optional op name.
		
		Returns:
		  A tensor with the indicated axes tiled.
		
		Raises:
		  ValueError: If the tiled axes are not axes in the input tensor, or if any
		    axes in multiples have tick labels.
	**/
	static public function tile(labeled_tensor:Dynamic, multiples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Permute a tensor's axes.
		
		See tf.transpose.
		
		Args:
		  labeled_tensor: The input tensor.
		  axis_order: Optional desired axis order, as a list of names. By default, the
		    order of axes is reversed.
		  name: Optional op name.
		
		Returns:
		  The permuted tensor.
		
		Raises:
		  ValueError: If axis_order isn't a permutation of the existing axes.
	**/
	static public function transpose(labeled_tensor:Dynamic, ?axis_order:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Unpack the tensor.
		
		See tf.unpack.
		
		Args:
		  labeled_tensor: The input tensor.
		  axis_name: Optional name of axis to unpack. By default, the first axis is
		    used.
		  name: Optional op name.
		
		Returns:
		  The list of unpacked LabeledTensors.
		
		Raises:
		  ValueError: If `axis_name` is not an axis on the input.
	**/
	static public function unpack(labeled_tensor:Dynamic, ?axis_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Asserts a tensor doesn't contain NaNs or Infs.
		
		See tf.verify_tensor_all_finite.
		
		Args:
		  labeled_tensor: The input tensor.
		  message: Message to log on failure.
		  name: Optional op name.
		
		Returns:
		  The input tensor.
	**/
	static public function verify_tensor_all_finite(labeled_tensor:Dynamic, message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return elements from x or y depending on condition.
		
		See `tf.where` for more details. This function currently only implements the
		three argument version of where.
		
		Args:
		  condition: LabeledTensor of type `bool`.
		  x: LabeledTensor for values where condition is true.
		  y: LabeledTensor for values where condition is false.
		  name: Optional op name.
		
		Returns:
		  The labeled tensor with values according to condition.
		
		Raises:
		  ValueError: if `x` and `y` have different axes, or if the axes of `x` do not
		    start with the axes of `condition`.
	**/
	static public function where(condition:Dynamic, x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates an identical tensor with all elements set to zero.
		
		Args:
		  labeled_tensor: The input tensor.
		  dtype: The type of the returned tensor.
		  name: Optional op name.
		
		Returns:
		  The tensor with elements set to zero.
	**/
	static public function zeros_like(labeled_tensor:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.zeta` with label based alignment.
		
		See `tf.zeta` for full details.
		
		Args:
		  labeled_tensor_0: Input tensor.
		  labeled_tensor_1: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.zeta` elementwise.
	**/
	static public function zeta(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
}