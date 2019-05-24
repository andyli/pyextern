/* This file is generated, do not edit! */
package tensorflow._api.v1.compat.v1.linalg;
@:pythonImport("tensorflow._api.v1.compat.v1.linalg") extern class Linalg_Module {
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
		Transposes the last two dimensions of and conjugates tensor `matrix`.
		
		For example:
		
		```python
		x = tf.constant([[1 + 1j, 2 + 2j, 3 + 3j],
		                 [4 + 4j, 5 + 5j, 6 + 6j]])
		tf.linalg.adjoint(x)  # [[1 - 1j, 4 - 4j],
		                      #  [2 - 2j, 5 - 5j],
		                      #  [3 - 3j, 6 - 6j]]
		
		Args:
		  matrix:  A `Tensor`. Must be `float16`, `float32`, `float64`, `complex64`,
		    or `complex128` with shape `[..., M, M]`.
		  name:  A name to give this `Op` (optional).
		
		Returns:
		  The adjoint (a.k.a. Hermitian transpose a.k.a. conjugate transpose) of
		  matrix.
	**/
	static public function adjoint(matrix:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Copy a tensor setting everything outside a central band in each innermost matrix
		
		to zero.
		
		The `band` part is computed as follows:
		Assume `input` has `k` dimensions `[I, J, K, ..., M, N]`, then the output is a
		tensor with the same shape where
		
		`band[i, j, k, ..., m, n] = in_band(m, n) * input[i, j, k, ..., m, n]`.
		
		The indicator function
		
		`in_band(m, n) = (num_lower < 0 || (m-n) <= num_lower)) &&
		                 (num_upper < 0 || (n-m) <= num_upper)`.
		
		For example:
		
		```
		# if 'input' is [[ 0,  1,  2, 3]
		                 [-1,  0,  1, 2]
		                 [-2, -1,  0, 1]
		                 [-3, -2, -1, 0]],
		
		tf.matrix_band_part(input, 1, -1) ==> [[ 0,  1,  2, 3]
		                                       [-1,  0,  1, 2]
		                                       [ 0, -1,  0, 1]
		                                       [ 0,  0, -1, 0]],
		
		tf.matrix_band_part(input, 2, 1) ==> [[ 0,  1,  0, 0]
		                                      [-1,  0,  1, 0]
		                                      [-2, -1,  0, 1]
		                                      [ 0, -2, -1, 0]]
		```
		
		Useful special cases:
		
		```
		 tf.matrix_band_part(input, 0, -1) ==> Upper triangular part.
		 tf.matrix_band_part(input, -1, 0) ==> Lower triangular part.
		 tf.matrix_band_part(input, 0, 0) ==> Diagonal.
		```
		
		Args:
		  input: A `Tensor`. Rank `k` tensor.
		  num_lower: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D tensor. Number of subdiagonals to keep. If negative, keep entire
		    lower triangle.
		  num_upper: A `Tensor`. Must have the same type as `num_lower`.
		    0-D tensor. Number of superdiagonals to keep. If negative, keep
		    entire upper triangle.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function band_part(input:Dynamic, num_lower:Dynamic, num_upper:Dynamic, ?name:Dynamic):Dynamic;
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
		Compute the pairwise cross product.
		
		`a` and `b` must be the same shape; they can either be simple 3-element vectors,
		or any shape where the innermost dimension is 3. In the latter case, each pair
		of corresponding 3-element vectors is cross-multiplied independently.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    A tensor containing 3-element vectors.
		  b: A `Tensor`. Must have the same type as `a`.
		    Another tensor, of same type and shape as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function cross(a:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function det(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a batched diagonal tensor with a given batched diagonal values.
		
		Given a `diagonal`, this operation returns a tensor with the `diagonal` and
		everything else padded with zeros. The diagonal is computed as follows:
		
		Assume `diagonal` has `k` dimensions `[I, J, K, ..., N]`, then the output is a
		tensor of rank `k+1` with dimensions [I, J, K, ..., N, N]` where:
		
		`output[i, j, k, ..., m, n] = 1{m=n} * diagonal[i, j, k, ..., n]`.
		
		For example:
		
		```
		# 'diagonal' is [[1, 2, 3, 4], [5, 6, 7, 8]]
		
		and diagonal.shape = (2, 4)
		
		tf.matrix_diag(diagonal) ==> [[[1, 0, 0, 0]
		                                     [0, 2, 0, 0]
		                                     [0, 0, 3, 0]
		                                     [0, 0, 0, 4]],
		                                    [[5, 0, 0, 0]
		                                     [0, 6, 0, 0]
		                                     [0, 0, 7, 0]
		                                     [0, 0, 0, 8]]]
		
		which has shape (2, 4, 4)
		```
		
		Args:
		  diagonal: A `Tensor`. Rank `k`, where `k >= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function diag(diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the batched diagonal part of a batched tensor.
		
		This operation returns a tensor with the `diagonal` part
		of the batched `input`. The `diagonal` part is computed as follows:
		
		Assume `input` has `k` dimensions `[I, J, K, ..., M, N]`, then the output is a
		tensor of rank `k - 1` with dimensions `[I, J, K, ..., min(M, N)]` where:
		
		`diagonal[i, j, k, ..., n] = input[i, j, k, ..., n, n]`.
		
		The input must be at least a matrix.
		
		For example:
		
		```
		# 'input' is [[[1, 0, 0, 0]
		               [0, 2, 0, 0]
		               [0, 0, 3, 0]
		               [0, 0, 0, 4]],
		              [[5, 0, 0, 0]
		               [0, 6, 0, 0]
		               [0, 0, 7, 0]
		               [0, 0, 0, 8]]]
		
		and input.shape = (2, 4, 4)
		
		tf.matrix_diag_part(input) ==> [[1, 2, 3, 4], [5, 6, 7, 8]]
		
		which has shape (2, 4)
		```
		
		Args:
		  input: A `Tensor`. Rank `k` tensor where `k >= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function diag_part(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function eigh(tensor:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function eigvalsh(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A generalized contraction between tensors of arbitrary dimension.
		
		This function returns a tensor whose elements are defined by `equation`,
		which is written in a shorthand form inspired by the Einstein summation
		convention.  As an example, consider multiplying two matrices
		A and B to form a matrix C.  The elements of C are given by:
		
		```
		  C[i,k] = sum_j A[i,j] * B[j,k]
		```
		
		The corresponding `equation` is:
		
		```
		  ij,jk->ik
		```
		
		In general, the `equation` is obtained from the more familiar element-wise
		equation by
		  1. removing variable names, brackets, and commas,
		  2. replacing "*" with ",",
		  3. dropping summation signs, and
		  4. moving the output to the right, and replacing "=" with "->".
		
		Many common operations can be expressed in this way.  For example:
		
		```python
		# Matrix multiplication
		>>> einsum('ij,jk->ik', m0, m1)  # output[i,k] = sum_j m0[i,j] * m1[j, k]
		
		# Dot product
		>>> einsum('i,i->', u, v)  # output = sum_i u[i]*v[i]
		
		# Outer product
		>>> einsum('i,j->ij', u, v)  # output[i,j] = u[i]*v[j]
		
		# Transpose
		>>> einsum('ij->ji', m)  # output[j,i] = m[i,j]
		
		# Batch matrix multiplication
		>>> einsum('aij,ajk->aik', s, t)  # out[a,i,k] = sum_j s[a,i,j] * t[a, j, k]
		```
		
		This function behaves like `numpy.einsum`, but does not support:
		
		* Ellipses (subscripts like `ij...,jk...->ik...`)
		* Subscripts where an axis appears more than once for a single input
		  (e.g. `ijj,k->ik`).
		
		Args:
		  equation: a `str` describing the contraction, in the same format as
		    `numpy.einsum`.
		  *inputs: the inputs to contract (each one a `Tensor`), whose shapes should
		    be consistent with `equation`.
		  name: A name for the operation (optional).
		
		Returns:
		  The contracted `Tensor`, with shape determined by `equation`.
		
		Raises:
		  ValueError: If
		    - the format of `equation` is incorrect,
		    - the number of inputs implied by `equation` does not match `len(inputs)`,
		    - an axis appears in the output subscripts but not in any of the inputs,
		    - the number of dimensions of an input differs from the number of
		      indices in its subscript, or
		    - the input shapes are inconsistent along a particular axis.
	**/
	static public function einsum(equation:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Computes the matrix exponential of one or more square matrices.
		
		exp(A) = \sum_{n=0}^\infty A^n/n!
		
		The exponential is computed using a combination of the scaling and squaring
		method and the Pade approximation. Details can be found in:
		Nicholas J. Higham, "The scaling and squaring method for the matrix
		exponential revisited," SIAM J. Matrix Anal. Applic., 26:1179-1193, 2005.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor of the same shape as the input
		containing the exponential for all input submatrices `[..., :, :]`.
		
		Args:
		  input: A `Tensor`. Must be `float16`, `float32`, `float64`, `complex64`,
		    or `complex128` with shape `[..., M, M]`.
		  name:  A name to give this `Op` (optional).
		
		Returns:
		  the matrix exponential of the input.
		
		Raises:
		  ValueError: An unsupported type is provided as input.
		
		@compatibility(scipy)
		Equivalent to scipy.linalg.expm
		@end_compatibility
	**/
	static public function expm(input:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes the global norm of multiple tensors.
		
		Given a tuple or list of tensors `t_list`, this operation returns the
		global norm of the elements in all tensors in `t_list`. The global norm is
		computed as:
		
		`global_norm = sqrt(sum([l2norm(t)**2 for t in t_list]))`
		
		Any entries in `t_list` that are of type None are ignored.
		
		Args:
		  t_list: A tuple or list of mixed `Tensors`, `IndexedSlices`, or None.
		  name: A name for the operation (optional).
		
		Returns:
		  A 0-D (scalar) `Tensor` of type `float`.
		
		Raises:
		  TypeError: If `t_list` is not a sequence.
	**/
	static public function global_norm(t_list:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function inv(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Normalizes along dimension `axis` using an L2 norm. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		For a 1-D tensor with `axis = 0`, computes
		
		    output = x / sqrt(max(sum(x**2), epsilon))
		
		For `x` with more dimensions, independently normalizes each 1-D slice along
		dimension `axis`.
		
		Args:
		  x: A `Tensor`.
		  axis: Dimension along which to normalize.  A scalar or a vector of
		    integers.
		  epsilon: A lower bound value for the norm. Will use `sqrt(epsilon)` as the
		    divisor if `norm < sqrt(epsilon)`.
		  name: A name for this operation (optional).
		  dim: Deprecated alias for axis.
		
		Returns:
		  A `Tensor` with the same shape as `x`.
	**/
	static public function l2_normalize(x:Dynamic, ?axis:Dynamic, ?epsilon:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Computes log of the determinant of a hermitian positive definite matrix.
		
		```python
		# Compute the determinant of a matrix while reducing the chance of over- or
		underflow:
		A = ... # shape 10 x 10
		det = tf.exp(tf.logdet(A))  # scalar
		```
		
		Args:
		  matrix:  A `Tensor`. Must be `float16`, `float32`, `float64`, `complex64`,
		    or `complex128` with shape `[..., M, M]`.
		  name:  A name to give this `Op`.  Defaults to `logdet`.
		
		Returns:
		  The natural log of the determinant of `matrix`.
		
		@compatibility(numpy)
		Equivalent to numpy.linalg.slogdet, although no sign is returned since only
		hermitian positive definite matrices are supported.
		@end_compatibility
	**/
	static public function logdet(matrix:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function logm(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function lstsq(matrix:Dynamic, rhs:Dynamic, ?l2_regularizer:Dynamic, ?fast:Dynamic, ?name:Dynamic):Dynamic;
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
		Multiplies matrix `a` by matrix `b`, producing `a` * `b`.
		
		The inputs must, following any transpositions, be tensors of rank >= 2
		where the inner 2 dimensions specify valid matrix multiplication arguments,
		and any further outer dimensions match.
		
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
		# 2-D tensor `a`
		# [[1, 2, 3],
		#  [4, 5, 6]]
		a = tf.constant([1, 2, 3, 4, 5, 6], shape=[2, 3])
		
		# 2-D tensor `b`
		# [[ 7,  8],
		#  [ 9, 10],
		#  [11, 12]]
		b = tf.constant([7, 8, 9, 10, 11, 12], shape=[3, 2])
		
		# `a` * `b`
		# [[ 58,  64],
		#  [139, 154]]
		c = tf.matmul(a, b)
		
		
		# 3-D tensor `a`
		# [[[ 1,  2,  3],
		#   [ 4,  5,  6]],
		#  [[ 7,  8,  9],
		#   [10, 11, 12]]]
		a = tf.constant(np.arange(1, 13, dtype=np.int32),
		                shape=[2, 2, 3])
		
		# 3-D tensor `b`
		# [[[13, 14],
		#   [15, 16],
		#   [17, 18]],
		#  [[19, 20],
		#   [21, 22],
		#   [23, 24]]]
		b = tf.constant(np.arange(13, 25, dtype=np.int32),
		                shape=[2, 3, 2])
		
		# `a` * `b`
		# [[[ 94, 100],
		#   [229, 244]],
		#  [[508, 532],
		#   [697, 730]]]
		c = tf.matmul(a, b)
		
		# Since python >= 3.5 the @ operator is supported (see PEP 465).
		# In TensorFlow, it simply calls the `tf.matmul()` function, so the
		# following lines are equivalent:
		d = a @ b @ [[10.], [11.]]
		d = tf.matmul(tf.matmul(a, b), [[10.], [11.]])
		```
		
		Args:
		  a: `Tensor` of type `float16`, `float32`, `float64`, `int32`, `complex64`,
		    `complex128` and rank > 1.
		  b: `Tensor` with same type and rank as `a`.
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
		
		  `output`[..., i, j] = sum_k (`a`[..., i, k] * `b`[..., k, j]),
		  for all indices i, j.
		
		  Note: This is matrix product, not element-wise product.
		
		
		Raises:
		  ValueError: If transpose_a and adjoint_a, or transpose_b and adjoint_b
		    are both set to True.
	**/
	static public function matmul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies matrix `a` by vector `b`, producing `a` * `b`.
		
		The matrix `a` must, following any transpositions, be a tensor of rank >= 2,
		and we must have `shape(b) = shape(a)[:-2] + [shape(a)[-1]]`.
		
		Both `a` and `b` must be of the same type. The supported types are:
		`float16`, `float32`, `float64`, `int32`, `complex64`, `complex128`.
		
		Matrix `a` can be transposed or adjointed (conjugated and transposed) on
		the fly by setting one of the corresponding flag to `True`. These are `False`
		by default.
		
		If one or both of the inputs contain a lot of zeros, a more efficient
		multiplication algorithm can be used by setting the corresponding
		`a_is_sparse` or `b_is_sparse` flag to `True`. These are `False` by default.
		This optimization is only available for plain matrices/vectors (rank-2/1
		tensors) with datatypes `bfloat16` or `float32`.
		
		For example:
		
		```python
		# 2-D tensor `a`
		# [[1, 2, 3],
		#  [4, 5, 6]]
		a = tf.constant([1, 2, 3, 4, 5, 6], shape=[2, 3])
		
		# 1-D tensor `b`
		# [7, 9, 11]
		b = tf.constant([7, 9, 11], shape=[3])
		
		# `a` * `b`
		# [ 58,  64]
		c = tf.matvec(a, b)
		
		
		# 3-D tensor `a`
		# [[[ 1,  2,  3],
		#   [ 4,  5,  6]],
		#  [[ 7,  8,  9],
		#   [10, 11, 12]]]
		a = tf.constant(np.arange(1, 13, dtype=np.int32),
		                shape=[2, 2, 3])
		
		# 2-D tensor `b`
		# [[13, 14, 15],
		#  [16, 17, 18]]
		b = tf.constant(np.arange(13, 19, dtype=np.int32),
		                shape=[2, 3])
		
		# `a` * `b`
		# [[ 86, 212],
		#  [410, 563]]
		c = tf.matvec(a, b)
		```
		
		Args:
		  a: `Tensor` of type `float16`, `float32`, `float64`, `int32`, `complex64`,
		    `complex128` and rank > 1.
		  b: `Tensor` with same type and rank = `rank(a) - 1`.
		  transpose_a: If `True`, `a` is transposed before multiplication.
		  adjoint_a: If `True`, `a` is conjugated and transposed before
		    multiplication.
		  a_is_sparse: If `True`, `a` is treated as a sparse matrix.
		  b_is_sparse: If `True`, `b` is treated as a sparse matrix.
		  name: Name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same type as `a` and `b` where each inner-most vector is
		  the product of the corresponding matrices in `a` and vectors in `b`, e.g. if
		  all transpose or adjoint attributes are `False`:
		
		  `output`[..., i] = sum_k (`a`[..., i, k] * `b`[..., k]), for all indices i.
		
		  Note: This is matrix-vector product, not element-wise product.
		
		
		Raises:
		  ValueError: If transpose_a and adjoint_a are both set to True.
	**/
	static public function matvec(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?adjoint_a:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?name:Dynamic):Dynamic;
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
		Returns a batched matrix tensor with new batched diagonal values.
		
		Given `input` and `diagonal`, this operation returns a tensor with the
		same shape and values as `input`, except for the main diagonal of the
		innermost matrices.  These will be overwritten by the values in `diagonal`.
		
		The output is computed as follows:
		
		Assume `input` has `k+1` dimensions `[I, J, K, ..., M, N]` and `diagonal` has
		`k` dimensions `[I, J, K, ..., min(M, N)]`.  Then the output is a
		tensor of rank `k+1` with dimensions `[I, J, K, ..., M, N]` where:
		
		  * `output[i, j, k, ..., m, n] = diagonal[i, j, k, ..., n]` for `m == n`.
		  * `output[i, j, k, ..., m, n] = input[i, j, k, ..., m, n]` for `m != n`.
		
		Args:
		  input: A `Tensor`. Rank `k+1`, where `k >= 1`.
		  diagonal: A `Tensor`. Must have the same type as `input`.
		    Rank `k`, where `k >= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function set_diag(input:Dynamic, diagonal:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function slogdet(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function solve(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function sqrtm(input:Dynamic, ?name:Dynamic):Dynamic;
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
		Returns a diagonal tensor with a given diagonal values.
		
		Given a `diagonal`, this operation returns a tensor with the `diagonal` and
		everything else padded with zeros. The diagonal is computed as follows:
		
		Assume `diagonal` has dimensions [D1,..., Dk], then the output is a tensor of
		rank 2k with dimensions [D1,..., Dk, D1,..., Dk] where:
		
		`output[i1,..., ik, i1,..., ik] = diagonal[i1, ..., ik]` and 0 everywhere else.
		
		For example:
		
		```
		# 'diagonal' is [1, 2, 3, 4]
		tf.diag(diagonal) ==> [[1, 0, 0, 0]
		                       [0, 2, 0, 0]
		                       [0, 0, 3, 0]
		                       [0, 0, 0, 4]]
		```
		
		Args:
		  diagonal: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		    Rank k tensor where k is at most 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function tensor_diag(diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the diagonal part of the tensor.
		
		This operation returns a tensor with the `diagonal` part
		of the `input`. The `diagonal` part is computed as follows:
		
		Assume `input` has dimensions `[D1,..., Dk, D1,..., Dk]`, then the output is a
		tensor of rank `k` with dimensions `[D1,..., Dk]` where:
		
		`diagonal[i1,..., ik] = input[i1, ..., ik, i1,..., ik]`.
		
		For example:
		
		```
		# 'input' is [[1, 0, 0, 0]
		              [0, 2, 0, 0]
		              [0, 0, 3, 0]
		              [0, 0, 0, 4]]
		
		tf.diag_part(input) ==> [1, 2, 3, 4]
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		    Rank k tensor where k is even and not zero.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function tensor_diag_part(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Tensor contraction of a and b along specified axes.
		
		Tensordot (also known as tensor contraction) sums the product of elements
		from `a` and `b` over the indices specified by `a_axes` and `b_axes`.
		The lists `a_axes` and `b_axes` specify those pairs of axes along which to
		contract the tensors. The axis `a_axes[i]` of `a` must have the same dimension
		as axis `b_axes[i]` of `b` for all `i` in `range(0, len(a_axes))`. The lists
		`a_axes` and `b_axes` must have identical length and consist of unique
		integers that specify valid axes for each of the tensors.
		
		This operation corresponds to `numpy.tensordot(a, b, axes)`.
		
		Example 1: When `a` and `b` are matrices (order 2), the case `axes = 1`
		is equivalent to matrix multiplication.
		
		Example 2: When `a` and `b` are matrices (order 2), the case
		`axes = [[1], [0]]` is equivalent to matrix multiplication.
		
		Example 3: Suppose that \\(a_{ijk}\\) and \\(b_{lmn}\\) represent two
		tensors of order 3. Then, `contract(a, b, [[0], [2]])` is the order 4 tensor
		\\(c_{jklm}\\) whose entry
		corresponding to the indices \\((j,k,l,m)\\) is given by:
		
		\\( c_{jklm} = \sum_i a_{ijk} b_{lmi} \\).
		
		In general, `order(c) = order(a) + order(b) - 2*len(axes[0])`.
		
		Args:
		  a: `Tensor` of type `float32` or `float64`.
		  b: `Tensor` with the same type as `a`.
		  axes: Either a scalar `N`, or a list or an `int32` `Tensor` of shape [2, k].
		    If axes is a scalar, sum over the last N axes of a and the first N axes of
		    b in order. If axes is a list or `Tensor` the first and second row contain
		    the set of unique integers specifying axes along which the contraction is
		    computed, for `a` and `b`, respectively. The number of axes for `a` and
		    `b` must be equal.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as `a`.
		
		Raises:
		  ValueError: If the shapes of `a`, `b`, and `axes` are incompatible.
		  IndexError: If the values in axes exceed the rank of the corresponding
		    tensor.
	**/
	static public function tensordot(a:Dynamic, b:Dynamic, axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the trace of a tensor `x`.
		
		`trace(x)` returns the sum along the main diagonal of each inner-most matrix
		in x. If x is of rank `k` with shape `[I, J, K, ..., L, M, N]`, then output
		is a tensor of rank `k-2` with dimensions `[I, J, K, ..., L]` where
		
		`output[i, j, k, ..., l] = trace(x[i, j, i, ..., l, :, :])`
		
		For example:
		
		```python
		x = tf.constant([[1, 2], [3, 4]])
		tf.linalg.trace(x)  # 5
		
		x = tf.constant([[1, 2, 3],
		                 [4, 5, 6],
		                 [7, 8, 9]])
		tf.linalg.trace(x)  # 15
		
		x = tf.constant([[[1, 2, 3],
		                  [4, 5, 6],
		                  [7, 8, 9]],
		                 [[-1, -2, -3],
		                  [-4, -5, -6],
		                  [-7, -8, -9]]])
		tf.linalg.trace(x)  # [15, -15]
		```
		
		Args:
		  x: tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  The trace of input tensor.
	**/
	static public function trace(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transposes last two dimensions of tensor `a`.
		
		For example:
		
		```python
		x = tf.constant([[1, 2, 3], [4, 5, 6]])
		tf.linalg.transpose(x)  # [[1, 4],
		                        #  [2, 5],
		                        #  [3, 6]]
		
		x = tf.constant([[1 + 1j, 2 + 2j, 3 + 3j],
		                 [4 + 4j, 5 + 5j, 6 + 6j]])
		tf.linalg.transpose(x, conjugate=True)  # [[1 - 1j, 4 - 4j],
		                                        #  [2 - 2j, 5 - 5j],
		                                        #  [3 - 3j, 6 - 6j]]
		
		# Matrix with two batch dimensions.
		# x.shape is [1, 2, 3, 4]
		# tf.linalg.transpose(x) is shape [1, 2, 4, 3]
		```
		
		Note that `tf.matmul` provides kwargs allowing for transpose of arguments.
		This is done with minimal cost, and is preferable to using this function. E.g.
		
		```python
		# Good!  Transpose is taken at minimal additional cost.
		tf.matmul(matrix, b, transpose_b=True)
		
		# Inefficient!
		tf.matmul(matrix, tf.linalg.transpose(b))
		```
		
		@compatibility(numpy)
		In `numpy` transposes are memory-efficient constant time operations as they
		simply return a new view of the same data with adjusted `strides`.
		
		TensorFlow does not support strides, `linalg.transposes` return a new tensor
		with the items permuted.
		@end_compatibility
		
		Args:
		  a: A `Tensor` with `rank >= 2`.
		  name: A name for the operation (optional).
		  conjugate: Optional bool. Setting it to `True` is mathematically equivalent
		    to tf.conj(tf.linalg.transpose(input)).
		
		Returns:
		  A transposed batch matrix `Tensor`.
		
		Raises:
		  ValueError:  If `a` is determined statically to have `rank < 2`.
	**/
	static public function transpose(a:Dynamic, ?name:Dynamic, ?conjugate:Dynamic):Dynamic;
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
	static public function triangular_solve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
}