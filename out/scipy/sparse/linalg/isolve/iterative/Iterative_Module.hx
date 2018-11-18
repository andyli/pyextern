/* This file is generated, do not edit! */
package scipy.sparse.linalg.isolve.iterative;
@:pythonImport("scipy.sparse.linalg.isolve.iterative") extern class Iterative_Module {
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
		Allocate a new ndarray with aligned memory.
		
		Primary use case for this currently is working around a f2py issue
		in Numpy 1.9.1, where dtype.alignment is such that np.zeros() does
		not necessarily create arrays aligned up to it.
	**/
	static public function _aligned_zeros(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?align:Dynamic):Dynamic;
	/**
		Parse arguments for absolute tolerance in termination condition.
		
		Parameters
		----------
		tol, atol : object
		    The arguments passed into the solver routine by user.
		bnrm2 : float
		    2-norm of the rhs vector.
		get_residual : callable
		    Callable ``get_residual()`` that returns the initial value of
		    the residual.
		routine_name : str
		    Name of the routine.
	**/
	static public function _get_atol(tol:Dynamic, atol:Dynamic, bnrm2:Dynamic, get_residual:Dynamic, routine_name:Dynamic):Dynamic;
	/**
		Successful termination condition for the solvers.
	**/
	static public function _stoptest(residual:Dynamic, atol:Dynamic):Dynamic;
	static public var _type_conv : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Use BIConjugate Gradient iteration to solve ``Ax = b``.
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		    It is required that the linear operator can produce
		    ``Ax`` and ``A^T x``.
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol, atol : float, optional
		    Tolerances for convergence, ``norm(residual) <= max(tol*norm(b), atol)``.
		    The default for ``atol`` is ``'legacy'``, which emulates
		    a different legacy behavior.
		
		    .. warning::
		
		       The default value for `atol` will be changed in a future release.
		       For future compatibility, specify `atol` explicitly.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
	**/
	static public function bicg(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?atol:Dynamic):Dynamic;
	/**
		Use BIConjugate Gradient STABilized iteration to solve ``Ax = b``.
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol, atol : float, optional
		    Tolerances for convergence, ``norm(residual) <= max(tol*norm(b), atol)``.
		    The default for ``atol`` is ``'legacy'``, which emulates
		    a different legacy behavior.
		
		    .. warning::
		
		       The default value for `atol` will be changed in a future release.
		       For future compatibility, specify `atol` explicitly.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
	**/
	static public function bicgstab(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?atol:Dynamic):Dynamic;
	/**
		Use Conjugate Gradient iteration to solve ``Ax = b``.
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		    ``A`` must represent a hermitian, positive definite matrix.
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol, atol : float, optional
		    Tolerances for convergence, ``norm(residual) <= max(tol*norm(b), atol)``.
		    The default for ``atol`` is ``'legacy'``, which emulates
		    a different legacy behavior.
		
		    .. warning::
		
		       The default value for `atol` will be changed in a future release.
		       For future compatibility, specify `atol` explicitly.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
	**/
	static public function cg(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?atol:Dynamic):Dynamic;
	/**
		Use Conjugate Gradient Squared iteration to solve ``Ax = b``.
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real-valued N-by-N matrix of the linear system.
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol, atol : float, optional
		    Tolerances for convergence, ``norm(residual) <= max(tol*norm(b), atol)``.
		    The default for ``atol`` is ``'legacy'``, which emulates
		    a different legacy behavior.
		
		    .. warning::
		
		       The default value for `atol` will be changed in a future release.
		       For future compatibility, specify `atol` explicitly.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
	**/
	static public function cgs(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?atol:Dynamic):Dynamic;
	static public var common_doc1 : Dynamic;
	static public var common_doc2 : Dynamic;
	/**
		decorator(caller) converts a caller function into a decorator
	**/
	static public function decorator(caller:Dynamic, ?_func:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Use Generalized Minimal RESidual iteration to solve ``Ax = b``.
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : int
		    Provides convergence information:
		      * 0  : successful exit
		      * >0 : convergence to tolerance not achieved, number of iterations
		      * <0 : illegal input or breakdown
		
		Other parameters
		----------------
		x0 : {array, matrix}
		    Starting guess for the solution (a vector of zeros by default).
		tol, atol : float, optional
		    Tolerances for convergence, ``norm(residual) <= max(tol*norm(b), atol)``.
		    The default for ``atol`` is ``'legacy'``, which emulates
		    a different legacy behavior.
		
		    .. warning::
		
		       The default value for `atol` will be changed in a future release.
		       For future compatibility, specify `atol` explicitly.
		restart : int, optional
		    Number of iterations between restarts. Larger values increase
		    iteration cost, but may be necessary for convergence.
		    Default is 20.
		maxiter : int, optional
		    Maximum number of iterations (restart cycles).  Iteration will stop
		    after maxiter steps even if the specified tolerance has not been
		    achieved.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Inverse of the preconditioner of A.  M should approximate the
		    inverse of A and be easy to solve for (see Notes).  Effective
		    preconditioning dramatically improves the rate of convergence,
		    which implies that fewer iterations are needed to reach a given
		    error tolerance.  By default, no preconditioner is used.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(rk), where rk is the current residual vector.
		restrt : int, optional
		    DEPRECATED - use `restart` instead.
		
		See Also
		--------
		LinearOperator
		
		Notes
		-----
		A preconditioner, P, is chosen such that P is close to A but easy to solve
		for. The preconditioner parameter required by this routine is
		``M = P^-1``. The inverse should preferably not be calculated
		explicitly.  Rather, use the following template to produce M::
		
		  # Construct a linear operator that computes P^-1 * x.
		  import scipy.sparse.linalg as spla
		  M_x = lambda x: spla.spsolve(P, x)
		  M = spla.LinearOperator((n, n), M_x)
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import gmres
		>>> A = csc_matrix([[3, 2, 0], [1, -1, 0], [0, 5, 1]], dtype=float)
		>>> b = np.array([2, 4, -1], dtype=float)
		>>> x, exitCode = gmres(A, b)
		>>> print(exitCode)            # 0 indicates successful convergence
		0
		>>> np.allclose(A.dot(x), b)
		True
	**/
	static public function gmres(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?restart:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?restrt:Dynamic, ?atol:Dynamic):Dynamic;
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
	/**
		Decorate a function with a threading lock and prevent reentrant calls.
	**/
	static public function non_reentrant(?err_msg:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Use Quasi-Minimal Residual iteration to solve ``Ax = b``.
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real-valued N-by-N matrix of the linear system.
		    It is required that the linear operator can produce
		    ``Ax`` and ``A^T x``.
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol, atol : float, optional
		    Tolerances for convergence, ``norm(residual) <= max(tol*norm(b), atol)``.
		    The default for ``atol`` is ``'legacy'``, which emulates
		    a different legacy behavior.
		
		    .. warning::
		
		       The default value for `atol` will be changed in a future release.
		       For future compatibility, specify `atol` explicitly.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M1 : {sparse matrix, dense matrix, LinearOperator}
		    Left preconditioner for A.
		M2 : {sparse matrix, dense matrix, LinearOperator}
		    Right preconditioner for A. Used together with the left
		    preconditioner M1.  The matrix M1*A*M2 should have better
		    conditioned than A alone.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		
		See Also
		--------
		LinearOperator
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import qmr
		>>> A = csc_matrix([[3, 2, 0], [1, -1, 0], [0, 5, 1]], dtype=float)
		>>> b = np.array([2, 4, -1], dtype=float)
		>>> x, exitCode = qmr(A, b)
		>>> print(exitCode)            # 0 indicates successful convergence
		0
		>>> np.allclose(A.dot(x), b)
		True
	**/
	static public function qmr(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M1:Dynamic, ?M2:Dynamic, ?callback:Dynamic, ?atol:Dynamic):Dynamic;
	static public function set_docstring(header:Dynamic, Ainfo:Dynamic, ?footer:Dynamic, ?atol_default:Dynamic):Dynamic;
}