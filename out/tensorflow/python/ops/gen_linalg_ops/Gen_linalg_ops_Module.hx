/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_linalg_ops;
@:pythonImport("tensorflow.python.ops.gen_linalg_ops") extern class Gen_linalg_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __batch_self_adjoint_eig_v2_outputs : Dynamic;
	static public var __batch_svd_outputs : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __self_adjoint_eig_v2_outputs : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __svd_outputs : Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function _batch_cholesky(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  l: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  grad: A `Tensor`. Must have the same type as `l`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `l`.
	**/
	static public function _batch_cholesky_grad(l:Dynamic, grad:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function _batch_matrix_determinant(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function _batch_matrix_inverse(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function _batch_matrix_solve(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function _batch_matrix_solve_ls(matrix:Dynamic, rhs:Dynamic, l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function _batch_matrix_triangular_solve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function _batch_self_adjoint_eig(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function _batch_self_adjoint_eig_v2(input:Dynamic, ?compute_v:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function _batch_svd(input:Dynamic, ?compute_uv:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves one or more linear least-squares problems.
		
		`matrix` is a tensor of shape `[..., M, N]` whose inner-most 2 dimensions
		form matrices of size `[M, N]`. Rhs is a tensor of shape `[..., M, K]`.
		The output is a tensor shape `[..., N, K]` where each output matrix solves
		each of the equations matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]
		in the least squares sense.
		
		matrix and right-hand sides in the batch:
		
		`matrix`=\\(A \in \Re^{m \times n}\\),
		`rhs`=\\(B  \in \Re^{m \times k}\\),
		`output`=\\(X  \in \Re^{n \times k}\\),
		`l2_regularizer`=\\(\lambda\\).
		
		If `fast` is `True`, then the solution is computed by solving the normal
		equations using Cholesky decomposition. Specifically, if \\(m \ge n\\) then
		\\(X = (A^T A + \lambda I)^{-1} A^T B\\), which solves the least-squares
		problem \\(X = \mathrm{argmin}_{Z \in \Re^{n \times k} } ||A Z - B||_F^2 +
		\lambda ||Z||_F^2\\). If \\(m \lt n\\) then `output` is computed as
		\\(X = A^T (A A^T + \lambda I)^{-1} B\\), which (for \\(\lambda = 0\\)) is the
		minimum-norm solution to the under-determined linear system, i.e.
		\\(X = \mathrm{argmin}_{Z \in \Re^{n \times k} } ||Z||_F^2 \\), subject to
		\\(A Z = B\\). Notice that the fast path is only numerically stable when
		\\(A\\) is numerically full rank and has a condition number
		\\(\mathrm{cond}(A) \lt \frac{1}{\sqrt{\epsilon_{mach} } }\\) or\\(\lambda\\) is
		sufficiently large.
		
		If `fast` is `False` an algorithm based on the numerically robust complete
		orthogonal decomposition is used. This computes the minimum-norm
		least-squares solution, even when \\(A\\) is rank deficient. This path is
		typically 6-7 times slower than the fast path. If `fast` is `False` then
		`l2_regularizer` is ignored.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[..., M, N]`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		    Shape is `[..., M, K]`.
		  l2_regularizer: A `Tensor` of type `float64`. Scalar tensor.
		
		    @compatibility(numpy)
		    Equivalent to np.linalg.lstsq
		    @end_compatibility
		  fast: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`. Shape is `[..., N, K]`.
	**/
	static public function _matrix_solve_ls(matrix:Dynamic, rhs:Dynamic, l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic):Dynamic;
	static public var _op_def_lib : Dynamic;
	static public var _qr_outputs : Dynamic;
	/**
		Computes the Eigen Decomposition of a batch of square self-adjoint matrices.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices, with the same constraints as the single matrix
		SelfAdjointEig.
		
		The result is a [..., M+1, M] matrix with [..., 0,:] containing the
		eigenvalues, and subsequent [...,1:, :] containing the eigenvectors.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. Shape is `[..., M+1, M]`.
	**/
	static public function _self_adjoint_eig(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of one or more square self-adjoint matrices.
		
		Computes the eigenvalues and (optionally) eigenvectors of each inner matrix in
		`input` such that `input[..., :, :] = v[..., :, :] * diag(e[..., :])`.
		
		```prettyprint
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
		
		  e: A `Tensor`. Has the same type as `input`. Eigenvalues. Shape is `[N]`.
		  v: A `Tensor`. Has the same type as `input`. Eigenvectors. Shape is `[N, N]`.
	**/
	static public function _self_adjoint_eig_v2(input:Dynamic, ?compute_v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the singular value decompositions of one or more matrices.
		
		Computes the SVD of each inner matrix in `input` such that
		`input[..., :, :] = u[..., :, :] * diag(s[..., :, :]) * transpose(v[..., :, :])`
		
		```prettyprint
		# a is a tensor containing a batch of matrices.
		# s is a tensor of singular values for each matrix.
		# u is the tensor containing of left singular vectors for each matrix.
		# v is the tensor containing of right singular vectors for each matrix.
		s, u, v = svd(a)
		s, _, _ = svd(a, compute_uv=False)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    A tensor of shape `[..., M, N]` whose inner-most 2 dimensions
		    form matrices of size `[M, N]`. Let `P` be the minimum of `M` and `N`.
		  compute_uv: An optional `bool`. Defaults to `True`.
		    If true, left and right singular vectors will be
		    computed and returned in `u` and `v`, respectively.
		    If false, `u` and `v` are not set and should never referenced.
		  full_matrices: An optional `bool`. Defaults to `False`.
		    If true, compute full-sized `u` and `v`. If false
		    (the default), compute only the leading `P` singular vectors.
		    Ignored if `compute_uv` is `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (s, u, v).
		
		  s: A `Tensor`. Has the same type as `input`. Singular values. Shape is `[..., P]`.
		  u: A `Tensor`. Has the same type as `input`. Left singular vectors. If `full_matrices` is `False` then shape is
		    `[..., M, P]`; if `full_matrices` is `True` then shape is
		    `[..., M, M]`. Undefined if `compute_uv` is `False`.
		  v: A `Tensor`. Has the same type as `input`. Left singular vectors. If `full_matrices` is `False` then shape is
		    `[..., N, P]`. If `full_matrices` is `True` then shape is `[..., N, N]`.
		    Undefined if `compute_uv` is false.
	**/
	static public function _svd(input:Dynamic, ?compute_uv:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Cholesky decomposition of one or more square matrices.
		
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
	static public function cholesky(input:Dynamic, ?name:Dynamic):Dynamic;
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
		  Symmetrized version of df/dA . Shape is `[..., M, M]`
	**/
	static public function cholesky_grad(l:Dynamic, grad:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the determinant of one ore more square matrices.
		
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
	static public function matrix_determinant(input:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		    Shape is `[..., M, M]`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. Shape is `[..., M, M]`.
		
		  @compatibility(numpy)
		  Equivalent to np.linalg.inv
		  @end_compatibility
	**/
	static public function matrix_inverse(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
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
		  A `Tensor`. Has the same type as `matrix`. Shape is `[..., M, K]`.
	**/
	static public function matrix_solve(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
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
		`True` then the innermost matrices in output` satisfy matrix equations
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
		
		    @compatibility(numpy)
		    Equivalent to np.linalg.triangular_solve
		    @end_compatibility
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`. Shape is `[..., M, K]`.
	**/
	static public function matrix_triangular_solve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the QR decompositions of one or more matrices.
		
		Computes the QR decomposition of each inner matrix in `tensor` such that
		`tensor[..., :, :] = q[..., :, :] * r[..., :,:])`
		
		```prettyprint
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
		
		  q: A `Tensor`. Has the same type as `input`. Orthonormal basis for range of `a`. If `full_matrices` is `False` then
		    shape is `[..., M, P]`; if `full_matrices` is `True` then shape is
		    `[..., M, M]`.
		  r: A `Tensor`. Has the same type as `input`. Triangular factor. If `full_matrices` is `False` then shape is
		    `[..., P, N]`. If `full_matrices` is `True` then shape is `[..., M, N]`.
	**/
	static public function qr(input:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic):Dynamic;
}