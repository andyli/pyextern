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
	/**
		FGMRES Arnoldi process, with optional projection or augmentation
		
		Parameters
		----------
		matvec : callable
		    Operation A*x
		v0 : ndarray
		    Initial vector, normalized to nrm2(v0) == 1
		m : int
		    Number of GMRES rounds
		atol : float
		    Absolute tolerance for early exit
		lpsolve : callable
		    Left preconditioner L
		rpsolve : callable
		    Right preconditioner R
		CU : list of (ndarray, ndarray)
		    Columns of matrices C and U in GCROT
		outer_v : list of ndarrays
		    Augmentation vectors in LGMRES
		prepend_outer_v : bool, optional
		    Whether augmentation vectors come before or after 
		    Krylov iterates
		
		Raises
		------
		LinAlgError
		    If nans encountered
		
		Returns
		-------
		Q, R : ndarray
		    QR decomposition of the upper Hessenberg H=QR
		B : ndarray
		    Projections corresponding to matrix C
		vs : list of ndarray
		    Columns of matrix V
		zs : list of ndarray
		    Columns of matrix Z
		y : ndarray
		    Solution to ||H y - e_1||_2 = min!
		res : float
		    The final (preconditioned) residual norm
	**/
	static public function _fgmres(matvec:Dynamic, v0:Dynamic, m:Dynamic, atol:Dynamic, ?lpsolve:Dynamic, ?rpsolve:Dynamic, ?cs:Dynamic, ?outer_v:Dynamic, ?prepend_outer_v:Dynamic):Dynamic;
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
		
		Examples
		--------
		>>> import scipy.linalg as LA
		>>> a = np.random.rand(3,2)
		>>> x_gemv = LA.get_blas_funcs('gemv', (a,))
		>>> x_gemv.typecode
		'd'
		>>> x_gemv = LA.get_blas_funcs('gemv',(a*1j,))
		>>> x_gemv.typecode
		'z'
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
		types {float32, float64, complex64, complex128} respectively, and
		are stored in attribute ``typecode`` of the returned functions.
		
		Examples
		--------
		Suppose we would like to use '?lange' routine which computes the selected
		norm of an array. We pass our array in order to get the correct 'lange'
		flavor.
		
		>>> import scipy.linalg as LA
		>>> a = np.random.rand(3,2)
		>>> x_lange = LA.get_lapack_funcs('lange', (a,))
		>>> x_lange.typecode
		'd'
		>>> x_lange = LA.get_lapack_funcs('lange',(a*1j,))
		>>> x_lange.typecode
		'z'
		
		Several LAPACK routines work best when its internal WORK array has
		the optimal size (big enough for fast computation and small enough to
		avoid waste of memory). This size is determined also by a dedicated query
		to the function which is often wrapped as a standalone function and
		commonly denoted as ``###_lwork``. Below is an example for ``?sysv``
		
		>>> import scipy.linalg as LA
		>>> a = np.random.rand(1000,1000)
		>>> b = np.random.rand(1000,1)*1j
		>>> # We pick up zsysv and zsysv_lwork due to b array
		... xsysv, xlwork = LA.get_lapack_funcs(('sysv', 'sysv_lwork'), (a, b))
		>>> opt_lwork, _ = xlwork(a.shape[0])  # returns a complex for 'z' prefix
		>>> udut, ipiv, x, info = xsysv(a, b, lwork=int(opt_lwork.real))
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
		tol, atol : float, optional
		    Tolerances for convergence, ``norm(residual) <= max(tol*norm(b), atol)``.
		    The default for ``atol`` is `tol`.
		
		    .. warning::
		
		       The default value for `atol` will be changed in a future release.
		       For future compatibility, specify `atol` explicitly.
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
		prepend_outer_v : bool, optional 
		    Whether to put outer_v augmentation vectors before Krylov iterates.
		    In standard LGMRES, prepend_outer_v=False.
		
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
		.. [1] A.H. Baker and E.R. Jessup and T. Manteuffel, "A Technique for
		         Accelerating the Convergence of Restarted GMRES", SIAM J. Matrix
		         Anal. Appl. 26, 962 (2005).
		.. [2] A.H. Baker, "On Improving the Performance of the Linear Solver
		         restarted GMRES", PhD thesis, University of Colorado (2003).
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import lgmres
		>>> A = csc_matrix([[3, 2, 0], [1, -1, 0], [0, 5, 1]], dtype=float)
		>>> b = np.array([2, 4, -1], dtype=float)
		>>> x, exitCode = lgmres(A, b)
		>>> print(exitCode)            # 0 indicates successful convergence
		0
		>>> np.allclose(A.dot(x), b)
		True
	**/
	static public function lgmres(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?inner_m:Dynamic, ?outer_k:Dynamic, ?outer_v:Dynamic, ?store_outer_Av:Dynamic, ?prepend_outer_v:Dynamic, ?atol:Dynamic):Dynamic;
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
	static public function make_system(A:Dynamic, M:Dynamic, x0:Dynamic, b:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}