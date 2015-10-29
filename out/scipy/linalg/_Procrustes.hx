/* This file is generated, do not edit! */
package scipy.linalg;
@:pythonImport("scipy.linalg._procrustes") extern class _Procrustes {
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
		Compute the matrix solution of the orthogonal Procrustes problem.
		
		Given matrices A and B of equal shape, find an orthogonal matrix R
		that most closely maps A to B [1]_.
		Note that unlike higher level Procrustes analyses of spatial data,
		this function only uses orthogonal transformations like rotations
		and reflections, and it does not use scaling or translation.
		
		Parameters
		----------
		A : (M, N) array_like
		    Matrix to be mapped.
		B : (M, N) array_like
		    Target matrix.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		R : (N, N) ndarray
		    The matrix solution of the orthogonal Procrustes problem.
		    Minimizes the Frobenius norm of dot(A, R) - B, subject to
		    dot(R.T, R) == I.
		scale : float
		    Sum of the singular values of ``dot(A.T, B)``.
		
		Raises
		------
		ValueError
		    If the input arrays are incompatibly shaped.
		    This may also be raised if matrix A or B contains an inf or nan
		    and check_finite is True, or if the matrix product AB contains
		    an inf or nan.
		
		Notes
		-----
		.. versionadded:: 0.15.0
		
		References
		----------
		.. [1] Peter H. Schonemann, "A generalized solution of the orthogonal
		       Procrustes problem", Psychometrica -- Vol. 31, No. 1, March, 1996.
	**/
	static public function orthogonal_procrustes(A:Dynamic, B:Dynamic, ?check_finite:Dynamic):Dynamic;
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