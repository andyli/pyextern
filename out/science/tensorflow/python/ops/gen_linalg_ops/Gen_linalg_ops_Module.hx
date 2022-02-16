/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_linalg_ops;
@:pythonImport("tensorflow.python.ops.gen_linalg_ops") extern class Gen_linalg_ops_Module {
	/**
		TODO: add doc.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		  lower: An optional `bool`. Defaults to `True`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`.
	**/
	static public function BandedTriangularSolve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function BatchCholesky(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  l: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  grad: A `Tensor`. Must have the same type as `l`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `l`.
	**/
	static public function BatchCholeskyGrad(l:Dynamic, grad:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function BatchMatrixDeterminant(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function BatchMatrixInverse(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function BatchMatrixSolve(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function BatchMatrixSolveLs(matrix:Dynamic, rhs:Dynamic, l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function BatchMatrixTriangularSolve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function BatchSelfAdjointEig(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function BatchSelfAdjointEigV2(input:Dynamic, ?compute_v:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function BatchSvd(input:Dynamic, ?compute_uv:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Cholesky(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the reverse mode backpropagated gradient of the Cholesky algorithm.
		
		For an explanation see "Differentiation of the Cholesky algorithm" by
		Iain Murray http://arxiv.org/abs/1602.07527.
		
		Args:
		  l: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
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
	static public function CholeskyGrad(l:Dynamic, grad:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of one or more square matrices.
		
		Computes the eigenvalues and (optionally) right eigenvectors of each inner matrix in
		`input` such that `input[..., :, :] = v[..., :, :] * diag(e[..., :])`. The eigenvalues
		are sorted in non-decreasing order.
		
		```python
		# a is a tensor.
		# e is a tensor of eigenvalues.
		# v is a tensor of eigenvectors.
		e, v = eig(a)
		e = eig(a, compute_v=False)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `complex64`, `complex128`.
		    `Tensor` input of shape `[N, N]`.
		  Tout: A `tf.DType` from: `tf.complex64, tf.complex128`.
		  compute_v: An optional `bool`. Defaults to `True`.
		    If `True` then eigenvectors will be computed and returned in `v`.
		    Otherwise, only the eigenvalues will be computed.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (e, v).
		
		  e: A `Tensor` of type `Tout`.
		  v: A `Tensor` of type `Tout`.
	**/
	static public function Eig(input:Dynamic, Tout:Dynamic, ?compute_v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Tensor contraction according to Einstein summation convention.
		
		Implements generalized Tensor contraction and reduction. Each input Tensor must
		have a corresponding input subscript appearing in the comma-separated left-hand
		side of the equation. The right-hand side of the equation consists of the
		output subscript. The input subscripts and the output subscript should consist
		of zero or more named axis labels and at most one ellipsis (`...`).
		
		The named axis labels may be any single character other than those having
		special meaning, namely `,.->`. The behavior of this Op is undefined if it
		receives an ill-formatted equation; since the validation is done at
		graph-building time, we omit format validation checks at runtime.
		
		Note: This Op is *not* intended to be called by the user; instead users should
		call `tf.einsum` directly. It is a hidden Op used by `tf.einsum`.
		
		Operations are applied to the input(s) according to the following rules:
		
		 (a) Generalized Diagonals: For input dimensions corresponding to axis labels
		     appearing more than once in the same input subscript, we take the
		     generalized (`k`-dimensional) diagonal.
		     For example, in the equation `iii->i` with input shape `[3, 3, 3]`, the
		     generalized diagonal would consist of `3` elements at indices `(0, 0, 0)`,
		     `(1, 1, 1)` and `(2, 2, 2)` to create a Tensor of shape `[3]`.
		
		 (b) Reduction: Axes corresponding to labels appearing only in one input
		     subscript but not in the output subscript are summed over prior to Tensor
		     contraction.
		     For example, in the equation `ab,bc->b`, the axis labels `a` and `c` are
		     the reduction axis labels.
		
		 (c) Batch Dimensions: Axes corresponding to labels appearing in each of the
		     input subscripts and also in the output subscript make up the batch
		     dimensions in Tensor contraction. Unnamed axis labels corresponding to
		     ellipsis (`...`) also correspond to batch dimensions.
		     For example, for the equation denoting batch matrix multiplication,
		     `bij,bjk->bik`, the axis label `b` corresponds to a batch dimension.
		
		 (d) Contraction: In case of binary einsum, axes corresponding to labels
		     appearing in two different inputs (and not in the output) are contracted
		     against each other.
		     Considering the batch matrix multiplication equation again
		     (`bij,bjk->bik`), the contracted axis label is `j`.
		
		 (e) Expand Diagonal: If the output subscripts contain repeated (explicit) axis
		     labels, the opposite operation of (a) is applied. For example, in the
		     equation `i->iii`, and input shape `[3]`, the output of shape `[3, 3, 3]`
		     are all zeros, except for the (generalized) diagonal which is populated
		     with values from the input.
		     Note: This operation is not supported by `np.einsum` or `tf.einsum`; it is
		     provided to enable computing the symbolic gradient of `tf.einsum`.
		
		The output subscripts must contain only labels appearing in at least one of the
		input subscripts. Furthermore, all dimensions mapping to the same axis label
		must be equal.
		
		Any of the input and output subscripts may contain at most a single ellipsis
		(`...`). These ellipsis are mapped against dimensions not corresponding to any
		named axis label. If two inputs contain ellipsis, then they are broadcasted
		according to standard NumPy broadcasting
		[rules](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html).
		
		The broadcasted dimensions are placed in the corresponding location of the
		ellipsis in the output subscript. If the broadcasted dimensions are non-empty
		and the output subscripts do not contain ellipsis, then an InvalidArgument error
		is raised.
		
		@compatibility(numpy)
		Similar to [`numpy.einsum`](https://docs.scipy.org/doc/numpy/reference/generated/numpy.einsum.html).
		
		Comparison with `numpy.einsum`:
		
		 * This Op only supports unary and binary forms of `numpy.einsum`.
		 * This Op does not support implicit form. (i.e. equations without `->`).
		 * This Op also supports repeated indices in the output subscript, which is not
		   supported by `numpy.einsum`.
		@end_compatibility
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with the same type.
		    List of 1 or 2 Tensors.
		  equation: A `string`.
		    String describing the Einstein Summation operation; in the format of np.einsum.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `inputs`.
	**/
	static public function Einsum(inputs:Dynamic, equation:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sign and the log of the absolute value of the determinant of
		
		one or more square matrices.
		
		The input is a tensor of shape `[N, M, M]` whose inner-most 2 dimensions
		form square matrices. The outputs are two tensors containing the signs and
		absolute values of the log determinants for all N input submatrices
		`[..., :, :]` such that `determinant = sign*exp(log_abs_determinant)`.
		The `log_abs_determinant` is computed as `det(P)*sum(log(diag(LU)))` where `LU`
		is the `LU` decomposition of the input and `P` is the corresponding
		permutation matrix.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		    Shape is `[N, M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sign, log_abs_determinant).
		
		  sign: A `Tensor`. Has the same type as `input`.
		  log_abs_determinant: A `Tensor`. Has the same type as `input`.
	**/
	static public function LogMatrixDeterminant(input:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
		    A tensor of shape `[..., M, M]` whose inner-most 2 dimensions form matrices of
		    size `[M, M]`.
		  output_idx_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (lu, p).
		
		  lu: A `Tensor`. Has the same type as `input`.
		  p: A `Tensor` of type `output_idx_type`.
	**/
	static public function Lu(input:Dynamic, ?output_idx_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the determinant of one or more square matrices.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor containing the determinants
		for all input submatrices `[..., :, :]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MatrixDeterminant(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated, use python implementation tf.linalg.matrix_exponential.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MatrixExponential(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the inverse of one or more square invertible matrices or their adjoints (conjugate transposes).
		
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor of the same shape as the input
		containing the inverse for all input submatrices `[..., :, :]`.
		
		The op uses LU decomposition with partial pivoting to compute the inverses.
		
		If a matrix is not invertible there is no guarantee what the op does. It
		may detect the condition and raise an exception or it may simply return a
		garbage result.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MatrixInverse(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function MatrixLogarithm(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves systems of linear equations.
		
		`Matrix` is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. `Rhs` is a tensor of shape `[..., M, K]`. The `output` is
		a tensor shape `[..., M, K]`.  If `adjoint` is `False` then each output matrix
		satisfies `matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]`.
		If `adjoint` is `True` then each output matrix satisfies
		`adjoint(matrix[..., :, :]) * output[..., :, :] = rhs[..., :, :]`.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
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
	static public function MatrixSolve(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves one or more linear least-squares problems.
		
		`matrix` is a tensor of shape `[..., M, N]` whose inner-most 2 dimensions
		form real or complex matrices of size `[M, N]`. `Rhs` is a tensor of the same
		type as `matrix` and shape `[..., M, K]`.
		The output is a tensor shape `[..., N, K]` where each output matrix solves
		each of the equations
		`matrix[..., :, :]` * `output[..., :, :]` = `rhs[..., :, :]`
		in the least squares sense.
		
		We use the following notation for (complex) matrix and right-hand sides
		in the batch:
		
		`matrix`=\\(A \in \mathbb{C}^{m \times n}\\),
		`rhs`=\\(B  \in \mathbb{C}^{m \times k}\\),
		`output`=\\(X  \in \mathbb{C}^{n \times k}\\),
		`l2_regularizer`=\\(\lambda \in \mathbb{R}\\).
		
		If `fast` is `True`, then the solution is computed by solving the normal
		equations using Cholesky decomposition. Specifically, if \\(m \ge n\\) then
		\\(X = (A^H A + \lambda I)^{-1} A^H B\\), which solves the least-squares
		problem \\(X = \mathrm{argmin}_{Z \in \Re^{n \times k} } ||A Z - B||_F^2 + \lambda ||Z||_F^2\\).
		If \\(m \lt n\\) then `output` is computed as
		\\(X = A^H (A A^H + \lambda I)^{-1} B\\), which (for \\(\lambda = 0\\)) is the
		minimum-norm solution to the under-determined linear system, i.e.
		\\(X = \mathrm{argmin}_{Z \in \mathbb{C}^{n \times k} } ||Z||_F^2 \\),
		subject to \\(A Z = B\\). Notice that the fast path is only numerically stable
		when \\(A\\) is numerically full rank and has a condition number
		\\(\mathrm{cond}(A) \lt \frac{1}{\sqrt{\epsilon_{mach} } }\\) or \\(\lambda\\) is
		sufficiently large.
		
		If `fast` is `False` an algorithm based on the numerically robust complete
		orthogonal decomposition is used. This computes the minimum-norm
		least-squares solution, even when \\(A\\) is rank deficient. This path is
		typically 6-7 times slower than the fast path. If `fast` is `False` then
		`l2_regularizer` is ignored.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
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
		  A `Tensor`. Has the same type as `matrix`.
	**/
	static public function MatrixSolveLs(matrix:Dynamic, rhs:Dynamic, l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MatrixSquareRoot(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves systems of linear equations with upper or lower triangular matrices by backsubstitution.
		
		
		`matrix` is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions form
		square matrices. If `lower` is `True` then the strictly upper triangular part
		of each inner-most matrix is assumed to be zero and not accessed.
		If `lower` is False then the strictly lower triangular part of each inner-most
		matrix is assumed to be zero and not accessed.
		`rhs` is a tensor of shape `[..., M, N]`.
		
		The output is a tensor of shape `[..., M, N]`. If `adjoint` is
		`True` then the innermost matrices in `output` satisfy matrix equations
		`matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]`.
		If `adjoint` is `False` then the strictly then the  innermost matrices in
		`output` satisfy matrix equations
		`adjoint(matrix[..., i, k]) * output[..., k, j] = rhs[..., i, j]`.
		
		Note, the batch shapes for the inputs only need to broadcast.
		
		Example:
		```python
		
		a = tf.constant([[3,  0,  0,  0],
		                 [2,  1,  0,  0],
		                 [1,  0,  1,  0],
		                 [1,  1,  1,  1]], dtype=tf.float32)
		
		b = tf.constant([[4],
		                 [2],
		                 [4],
		                 [2]], dtype=tf.float32)
		
		x = tf.linalg.triangular_solve(a, b, lower=True)
		x
		# <tf.Tensor: shape=(4, 1), dtype=float32, numpy=
		# array([[ 1.3333334 ],
		#        [-0.66666675],
		#        [ 2.6666665 ],
		#        [-1.3333331 ]], dtype=float32)>
		
		# in python3 one can use `a@x`
		tf.matmul(a, x)
		# <tf.Tensor: shape=(4, 1), dtype=float32, numpy=
		# array([[4.       ],
		#        [2.       ],
		#        [4.       ],
		#        [1.9999999]], dtype=float32)>
		```
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
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
	static public function MatrixTriangularSolve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the QR decompositions of one or more matrices.
		
		Computes the QR decomposition of each inner matrix in `tensor` such that
		`tensor[..., :, :] = q[..., :, :] * r[..., :,:])`
		
		Currently, the gradient for the QR decomposition is well-defined only when
		the first `P` columns of the inner matrix are linearly independent, where
		`P` is the minimum of `M` and `N`, the 2 inner-most dimmensions of `tensor`.
		
		```python
		# a is a tensor.
		# q is a tensor of orthonormal matrices.
		# r is a tensor of upper triangular matrices.
		q, r = qr(a)
		q_full, r_full = qr(a, full_matrices=True)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
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
	static public function Qr(input:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Eigen Decomposition of a batch of square self-adjoint matrices.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices, with the same constraints as the single matrix
		SelfAdjointEig.
		
		The result is a [..., M+1, M] matrix with [..., 0,:] containing the
		eigenvalues, and subsequent [...,1:, :] containing the eigenvectors. The eigenvalues
		are sorted in non-decreasing order.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function SelfAdjointEig(input:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
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
	static public function SelfAdjointEigV2(input:Dynamic, ?compute_v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the singular value decompositions of one or more matrices.
		
		Computes the SVD of each inner matrix in `input` such that
		`input[..., :, :] = u[..., :, :] * diag(s[..., :, :]) * transpose(v[..., :, :])`
		
		```python
		# a is a tensor containing a batch of matrices.
		# s is a tensor of singular values for each matrix.
		# u is the tensor containing the left singular vectors for each matrix.
		# v is the tensor containing the right singular vectors for each matrix.
		s, u, v = svd(a)
		s, _, _ = svd(a, compute_uv=False)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
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
		
		  s: A `Tensor`. Has the same type as `input`.
		  u: A `Tensor`. Has the same type as `input`.
		  v: A `Tensor`. Has the same type as `input`.
	**/
	static public function Svd(input:Dynamic, ?compute_uv:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculate product with tridiagonal matrix.
		
		Calculates product of two matrices, where left matrix is a tridiagonal matrix.
		
		Args:
		  superdiag: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    Tensor of shape `[..., 1, M]`, representing superdiagonals of
		    tri-diagonal matrices to the left of multiplication. Last element is ignored.
		  maindiag: A `Tensor`. Must have the same type as `superdiag`.
		    Tensor of shape `[..., 1, M]`, representing main diagonals of tri-diagonal
		    matrices to the left of multiplication.
		  subdiag: A `Tensor`. Must have the same type as `superdiag`.
		    Tensor of shape `[..., 1, M]`, representing subdiagonals of tri-diagonal
		    matrices to the left of multiplication. First element is ignored.
		  rhs: A `Tensor`. Must have the same type as `superdiag`.
		    Tensor of shape `[..., M, N]`, representing MxN matrices to the right of
		    multiplication.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `superdiag`.
	**/
	static public function TridiagonalMatMul(superdiag:Dynamic, maindiag:Dynamic, subdiag:Dynamic, rhs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves tridiagonal systems of equations.
		
		  Solves tridiagonal systems of equations.
		  Supports batch dimensions and multiple right-hand sides per each left-hand
		  side.
		  On CPU, solution is computed via Gaussian elimination with or without partial
		  pivoting, depending on `partial_pivoting` attribute. On GPU, Nvidia's cuSPARSE
		  library is used: https://docs.nvidia.com/cuda/cusparse/index.html#gtsv
		  Partial pivoting is not yet supported by XLA backends.
		
		Args:
		  diagonals: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    Tensor of shape `[..., 3, M]` whose innermost 2 dimensions represent the
		    tridiagonal matrices with three rows being the superdiagonal, diagonals, and
		    subdiagonals, in order. The last element of the superdiagonal and the first
		    element of the subdiagonal is ignored.
		  rhs: A `Tensor`. Must have the same type as `diagonals`.
		    Tensor of shape `[..., M, K]`, representing K right-hand sides per each
		    left-hand side.
		  partial_pivoting: An optional `bool`. Defaults to `True`.
		    Whether to apply partial pivoting. Partial pivoting makes the procedure more
		    stable, but slower.
		  perturb_singular: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonals`.
	**/
	static public function TridiagonalSolve(diagonals:Dynamic, rhs:Dynamic, ?partial_pivoting:Dynamic, ?perturb_singular:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_cholesky(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_lu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_matrix_determinant(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_matrix_inverse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_matrix_solve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_matrix_square_root(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_qr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
		  rhs: A `Tensor`. Must have the same type as `matrix`.
		  lower: An optional `bool`. Defaults to `True`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `matrix`.
	**/
	static public function banded_triangular_solve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	static public function banded_triangular_solve_eager_fallback(matrix:Dynamic, rhs:Dynamic, lower:Dynamic, adjoint:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_cholesky(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function batch_cholesky_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function batch_cholesky_grad_eager_fallback(l:Dynamic, grad:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_matrix_determinant(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function batch_matrix_determinant_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function batch_matrix_inverse_eager_fallback(input:Dynamic, adjoint:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function batch_matrix_solve_eager_fallback(matrix:Dynamic, rhs:Dynamic, adjoint:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function batch_matrix_solve_ls_eager_fallback(matrix:Dynamic, rhs:Dynamic, l2_regularizer:Dynamic, fast:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function batch_matrix_triangular_solve_eager_fallback(matrix:Dynamic, rhs:Dynamic, lower:Dynamic, adjoint:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_self_adjoint_eig(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function batch_self_adjoint_eig_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function batch_self_adjoint_eig_v2_eager_fallback(input:Dynamic, compute_v:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function batch_svd_eager_fallback(input:Dynamic, compute_uv:Dynamic, full_matrices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function cholesky(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function cholesky_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the reverse mode backpropagated gradient of the Cholesky algorithm.
		
		For an explanation see "Differentiation of the Cholesky algorithm" by
		Iain Murray http://arxiv.org/abs/1602.07527.
		
		Args:
		  l: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
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
	static public function cholesky_grad_eager_fallback(l:Dynamic, grad:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	/**
		Computes the eigen decomposition of one or more square matrices.
		
		Computes the eigenvalues and (optionally) right eigenvectors of each inner matrix in
		`input` such that `input[..., :, :] = v[..., :, :] * diag(e[..., :])`. The eigenvalues
		are sorted in non-decreasing order.
		
		```python
		# a is a tensor.
		# e is a tensor of eigenvalues.
		# v is a tensor of eigenvectors.
		e, v = eig(a)
		e = eig(a, compute_v=False)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `complex64`, `complex128`.
		    `Tensor` input of shape `[N, N]`.
		  Tout: A `tf.DType` from: `tf.complex64, tf.complex128`.
		  compute_v: An optional `bool`. Defaults to `True`.
		    If `True` then eigenvectors will be computed and returned in `v`.
		    Otherwise, only the eigenvalues will be computed.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (e, v).
		
		  e: A `Tensor` of type `Tout`.
		  v: A `Tensor` of type `Tout`.
	**/
	static public function eig(input:Dynamic, Tout:Dynamic, ?compute_v:Dynamic, ?name:Dynamic):Dynamic;
	static public function eig_eager_fallback(input:Dynamic, Tout:Dynamic, compute_v:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Tensor contraction according to Einstein summation convention.
		
		Implements generalized Tensor contraction and reduction. Each input Tensor must
		have a corresponding input subscript appearing in the comma-separated left-hand
		side of the equation. The right-hand side of the equation consists of the
		output subscript. The input subscripts and the output subscript should consist
		of zero or more named axis labels and at most one ellipsis (`...`).
		
		The named axis labels may be any single character other than those having
		special meaning, namely `,.->`. The behavior of this Op is undefined if it
		receives an ill-formatted equation; since the validation is done at
		graph-building time, we omit format validation checks at runtime.
		
		Note: This Op is *not* intended to be called by the user; instead users should
		call `tf.einsum` directly. It is a hidden Op used by `tf.einsum`.
		
		Operations are applied to the input(s) according to the following rules:
		
		 (a) Generalized Diagonals: For input dimensions corresponding to axis labels
		     appearing more than once in the same input subscript, we take the
		     generalized (`k`-dimensional) diagonal.
		     For example, in the equation `iii->i` with input shape `[3, 3, 3]`, the
		     generalized diagonal would consist of `3` elements at indices `(0, 0, 0)`,
		     `(1, 1, 1)` and `(2, 2, 2)` to create a Tensor of shape `[3]`.
		
		 (b) Reduction: Axes corresponding to labels appearing only in one input
		     subscript but not in the output subscript are summed over prior to Tensor
		     contraction.
		     For example, in the equation `ab,bc->b`, the axis labels `a` and `c` are
		     the reduction axis labels.
		
		 (c) Batch Dimensions: Axes corresponding to labels appearing in each of the
		     input subscripts and also in the output subscript make up the batch
		     dimensions in Tensor contraction. Unnamed axis labels corresponding to
		     ellipsis (`...`) also correspond to batch dimensions.
		     For example, for the equation denoting batch matrix multiplication,
		     `bij,bjk->bik`, the axis label `b` corresponds to a batch dimension.
		
		 (d) Contraction: In case of binary einsum, axes corresponding to labels
		     appearing in two different inputs (and not in the output) are contracted
		     against each other.
		     Considering the batch matrix multiplication equation again
		     (`bij,bjk->bik`), the contracted axis label is `j`.
		
		 (e) Expand Diagonal: If the output subscripts contain repeated (explicit) axis
		     labels, the opposite operation of (a) is applied. For example, in the
		     equation `i->iii`, and input shape `[3]`, the output of shape `[3, 3, 3]`
		     are all zeros, except for the (generalized) diagonal which is populated
		     with values from the input.
		     Note: This operation is not supported by `np.einsum` or `tf.einsum`; it is
		     provided to enable computing the symbolic gradient of `tf.einsum`.
		
		The output subscripts must contain only labels appearing in at least one of the
		input subscripts. Furthermore, all dimensions mapping to the same axis label
		must be equal.
		
		Any of the input and output subscripts may contain at most a single ellipsis
		(`...`). These ellipsis are mapped against dimensions not corresponding to any
		named axis label. If two inputs contain ellipsis, then they are broadcasted
		according to standard NumPy broadcasting
		[rules](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html).
		
		The broadcasted dimensions are placed in the corresponding location of the
		ellipsis in the output subscript. If the broadcasted dimensions are non-empty
		and the output subscripts do not contain ellipsis, then an InvalidArgument error
		is raised.
		
		@compatibility(numpy)
		Similar to [`numpy.einsum`](https://docs.scipy.org/doc/numpy/reference/generated/numpy.einsum.html).
		
		Comparison with `numpy.einsum`:
		
		 * This Op only supports unary and binary forms of `numpy.einsum`.
		 * This Op does not support implicit form. (i.e. equations without `->`).
		 * This Op also supports repeated indices in the output subscript, which is not
		   supported by `numpy.einsum`.
		@end_compatibility
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with the same type.
		    List of 1 or 2 Tensors.
		  equation: A `string`.
		    String describing the Einstein Summation operation; in the format of np.einsum.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `inputs`.
	**/
	static public function einsum(inputs:Dynamic, equation:Dynamic, ?name:Dynamic):Dynamic;
	static public function einsum_eager_fallback(inputs:Dynamic, equation:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the sign and the log of the absolute value of the determinant of
		
		one or more square matrices.
		
		The input is a tensor of shape `[N, M, M]` whose inner-most 2 dimensions
		form square matrices. The outputs are two tensors containing the signs and
		absolute values of the log determinants for all N input submatrices
		`[..., :, :]` such that `determinant = sign*exp(log_abs_determinant)`.
		The `log_abs_determinant` is computed as `det(P)*sum(log(diag(LU)))` where `LU`
		is the `LU` decomposition of the input and `P` is the corresponding
		permutation matrix.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		    Shape is `[N, M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sign, log_abs_determinant).
		
		  sign: A `Tensor`. Has the same type as `input`.
		  log_abs_determinant: A `Tensor`. Has the same type as `input`.
	**/
	static public function log_matrix_determinant(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function log_matrix_determinant_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
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
	static public function lu_eager_fallback(input:Dynamic, output_idx_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the determinant of one or more square matrices.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor containing the determinants
		for all input submatrices `[..., :, :]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_determinant(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function matrix_determinant_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Deprecated, use python implementation tf.linalg.matrix_exponential.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_exponential(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function matrix_exponential_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the inverse of one or more square invertible matrices or their adjoints (conjugate transposes).
		
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor of the same shape as the input
		containing the inverse for all input submatrices `[..., :, :]`.
		
		The op uses LU decomposition with partial pivoting to compute the inverses.
		
		If a matrix is not invertible there is no guarantee what the op does. It
		may detect the condition and raise an exception or it may simply return a
		garbage result.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  adjoint: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_inverse(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	static public function matrix_inverse_eager_fallback(input:Dynamic, adjoint:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function matrix_logarithm_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Solves systems of linear equations.
		
		`Matrix` is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. `Rhs` is a tensor of shape `[..., M, K]`. The `output` is
		a tensor shape `[..., M, K]`.  If `adjoint` is `False` then each output matrix
		satisfies `matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]`.
		If `adjoint` is `True` then each output matrix satisfies
		`adjoint(matrix[..., :, :]) * output[..., :, :] = rhs[..., :, :]`.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
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
	static public function matrix_solve_eager_fallback(matrix:Dynamic, rhs:Dynamic, adjoint:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Solves one or more linear least-squares problems.
		
		`matrix` is a tensor of shape `[..., M, N]` whose inner-most 2 dimensions
		form real or complex matrices of size `[M, N]`. `Rhs` is a tensor of the same
		type as `matrix` and shape `[..., M, K]`.
		The output is a tensor shape `[..., N, K]` where each output matrix solves
		each of the equations
		`matrix[..., :, :]` * `output[..., :, :]` = `rhs[..., :, :]`
		in the least squares sense.
		
		We use the following notation for (complex) matrix and right-hand sides
		in the batch:
		
		`matrix`=\\(A \in \mathbb{C}^{m \times n}\\),
		`rhs`=\\(B  \in \mathbb{C}^{m \times k}\\),
		`output`=\\(X  \in \mathbb{C}^{n \times k}\\),
		`l2_regularizer`=\\(\lambda \in \mathbb{R}\\).
		
		If `fast` is `True`, then the solution is computed by solving the normal
		equations using Cholesky decomposition. Specifically, if \\(m \ge n\\) then
		\\(X = (A^H A + \lambda I)^{-1} A^H B\\), which solves the least-squares
		problem \\(X = \mathrm{argmin}_{Z \in \Re^{n \times k} } ||A Z - B||_F^2 + \lambda ||Z||_F^2\\).
		If \\(m \lt n\\) then `output` is computed as
		\\(X = A^H (A A^H + \lambda I)^{-1} B\\), which (for \\(\lambda = 0\\)) is the
		minimum-norm solution to the under-determined linear system, i.e.
		\\(X = \mathrm{argmin}_{Z \in \mathbb{C}^{n \times k} } ||Z||_F^2 \\),
		subject to \\(A Z = B\\). Notice that the fast path is only numerically stable
		when \\(A\\) is numerically full rank and has a condition number
		\\(\mathrm{cond}(A) \lt \frac{1}{\sqrt{\epsilon_{mach} } }\\) or \\(\lambda\\) is
		sufficiently large.
		
		If `fast` is `False` an algorithm based on the numerically robust complete
		orthogonal decomposition is used. This computes the minimum-norm
		least-squares solution, even when \\(A\\) is rank deficient. This path is
		typically 6-7 times slower than the fast path. If `fast` is `False` then
		`l2_regularizer` is ignored.
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
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
		  A `Tensor`. Has the same type as `matrix`.
	**/
	static public function matrix_solve_ls(matrix:Dynamic, rhs:Dynamic, l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic):Dynamic;
	static public function matrix_solve_ls_eager_fallback(matrix:Dynamic, rhs:Dynamic, l2_regularizer:Dynamic, fast:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_square_root(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function matrix_square_root_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Solves systems of linear equations with upper or lower triangular matrices by backsubstitution.
		
		
		`matrix` is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions form
		square matrices. If `lower` is `True` then the strictly upper triangular part
		of each inner-most matrix is assumed to be zero and not accessed.
		If `lower` is False then the strictly lower triangular part of each inner-most
		matrix is assumed to be zero and not accessed.
		`rhs` is a tensor of shape `[..., M, N]`.
		
		The output is a tensor of shape `[..., M, N]`. If `adjoint` is
		`True` then the innermost matrices in `output` satisfy matrix equations
		`matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]`.
		If `adjoint` is `False` then the strictly then the  innermost matrices in
		`output` satisfy matrix equations
		`adjoint(matrix[..., i, k]) * output[..., k, j] = rhs[..., i, j]`.
		
		Note, the batch shapes for the inputs only need to broadcast.
		
		Example:
		```python
		
		a = tf.constant([[3,  0,  0,  0],
		                 [2,  1,  0,  0],
		                 [1,  0,  1,  0],
		                 [1,  1,  1,  1]], dtype=tf.float32)
		
		b = tf.constant([[4],
		                 [2],
		                 [4],
		                 [2]], dtype=tf.float32)
		
		x = tf.linalg.triangular_solve(a, b, lower=True)
		x
		# <tf.Tensor: shape=(4, 1), dtype=float32, numpy=
		# array([[ 1.3333334 ],
		#        [-0.66666675],
		#        [ 2.6666665 ],
		#        [-1.3333331 ]], dtype=float32)>
		
		# in python3 one can use `a@x`
		tf.matmul(a, x)
		# <tf.Tensor: shape=(4, 1), dtype=float32, numpy=
		# array([[4.       ],
		#        [2.       ],
		#        [4.       ],
		#        [1.9999999]], dtype=float32)>
		```
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
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
	static public function matrix_triangular_solve_eager_fallback(matrix:Dynamic, rhs:Dynamic, lower:Dynamic, adjoint:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the QR decompositions of one or more matrices.
		
		Computes the QR decomposition of each inner matrix in `tensor` such that
		`tensor[..., :, :] = q[..., :, :] * r[..., :,:])`
		
		Currently, the gradient for the QR decomposition is well-defined only when
		the first `P` columns of the inner matrix are linearly independent, where
		`P` is the minimum of `M` and `N`, the 2 inner-most dimmensions of `tensor`.
		
		```python
		# a is a tensor.
		# q is a tensor of orthonormal matrices.
		# r is a tensor of upper triangular matrices.
		q, r = qr(a)
		q_full, r_full = qr(a, full_matrices=True)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
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
	static public function qr_eager_fallback(input:Dynamic, full_matrices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the Eigen Decomposition of a batch of square self-adjoint matrices.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices, with the same constraints as the single matrix
		SelfAdjointEig.
		
		The result is a [..., M+1, M] matrix with [..., 0,:] containing the
		eigenvalues, and subsequent [...,1:, :] containing the eigenvectors. The eigenvalues
		are sorted in non-decreasing order.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function self_adjoint_eig(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function self_adjoint_eig_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
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
	static public function self_adjoint_eig_v2_eager_fallback(input:Dynamic, compute_v:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the singular value decompositions of one or more matrices.
		
		Computes the SVD of each inner matrix in `input` such that
		`input[..., :, :] = u[..., :, :] * diag(s[..., :, :]) * transpose(v[..., :, :])`
		
		```python
		# a is a tensor containing a batch of matrices.
		# s is a tensor of singular values for each matrix.
		# u is the tensor containing the left singular vectors for each matrix.
		# v is the tensor containing the right singular vectors for each matrix.
		s, u, v = svd(a)
		s, _, _ = svd(a, compute_uv=False)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
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
		
		  s: A `Tensor`. Has the same type as `input`.
		  u: A `Tensor`. Has the same type as `input`.
		  v: A `Tensor`. Has the same type as `input`.
	**/
	static public function svd(input:Dynamic, ?compute_uv:Dynamic, ?full_matrices:Dynamic, ?name:Dynamic):Dynamic;
	static public function svd_eager_fallback(input:Dynamic, compute_uv:Dynamic, full_matrices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate product with tridiagonal matrix.
		
		Calculates product of two matrices, where left matrix is a tridiagonal matrix.
		
		Args:
		  superdiag: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    Tensor of shape `[..., 1, M]`, representing superdiagonals of
		    tri-diagonal matrices to the left of multiplication. Last element is ignored.
		  maindiag: A `Tensor`. Must have the same type as `superdiag`.
		    Tensor of shape `[..., 1, M]`, representing main diagonals of tri-diagonal
		    matrices to the left of multiplication.
		  subdiag: A `Tensor`. Must have the same type as `superdiag`.
		    Tensor of shape `[..., 1, M]`, representing subdiagonals of tri-diagonal
		    matrices to the left of multiplication. First element is ignored.
		  rhs: A `Tensor`. Must have the same type as `superdiag`.
		    Tensor of shape `[..., M, N]`, representing MxN matrices to the right of
		    multiplication.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `superdiag`.
	**/
	static public function tridiagonal_mat_mul(superdiag:Dynamic, maindiag:Dynamic, subdiag:Dynamic, rhs:Dynamic, ?name:Dynamic):Dynamic;
	static public function tridiagonal_mat_mul_eager_fallback(superdiag:Dynamic, maindiag:Dynamic, subdiag:Dynamic, rhs:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Solves tridiagonal systems of equations.
		
		  Solves tridiagonal systems of equations.
		  Supports batch dimensions and multiple right-hand sides per each left-hand
		  side.
		  On CPU, solution is computed via Gaussian elimination with or without partial
		  pivoting, depending on `partial_pivoting` attribute. On GPU, Nvidia's cuSPARSE
		  library is used: https://docs.nvidia.com/cuda/cusparse/index.html#gtsv
		  Partial pivoting is not yet supported by XLA backends.
		
		Args:
		  diagonals: A `Tensor`. Must be one of the following types: `float64`, `float32`, `complex64`, `complex128`.
		    Tensor of shape `[..., 3, M]` whose innermost 2 dimensions represent the
		    tridiagonal matrices with three rows being the superdiagonal, diagonals, and
		    subdiagonals, in order. The last element of the superdiagonal and the first
		    element of the subdiagonal is ignored.
		  rhs: A `Tensor`. Must have the same type as `diagonals`.
		    Tensor of shape `[..., M, K]`, representing K right-hand sides per each
		    left-hand side.
		  partial_pivoting: An optional `bool`. Defaults to `True`.
		    Whether to apply partial pivoting. Partial pivoting makes the procedure more
		    stable, but slower.
		  perturb_singular: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonals`.
	**/
	static public function tridiagonal_solve(diagonals:Dynamic, rhs:Dynamic, ?partial_pivoting:Dynamic, ?perturb_singular:Dynamic, ?name:Dynamic):Dynamic;
	static public function tridiagonal_solve_eager_fallback(diagonals:Dynamic, rhs:Dynamic, partial_pivoting:Dynamic, perturb_singular:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
}