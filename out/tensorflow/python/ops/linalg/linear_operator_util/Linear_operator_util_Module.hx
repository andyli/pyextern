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
	static public function _broadcast_to_shape(x:Dynamic, shape:Dynamic):Dynamic;
	/**
		Maybe reshape a, b, and return an inverse map.  For matmul/solve.
	**/
	static public function _reshape_for_efficiency(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
		x = tf.random_normal(shape=(2, 3, 1, 4, 4))
		y = tf.random_normal(shape=(1, 3, 2, 5, 5))
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
		  bcast_matrices: List of `Tensor`s, with `bcast_matricies[i]` containing
		    the values from `batch_matrices[i]`, with possibly broadcast batch dims.
		
		Raises:
		  ValueError:  If any input `Tensor` is statically determined to have less
		    than two dimensions.
	**/
	static public function broadcast_matrix_batch_dims(batch_matrices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solve systems of linear equations.
	**/
	static public function cholesky_solve_with_broadcast(chol:Dynamic, rhs:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Multiplies matrix `a` by matrix `b`, producing `a @ b`.
		
		Works identically to `tf.matmul`, but broadcasts batch dims
		of `a` and `b` if they are determined statically to be different, or if static
		shapes are not fully defined. Attempts are made to avoid unnecessary
		replication of data, but this is not always possible.
		
		The inputs must be matrices (or tensors of rank > 2, representing batches of
		matrices).
		
		Both matrices must be of the same type. The supported types are:
		`float16`, `float32`, `float64`, `int32`, `complex64`, `complex128`.
		
		Either matrix can be transposed or adjointed (conjugated and transposed) on
		the fly by setting one of the corresponding flag to `True`. These are `False`
		by default.
		
		If one or both of the matrices contain a lot of zeros, a more efficient
		multiplication algorithm can be used by setting the corresponding
		`a_is_sparse` or `b_is_sparse` flag to `True`. These are `False` by default.
		This optimization is only available for plain matrices (rank-2 tensors) with
		datatypes `bfloat16` or `float32`.
		
		For example:
		
		```python
		# A 2-batch of 3x4 matrices
		a = tf.random_normal(shape=(2, 3, 4))
		
		# A single 4x5 matrix
		b = tf.random_normal(shape=(4, 5))
		
		result = matmul_with_broadcast(a, b)
		
		result.shape
		==> (2, 3, 5)
		
		result[0,...]
		==> tf.matmul(a[0,...], b)
		
		result[1,...]
		==> tf.matmul(a[1,...], b)
		```
		
		Args:
		  a: `Tensor` of type `float16`, `float32`, `float64`, `int32`, `complex64`,
		    `complex128` and `rank > 1`.
		  b: `Tensor` with same type as `a` having compatible matrix dimensions and
		    broadcastable batch dimensions.
		  transpose_a: If `True`, `a` is transposed before multiplication.
		  transpose_b: If `True`, `b` is transposed before multiplication.
		  adjoint_a: If `True`, `a` is conjugated and transposed before
		    multiplication.
		  adjoint_b: If `True`, `b` is conjugated and transposed before
		    multiplication.
		  a_is_sparse: If `True`, `a` is treated as a sparse matrix.
		  b_is_sparse: If `True`, `b` is treated as a sparse matrix.
		  name: Name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same type as `a` and `b` where each inner-most matrix is
		  the product of the corresponding matrices in `a` and `b`, e.g. if all
		  transpose or adjoint attributes are `False`:
		
		  The leading shape of `output` is the result of broadcasting the leading
		  dimensions of `a` and `b`.
		
		  `output`[..., i, j] = sum_k (`a`[..., i, k] * `b`[..., k, j]),
		  for all indices i, j.
		
		  Note: This is matrix product, not element-wise product.
		
		
		Raises:
		  ValueError: If transpose_a and adjoint_a, or transpose_b and adjoint_b
		    are both set to True.
	**/
	static public function matmul_with_broadcast(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solve systems of linear equations.
	**/
	static public function matrix_solve_with_broadcast(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves triangular systems of linear equations with by backsubstitution.
		
		Works identically to `tf.matrix_triangular_solve`, but broadcasts batch dims
		of `matrix` and `rhs` (by replicating) if they are determined statically to be
		different, or if static shapes are not fully defined.  Thus, this may result
		in an inefficient replication of data.
		
		Args:
		  matrix: A Tensor. Must be one of the following types:
		    `float64`, `float32`, `complex64`, `complex128`. Shape is `[..., M, M]`.
		  rhs: A `Tensor`. Must have the same `dtype` as `matrix`.
		    Shape is `[..., M, K]`.
		  lower: An optional `bool`. Defaults to `True`. Indicates whether the
		    innermost matrices in `matrix` are lower or upper triangular.
		  adjoint: An optional `bool`. Defaults to `False`. Indicates whether to solve
		    with matrix or its (block-wise) adjoint.
		  name: A name for the operation (optional).
		
		Returns:
		  `Tensor` with same `dtype` as `matrix` and shape `[..., M, K]`.
	**/
	static public function matrix_triangular_solve_with_broadcast(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Convert Tensor using default type, unless empty list or tuple.
	**/
	static public function shape_tensor(shape:Dynamic, ?name:Dynamic):Dynamic;
}