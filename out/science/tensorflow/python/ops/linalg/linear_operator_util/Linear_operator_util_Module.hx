/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg.linear_operator_util;
@:pythonImport("tensorflow.python.ops.linalg.linear_operator_util") extern class Linear_operator_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Maybe reshape a, b, and return an inverse map.  For matmul/solve.
	**/
	static public function _reshape_for_efficiency(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Detect if input should be interpreted as a list of blocks.
	**/
	static public function arg_is_blockwise(block_dimensions:Dynamic, arg:Dynamic, arg_split_dim:Dynamic):Dynamic;
	/**
		Assert that an argument to solve/matmul has proper domain dimension.
		
		If `operator.shape[-2:] = [M, N]`, and `x.shape[-2:] = [Q, R]`, then
		`operator.matmul(x)` is defined only if `N = Q`.  This `Op` returns an
		`Assert` that "fires" if this is not the case.  Static checks are already
		done by the base class `LinearOperator`.
		
		Args:
		  operator:  `LinearOperator`.
		  x:  `Tensor`.
		
		Returns:
		  `Assert` `Op`.
	**/
	static public function assert_compatible_matrix_dimensions(_operator:Dynamic, x:Dynamic):Dynamic;
	/**
		Static assert that `tensor` has rank `2` or higher.
	**/
	static public function assert_is_batch_matrix(tensor:Dynamic):Dynamic;
	/**
		Returns `Op` that asserts Tensor `x` has no entries with modulus zero.
		
		Args:
		  x:  Numeric `Tensor`, real, integer, or complex.
		  message:  A string message to prepend to failure message.
		  name:  A name to give this `Op`.
		
		Returns:
		  An `Op` that asserts `x` has no entries with modulus zero.
	**/
	static public function assert_no_entries_with_modulus_zero(x:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	static public function assert_not_ref_type(x:Dynamic, arg_name:Dynamic):Dynamic;
	/**
		Returns `Op` that asserts Tensor `x` has no non-zero imaginary parts.
		
		Args:
		  x:  Numeric `Tensor`, real, integer, or complex.
		  message:  A string message to prepend to failure message.
		  name:  A name to give this `Op`.
		
		Returns:
		  An `Op` that asserts `x` has no entries with modulus zero.
	**/
	static public function assert_zero_imag_part(x:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a non-reference `dtype` based on this `dtype`.
	**/
	static public function base_dtype(dtype:Dynamic):Dynamic;
	/**
		Broadcast leading dimensions of zero or more [batch] matrices.
		
		Example broadcasting one batch dim of two simple matrices.
		
		```python
		x = [[1, 2],
		     [3, 4]]  # Shape [2, 2], no batch dims
		
		y = [[[1]]]   # Shape [1, 1, 1], 1 batch dim of shape [1]
		
		x_bc, y_bc = broadcast_matrix_batch_dims([x, y])
		
		x_bc
		==> [[[1, 2],
		      [3, 4]]]  # Shape [1, 2, 2], 1 batch dim of shape [1].
		
		y_bc
		==> same as y
		```
		
		Example broadcasting many batch dims
		
		```python
		x = tf.random.normal(shape=(2, 3, 1, 4, 4))
		y = tf.random.normal(shape=(1, 3, 2, 5, 5))
		x_bc, y_bc = broadcast_matrix_batch_dims([x, y])
		
		x_bc.shape
		==> (2, 3, 2, 4, 4)
		
		y_bc.shape
		==> (2, 3, 2, 5, 5)
		```
		
		Args:
		  batch_matrices:  Iterable of `Tensor`s, each having two or more dimensions.
		  name:  A string name to prepend to created ops.
		
		Returns:
		  bcast_matrices: List of `Tensor`s, with `bcast_matrices[i]` containing
		    the values from `batch_matrices[i]`, with possibly broadcast batch dims.
		
		Raises:
		  ValueError:  If any input `Tensor` is statically determined to have less
		    than two dimensions.
	**/
	static public function broadcast_matrix_batch_dims(batch_matrices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Check that arg.dtype == self.dtype.
	**/
	static public function check_dtype(arg:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Converts the given `value` to a `Tensor` if input is nonreference type.
		
		This function converts Python objects of various types to `Tensor` objects
		except if the input has nonreference semantics. Reference semantics are
		characterized by `is_ref` and is any object which is a
		`tf.Variable` or instance of `tf.Module`. This function accepts any input
		which `tf.convert_to_tensor` would also.
		
		Note: This function diverges from default Numpy behavior for `float` and
		  `string` types when `None` is present in a Python list or scalar. Rather
		  than silently converting `None` values, an error will be thrown.
		
		Args:
		  value: An object whose type has a registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor. If missing, the
		    type is inferred from the type of `value`.
		  dtype_hint: Optional element type for the returned tensor,
		    used when dtype is None. In some cases, a caller may not have a
		    dtype in mind when converting to a tensor, so dtype_hint
		    can be used as a soft preference.  If the conversion to
		    `dtype_hint` is not possible, this argument has no effect.
		  name: Optional name to use if a new `Tensor` is created.
		
		Returns:
		  tensor: A `Tensor` based on `value`.
		
		Raises:
		  TypeError: If no conversion function is registered for `value` to `dtype`.
		  RuntimeError: If a registered conversion function returns an invalid value.
		  ValueError: If the `value` is a tensor not of given `dtype` in graph mode.
		
		
		#### Examples:
		
		```python
		
		x = tf.Variable(0.)
		y = convert_nonref_to_tensor(x)
		x is y
		# ==> True
		
		x = tf.constant(0.)
		y = convert_nonref_to_tensor(x)
		x is y
		# ==> True
		
		x = np.array(0.)
		y = convert_nonref_to_tensor(x)
		x is y
		# ==> False
		tf.is_tensor(y)
		# ==> True
		
		x = tfp.util.DeferredTensor(13.37, lambda x: x)
		y = convert_nonref_to_tensor(x)
		x is y
		# ==> True
		tf.is_tensor(y)
		# ==> False
		tf.equal(y, 13.37)
		# ==> True
		```
	**/
	static public function convert_nonref_to_tensor(value:Dynamic, ?dtype:Dynamic, ?dtype_hint:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns the string name for this `dtype`.
	**/
	static public function dtype_name(dtype:Dynamic):Dynamic;
	/**
		Evaluates if the object has reference semantics.
		
		An object is deemed "reference" if it is a `tf.Variable` instance or is
		derived from a `tf.Module` with `dtype` and `shape` properties.
		
		Args:
		  x: Any object.
		
		Returns:
		  is_ref: Python `bool` indicating input is has nonreference semantics, i.e.,
		    is a `tf.Variable` or a `tf.Module` with `dtype` and `shape` properties.
	**/
	static public function is_ref(x:Dynamic):Dynamic;
	/**
		Solve systems of linear equations.
	**/
	static public function matrix_solve_with_broadcast(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Convert Tensor using default type, unless empty list or tuple.
	**/
	static public function shape_tensor(shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Split `x` into blocks matching `operators`'s `domain_dimension`.
		
		Specifically, if we have a blockwise lower-triangular matrix, with block
		sizes along the diagonal `[M_j, M_j] j = 0,1,2..J`,  this method splits `arg`
		on `axis` into `J` tensors, whose shape at `axis` is `M_j`.
		
		Args:
		  block_dims: Iterable of `TensorShapes`.
		  block_dims_fn: Callable returning an iterable of `Tensor`s.
		  arg: `Tensor`. `arg` is split into `J` tensors.
		  axis: Python `Integer` representing the axis to split `arg` on.
		
		Returns:
		  A list of `Tensor`s.
	**/
	static public function split_arg_into_blocks(block_dims:Dynamic, block_dims_fn:Dynamic, arg:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Get combined hint in the case where operator.hint should equal hint.
		
		Args:
		  operator:  LinearOperator that a meta-operator was initialized with.
		  hint_attr_name:  String name for the attribute.
		  provided_hint_value:  Bool or None. Value passed by user in initialization.
		  message:  Error message to print if hints contradict.
		
		Returns:
		  True, False, or None.
		
		Raises:
		  ValueError: If hints contradict.
	**/
	static public function use_operator_or_provided_hint_unless_contradicting(_operator:Dynamic, hint_attr_name:Dynamic, provided_hint_value:Dynamic, message:Dynamic):Dynamic;
}