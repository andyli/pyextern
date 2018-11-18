/* This file is generated, do not edit! */
package scipy.optimize._remove_redundancy;
@:pythonImport("scipy.optimize._remove_redundancy") extern class _Remove_redundancy_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the index of the densest row of A. Ignores rows that are not
		eligible for consideration.
		
		Parameters
		----------
		A : 2-D array
		    An array representing a matrix
		eligibleRows : 1-D logical array
		    Values indicate whether the corresponding row of A is eligible
		    to be considered
		
		Returns
		-------
		i_densest : int
		    Index of the densest row in A eligible for consideration
	**/
	static public function _get_densest(A:Dynamic, eligibleRows:Dynamic):Int;
	/**
		Eliminates redundant equations from system of equations defined by Ax = b
		and identifies infeasibilities.
		
		Parameters
		----------
		A : 2-D array
		    An array representing the left-hand side of a system of equations
		b : 1-D array
		    An array representing the right-hand side of a system of equations
		
		Returns
		-------
		A : 2-D array
		    An array representing the left-hand side of a system of equations
		b : 1-D array
		    An array representing the right-hand side of a system of equations
		status: int
		    An integer indicating the status of the system
		    0: No infeasibility identified
		    2: Trivially infeasible
		message : str
		    A string descriptor of the exit status of the optimization.
		
		References
		----------
		.. [2] Andersen, Erling D. "Finding all linearly dependent rows in
		       large-scale linear programming." Optimization Methods and Software
		       6.3 (1995): 219-227.
	**/
	static public function _remove_redundancy(A:Dynamic, b:Dynamic):Dynamic;
	/**
		Eliminates redundant equations from system of equations defined by Ax = b
		and identifies infeasibilities.
		
		Parameters
		----------
		A : 2-D sparse matrix
		    An matrix representing the left-hand side of a system of equations
		rhs : 1-D array
		    An array representing the right-hand side of a system of equations
		
		Returns
		----------
		A : 2-D sparse matrix
		    A matrix representing the left-hand side of a system of equations
		rhs : 1-D array
		    An array representing the right-hand side of a system of equations
		status: int
		    An integer indicating the status of the system
		    0: No infeasibility identified
		    2: Trivially infeasible
		message : str
		    A string descriptor of the exit status of the optimization.
		
		References
		----------
		.. [2] Andersen, Erling D. "Finding all linearly dependent rows in
		       large-scale linear programming." Optimization Methods and Software
		       6.3 (1995): 219-227.
	**/
	static public function _remove_redundancy_dense(A:Dynamic, rhs:Dynamic):Dynamic;
	/**
		Eliminates redundant equations from system of equations defined by Ax = b
		and identifies infeasibilities.
		
		Parameters
		----------
		A : 2-D sparse matrix
		    An matrix representing the left-hand side of a system of equations
		rhs : 1-D array
		    An array representing the right-hand side of a system of equations
		
		Returns
		-------
		A : 2-D sparse matrix
		    A matrix representing the left-hand side of a system of equations
		rhs : 1-D array
		    An array representing the right-hand side of a system of equations
		status: int
		    An integer indicating the status of the system
		    0: No infeasibility identified
		    2: Trivially infeasible
		message : str
		    A string descriptor of the exit status of the optimization.
		
		References
		----------
		.. [2] Andersen, Erling D. "Finding all linearly dependent rows in
		       large-scale linear programming." Optimization Methods and Software
		       6.3 (1995): 219-227.
	**/
	static public function _remove_redundancy_sparse(A:Dynamic, rhs:Dynamic):Dynamic;
	/**
		 Eliminates trivial equations from system of equations defined by Ax = b
		and identifies trivial infeasibilities
		
		 Parameters
		 ----------
		 A : 2-D array
		     An array representing the left-hand side of a system of equations
		 b : 1-D array
		     An array representing the right-hand side of a system of equations
		
		 Returns
		 -------
		 A : 2-D array
		     An array representing the left-hand side of a system of equations
		 b : 1-D array
		     An array representing the right-hand side of a system of equations
		 status: int
		     An integer indicating the status of the removal operation
		     0: No infeasibility identified
		     2: Trivially infeasible
		 message : str
		     A string descriptor of the exit status of the optimization.
		
		 
	**/
	static public function _remove_zero_rows(A:Dynamic, b:Dynamic):Dynamic;
	/**
		Counts the number of nonzeros in each row of input array A.
		Nonzeros are defined as any element with absolute value greater than
		tol = 1e-13. This value should probably be an input to the function.
		
		Parameters
		----------
		A : 2-D array
		    An array representing a matrix
		
		Returns
		-------
		rowcount : 1-D array
		    Number of nonzeros in each row of A
	**/
	static public function _row_count(A:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function bg_update_dense(plu:Dynamic, perm_r:Dynamic, v:Dynamic, j:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Singular Value Decomposition.
		
		Factorizes the matrix `a` into two unitary matrices ``U`` and ``Vh``, and
		a 1-D array ``s`` of singular values (real, non-negative) such that
		``a == U @ S @ Vh``, where ``S`` is a suitably shaped matrix of zeros with
		main diagonal ``s``.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to decompose.
		full_matrices : bool, optional
		    If True (default), `U` and `Vh` are of shape ``(M, M)``, ``(N, N)``.
		    If False, the shapes are ``(M, K)`` and ``(K, N)``, where
		    ``K = min(M, N)``.
		compute_uv : bool, optional
		    Whether to compute also ``U`` and ``Vh`` in addition to ``s``.
		    Default is True.
		overwrite_a : bool, optional
		    Whether to overwrite `a`; may improve performance.
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		lapack_driver : {'gesdd', 'gesvd'}, optional
		    Whether to use the more efficient divide-and-conquer approach
		    (``'gesdd'``) or general rectangular approach (``'gesvd'``)
		    to compute the SVD. MATLAB and Octave use the ``'gesvd'`` approach.
		    Default is ``'gesdd'``.
		
		    .. versionadded:: 0.18
		
		Returns
		-------
		U : ndarray
		    Unitary matrix having left singular vectors as columns.
		    Of shape ``(M, M)`` or ``(M, K)``, depending on `full_matrices`.
		s : ndarray
		    The singular values, sorted in non-increasing order.
		    Of shape (K,), with ``K = min(M, N)``.
		Vh : ndarray
		    Unitary matrix having right singular vectors as rows.
		    Of shape ``(N, N)`` or ``(K, N)`` depending on `full_matrices`.
		
		For ``compute_uv=False``, only ``s`` is returned.
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
		
		See also
		--------
		svdvals : Compute singular values of a matrix.
		diagsvd : Construct the Sigma matrix, given the vector s.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> m, n = 9, 6
		>>> a = np.random.randn(m, n) + 1.j*np.random.randn(m, n)
		>>> U, s, Vh = linalg.svd(a)
		>>> U.shape,  s.shape, Vh.shape
		((9, 9), (6,), (6, 6))
		
		Reconstruct the original matrix from the decomposition:
		
		>>> sigma = np.zeros((m, n))
		>>> for i in range(min(m, n)):
		...     sigma[i, i] = s[i]
		>>> a1 = np.dot(U, np.dot(sigma, Vh))
		>>> np.allclose(a, a1)
		True
		
		Alternatively, use ``full_matrices=False`` (notice that the shape of
		``U`` is then ``(m, n)`` instead of ``(m, m)``):
		
		>>> U, s, Vh = linalg.svd(a, full_matrices=False)
		>>> U.shape, s.shape, Vh.shape
		((9, 6), (6,), (6, 6))
		>>> S = np.diag(s)
		>>> np.allclose(a, np.dot(U, np.dot(S, Vh)))
		True
		
		>>> s2 = linalg.svd(a, compute_uv=False)
		>>> np.allclose(s, s2)
		True
	**/
	static public function svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic, ?lapack_driver:Dynamic):Dynamic;
}