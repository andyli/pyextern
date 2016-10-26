/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg_ops;
@:pythonImport("tensorflow.python.ops.linalg_ops") extern class Linalg_ops_Module {
	/**
		Shape function for batch determinant op.
	**/
	static public function _BatchMatrixDeterminantShape(op:Dynamic):Dynamic;
	/**
		Shape function for batch least-squares matrix solver op.
	**/
	static public function _BatchMatrixSolveLsShape(op:Dynamic):Dynamic;
	/**
		Shape function for batch self-adjoint eigensolver op.
	**/
	static public function _BatchSelfAdjointEigShape(op:Dynamic):Dynamic;
	/**
		Shape function for BatchSelfAdjointEigV2.
	**/
	static public function _BatchSelfAdjointEigV2Shape(op:Dynamic):Dynamic;
	/**
		Shape function for batch square matrix solver ops.
	**/
	static public function _BatchSquareMatrixSolveShape(op:Dynamic):Dynamic;
	/**
		Shape function for batch SVD op.
	**/
	static public function _BatchSvdShape(op:Dynamic):Dynamic;
	/**
		Shape function for batch matrix ops with output equal to input shape.
	**/
	static public function _BatchUnchangedSquare(op:Dynamic):Dynamic;
	/**
		Shape function for determinant op.
	**/
	static public function _MatrixDeterminantShape(op:Dynamic):Dynamic;
	/**
		Shape function for least-squares matrix solver op.
	**/
	static public function _MatrixSolveLsShape(op:Dynamic):Dynamic;
	/**
		Shape inference helper function for least squares matrix solver ops.
	**/
	static public function _MatrixSolveLsShapeHelper(lhs_shape:Dynamic, rhs_shape:Dynamic):Dynamic;
	/**
		Shape function for self-adjoint eigensolver op.
	**/
	static public function _SelfAdjointEigShape(op:Dynamic):Dynamic;
	/**
		Shape function for SelfAdjointEigV2.
	**/
	static public function _SelfAdjointEigShapeV2(op:Dynamic):Dynamic;
	/**
		Shape inference helper for {Batch}SelfAdjointEigV2.
	**/
	static public function _SelfAdjointEigV2ShapeHelper(op:Dynamic, input_shape:Dynamic):Dynamic;
	/**
		Shape function for square matrix solver ops.
	**/
	static public function _SquareMatrixSolveShape(op:Dynamic):Dynamic;
	/**
		Shape inference helper function for square matrix solver ops.
	**/
	static public function _SquareMatrixSolveShapeHelper(lhs_shape:Dynamic, rhs_shape:Dynamic):Dynamic;
	/**
		Shape function for SVD op.
	**/
	static public function _SvdShape(op:Dynamic):Dynamic;
	/**
		Shape inference helper for {Batch}SVD op.
	**/
	static public function _SvdShapeHelper(input_shape:Dynamic, op:Dynamic):Dynamic;
	/**
		Shape function for matrix ops with output equal to input shape.
	**/
	static public function _UnchangedSquare(op:Dynamic):Dynamic;
	/**
		Helper for {Batch}UnchangedSquare.
	**/
	static public function _UnchangedSquareHelper(input_shape:Dynamic):Dynamic;
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
		Computes the Cholesky decomposition of a batch of square matrices.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices, with the same constraints as the single matrix Cholesky
		decomposition above. The output is a tensor of the same shape as the input
		containing the Cholesky decompositions for all input submatrices `[..., :, :]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. Shape is `[..., M, M]`.
	**/
	static public function batch_cholesky(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the reverse mode backpropagated gradient of the Cholesky algorithm.
		
		For an explanation see "Differentiation of the Cholesky algorithm" by
		Iain Murray http://arxiv.org/abs/1602.07527.
		
		Args:
		  l: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Output of batch Cholesky algorithm l = batch_cholesky(A). Shape is `[..., M, M]`.
		    Algorithm depends only on lower triangular part of the innermost matrices of
		    this tensor.
		  grad: A `Tensor`. Must have the same type as `l`.
		    df/dl where f is some scalar function. Shape is `[..., M, M]`.
		    Algorithm depends only on lower triangular part of the innermost matrices of
		    this tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `l`.
		  Symmetrized version of df/dA . Shape is `[..., M, M]`
	**/
	static public function batch_cholesky_grad(l:Dynamic, grad:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solve batches of linear eqns `A X = RHS`, given Cholesky factorizations.
		
		```python
		# Solve one linear system (K = 1) for every member of the length 10 batch.
		A = ... # shape 10 x 2 x 2
		RHS = ... # shape 10 x 2 x 1
		chol = tf.batch_cholesky(A)  # shape 10 x 2 x 2
		X = tf.batch_cholesky_solve(chol, RHS)  # shape 10 x 2 x 1
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
		    Cholesky factorization of `A`, e.g. `chol = tf.batch_cholesky(A)`.
		    For that reason, only the lower triangular parts (including the diagonal)
		    of the last two dimensions of `chol` are used.  The strictly upper part is
		    assumed to be zero and not accessed.
		  rhs:  A `Tensor`, same type as `chol`, shape is `[..., M, K]`.
		  name:  A name to give this `Op`.  Defaults to `batch_cholesky_solve`.
		
		Returns:
		  Solution to `A x = rhs`, shape `[..., M, K]`.
	**/
	static public function batch_cholesky_solve(chol:Dynamic, rhs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the determinants for a batch of square matrices.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor containing the determinants
		for all input submatrices `[..., :, :]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. Shape is `[...]`.
	**/
	static public function batch_matrix_determinant(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the inverse of square invertible matrices or their adjoints
		
		(conjugate transposes).
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor of the same shape as the input
		containing the inverse for all input submatrices `[..., :, :]`.
		
		The op uses LU decomposition with partial pivoting to compute the inverses.
		
		If a matrix is not invertible there is no guarantee what the op does. It
		may detect the condition and raise an exception or it may simply return a
		garbage result.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[..., M, M]`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. Shape is `[..., M, M]`.
	**/
	static public function batch_matrix_inverse(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves systems of linear equations. Checks for invertibility.
		
		Matrix is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. Rhs is a tensor of shape
		`[..., M, K]`. The output is a tensor shape `[..., M, K]`.  If `adjoint` is `False` then each output
		matrix satisfies `matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]`.
		If `adjoint` is `True` then each output
		matrix satisfies `adjoint(matrix[..., :, :]) * output[..., :, :] = rhs[..., :, :]`.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[..., M, M]`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		    Shape is `[..., M, K]`.
		  adjoint: An optional `bool`. Defaults to `False`.
		    Boolean indicating whether to solve with `matrix` or its (block-wise)
		    adjoint.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`. Shape is `[..., M, K]`.
	**/
	static public function batch_matrix_solve(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves multiple linear least-squares problems.
		
		`matrix` is a tensor of shape `[..., M, N]` whose inner-most 2 dimensions
		form `M`-by-`N` matrices. Rhs is a tensor of shape `[..., M, K]` whose
		inner-most 2 dimensions form `M`-by-`K` matrices.   The computed output is a
		`Tensor` of shape `[..., N, K]` whose inner-most 2 dimensions form `M`-by-`K`
		matrices that solve the equations
		`matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]` in the least squares
		sense.
		
		Below we will use the following notation for each pair of
		matrix and right-hand sides in the batch:
		
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
	**/
	static public function batch_matrix_solve_ls(matrix:Dynamic, rhs:Dynamic, ?l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves systems of linear equations with upper or lower triangular matrices by
		
		backsubstitution.
		
		`matrix` is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions form
		square matrices. If `lower` is `True` then the strictly upper triangular part
		of each inner-most matrix is assumed to be zero and not accessed.
		If `lower` is False then the strictly lower triangular part of each inner-most
		matrix is assumed to be zero and not accessed.
		`rhs` is a tensor of shape [..., M, K]`.
		
		The output is a tensor of shape `[..., M, K]`. If `adjoint` is `True` then the
		innermost matrices in output` satisfy matrix equations
		`matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]`.
		If `adjoint` is `False` then the strictly then the  innermost matrices in
		`output` satisfy matrix equations
		`adjoint(matrix[..., i, k]) * output[..., k, j] = rhs[..., i, j]`.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[..., M, M]`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		    Shape is `[..., M, K]`.
		  lower: An optional `bool`. Defaults to `True`.
		    Boolean indicating whether the innermost matrices in `matrix` are
		    lower or upper triangular.
		  adjoint: An optional `bool`. Defaults to `False`.
		    Boolean indicating whether to solve with `matrix` or its (block-wise)
		    adjoint.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`. Shape is `[..., M, K]`.
	**/
	static public function batch_matrix_triangular_solve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of a batch of self-adjoint matrices.
		
		Computes the eigenvalues and eigenvectors of the innermost N-by-N matrices
		in `tensor` such that
		`tensor[...,:,:] * v[..., :,i] = e(..., i) * v[...,:,i]`, for i=0...N-1.
		
		Args:
		  tensor: `Tensor` of shape `[..., N, N]`.
		  name: string, optional name of the operation.
		
		Returns:
		  e: Eigenvalues. Shape is `[..., N]`.
		  v: Eigenvectors. Shape is `[..., N, N]`. The columns of the inner most
		  matrices
		    contain eigenvectors of the corresponding matrices in `tensor`
	**/
	static public function batch_self_adjoint_eig(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of a batch of square self-adjoint matrices.
		
		Computes the eigenvalues and (optionally) eigenvectors of each inner matrix in
		`input` such that `input[..., :, :] = v[..., :, :] * diag(e[..., :])`.
		
		```prettyprint
		# a is a tensor.
		# e is a tensor of eigenvalues.
		# v is a tensor of eigenvectors.
		e, v = batch_self_adjoint_eig(a)
		e = batch_self_adjoint_eig(a, compute_v=False)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    `Tensor` input of shape `[N, N]`.
		  compute_v: An optional `bool`. Defaults to `True`.
		    If `True` then eigenvectors will be computed and returned in `v`.
		    Otherwise, only the eigenvalues will be computed.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (e, v).
		  e: A `Tensor`. Has the same type as `input`. Eigenvalues. Shape is `[N]`.
		  v: A `Tensor`. Has the same type as `input`. Eigenvectors. Shape is `[N, N]`.
	**/
	static public function batch_self_adjoint_eig_v2(input:Dynamic, ?compute_v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigenvalues of a batch of self-adjoint matrices.
		
		Args:
		  tensor: `Tensor` of shape `[..., N, N]`.
		  name: string, optional name of the operation.
		
		Returns:
		  e: Eigenvalues. Shape is `[..., N]`. The vector `e[..., :]` contains the `N`
		    eigenvalues of `tensor[..., :, :]`.
	**/
	static public function batch_self_adjoint_eigvals(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the singular value decompositions of a batch of matrices.
		
		Computes the SVD of each inner matrix in `tensor` such that
		`tensor[..., :, :] = u[..., :, :] * diag(s[..., :, :]) * transpose(v[..., :,
		:])`
		
		```prettyprint
		# a is a tensor.
		# s is a tensor of singular values.
		# u is a tensor of left singular vectors.
		# v is a tensor of right singular vectors.
		s, u, v = batch_svd(a)
		s = batch_svd(a, compute_uv=False)
		```
		
		Args:
		  matrix: `Tensor` of shape `[..., M, N]`. Let `P` be the minimum of `M` and
		    `N`.
		  compute_uv: If `True` then left and right singular vectors will be
		    computed and returned in `u` and `v`, respectively. Otherwise, only the
		    singular values will be computed, which can be significantly faster.
		  full_matrices: If true, compute full-sized `u` and `v`. If false
		    (the default), compute only the leading `P` singular vectors.
		    Ignored if `compute_uv` is `False`.
		  name: string, optional name of the operation.
		
		Returns:
		  s: Singular values. Shape is `[..., P]`.
		  u: Right singular vectors. If `full_matrices` is `False` (default) then
		    shape is `[..., M, P]`; if `full_matrices` is `True` then shape is
		    `[..., M, M]`. Not returned if `compute_uv` is `False`.
		  v: Left singular vectors. If `full_matrices` is `False` (default) then
		    shape is `[..., N, P]`. If `full_matrices` is `True` then shape is
		    `[..., N, N]`. Not returned if `compute_uv` is `False`.
	**/
	static public function batch_svd(tensor:Dynamic, ?compute_uv:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Cholesky decomposition of a square matrix.
		
		The input has to be symmetric and positive definite. Only the lower-triangular
		part of the input will be used for this operation. The upper-triangular part
		will not be read.
		
		The result is the lower-triangular matrix of the Cholesky decomposition of the
		input, `L`, so that `input = L L^*`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. Shape is `[M, M]`.
	**/
	static public function cholesky(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the reverse mode backpropagated gradient of the Cholesky algorithm.
		
		For an explanation see "Differentiation of the Cholesky algorithm" by
		Iain Murray http://arxiv.org/abs/1602.07527.
		
		Args:
		  l: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Output of Cholesky algorithm l = chol(A). Shape is `[M, M]`.
		    Algorithm depends only on lower triangular part of this matrix.
		  grad: A `Tensor`. Must have the same type as `l`.
		    df/dl where f is some scalar function. Shape is `[M, M]`.
		    Algorithm depends only on lower triangular part of this matrix.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `l`.
		  Symmetrized version of df/dA . Shape is `[M, M]`.
	**/
	static public function cholesky_grad(l:Dynamic, grad:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solve linear equations `A X = RHS`, given Cholesky factorization of `A`.
		
		```python
		# Solve one system of linear equations (K = 1).
		A = [[3, 1], [1, 3]]
		RHS = [[2], [22]]  # shape 2 x 1
		chol = tf.cholesky(A)
		X = tf.cholesky_solve(chol, RHS)
		# tf.matmul(A, X) ~ RHS
		X[:, 0]  # Solution to the linear system A x = RHS[:, 0]
		
		# Solve five systems of linear equations (K = 5).
		A = [[3, 1], [1, 3]]
		RHS = [[1, 2, 3, 4, 5], [11, 22, 33, 44, 55]]  # shape 2 x 5
		...
		X[:, 2]  # Solution to the linear system A x = RHS[:, 2]
		```
		
		Args:
		  chol:  A `Tensor`.  Must be `float32` or `float64`, shape is `[M, M]`.
		    Cholesky factorization of `A`, e.g. `chol = tf.cholesky(A)`.  For that
		    reason, only the lower triangular part (including the diagonal) of `chol`
		    is used.  The strictly upper part is assumed to be zero and not accessed.
		  rhs:  A `Tensor`, same type as `chol`, shape is `[M, K]`, designating `K`
		    systems of linear equations.
		  name:  A name to give this `Op`.  Defaults to `cholesky_solve`.
		
		Returns:
		  Solution to `A X = RHS`, shape `[M, K]`.  The solutions to the `K` systems.
	**/
	static public function cholesky_solve(chol:Dynamic, rhs:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Computes the determinant of a square matrix.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    A tensor of shape `[M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  A scalar, equal to the determinant of the input.
	**/
	static public function matrix_determinant(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the inverse of a square invertible matrix or its adjoint (conjugate
		
		transpose).
		
		The op uses LU decomposition with partial pivoting to compute the inverse.
		
		If the matrix is not invertible there is no guarantee what the op does. It
		may detect the condition and raise an exception or it may simply return a
		garbage result.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[M, M]`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Shape is `[M, M]`. If `adjoint` is `False` then `output` contains the
		  matrix inverse of `input`. If `adjoint` is `True` then `output` contains the
		  matrix inverse of the adjoint of `input`.
	**/
	static public function matrix_inverse(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves a system of linear equations. Checks for invertibility.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[M, M]`.
		  rhs: A `Tensor`. Must have the same type as `matrix`. Shape is `[M, K]`.
		  adjoint: An optional `bool`. Defaults to `False`.
		    Boolean indicating whether to solve with `matrix` or its adjoint.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`.
		  Shape is `[M, K]`. If `adjoint` is `False` then `output` that solves
		  `matrix` * `output` = `rhs`. If `adjoint` is `True` then `output` that solves
		  `adjoint(matrix)` * `output` = `rhs`.
	**/
	static public function matrix_solve(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves a linear least-squares problem.
		
		Below we will use the following notation
		`matrix`=\\(A \in \Re^{m \times n}\\),
		`rhs`=\\(B  \in \Re^{m \times k}\\),
		`output`=\\(X  \in \Re^{n \times k}\\),
		`l2_regularizer`=\\(\lambda\\).
		
		If `fast` is `True`, then the solution is computed by solving the normal
		equations using Cholesky decomposition. Specifically, if \\(m \ge n\\) then
		\\(X = (A^T A + \lambda I)^{-1} A^T B\\), which solves the regularized
		least-squares problem \\(X = \mathrm{argmin}_{Z \in \Re^{n \times k}}
		||A Z - B||_F^2 + \lambda ||Z||_F^2\\). If \\(m \lt n\\) then `output` is
		computed as \\(X = A^T (A A^T + \lambda I)^{-1} B\\),
		which (for \\(\lambda = 0\\)) is the minimum-norm solution to the
		under-determined linear system, i.e.
		\\(X = \mathrm{argmin}_{Z \in \Re^{n \times k}} ||Z||_F^2 \\),
		subject to \\(A Z = B\\).
		Notice that the fast path is only numerically stable when \\(A\\) is
		numerically full rank and has a condition number
		\\(\mathrm{cond}(A) \lt \frac{1}{\sqrt{\epsilon_{mach}}}\\)
		or \\(\lambda\\) is sufficiently large.
		
		If `fast` is `False` then the solution is computed using the rank revealing
		QR decomposition with column pivoting. This will always compute a
		least-squares solution that minimizes the residual norm
		\\(||A X - B||_F^2 \\), even when \\(A\\) is rank deficient or
		ill-conditioned. Notice: The current version does not compute a minimum norm
		solution. If `fast` is `False` then `l2_regularizer` is ignored.
		
		Args:
		  matrix: 2-D `Tensor` of shape `[M, N]`.
		  rhs: 2-D `Tensor` of shape is `[M, K]`.
		  l2_regularizer: 0-D  `double` `Tensor`. Ignored if `fast=False`.
		  fast: bool. Defaults to `True`.
		  name: string, optional name of the operation.
		
		Returns:
		  output: Matrix of shape `[N, K]` containing the matrix that solves
		    `matrix * output = rhs` in the least-squares sense.
	**/
	static public function matrix_solve_ls(matrix:Dynamic, rhs:Dynamic, ?l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves a system of linear equations with an upper or lower triangular matrix by
		
		backsubstitution.
		
		`matrix` is a matrix of shape `[M, M]`. If `lower` is `True` then the strictly
		upper triangular part of `matrix` is assumed to be zero and not accessed.
		If `lower` is False then the strictly lower triangular part of `matrix` is
		assumed to be zero and not accessed.
		`rhs` is a matrix of shape [M, K]`.
		
		The output is a matrix of shape `[M, K]`. If `adjoint` is `False` the output
		satisfies the matrix equation `matrix` * `output` = `rhs`.
		If `adjoint` is `False` then `output` satisfies the matrix equation
		`matrix` * `output` = `rhs`.
		If `adjoint` is `True` then `output` satisfies the matrix equation
		`adjoint(matrix)` * `output` = `rhs`.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[M, M]`.
		  rhs: A `Tensor`. Must have the same type as `matrix`. Shape is `[M, K]`.
		  lower: An optional `bool`. Defaults to `True`.
		    Boolean indicating whether `matrix` is lower or upper triangular
		  adjoint: An optional `bool`. Defaults to `False`.
		    Boolean indicating whether to solve with `matrix` or its adjoint.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`. Shape is `[M, K]`.
	**/
	static public function matrix_triangular_solve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Computes the eigen decomposition of a self-adjoint matrix.
		
		Computes the eigenvalues and eigenvectors of an N-by-N matrix `matrix` such
		that `matrix * v[:,i] = e(i) * v[:,i]`, for i=0...N-1.
		
		Args:
		  matrix: `Tensor` of shape `[N, N]`.
		  name: string, optional name of the operation.
		
		Returns:
		  e: Eigenvalues. Shape is `[N]`.
		  v: Eigenvectors. Shape is `[N, N]`. The columns contain the eigenvectors of
		    `matrix`.
	**/
	static public function self_adjoint_eig(matrix:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of a self-adjoint (\"symmetric\") matrix.
		
		Computes the eigenvalues and (optionally) eigenvectors such that
		`input = v * diag(e)`.
		
		```prettyprint
		# a is a self-adjoint matrix.
		# e is a vector of eigenvalues.
		# v is a matrix of eigenvectors.
		e, v = self_adjoint_eig(a)
		e = self_adjoint_eig(a, compute_v=False)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    `Tensor` input of shape `[N, N]`.
		  compute_v: An optional `bool`. Defaults to `True`.
		    If `True` then eigenvectors will be computed and returned in `v`.
		    Otherwise, only the eigenvalues will be computed.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (e, v).
		  e: A `Tensor`. Has the same type as `input`. Eigenvalues. Shape is `[N]`.
		  v: A `Tensor`. Has the same type as `input`. Eigenvectors. Shape is `[N, N]`.
	**/
	static public function self_adjoint_eig_v2(input:Dynamic, ?compute_v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigenvalues a self-adjoint  matrix.
		
		Args:
		  matrix: `Tensor` of shape `[N, N]`.
		  name: string, optional name of the operation.
		
		Returns:
		  e: Eigenvalues of `matrix`. Shape is `[N]`.
	**/
	static public function self_adjoint_eigvals(matrix:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the singular value decomposition of a matrix.
		
		Computes the SVD of `matrix` such that `matrix = u * diag(s) *
		transpose(v)`
		
		```prettyprint
		# a is a matrix.
		# s is a vector of singular values.
		# u is the matrix of left singular vectors.
		# v is a matrix of right singular vectors.
		s, u, v = svd(a)
		s = svd(a, compute_uv=False)
		```
		
		Args:
		  matrix: `Tensor` of shape `[M, N]`. Let `P` be the minimum of `M` and `N`.
		  compute_uv: If `True` then left and right singular vectors will be
		    computed and returned in `u` and `v`, respectively. Otherwise, only the
		    singular values will be computed, which can be significantly faster.
		  full_matrices: If true, compute full-sized `u` and `v`. If false
		    (the default), compute only the leading `P` singular vectors.
		    Ignored if `compute_uv` is `False`.
		  name: string, optional name of the operation.
		
		Returns:
		  s: Singular values. Shape is `[P]`.
		  u: Right singular vectors. If `full_matrices` is `False` (default) then
		    shape is `[M, P]`; if `full_matrices` is `True` then shape is
		    `[M, M]`. Not returned if `compute_uv` is `False`.
		  v: Left singular vectors. If `full_matrices` is `False` (default) then
		    shape is `[N, P]`. If `full_matrices` is `True` then shape is
		    `[N, N]`. Not returned if `compute_uv` is `False`.
	**/
	static public function svd(matrix:Dynamic, ?compute_uv:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic):Dynamic;
}