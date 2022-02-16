/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.tf_utils;
@:pythonImport("tensorflow.python.keras.utils.tf_utils") extern class Tf_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts the given attrs to tuple non-recursively.
	**/
	static public function _astuple(attrs:Dynamic):Dynamic;
	static public var _user_convertible_tensor_types : Dynamic;
	static public function are_all_symbolic_tensors(tensors:Dynamic):Dynamic;
	/**
		Prevent tf.layers.Layers from being used with Keras.
		
		Certain legacy layers inherit from their keras analogs; however they are
		not supported with keras and can lead to subtle and hard to diagnose bugs.
		
		Args:
		  layers: A list of layers to check
		
		Raises:
		  TypeError: If any elements of layers are tf.layers.Layers
	**/
	static public function assert_no_legacy_layers(layers:Dynamic):Dynamic;
	/**
		Either wraps or unwraps innermost node data lists in `ListWrapper` objects.
		
		Args:
		  nested: A nested data structure.
		  wrap: If `True`, wrap innermost lists in `ListWrapper` objects. If `False`,
		    unwraps `ListWrapper` objects into lists.
		
		Returns:
		  Structure of same type as nested, with lists wrapped/unwrapped.
	**/
	static public function convert_inner_node_data(nested:Dynamic, ?wrap:Dynamic):Dynamic;
	/**
		Converts nested shape representations to desired format.
		
		Performs:
		
		TensorShapes -> tuples if `to_tuples=True`.
		tuples of int or None -> TensorShapes if `to_tuples=False`.
		
		Valid objects to be converted are:
		- TensorShapes
		- tuples with elements of type int or None.
		- ints
		- None
		
		Args:
		  input_shape: A nested structure of objects to be converted to TensorShapes.
		  to_tuples: If `True`, converts all TensorShape to tuples. Otherwise converts
		    all tuples representing shapes to TensorShapes.
		
		Returns:
		  Nested structure of shapes in desired format.
		
		Raises:
		  ValueError: when the input tensor shape can't be converted to tuples, eg
		    unknown tensor shape.
	**/
	static public function convert_shapes(input_shape:Dynamic, ?to_tuples:Dynamic):Dynamic;
	/**
		True if the passed dataset is infinite.
	**/
	static public function dataset_is_infinite(dataset:Dynamic):Dynamic;
	/**
		Returns the set of tensors/ops reachable from `inputs`.
		
		Stops if all targets have been found (target is optional).
		
		Only valid in Symbolic mode, not Eager mode.
		
		Args:
		  inputs: List of tensors.
		  targets: List of tensors.
		
		Returns:
		  A set of tensors reachable from the inputs (includes the inputs themselves).
	**/
	static public function get_reachable_from_inputs(inputs:Dynamic, ?targets:Dynamic):Dynamic;
	/**
		Gets shapes from tensors.
	**/
	static public function get_shapes(tensors:Dynamic):Dynamic;
	/**
		Returns a `TensorSpec` given a single `Tensor` or `TensorSpec`.
	**/
	static public function get_tensor_spec(t:Dynamic, ?dynamic_batch:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns graph context manager if any of the inputs is a symbolic tensor.
	**/
	static public function graph_context_for_symbolic_tensors(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns whether a tensor is of an ExtensionType.
		
		github.com/tensorflow/community/pull/269
		Currently it works by checking if `tensor` is a `CompositeTensor` instance,
		but this will be changed to use an appropriate extensiontype protocol
		check once ExtensionType is made public.
		
		Args:
		  tensor: An object to test
		
		Returns:
		  True if the tensor is an extension type object, false if not.
	**/
	static public function is_extension_type(tensor:Dynamic):Dynamic;
	/**
		Returns true if `tensor` is a ragged tensor or ragged tensor value.
	**/
	static public function is_ragged(tensor:Dynamic):Dynamic;
	/**
		Returns true if `tensor` is a sparse tensor or sparse tensor value.
	**/
	static public function is_sparse(tensor:Dynamic):Dynamic;
	/**
		Returns whether a tensor is symbolic (from a TF graph) or an eager tensor.
		
		A Variable can be seen as either: it is considered symbolic
		when we are in a graph scope, and eager when we are in an eager scope.
		
		Args:
		  tensor: A tensor instance to test.
		
		Returns:
		  True for symbolic tensors, False for eager tensors.
	**/
	static public function is_symbolic_tensor(tensor:Dynamic):Dynamic;
	static public function is_tensor_or_tensor_list(v:Dynamic):Dynamic;
	static public function is_tensor_or_variable(x:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Maps the atomic elements of a nested structure.
		
		Args:
		  is_atomic_fn: A function that determines if an element of `nested` is
		    atomic.
		  map_fn: The function to apply to atomic elements of `nested`.
		  nested: A nested structure.
		
		Returns:
		  The nested structure, with atomic elements mapped according to `map_fn`.
		
		Raises:
		  ValueError: If an element that is neither atomic nor a sequence is
		    encountered.
	**/
	static public function map_structure_with_atomic(is_atomic_fn:Dynamic, map_fn:Dynamic, nested:Dynamic):Dynamic;
	/**
		Open an `init_scope` if in V2 mode and using the keras graph.
		
		Args:
		  layer: The Layer/Model that is currently active.
		
		Yields:
		  None
	**/
	static public function maybe_init_scope(layer:Dynamic):Dynamic;
	/**
		Allows users to specify types regarded as symbolic `Tensor`s.
		
		Used in conjunction with `tf.register_tensor_conversion_function`, calling
		`tf.keras.__internal__.utils.register_symbolic_tensor_type(cls)`
		allows non-`Tensor` objects to be plumbed through Keras layers.
		
		Example:
		
		```python
		# One-time setup.
		class Foo(object):
		  def __init__(self, input_):
		    self._input = input_
		  def value(self):
		    return tf.constant(42.)
		
		tf.register_tensor_conversion_function(
		    Foo, lambda x, *args, **kwargs: x.value())
		
		tf.keras.__internal__.utils.register_symbolic_tensor_type(Foo)
		
		# User-land.
		layer = tf.keras.layers.Lambda(lambda input_: Foo(input_))
		```
		
		Args:
		  cls: A `class` type which shall be regarded as a symbolic `Tensor`.
	**/
	static public function register_symbolic_tensor_type(cls:Dynamic):Dynamic;
	/**
		Decorator that handles tuple/TensorShape conversion.
		
		Used in `compute_output_shape` and `build`.
		
		Args:
		  fn: function to wrap.
		
		Returns:
		  Wrapped function.
	**/
	static public function shape_type_conversion(fn:Dynamic):Dynamic;
	/**
		Syncs and converts a structure of `Tensor`s to `NumPy` arrays or Python scalar types.
		
		For each tensor, it calls `tensor.numpy()`. If the result is a scalar value,
		it converts it to a Python type, such as a float or int, by calling
		`result.item()`.
		
		Numpy scalars are converted, as Python types are often more convenient to deal
		with. This is especially useful for bfloat16 Numpy scalars, which don't
		support as many operations as other Numpy values.
		
		Async strategies (such as `TPUStrategy` and `ParameterServerStrategy`) are
		forced to
		sync during this process.
		
		Args:
		  tensors: A structure of tensors.
		
		Returns:
		  `tensors`, but scalar tensors are converted to Python types and non-scalar
		  tensors are converted to Numpy arrays.
	**/
	static public function sync_to_numpy_or_python_type(tensors:Dynamic):Dynamic;
	/**
		Grab type_spec without converting array-likes to tensors.
	**/
	static public function type_spec_from_value(value:Dynamic):Dynamic;
}