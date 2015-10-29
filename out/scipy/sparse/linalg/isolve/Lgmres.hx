/* This file is generated, do not edit! */
package scipy.sparse.linalg.isolve;
@:pythonImport("scipy.sparse.linalg.isolve.lgmres") extern class Lgmres {
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
	static public function get_blas_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Dynamic;
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
	static public function norm2(q:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}