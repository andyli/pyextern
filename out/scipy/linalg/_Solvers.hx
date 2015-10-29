/* This file is generated, do not edit! */
package scipy.linalg;
@:pythonImport("scipy.linalg._solvers") extern class _Solvers {
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
		Solves the discrete Lyapunov equation using a bilinear transformation.
		
		This function is called by the `solve_discrete_lyapunov` function with
		`method=bilinear`. It is not supposed to be called directly.
	**/
	static public function _solve_discrete_lyapunov_bilinear(a:Dynamic, q:Dynamic):Dynamic;
	/**
		Solves the discrete Lyapunov equation directly.
		
		This function is called by the `solve_discrete_lyapunov` function with
		`method=direct`. It is not supposed to be called directly.
	**/
	static public function _solve_discrete_lyapunov_direct(a:Dynamic, q:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
	static public function get_lapack_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Dynamic;
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
		Kronecker product.
		
		The result is the block matrix::
		
		    a[0,0]*b    a[0,1]*b  ... a[0,-1]*b
		    a[1,0]*b    a[1,1]*b  ... a[1,-1]*b
		    ...
		    a[-1,0]*b   a[-1,1]*b ... a[-1,-1]*b
		
		Parameters
		----------
		a : (M, N) ndarray
		    Input array
		b : (P, Q) ndarray
		    Input array
		
		Returns
		-------
		A : (M*P, N*Q) ndarray
		    Kronecker product of `a` and `b`.
		
		Examples
		--------
		>>> from numpy import array
		>>> from scipy.linalg import kron
		>>> kron(array([[1,2],[3,4]]), array([[1,1,1]]))
		array([[1, 1, 1, 2, 2, 2],
		       [3, 3, 3, 4, 4, 4]])
	**/
	static public function kron(a:Dynamic, b:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute Schur decomposition of a matrix.
		
		The Schur decomposition is::
		
		    A = Z T Z^H
		
		where Z is unitary and T is either upper-triangular, or for real
		Schur decomposition (output='real'), quasi-upper triangular.  In
		the quasi-triangular form, 2x2 blocks describing complex-valued
		eigenvalue pairs may extrude from the diagonal.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to decompose
		output : {'real', 'complex'}, optional
		    Construct the real or complex Schur decomposition (for real matrices).
		lwork : int, optional
		    Work array size. If None or -1, it is automatically computed.
		overwrite_a : bool, optional
		    Whether to overwrite data in a (may improve performance).
		sort : {None, callable, 'lhp', 'rhp', 'iuc', 'ouc'}, optional
		    Specifies whether the upper eigenvalues should be sorted.  A callable
		    may be passed that, given a eigenvalue, returns a boolean denoting
		    whether the eigenvalue should be sorted to the top-left (True).
		    Alternatively, string parameters may be used::
		
		        'lhp'   Left-hand plane (x.real < 0.0)
		        'rhp'   Right-hand plane (x.real > 0.0)
		        'iuc'   Inside the unit circle (x*x.conjugate() <= 1.0)
		        'ouc'   Outside the unit circle (x*x.conjugate() > 1.0)
		
		    Defaults to None (no sorting).
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		T : (M, M) ndarray
		    Schur form of A. It is real-valued for the real Schur decomposition.
		Z : (M, M) ndarray
		    An unitary Schur transformation matrix for A.
		    It is real-valued for the real Schur decomposition.
		sdim : int
		    If and only if sorting was requested, a third return value will
		    contain the number of eigenvalues satisfying the sort condition.
		
		Raises
		------
		LinAlgError
		    Error raised under three conditions:
		
		    1. The algorithm failed due to a failure of the QR algorithm to
		       compute all eigenvalues
		    2. If eigenvalue sorting was requested, the eigenvalues could not be
		       reordered due to a failure to separate eigenvalues, usually because
		       of poor conditioning
		    3. If eigenvalue sorting was requested, roundoff errors caused the
		       leading eigenvalues to no longer satisfy the sorting condition
		
		See also
		--------
		rsf2csf : Convert real Schur form to complex Schur form
	**/
	static public function schur(a:Dynamic, ?output:Dynamic, ?lwork:Dynamic, ?overwrite_a:Dynamic, ?sort:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve the equation ``a x = b`` for ``x``.
		
		Parameters
		----------
		a : (M, M) array_like
		    A square matrix.
		b : (M,) or (M, N) array_like
		    Right-hand side matrix in ``a x = b``.
		sym_pos : bool, optional
		    Assume `a` is symmetric and positive definite.
		lower : bool, optional
		    Use only data contained in the lower triangle of `a`, if `sym_pos` is
		    true.  Default is to use upper triangle.
		overwrite_a : bool, optional
		    Allow overwriting data in `a` (may enhance performance).
		    Default is False.
		overwrite_b : bool, optional
		    Allow overwriting data in `b` (may enhance performance).
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (M,) or (M, N) ndarray
		    Solution to the system ``a x = b``.  Shape of the return matches the
		    shape of `b`.
		
		Raises
		------
		LinAlgError
		    If `a` is singular.
		
		Examples
		--------
		Given `a` and `b`, solve for `x`:
		
		>>> a = np.array([[3, 2, 0], [1, -1, 0], [0, 5, 1]])
		>>> b = np.array([2, 4, -1])
		>>> from scipy import linalg
		>>> x = linalg.solve(a, b)
		>>> x
		array([ 2., -2.,  9.])
		>>> np.dot(a, x) == b
		array([ True,  True,  True], dtype=bool)
	**/
	static public function solve(a:Dynamic, b:Dynamic, ?sym_pos:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solves the continuous algebraic Riccati equation, or CARE, defined
		as (A'X + XA - XBR^-1B'X+Q=0) directly using a Schur decomposition
		method.
		
		Parameters
		----------
		a : (M, M) array_like
		    Input
		b : (M, N) array_like
		    Input
		q : (M, M) array_like
		    Input
		r : (N, N) array_like
		    Non-singular, square matrix
		
		Returns
		-------
		x : (M, M) ndarray
		    Solution to the continuous algebraic Riccati equation
		
		See Also
		--------
		solve_discrete_are : Solves the discrete algebraic Riccati equation
		
		Notes
		-----
		Method taken from:
		Laub, "A Schur Method for Solving Algebraic Riccati Equations."
		U.S. Energy Research and Development Agency under contract
		ERDA-E(49-18)-2087.
		http://dspace.mit.edu/bitstream/handle/1721.1/1301/R-0859-05666488.pdf
		
		.. versionadded:: 0.11.0
	**/
	static public function solve_continuous_are(a:Dynamic, b:Dynamic, q:Dynamic, r:Dynamic):Dynamic;
	/**
		Solves the disctrete algebraic Riccati equation, or DARE, defined as
		(X = A'XA-(A'XB)(R+B'XB)^-1(B'XA)+Q), directly using a Schur decomposition
		method.
		
		Parameters
		----------
		a : (M, M) array_like
		    Non-singular, square matrix
		b : (M, N) array_like
		    Input
		q : (M, M) array_like
		    Input
		r : (N, N) array_like
		    Non-singular, square matrix
		
		Returns
		-------
		x : ndarray
		    Solution to the continuous Lyapunov equation
		
		See Also
		--------
		solve_continuous_are : Solves the continuous algebraic Riccati equation
		
		Notes
		-----
		Method taken from:
		Laub, "A Schur Method for Solving Algebraic Riccati Equations."
		U.S. Energy Research and Development Agency under contract
		ERDA-E(49-18)-2087.
		http://dspace.mit.edu/bitstream/handle/1721.1/1301/R-0859-05666488.pdf
		
		.. versionadded:: 0.11.0
	**/
	static public function solve_discrete_are(a:Dynamic, b:Dynamic, q:Dynamic, r:Dynamic):Dynamic;
	/**
		Solves the discrete Lyapunov equation :math:`(A'XA-X=-Q)`.
		
		Parameters
		----------
		a : (M, M) array_like
		    A square matrix
		
		q : (M, M) array_like
		    Right-hand side square matrix
		
		method : {'direct', 'bilinear'}, optional
		    Type of solver.
		
		    If not given, chosen to be ``direct`` if ``M`` is less than 10 and
		    ``bilinear`` otherwise.
		
		Returns
		-------
		x : ndarray
		    Solution to the discrete Lyapunov equation
		
		See Also
		--------
		solve_lyapunov : computes the solution to the continuous Lyapunov equation
		
		Notes
		-----
		This section describes the available solvers that can be selected by the
		'method' parameter. The default method is *direct* if ``M`` is less than 10
		and ``bilinear`` otherwise.
		
		Method *direct* uses a direct analytical solution to the discrete Lyapunov
		equation. The algorithm is given in, for example, [1]_. However it requires
		the linear solution of a system with dimension :math:`M^2` so that
		performance degrades rapidly for even moderately sized matrices.
		
		Method *bilinear* uses a bilinear transformation to convert the discrete
		Lyapunov equation to a continuous Lyapunov equation :math:`(B'X+XB=-C)`
		where :math:`B=(A-I)(A+I)^{-1}` and
		:math:`C=2(A' + I)^{-1} Q (A + I)^{-1}`. The continuous equation can be
		efficiently solved since it is a special case of a Sylvester equation.
		The transformation algorithm is from Popov (1964) as described in [2]_.
		
		.. versionadded:: 0.11.0
		
		References
		----------
		.. [1] Hamilton, James D. Time Series Analysis, Princeton: Princeton
		   University Press, 1994.  265.  Print.
		   http://www.scribd.com/doc/20577138/Hamilton-1994-Time-Series-Analysis
		.. [2] Gajic, Z., and M.T.J. Qureshi. 2008.
		   Lyapunov Matrix Equation in System Stability and Control.
		   Dover Books on Engineering Series. Dover Publications.
	**/
	static public function solve_discrete_lyapunov(a:Dynamic, q:Dynamic, ?method:Dynamic):Dynamic;
	/**
		Solves the continuous Lyapunov equation (AX + XA^H = Q) given the values
		of A and Q using the Bartels-Stewart algorithm.
		
		Parameters
		----------
		a : array_like
		    A square matrix
		
		q : array_like
		    Right-hand side square matrix
		
		Returns
		-------
		x : array_like
		    Solution to the continuous Lyapunov equation
		
		See Also
		--------
		solve_sylvester : computes the solution to the Sylvester equation
		
		Notes
		-----
		Because the continuous Lyapunov equation is just a special form of the
		Sylvester equation, this solver relies entirely on solve_sylvester for a
		solution.
		
		.. versionadded:: 0.11.0
	**/
	static public function solve_lyapunov(a:Dynamic, q:Dynamic):Dynamic;
	/**
		Computes a solution (X) to the Sylvester equation (AX + XB = Q).
		
		Parameters
		----------
		a : (M, M) array_like
		    Leading matrix of the Sylvester equation
		b : (N, N) array_like
		    Trailing matrix of the Sylvester equation
		q : (M, N) array_like
		    Right-hand side
		
		Returns
		-------
		x : (M, N) ndarray
		    The solution to the Sylvester equation.
		
		Raises
		------
		LinAlgError
		    If solution was not found
		
		Notes
		-----
		Computes a solution to the Sylvester matrix equation via the Bartels-
		Stewart algorithm.  The A and B matrices first undergo Schur
		decompositions.  The resulting matrices are used to construct an
		alternative Sylvester equation (``RY + YS^T = F``) where the R and S
		matrices are in quasi-triangular form (or, when R, S or F are complex,
		triangular form).  The simplified equation is then solved using
		``*TRSYL`` from LAPACK directly.
		
		.. versionadded:: 0.11.0
	**/
	static public function solve_sylvester(a:Dynamic, b:Dynamic, q:Dynamic):Dynamic;
}