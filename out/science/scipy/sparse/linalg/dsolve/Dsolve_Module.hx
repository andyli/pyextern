/* This file is generated, do not edit! */
package scipy.sparse.linalg.dsolve;
@:pythonImport("scipy.sparse.linalg.dsolve") extern class Dsolve_Module {
	/**
		Return a function for solving a sparse linear system, with A pre-factorized.
		
		Parameters
		----------
		A : (N, N) array_like
		    Input.
		
		Returns
		-------
		solve : callable
		    To solve the linear system of equations given in `A`, the `solve`
		    callable should be passed an ndarray of shape (N,).
		
		Examples
		--------
		>>> from scipy.sparse.linalg import factorized
		>>> A = np.array([[ 3. ,  2. , -1. ],
		...               [ 2. , -2. ,  4. ],
		...               [-1. ,  0.5, -1. ]])
		>>> solve = factorized(A) # Makes LU decomposition.
		>>> rhs1 = np.array([1, -2, 0])
		>>> solve(rhs1) # Uses the LU factors.
		array([ 1., -2., -2.])
	**/
	static public function factorized(A:Dynamic):haxe.Constraints.Function;
	/**
		Compute an incomplete LU decomposition for a sparse, square matrix.
		
		The resulting object is an approximation to the inverse of `A`.
		
		Parameters
		----------
		A : (N, N) array_like
		    Sparse matrix to factorize
		drop_tol : float, optional
		    Drop tolerance (0 <= tol <= 1) for an incomplete LU decomposition.
		    (default: 1e-4)
		fill_factor : float, optional
		    Specifies the fill ratio upper bound (>= 1.0) for ILU. (default: 10)
		drop_rule : str, optional
		    Comma-separated string of drop rules to use.
		    Available rules: ``basic``, ``prows``, ``column``, ``area``,
		    ``secondary``, ``dynamic``, ``interp``. (Default: ``basic,area``)
		
		    See SuperLU documentation for details.
		
		Remaining other options
		    Same as for `splu`
		
		Returns
		-------
		invA_approx : scipy.sparse.linalg.SuperLU
		    Object, which has a ``solve`` method.
		
		See also
		--------
		splu : complete LU decomposition
		
		Notes
		-----
		To improve the better approximation to the inverse, you may need to
		increase `fill_factor` AND decrease `drop_tol`.
		
		This function uses the SuperLU library.
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import spilu
		>>> A = csc_matrix([[1., 0., 0.], [5., 0., 2.], [0., -1., 0.]], dtype=float)
		>>> B = spilu(A)
		>>> x = np.array([1., 2., 3.], dtype=float)
		>>> B.solve(x)
		array([ 1. , -3. , -1.5])
		>>> A.dot(B.solve(x))
		array([ 1.,  2.,  3.])
		>>> B.solve(A.dot(x))
		array([ 1.,  2.,  3.])
	**/
	static public function spilu(A:Dynamic, ?drop_tol:Dynamic, ?fill_factor:Dynamic, ?drop_rule:Dynamic, ?permc_spec:Dynamic, ?diag_pivot_thresh:Dynamic, ?relax:Dynamic, ?panel_size:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Compute the LU decomposition of a sparse, square matrix.
		
		Parameters
		----------
		A : sparse matrix
		    Sparse matrix to factorize. Should be in CSR or CSC format.
		permc_spec : str, optional
		    How to permute the columns of the matrix for sparsity preservation.
		    (default: 'COLAMD')
		
		    - ``NATURAL``: natural ordering.
		    - ``MMD_ATA``: minimum degree ordering on the structure of A^T A.
		    - ``MMD_AT_PLUS_A``: minimum degree ordering on the structure of A^T+A.
		    - ``COLAMD``: approximate minimum degree column ordering
		
		diag_pivot_thresh : float, optional
		    Threshold used for a diagonal entry to be an acceptable pivot.
		    See SuperLU user's guide for details [1]_
		relax : int, optional
		    Expert option for customizing the degree of relaxing supernodes.
		    See SuperLU user's guide for details [1]_
		panel_size : int, optional
		    Expert option for customizing the panel size.
		    See SuperLU user's guide for details [1]_
		options : dict, optional
		    Dictionary containing additional expert options to SuperLU.
		    See SuperLU user guide [1]_ (section 2.4 on the 'Options' argument)
		    for more details. For example, you can specify
		    ``options=dict(Equil=False, IterRefine='SINGLE'))``
		    to turn equilibration off and perform a single iterative refinement.
		
		Returns
		-------
		invA : scipy.sparse.linalg.SuperLU
		    Object, which has a ``solve`` method.
		
		See also
		--------
		spilu : incomplete LU decomposition
		
		Notes
		-----
		This function uses the SuperLU library.
		
		References
		----------
		.. [1] SuperLU https://portal.nersc.gov/project/sparse/superlu/
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import splu
		>>> A = csc_matrix([[1., 0., 0.], [5., 0., 2.], [0., -1., 0.]], dtype=float)
		>>> B = splu(A)
		>>> x = np.array([1., 2., 3.], dtype=float)
		>>> B.solve(x)
		array([ 1. , -3. , -1.5])
		>>> A.dot(B.solve(x))
		array([ 1.,  2.,  3.])
		>>> B.solve(A.dot(x))
		array([ 1.,  2.,  3.])
	**/
	static public function splu(A:Dynamic, ?permc_spec:Dynamic, ?diag_pivot_thresh:Dynamic, ?relax:Dynamic, ?panel_size:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Solve the sparse linear system Ax=b, where b may be a vector or a matrix.
		
		Parameters
		----------
		A : ndarray or sparse matrix
		    The square matrix A will be converted into CSC or CSR form
		b : ndarray or sparse matrix
		    The matrix or vector representing the right hand side of the equation.
		    If a vector, b.shape must be (n,) or (n, 1).
		permc_spec : str, optional
		    How to permute the columns of the matrix for sparsity preservation.
		    (default: 'COLAMD')
		
		    - ``NATURAL``: natural ordering.
		    - ``MMD_ATA``: minimum degree ordering on the structure of A^T A.
		    - ``MMD_AT_PLUS_A``: minimum degree ordering on the structure of A^T+A.
		    - ``COLAMD``: approximate minimum degree column ordering
		use_umfpack : bool, optional
		    if True (default) then use umfpack for the solution.  This is
		    only referenced if b is a vector and ``scikit-umfpack`` is installed.
		
		Returns
		-------
		x : ndarray or sparse matrix
		    the solution of the sparse linear equation.
		    If b is a vector, then x is a vector of size A.shape[1]
		    If b is a matrix, then x is a matrix of size (A.shape[1], b.shape[1])
		
		Notes
		-----
		For solving the matrix expression AX = B, this solver assumes the resulting
		matrix X is sparse, as is often the case for very sparse inputs.  If the
		resulting X is dense, the construction of this sparse result will be
		relatively expensive.  In that case, consider converting A to a dense
		matrix and using scipy.linalg.solve or its variants.
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import spsolve
		>>> A = csc_matrix([[3, 2, 0], [1, -1, 0], [0, 5, 1]], dtype=float)
		>>> B = csc_matrix([[2, 0], [-1, 0], [2, 0]], dtype=float)
		>>> x = spsolve(A, B)
		>>> np.allclose(A.dot(x).toarray(), B.toarray())
		True
	**/
	static public function spsolve(A:Dynamic, b:Dynamic, ?permc_spec:Dynamic, ?use_umfpack:Dynamic):Dynamic;
	/**
		Solve the equation ``A x = b`` for `x`, assuming A is a triangular matrix.
		
		Parameters
		----------
		A : (M, M) sparse matrix
		    A sparse square triangular matrix. Should be in CSR format.
		b : (M,) or (M, N) array_like
		    Right-hand side matrix in ``A x = b``
		lower : bool, optional
		    Whether `A` is a lower or upper triangular matrix.
		    Default is lower triangular matrix.
		overwrite_A : bool, optional
		    Allow changing `A`. The indices of `A` are going to be sorted and zero
		    entries are going to be removed.
		    Enabling gives a performance gain. Default is False.
		overwrite_b : bool, optional
		    Allow overwriting data in `b`.
		    Enabling gives a performance gain. Default is False.
		    If `overwrite_b` is True, it should be ensured that
		    `b` has an appropriate dtype to be able to store the result.
		unit_diagonal : bool, optional
		    If True, diagonal elements of `a` are assumed to be 1 and will not be
		    referenced.
		
		    .. versionadded:: 1.4.0
		
		Returns
		-------
		x : (M,) or (M, N) ndarray
		    Solution to the system ``A x = b``. Shape of return matches shape
		    of `b`.
		
		Raises
		------
		LinAlgError
		    If `A` is singular or not triangular.
		ValueError
		    If shape of `A` or shape of `b` do not match the requirements.
		
		Notes
		-----
		.. versionadded:: 0.19.0
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.linalg import spsolve_triangular
		>>> A = csr_matrix([[3, 0, 0], [1, -1, 0], [2, 0, 1]], dtype=float)
		>>> B = np.array([[2, 0], [-1, 0], [2, 0]], dtype=float)
		>>> x = spsolve_triangular(A, B)
		>>> np.allclose(A.dot(x), B)
		True
	**/
	static public function spsolve_triangular(A:Dynamic, b:Dynamic, ?lower:Dynamic, ?overwrite_A:Dynamic, ?overwrite_b:Dynamic, ?unit_diagonal:Dynamic):Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?tests:Dynamic, ?parallel:Dynamic):Dynamic;
	/**
		Select default sparse direct solver to be used.
		
		Parameters
		----------
		useUmfpack : bool, optional
		    Use UMFPACK over SuperLU. Has effect only if scikits.umfpack is
		    installed. Default: True
		assumeSortedIndices : bool, optional
		    Allow UMFPACK to skip the step of sorting indices for a CSR/CSC matrix.
		    Has effect only if useUmfpack is True and scikits.umfpack is installed.
		    Default: False
		
		Notes
		-----
		The default sparse solver is umfpack when available
		(scikits.umfpack is installed). This can be changed by passing
		useUmfpack = False, which then causes the always present SuperLU
		based solver to be used.
		
		Umfpack requires a CSR/CSC matrix to have sorted column/row indices. If
		sure that the matrix fulfills this, pass ``assumeSortedIndices=True``
		to gain some speed.
	**/
	static public function use_solver(?kwargs:python.KwArgs<Dynamic>):Dynamic;
}