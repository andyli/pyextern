/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg_ops;
@:pythonImport("tensorflow.python.ops.linalg_ops") extern class Linalg_ops_Module {
	/**
		Computes Cholesky factorization of regularized gramian matrix.
		
		Below we will use the following notation for each pair of matrix and
		right-hand sides in the batch:
		
		`matrix`=\\(A \in \Re^{m \times n}\\),
		`output`=\\(C  \in \Re^{\min(m, n) \times \min(m,n)}\\),
		`l2_regularizer`=\\(\lambda\\).
		
		If `first_kind` is True, returns the Cholesky factorization \\(L\\) such that
		\\(L L^H =  A^H A + \lambda I\\).
		If `first_kind` is False, returns the Cholesky factorization \\(L\\) such that
		\\(L L^H =  A A^H + \lambda I\\).
		
		Args:
		  matrix: `Tensor` of shape `[..., M, N]`.
		  l2_regularizer: 0-D `double` `Tensor`. Ignored if `fast=False`.
		  first_kind: bool. Controls what gramian matrix to factor.
		Returns:
		  output: `Tensor` of shape `[..., min(M,N), min(M,N)]` whose inner-most 2
		    dimensions contain the Cholesky factors \\(L\\) described above.
	**/
	static public function _RegularizedGramianCholesky(matrix:Dynamic, l2_regularizer:Dynamic, first_kind:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_cholesky(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_cholesky
	**/
	static public function batch_cholesky_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  l: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  grad: A `Tensor`. Must have the same type as `l`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `l`.
	**/
	static public function batch_cholesky_grad(l:Dynamic, grad:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_cholesky_grad
	**/
	static public function batch_cholesky_grad_eager_fallback(l:Dynamic, grad:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_matrix_determinant(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_determinant
	**/
	static public function batch_matrix_determinant_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_matrix_inverse(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_inverse
	**/
	static public function batch_matrix_inverse_eager_fallback(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`.
	**/
	static public function batch_matrix_solve(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_solve
	**/
	static public function batch_matrix_solve_eager_fallback(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		  l2_regularizer: A `Tensor` of type `float64`.
		  fast: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`.
	**/
	static public function batch_matrix_solve_ls(matrix:Dynamic, rhs:Dynamic, l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_solve_ls
	**/
	static public function batch_matrix_solve_ls_eager_fallback(matrix:Dynamic, rhs:Dynamic, l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		  lower: An optional `bool`. Defaults to `True`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`.
	**/
	static public function batch_matrix_triangular_solve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_triangular_solve
	**/
	static public function batch_matrix_triangular_solve_eager_fallback(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_self_adjoint_eig(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_self_adjoint_eig
	**/
	static public function batch_self_adjoint_eig_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  compute_v: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (e, v).
		
		  e: A `Tensor`. Has the same type as `input`.
		  v: A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_self_adjoint_eig_v2(input:Dynamic, ?compute_v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_self_adjoint_eig_v2
	**/
	static public function batch_self_adjoint_eig_v2_eager_fallback(input:Dynamic, ?compute_v:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		  compute_uv: An optional `bool`. Defaults to `True`.
		  full_matrices: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (s, u, v).
		
		  s: A `Tensor`. Has the same type as `input`.
		  u: A `Tensor`. Has the same type as `input`.
		  v: A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_svd(input:Dynamic, ?compute_uv:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_svd
	**/
	static public function batch_svd_eager_fallback(input:Dynamic, ?compute_uv:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the Cholesky decomposition of one or more square matrices.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices.
		
		The input has to be symmetric and positive definite. Only the lower-triangular
		part of the input will be used for this operation. The upper-triangular part
		will not be read.
		
		The output is a tensor of the same shape as the input
		containing the Cholesky decompositions for all input submatrices `[..., :, :]`.
		
		**Note**: The gradient computation on GPU is faster for large matrices but
		not for large batch dimensions when the submatrices are small. In this
		case it might be faster to use the CPU.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function cholesky(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cholesky
	**/
	static public function cholesky_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the reverse mode backpropagated gradient of the Cholesky algorithm.
		
		For an explanation see "Differentiation of the Cholesky algorithm" by
		Iain Murray http://arxiv.org/abs/1602.07527.
		
		Args:
		  l: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Output of batch Cholesky algorithm l = cholesky(A). Shape is `[..., M, M]`.
		    Algorithm depends only on lower triangular part of the innermost matrices of
		    this tensor.
		  grad: A `Tensor`. Must have the same type as `l`.
		    df/dl where f is some scalar function. Shape is `[..., M, M]`.
		    Algorithm depends only on lower triangular part of the innermost matrices of
		    this tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `l`.
	**/
	static public function cholesky_grad(l:Dynamic, grad:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cholesky_grad
	**/
	static public function cholesky_grad_eager_fallback(l:Dynamic, grad:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Solves systems of linear eqns `A X = RHS`, given Cholesky factorizations.
		
		```python
		# Solve 10 separate 2x2 linear systems:
		A = ... # shape 10 x 2 x 2
		RHS = ... # shape 10 x 2 x 1
		chol = tf.cholesky(A)  # shape 10 x 2 x 2
		X = tf.cholesky_solve(chol, RHS)  # shape 10 x 2 x 1
		# tf.matmul(A, X) ~ RHS
		X[3, :, 0]  # Solution to the linear system A[3, :, :] x = RHS[3, :, 0]
		
		# Solve five linear systems (K = 5) for every member of the length 10 batch.
		A = ... # shape 10 x 2 x 2
		RHS = ... # shape 10 x 2 x 5
		...
		X[3, :, 2]  # Solution to the linear system A[3, :, :] x = RHS[3, :, 2]
		```
		
		Args:
		  chol:  A `Tensor`.  Must be `float32` or `float64`, shape is `[..., M, M]`.
		    Cholesky factorization of `A`, e.g. `chol = tf.cholesky(A)`.
		    For that reason, only the lower triangular parts (including the diagonal)
		    of the last two dimensions of `chol` are used.  The strictly upper part is
		    assumed to be zero and not accessed.
		  rhs:  A `Tensor`, same type as `chol`, shape is `[..., M, K]`.
		  name:  A name to give this `Op`.  Defaults to `cholesky_solve`.
		
		Returns:
		  Solution to `A x = rhs`, shape `[..., M, K]`.
	**/
	static public function cholesky_solve(chol:Dynamic, rhs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Construct an identity matrix, or a batch of matrices.
		
		```python
		# Construct one identity matrix.
		tf.eye(2)
		==> [[1., 0.],
		     [0., 1.]]
		
		# Construct a batch of 3 identity matricies, each 2 x 2.
		# batch_identity[i, :, :] is a 2 x 2 identity matrix, i = 0, 1, 2.
		batch_identity = tf.eye(2, batch_shape=[3])
		
		# Construct one 2 x 3 "identity" matrix
		tf.eye(2, num_columns=3)
		==> [[ 1.,  0.,  0.],
		     [ 0.,  1.,  0.]]
		```
		
		Args:
		  num_rows: Non-negative `int32` scalar `Tensor` giving the number of rows
		    in each batch matrix.
		  num_columns: Optional non-negative `int32` scalar `Tensor` giving the number
		    of columns in each batch matrix.  Defaults to `num_rows`.
		  batch_shape:  A list or tuple of Python integers or a 1-D `int32` `Tensor`.
		    If provided, the returned `Tensor` will have leading batch dimensions of
		    this shape.
		  dtype:  The type of an element in the resulting `Tensor`
		  name:  A name for this `Op`.  Defaults to "eye".
		
		Returns:
		  A `Tensor` of shape `batch_shape + [num_rows, num_columns]`
	**/
	static public function eye(num_rows:Dynamic, ?num_columns:Dynamic, ?batch_shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sign and the log of the absolute value of the determinant of
		
		one or more square matrices.
		
		The input is a tensor of shape `[N, M, M]` whose inner-most 2 dimensions
		form square matrices. The outputs are two tensors containing the signs and
		absolute values of the log determinants for all N input submatrices
		`[..., :, :]` such that the determinant = sign*exp(log_abs_determinant).
		The log_abs_determinant is computed as det(P)*sum(log(diag(LU))) where LU
		is the LU decomposition of the input and P is the corresponding
		permutation matrix.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `complex64`, `complex128`.
		    Shape is `[N, M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sign, log_abs_determinant).
		
		  sign: A `Tensor`. Has the same type as `input`.
		  log_abs_determinant: A `Tensor`. Has the same type as `input`.
	**/
	static public function log_matrix_determinant(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function log_matrix_determinant
	**/
	static public function log_matrix_determinant_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the LU decomposition of one or more square matrices.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices.
		
		The input has to be invertible.
		
		The output consists of two tensors LU and P containing the LU decomposition
		of all input submatrices `[..., :, :]`. LU encodes the lower triangular and
		upper triangular factors.
		
		For each input submatrix of shape `[M, M]`, L is a lower triangular matrix of
		shape `[M, M]` with unit diagonal whose entries correspond to the strictly lower
		triangular part of LU. U is a upper triangular matrix of shape `[M, M]` whose
		entries correspond to the upper triangular part, including the diagonal, of LU.
		
		P represents a permutation matrix encoded as a list of indices each between `0`
		and `M-1`, inclusive. If P_mat denotes the permutation matrix corresponding to
		P, then the L, U and P satisfies P_mat * input = L * U.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    A tensor of shape `[..., M, M]` whose inner-most 2 dimensions form matrices of
		    size `[M, M]`.
		  output_idx_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (lu, p).
		
		  lu: A `Tensor`. Has the same type as `input`.
		  p: A `Tensor` of type `output_idx_type`.
	**/
	static public function lu(input:Dynamic, ?output_idx_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function lu
	**/
	static public function lu_eager_fallback(input:Dynamic, ?output_idx_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the determinant of one or more square matrices.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor containing the determinants
		for all input submatrices `[..., :, :]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_determinant(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_determinant
	**/
	static public function matrix_determinant_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Deprecated, use python implementation tf.linalg.matrix_exponential.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_exponential(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_exponential
	**/
	static public function matrix_exponential_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the inverse of one or more square invertible matrices or their
		
		adjoints (conjugate transposes).
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor of the same shape as the input
		containing the inverse for all input submatrices `[..., :, :]`.
		
		The op uses LU decomposition with partial pivoting to compute the inverses.
		
		If a matrix is not invertible there is no guarantee what the op does. It
		may detect the condition and raise an exception or it may simply return a
		garbage result.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_inverse(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_inverse
	**/
	static public function matrix_inverse_eager_fallback(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the matrix logarithm of one or more square matrices:
		
		
		\\(log(exp(A)) = A\\)
		
		This op is only defined for complex matrices. If A is positive-definite and
		real, then casting to a complex matrix, taking the logarithm and casting back
		to a real matrix will give the correct result.
		
		This function computes the matrix logarithm using the Schur-Parlett algorithm.
		Details of the algorithm can be found in Section 11.6.2 of:
		Nicholas J. Higham, Functions of Matrices: Theory and Computation, SIAM 2008.
		ISBN 978-0-898716-46-7.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor of the same shape as the input
		containing the exponential for all input submatrices `[..., :, :]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_logarithm(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_logarithm
	**/
	static public function matrix_logarithm_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Solves systems of linear equations.
		
		`Matrix` is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. `Rhs` is a tensor of shape `[..., M, K]`. The `output` is
		a tensor shape `[..., M, K]`.  If `adjoint` is `False` then each output matrix
		satisfies `matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]`.
		If `adjoint` is `True` then each output matrix satisfies
		`adjoint(matrix[..., :, :]) * output[..., :, :] = rhs[..., :, :]`.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		    Shape is `[..., M, K]`.
		  adjoint: An optional `bool`. Defaults to `False`.
		    Boolean indicating whether to solve with `matrix` or its (block-wise)
		    adjoint.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`.
	**/
	static public function matrix_solve(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_solve
	**/
	static public function matrix_solve_eager_fallback(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Solves one or more linear least-squares problems.
		
		`matrix` is a tensor of shape `[..., M, N]` whose inner-most 2 dimensions
		form `M`-by-`N` matrices. Rhs is a tensor of shape `[..., M, K]` whose
		inner-most 2 dimensions form `M`-by-`K` matrices.  The computed output is a
		`Tensor` of shape `[..., N, K]` whose inner-most 2 dimensions form `M`-by-`K`
		matrices that solve the equations
		`matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]` in the least squares
		sense.
		
		Below we will use the following notation for each pair of matrix and
		right-hand sides in the batch:
		
		`matrix`=\\(A \in \Re^{m \times n}\\),
		`rhs`=\\(B  \in \Re^{m \times k}\\),
		`output`=\\(X  \in \Re^{n \times k}\\),
		`l2_regularizer`=\\(\lambda\\).
		
		If `fast` is `True`, then the solution is computed by solving the normal
		equations using Cholesky decomposition. Specifically, if \\(m \ge n\\) then
		\\(X = (A^T A + \lambda I)^{-1} A^T B\\), which solves the least-squares
		problem \\(X = \mathrm{argmin}_{Z \in \Re^{n \times k}} ||A Z - B||_F^2 +
		\lambda ||Z||_F^2\\). If \\(m \lt n\\) then `output` is computed as
		\\(X = A^T (A A^T + \lambda I)^{-1} B\\), which (for \\(\lambda = 0\\)) is
		the minimum-norm solution to the under-determined linear system, i.e.
		\\(X = \mathrm{argmin}_{Z \in \Re^{n \times k}} ||Z||_F^2 \\), subject to
		\\(A Z = B\\). Notice that the fast path is only numerically stable when
		\\(A\\) is numerically full rank and has a condition number
		\\(\mathrm{cond}(A) \lt \frac{1}{\sqrt{\epsilon_{mach}}}\\) or\\(\lambda\\)
		is sufficiently large.
		
		If `fast` is `False` an algorithm based on the numerically robust complete
		orthogonal decomposition is used. This computes the minimum-norm
		least-squares solution, even when \\(A\\) is rank deficient. This path is
		typically 6-7 times slower than the fast path. If `fast` is `False` then
		`l2_regularizer` is ignored.
		
		Args:
		  matrix: `Tensor` of shape `[..., M, N]`.
		  rhs: `Tensor` of shape `[..., M, K]`.
		  l2_regularizer: 0-D `double` `Tensor`. Ignored if `fast=False`.
		  fast: bool. Defaults to `True`.
		  name: string, optional name of the operation.
		
		Returns:
		  output: `Tensor` of shape `[..., N, K]` whose inner-most 2 dimensions form
		    `M`-by-`K` matrices that solve the equations
		    `matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]` in the least
		    squares sense.
		
		Raises:
		  NotImplementedError: linalg.lstsq is currently disabled for complex128
		  and l2_regularizer != 0 due to poor accuracy.
	**/
	static public function matrix_solve_ls(matrix:Dynamic, rhs:Dynamic, ?l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_solve_ls
	**/
	static public function matrix_solve_ls_eager_fallback(matrix:Dynamic, rhs:Dynamic, l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the matrix square root of one or more square matrices:
		
		matmul(sqrtm(A), sqrtm(A)) = A
		
		The input matrix should be invertible. If the input matrix is real, it should
		have no eigenvalues which are real and negative (pairs of complex conjugate
		eigenvalues are allowed).
		
		The matrix square root is computed by first reducing the matrix to 
		quasi-triangular form with the real Schur decomposition. The square root 
		of the quasi-triangular matrix is then computed directly. Details of 
		the algorithm can be found in: Nicholas J. Higham, "Computing real 
		square roots of a real matrix", Linear Algebra Appl., 1987.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor of the same shape as the input
		containing the matrix square root for all input submatrices `[..., :, :]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_square_root(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_square_root
	**/
	static public function matrix_square_root_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Solves systems of linear equations with upper or lower triangular matrices by
		
		backsubstitution.
		
		`matrix` is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions form
		square matrices. If `lower` is `True` then the strictly upper triangular part
		of each inner-most matrix is assumed to be zero and not accessed.
		If `lower` is False then the strictly lower triangular part of each inner-most
		matrix is assumed to be zero and not accessed.
		`rhs` is a tensor of shape `[..., M, K]`.
		
		The output is a tensor of shape `[..., M, K]`. If `adjoint` is
		`True` then the innermost matrices in `output` satisfy matrix equations
		`matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]`.
		If `adjoint` is `False` then the strictly then the  innermost matrices in
		`output` satisfy matrix equations
		`adjoint(matrix[..., i, k]) * output[..., k, j] = rhs[..., i, j]`.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		    Shape is `[..., M, K]`.
		  lower: An optional `bool`. Defaults to `True`.
		    Boolean indicating whether the innermost matrices in `matrix` are
		    lower or upper triangular.
		  adjoint: An optional `bool`. Defaults to `False`.
		    Boolean indicating whether to solve with `matrix` or its (block-wise)
		             adjoint.
		
		    @compatibility(numpy)
		    Equivalent to scipy.linalg.solve_triangular
		    @end_compatibility
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`.
	**/
	static public function matrix_triangular_solve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_triangular_solve
	**/
	static public function matrix_triangular_solve_eager_fallback(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the norm of vectors, matrices, and tensors. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		This function can compute several different vector norms (the 1-norm, the
		Euclidean or 2-norm, the inf-norm, and in general the p-norm for p > 0) and
		matrix norms (Frobenius, 1-norm, 2-norm and inf-norm).
		
		Args:
		  tensor: `Tensor` of types `float32`, `float64`, `complex64`, `complex128`
		  ord: Order of the norm. Supported values are 'fro', 'euclidean',
		    `1`, `2`, `np.inf` and any positive real number yielding the corresponding
		    p-norm. Default is 'euclidean' which is equivalent to Frobenius norm if
		    `tensor` is a matrix and equivalent to 2-norm for vectors.
		    Some restrictions apply:
		      a) The Frobenius norm `fro` is not defined for vectors,
		      b) If axis is a 2-tuple (matrix norm), only 'euclidean', 'fro', `1`,
		         `2`, `np.inf` are supported.
		    See the description of `axis` on how to compute norms for a batch of
		    vectors or matrices stored in a tensor.
		  axis: If `axis` is `None` (the default), the input is considered a vector
		    and a single vector norm is computed over the entire set of values in the
		    tensor, i.e. `norm(tensor, ord=ord)` is equivalent to
		    `norm(reshape(tensor, [-1]), ord=ord)`.
		    If `axis` is a Python integer, the input is considered a batch of vectors,
		    and `axis` determines the axis in `tensor` over which to compute vector
		    norms.
		    If `axis` is a 2-tuple of Python integers it is considered a batch of
		    matrices and `axis` determines the axes in `tensor` over which to compute
		    a matrix norm.
		    Negative indices are supported. Example: If you are passing a tensor that
		    can be either a matrix or a batch of matrices at runtime, pass
		    `axis=[-2,-1]` instead of `axis=None` to make sure that matrix norms are
		    computed.
		  keepdims: If True, the axis indicated in `axis` are kept with size 1.
		    Otherwise, the dimensions in `axis` are removed from the output shape.
		  name: The name of the op.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  output: A `Tensor` of the same type as tensor, containing the vector or
		    matrix norms. If `keepdims` is True then the rank of output is equal to
		    the rank of `tensor`. Otherwise, if `axis` is none the output is a scalar,
		    if `axis` is an integer, the rank of `output` is one less than the rank
		    of `tensor`, if `axis` is a 2-tuple the rank of `output` is two less
		    than the rank of `tensor`.
		
		Raises:
		  ValueError: If `ord` or `axis` is invalid.
		
		@compatibility(numpy)
		Mostly equivalent to numpy.linalg.norm.
		Not supported: ord <= 0, 2-norm for matrices, nuclear norm.
		Other differences:
		  a) If axis is `None`, treats the flattened `tensor` as a vector
		   regardless of rank.
		  b) Explicitly supports 'euclidean' norm as the default, including for
		   higher order tensors.
		@end_compatibility
	**/
	static public function norm(tensor:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the norm of vectors, matrices, and tensors.
		
		This function can compute several different vector norms (the 1-norm, the
		Euclidean or 2-norm, the inf-norm, and in general the p-norm for p > 0) and
		matrix norms (Frobenius, 1-norm, 2-norm and inf-norm).
		
		Args:
		  tensor: `Tensor` of types `float32`, `float64`, `complex64`, `complex128`
		  ord: Order of the norm. Supported values are 'fro', 'euclidean',
		    `1`, `2`, `np.inf` and any positive real number yielding the corresponding
		    p-norm. Default is 'euclidean' which is equivalent to Frobenius norm if
		    `tensor` is a matrix and equivalent to 2-norm for vectors.
		    Some restrictions apply:
		      a) The Frobenius norm `fro` is not defined for vectors,
		      b) If axis is a 2-tuple (matrix norm), only 'euclidean', 'fro', `1`,
		         `2`, `np.inf` are supported.
		    See the description of `axis` on how to compute norms for a batch of
		    vectors or matrices stored in a tensor.
		  axis: If `axis` is `None` (the default), the input is considered a vector
		    and a single vector norm is computed over the entire set of values in the
		    tensor, i.e. `norm(tensor, ord=ord)` is equivalent to
		    `norm(reshape(tensor, [-1]), ord=ord)`.
		    If `axis` is a Python integer, the input is considered a batch of vectors,
		    and `axis` determines the axis in `tensor` over which to compute vector
		    norms.
		    If `axis` is a 2-tuple of Python integers it is considered a batch of
		    matrices and `axis` determines the axes in `tensor` over which to compute
		    a matrix norm.
		    Negative indices are supported. Example: If you are passing a tensor that
		    can be either a matrix or a batch of matrices at runtime, pass
		    `axis=[-2,-1]` instead of `axis=None` to make sure that matrix norms are
		    computed.
		  keepdims: If True, the axis indicated in `axis` are kept with size 1.
		    Otherwise, the dimensions in `axis` are removed from the output shape.
		  name: The name of the op.
		
		Returns:
		  output: A `Tensor` of the same type as tensor, containing the vector or
		    matrix norms. If `keepdims` is True then the rank of output is equal to
		    the rank of `tensor`. Otherwise, if `axis` is none the output is a scalar,
		    if `axis` is an integer, the rank of `output` is one less than the rank
		    of `tensor`, if `axis` is a 2-tuple the rank of `output` is two less
		    than the rank of `tensor`.
		
		Raises:
		  ValueError: If `ord` or `axis` is invalid.
		
		@compatibility(numpy)
		Mostly equivalent to numpy.linalg.norm.
		Not supported: ord <= 0, 2-norm for matrices, nuclear norm.
		Other differences:
		  a) If axis is `None`, treats the flattened `tensor` as a vector
		   regardless of rank.
		  b) Explicitly supports 'euclidean' norm as the default, including for
		   higher order tensors.
		@end_compatibility
	**/
	static public function norm_v2(tensor:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Computes the QR decompositions of one or more matrices.
		
		Computes the QR decomposition of each inner matrix in `tensor` such that
		`tensor[..., :, :] = q[..., :, :] * r[..., :,:])`
		
		```python
		# a is a tensor.
		# q is a tensor of orthonormal matrices.
		# r is a tensor of upper triangular matrices.
		q, r = qr(a)
		q_full, r_full = qr(a, full_matrices=True)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    A tensor of shape `[..., M, N]` whose inner-most 2 dimensions
		    form matrices of size `[M, N]`. Let `P` be the minimum of `M` and `N`.
		  full_matrices: An optional `bool`. Defaults to `False`.
		    If true, compute full-sized `q` and `r`. If false
		    (the default), compute only the leading `P` columns of `q`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (q, r).
		
		  q: A `Tensor`. Has the same type as `input`.
		  r: A `Tensor`. Has the same type as `input`.
	**/
	static public function qr(input:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function qr
	**/
	static public function qr_eager_fallback(input:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of a batch of self-adjoint matrices.
		
		Computes the eigenvalues and eigenvectors of the innermost N-by-N matrices
		in `tensor` such that
		`tensor[...,:,:] * v[..., :,i] = e[..., i] * v[...,:,i]`, for i=0...N-1.
		
		Args:
		  tensor: `Tensor` of shape `[..., N, N]`. Only the lower triangular part of
		    each inner inner matrix is referenced.
		  name: string, optional name of the operation.
		
		Returns:
		  e: Eigenvalues. Shape is `[..., N]`. Sorted in non-decreasing order.
		  v: Eigenvectors. Shape is `[..., N, N]`. The columns of the inner most
		    matrices contain eigenvectors of the corresponding matrices in `tensor`
	**/
	static public function self_adjoint_eig(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function self_adjoint_eig
	**/
	static public function self_adjoint_eig_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of one or more square self-adjoint matrices.
		
		Computes the eigenvalues and (optionally) eigenvectors of each inner matrix in
		`input` such that `input[..., :, :] = v[..., :, :] * diag(e[..., :])`. The eigenvalues
		are sorted in non-decreasing order.
		
		```python
		# a is a tensor.
		# e is a tensor of eigenvalues.
		# v is a tensor of eigenvectors.
		e, v = self_adjoint_eig(a)
		e = self_adjoint_eig(a, compute_v=False)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    `Tensor` input of shape `[N, N]`.
		  compute_v: An optional `bool`. Defaults to `True`.
		    If `True` then eigenvectors will be computed and returned in `v`.
		    Otherwise, only the eigenvalues will be computed.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (e, v).
		
		  e: A `Tensor`. Has the same type as `input`.
		  v: A `Tensor`. Has the same type as `input`.
	**/
	static public function self_adjoint_eig_v2(input:Dynamic, ?compute_v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function self_adjoint_eig_v2
	**/
	static public function self_adjoint_eig_v2_eager_fallback(input:Dynamic, ?compute_v:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the eigenvalues of one or more self-adjoint matrices.
		
		Note: If your program backpropagates through this function, you should replace
		it with a call to tf.linalg.eigvalsh (possibly ignoring the second output) to
		avoid computing the eigen decomposition twice. This is because the
		eigenvectors are used to compute the gradient w.r.t. the eigenvalues. See
		_SelfAdjointEigV2Grad in linalg_grad.py.
		
		Args:
		  tensor: `Tensor` of shape `[..., N, N]`.
		  name: string, optional name of the operation.
		
		Returns:
		  e: Eigenvalues. Shape is `[..., N]`. The vector `e[..., :]` contains the `N`
		    eigenvalues of `tensor[..., :, :]`.
	**/
	static public function self_adjoint_eigvals(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the singular value decompositions of one or more matrices.
		
		Computes the SVD of each inner matrix in `tensor` such that
		`tensor[..., :, :] = u[..., :, :] * diag(s[..., :, :]) *
		 transpose(conj(v[..., :, :]))`
		
		```python
		# a is a tensor.
		# s is a tensor of singular values.
		# u is a tensor of left singular vectors.
		# v is a tensor of right singular vectors.
		s, u, v = svd(a)
		s = svd(a, compute_uv=False)
		```
		
		Args:
		  tensor: `Tensor` of shape `[..., M, N]`. Let `P` be the minimum of `M` and
		    `N`.
		  full_matrices: If true, compute full-sized `u` and `v`. If false
		    (the default), compute only the leading `P` singular vectors.
		    Ignored if `compute_uv` is `False`.
		  compute_uv: If `True` then left and right singular vectors will be
		    computed and returned in `u` and `v`, respectively. Otherwise, only the
		    singular values will be computed, which can be significantly faster.
		  name: string, optional name of the operation.
		
		Returns:
		  s: Singular values. Shape is `[..., P]`. The values are sorted in reverse
		    order of magnitude, so s[..., 0] is the largest value, s[..., 1] is the
		    second largest, etc.
		  u: Left singular vectors. If `full_matrices` is `False` (default) then
		    shape is `[..., M, P]`; if `full_matrices` is `True` then shape is
		    `[..., M, M]`. Not returned if `compute_uv` is `False`.
		  v: Right singular vectors. If `full_matrices` is `False` (default) then
		    shape is `[..., N, P]`. If `full_matrices` is `True` then shape is
		    `[..., N, N]`. Not returned if `compute_uv` is `False`.
		
		@compatibility(numpy)
		Mostly equivalent to numpy.linalg.svd, except that
		  * The order of output  arguments here is `s`, `u`, `v` when `compute_uv` is
		    `True`, as opposed to `u`, `s`, `v` for numpy.linalg.svd.
		  * full_matrices is `False` by default as opposed to `True` for
		     numpy.linalg.svd.
		  * tf.linalg.svd uses the standard definition of the SVD
		    \\(A = U \Sigma V^H\\), such that the left singular vectors of `a` are
		    the columns of `u`, while the right singular vectors of `a` are the
		    columns of `v`. On the other hand, numpy.linalg.svd returns the adjoint
		    \\(V^H\\) as the third output argument.
		```python
		import tensorflow as tf
		import numpy as np
		s, u, v = tf.linalg.svd(a)
		tf_a_approx = tf.matmul(u, tf.matmul(tf.linalg.diag(s), v, adjoint_b=True))
		u, s, v_adj = np.linalg.svd(a, full_matrices=False)
		np_a_approx = np.dot(u, np.dot(np.diag(s), v_adj))
		# tf_a_approx and np_a_approx should be numerically close.
		```
		@end_compatibility
	**/
	static public function svd(tensor:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function svd
	**/
	static public function svd_eager_fallback(input:Dynamic, ?compute_uv:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}