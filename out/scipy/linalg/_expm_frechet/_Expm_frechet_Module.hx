/* This file is generated, do not edit! */
package scipy.linalg._expm_frechet;
@:pythonImport("scipy.linalg._expm_frechet") extern class _Expm_frechet_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _diff_pade3(A:Dynamic, E:Dynamic, ident:Dynamic):Dynamic;
	static public function _diff_pade5(A:Dynamic, E:Dynamic, ident:Dynamic):Dynamic;
	static public function _diff_pade7(A:Dynamic, E:Dynamic, ident:Dynamic):Dynamic;
	static public function _diff_pade9(A:Dynamic, E:Dynamic, ident:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var ell_table_61 : Dynamic;
	/**
		Relative condition number of the matrix exponential in the Frobenius norm.
		
		Parameters
		----------
		A : 2d array_like
		    Square input matrix with shape (N, N).
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		kappa : float
		    The relative condition number of the matrix exponential
		    in the Frobenius norm
		
		Notes
		-----
		A faster estimate for the condition number in the 1-norm
		has been published but is not yet implemented in scipy.
		
		.. versionadded:: 0.14.0
		
		See also
		--------
		expm : Compute the exponential of a matrix.
		expm_frechet : Compute the Frechet derivative of the matrix exponential.
		
		Examples
		--------
		>>> from scipy.linalg import expm_cond
		>>> A = np.array([[-0.3, 0.2, 0.6], [0.6, 0.3, -0.1], [-0.7, 1.2, 0.9]])
		>>> k = expm_cond(A)
		>>> k
		1.7787805864469866
	**/
	static public function expm_cond(A:Dynamic, ?check_finite:Dynamic):Float;
	/**
		Frechet derivative of the matrix exponential of A in the direction E.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix of which to take the matrix exponential.
		E : (N, N) array_like
		    Matrix direction in which to take the Frechet derivative.
		method : str, optional
		    Choice of algorithm.  Should be one of
		
		    - `SPS` (default)
		    - `blockEnlarge`
		
		compute_expm : bool, optional
		    Whether to compute also `expm_A` in addition to `expm_frechet_AE`.
		    Default is True.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		expm_A : ndarray
		    Matrix exponential of A.
		expm_frechet_AE : ndarray
		    Frechet derivative of the matrix exponential of A in the direction E.
		
		For ``compute_expm = False``, only `expm_frechet_AE` is returned.
		
		See also
		--------
		expm : Compute the exponential of a matrix.
		
		Notes
		-----
		This section describes the available implementations that can be selected
		by the `method` parameter. The default method is *SPS*.
		
		Method *blockEnlarge* is a naive algorithm.
		
		Method *SPS* is Scaling-Pade-Squaring [1]_.
		It is a sophisticated implementation which should take
		only about 3/8 as much time as the naive implementation.
		The asymptotics are the same.
		
		.. versionadded:: 0.13.0
		
		References
		----------
		.. [1] Awad H. Al-Mohy and Nicholas J. Higham (2009)
		       Computing the Frechet Derivative of the Matrix Exponential,
		       with an application to Condition Number Estimation.
		       SIAM Journal On Matrix Analysis and Applications.,
		       30 (4). pp. 1639-1657. ISSN 1095-7162
		
		Examples
		--------
		>>> import scipy.linalg
		>>> A = np.random.randn(3, 3)
		>>> E = np.random.randn(3, 3)
		>>> expm_A, expm_frechet_AE = scipy.linalg.expm_frechet(A, E)
		>>> expm_A.shape, expm_frechet_AE.shape
		((3, 3), (3, 3))
		
		>>> import scipy.linalg
		>>> A = np.random.randn(3, 3)
		>>> E = np.random.randn(3, 3)
		>>> expm_A, expm_frechet_AE = scipy.linalg.expm_frechet(A, E)
		>>> M = np.zeros((6, 6))
		>>> M[:3, :3] = A; M[:3, 3:] = E; M[3:, 3:] = A
		>>> expm_M = scipy.linalg.expm(M)
		>>> np.allclose(expm_A, expm_M[:3, :3])
		True
		>>> np.allclose(expm_frechet_AE, expm_M[:3, 3:])
		True
	**/
	static public function expm_frechet(A:Dynamic, E:Dynamic, ?method:Dynamic, ?compute_expm:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public function expm_frechet_algo_64(A:Dynamic, E:Dynamic):Dynamic;
	/**
		This is a helper function, mostly for testing and profiling.
		Return expm(A), frechet(A, E)
	**/
	static public function expm_frechet_block_enlarge(A:Dynamic, E:Dynamic):Dynamic;
	/**
		Construct the Kronecker form of the Frechet derivative of expm.
		
		Parameters
		----------
		A : array_like with shape (N, N)
		    Matrix to be expm'd.
		method : str, optional
		    Extra keyword to be passed to expm_frechet.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		K : 2d ndarray with shape (N*N, N*N)
		    Kronecker form of the Frechet derivative of the matrix exponential.
		
		Notes
		-----
		This function is used to help compute the condition number
		of the matrix exponential.
		
		See also
		--------
		expm : Compute a matrix exponential.
		expm_frechet : Compute the Frechet derivative of the matrix exponential.
		expm_cond : Compute the relative condition number of the matrix exponential
		            in the Frobenius norm.
	**/
	static public function expm_frechet_kronform(A:Dynamic, ?method:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Stack columns of M to construct a single vector.
		
		This is somewhat standard notation in linear algebra.
		
		Parameters
		----------
		M : 2d array_like
		    Input matrix
		
		Returns
		-------
		v : 1d ndarray
		    Output vector
	**/
	static public function vec(M:Dynamic):Dynamic;
}