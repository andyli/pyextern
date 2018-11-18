/* This file is generated, do not edit! */
package scipy.integrate._ivp.bdf;
@:pythonImport("scipy.integrate._ivp.bdf") extern class Bdf_Module {
	static public var EPS : Dynamic;
	static public var MAX_FACTOR : Dynamic;
	static public var MAX_ORDER : Dynamic;
	static public var MIN_FACTOR : Dynamic;
	static public var NEWTON_MAXITER : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Change differences array in-place when step size is changed.
	**/
	static public function change_D(D:Dynamic, order:Dynamic, factor:Dynamic):Dynamic;
	/**
		Compute the matrix for changing the differences array.
	**/
	static public function compute_R(order:Dynamic, factor:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Sparse matrix with ones on diagonal
		
		Returns a sparse (m x n) matrix where the k-th diagonal
		is all ones and everything else is zeros.
		
		Parameters
		----------
		m : int
		    Number of rows in the matrix.
		n : int, optional
		    Number of columns. Default: `m`.
		k : int, optional
		    Diagonal to place ones on. Default: 0 (main diagonal).
		dtype : dtype, optional
		    Data type of the matrix.
		format : str, optional
		    Sparse format of the result, e.g. format="csr", etc.
		
		Examples
		--------
		>>> from scipy import sparse
		>>> sparse.eye(3).toarray()
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
		>>> sparse.eye(3, dtype=np.int8)
		<3x3 sparse matrix of type '<class 'numpy.int8'>'
		    with 3 stored elements (1 diagonals) in DIAgonal format>
	**/
	static public function eye(m:Dynamic, ?n:Dynamic, ?k:Dynamic, ?dtype:Dynamic, ?format:Dynamic):Dynamic;
	/**
		Group columns of a 2-d matrix for sparse finite differencing [1]_.
		
		Two columns are in the same group if in each row at least one of them
		has zero. A greedy sequential algorithm is used to construct groups.
		
		Parameters
		----------
		A : array_like or sparse matrix, shape (m, n)
		    Matrix of which to group columns.
		order : int, iterable of int with shape (n,) or None
		    Permutation array which defines the order of columns enumeration.
		    If int or None, a random permutation is used with `order` used as
		    a random seed. Default is 0, that is use a random permutation but
		    guarantee repeatability.
		
		Returns
		-------
		groups : ndarray of int, shape (n,)
		    Contains values from 0 to n_groups-1, where n_groups is the number
		    of found groups. Each value ``groups[i]`` is an index of a group to
		    which i-th column assigned. The procedure was helpful only if
		    n_groups is significantly less than n.
		
		References
		----------
		.. [1] A. Curtis, M. J. D. Powell, and J. Reid, "On the estimation of
		       sparse Jacobian matrices", Journal of the Institute of Mathematics
		       and its Applications, 13 (1974), pp. 117-120.
	**/
	static public function group_columns(A:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Is x of a sparse matrix type?
		
		Parameters
		----------
		x
		    object to check for being a sparse matrix
		
		Returns
		-------
		bool
		    True if x is a sparse matrix, False otherwise
		
		Notes
		-----
		issparse and isspmatrix are aliases for the same function.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, isspmatrix
		>>> isspmatrix(csr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import isspmatrix
		>>> isspmatrix(5)
		False
	**/
	static public function issparse(x:Dynamic):Dynamic;
	/**
		Compute pivoted LU decomposition of a matrix.
		
		The decomposition is::
		
		    A = P L U
		
		where P is a permutation matrix, L lower triangular with unit
		diagonal elements, and U upper triangular.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to decompose
		overwrite_a : bool, optional
		    Whether to overwrite data in A (may increase performance)
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		lu : (N, N) ndarray
		    Matrix containing U in its upper triangle, and L in its lower triangle.
		    The unit diagonal elements of L are not stored.
		piv : (N,) ndarray
		    Pivot indices representing the permutation matrix P:
		    row i of matrix was interchanged with row piv[i].
		
		See also
		--------
		lu_solve : solve an equation system using the LU factorization of a matrix
		
		Notes
		-----
		This is a wrapper to the ``*GETRF`` routines from LAPACK.
		
		Examples
		--------
		>>> from scipy.linalg import lu_factor
		>>> from numpy import tril, triu, allclose, zeros, eye
		>>> A = np.array([[2, 5, 8, 7], [5, 2, 2, 8], [7, 5, 6, 6], [5, 4, 4, 8]])
		>>> lu, piv = lu_factor(A)
		>>> piv
		array([2, 2, 3, 3], dtype=int32)
		
		Convert LAPACK's ``piv`` array to NumPy index and test the permutation 
		
		>>> piv_py = [2, 0, 3, 1]
		>>> L, U = np.tril(lu, k=-1) + np.eye(4), np.triu(lu)
		>>> np.allclose(A[piv_py] - L @ U, np.zeros((4, 4)))
		True
	**/
	static public function lu_factor(a:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve an equation system, a x = b, given the LU factorization of a
		
		Parameters
		----------
		(lu, piv)
		    Factorization of the coefficient matrix a, as given by lu_factor
		b : array
		    Right-hand side
		trans : {0, 1, 2}, optional
		    Type of system to solve:
		
		    =====  =========
		    trans  system
		    =====  =========
		    0      a x   = b
		    1      a^T x = b
		    2      a^H x = b
		    =====  =========
		overwrite_b : bool, optional
		    Whether to overwrite data in b (may increase performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : array
		    Solution to the system
		
		See also
		--------
		lu_factor : LU factorize a matrix
		
		Examples
		--------
		>>> from scipy.linalg import lu_factor, lu_solve
		>>> A = np.array([[2, 5, 8, 7], [5, 2, 2, 8], [7, 5, 6, 6], [5, 4, 4, 8]])
		>>> b = np.array([1, 1, 1, 1])
		>>> lu, piv = lu_factor(A)
		>>> x = lu_solve((lu, piv), b)
		>>> np.allclose(A @ x - b, np.zeros((4,)))
		True
	**/
	static public function lu_solve(lu_and_piv:Dynamic, b:Dynamic, ?trans:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Array<Dynamic>;
	/**
		Compute RMS norm.
	**/
	static public function norm(x:Dynamic):Dynamic;
	/**
		Finite differences Jacobian approximation tailored for ODE solvers.
		
		This function computes finite difference approximation to the Jacobian
		matrix of `fun` with respect to `y` using forward differences.
		The Jacobian matrix has shape (n, n) and its element (i, j) is equal to
		``d f_i / d y_j``.
		
		A special feature of this function is the ability to correct the step
		size from iteration to iteration. The main idea is to keep the finite
		difference significantly separated from its round-off error which
		approximately equals ``EPS * np.abs(f)``. It reduces a possibility of a
		huge error and assures that the estimated derivative are reasonably close
		to the true values (i.e. the finite difference approximation is at least
		qualitatively reflects the structure of the true Jacobian).
		
		Parameters
		----------
		fun : callable
		    Right-hand side of the system implemented in a vectorized fashion.
		t : float
		    Current time.
		y : ndarray, shape (n,)
		    Current state.
		f : ndarray, shape (n,)
		    Value of the right hand side at (t, y).
		threshold : float
		    Threshold for `y` value used for computing the step size as
		    ``factor * np.maximum(np.abs(y), threshold)``. Typically the value of
		    absolute tolerance (atol) for a solver should be passed as `threshold`.
		factor : ndarray with shape (n,) or None
		    Factor to use for computing the step size. Pass None for the very
		    evaluation, then use the value returned from this function.
		sparsity : tuple (structure, groups) or None
		    Sparsity structure of the Jacobian, `structure` must be csc_matrix.
		
		Returns
		-------
		J : ndarray or csc_matrix, shape (n, n)
		    Jacobian matrix.
		factor : ndarray, shape (n,)
		    Suggested `factor` for the next evaluation.
	**/
	static public function num_jac(fun:Dynamic, t:Dynamic, y:Dynamic, f:Dynamic, threshold:Dynamic, factor:Dynamic, ?sparsity:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Empirically select a good initial step.
		
		The algorithm is described in [1]_.
		
		Parameters
		----------
		fun : callable
		    Right-hand side of the system.
		t0 : float
		    Initial value of the independent variable.
		y0 : ndarray, shape (n,)
		    Initial value of the dependent variable.
		f0 : ndarray, shape (n,)
		    Initial value of the derivative, i. e. ``fun(t0, y0)``.
		direction : float
		    Integration direction.
		order : float
		    Method order.
		rtol : float
		    Desired relative tolerance.
		atol : float
		    Desired absolute tolerance.
		
		Returns
		-------
		h_abs : float
		    Absolute value of the suggested initial step.
		
		References
		----------
		.. [1] E. Hairer, S. P. Norsett G. Wanner, "Solving Ordinary Differential
		       Equations I: Nonstiff Problems", Sec. II.4.
	**/
	static public function select_initial_step(fun:Dynamic, t0:Dynamic, y0:Dynamic, f0:Dynamic, direction:Dynamic, order:Dynamic, rtol:Dynamic, atol:Dynamic):Float;
	/**
		Solve the algebraic system resulting from BDF method.
	**/
	static public function solve_bdf_system(fun:Dynamic, t_new:Dynamic, y_predict:Dynamic, c:Dynamic, psi:Dynamic, LU:Dynamic, solve_lu:Dynamic, scale:Dynamic, tol:Dynamic):Dynamic;
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
		.. [1] SuperLU http://crd.lbl.gov/~xiaoye/SuperLU/
		
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
		Assert that max_Step is valid and return it.
	**/
	static public function validate_max_step(max_step:Dynamic):Dynamic;
	/**
		Validate tolerance values.
	**/
	static public function validate_tol(rtol:Dynamic, atol:Dynamic, n:Dynamic):Dynamic;
	/**
		Display a warning for extraneous keyword arguments.
		
		The initializer of each solver class is expected to collect keyword
		arguments that it doesn't understand and warn about them. This function
		prints a warning for each key in the supplied dictionary.
		
		Parameters
		----------
		extraneous : dict
		    Extraneous keyword arguments
	**/
	static public function warn_extraneous(extraneous:Dynamic):Dynamic;
}