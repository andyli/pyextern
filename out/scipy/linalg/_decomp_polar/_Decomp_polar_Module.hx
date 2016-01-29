/* This file is generated, do not edit! */
package scipy.linalg._decomp_polar;
@:pythonImport("scipy.linalg._decomp_polar") extern class _Decomp_polar_Module {
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
		Compute the polar decomposition.
		
		Returns the factors of the polar decomposition [1]_ `u` and `p` such
		that ``a = up`` (if `side` is "right") or ``a = pu`` (if `side` is
		"left"), where `p` is positive semidefinite.  Depending on the shape
		of `a`, either the rows or columns of `u` are orthonormal.  When `a`
		is a square array, `u` is a square unitary array.  When `a` is not
		square, the "canonical polar decomposition" [2]_ is computed.
		
		Parameters
		----------
		a : (m, n) array_like
		    The array to be factored.
		side : {'left', 'right'}, optional
		    Determines whether a right or left polar decomposition is computed.
		    If `side` is "right", then ``a = up``.  If `side` is "left",  then
		    ``a = pu``.  The default is "right".
		
		Returns
		-------
		u : (m, n) ndarray
		    If `a` is square, then `u` is unitary.  If m > n, then the columns
		    of `a` are orthonormal, and if m < n, then the rows of `u` are
		    orthonormal.
		p : ndarray
		    `p` is Hermitian positive semidefinite.  If `a` is nonsingular, `p`
		    is positive definite.  The shape of `p` is (n, n) or (m, m), depending
		    on whether `side` is "right" or "left", respectively.
		
		References
		----------
		.. [1] R. A. Horn and C. R. Johnson, "Matrix Analysis", Cambridge
		       University Press, 1985.
		.. [2] N. J. Higham, "Functions of Matrices: Theory and Computation",
		       SIAM, 2008.
		
		Examples
		--------
		>>> from scipy.linalg import polar
		>>> a = np.array([[1, -1], [2, 4]])
		>>> u, p = polar(a)
		>>> u
		array([[ 0.85749293, -0.51449576],
		       [ 0.51449576,  0.85749293]])
		>>> p
		array([[ 1.88648444,  1.2004901 ],
		       [ 1.2004901 ,  3.94446746]])
		
		A non-square example, with m < n:
		
		>>> b = np.array([[0.5, 1, 2], [1.5, 3, 4]])
		>>> u, p = polar(b)
		>>> u
		array([[-0.21196618, -0.42393237,  0.88054056],
		       [ 0.39378971,  0.78757942,  0.4739708 ]])
		>>> p
		array([[ 0.48470147,  0.96940295,  1.15122648],
		       [ 0.96940295,  1.9388059 ,  2.30245295],
		       [ 1.15122648,  2.30245295,  3.65696431]])
		>>> u.dot(p)   # Verify the decomposition.
		array([[ 0.5,  1. ,  2. ],
		       [ 1.5,  3. ,  4. ]])
		>>> u.dot(u.T)   # The rows of u are orthonormal.
		array([[  1.00000000e+00,  -2.07353665e-17],
		       [ -2.07353665e-17,   1.00000000e+00]])
		
		Another non-square example, with m > n:
		
		>>> c = b.T
		>>> u, p = polar(c)
		>>> u
		array([[-0.21196618,  0.39378971],
		       [-0.42393237,  0.78757942],
		       [ 0.88054056,  0.4739708 ]])
		>>> p
		array([[ 1.23116567,  1.93241587],
		       [ 1.93241587,  4.84930602]])
		>>> u.dot(p)   # Verify the decomposition.
		array([[ 0.5,  1.5],
		       [ 1. ,  3. ],
		       [ 2. ,  4. ]])
		>>> u.T.dot(u)  # The columns of u are orthonormal.
		array([[  1.00000000e+00,  -1.26363763e-16],
		       [ -1.26363763e-16,   1.00000000e+00]])
	**/
	static public function polar(a:Dynamic, ?side:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Singular Value Decomposition.
		
		Factorizes the matrix a into two unitary matrices U and Vh, and
		a 1-D array s of singular values (real, non-negative) such that
		``a == U*S*Vh``, where S is a suitably shaped matrix of zeros with
		main diagonal s.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to decompose.
		full_matrices : bool, optional
		    If True, `U` and `Vh` are of shape ``(M,M)``, ``(N,N)``.
		    If False, the shapes are ``(M,K)`` and ``(K,N)``, where
		    ``K = min(M,N)``.
		compute_uv : bool, optional
		    Whether to compute also `U` and `Vh` in addition to `s`.
		    Default is True.
		overwrite_a : bool, optional
		    Whether to overwrite `a`; may improve performance.
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		U : ndarray
		    Unitary matrix having left singular vectors as columns.
		    Of shape ``(M,M)`` or ``(M,K)``, depending on `full_matrices`.
		s : ndarray
		    The singular values, sorted in non-increasing order.
		    Of shape (K,), with ``K = min(M, N)``.
		Vh : ndarray
		    Unitary matrix having right singular vectors as rows.
		    Of shape ``(N,N)`` or ``(K,N)`` depending on `full_matrices`.
		
		For ``compute_uv = False``, only `s` is returned.
		
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
		>>> a = np.random.randn(9, 6) + 1.j*np.random.randn(9, 6)
		>>> U, s, Vh = linalg.svd(a)
		>>> U.shape, Vh.shape, s.shape
		((9, 9), (6, 6), (6,))
		
		>>> U, s, Vh = linalg.svd(a, full_matrices=False)
		>>> U.shape, Vh.shape, s.shape
		((9, 6), (6, 6), (6,))
		>>> S = linalg.diagsvd(s, 6, 6)
		>>> np.allclose(a, np.dot(U, np.dot(S, Vh)))
		True
		
		>>> s2 = linalg.svd(a, compute_uv=False)
		>>> np.allclose(s, s2)
		True
	**/
	static public function svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
}