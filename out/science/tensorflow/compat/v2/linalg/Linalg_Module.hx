/* This file is generated, do not edit! */
package tensorflow.compat.v2.linalg;
@:pythonImport("tensorflow.compat.v2.linalg") extern class Linalg_Module {
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
		```
		
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
		Copy a tensor setting everything outside a central band in each innermost matrix to zero.
		
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
		#                [-1,  0,  1, 2]
		#                [-2, -1,  0, 1]
		#                [-3, -2, -1, 0]],
		
		tf.linalg.band_part(input, 1, -1) ==> [[ 0,  1,  2, 3]
		                                       [-1,  0,  1, 2]
		                                       [ 0, -1,  0, 1]
		                                       [ 0,  0, -1, 0]],
		
		tf.linalg.band_part(input, 2, 1) ==> [[ 0,  1,  0, 0]
		                                      [-1,  0,  1, 0]
		                                      [-2, -1,  0, 1]
		                                      [ 0, -2, -1, 0]]
		```
		
		Useful special cases:
		
		```
		 tf.linalg.band_part(input, 0, -1) ==> Upper triangular part.
		 tf.linalg.band_part(input, -1, 0) ==> Lower triangular part.
		 tf.linalg.band_part(input, 0, 0) ==> Diagonal.
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
		Solve triangular systems of equations with a banded solver.
		
		`bands` is a tensor of shape `[..., K, M]`, where `K` represents the number
		of bands stored. This corresponds to a batch of `M` by `M` matrices, whose
		`K` subdiagonals (when `lower` is `True`) are stored.
		
		This operator broadcasts the batch dimensions of `bands` and the batch
		dimensions of `rhs`.
		
		
		Examples:
		
		Storing 2 bands of a 3x3 matrix.
		Note that first element in the second row is ignored due to
		the 'LEFT_RIGHT' padding.
		
		>>> x = [[2., 3., 4.], [1., 2., 3.]]
		>>> x2 = [[2., 3., 4.], [10000., 2., 3.]]
		>>> y = tf.zeros([3, 3])
		>>> z = tf.linalg.set_diag(y, x, align='LEFT_RIGHT', k=(-1, 0))
		>>> z
		<tf.Tensor: shape=(3, 3), dtype=float32, numpy=
		array([[2., 0., 0.],
		       [2., 3., 0.],
		       [0., 3., 4.]], dtype=float32)>
		>>> soln = tf.linalg.banded_triangular_solve(x, tf.ones([3, 1]))
		>>> soln
		<tf.Tensor: shape=(3, 1), dtype=float32, numpy=
		array([[0.5 ],
		       [0.  ],
		       [0.25]], dtype=float32)>
		>>> are_equal = soln == tf.linalg.banded_triangular_solve(x2, tf.ones([3, 1]))
		>>> tf.reduce_all(are_equal).numpy()
		True
		>>> are_equal = soln == tf.linalg.triangular_solve(z, tf.ones([3, 1]))
		>>> tf.reduce_all(are_equal).numpy()
		True
		
		Storing 2 superdiagonals of a 4x4 matrix. Because of the 'LEFT_RIGHT' padding
		the last element of the first row is ignored.
		
		>>> x = [[2., 3., 4., 5.], [-1., -2., -3., -4.]]
		>>> y = tf.zeros([4, 4])
		>>> z = tf.linalg.set_diag(y, x, align='LEFT_RIGHT', k=(0, 1))
		>>> z
		<tf.Tensor: shape=(4, 4), dtype=float32, numpy=
		array([[-1.,  2.,  0.,  0.],
		       [ 0., -2.,  3.,  0.],
		       [ 0.,  0., -3.,  4.],
		       [ 0.,  0., -0., -4.]], dtype=float32)>
		>>> soln = tf.linalg.banded_triangular_solve(x, tf.ones([4, 1]), lower=False)
		>>> soln
		<tf.Tensor: shape=(4, 1), dtype=float32, numpy=
		array([[-4.       ],
		       [-1.5      ],
		       [-0.6666667],
		       [-0.25     ]], dtype=float32)>
		>>> are_equal = (soln == tf.linalg.triangular_solve(
		...   z, tf.ones([4, 1]), lower=False))
		>>> tf.reduce_all(are_equal).numpy()
		True
		
		
		Args:
		  bands: A `Tensor` describing the bands of the left hand side, with shape
		    `[..., K, M]`. The `K` rows correspond to the diagonal to the `K - 1`-th
		    diagonal (the diagonal is the top row) when `lower` is `True` and
		    otherwise the `K - 1`-th superdiagonal to the diagonal (the diagonal is
		    the bottom row) when `lower` is `False`. The bands are stored with
		    'LEFT_RIGHT' alignment, where the superdiagonals are padded on the right
		    and subdiagonals are padded on the left. This is the alignment cuSPARSE
		    uses.  See  `tf.linalg.set_diag` for more details.
		  rhs: A `Tensor` of shape [..., M] or [..., M, N] and with the same dtype as
		    `diagonals`. Note that if the shape of `rhs` and/or `diags` isn't known
		    statically, `rhs` will be treated as a matrix rather than a vector.
		  lower: An optional `bool`. Defaults to `True`. Boolean indicating whether
		    `bands` represents a lower or upper triangular matrix.
		  adjoint: An optional `bool`. Defaults to `False`. Boolean indicating whether
		    to solve with the matrix's block-wise adjoint.
		  name:  A name to give this `Op` (optional).
		
		Returns:
		  A `Tensor` of shape [..., M] or [..., M, N] containing the solutions.
	**/
	static public function banded_triangular_solve(bands:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		Solves systems of linear eqns `A X = RHS`, given Cholesky factorizations.
		
		Specifically, returns `X` from `A X = RHS`, where `A = L L^T`, `L` is the
		`chol` arg and `RHS` is the `rhs` arg.
		
		```python
		# Solve 10 separate 2x2 linear systems:
		A = ... # shape 10 x 2 x 2
		RHS = ... # shape 10 x 2 x 1
		chol = tf.linalg.cholesky(A)  # shape 10 x 2 x 2
		X = tf.linalg.cholesky_solve(chol, RHS)  # shape 10 x 2 x 1
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
		    Cholesky factorization of `A`, e.g. `chol = tf.linalg.cholesky(A)`.
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
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function det(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a batched diagonal tensor with given batched diagonal values.
		
		Returns a tensor with the contents in `diagonal` as `k[0]`-th to `k[1]`-th
		diagonals of a matrix, with everything else padded with `padding`. `num_rows`
		and `num_cols` specify the dimension of the innermost matrix of the output. If
		both are not specified, the op assumes the innermost matrix is square and
		infers its size from `k` and the innermost dimension of `diagonal`. If only
		one of them is specified, the op assumes the unspecified value is the smallest
		possible based on other criteria.
		
		Let `diagonal` have `r` dimensions `[I, J, ..., L, M, N]`. The output tensor
		has rank `r+1` with shape `[I, J, ..., L, M, num_rows, num_cols]` when only
		one diagonal is given (`k` is an integer or `k[0] == k[1]`). Otherwise, it has
		rank `r` with shape `[I, J, ..., L, num_rows, num_cols]`.
		
		The second innermost dimension of `diagonal` has double meaning. When `k` is
		scalar or `k[0] == k[1]`, `M` is part of the batch size [I, J, ..., M], and
		the output tensor is:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, n-max(d_upper, 0)] ; if n - m == d_upper
		    padding_value                             ; otherwise
		```
		
		Otherwise, `M` is treated as the number of diagonals for the matrix in the
		same batch (`M = k[1]-k[0]+1`), and the output tensor is:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, diag_index, index_in_diag] ; if k[0] <= d <= k[1]
		    padding_value                                     ; otherwise
		```
		where `d = n - m`, `diag_index = k[1] - d`, and
		`index_in_diag = n - max(d, 0) + offset`.
		
		`offset` is zero except when the alignment of the diagonal is to the right.
		```
		offset = max_diag_len - diag_len(d) ; if (`align` in {RIGHT_LEFT, RIGHT_RIGHT}
		                                           and `d >= 0`) or
		                                         (`align` in {LEFT_RIGHT, RIGHT_RIGHT}
		                                           and `d <= 0`)
		         0                          ; otherwise
		```
		where `diag_len(d) = min(cols - max(d, 0), rows + min(d, 0))`.
		
		For example:
		
		```
		# The main diagonal.
		diagonal = np.array([[1, 2, 3, 4],            # Input shape: (2, 4)
		                     [5, 6, 7, 8]])
		tf.matrix_diag(diagonal) ==> [[[1, 0, 0, 0],  # Output shape: (2, 4, 4)
		                               [0, 2, 0, 0],
		                               [0, 0, 3, 0],
		                               [0, 0, 0, 4]],
		                              [[5, 0, 0, 0],
		                               [0, 6, 0, 0],
		                               [0, 0, 7, 0],
		                               [0, 0, 0, 8]]]
		
		# A superdiagonal (per batch).
		diagonal = np.array([[1, 2, 3],  # Input shape: (2, 3)
		                     [4, 5, 6]])
		tf.matrix_diag(diagonal, k = 1)
		  ==> [[[0, 1, 0, 0],  # Output shape: (2, 4, 4)
		        [0, 0, 2, 0],
		        [0, 0, 0, 3],
		        [0, 0, 0, 0]],
		       [[0, 4, 0, 0],
		        [0, 0, 5, 0],
		        [0, 0, 0, 6],
		        [0, 0, 0, 0]]]
		
		# A tridiagonal band (per batch).
		diagonals = np.array([[[8, 9, 0],  # Input shape: (2, 2, 3)
		                       [1, 2, 3],
		                       [0, 4, 5]],
		                      [[2, 3, 0],
		                       [6, 7, 9],
		                       [0, 9, 1]]])
		tf.matrix_diag(diagonals, k = (-1, 1))
		  ==> [[[1, 8, 0],  # Output shape: (2, 3, 3)
		        [4, 2, 9],
		        [0, 5, 3]],
		       [[6, 2, 0],
		        [9, 7, 3],
		        [0, 1, 9]]]
		
		# RIGHT_LEFT alignment.
		diagonals = np.array([[[0, 8, 9],  # Input shape: (2, 2, 3)
		                       [1, 2, 3],
		                       [4, 5, 0]],
		                      [[0, 2, 3],
		                       [6, 7, 9],
		                       [9, 1, 0]]])
		tf.matrix_diag(diagonals, k = (-1, 1), align="RIGHT_LEFT")
		  ==> [[[1, 8, 0],  # Output shape: (2, 3, 3)
		        [4, 2, 9],
		        [0, 5, 3]],
		       [[6, 2, 0],
		        [9, 7, 3],
		        [0, 1, 9]]]
		
		# Rectangular matrix.
		diagonal = np.array([1, 2])  # Input shape: (2)
		tf.matrix_diag(diagonal, k = -1, num_rows = 3, num_cols = 4)
		  ==> [[0, 0, 0, 0],  # Output shape: (3, 4)
		       [1, 0, 0, 0],
		       [0, 2, 0, 0]]
		
		# Rectangular matrix with inferred num_cols and padding_value = 9.
		tf.matrix_diag(diagonal, k = -1, num_rows = 3, padding_value = 9)
		  ==> [[9, 9],  # Output shape: (3, 2)
		       [1, 9],
		       [9, 2]]
		```
		
		Args:
		  diagonal: A `Tensor` with `rank k >= 1`.
		  name: A name for the operation (optional).
		  k: Diagonal offset(s). Positive value means superdiagonal, 0 refers to the
		    main diagonal, and negative value means subdiagonals. `k` can be a single
		    integer (for a single diagonal) or a pair of integers specifying the low
		    and high ends of a matrix band. `k[0]` must not be larger than `k[1]`.
		  num_rows: The number of rows of the output matrix. If it is not provided,
		    the op assumes the output matrix is a square matrix and infers the matrix
		    size from `d_lower`, `d_upper`, and the innermost dimension of `diagonal`.
		  num_cols: The number of columns of the output matrix. If it is not provided,
		    the op assumes the output matrix is a square matrix and infers the matrix
		    size from `d_lower`, `d_upper`, and the innermost dimension of `diagonal`.
		  padding_value: The value to fill the area outside the specified diagonal
		    band with. Default is 0.
		  align: Some diagonals are shorter than `max_diag_len` and need to be padded.
		    `align` is a string specifying how superdiagonals and subdiagonals should
		    be aligned, respectively. There are four possible alignments: "RIGHT_LEFT"
		    (default), "LEFT_RIGHT", "LEFT_LEFT", and "RIGHT_RIGHT". "RIGHT_LEFT"
		    aligns superdiagonals to the right (left-pads the row) and subdiagonals to
		    the left (right-pads the row). It is the packing format LAPACK uses.
		    cuSPARSE uses "LEFT_RIGHT", which is the opposite alignment.
		
		Returns:
		  A Tensor. Has the same type as `diagonal`.
	**/
	static public function diag(diagonal:Dynamic, ?name:Dynamic, ?k:Dynamic, ?num_rows:Dynamic, ?num_cols:Dynamic, ?padding_value:Dynamic, ?align:Dynamic):Dynamic;
	/**
		Returns the batched diagonal part of a batched tensor.
		
		Returns a tensor with the `k[0]`-th to `k[1]`-th diagonals of the batched
		`input`.
		
		Assume `input` has `r` dimensions `[I, J, ..., L, M, N]`.
		Let `max_diag_len` be the maximum length among all diagonals to be extracted,
		`max_diag_len = min(M + min(k[1], 0), N + min(-k[0], 0))`
		Let `num_diags` be the number of diagonals to extract,
		`num_diags = k[1] - k[0] + 1`.
		
		If `num_diags == 1`, the output tensor is of rank `r - 1` with shape
		`[I, J, ..., L, max_diag_len]` and values:
		
		```
		diagonal[i, j, ..., l, n]
		  = input[i, j, ..., l, n+y, n+x] ; if 0 <= n+y < M and 0 <= n+x < N,
		    padding_value                 ; otherwise.
		```
		where `y = max(-k[1], 0)`, `x = max(k[1], 0)`.
		
		Otherwise, the output tensor has rank `r` with dimensions
		`[I, J, ..., L, num_diags, max_diag_len]` with values:
		
		```
		diagonal[i, j, ..., l, m, n]
		  = input[i, j, ..., l, n+y, n+x] ; if 0 <= n+y < M and 0 <= n+x < N,
		    padding_value                 ; otherwise.
		```
		where `d = k[1] - m`, `y = max(-d, 0) - offset`, and `x = max(d, 0) - offset`.
		
		`offset` is zero except when the alignment of the diagonal is to the right.
		```
		offset = max_diag_len - diag_len(d) ; if (`align` in {RIGHT_LEFT, RIGHT_RIGHT}
		                                           and `d >= 0`) or
		                                         (`align` in {LEFT_RIGHT, RIGHT_RIGHT}
		                                           and `d <= 0`)
		         0                          ; otherwise
		```
		where `diag_len(d) = min(cols - max(d, 0), rows + min(d, 0))`.
		
		The input must be at least a matrix.
		
		For example:
		
		```
		input = np.array([[[1, 2, 3, 4],  # Input shape: (2, 3, 4)
		                   [5, 6, 7, 8],
		                   [9, 8, 7, 6]],
		                  [[5, 4, 3, 2],
		                   [1, 2, 3, 4],
		                   [5, 6, 7, 8]]])
		
		# A main diagonal from each batch.
		tf.linalg.diag_part(input) ==> [[1, 6, 7],  # Output shape: (2, 3)
		                                [5, 2, 7]]
		
		# A superdiagonal from each batch.
		tf.linalg.diag_part(input, k = 1)
		  ==> [[2, 7, 6],  # Output shape: (2, 3)
		       [4, 3, 8]]
		
		# A band from each batch.
		tf.linalg.diag_part(input, k = (-1, 2))
		  ==> [[[3, 8, 0],  # Output shape: (2, 4, 3)
		        [2, 7, 6],
		        [1, 6, 7],
		        [0, 5, 8]],
		       [[3, 4, 0],
		        [4, 3, 8],
		        [5, 2, 7],
		        [0, 1, 6]]]
		
		# RIGHT_LEFT alignment.
		tf.linalg.diag_part(input, k = (-1, 2), align="RIGHT_LEFT")
		  ==> [[[0, 3, 8],  # Output shape: (2, 4, 3)
		        [2, 7, 6],
		        [1, 6, 7],
		        [5, 8, 0]],
		       [[0, 3, 4],
		        [4, 3, 8],
		        [5, 2, 7],
		        [1, 6, 0]]]
		
		# max_diag_len can be shorter than the main diagonal.
		tf.linalg.diag_part(input, k = (-2, -1))
		  ==> [[[5, 8],
		        [0, 9]],
		       [[1, 6],
		        [0, 5]]]
		
		# padding_value = 9
		tf.linalg.diag_part(input, k = (1, 3), padding_value = 9)
		  ==> [[[4, 9, 9],  # Output shape: (2, 3, 3)
		        [3, 8, 9],
		        [2, 7, 6]],
		       [[2, 9, 9],
		        [3, 4, 9],
		        [4, 3, 8]]]
		
		```
		
		Args:
		  input: A `Tensor` with `rank k >= 2`.
		  name: A name for the operation (optional).
		  k: Diagonal offset(s). Positive value means superdiagonal, 0 refers to the
		    main diagonal, and negative value means subdiagonals. `k` can be a single
		    integer (for a single diagonal) or a pair of integers specifying the low
		    and high ends of a matrix band. `k[0]` must not be larger than `k[1]`.
		  padding_value: The value to fill the area outside the specified diagonal
		    band with. Default is 0.
		  align: Some diagonals are shorter than `max_diag_len` and need to be padded.
		    `align` is a string specifying how superdiagonals and subdiagonals should
		    be aligned, respectively. There are four possible alignments: "RIGHT_LEFT"
		    (default), "LEFT_RIGHT", "LEFT_LEFT", and "RIGHT_RIGHT". "RIGHT_LEFT"
		    aligns superdiagonals to the right (left-pads the row) and subdiagonals to
		    the left (right-pads the row). It is the packing format LAPACK uses.
		    cuSPARSE uses "LEFT_RIGHT", which is the opposite alignment.
		
		Returns:
		  A Tensor containing diagonals of `input`. Has the same type as `input`.
		
		Raises:
		  InvalidArgumentError: When `k` is out of bound or when `k[0]>k[1:]`.
	**/
	static public function diag_part(input:Dynamic, ?name:Dynamic, ?k:Dynamic, ?padding_value:Dynamic, ?align:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of a batch of matrices.
		
		The eigenvalues
		and eigenvectors for a non-Hermitian matrix in general are complex. The
		eigenvectors are not guaranteed to be linearly independent.
		
		Computes the eigenvalues and right eigenvectors of the innermost
		N-by-N matrices in `tensor` such that
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
	static public function eig(tensor:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes the eigenvalues of a Hermitian tridiagonal matrix.
		
		Args:
		  alpha: A real or complex tensor of shape (n), the diagonal elements of the
		    matrix. NOTE: If alpha is complex, the imaginary part is ignored (assumed
		      zero) to satisfy the requirement that the matrix be Hermitian.
		  beta: A real or complex tensor of shape (n-1), containing the elements of
		    the first super-diagonal of the matrix. If beta is complex, the first
		    sub-diagonal of the matrix is assumed to be the conjugate of beta to
		    satisfy the requirement that the matrix be Hermitian
		  eigvals_only: If False, both eigenvalues and corresponding eigenvectors are
		    computed. If True, only eigenvalues are computed. Default is True.
		  select: Optional string with values in {‘a’, ‘v’, ‘i’} (default is 'a') that
		    determines which eigenvalues to calculate:
		      'a': all eigenvalues.
		      ‘v’: eigenvalues in the interval (min, max] given by `select_range`.
		      'i’: eigenvalues with indices min <= i <= max.
		  select_range: Size 2 tuple or list or tensor specifying the range of
		    eigenvalues to compute together with select. If select is 'a',
		    select_range is ignored.
		  tol: Optional scalar. The absolute tolerance to which each eigenvalue is
		    required. An eigenvalue (or cluster) is considered to have converged if it
		    lies in an interval of this width. If tol is None (default), the value
		    eps*|T|_2 is used where eps is the machine precision, and |T|_2 is the
		    2-norm of the matrix T.
		  name: Optional name of the op.
		
		Returns:
		  eig_vals: The eigenvalues of the matrix in non-decreasing order.
		  eig_vectors: If `eigvals_only` is False the eigenvectors are returned in
		    the second output argument.
		
		Raises:
		   ValueError: If input values are invalid.
		   NotImplemented: Computing eigenvectors for `eigvals_only` = False is
		     not implemented yet.
		
		This op implements a subset of the functionality of
		scipy.linalg.eigh_tridiagonal.
		
		Note: The result is undefined if the input contains +/-inf or NaN, or if
		any value in beta has a magnitude greater than
		`numpy.sqrt(numpy.finfo(beta.dtype.as_numpy_dtype).max)`.
		
		
		TODO(b/187527398):
		  Add support for outer batch dimensions.
		
		#### Examples
		
		```python
		import numpy
		eigvals = tf.linalg.eigh_tridiagonal([0.0, 0.0, 0.0], [1.0, 1.0])
		eigvals_expected = [-numpy.sqrt(2.0), 0.0, numpy.sqrt(2.0)]
		tf.assert_near(eigvals_expected, eigvals)
		# ==> True
		```
	**/
	static public function eigh_tridiagonal(alpha:Dynamic, beta:Dynamic, ?eigvals_only:Dynamic, ?select:Dynamic, ?select_range:Dynamic, ?tol:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigenvalues of one or more matrices.
		
		Note: If your program backpropagates through this function, you should replace
		it with a call to tf.linalg.eig (possibly ignoring the second output) to
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
	static public function eigvals(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigenvalues of one or more self-adjoint matrices.
		
		Note: If your program backpropagates through this function, you should replace
		it with a call to tf.linalg.eigh (possibly ignoring the second output) to
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
		Tensor contraction over specified indices and outer product.
		
		Einsum allows defining Tensors by defining their element-wise computation.
		This computation is defined by `equation`, a shorthand form based on Einstein
		summation. As an example, consider multiplying two matrices A and B to form a
		matrix C.  The elements of C are given by:
		
		$$ C_{i,k} = \sum_j A_{i,j} B_{j,k} $$
		
		or
		
		```
		C[i,k] = sum_j A[i,j] * B[j,k]
		```
		
		The corresponding einsum `equation` is:
		
		```
		ij,jk->ik
		```
		
		In general, to convert the element-wise equation into the `equation` string,
		use the following procedure (intermediate strings for matrix multiplication
		example provided in parentheses):
		
		1. remove variable names, brackets, and commas, (`ik = sum_j ij * jk`)
		2. replace "*" with ",", (`ik = sum_j ij , jk`)
		3. drop summation signs, and (`ik = ij, jk`)
		4. move the output to the right, while replacing "=" with "->". (`ij,jk->ik`)
		
		Note: If the output indices are not specified repeated indices are summed.
		So `ij,jk->ik` can be simplified to `ij,jk`.
		
		Many common operations can be expressed in this way.  For example:
		
		**Matrix multiplication**
		
		>>> m0 = tf.random.normal(shape=[2, 3])
		>>> m1 = tf.random.normal(shape=[3, 5])
		>>> e = tf.einsum('ij,jk->ik', m0, m1)
		>>> # output[i,k] = sum_j m0[i,j] * m1[j, k]
		>>> print(e.shape)
		(2, 5)
		
		Repeated indices are summed if the output indices are not specified.
		
		>>> e = tf.einsum('ij,jk', m0, m1)  # output[i,k] = sum_j m0[i,j] * m1[j, k]
		>>> print(e.shape)
		(2, 5)
		
		
		**Dot product**
		
		>>> u = tf.random.normal(shape=[5])
		>>> v = tf.random.normal(shape=[5])
		>>> e = tf.einsum('i,i->', u, v)  # output = sum_i u[i]*v[i]
		>>> print(e.shape)
		()
		
		**Outer product**
		
		>>> u = tf.random.normal(shape=[3])
		>>> v = tf.random.normal(shape=[5])
		>>> e = tf.einsum('i,j->ij', u, v)  # output[i,j] = u[i]*v[j]
		>>> print(e.shape)
		(3, 5)
		
		**Transpose**
		
		>>> m = tf.ones(2,3)
		>>> e = tf.einsum('ij->ji', m0)  # output[j,i] = m0[i,j]
		>>> print(e.shape)
		(3, 2)
		
		**Diag**
		
		>>> m = tf.reshape(tf.range(9), [3,3])
		>>> diag = tf.einsum('ii->i', m)
		>>> print(diag.shape)
		(3,)
		
		**Trace**
		
		>>> # Repeated indices are summed.
		>>> trace = tf.einsum('ii', m)  # output[j,i] = trace(m) = sum_i m[i, i]
		>>> assert trace == sum(diag)
		>>> print(trace.shape)
		()
		
		**Batch matrix multiplication**
		
		>>> s = tf.random.normal(shape=[7,5,3])
		>>> t = tf.random.normal(shape=[7,3,2])
		>>> e = tf.einsum('bij,bjk->bik', s, t)
		>>> # output[a,i,k] = sum_j s[a,i,j] * t[a, j, k]
		>>> print(e.shape)
		(7, 5, 2)
		
		This method does not support broadcasting on named-axes. All axes with
		matching labels should have the same length. If you have length-1 axes,
		use `tf.squeseze` or `tf.reshape` to eliminate them.
		
		To write code that is agnostic to the number of indices in the input
		use an ellipsis. The ellipsis is a placeholder for "whatever other indices
		fit here".
		
		For example, to perform a NumPy-style broadcasting-batch-matrix multiplication
		where the matrix multiply acts on the last two axes of the input, use:
		
		>>> s = tf.random.normal(shape=[11, 7, 5, 3])
		>>> t = tf.random.normal(shape=[11, 7, 3, 2])
		>>> e =  tf.einsum('...ij,...jk->...ik', s, t)
		>>> print(e.shape)
		(11, 7, 5, 2)
		
		Einsum **will** broadcast over axes covered by the ellipsis.
		
		>>> s = tf.random.normal(shape=[11, 1, 5, 3])
		>>> t = tf.random.normal(shape=[1, 7, 3, 2])
		>>> e =  tf.einsum('...ij,...jk->...ik', s, t)
		>>> print(e.shape)
		(11, 7, 5, 2)
		
		Args:
		  equation: a `str` describing the contraction, in the same format as
		    `numpy.einsum`.
		  *inputs: the inputs to contract (each one a `Tensor`), whose shapes should
		    be consistent with `equation`.
		  **kwargs:
		    - optimize: Optimization strategy to use to find contraction path using
		      opt_einsum. Must be 'greedy', 'optimal', 'branch-2', 'branch-all' or
		        'auto'. (optional, default: 'greedy').
		    - name: A name for the operation (optional).
		
		Returns:
		  The contracted `Tensor`, with shape determined by `equation`.
		
		Raises:
		  ValueError: If
		    - the format of `equation` is incorrect,
		    - number of inputs or their shapes are inconsistent with `equation`.
	**/
	static public function einsum(equation:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Computes the matrix exponential of one or more square matrices.
		
		$$exp(A) = \sum_{n=0}^\infty A^n/n!$$
		
		The exponential is computed using a combination of the scaling and squaring
		method and the Pade approximation. Details can be found in:
		Nicholas J. Higham, "The scaling and squaring method for the matrix
		exponential revisited," SIAM J. Matrix Anal. Applic., 26:1179-1193, 2005.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor of the same shape as the input
		containing the exponential for all input submatrices `[..., :, :]`.
		
		Args:
		  input: A `Tensor`. Must be `float16`, `float32`, `float64`, `complex64`, or
		    `complex128` with shape `[..., M, M]`.
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
		
		See also `tf.ones`, `tf.zeros`, `tf.fill`, `tf.one_hot`.
		
		```python
		# Construct one identity matrix.
		tf.eye(2)
		==> [[1., 0.],
		     [0., 1.]]
		
		# Construct a batch of 3 identity matrices, each 2 x 2.
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
		
		1-D tensor example:
		>>> x = tf.constant([3.0, 4.0])
		>>> tf.math.l2_normalize(x).numpy()
		array([0.6, 0.8], dtype=float32)
		
		2-D tensor example:
		>>> x = tf.constant([[3.0], [4.0]])
		>>> tf.math.l2_normalize(x, 0).numpy()
		array([[0.6],
		     [0.8]], dtype=float32)
		
		>>> x = tf.constant([[3.0], [4.0]])
		>>> tf.math.l2_normalize(x, 1).numpy()
		array([[1.],
		     [1.]], dtype=float32)
		
		Args:
		  x: A `Tensor`.
		  axis: Dimension along which to normalize.  A scalar or a vector of
		    integers.
		  epsilon: A lower bound value for the norm. Will use `sqrt(epsilon)` as the
		    divisor if `norm < sqrt(epsilon)`.
		  name: A name for this operation (optional).
		  dim: Deprecated, do not use.
		
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
		det = tf.exp(tf.linalg.logdet(A))  # scalar
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
	/**
		Computes the inverse given the LU decomposition(s) of one or more matrices.
		
		This op is conceptually identical to,
		
		```python
		inv_X = tf.lu_matrix_inverse(*tf.linalg.lu(X))
		tf.assert_near(tf.matrix_inverse(X), inv_X)
		# ==> True
		```
		
		Note: this function does not verify the implied matrix is actually invertible
		nor is this condition checked even when `validate_args=True`.
		
		Args:
		  lower_upper: `lu` as returned by `tf.linalg.lu`, i.e., if `matmul(P,
		    matmul(L, U)) = X` then `lower_upper = L + U - eye`.
		  perm: `p` as returned by `tf.linag.lu`, i.e., if `matmul(P, matmul(L, U)) =
		    X` then `perm = argmax(P)`.
		  validate_args: Python `bool` indicating whether arguments should be checked
		    for correctness. Note: this function does not verify the implied matrix is
		      actually invertible, even when `validate_args=True`.
		    Default value: `False` (i.e., don't validate arguments).
		  name: Python `str` name given to ops managed by this object.
		    Default value: `None` (i.e., 'lu_matrix_inverse').
		
		Returns:
		  inv_x: The matrix_inv, i.e.,
		    `tf.matrix_inverse(tf.linalg.lu_reconstruct(lu, perm))`.
		
		#### Examples
		
		```python
		import numpy as np
		import tensorflow as tf
		import tensorflow_probability as tfp
		
		x = [[[3., 4], [1, 2]],
		     [[7., 8], [3, 4]]]
		inv_x = tf.linalg.lu_matrix_inverse(*tf.linalg.lu(x))
		tf.assert_near(tf.matrix_inverse(x), inv_x)
		# ==> True
		```
	**/
	static public function lu_matrix_inverse(lower_upper:Dynamic, perm:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The reconstruct one or more matrices from their LU decomposition(s).
		
		Args:
		  lower_upper: `lu` as returned by `tf.linalg.lu`, i.e., if `matmul(P,
		    matmul(L, U)) = X` then `lower_upper = L + U - eye`.
		  perm: `p` as returned by `tf.linag.lu`, i.e., if `matmul(P, matmul(L, U)) =
		    X` then `perm = argmax(P)`.
		  validate_args: Python `bool` indicating whether arguments should be checked
		    for correctness.
		    Default value: `False` (i.e., don't validate arguments).
		  name: Python `str` name given to ops managed by this object.
		    Default value: `None` (i.e., 'lu_reconstruct').
		
		Returns:
		  x: The original input to `tf.linalg.lu`, i.e., `x` as in,
		    `lu_reconstruct(*tf.linalg.lu(x))`.
		
		#### Examples
		
		```python
		import numpy as np
		import tensorflow as tf
		import tensorflow_probability as tfp
		
		x = [[[3., 4], [1, 2]],
		     [[7., 8], [3, 4]]]
		x_reconstructed = tf.linalg.lu_reconstruct(*tf.linalg.lu(x))
		tf.assert_near(x, x_reconstructed)
		# ==> True
		```
	**/
	static public function lu_reconstruct(lower_upper:Dynamic, perm:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves systems of linear eqns `A X = RHS`, given LU factorizations.
		
		Note: this function does not verify the implied matrix is actually invertible
		nor is this condition checked even when `validate_args=True`.
		
		Args:
		  lower_upper: `lu` as returned by `tf.linalg.lu`, i.e., if `matmul(P,
		    matmul(L, U)) = X` then `lower_upper = L + U - eye`.
		  perm: `p` as returned by `tf.linag.lu`, i.e., if `matmul(P, matmul(L, U)) =
		    X` then `perm = argmax(P)`.
		  rhs: Matrix-shaped float `Tensor` representing targets for which to solve;
		    `A X = RHS`. To handle vector cases, use: `lu_solve(..., rhs[...,
		      tf.newaxis])[..., 0]`.
		  validate_args: Python `bool` indicating whether arguments should be checked
		    for correctness. Note: this function does not verify the implied matrix is
		      actually invertible, even when `validate_args=True`.
		    Default value: `False` (i.e., don't validate arguments).
		  name: Python `str` name given to ops managed by this object.
		    Default value: `None` (i.e., 'lu_solve').
		
		Returns:
		  x: The `X` in `A @ X = RHS`.
		
		#### Examples
		
		```python
		import numpy as np
		import tensorflow as tf
		import tensorflow_probability as tfp
		
		x = [[[1., 2],
		      [3, 4]],
		     [[7, 8],
		      [3, 4]]]
		inv_x = tf.linalg.lu_solve(*tf.linalg.lu(x), rhs=tf.eye(2))
		tf.assert_near(tf.matrix_inverse(x), inv_x)
		# ==> True
		```
	**/
	static public function lu_solve(lower_upper:Dynamic, perm:Dynamic, rhs:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies matrix `a` by matrix `b`, producing `a` * `b`.
		
		The inputs must, following any transpositions, be tensors of rank >= 2
		where the inner 2 dimensions specify valid matrix multiplication dimensions,
		and any further outer dimensions specify matching batch size.
		
		Both matrices must be of the same type. The supported types are:
		`bfloat16`, `float16`, `float32`, `float64`, `int32`, `int64`,
		`complex64`, `complex128`.
		
		Either matrix can be transposed or adjointed (conjugated and transposed) on
		the fly by setting one of the corresponding flag to `True`. These are `False`
		by default.
		
		If one or both of the matrices contain a lot of zeros, a more efficient
		multiplication algorithm can be used by setting the corresponding
		`a_is_sparse` or `b_is_sparse` flag to `True`. These are `False` by default.
		This optimization is only available for plain matrices (rank-2 tensors) with
		datatypes `bfloat16` or `float32`.
		
		A simple 2-D tensor matrix multiplication:
		
		>>> a = tf.constant([1, 2, 3, 4, 5, 6], shape=[2, 3])
		>>> a  # 2-D tensor
		<tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		array([[1, 2, 3],
		       [4, 5, 6]], dtype=int32)>
		>>> b = tf.constant([7, 8, 9, 10, 11, 12], shape=[3, 2])
		>>> b  # 2-D tensor
		<tf.Tensor: shape=(3, 2), dtype=int32, numpy=
		array([[ 7,  8],
		       [ 9, 10],
		       [11, 12]], dtype=int32)>
		>>> c = tf.matmul(a, b)
		>>> c  # `a` * `b`
		<tf.Tensor: shape=(2, 2), dtype=int32, numpy=
		array([[ 58,  64],
		       [139, 154]], dtype=int32)>
		
		A batch matrix multiplication with batch shape [2]:
		
		>>> a = tf.constant(np.arange(1, 13, dtype=np.int32), shape=[2, 2, 3])
		>>> a  # 3-D tensor
		<tf.Tensor: shape=(2, 2, 3), dtype=int32, numpy=
		array([[[ 1,  2,  3],
		        [ 4,  5,  6]],
		       [[ 7,  8,  9],
		        [10, 11, 12]]], dtype=int32)>
		>>> b = tf.constant(np.arange(13, 25, dtype=np.int32), shape=[2, 3, 2])
		>>> b  # 3-D tensor
		<tf.Tensor: shape=(2, 3, 2), dtype=int32, numpy=
		array([[[13, 14],
		        [15, 16],
		        [17, 18]],
		       [[19, 20],
		        [21, 22],
		        [23, 24]]], dtype=int32)>
		>>> c = tf.matmul(a, b)
		>>> c  # `a` * `b`
		<tf.Tensor: shape=(2, 2, 2), dtype=int32, numpy=
		array([[[ 94, 100],
		        [229, 244]],
		       [[508, 532],
		        [697, 730]]], dtype=int32)>
		
		Since python >= 3.5 the @ operator is supported
		(see [PEP 465](https://www.python.org/dev/peps/pep-0465/)). In TensorFlow,
		it simply calls the `tf.matmul()` function, so the following lines are
		equivalent:
		
		>>> d = a @ b @ [[10], [11]]
		>>> d = tf.matmul(tf.matmul(a, b), [[10], [11]])
		
		Args:
		  a: `tf.Tensor` of type `float16`, `float32`, `float64`, `int32`,
		    `complex64`, `complex128` and rank > 1.
		  b: `tf.Tensor` with same type and rank as `a`.
		  transpose_a: If `True`, `a` is transposed before multiplication.
		  transpose_b: If `True`, `b` is transposed before multiplication.
		  adjoint_a: If `True`, `a` is conjugated and transposed before
		    multiplication.
		  adjoint_b: If `True`, `b` is conjugated and transposed before
		    multiplication.
		  a_is_sparse: If `True`, `a` is treated as a sparse matrix. Notice, this
		    **does not support `tf.sparse.SparseTensor`**, it just makes optimizations
		    that assume most values in `a` are zero.
		    See `tf.sparse.sparse_dense_matmul`
		    for some support for `tf.sparse.SparseTensor` multiplication.
		  b_is_sparse: If `True`, `b` is treated as a sparse matrix. Notice, this
		    **does not support `tf.sparse.SparseTensor`**, it just makes optimizations
		    that assume most values in `a` are zero.
		    See `tf.sparse.sparse_dense_matmul`
		    for some support for `tf.sparse.SparseTensor` multiplication.
		  output_type: The output datatype if needed. Defaults to None in which case
		    the output_type is the same as input type. Currently only works when input
		    tensors are type (u)int8 and output_type can be int32.
		  name: Name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of the same type as `a` and `b` where each inner-most matrix
		  is the product of the corresponding matrices in `a` and `b`, e.g. if all
		  transpose or adjoint attributes are `False`:
		
		  `output[..., i, j] = sum_k (a[..., i, k] * b[..., k, j])`,
		  for all indices `i`, `j`.
		
		  Note: This is matrix product, not element-wise product.
		
		
		Raises:
		  ValueError: If `transpose_a` and `adjoint_a`, or `transpose_b` and
		    `adjoint_b` are both set to `True`.
		  TypeError: If output_type is specified but the types of `a`, `b` and
		    `output_type` is not (u)int8, (u)int8 and int32.
	**/
	static public function matmul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the matrix rank of one or more matrices.
		
		Args:
		  a: (Batch of) `float`-like matrix-shaped `Tensor`(s) which are to be
		    pseudo-inverted.
		  tol: Threshold below which the singular value is counted as 'zero'.
		    Default value: `None` (i.e., `eps * max(rows, cols) * max(singular_val)`).
		  validate_args: When `True`, additional assertions might be embedded in the
		    graph.
		    Default value: `False` (i.e., no graph assertions are added).
		  name: Python `str` prefixed to ops created by this function.
		    Default value: 'matrix_rank'.
		
		Returns:
		  matrix_rank: (Batch of) `int32` scalars representing the number of non-zero
		    singular values.
	**/
	static public function matrix_rank(a:Dynamic, ?tol:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transposes last two dimensions of tensor `a`.
		
		For example:
		
		```python
		x = tf.constant([[1, 2, 3], [4, 5, 6]])
		tf.linalg.matrix_transpose(x)  # [[1, 4],
		                               #  [2, 5],
		                               #  [3, 6]]
		
		x = tf.constant([[1 + 1j, 2 + 2j, 3 + 3j],
		                 [4 + 4j, 5 + 5j, 6 + 6j]])
		tf.linalg.matrix_transpose(x, conjugate=True)  # [[1 - 1j, 4 - 4j],
		                                               #  [2 - 2j, 5 - 5j],
		                                               #  [3 - 3j, 6 - 6j]]
		
		# Matrix with two batch dimensions.
		# x.shape is [1, 2, 3, 4]
		# tf.linalg.matrix_transpose(x) is shape [1, 2, 4, 3]
		```
		
		Note that `tf.matmul` provides kwargs allowing for transpose of arguments.
		This is done with minimal cost, and is preferable to using this function. E.g.
		
		```python
		# Good!  Transpose is taken at minimal additional cost.
		tf.matmul(matrix, b, transpose_b=True)
		
		# Inefficient!
		tf.matmul(matrix, tf.linalg.matrix_transpose(b))
		```
		
		@compatibility(numpy)
		In `numpy` transposes are memory-efficient constant time operations as they
		simply return a new view of the same data with adjusted `strides`.
		
		TensorFlow does not support strides, `linalg.matrix_transpose` returns a new
		tensor with the items permuted.
		@end_compatibility
		
		Args:
		  a: A `Tensor` with `rank >= 2`.
		  name: A name for the operation (optional).
		  conjugate: Optional bool. Setting it to `True` is mathematically equivalent
		    to tf.math.conj(tf.linalg.matrix_transpose(input)).
		
		Returns:
		  A transposed batch matrix `Tensor`.
		
		Raises:
		  ValueError:  If `a` is determined statically to have `rank < 2`.
	**/
	static public function matrix_transpose(a:Dynamic, ?name:Dynamic, ?conjugate:Dynamic):Dynamic;
	/**
		Multiplies matrix `a` by vector `b`, producing `a` * `b`.
		
		The matrix `a` must, following any transpositions, be a tensor of rank >= 2,
		with `shape(a)[-1] == shape(b)[-1]`, and `shape(a)[:-2]` able to broadcast
		with `shape(b)[:-1]`.
		
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
		c = tf.linalg.matvec(a, b)
		
		
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
		c = tf.linalg.matvec(a, b)
		```
		
		Args:
		  a: `Tensor` of type `float16`, `float32`, `float64`, `int32`, `complex64`,
		    `complex128` and rank > 1.
		  b: `Tensor` with same type as `a` and compatible dimensions.
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
		Computes the norm of vectors, matrices, and tensors.
		
		This function can compute several different vector norms (the 1-norm, the
		Euclidean or 2-norm, the inf-norm, and in general the p-norm for p > 0) and
		matrix norms (Frobenius, 1-norm, 2-norm and inf-norm).
		
		Args:
		  tensor: `Tensor` of types `float32`, `float64`, `complex64`, `complex128`
		  ord: Order of the norm. Supported values are `'fro'`, `'euclidean'`,
		    `1`, `2`, `np.inf` and any positive real number yielding the corresponding
		    p-norm. Default is `'euclidean'` which is equivalent to Frobenius norm if
		    `tensor` is a matrix and equivalent to 2-norm for vectors.
		    Some restrictions apply:
		      a) The Frobenius norm `'fro'` is not defined for vectors,
		      b) If axis is a 2-tuple (matrix norm), only `'euclidean'`, '`fro'`, `1`,
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
	static public function norm(tensor:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Normalizes `tensor` along dimension `axis` using specified norm.
		
		This uses `tf.linalg.norm` to compute the norm along `axis`.
		
		This function can compute several different vector norms (the 1-norm, the
		Euclidean or 2-norm, the inf-norm, and in general the p-norm for p > 0) and
		matrix norms (Frobenius, 1-norm, 2-norm and inf-norm).
		
		Args:
		  tensor: `Tensor` of types `float32`, `float64`, `complex64`, `complex128`
		  ord: Order of the norm. Supported values are `'fro'`, `'euclidean'`, `1`,
		    `2`, `np.inf` and any positive real number yielding the corresponding
		    p-norm. Default is `'euclidean'` which is equivalent to Frobenius norm if
		    `tensor` is a matrix and equivalent to 2-norm for vectors.
		    Some restrictions apply: a) The Frobenius norm `'fro'` is not defined for
		      vectors, b) If axis is a 2-tuple (matrix norm), only `'euclidean'`,
		      '`fro'`, `1`, `2`, `np.inf` are supported. See the description of `axis`
		      on how to compute norms for a batch of vectors or matrices stored in a
		      tensor.
		  axis: If `axis` is `None` (the default), the input is considered a vector
		    and a single vector norm is computed over the entire set of values in the
		    tensor, i.e. `norm(tensor, ord=ord)` is equivalent to
		    `norm(reshape(tensor, [-1]), ord=ord)`. If `axis` is a Python integer, the
		    input is considered a batch of vectors, and `axis` determines the axis in
		    `tensor` over which to compute vector norms. If `axis` is a 2-tuple of
		    Python integers it is considered a batch of matrices and `axis` determines
		    the axes in `tensor` over which to compute a matrix norm.
		    Negative indices are supported. Example: If you are passing a tensor that
		      can be either a matrix or a batch of matrices at runtime, pass
		      `axis=[-2,-1]` instead of `axis=None` to make sure that matrix norms are
		      computed.
		  name: The name of the op.
		
		Returns:
		  normalized: A normalized `Tensor` with the same shape as `tensor`.
		  norm: The computed norms with the same shape and dtype `tensor` but the
		    final axis is 1 instead. Same as running
		    `tf.cast(tf.linalg.norm(tensor, ord, axis keepdims=True), tensor.dtype)`.
		
		Raises:
		  ValueError: If `ord` or `axis` is invalid.
	**/
	static public function normalize(tensor:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the Moore-Penrose pseudo-inverse of one or more matrices.
		
		Calculate the [generalized inverse of a matrix](
		https://en.wikipedia.org/wiki/Moore%E2%80%93Penrose_inverse) using its
		singular-value decomposition (SVD) and including all large singular values.
		
		The pseudo-inverse of a matrix `A`, is defined as: 'the matrix that 'solves'
		[the least-squares problem] `A @ x = b`,' i.e., if `x_hat` is a solution, then
		`A_pinv` is the matrix such that `x_hat = A_pinv @ b`. It can be shown that if
		`U @ Sigma @ V.T = A` is the singular value decomposition of `A`, then
		`A_pinv = V @ inv(Sigma) U^T`. [(Strang, 1980)][1]
		
		This function is analogous to [`numpy.linalg.pinv`](
		https://docs.scipy.org/doc/numpy/reference/generated/numpy.linalg.pinv.html).
		It differs only in default value of `rcond`. In `numpy.linalg.pinv`, the
		default `rcond` is `1e-15`. Here the default is
		`10. * max(num_rows, num_cols) * np.finfo(dtype).eps`.
		
		Args:
		  a: (Batch of) `float`-like matrix-shaped `Tensor`(s) which are to be
		    pseudo-inverted.
		  rcond: `Tensor` of small singular value cutoffs.  Singular values smaller
		    (in modulus) than `rcond` * largest_singular_value (again, in modulus) are
		    set to zero. Must broadcast against `tf.shape(a)[:-2]`.
		    Default value: `10. * max(num_rows, num_cols) * np.finfo(a.dtype).eps`.
		  validate_args: When `True`, additional assertions might be embedded in the
		    graph.
		    Default value: `False` (i.e., no graph assertions are added).
		  name: Python `str` prefixed to ops created by this function.
		    Default value: 'pinv'.
		
		Returns:
		  a_pinv: (Batch of) pseudo-inverse of input `a`. Has same shape as `a` except
		    rightmost two dimensions are transposed.
		
		Raises:
		  TypeError: if input `a` does not have `float`-like `dtype`.
		  ValueError: if input `a` has fewer than 2 dimensions.
		
		#### Examples
		
		```python
		import tensorflow as tf
		import tensorflow_probability as tfp
		
		a = tf.constant([[1.,  0.4,  0.5],
		                 [0.4, 0.2,  0.25],
		                 [0.5, 0.25, 0.35]])
		tf.matmul(tf.linalg..pinv(a), a)
		# ==> array([[1., 0., 0.],
		             [0., 1., 0.],
		             [0., 0., 1.]], dtype=float32)
		
		a = tf.constant([[1.,  0.4,  0.5,  1.],
		                 [0.4, 0.2,  0.25, 2.],
		                 [0.5, 0.25, 0.35, 3.]])
		tf.matmul(tf.linalg..pinv(a), a)
		# ==> array([[ 0.76,  0.37,  0.21, -0.02],
		             [ 0.37,  0.43, -0.33,  0.02],
		             [ 0.21, -0.33,  0.81,  0.01],
		             [-0.02,  0.02,  0.01,  1.  ]], dtype=float32)
		```
		
		#### References
		
		[1]: G. Strang. 'Linear Algebra and Its Applications, 2nd Ed.' Academic Press,
		     Inc., 1980, pp. 139-142.
	**/
	static public function pinv(a:Dynamic, ?rcond:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		Returns a batched matrix tensor with new batched diagonal values.
		
		Given `input` and `diagonal`, this operation returns a tensor with the
		same shape and values as `input`, except for the specified diagonals of the
		innermost matrices. These will be overwritten by the values in `diagonal`.
		
		`input` has `r+1` dimensions `[I, J, ..., L, M, N]`. When `k` is scalar or
		`k[0] == k[1]`, `diagonal` has `r` dimensions `[I, J, ..., L, max_diag_len]`.
		Otherwise, it has `r+1` dimensions `[I, J, ..., L, num_diags, max_diag_len]`.
		`num_diags` is the number of diagonals, `num_diags = k[1] - k[0] + 1`.
		`max_diag_len` is the longest diagonal in the range `[k[0], k[1]]`,
		`max_diag_len = min(M + min(k[1], 0), N + min(-k[0], 0))`
		
		The output is a tensor of rank `k+1` with dimensions `[I, J, ..., L, M, N]`.
		If `k` is scalar or `k[0] == k[1]`:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, n-max(k[1], 0)] ; if n - m == k[1]
		    input[i, j, ..., l, m, n]              ; otherwise
		```
		
		Otherwise,
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, diag_index, index_in_diag] ; if k[0] <= d <= k[1]
		    input[i, j, ..., l, m, n]                         ; otherwise
		```
		where `d = n - m`, `diag_index = k[1] - d`, and
		`index_in_diag = n - max(d, 0) + offset`.
		
		`offset` is zero except when the alignment of the diagonal is to the right.
		```
		offset = max_diag_len - diag_len(d) ; if (`align` in {RIGHT_LEFT, RIGHT_RIGHT}
		                                           and `d >= 0`) or
		                                         (`align` in {LEFT_RIGHT, RIGHT_RIGHT}
		                                           and `d <= 0`)
		         0                          ; otherwise
		```
		where `diag_len(d) = min(cols - max(d, 0), rows + min(d, 0))`.
		
		For example:
		
		```
		# The main diagonal.
		input = np.array([[[7, 7, 7, 7],              # Input shape: (2, 3, 4)
		                   [7, 7, 7, 7],
		                   [7, 7, 7, 7]],
		                  [[7, 7, 7, 7],
		                   [7, 7, 7, 7],
		                   [7, 7, 7, 7]]])
		diagonal = np.array([[1, 2, 3],               # Diagonal shape: (2, 3)
		                     [4, 5, 6]])
		tf.matrix_set_diag(input, diagonal)
		  ==> [[[1, 7, 7, 7],  # Output shape: (2, 3, 4)
		        [7, 2, 7, 7],
		        [7, 7, 3, 7]],
		       [[4, 7, 7, 7],
		        [7, 5, 7, 7],
		        [7, 7, 6, 7]]]
		
		# A superdiagonal (per batch).
		tf.matrix_set_diag(input, diagonal, k = 1)
		  ==> [[[7, 1, 7, 7],  # Output shape: (2, 3, 4)
		        [7, 7, 2, 7],
		        [7, 7, 7, 3]],
		       [[7, 4, 7, 7],
		        [7, 7, 5, 7],
		        [7, 7, 7, 6]]]
		
		# A band of diagonals.
		diagonals = np.array([[[9, 1, 0],  # Diagonal shape: (2, 4, 3)
		                       [6, 5, 8],
		                       [1, 2, 3],
		                       [0, 4, 5]],
		                      [[1, 2, 0],
		                       [5, 6, 4],
		                       [6, 1, 2],
		                       [0, 3, 4]]])
		tf.matrix_set_diag(input, diagonals, k = (-1, 2))
		  ==> [[[1, 6, 9, 7],  # Output shape: (2, 3, 4)
		        [4, 2, 5, 1],
		        [7, 5, 3, 8]],
		       [[6, 5, 1, 7],
		        [3, 1, 6, 2],
		        [7, 4, 2, 4]]]
		
		# RIGHT_LEFT alignment.
		diagonals = np.array([[[0, 9, 1],  # Diagonal shape: (2, 4, 3)
		                       [6, 5, 8],
		                       [1, 2, 3],
		                       [4, 5, 0]],
		                      [[0, 1, 2],
		                       [5, 6, 4],
		                       [6, 1, 2],
		                       [3, 4, 0]]])
		tf.matrix_set_diag(input, diagonals, k = (-1, 2), align="RIGHT_LEFT")
		  ==> [[[1, 6, 9, 7],  # Output shape: (2, 3, 4)
		        [4, 2, 5, 1],
		        [7, 5, 3, 8]],
		       [[6, 5, 1, 7],
		        [3, 1, 6, 2],
		        [7, 4, 2, 4]]]
		
		```
		
		Args:
		  input: A `Tensor` with rank `k + 1`, where `k >= 1`.
		  diagonal:  A `Tensor` with rank `k`, when `d_lower == d_upper`, or `k + 1`,
		    otherwise. `k >= 1`.
		  name: A name for the operation (optional).
		  k: Diagonal offset(s). Positive value means superdiagonal, 0 refers to the
		    main diagonal, and negative value means subdiagonals. `k` can be a single
		    integer (for a single diagonal) or a pair of integers specifying the low
		    and high ends of a matrix band. `k[0]` must not be larger than `k[1]`.
		  align: Some diagonals are shorter than `max_diag_len` and need to be padded.
		    `align` is a string specifying how superdiagonals and subdiagonals should
		    be aligned, respectively. There are four possible alignments: "RIGHT_LEFT"
		    (default), "LEFT_RIGHT", "LEFT_LEFT", and "RIGHT_RIGHT". "RIGHT_LEFT"
		    aligns superdiagonals to the right (left-pads the row) and subdiagonals to
		    the left (right-pads the row). It is the packing format LAPACK uses.
		    cuSPARSE uses "LEFT_RIGHT", which is the opposite alignment.
	**/
	static public function set_diag(input:Dynamic, diagonal:Dynamic, ?name:Dynamic, ?k:Dynamic, ?align:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
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
		
		For a rank 2 tensor, `linalg.diag_part` and `linalg.tensor_diag_part`
		produce the same result. For rank 3 and higher, linalg.diag_part extracts
		the diagonal of each inner-most matrix in the tensor. An example where
		they differ is given below.
		
		>>> x = [[[[1111,1112],[1121,1122]],
		...       [[1211,1212],[1221,1222]]],
		...      [[[2111, 2112], [2121, 2122]],
		...       [[2211, 2212], [2221, 2222]]]
		...      ]
		>>> tf.linalg.tensor_diag_part(x)
		<tf.Tensor: shape=(2, 2), dtype=int32, numpy=
		array([[1111, 1212],
		       [2121, 2222]], dtype=int32)>
		>>> tf.linalg.diag_part(x).shape
		TensorShape([2, 2, 2])
		
		Args:
		  input: A `Tensor` with rank `2k`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor containing diagonals of `input`. Has the same type as `input`, and
		  rank `k`.
	**/
	static public function tensor_diag_part(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Tensor contraction of a and b along specified axes and outer product.
		
		Tensordot (also known as tensor contraction) sums the product of elements
		from `a` and `b` over the indices specified by `axes`.
		
		This operation corresponds to `numpy.tensordot(a, b, axes)`.
		
		Example 1: When `a` and `b` are matrices (order 2), the case `axes=1`
		is equivalent to matrix multiplication.
		
		Example 2: When `a` and `b` are matrices (order 2), the case
		`axes = [[1], [0]]` is equivalent to matrix multiplication.
		
		Example 3: When `a` and `b` are matrices (order 2), the case `axes=0` gives
		the outer product, a tensor of order 4.
		
		Example 4: Suppose that \\(a_{ijk}\\) and \\(b_{lmn}\\) represent two
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
		    `b` must be equal. If `axes=0`, computes the outer product between `a` and
		    `b`.
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
		
		`output[i, j, k, ..., l] = trace(x[i, j, k, ..., l, :, :])`
		
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
		Solve systems of linear equations with upper or lower triangular matrices.
		
		`matrix` is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions form
		square matrices. If `lower` is `True` then the strictly upper triangular part
		of each inner-most matrix is assumed to be zero and not accessed. If `lower`
		is `False` then the strictly lower triangular part of each inner-most matrix
		is assumed to be zero and not accessed. `rhs` is a tensor of shape
		`[..., M, N]`.
		
		The output is a tensor of shape `[..., M, N]`. If `adjoint` is `True` then the
		innermost matrices in output satisfy matrix equations `
		sum_k matrix[..., i, k] * output[..., k, j] = rhs[..., i, j]`.
		If `adjoint` is `False` then the
		innermost matrices in output satisfy matrix equations
		`sum_k adjoint(matrix[..., i, k]) * output[..., k, j] = rhs[..., i, j]`.
		
		Example:
		
		>>> a = tf.constant([[3,  0,  0,  0],
		...   [2,  1,  0,  0],
		...   [1,  0,  1,  0],
		...   [1,  1,  1,  1]], dtype=tf.float32)
		
		>>> b = tf.constant([[4], [2], [4], [2]], dtype=tf.float32)
		>>> x = tf.linalg.triangular_solve(a, b, lower=True)
		>>> x
		<tf.Tensor: shape=(4, 1), dtype=float32, numpy=
		array([[ 1.3333334 ],
		       [-0.66666675],
		       [ 2.6666665 ],
		       [-1.3333331 ]], dtype=float32)>
		>>> tf.matmul(a, x)
		<tf.Tensor: shape=(4, 1), dtype=float32, numpy=
		array([[4.],
		       [2.],
		       [4.],
		       [2.]], dtype=float32)>
		
		Args:
		  matrix: A `Tensor`. Must be one of the following types: `float64`,
		    `float32`, `half`, `complex64`, `complex128`. Shape is `[..., M, M]`.
		  rhs: A `Tensor`. Must have the same type as `matrix`. Shape is `[..., M,
		    N]`.
		  lower: An optional `bool`. Defaults to `True`. Boolean indicating whether
		    the innermost matrices in matrix are lower or upper triangular.
		  adjoint: An optional `bool`. Defaults to `False`. Boolean indicating whether
		    to solve with matrix or its (block-wise) adjoint.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as matrix, and shape is `[..., M, N]`.
	**/
	static public function triangular_solve(matrix:Dynamic, rhs:Dynamic, ?lower:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies tridiagonal matrix by matrix.
		
		`diagonals` is representation of 3-diagonal NxN matrix, which depends on
		`diagonals_format`.
		
		In `matrix` format, `diagonals` must be a tensor of shape `[..., M, M]`, with
		two inner-most dimensions representing the square tridiagonal matrices.
		Elements outside of the three diagonals will be ignored.
		
		If `sequence` format, `diagonals` is list or tuple of three tensors:
		`[superdiag, maindiag, subdiag]`, each having shape [..., M]. Last element
		of `superdiag` first element of `subdiag` are ignored.
		
		In `compact` format the three diagonals are brought together into one tensor
		of shape `[..., 3, M]`, with last two dimensions containing superdiagonals,
		diagonals, and subdiagonals, in order. Similarly to `sequence` format,
		elements `diagonals[..., 0, M-1]` and `diagonals[..., 2, 0]` are ignored.
		
		The `sequence` format is recommended as the one with the best performance.
		
		`rhs` is matrix to the right of multiplication. It has shape `[..., M, N]`.
		
		Example:
		
		```python
		superdiag = tf.constant([-1, -1, 0], dtype=tf.float64)
		maindiag = tf.constant([2, 2, 2], dtype=tf.float64)
		subdiag = tf.constant([0, -1, -1], dtype=tf.float64)
		diagonals = [superdiag, maindiag, subdiag]
		rhs = tf.constant([[1, 1], [1, 1], [1, 1]], dtype=tf.float64)
		x = tf.linalg.tridiagonal_matmul(diagonals, rhs, diagonals_format='sequence')
		```
		
		Args:
		  diagonals: A `Tensor` or tuple of `Tensor`s describing left-hand sides. The
		    shape depends of `diagonals_format`, see description above. Must be
		    `float32`, `float64`, `complex64`, or `complex128`.
		  rhs: A `Tensor` of shape [..., M, N] and with the same dtype as `diagonals`.
		  diagonals_format: one of `sequence`, or `compact`. Default is `compact`.
		  name:  A name to give this `Op` (optional).
		
		Returns:
		  A `Tensor` of shape [..., M, N] containing the result of multiplication.
		
		Raises:
		  ValueError: An unsupported type is provided as input, or when the input
		  tensors have incorrect shapes.
	**/
	static public function tridiagonal_matmul(diagonals:Dynamic, rhs:Dynamic, ?diagonals_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves tridiagonal systems of equations.
		
		The input can be supplied in various formats: `matrix`, `sequence` and
		`compact`, specified by the `diagonals_format` arg.
		
		In `matrix` format, `diagonals` must be a tensor of shape `[..., M, M]`, with
		two inner-most dimensions representing the square tridiagonal matrices.
		Elements outside of the three diagonals will be ignored.
		
		In `sequence` format, `diagonals` are supplied as a tuple or list of three
		tensors of shapes `[..., N]`, `[..., M]`, `[..., N]` representing
		superdiagonals, diagonals, and subdiagonals, respectively. `N` can be either
		`M-1` or `M`; in the latter case, the last element of superdiagonal and the
		first element of subdiagonal will be ignored.
		
		In `compact` format the three diagonals are brought together into one tensor
		of shape `[..., 3, M]`, with last two dimensions containing superdiagonals,
		diagonals, and subdiagonals, in order. Similarly to `sequence` format,
		elements `diagonals[..., 0, M-1]` and `diagonals[..., 2, 0]` are ignored.
		
		The `compact` format is recommended as the one with best performance. In case
		you need to cast a tensor into a compact format manually, use `tf.gather_nd`.
		An example for a tensor of shape [m, m]:
		
		```python
		rhs = tf.constant([...])
		matrix = tf.constant([[...]])
		m = matrix.shape[0]
		dummy_idx = [0, 0]  # An arbitrary element to use as a dummy
		indices = [[[i, i + 1] for i in range(m - 1)] + [dummy_idx],  # Superdiagonal
		         [[i, i] for i in range(m)],                          # Diagonal
		         [dummy_idx] + [[i + 1, i] for i in range(m - 1)]]    # Subdiagonal
		diagonals=tf.gather_nd(matrix, indices)
		x = tf.linalg.tridiagonal_solve(diagonals, rhs)
		```
		
		Regardless of the `diagonals_format`, `rhs` is a tensor of shape `[..., M]` or
		`[..., M, K]`. The latter allows to simultaneously solve K systems with the
		same left-hand sides and K different right-hand sides. If `transpose_rhs`
		is set to `True` the expected shape is `[..., M]` or `[..., K, M]`.
		
		The batch dimensions, denoted as `...`, must be the same in `diagonals` and
		`rhs`.
		
		The output is a tensor of the same shape as `rhs`: either `[..., M]` or
		`[..., M, K]`.
		
		The op isn't guaranteed to raise an error if the input matrix is not
		invertible. `tf.debugging.check_numerics` can be applied to the output to
		detect invertibility problems.
		
		**Note**: with large batch sizes, the computation on the GPU may be slow, if
		either `partial_pivoting=True` or there are multiple right-hand sides
		(`K > 1`). If this issue arises, consider if it's possible to disable pivoting
		and have `K = 1`, or, alternatively, consider using CPU.
		
		On CPU, solution is computed via Gaussian elimination with or without partial
		pivoting, depending on `partial_pivoting` parameter. On GPU, Nvidia's cuSPARSE
		library is used: https://docs.nvidia.com/cuda/cusparse/index.html#gtsv
		
		Args:
		  diagonals: A `Tensor` or tuple of `Tensor`s describing left-hand sides. The
		    shape depends of `diagonals_format`, see description above. Must be
		    `float32`, `float64`, `complex64`, or `complex128`.
		  rhs: A `Tensor` of shape [..., M] or [..., M, K] and with the same dtype as
		    `diagonals`. Note that if the shape of `rhs` and/or `diags` isn't known
		    statically, `rhs` will be treated as a matrix rather than a vector.
		  diagonals_format: one of `matrix`, `sequence`, or `compact`. Default is
		    `compact`.
		  transpose_rhs: If `True`, `rhs` is transposed before solving (has no effect
		    if the shape of rhs is [..., M]).
		  conjugate_rhs: If `True`, `rhs` is conjugated before solving.
		  name:  A name to give this `Op` (optional).
		  partial_pivoting: whether to perform partial pivoting. `True` by default.
		    Partial pivoting makes the procedure more stable, but slower. Partial
		    pivoting is unnecessary in some cases, including diagonally dominant and
		    symmetric positive definite matrices (see e.g. theorem 9.12 in [1]).
		  perturb_singular: whether to perturb singular matrices to return a finite
		    result. `False` by default. If true, solutions to systems involving
		    a singular matrix will be computed by perturbing near-zero pivots in
		    the partially pivoted LU decomposition. Specifically, tiny pivots are
		    perturbed by an amount of order `eps * max_{ij} |U(i,j)|` to avoid
		    overflow. Here `U` is the upper triangular part of the LU decomposition,
		    and `eps` is the machine precision. This is useful for solving
		    numerically singular systems when computing eigenvectors by inverse
		    iteration.
		    If `partial_pivoting` is `False`, `perturb_singular` must be `False` as
		    well.
		
		Returns:
		  A `Tensor` of shape [..., M] or [..., M, K] containing the solutions.
		  If the input matrix is singular, the result is undefined.
		
		Raises:
		  ValueError: Is raised if any of the following conditions hold:
		    1. An unsupported type is provided as input,
		    2. the input tensors have incorrect shapes,
		    3. `perturb_singular` is `True` but `partial_pivoting` is not.
		  UnimplementedError: Whenever `partial_pivoting` is true and the backend is
		    XLA, or whenever `perturb_singular` is true and the backend is
		    XLA or GPU.
		
		[1] Nicholas J. Higham (2002). Accuracy and Stability of Numerical Algorithms:
		Second Edition. SIAM. p. 175. ISBN 978-0-89871-802-7.
	**/
	static public function tridiagonal_solve(diagonals:Dynamic, rhs:Dynamic, ?diagonals_format:Dynamic, ?transpose_rhs:Dynamic, ?conjugate_rhs:Dynamic, ?name:Dynamic, ?partial_pivoting:Dynamic, ?perturb_singular:Dynamic):Dynamic;
}