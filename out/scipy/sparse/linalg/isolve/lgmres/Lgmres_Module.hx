/* This file is generated, do not edit! */
package scipy.sparse.linalg.isolve.lgmres;
@:pythonImport("scipy.sparse.linalg.isolve.lgmres") extern class Lgmres_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Return available BLAS function objects from names.
		
		Arrays are used to determine the optimal prefix of BLAS routines.
		
		Parameters
		----------
		names : str or sequence of str
		    Name(s) of BLAS functions without type prefix.
		
		arrays : sequence of ndarrays, optional
		    Arrays can be given to determine optimal prefix of BLAS
		    routines. If not given, double-precision routines will be
		    used, otherwise the most generic type in arrays will be used.
		
		dtype : str or dtype, optional
		    Data-type specifier. Not used if `arrays` is non-empty.
		
		
		Returns
		-------
		funcs : list
		    List containing the found function(s).
		
		
		Notes
		-----
		This routine automatically chooses between Fortran/C
		interfaces. Fortran code is used whenever possible for arrays with
		column major order. In all other cases, C code is preferred.
		
		In BLAS, the naming convention is that all functions start with a
		type prefix, which depends on the type of the principal
		matrix. These can be one of {'s', 'd', 'c', 'z'} for the numpy
		types {float32, float64, complex64, complex128} respectively.
		The code and the dtype are stored in attributes `typecode` and `dtype`
		of the returned functions.
	**/
	static public function get_blas_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Array<Dynamic>;
	/**
		Return available LAPACK function objects from names.
		
		Arrays are used to determine the optimal prefix of LAPACK routines.
		
		Parameters
		----------
		names : str or sequence of str
		    Name(s) of LAPACK functions without type prefix.
		
		arrays : sequence of ndarrays, optional
		    Arrays can be given to determine optimal prefix of LAPACK
		    routines. If not given, double-precision routines will be
		    used, otherwise the most generic type in arrays will be used.
		
		dtype : str or dtype, optional
		    Data-type specifier. Not used if `arrays` is non-empty.
		
		
		Returns
		-------
		funcs : list
		    List containing the found function(s).
		
		
		Notes
		-----
		This routine automatically chooses between Fortran/C
		interfaces. Fortran code is used whenever possible for arrays with
		column major order. In all other cases, C code is preferred.
		
		In LAPACK, the naming convention is that all functions start with a
		type prefix, which depends on the type of the principal
		matrix. These can be one of {'s', 'd', 'c', 'z'} for the numpy
		types {float32, float64, complex64, complex128} respectevely, and
		are stored in attribute `typecode` of the returned functions.
	**/
	static public function get_lapack_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Array<Dynamic>;
	/**
		Solve a matrix equation using the LGMRES algorithm.
		
		The LGMRES algorithm [1]_ [2]_ is designed to avoid some problems
		in the convergence in restarted GMRES, and often converges in fewer
		iterations.
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol : float, optional
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		maxiter : int, optional
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}, optional
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function, optional
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		inner_m : int, optional
		    Number of inner GMRES iterations per each outer iteration.
		outer_k : int, optional
		    Number of vectors to carry between inner GMRES iterations.
		    According to [1]_, good values are in the range of 1...3.
		    However, note that if you want to use the additional vectors to
		    accelerate solving multiple similar problems, larger values may
		    be beneficial.
		outer_v : list of tuples, optional
		    List containing tuples ``(v, Av)`` of vectors and corresponding
		    matrix-vector products, used to augment the Krylov subspace, and
		    carried between inner GMRES iterations. The element ``Av`` can
		    be `None` if the matrix-vector product should be re-evaluated.
		    This parameter is modified in-place by `lgmres`, and can be used
		    to pass "guess" vectors in and out of the algorithm when solving
		    similar problems.
		store_outer_Av : bool, optional
		    Whether LGMRES should store also A*v in addition to vectors `v`
		    in the `outer_v` list. Default is True.
		
		Returns
		-------
		x : array or matrix
		    The converged solution.
		info : int
		    Provides convergence information:
		
		        - 0  : successful exit
		        - >0 : convergence to tolerance not achieved, number of iterations
		        - <0 : illegal input or breakdown
		
		Notes
		-----
		The LGMRES algorithm [1]_ [2]_ is designed to avoid the
		slowing of convergence in restarted GMRES, due to alternating
		residual vectors. Typically, it often outperforms GMRES(m) of
		comparable memory requirements by some measure, or at least is not
		much worse.
		
		Another advantage in this algorithm is that you can supply it with
		'guess' vectors in the `outer_v` argument that augment the Krylov
		subspace. If the solution lies close to the span of these vectors,
		the algorithm converges faster. This can be useful if several very
		similar matrices need to be inverted one after another, such as in
		Newton-Krylov iteration where the Jacobian matrix often changes
		little in the nonlinear steps.
		
		References
		----------
		.. [1] A.H. Baker and E.R. Jessup and T. Manteuffel,
		         SIAM J. Matrix Anal. Appl. 26, 962 (2005).
		.. [2] A.H. Baker, PhD thesis, University of Colorado (2003).
		         http://amath.colorado.edu/activities/thesis/allisonb/Thesis.ps
	**/
	static public function lgmres(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?inner_m:Dynamic, ?outer_k:Dynamic, ?outer_v:Dynamic, ?store_outer_Av:Dynamic):Dynamic;
	/**
		Compute least-squares solution to equation Ax = b.
		
		Compute a vector x such that the 2-norm ``|b - A x|`` is minimized.
		
		Parameters
		----------
		a : (M, N) array_like
		    Left hand side matrix (2-D array).
		b : (M,) or (M, K) array_like
		    Right hand side matrix or vector (1-D or 2-D array).
		cond : float, optional
		    Cutoff for 'small' singular values; used to determine effective
		    rank of a. Singular values smaller than
		    ``rcond * largest_singular_value`` are considered zero.
		overwrite_a : bool, optional
		    Discard data in `a` (may enhance performance). Default is False.
		overwrite_b : bool, optional
		    Discard data in `b` (may enhance performance). Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		lapack_driver: str, optional
		    Which LAPACK driver is used to solve the least-squares problem.
		    Options are ``'gelsd'``, ``'gelsy'``, ``'gelss'``. Default
		    (``'gelsd'``) is a good choice.  However, ``'gelsy'`` can be slightly
		    faster on many problems.  ``'gelss'`` was used historically.  It is
		    generally slow but uses less memory.
		
		    .. versionadded:: 0.17.0
		
		Returns
		-------
		x : (N,) or (N, K) ndarray
		    Least-squares solution.  Return shape matches shape of `b`.
		residues : () or (1,) or (K,) ndarray
		    Sums of residues, squared 2-norm for each column in ``b - a x``.
		    If rank of matrix a is ``< N`` or ``> M``, or ``'gelsy'`` is used,
		    this is an empty array. If b was 1-D, this is an (1,) shape array,
		    otherwise the shape is (K,).
		rank : int
		    Effective rank of matrix `a`.
		s : (min(M,N),) ndarray or None
		    Singular values of `a`. The condition number of a is
		    ``abs(s[0] / s[-1])``. None is returned when ``'gelsy'`` is used.
		
		Raises
		------
		LinAlgError
		    If computation does not converge.
		
		ValueError
		    When parameters are wrong.
		
		See Also
		--------
		optimize.nnls : linear least squares with non-negativity constraint
	**/
	static public function lstsq(a:Dynamic, b:Dynamic, ?cond:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic, ?lapack_driver:Dynamic):Dynamic;
	/**
		Make a linear system Ax=b
		
		Parameters
		----------
		A : LinearOperator
		    sparse or dense matrix (or any valid input to aslinearoperator)
		M : {LinearOperator, Nones}
		    preconditioner
		    sparse or dense matrix (or any valid input to aslinearoperator)
		x0 : {array_like, None}
		    initial guess to iterative method
		b : array_like
		    right hand side
		xtype : {'f', 'd', 'F', 'D', None}, optional
		    dtype of the x vector
		
		Returns
		-------
		(A, M, x, b, postprocess)
		    A : LinearOperator
		        matrix of the linear system
		    M : LinearOperator
		        preconditioner
		    x : rank 1 ndarray
		        initial guess
		    b : rank 1 ndarray
		        right hand side
		    postprocess : function
		        converts the solution vector to the appropriate
		        type and dimensions (e.g. (N,1) matrix)
	**/
	static public function make_system(A:Dynamic, M:Dynamic, x0:Dynamic, b:Dynamic, ?xtype:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		qr_insert(Q, R, u, k, which='row', rcond=None, overwrite_qru=False, check_finite=True)
		
		QR update on row or column insertions
		
		If ``A = Q R`` is the QR factorization of ``A``, return the QR
		factorization of ``A`` where rows or columns have been inserted starting
		at row or column ``k``.
		
		Parameters
		----------
		Q : (M, M) array_like
		    Unitary/orthogonal matrix from the QR decomposition of A.
		R : (M, N) array_like
		    Upper triangular matrix from the QR decomposition of A.
		u : (N,), (p, N), (M,), or (M, p) array_like
		    Rows or columns to insert
		k : int
		    Index before which `u` is to be inserted.
		which: {'row', 'col'}, optional
		    Determines if rows or columns will be inserted, defaults to 'row'
		rcond : float
		    Lower bound on the reciprocal condition number of ``Q`` augmented with
		    ``u/||u||`` Only used when updating economic mode (thin, (M,N) (N,N))
		    decompositions.  If None, machine precision is used.  Defaults to
		    None.
		overwrite_qru : bool, optional
		    If True, consume Q, R, and u, if possible, while performing the update,
		    otherwise make copies as necessary. Defaults to False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default is True.
		
		Returns
		-------
		Q1 : ndarray
		    Updated unitary/orthogonal factor
		R1 : ndarray
		    Updated upper triangular factor
		
		Raises
		------
		LinAlgError :
		    If updating a (M,N) (N,N) factorization and the reciprocal condition
		    number of Q augmented with u/||u|| is smaller than rcond.
		
		See Also
		--------
		qr, qr_multiply, qr_delete, qr_update
		
		Notes
		-----
		This routine does not guarantee that the diagonal entries of ``R1`` are
		positive.
		
		.. versionadded:: 0.16.0
		
		References
		----------
		
		.. [1] Golub, G. H. & Van Loan, C. F. Matrix Computations, 3rd Ed.
		       (Johns Hopkins University Press, 1996).
		
		.. [2] Daniel, J. W., Gragg, W. B., Kaufman, L. & Stewart, G. W.
		       Reorthogonalization and stable algorithms for updating the
		       Gram-Schmidt QR factorization. Math. Comput. 30, 772-795 (1976).
		
		.. [3] Reichel, L. & Gragg, W. B. Algorithm 686: FORTRAN Subroutines for
		       Updating the QR Decomposition. ACM Trans. Math. Softw. 16, 369-377
		       (1990).
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[  3.,  -2.,  -2.],
		...               [  6.,  -7.,   4.],
		...               [  7.,   8.,  -6.]])
		>>> q, r = linalg.qr(a)
		
		Given this QR decomposition, update q and r when 2 rows are inserted.
		
		>>> u = np.array([[  6.,  -9.,  -3.],
		...               [ -3.,  10.,   1.]])
		>>> q1, r1 = linalg.qr_insert(q, r, u, 2, 'row')
		>>> q1
		array([[-0.25445668,  0.02246245,  0.18146236, -0.72798806,  0.60979671],  # may vary (signs)
		       [-0.50891336,  0.23226178, -0.82836478, -0.02837033, -0.00828114],
		       [-0.50891336,  0.35715302,  0.38937158,  0.58110733,  0.35235345],
		       [ 0.25445668, -0.52202743, -0.32165498,  0.36263239,  0.65404509],
		       [-0.59373225, -0.73856549,  0.16065817, -0.0063658 , -0.27595554]])
		>>> r1
		array([[-11.78982612,   6.44623587,   3.81685018],  # may vary (signs)
		       [  0.        , -16.01393278,   3.72202865],
		       [  0.        ,   0.        ,  -6.13010256],
		       [  0.        ,   0.        ,   0.        ],
		       [  0.        ,   0.        ,   0.        ]])
		
		The update is equivalent, but faster than the following.
		
		>>> a1 = np.insert(a, 2, u, 0)
		>>> a1
		array([[  3.,  -2.,  -2.],
		       [  6.,  -7.,   4.],
		       [  6.,  -9.,  -3.],
		       [ -3.,  10.,   1.],
		       [  7.,   8.,  -6.]])
		>>> q_direct, r_direct = linalg.qr(a1)
		
		Check that we have equivalent results:
		
		>>> np.dot(q1, r1)
		array([[  3.,  -2.,  -2.],
		       [  6.,  -7.,   4.],
		       [  6.,  -9.,  -3.],
		       [ -3.,  10.,   1.],
		       [  7.,   8.,  -6.]])
		
		>>> np.allclose(np.dot(q1, r1), a1)
		True
		
		And the updated Q is still unitary:
		
		>>> np.allclose(np.dot(q1.T, q1), np.eye(5))
		True
	**/
	static public function qr_insert(args:haxe.extern.Rest<Dynamic>):Dynamic;
}