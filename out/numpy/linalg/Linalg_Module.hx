/* This file is generated, do not edit! */
package numpy.linalg;
@:pythonImport("numpy.linalg") extern class Linalg_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Cholesky decomposition.
		
		Return the Cholesky decomposition, `L * L.H`, of the square matrix `a`,
		where `L` is lower-triangular and .H is the conjugate transpose operator
		(which is the ordinary transpose if `a` is real-valued).  `a` must be
		Hermitian (symmetric if real-valued) and positive-definite.  Only `L` is
		actually returned.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Hermitian (symmetric if all elements are real), positive-definite
		    input matrix.
		
		Returns
		-------
		L : (..., M, M) array_like
		    Upper or lower-triangular Cholesky factor of `a`.  Returns a
		    matrix object if `a` is a matrix object.
		
		Raises
		------
		LinAlgError
		   If the decomposition fails, for example, if `a` is not
		   positive-definite.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		The Cholesky decomposition is often used as a fast way of solving
		
		.. math:: A \mathbf{x} = \mathbf{b}
		
		(when `A` is both Hermitian/symmetric and positive-definite).
		
		First, we solve for :math:`\mathbf{y}` in
		
		.. math:: L \mathbf{y} = \mathbf{b},
		
		and then for :math:`\mathbf{x}` in
		
		.. math:: L.H \mathbf{x} = \mathbf{y}.
		
		Examples
		--------
		>>> A = np.array([[1,-2j],[2j,5]])
		>>> A
		array([[ 1.+0.j,  0.-2.j],
		       [ 0.+2.j,  5.+0.j]])
		>>> L = np.linalg.cholesky(A)
		>>> L
		array([[ 1.+0.j,  0.+0.j],
		       [ 0.+2.j,  1.+0.j]])
		>>> np.dot(L, L.T.conj()) # verify that L * L.H = A
		array([[ 1.+0.j,  0.-2.j],
		       [ 0.+2.j,  5.+0.j]])
		>>> A = [[1,-2j],[2j,5]] # what happens if A is only array_like?
		>>> np.linalg.cholesky(A) # an ndarray object is returned
		array([[ 1.+0.j,  0.+0.j],
		       [ 0.+2.j,  1.+0.j]])
		>>> # But a matrix object is returned if A is a matrix object
		>>> LA.cholesky(np.matrix(A))
		matrix([[ 1.+0.j,  0.+0.j],
		        [ 0.+2.j,  1.+0.j]])
	**/
	static public function cholesky(a:Dynamic):Dynamic;
	/**
		Compute the condition number of a matrix.
		
		This function is capable of returning the condition number using
		one of seven different norms, depending on the value of `p` (see
		Parameters below).
		
		Parameters
		----------
		x : (..., M, N) array_like
		    The matrix whose condition number is sought.
		p : {None, 1, -1, 2, -2, inf, -inf, 'fro'}, optional
		    Order of the norm:
		
		    =====  ============================
		    p      norm for matrices
		    =====  ============================
		    None   2-norm, computed directly using the ``SVD``
		    'fro'  Frobenius norm
		    inf    max(sum(abs(x), axis=1))
		    -inf   min(sum(abs(x), axis=1))
		    1      max(sum(abs(x), axis=0))
		    -1     min(sum(abs(x), axis=0))
		    2      2-norm (largest sing. value)
		    -2     smallest singular value
		    =====  ============================
		
		    inf means the numpy.inf object, and the Frobenius norm is
		    the root-of-sum-of-squares norm.
		
		Returns
		-------
		c : {float, inf}
		    The condition number of the matrix. May be infinite.
		
		See Also
		--------
		numpy.linalg.norm
		
		Notes
		-----
		The condition number of `x` is defined as the norm of `x` times the
		norm of the inverse of `x` [1]_; the norm can be the usual L2-norm
		(root-of-sum-of-squares) or one of a number of other matrix norms.
		
		References
		----------
		.. [1] G. Strang, *Linear Algebra and Its Applications*, Orlando, FL,
		       Academic Press, Inc., 1980, pg. 285.
		
		Examples
		--------
		>>> from numpy import linalg as LA
		>>> a = np.array([[1, 0, -1], [0, 1, 0], [1, 0, 1]])
		>>> a
		array([[ 1,  0, -1],
		       [ 0,  1,  0],
		       [ 1,  0,  1]])
		>>> LA.cond(a)
		1.4142135623730951
		>>> LA.cond(a, 'fro')
		3.1622776601683795
		>>> LA.cond(a, np.inf)
		2.0
		>>> LA.cond(a, -np.inf)
		1.0
		>>> LA.cond(a, 1)
		2.0
		>>> LA.cond(a, -1)
		1.0
		>>> LA.cond(a, 2)
		1.4142135623730951
		>>> LA.cond(a, -2)
		0.70710678118654746
		>>> min(LA.svd(a, compute_uv=0))*min(LA.svd(LA.inv(a), compute_uv=0))
		0.70710678118654746
	**/
	static public function cond(x:Dynamic, ?p:Dynamic):Dynamic;
	/**
		Compute the determinant of an array.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Input array to compute determinants for.
		
		Returns
		-------
		det : (...) array_like
		    Determinant of `a`.
		
		See Also
		--------
		slogdet : Another way to represent the determinant, more suitable
		  for large matrices where underflow/overflow may occur.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		The determinant is computed via LU factorization using the LAPACK
		routine z/dgetrf.
		
		Examples
		--------
		The determinant of a 2-D array [[a, b], [c, d]] is ad - bc:
		
		>>> a = np.array([[1, 2], [3, 4]])
		>>> np.linalg.det(a)
		-2.0
		
		Computing determinants for a stack of matrices:
		
		>>> a = np.array([ [[1, 2], [3, 4]], [[1, 2], [2, 1]], [[1, 3], [3, 1]] ])
		>>> a.shape
		(3, 2, 2)
		>>> np.linalg.det(a)
		array([-2., -3., -8.])
	**/
	static public function det(a:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Compute the eigenvalues and right eigenvectors of a square array.
		
		Parameters
		----------
		a : (..., M, M) array
		    Matrices for which the eigenvalues and right eigenvectors will
		    be computed
		
		Returns
		-------
		w : (..., M) array
		    The eigenvalues, each repeated according to its multiplicity.
		    The eigenvalues are not necessarily ordered. The resulting
		    array will be of complex type, unless the imaginary part is
		    zero in which case it will be cast to a real type. When `a`
		    is real the resulting eigenvalues will be real (0 imaginary
		    part) or occur in conjugate pairs
		
		v : (..., M, M) array
		    The normalized (unit "length") eigenvectors, such that the
		    column ``v[:,i]`` is the eigenvector corresponding to the
		    eigenvalue ``w[i]``.
		
		Raises
		------
		LinAlgError
		    If the eigenvalue computation does not converge.
		
		See Also
		--------
		eigvals : eigenvalues of a non-symmetric array.
		
		eigh : eigenvalues and eigenvectors of a symmetric or Hermitian
		       (conjugate symmetric) array.
		
		eigvalsh : eigenvalues of a symmetric or Hermitian (conjugate symmetric)
		           array.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		This is implemented using the _geev LAPACK routines which compute
		the eigenvalues and eigenvectors of general square arrays.
		
		The number `w` is an eigenvalue of `a` if there exists a vector
		`v` such that ``dot(a,v) = w * v``. Thus, the arrays `a`, `w`, and
		`v` satisfy the equations ``dot(a[:,:], v[:,i]) = w[i] * v[:,i]``
		for :math:`i \in \{0,...,M-1\}`.
		
		The array `v` of eigenvectors may not be of maximum rank, that is, some
		of the columns may be linearly dependent, although round-off error may
		obscure that fact. If the eigenvalues are all different, then theoretically
		the eigenvectors are linearly independent. Likewise, the (complex-valued)
		matrix of eigenvectors `v` is unitary if the matrix `a` is normal, i.e.,
		if ``dot(a, a.H) = dot(a.H, a)``, where `a.H` denotes the conjugate
		transpose of `a`.
		
		Finally, it is emphasized that `v` consists of the *right* (as in
		right-hand side) eigenvectors of `a`.  A vector `y` satisfying
		``dot(y.T, a) = z * y.T`` for some number `z` is called a *left*
		eigenvector of `a`, and, in general, the left and right eigenvectors
		of a matrix are not necessarily the (perhaps conjugate) transposes
		of each other.
		
		References
		----------
		G. Strang, *Linear Algebra and Its Applications*, 2nd Ed., Orlando, FL,
		Academic Press, Inc., 1980, Various pp.
		
		Examples
		--------
		>>> from numpy import linalg as LA
		
		(Almost) trivial example with real e-values and e-vectors.
		
		>>> w, v = LA.eig(np.diag((1, 2, 3)))
		>>> w; v
		array([ 1.,  2.,  3.])
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
		
		Real matrix possessing complex e-values and e-vectors; note that the
		e-values are complex conjugates of each other.
		
		>>> w, v = LA.eig(np.array([[1, -1], [1, 1]]))
		>>> w; v
		array([ 1. + 1.j,  1. - 1.j])
		array([[ 0.70710678+0.j        ,  0.70710678+0.j        ],
		       [ 0.00000000-0.70710678j,  0.00000000+0.70710678j]])
		
		Complex-valued matrix with real e-values (but complex-valued e-vectors);
		note that a.conj().T = a, i.e., a is Hermitian.
		
		>>> a = np.array([[1, 1j], [-1j, 1]])
		>>> w, v = LA.eig(a)
		>>> w; v
		array([  2.00000000e+00+0.j,   5.98651912e-36+0.j]) # i.e., {2, 0}
		array([[ 0.00000000+0.70710678j,  0.70710678+0.j        ],
		       [ 0.70710678+0.j        ,  0.00000000+0.70710678j]])
		
		Be careful about round-off error!
		
		>>> a = np.array([[1 + 1e-9, 0], [0, 1 - 1e-9]])
		>>> # Theor. e-values are 1 +/- 1e-9
		>>> w, v = LA.eig(a)
		>>> w; v
		array([ 1.,  1.])
		array([[ 1.,  0.],
		       [ 0.,  1.]])
	**/
	static public function eig(a:Dynamic):Dynamic;
	/**
		Return the eigenvalues and eigenvectors of a Hermitian or symmetric matrix.
		
		Returns two objects, a 1-D array containing the eigenvalues of `a`, and
		a 2-D square array or matrix (depending on the input type) of the
		corresponding eigenvectors (in columns).
		
		Parameters
		----------
		a : (..., M, M) array
		    Hermitian/Symmetric matrices whose eigenvalues and
		    eigenvectors are to be computed.
		UPLO : {'L', 'U'}, optional
		    Specifies whether the calculation is done with the lower triangular
		    part of `a` ('L', default) or the upper triangular part ('U').
		    Irrespective of this value only the real parts of the diagonal will
		    be considered in the computation to preserve the notion of a Hermitian
		    matrix. It therefore follows that the imaginary part of the diagonal
		    will always be treated as zero.
		
		Returns
		-------
		w : (..., M) ndarray
		    The eigenvalues in ascending order, each repeated according to
		    its multiplicity.
		v : {(..., M, M) ndarray, (..., M, M) matrix}
		    The column ``v[:, i]`` is the normalized eigenvector corresponding
		    to the eigenvalue ``w[i]``.  Will return a matrix object if `a` is
		    a matrix object.
		
		Raises
		------
		LinAlgError
		    If the eigenvalue computation does not converge.
		
		See Also
		--------
		eigvalsh : eigenvalues of symmetric or Hermitian arrays.
		eig : eigenvalues and right eigenvectors for non-symmetric arrays.
		eigvals : eigenvalues of non-symmetric arrays.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		The eigenvalues/eigenvectors are computed using LAPACK routines _syevd,
		_heevd
		
		The eigenvalues of real symmetric or complex Hermitian matrices are
		always real. [1]_ The array `v` of (column) eigenvectors is unitary
		and `a`, `w`, and `v` satisfy the equations
		``dot(a, v[:, i]) = w[i] * v[:, i]``.
		
		References
		----------
		.. [1] G. Strang, *Linear Algebra and Its Applications*, 2nd Ed., Orlando,
		       FL, Academic Press, Inc., 1980, pg. 222.
		
		Examples
		--------
		>>> from numpy import linalg as LA
		>>> a = np.array([[1, -2j], [2j, 5]])
		>>> a
		array([[ 1.+0.j,  0.-2.j],
		       [ 0.+2.j,  5.+0.j]])
		>>> w, v = LA.eigh(a)
		>>> w; v
		array([ 0.17157288,  5.82842712])
		array([[-0.92387953+0.j        , -0.38268343+0.j        ],
		       [ 0.00000000+0.38268343j,  0.00000000-0.92387953j]])
		
		>>> np.dot(a, v[:, 0]) - w[0] * v[:, 0] # verify 1st e-val/vec pair
		array([2.77555756e-17 + 0.j, 0. + 1.38777878e-16j])
		>>> np.dot(a, v[:, 1]) - w[1] * v[:, 1] # verify 2nd e-val/vec pair
		array([ 0.+0.j,  0.+0.j])
		
		>>> A = np.matrix(a) # what happens if input is a matrix object
		>>> A
		matrix([[ 1.+0.j,  0.-2.j],
		        [ 0.+2.j,  5.+0.j]])
		>>> w, v = LA.eigh(A)
		>>> w; v
		array([ 0.17157288,  5.82842712])
		matrix([[-0.92387953+0.j        , -0.38268343+0.j        ],
		        [ 0.00000000+0.38268343j,  0.00000000-0.92387953j]])
		
		>>> # demonstrate the treatment of the imaginary part of the diagonal
		>>> a = np.array([[5+2j, 9-2j], [0+2j, 2-1j]])
		>>> a
		array([[ 5.+2.j,  9.-2.j],
		       [ 0.+2.j,  2.-1.j]])
		>>> # with UPLO='L' this is numerically equivalent to using LA.eig() with:
		>>> b = np.array([[5.+0.j, 0.-2.j], [0.+2.j, 2.-0.j]])
		>>> b
		array([[ 5.+0.j,  0.-2.j],
		       [ 0.+2.j,  2.+0.j]])
		>>> wa, va = LA.eigh(a)
		>>> wb, vb = LA.eig(b)
		>>> wa; wb
		array([ 1.,  6.])
		array([ 6.+0.j,  1.+0.j])
		>>> va; vb
		array([[-0.44721360-0.j        , -0.89442719+0.j        ],
		       [ 0.00000000+0.89442719j,  0.00000000-0.4472136j ]])
		array([[ 0.89442719+0.j       ,  0.00000000-0.4472136j],
		       [ 0.00000000-0.4472136j,  0.89442719+0.j       ]])
	**/
	static public function eigh(a:Dynamic, ?UPLO:Dynamic):Dynamic;
	/**
		Compute the eigenvalues of a general matrix.
		
		Main difference between `eigvals` and `eig`: the eigenvectors aren't
		returned.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    A complex- or real-valued matrix whose eigenvalues will be computed.
		
		Returns
		-------
		w : (..., M,) ndarray
		    The eigenvalues, each repeated according to its multiplicity.
		    They are not necessarily ordered, nor are they necessarily
		    real for real matrices.
		
		Raises
		------
		LinAlgError
		    If the eigenvalue computation does not converge.
		
		See Also
		--------
		eig : eigenvalues and right eigenvectors of general arrays
		eigvalsh : eigenvalues of symmetric or Hermitian arrays.
		eigh : eigenvalues and eigenvectors of symmetric/Hermitian arrays.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		This is implemented using the _geev LAPACK routines which compute
		the eigenvalues and eigenvectors of general square arrays.
		
		Examples
		--------
		Illustration, using the fact that the eigenvalues of a diagonal matrix
		are its diagonal elements, that multiplying a matrix on the left
		by an orthogonal matrix, `Q`, and on the right by `Q.T` (the transpose
		of `Q`), preserves the eigenvalues of the "middle" matrix.  In other words,
		if `Q` is orthogonal, then ``Q * A * Q.T`` has the same eigenvalues as
		``A``:
		
		>>> from numpy import linalg as LA
		>>> x = np.random.random()
		>>> Q = np.array([[np.cos(x), -np.sin(x)], [np.sin(x), np.cos(x)]])
		>>> LA.norm(Q[0, :]), LA.norm(Q[1, :]), np.dot(Q[0, :],Q[1, :])
		(1.0, 1.0, 0.0)
		
		Now multiply a diagonal matrix by Q on one side and by Q.T on the other:
		
		>>> D = np.diag((-1,1))
		>>> LA.eigvals(D)
		array([-1.,  1.])
		>>> A = np.dot(Q, D)
		>>> A = np.dot(A, Q.T)
		>>> LA.eigvals(A)
		array([ 1., -1.])
	**/
	static public function eigvals(a:Dynamic):Dynamic;
	/**
		Compute the eigenvalues of a Hermitian or real symmetric matrix.
		
		Main difference from eigh: the eigenvectors are not computed.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    A complex- or real-valued matrix whose eigenvalues are to be
		    computed.
		UPLO : {'L', 'U'}, optional
		    Specifies whether the calculation is done with the lower triangular
		    part of `a` ('L', default) or the upper triangular part ('U').
		    Irrespective of this value only the real parts of the diagonal will
		    be considered in the computation to preserve the notion of a Hermitian
		    matrix. It therefore follows that the imaginary part of the diagonal
		    will always be treated as zero.
		
		Returns
		-------
		w : (..., M,) ndarray
		    The eigenvalues in ascending order, each repeated according to
		    its multiplicity.
		
		Raises
		------
		LinAlgError
		    If the eigenvalue computation does not converge.
		
		See Also
		--------
		eigh : eigenvalues and eigenvectors of symmetric/Hermitian arrays.
		eigvals : eigenvalues of general real or complex arrays.
		eig : eigenvalues and right eigenvectors of general real or complex
		      arrays.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		The eigenvalues are computed using LAPACK routines _syevd, _heevd
		
		Examples
		--------
		>>> from numpy import linalg as LA
		>>> a = np.array([[1, -2j], [2j, 5]])
		>>> LA.eigvalsh(a)
		array([ 0.17157288,  5.82842712])
		
		>>> # demonstrate the treatment of the imaginary part of the diagonal
		>>> a = np.array([[5+2j, 9-2j], [0+2j, 2-1j]])
		>>> a
		array([[ 5.+2.j,  9.-2.j],
		       [ 0.+2.j,  2.-1.j]])
		>>> # with UPLO='L' this is numerically equivalent to using LA.eigvals()
		>>> # with:
		>>> b = np.array([[5.+0.j, 0.-2.j], [0.+2.j, 2.-0.j]])
		>>> b
		array([[ 5.+0.j,  0.-2.j],
		       [ 0.+2.j,  2.+0.j]])
		>>> wa = LA.eigvalsh(a)
		>>> wb = LA.eigvals(b)
		>>> wa; wb
		array([ 1.,  6.])
		array([ 6.+0.j,  1.+0.j])
	**/
	static public function eigvalsh(a:Dynamic, ?UPLO:Dynamic):Dynamic;
	/**
		Compute the (multiplicative) inverse of a matrix.
		
		Given a square matrix `a`, return the matrix `ainv` satisfying
		``dot(a, ainv) = dot(ainv, a) = eye(a.shape[0])``.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Matrix to be inverted.
		
		Returns
		-------
		ainv : (..., M, M) ndarray or matrix
		    (Multiplicative) inverse of the matrix `a`.
		
		Raises
		------
		LinAlgError
		    If `a` is not square or inversion fails.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		Examples
		--------
		>>> from numpy.linalg import inv
		>>> a = np.array([[1., 2.], [3., 4.]])
		>>> ainv = inv(a)
		>>> np.allclose(np.dot(a, ainv), np.eye(2))
		True
		>>> np.allclose(np.dot(ainv, a), np.eye(2))
		True
		
		If a is a matrix object, then the return value is a matrix as well:
		
		>>> ainv = inv(np.matrix(a))
		>>> ainv
		matrix([[-2. ,  1. ],
		        [ 1.5, -0.5]])
		
		Inverses of several matrices can be computed at once:
		
		>>> a = np.array([[[1., 2.], [3., 4.]], [[1, 3], [3, 5]]])
		>>> inv(a)
		array([[[-2. ,  1. ],
		        [ 1.5, -0.5]],
		       [[-5. ,  2. ],
		        [ 3. , -1. ]]])
	**/
	static public function inv(a:Dynamic):Dynamic;
	/**
		Return the least-squares solution to a linear matrix equation.
		
		Solves the equation `a x = b` by computing a vector `x` that
		minimizes the Euclidean 2-norm `|| b - a x ||^2`.  The equation may
		be under-, well-, or over- determined (i.e., the number of
		linearly independent rows of `a` can be less than, equal to, or
		greater than its number of linearly independent columns).  If `a`
		is square and of full rank, then `x` (but for round-off error) is
		the "exact" solution of the equation.
		
		Parameters
		----------
		a : (M, N) array_like
		    "Coefficient" matrix.
		b : {(M,), (M, K)} array_like
		    Ordinate or "dependent variable" values. If `b` is two-dimensional,
		    the least-squares solution is calculated for each of the `K` columns
		    of `b`.
		rcond : float, optional
		    Cut-off ratio for small singular values of `a`.
		    For the purposes of rank determination, singular values are treated
		    as zero if they are smaller than `rcond` times the largest singular
		    value of `a`.
		
		    .. versionchanged:: 1.14.0
		       If not set, a FutureWarning is given. The previous default
		       of ``-1`` will use the machine precision as `rcond` parameter,
		       the new default will use the machine precision times `max(M, N)`.
		       To silence the warning and use the new default, use ``rcond=None``,
		       to keep using the old behavior, use ``rcond=-1``.
		
		Returns
		-------
		x : {(N,), (N, K)} ndarray
		    Least-squares solution. If `b` is two-dimensional,
		    the solutions are in the `K` columns of `x`.
		residuals : {(1,), (K,), (0,)} ndarray
		    Sums of residuals; squared Euclidean 2-norm for each column in
		    ``b - a*x``.
		    If the rank of `a` is < N or M <= N, this is an empty array.
		    If `b` is 1-dimensional, this is a (1,) shape array.
		    Otherwise the shape is (K,).
		rank : int
		    Rank of matrix `a`.
		s : (min(M, N),) ndarray
		    Singular values of `a`.
		
		Raises
		------
		LinAlgError
		    If computation does not converge.
		
		Notes
		-----
		If `b` is a matrix, then all array results are returned as matrices.
		
		Examples
		--------
		Fit a line, ``y = mx + c``, through some noisy data-points:
		
		>>> x = np.array([0, 1, 2, 3])
		>>> y = np.array([-1, 0.2, 0.9, 2.1])
		
		By examining the coefficients, we see that the line should have a
		gradient of roughly 1 and cut the y-axis at, more or less, -1.
		
		We can rewrite the line equation as ``y = Ap``, where ``A = [[x 1]]``
		and ``p = [[m], [c]]``.  Now use `lstsq` to solve for `p`:
		
		>>> A = np.vstack([x, np.ones(len(x))]).T
		>>> A
		array([[ 0.,  1.],
		       [ 1.,  1.],
		       [ 2.,  1.],
		       [ 3.,  1.]])
		
		>>> m, c = np.linalg.lstsq(A, y, rcond=None)[0]
		>>> print(m, c)
		1.0 -0.95
		
		Plot the data along with the fitted line:
		
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(x, y, 'o', label='Original data', markersize=10)
		>>> plt.plot(x, m*x + c, 'r', label='Fitted line')
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function lstsq(a:Dynamic, b:Dynamic, ?rcond:Dynamic):Dynamic;
	/**
		Raise a square matrix to the (integer) power `n`.
		
		For positive integers `n`, the power is computed by repeated matrix
		squarings and matrix multiplications. If ``n == 0``, the identity matrix
		of the same shape as M is returned. If ``n < 0``, the inverse
		is computed and then raised to the ``abs(n)``.
		
		.. note:: Stacks of object matrices are not currently supported.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Matrix to be "powered."
		n : int
		    The exponent can be any integer or long integer, positive,
		    negative, or zero.
		
		Returns
		-------
		a**n : (..., M, M) ndarray or matrix object
		    The return value is the same shape and type as `M`;
		    if the exponent is positive or zero then the type of the
		    elements is the same as those of `M`. If the exponent is
		    negative the elements are floating-point.
		
		Raises
		------
		LinAlgError
		    For matrices that are not square or that (for negative powers) cannot
		    be inverted numerically.
		
		Examples
		--------
		>>> from numpy.linalg import matrix_power
		>>> i = np.array([[0, 1], [-1, 0]]) # matrix equiv. of the imaginary unit
		>>> matrix_power(i, 3) # should = -i
		array([[ 0, -1],
		       [ 1,  0]])
		>>> matrix_power(i, 0)
		array([[1, 0],
		       [0, 1]])
		>>> matrix_power(i, -3) # should = 1/(-i) = i, but w/ f.p. elements
		array([[ 0.,  1.],
		       [-1.,  0.]])
		
		Somewhat more sophisticated example
		
		>>> q = np.zeros((4, 4))
		>>> q[0:2, 0:2] = -i
		>>> q[2:4, 2:4] = i
		>>> q # one of the three quaternion units not equal to 1
		array([[ 0., -1.,  0.,  0.],
		       [ 1.,  0.,  0.,  0.],
		       [ 0.,  0.,  0.,  1.],
		       [ 0.,  0., -1.,  0.]])
		>>> matrix_power(q, 2) # = -np.eye(4)
		array([[-1.,  0.,  0.,  0.],
		       [ 0., -1.,  0.,  0.],
		       [ 0.,  0., -1.,  0.],
		       [ 0.,  0.,  0., -1.]])
	**/
	static public function matrix_power(a:Dynamic, n:Dynamic):Dynamic;
	/**
		Return matrix rank of array using SVD method
		
		Rank of the array is the number of singular values of the array that are
		greater than `tol`.
		
		.. versionchanged:: 1.14
		   Can now operate on stacks of matrices
		
		Parameters
		----------
		M : {(M,), (..., M, N)} array_like
		    input vector or stack of matrices
		tol : (...) array_like, float, optional
		    threshold below which SVD values are considered zero. If `tol` is
		    None, and ``S`` is an array with singular values for `M`, and
		    ``eps`` is the epsilon value for datatype of ``S``, then `tol` is
		    set to ``S.max() * max(M.shape) * eps``.
		
		    .. versionchanged:: 1.14
		       Broadcasted against the stack of matrices
		hermitian : bool, optional
		    If True, `M` is assumed to be Hermitian (symmetric if real-valued),
		    enabling a more efficient method for finding singular values.
		    Defaults to False.
		
		    .. versionadded:: 1.14
		
		Notes
		-----
		The default threshold to detect rank deficiency is a test on the magnitude
		of the singular values of `M`.  By default, we identify singular values less
		than ``S.max() * max(M.shape) * eps`` as indicating rank deficiency (with
		the symbols defined above). This is the algorithm MATLAB uses [1].  It also
		appears in *Numerical recipes* in the discussion of SVD solutions for linear
		least squares [2].
		
		This default threshold is designed to detect rank deficiency accounting for
		the numerical errors of the SVD computation.  Imagine that there is a column
		in `M` that is an exact (in floating point) linear combination of other
		columns in `M`. Computing the SVD on `M` will not produce a singular value
		exactly equal to 0 in general: any difference of the smallest SVD value from
		0 will be caused by numerical imprecision in the calculation of the SVD.
		Our threshold for small SVD values takes this numerical imprecision into
		account, and the default threshold will detect such numerical rank
		deficiency.  The threshold may declare a matrix `M` rank deficient even if
		the linear combination of some columns of `M` is not exactly equal to
		another column of `M` but only numerically very close to another column of
		`M`.
		
		We chose our default threshold because it is in wide use.  Other thresholds
		are possible.  For example, elsewhere in the 2007 edition of *Numerical
		recipes* there is an alternative threshold of ``S.max() *
		np.finfo(M.dtype).eps / 2. * np.sqrt(m + n + 1.)``. The authors describe
		this threshold as being based on "expected roundoff error" (p 71).
		
		The thresholds above deal with floating point roundoff error in the
		calculation of the SVD.  However, you may have more information about the
		sources of error in `M` that would make you consider other tolerance values
		to detect *effective* rank deficiency.  The most useful measure of the
		tolerance depends on the operations you intend to use on your matrix.  For
		example, if your data come from uncertain measurements with uncertainties
		greater than floating point epsilon, choosing a tolerance near that
		uncertainty may be preferable.  The tolerance may be absolute if the
		uncertainties are absolute rather than relative.
		
		References
		----------
		.. [1] MATLAB reference documention, "Rank"
		       http://www.mathworks.com/help/techdoc/ref/rank.html
		.. [2] W. H. Press, S. A. Teukolsky, W. T. Vetterling and B. P. Flannery,
		       "Numerical Recipes (3rd edition)", Cambridge University Press, 2007,
		       page 795.
		
		Examples
		--------
		>>> from numpy.linalg import matrix_rank
		>>> matrix_rank(np.eye(4)) # Full rank matrix
		4
		>>> I=np.eye(4); I[-1,-1] = 0. # rank deficient matrix
		>>> matrix_rank(I)
		3
		>>> matrix_rank(np.ones((4,))) # 1 dimension - rank 1 unless all 0
		1
		>>> matrix_rank(np.zeros((4,)))
		0
	**/
	static public function matrix_rank(M:Dynamic, ?tol:Dynamic, ?hermitian:Dynamic):Dynamic;
	/**
		Compute the dot product of two or more arrays in a single function call,
		while automatically selecting the fastest evaluation order.
		
		`multi_dot` chains `numpy.dot` and uses optimal parenthesization
		of the matrices [1]_ [2]_. Depending on the shapes of the matrices,
		this can speed up the multiplication a lot.
		
		If the first argument is 1-D it is treated as a row vector.
		If the last argument is 1-D it is treated as a column vector.
		The other arguments must be 2-D.
		
		Think of `multi_dot` as::
		
		    def multi_dot(arrays): return functools.reduce(np.dot, arrays)
		
		
		Parameters
		----------
		arrays : sequence of array_like
		    If the first argument is 1-D it is treated as row vector.
		    If the last argument is 1-D it is treated as column vector.
		    The other arguments must be 2-D.
		
		Returns
		-------
		output : ndarray
		    Returns the dot product of the supplied arrays.
		
		See Also
		--------
		dot : dot multiplication with two arguments.
		
		References
		----------
		
		.. [1] Cormen, "Introduction to Algorithms", Chapter 15.2, p. 370-378
		.. [2] http://en.wikipedia.org/wiki/Matrix_chain_multiplication
		
		Examples
		--------
		`multi_dot` allows you to write::
		
		>>> from numpy.linalg import multi_dot
		>>> # Prepare some data
		>>> A = np.random.random(10000, 100)
		>>> B = np.random.random(100, 1000)
		>>> C = np.random.random(1000, 5)
		>>> D = np.random.random(5, 333)
		>>> # the actual dot multiplication
		>>> multi_dot([A, B, C, D])
		
		instead of::
		
		>>> np.dot(np.dot(np.dot(A, B), C), D)
		>>> # or
		>>> A.dot(B).dot(C).dot(D)
		
		Notes
		-----
		The cost for a matrix multiplication can be calculated with the
		following function::
		
		    def cost(A, B):
		        return A.shape[0] * A.shape[1] * B.shape[1]
		
		Let's assume we have three matrices
		:math:`A_{10x100}, B_{100x5}, C_{5x50}`.
		
		The costs for the two different parenthesizations are as follows::
		
		    cost((AB)C) = 10*100*5 + 10*5*50   = 5000 + 2500   = 7500
		    cost(A(BC)) = 10*100*50 + 100*5*50 = 50000 + 25000 = 75000
	**/
	static public function multi_dot(arrays:Dynamic):numpy.Ndarray;
	/**
		Matrix or vector norm.
		
		This function is able to return one of eight different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter.
		
		Parameters
		----------
		x : array_like
		    Input array.  If `axis` is None, `x` must be 1-D or 2-D.
		ord : {non-zero int, inf, -inf, 'fro', 'nuc'}, optional
		    Order of the norm (see table under ``Notes``). inf means numpy's
		    `inf` object.
		axis : {int, 2-tuple of ints, None}, optional
		    If `axis` is an integer, it specifies the axis of `x` along which to
		    compute the vector norms.  If `axis` is a 2-tuple, it specifies the
		    axes that hold 2-D matrices, and the matrix norms of these matrices
		    are computed.  If `axis` is None then either a vector norm (when `x`
		    is 1-D) or a matrix norm (when `x` is 2-D) is returned.
		
		    .. versionadded:: 1.8.0
		
		keepdims : bool, optional
		    If this is set to True, the axes which are normed over are left in the
		    result as dimensions with size one.  With this option the result will
		    broadcast correctly against the original `x`.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		n : float or ndarray
		    Norm of the matrix or vector(s).
		
		Notes
		-----
		For values of ``ord <= 0``, the result is, strictly speaking, not a
		mathematical 'norm', but it may still be useful for various numerical
		purposes.
		
		The following norms can be calculated:
		
		=====  ============================  ==========================
		ord    norm for matrices             norm for vectors
		=====  ============================  ==========================
		None   Frobenius norm                2-norm
		'fro'  Frobenius norm                --
		'nuc'  nuclear norm                  --
		inf    max(sum(abs(x), axis=1))      max(abs(x))
		-inf   min(sum(abs(x), axis=1))      min(abs(x))
		0      --                            sum(x != 0)
		1      max(sum(abs(x), axis=0))      as below
		-1     min(sum(abs(x), axis=0))      as below
		2      2-norm (largest sing. value)  as below
		-2     smallest singular value       as below
		other  --                            sum(abs(x)**ord)**(1./ord)
		=====  ============================  ==========================
		
		The Frobenius norm is given by [1]_:
		
		    :math:`||A||_F = [\sum_{i,j} abs(a_{i,j})^2]^{1/2}`
		
		The nuclear norm is the sum of the singular values.
		
		References
		----------
		.. [1] G. H. Golub and C. F. Van Loan, *Matrix Computations*,
		       Baltimore, MD, Johns Hopkins University Press, 1985, pg. 15
		
		Examples
		--------
		>>> from numpy import linalg as LA
		>>> a = np.arange(9) - 4
		>>> a
		array([-4, -3, -2, -1,  0,  1,  2,  3,  4])
		>>> b = a.reshape((3, 3))
		>>> b
		array([[-4, -3, -2],
		       [-1,  0,  1],
		       [ 2,  3,  4]])
		
		>>> LA.norm(a)
		7.745966692414834
		>>> LA.norm(b)
		7.745966692414834
		>>> LA.norm(b, 'fro')
		7.745966692414834
		>>> LA.norm(a, np.inf)
		4.0
		>>> LA.norm(b, np.inf)
		9.0
		>>> LA.norm(a, -np.inf)
		0.0
		>>> LA.norm(b, -np.inf)
		2.0
		
		>>> LA.norm(a, 1)
		20.0
		>>> LA.norm(b, 1)
		7.0
		>>> LA.norm(a, -1)
		-4.6566128774142013e-010
		>>> LA.norm(b, -1)
		6.0
		>>> LA.norm(a, 2)
		7.745966692414834
		>>> LA.norm(b, 2)
		7.3484692283495345
		
		>>> LA.norm(a, -2)
		nan
		>>> LA.norm(b, -2)
		1.8570331885190563e-016
		>>> LA.norm(a, 3)
		5.8480354764257312
		>>> LA.norm(a, -3)
		nan
		
		Using the `axis` argument to compute vector norms:
		
		>>> c = np.array([[ 1, 2, 3],
		...               [-1, 1, 4]])
		>>> LA.norm(c, axis=0)
		array([ 1.41421356,  2.23606798,  5.        ])
		>>> LA.norm(c, axis=1)
		array([ 3.74165739,  4.24264069])
		>>> LA.norm(c, ord=1, axis=1)
		array([ 6.,  6.])
		
		Using the `axis` argument to compute matrix norms:
		
		>>> m = np.arange(8).reshape(2,2,2)
		>>> LA.norm(m, axis=(1,2))
		array([  3.74165739,  11.22497216])
		>>> LA.norm(m[0, :, :]), LA.norm(m[1, :, :])
		(3.7416573867739413, 11.224972160321824)
	**/
	static public function norm(x:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Compute the (Moore-Penrose) pseudo-inverse of a matrix.
		
		Calculate the generalized inverse of a matrix using its
		singular-value decomposition (SVD) and including all
		*large* singular values.
		
		.. versionchanged:: 1.14
		   Can now operate on stacks of matrices
		
		Parameters
		----------
		a : (..., M, N) array_like
		    Matrix or stack of matrices to be pseudo-inverted.
		rcond : (...) array_like of float
		    Cutoff for small singular values.
		    Singular values smaller (in modulus) than
		    `rcond` * largest_singular_value (again, in modulus)
		    are set to zero. Broadcasts against the stack of matrices
		
		Returns
		-------
		B : (..., N, M) ndarray
		    The pseudo-inverse of `a`. If `a` is a `matrix` instance, then so
		    is `B`.
		
		Raises
		------
		LinAlgError
		    If the SVD computation does not converge.
		
		Notes
		-----
		The pseudo-inverse of a matrix A, denoted :math:`A^+`, is
		defined as: "the matrix that 'solves' [the least-squares problem]
		:math:`Ax = b`," i.e., if :math:`\bar{x}` is said solution, then
		:math:`A^+` is that matrix such that :math:`\bar{x} = A^+b`.
		
		It can be shown that if :math:`Q_1 \Sigma Q_2^T = A` is the singular
		value decomposition of A, then
		:math:`A^+ = Q_2 \Sigma^+ Q_1^T`, where :math:`Q_{1,2}` are
		orthogonal matrices, :math:`\Sigma` is a diagonal matrix consisting
		of A's so-called singular values, (followed, typically, by
		zeros), and then :math:`\Sigma^+` is simply the diagonal matrix
		consisting of the reciprocals of A's singular values
		(again, followed by zeros). [1]_
		
		References
		----------
		.. [1] G. Strang, *Linear Algebra and Its Applications*, 2nd Ed., Orlando,
		       FL, Academic Press, Inc., 1980, pp. 139-142.
		
		Examples
		--------
		The following example checks that ``a * a+ * a == a`` and
		``a+ * a * a+ == a+``:
		
		>>> a = np.random.randn(9, 6)
		>>> B = np.linalg.pinv(a)
		>>> np.allclose(a, np.dot(a, np.dot(B, a)))
		True
		>>> np.allclose(B, np.dot(B, np.dot(a, B)))
		True
	**/
	static public function pinv(a:Dynamic, ?rcond:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute the qr factorization of a matrix.
		
		Factor the matrix `a` as *qr*, where `q` is orthonormal and `r` is
		upper-triangular.
		
		Parameters
		----------
		a : array_like, shape (M, N)
		    Matrix to be factored.
		mode : {'reduced', 'complete', 'r', 'raw', 'full', 'economic'}, optional
		    If K = min(M, N), then
		
		    * 'reduced'  : returns q, r with dimensions (M, K), (K, N) (default)
		    * 'complete' : returns q, r with dimensions (M, M), (M, N)
		    * 'r'        : returns r only with dimensions (K, N)
		    * 'raw'      : returns h, tau with dimensions (N, M), (K,)
		    * 'full'     : alias of 'reduced', deprecated
		    * 'economic' : returns h from 'raw', deprecated.
		
		    The options 'reduced', 'complete, and 'raw' are new in numpy 1.8,
		    see the notes for more information. The default is 'reduced', and to
		    maintain backward compatibility with earlier versions of numpy both
		    it and the old default 'full' can be omitted. Note that array h
		    returned in 'raw' mode is transposed for calling Fortran. The
		    'economic' mode is deprecated.  The modes 'full' and 'economic' may
		    be passed using only the first letter for backwards compatibility,
		    but all others must be spelled out. See the Notes for more
		    explanation.
		
		
		Returns
		-------
		q : ndarray of float or complex, optional
		    A matrix with orthonormal columns. When mode = 'complete' the
		    result is an orthogonal/unitary matrix depending on whether or not
		    a is real/complex. The determinant may be either +/- 1 in that
		    case.
		r : ndarray of float or complex, optional
		    The upper-triangular matrix.
		(h, tau) : ndarrays of np.double or np.cdouble, optional
		    The array h contains the Householder reflectors that generate q
		    along with r. The tau array contains scaling factors for the
		    reflectors. In the deprecated  'economic' mode only h is returned.
		
		Raises
		------
		LinAlgError
		    If factoring fails.
		
		Notes
		-----
		This is an interface to the LAPACK routines dgeqrf, zgeqrf,
		dorgqr, and zungqr.
		
		For more information on the qr factorization, see for example:
		http://en.wikipedia.org/wiki/QR_factorization
		
		Subclasses of `ndarray` are preserved except for the 'raw' mode. So if
		`a` is of type `matrix`, all the return values will be matrices too.
		
		New 'reduced', 'complete', and 'raw' options for mode were added in
		NumPy 1.8.0 and the old option 'full' was made an alias of 'reduced'.  In
		addition the options 'full' and 'economic' were deprecated.  Because
		'full' was the previous default and 'reduced' is the new default,
		backward compatibility can be maintained by letting `mode` default.
		The 'raw' option was added so that LAPACK routines that can multiply
		arrays by q using the Householder reflectors can be used. Note that in
		this case the returned arrays are of type np.double or np.cdouble and
		the h array is transposed to be FORTRAN compatible.  No routines using
		the 'raw' return are currently exposed by numpy, but some are available
		in lapack_lite and just await the necessary work.
		
		Examples
		--------
		>>> a = np.random.randn(9, 6)
		>>> q, r = np.linalg.qr(a)
		>>> np.allclose(a, np.dot(q, r))  # a does equal qr
		True
		>>> r2 = np.linalg.qr(a, mode='r')
		>>> r3 = np.linalg.qr(a, mode='economic')
		>>> np.allclose(r, r2)  # mode='r' returns the same r as mode='full'
		True
		>>> # But only triu parts are guaranteed equal when mode='economic'
		>>> np.allclose(r, np.triu(r3[:6,:6], k=0))
		True
		
		Example illustrating a common use of `qr`: solving of least squares
		problems
		
		What are the least-squares-best `m` and `y0` in ``y = y0 + mx`` for
		the following data: {(0,1), (1,0), (1,2), (2,1)}. (Graph the points
		and you'll see that it should be y0 = 0, m = 1.)  The answer is provided
		by solving the over-determined matrix equation ``Ax = b``, where::
		
		  A = array([[0, 1], [1, 1], [1, 1], [2, 1]])
		  x = array([[y0], [m]])
		  b = array([[1], [0], [2], [1]])
		
		If A = qr such that q is orthonormal (which is always possible via
		Gram-Schmidt), then ``x = inv(r) * (q.T) * b``.  (In numpy practice,
		however, we simply use `lstsq`.)
		
		>>> A = np.array([[0, 1], [1, 1], [1, 1], [2, 1]])
		>>> A
		array([[0, 1],
		       [1, 1],
		       [1, 1],
		       [2, 1]])
		>>> b = np.array([1, 0, 2, 1])
		>>> q, r = LA.qr(A)
		>>> p = np.dot(q.T, b)
		>>> np.dot(LA.inv(r), p)
		array([  1.1e-16,   1.0e+00])
	**/
	static public function qr(a:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Compute the sign and (natural) logarithm of the determinant of an array.
		
		If an array has a very small or very large determinant, then a call to
		`det` may overflow or underflow. This routine is more robust against such
		issues, because it computes the logarithm of the determinant rather than
		the determinant itself.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Input array, has to be a square 2-D array.
		
		Returns
		-------
		sign : (...) array_like
		    A number representing the sign of the determinant. For a real matrix,
		    this is 1, 0, or -1. For a complex matrix, this is a complex number
		    with absolute value 1 (i.e., it is on the unit circle), or else 0.
		logdet : (...) array_like
		    The natural log of the absolute value of the determinant.
		
		If the determinant is zero, then `sign` will be 0 and `logdet` will be
		-Inf. In all cases, the determinant is equal to ``sign * np.exp(logdet)``.
		
		See Also
		--------
		det
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		.. versionadded:: 1.6.0
		
		The determinant is computed via LU factorization using the LAPACK
		routine z/dgetrf.
		
		
		Examples
		--------
		The determinant of a 2-D array ``[[a, b], [c, d]]`` is ``ad - bc``:
		
		>>> a = np.array([[1, 2], [3, 4]])
		>>> (sign, logdet) = np.linalg.slogdet(a)
		>>> (sign, logdet)
		(-1, 0.69314718055994529)
		>>> sign * np.exp(logdet)
		-2.0
		
		Computing log-determinants for a stack of matrices:
		
		>>> a = np.array([ [[1, 2], [3, 4]], [[1, 2], [2, 1]], [[1, 3], [3, 1]] ])
		>>> a.shape
		(3, 2, 2)
		>>> sign, logdet = np.linalg.slogdet(a)
		>>> (sign, logdet)
		(array([-1., -1., -1.]), array([ 0.69314718,  1.09861229,  2.07944154]))
		>>> sign * np.exp(logdet)
		array([-2., -3., -8.])
		
		This routine succeeds where ordinary `det` does not:
		
		>>> np.linalg.det(np.eye(500) * 0.1)
		0.0
		>>> np.linalg.slogdet(np.eye(500) * 0.1)
		(1, -1151.2925464970228)
	**/
	static public function slogdet(a:Dynamic):Dynamic;
	/**
		Solve a linear matrix equation, or system of linear scalar equations.
		
		Computes the "exact" solution, `x`, of the well-determined, i.e., full
		rank, linear matrix equation `ax = b`.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Coefficient matrix.
		b : {(..., M,), (..., M, K)}, array_like
		    Ordinate or "dependent variable" values.
		
		Returns
		-------
		x : {(..., M,), (..., M, K)} ndarray
		    Solution to the system a x = b.  Returned shape is identical to `b`.
		
		Raises
		------
		LinAlgError
		    If `a` is singular or not square.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		The solutions are computed using LAPACK routine _gesv
		
		`a` must be square and of full-rank, i.e., all rows (or, equivalently,
		columns) must be linearly independent; if either is not true, use
		`lstsq` for the least-squares best "solution" of the
		system/equation.
		
		References
		----------
		.. [1] G. Strang, *Linear Algebra and Its Applications*, 2nd Ed., Orlando,
		       FL, Academic Press, Inc., 1980, pg. 22.
		
		Examples
		--------
		Solve the system of equations ``3 * x0 + x1 = 9`` and ``x0 + 2 * x1 = 8``:
		
		>>> a = np.array([[3,1], [1,2]])
		>>> b = np.array([9,8])
		>>> x = np.linalg.solve(a, b)
		>>> x
		array([ 2.,  3.])
		
		Check that the solution is correct:
		
		>>> np.allclose(np.dot(a, x), b)
		True
	**/
	static public function solve(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Singular Value Decomposition.
		
		When `a` is a 2D array, it is factorized as ``u @ np.diag(s) @ vh
		= (u * s) @ vh``, where `u` and `vh` are 2D unitary arrays and `s` is a 1D
		array of `a`'s singular values. When `a` is higher-dimensional, SVD is
		applied in stacked mode as explained below.
		
		Parameters
		----------
		a : (..., M, N) array_like
		    A real or complex array with ``a.ndim >= 2``.
		full_matrices : bool, optional
		    If True (default), `u` and `vh` have the shapes ``(..., M, M)`` and
		    ``(..., N, N)``, respectively.  Otherwise, the shapes are
		    ``(..., M, K)`` and ``(..., K, N)``, respectively, where
		    ``K = min(M, N)``.
		compute_uv : bool, optional
		    Whether or not to compute `u` and `vh` in addition to `s`.  True
		    by default.
		
		Returns
		-------
		u : { (..., M, M), (..., M, K) } array
		    Unitary array(s). The first ``a.ndim - 2`` dimensions have the same
		    size as those of the input `a`. The size of the last two dimensions
		    depends on the value of `full_matrices`. Only returned when
		    `compute_uv` is True.
		s : (..., K) array
		    Vector(s) with the singular values, within each vector sorted in
		    descending order. The first ``a.ndim - 2`` dimensions have the same
		    size as those of the input `a`.
		vh : { (..., N, N), (..., K, N) } array
		    Unitary array(s). The first ``a.ndim - 2`` dimensions have the same
		    size as those of the input `a`. The size of the last two dimensions
		    depends on the value of `full_matrices`. Only returned when
		    `compute_uv` is True.
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
		
		Notes
		-----
		
		.. versionchanged:: 1.8.0
		   Broadcasting rules apply, see the `numpy.linalg` documentation for
		   details.
		
		The decomposition is performed using LAPACK routine ``_gesdd``.
		
		SVD is usually described for the factorization of a 2D matrix :math:`A`.
		The higher-dimensional case will be discussed below. In the 2D case, SVD is
		written as :math:`A = U S V^H`, where :math:`A = a`, :math:`U= u`,
		:math:`S= \mathtt{np.diag}(s)` and :math:`V^H = vh`. The 1D array `s`
		contains the singular values of `a` and `u` and `vh` are unitary. The rows
		of `vh` are the eigenvectors of :math:`A^H A` and the columns of `u` are
		the eigenvectors of :math:`A A^H`. In both cases the corresponding
		(possibly non-zero) eigenvalues are given by ``s**2``.
		
		If `a` has more than two dimensions, then broadcasting rules apply, as
		explained in :ref:`routines.linalg-broadcasting`. This means that SVD is
		working in "stacked" mode: it iterates over all indices of the first
		``a.ndim - 2`` dimensions and for each combination SVD is applied to the
		last two indices. The matrix `a` can be reconstructed from the
		decomposition with either ``(u * s[..., None, :]) @ vh`` or
		``u @ (s[..., None] * vh)``. (The ``@`` operator can be replaced by the
		function ``np.matmul`` for python versions below 3.5.)
		
		If `a` is a ``matrix`` object (as opposed to an ``ndarray``), then so are
		all the return values.
		
		Examples
		--------
		>>> a = np.random.randn(9, 6) + 1j*np.random.randn(9, 6)
		>>> b = np.random.randn(2, 7, 8, 3) + 1j*np.random.randn(2, 7, 8, 3)
		
		Reconstruction based on full SVD, 2D case:
		
		>>> u, s, vh = np.linalg.svd(a, full_matrices=True)
		>>> u.shape, s.shape, vh.shape
		((9, 9), (6,), (6, 6))
		>>> np.allclose(a, np.dot(u[:, :6] * s, vh))
		True
		>>> smat = np.zeros((9, 6), dtype=complex)
		>>> smat[:6, :6] = np.diag(s)
		>>> np.allclose(a, np.dot(u, np.dot(smat, vh)))
		True
		
		Reconstruction based on reduced SVD, 2D case:
		
		>>> u, s, vh = np.linalg.svd(a, full_matrices=False)
		>>> u.shape, s.shape, vh.shape
		((9, 6), (6,), (6, 6))
		>>> np.allclose(a, np.dot(u * s, vh))
		True
		>>> smat = np.diag(s)
		>>> np.allclose(a, np.dot(u, np.dot(smat, vh)))
		True
		
		Reconstruction based on full SVD, 4D case:
		
		>>> u, s, vh = np.linalg.svd(b, full_matrices=True)
		>>> u.shape, s.shape, vh.shape
		((2, 7, 8, 8), (2, 7, 3), (2, 7, 3, 3))
		>>> np.allclose(b, np.matmul(u[..., :3] * s[..., None, :], vh))
		True
		>>> np.allclose(b, np.matmul(u[..., :3], s[..., None] * vh))
		True
		
		Reconstruction based on reduced SVD, 4D case:
		
		>>> u, s, vh = np.linalg.svd(b, full_matrices=False)
		>>> u.shape, s.shape, vh.shape
		((2, 7, 8, 3), (2, 7, 3), (2, 7, 3, 3))
		>>> np.allclose(b, np.matmul(u * s[..., None, :], vh))
		True
		>>> np.allclose(b, np.matmul(u, s[..., None] * vh))
		True
	**/
	static public function svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic):Dynamic;
	/**
		Compute the 'inverse' of an N-dimensional array.
		
		The result is an inverse for `a` relative to the tensordot operation
		``tensordot(a, b, ind)``, i. e., up to floating-point accuracy,
		``tensordot(tensorinv(a), a, ind)`` is the "identity" tensor for the
		tensordot operation.
		
		Parameters
		----------
		a : array_like
		    Tensor to 'invert'. Its shape must be 'square', i. e.,
		    ``prod(a.shape[:ind]) == prod(a.shape[ind:])``.
		ind : int, optional
		    Number of first indices that are involved in the inverse sum.
		    Must be a positive integer, default is 2.
		
		Returns
		-------
		b : ndarray
		    `a`'s tensordot inverse, shape ``a.shape[ind:] + a.shape[:ind]``.
		
		Raises
		------
		LinAlgError
		    If `a` is singular or not 'square' (in the above sense).
		
		See Also
		--------
		numpy.tensordot, tensorsolve
		
		Examples
		--------
		>>> a = np.eye(4*6)
		>>> a.shape = (4, 6, 8, 3)
		>>> ainv = np.linalg.tensorinv(a, ind=2)
		>>> ainv.shape
		(8, 3, 4, 6)
		>>> b = np.random.randn(4, 6)
		>>> np.allclose(np.tensordot(ainv, b), np.linalg.tensorsolve(a, b))
		True
		
		>>> a = np.eye(4*6)
		>>> a.shape = (24, 8, 3)
		>>> ainv = np.linalg.tensorinv(a, ind=1)
		>>> ainv.shape
		(8, 3, 24)
		>>> b = np.random.randn(24)
		>>> np.allclose(np.tensordot(ainv, b, 1), np.linalg.tensorsolve(a, b))
		True
	**/
	static public function tensorinv(a:Dynamic, ?ind:Dynamic):numpy.Ndarray;
	/**
		Solve the tensor equation ``a x = b`` for x.
		
		It is assumed that all indices of `x` are summed over in the product,
		together with the rightmost indices of `a`, as is done in, for example,
		``tensordot(a, x, axes=b.ndim)``.
		
		Parameters
		----------
		a : array_like
		    Coefficient tensor, of shape ``b.shape + Q``. `Q`, a tuple, equals
		    the shape of that sub-tensor of `a` consisting of the appropriate
		    number of its rightmost indices, and must be such that
		    ``prod(Q) == prod(b.shape)`` (in which sense `a` is said to be
		    'square').
		b : array_like
		    Right-hand tensor, which can be of any shape.
		axes : tuple of ints, optional
		    Axes in `a` to reorder to the right, before inversion.
		    If None (default), no reordering is done.
		
		Returns
		-------
		x : ndarray, shape Q
		
		Raises
		------
		LinAlgError
		    If `a` is singular or not 'square' (in the above sense).
		
		See Also
		--------
		numpy.tensordot, tensorinv, numpy.einsum
		
		Examples
		--------
		>>> a = np.eye(2*3*4)
		>>> a.shape = (2*3, 4, 2, 3, 4)
		>>> b = np.random.randn(2*3, 4)
		>>> x = np.linalg.tensorsolve(a, b)
		>>> x.shape
		(2, 3, 4)
		>>> np.allclose(np.tensordot(a, x, axes=3), b)
		True
	**/
	static public function tensorsolve(a:Dynamic, b:Dynamic, ?axes:Dynamic):Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?durations:Dynamic, ?tests:Dynamic):Dynamic;
}