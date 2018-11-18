/* This file is generated, do not edit! */
package tensorflow.contrib.labeled_tensor.python.ops.core;
@:pythonImport("tensorflow.contrib.labeled_tensor.python.ops.core") extern class Core_Module {
	static public var AxisLike : Dynamic;
	static public var AxisValue : Dynamic;
	static public var DimensionLike : Dynamic;
	static public var LabeledTensorLike : Dynamic;
	static public var LabelsLike : Dynamic;
	static public var Scalar : Dynamic;
	static public var _AXIS_ORDER_KEY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _convert_labeled_tensor_to_tensor(value:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find the left-most consistent ordering between two lists of unique items.
		
		A consistent ordering combines all elements in both a and b while keeping all
		elements in their original order in both inputs. The left-most consistent
		ordering orders elements from `a` not found in `b` before elements in `b` not
		found in `a`.
		
		For example, given ['x', 'z'] and ['y', 'z'], both ['x', 'y', 'z'] and ['y',
		'x', 'z'] are consistent orderings because each of the inputs appears in
		each consistent ordering in the same order, and ['x', 'y', 'z'] is the
		left-most, because 'x' appears only in `a` and 'y' appears only in `b`. In
		contrast, there is no consistent ordering between ['x', 'y'] and ['y', 'x'].
		
		Args:
		  a: list with unique elements.
		  b: list with unique elements.
		
		Returns:
		  List containing all elements in either a or b, or None, if no consistent
		  ordering exists.
	**/
	static public function _find_consistent_ordering(a:Dynamic, b:Dynamic):Dynamic;
	static public function _get_valid_axis_order():Dynamic;
	static public function _set_axis_order(axis_order:Dynamic):Dynamic;
	/**
		LabeledTensor version of `tf.abs`.
		
		See `tf.abs` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.abs` elementwise.
	**/
	static public function abs_function(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
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
		Concatenate a list of Axes.
		
		Args:
		  axes: A collection of Axis objects.
		
		Returns:
		  The concatenation of the axes.
		  If all axes have labels, the result has the concatenation of the labels.
		  Else, the result has no labels, and its size is the sum of the sizes
		  of the axes.
		
		Raises:
		  ValueError: If `others` is not a collection of Axes or if it is empty.
	**/
	static public function concat_axes(axes:Dynamic):Dynamic;
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
		Get the axis_order set by any containing axis_order_scope.
		
		Returns:
		  List of strings giving an order to use for axis names, or None, if no axis
		  order is set.
	**/
	static public function get_axis_order():Dynamic;
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
	static public function pow_function(labeled_tensor_0:Dynamic, labeled_tensor_1:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
		LabeledTensor version of `tf.round`.
		
		See `tf.round` for full details.
		
		Args:
		  labeled_tensor: Input tensor.
		  name: Optional op name.
		
		Returns:
		  A LabeledTensor with result of applying `tf.round` elementwise.
	**/
	static public function round_function(labeled_tensor:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function slice_function(labeled_tensor:Dynamic, selection:Dynamic, ?name:Dynamic):Dynamic;
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
	static public var string_types : Dynamic;
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