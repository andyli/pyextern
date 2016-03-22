/* This file is generated, do not edit! */
package scipy.linalg._matfuncs_inv_ssq;
@:pythonImport("scipy.linalg._matfuncs_inv_ssq") extern class _Matfuncs_inv_ssq_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes r = a^(1 / (2^k)) - 1.
		
		This is algorithm (2) of [1]_.
		The purpose is to avoid a danger of subtractive cancellation.
		For more computational efficiency it should probably be cythonized.
		
		Parameters
		----------
		a : complex
		    A complex number preferably belonging to the closed negative real axis.
		k : integer
		    A nonnegative integer.
		
		Returns
		-------
		r : complex
		    The value r = a^(1 / (2^k)) - 1 computed with less cancellation.
		
		Notes
		-----
		The algorithm as written in the publication does not handle k=0 or k=1
		correctly, so these are special-cased in this implementation.
		This function is intended to not allow `a` to belong to the closed
		negative real axis, but this is constraint is relaxed.
		
		References
		----------
		.. [1] Awad H. Al-Mohy (2012)
		       "A more accurate Briggs method for the logarithm",
		       Numerical Algorithms, 59 : 393--402.
	**/
	static public function _briggs_helper_function(a:Dynamic, k:Dynamic):Dynamic;
	/**
		Compute the fractional power of a matrix.
		
		See the fractional_matrix_power docstring in matfuncs.py for more info.
	**/
	static public function _fractional_matrix_power(A:Dynamic, p:Dynamic):Dynamic;
	/**
		Evaluate the Pade approximation of a fractional matrix power.
		
		Evaluate the degree-m Pade approximation of R
		to the fractional matrix power t using the continued fraction
		in bottom-up fashion using algorithm (4.1) in [1]_.
		
		Parameters
		----------
		R : (N, N) array_like
		    Upper triangular matrix whose fractional power to evaluate.
		t : float
		    Fractional power between -1 and 1 exclusive.
		m : positive integer
		    Degree of Pade approximation.
		
		Returns
		-------
		U : (N, N) array_like
		    The degree-m Pade approximation of R to the fractional power t.
		    This matrix will be upper triangular.
		
		References
		----------
		.. [1] Nicholas J. Higham and Lijing lin (2011)
		       "A Schur-Pade Algorithm for Fractional Powers of a Matrix."
		       SIAM Journal on Matrix Analysis and Applications,
		       32 (3). pp. 1056-1078. ISSN 0895-4798
	**/
	static public function _fractional_power_pade(R:Dynamic, t:Dynamic, m:Dynamic):Dynamic;
	static public function _fractional_power_pade_constant(i:Dynamic, t:Dynamic):Dynamic;
	/**
		Compute a superdiagonal entry of a fractional matrix power.
		
		This is Eq. (5.6) in [1]_.
		
		Parameters
		----------
		l1 : complex
		    A diagonal entry of the matrix.
		l2 : complex
		    A diagonal entry of the matrix.
		t12 : complex
		    A superdiagonal entry of the matrix.
		p : float
		    A fractional power.
		
		Returns
		-------
		f12 : complex
		    A superdiagonal entry of the fractional matrix power.
		
		Notes
		-----
		Some amount of care has been taken to return a real number
		if all of the inputs are real.
		
		References
		----------
		.. [1] Nicholas J. Higham and Lijing lin (2011)
		       "A Schur-Pade Algorithm for Fractional Powers of a Matrix."
		       SIAM Journal on Matrix Analysis and Applications,
		       32 (3). pp. 1056-1078. ISSN 0895-4798
	**/
	static public function _fractional_power_superdiag_entry(l1:Dynamic, l2:Dynamic, t12:Dynamic, p:Dynamic):Dynamic;
	/**
		A helper function for inverse scaling and squaring for Pade approximation.
		
		Parameters
		----------
		T0 : (N, N) array_like upper triangular
		    Matrix involved in inverse scaling and squaring.
		theta : indexable
		    The values theta[1] .. theta[7] must be available.
		    They represent bounds related to Pade approximation, and they depend
		    on the matrix function which is being computed.
		    For example, different values of theta are required for
		    matrix logarithm than for fractional matrix power.
		
		Returns
		-------
		R : (N, N) array_like upper triangular
		    Composition of zero or more matrix square roots of T0, minus I.
		s : non-negative integer
		    Number of square roots taken.
		m : positive integer
		    The degree of the Pade approximation.
		
		Notes
		-----
		This subroutine appears as a chunk of lines within
		a couple of published algorithms; for example it appears
		as lines 4--35 in algorithm (3.1) of [1]_, and
		as lines 3--34 in algorithm (4.1) of [2]_.
		The instances of 'goto line 38' in algorithm (3.1) of [1]_
		probably mean 'goto line 36' and have been intepreted accordingly.
		
		References
		----------
		.. [1] Nicholas J. Higham and Lijing Lin (2013)
		       "An Improved Schur-Pade Algorithm for Fractional Powers
		       of a Matrix and their Frechet Derivatives."
		
		.. [2] Awad H. Al-Mohy and Nicholas J. Higham (2012)
		       "Improved Inverse Scaling and Squaring Algorithms
		       for the Matrix Logarithm."
		       SIAM Journal on Scientific Computing, 34 (4). C152-C169.
		       ISSN 1095-7197
	**/
	static public function _inverse_squaring_helper(T0:Dynamic, theta:Dynamic):Dynamic;
	/**
		Compute the matrix logarithm.
		
		See the logm docstring in matfuncs.py for more info.
		
		Notes
		-----
		In this function we look at triangular matrices that are similar
		to the input matrix.  If any diagonal entry of such a triangular matrix
		is exactly zero then the original matrix is singular.
		The matrix logarithm does not exist for such matrices,
		but in such cases we will pretend that the diagonal entries that are zero
		are actually slightly positive by an ad-hoc amount, in the interest
		of returning something more useful than NaN.  This will cause a warning.
	**/
	static public function _logm(A:Dynamic):Dynamic;
	static public function _logm_force_nonsingular_triangular_matrix(T:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Compute a superdiagonal entry of a matrix logarithm.
		
		This is Eq. (11.28) in [1]_.
		
		Parameters
		----------
		l1 : complex
		    A diagonal entry of the matrix.
		l2 : complex
		    A diagonal entry of the matrix.
		t12 : complex
		    A superdiagonal entry of the matrix.
		
		Returns
		-------
		f12 : complex
		    A superdiagonal entry of the matrix logarithm.
		
		Notes
		-----
		Some amount of care has been taken to return a real number
		if all of the inputs are real.
		
		References
		----------
		.. [1] Nicholas J. Higham (2008)
		       "Functions of Matrices: Theory and Computation"
		       ISBN 978-0-898716-46-7
	**/
	static public function _logm_superdiag_entry(l1:Dynamic, l2:Dynamic, t12:Dynamic):Dynamic;
	/**
		Compute matrix logarithm of an upper triangular matrix.
		
		The matrix logarithm is the inverse of
		expm: expm(logm(`T`)) == `T`
		
		Parameters
		----------
		T : (N, N) array_like
		    Upper triangular matrix whose logarithm to evaluate
		
		Returns
		-------
		logm : (N, N) ndarray
		    Matrix logarithm of `T`
		
		References
		----------
		.. [1] Awad H. Al-Mohy and Nicholas J. Higham (2012)
		       "Improved Inverse Scaling and Squaring Algorithms
		       for the Matrix Logarithm."
		       SIAM Journal on Scientific Computing, 34 (4). C152-C169.
		       ISSN 1095-7197
		
		.. [2] Nicholas J. Higham (2008)
		       "Functions of Matrices: Theory and Computation"
		       ISBN 978-0-898716-46-7
		
		.. [3] Nicholas J. Higham and Lijing lin (2011)
		       "A Schur-Pade Algorithm for Fractional Powers of a Matrix."
		       SIAM Journal on Matrix Analysis and Applications,
		       32 (3). pp. 1056-1078. ISSN 0895-4798
	**/
	static public function _logm_triu(T:Dynamic):Dynamic;
	/**
		Efficiently estimate the 1-norm of (A - I)^p.
		
		Parameters
		----------
		A : ndarray
		    Matrix whose 1-norm of a power is to be computed.
		p : int
		    Non-negative integer power.
		t : int, optional
		    A positive parameter controlling the tradeoff between
		    accuracy versus time and memory usage.
		    Larger values take longer and use more memory
		    but give more accurate output.
		itmax : int, optional
		    Use at most this many iterations.
		compute_v : bool, optional
		    Request a norm-maximizing linear operator input vector if True.
		compute_w : bool, optional
		    Request a norm-maximizing linear operator output vector if True.
		
		Returns
		-------
		est : float
		    An underestimate of the 1-norm of the sparse matrix.
		v : ndarray, optional
		    The vector such that ||Av||_1 == est*||v||_1.
		    It can be thought of as an input to the linear operator
		    that gives an output with particularly large norm.
		w : ndarray, optional
		    The vector Av which has relatively large 1-norm.
		    It can be thought of as an output of the linear operator
		    that is relatively large in norm compared to the input.
	**/
	static public function _onenormest_m1_power(A:Dynamic, p:Dynamic, ?t:Dynamic, ?itmax:Dynamic, ?compute_v:Dynamic, ?compute_w:Dynamic):Float;
	/**
		Compute the fractional power of a matrix, for fractions -1 < t < 1.
		
		This uses algorithm (3.1) of [1]_.
		The Pade approximation itself uses algorithm (4.1) of [2]_.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix whose fractional power to evaluate.
		t : float
		    Fractional power between -1 and 1 exclusive.
		
		Returns
		-------
		X : (N, N) array_like
		    The fractional power of the matrix.
		
		References
		----------
		.. [1] Nicholas J. Higham and Lijing Lin (2013)
		       "An Improved Schur-Pade Algorithm for Fractional Powers
		       of a Matrix and their Frechet Derivatives."
		
		.. [2] Nicholas J. Higham and Lijing lin (2011)
		       "A Schur-Pade Algorithm for Fractional Powers of a Matrix."
		       SIAM Journal on Matrix Analysis and Applications,
		       32 (3). pp. 1056-1078. ISSN 0895-4798
	**/
	static public function _remainder_matrix_power(A:Dynamic, t:Dynamic):Dynamic;
	/**
		Compute a fractional power of an upper triangular matrix.
		
		The fractional power is restricted to fractions -1 < t < 1.
		This uses algorithm (3.1) of [1]_.
		The Pade approximation itself uses algorithm (4.1) of [2]_.
		
		Parameters
		----------
		T : (N, N) array_like
		    Upper triangular matrix whose fractional power to evaluate.
		t : float
		    Fractional power between -1 and 1 exclusive.
		
		Returns
		-------
		X : (N, N) array_like
		    The fractional power of the matrix.
		
		References
		----------
		.. [1] Nicholas J. Higham and Lijing Lin (2013)
		       "An Improved Schur-Pade Algorithm for Fractional Powers
		       of a Matrix and their Frechet Derivatives."
		
		.. [2] Nicholas J. Higham and Lijing lin (2011)
		       "A Schur-Pade Algorithm for Fractional Powers of a Matrix."
		       SIAM Journal on Matrix Analysis and Applications,
		       32 (3). pp. 1056-1078. ISSN 0895-4798
	**/
	static public function _remainder_matrix_power_triu(T:Dynamic, t:Dynamic):Dynamic;
	/**
		Matrix square root of an upper triangular matrix.
		
		This is a helper function for `sqrtm` and `logm`.
		
		Parameters
		----------
		T : (N, N) array_like upper triangular
		    Matrix whose square root to evaluate
		blocksize : int, optional
		    If the blocksize is not degenerate with respect to the
		    size of the input array, then use a blocked algorithm. (Default: 64)
		
		Returns
		-------
		sqrtm : (N, N) ndarray
		    Value of the sqrt function at `T`
		
		References
		----------
		.. [1] Edvin Deadman, Nicholas J. Higham, Rui Ralha (2013)
		       "Blocked Schur Algorithms for Computing the Matrix Square Root,
		       Lecture Notes in Computer Science, 7782. pp. 171-182.
	**/
	static public function _sqrtm_triu(T:Dynamic, ?blocksize:Dynamic):Dynamic;
	/**
		Compute the scalar unwinding number.
		
		Uses Eq. (5.3) in [1]_, and should be equal to (z - log(exp(z)) / (2 pi i).
		Note that this definition differs in sign from the original definition
		in equations (5, 6) in [2]_.  The sign convention is justified in [3]_.
		
		Parameters
		----------
		z : complex
		    A complex number.
		
		Returns
		-------
		unwinding_number : integer
		    The scalar unwinding number of z.
		
		References
		----------
		.. [1] Nicholas J. Higham and Lijing lin (2011)
		       "A Schur-Pade Algorithm for Fractional Powers of a Matrix."
		       SIAM Journal on Matrix Analysis and Applications,
		       32 (3). pp. 1056-1078. ISSN 0895-4798
		
		.. [2] Robert M. Corless and David J. Jeffrey,
		       "The unwinding number." Newsletter ACM SIGSAM Bulletin
		       Volume 30, Issue 2, June 1996, Pages 28-35.
		
		.. [3] Russell Bradford and Robert M. Corless and James H. Davenport and
		       David J. Jeffrey and Stephen M. Watt,
		       "Reasoning about the elementary functions of complex analysis"
		       Annals of Mathematics and Artificial Intelligence,
		       36: 303-318, 2002.
	**/
	static public function _unwindk(z:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Evaluate a matrix function specified by a callable.
		
		Returns the value of matrix-valued function ``f`` at `A`. The
		function ``f`` is an extension of the scalar-valued function `func`
		to matrices.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix at which to evaluate the function
		func : callable
		    Callable object that evaluates a scalar function f.
		    Must be vectorized (eg. using vectorize).
		disp : bool, optional
		    Print warning if error in the result is estimated large
		    instead of returning estimated error. (Default: True)
		
		Returns
		-------
		funm : (N, N) ndarray
		    Value of the matrix function specified by func evaluated at `A`
		errest : float
		    (if disp == False)
		
		    1-norm of the estimated error, ||err||_1 / ||A||_1
		
		Examples
		--------
		>>> from scipy.linalg import funm
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> funm(a, lambda x: x*x)
		array([[  4.,  15.],
		       [  5.,  19.]])
		>>> a.dot(a)
		array([[  4.,  15.],
		       [  5.,  19.]])
		
		Notes
		-----
		This function implements the general algorithm based on Schur decomposition
		(Algorithm 9.1.1. in [1]_).
		
		If the input matrix is known to be diagonalizable, then relying on the
		eigendecomposition is likely to be faster. For example, if your matrix is
		Hermitian, you can do
		
		>>> from scipy.linalg import eigh
		>>> def funm_herm(a, func, check_finite=False):
		...     w, v = eigh(a, check_finite=check_finite)
		...     ## if you further know that your matrix is positive semidefinite,
		...     ## you can optionally guard against precision errors by doing
		...     # w = np.maximum(w, 0)
		...     w = func(w)
		...     return (v * w).dot(v.conj().T)
		
		References
		----------
		.. [1] Gene H. Golub, Charles F. van Loan, Matrix Computations 4th ed.
	**/
	static public function funm(A:Dynamic, func:Dynamic, ?disp:Dynamic):Dynamic;
	/**
		Compute a lower bound of the 1-norm of a sparse matrix.
		
		Parameters
		----------
		A : ndarray or other linear operator
		    A linear operator that can be transposed and that can
		    produce matrix products.
		t : int, optional
		    A positive parameter controlling the tradeoff between
		    accuracy versus time and memory usage.
		    Larger values take longer and use more memory
		    but give more accurate output.
		itmax : int, optional
		    Use at most this many iterations.
		compute_v : bool, optional
		    Request a norm-maximizing linear operator input vector if True.
		compute_w : bool, optional
		    Request a norm-maximizing linear operator output vector if True.
		
		Returns
		-------
		est : float
		    An underestimate of the 1-norm of the sparse matrix.
		v : ndarray, optional
		    The vector such that ||Av||_1 == est*||v||_1.
		    It can be thought of as an input to the linear operator
		    that gives an output with particularly large norm.
		w : ndarray, optional
		    The vector Av which has relatively large 1-norm.
		    It can be thought of as an output of the linear operator
		    that is relatively large in norm compared to the input.
		
		Notes
		-----
		This is algorithm 2.4 of [1].
		
		In [2] it is described as follows.
		"This algorithm typically requires the evaluation of
		about 4t matrix-vector products and almost invariably
		produces a norm estimate (which is, in fact, a lower
		bound on the norm) correct to within a factor 3."
		
		.. versionadded:: 0.13.0
		
		References
		----------
		.. [1] Nicholas J. Higham and Francoise Tisseur (2000),
		       "A Block Algorithm for Matrix 1-Norm Estimation,
		       with an Application to 1-Norm Pseudospectra."
		       SIAM J. Matrix Anal. Appl. Vol. 21, No. 4, pp. 1185-1201.
		
		.. [2] Awad H. Al-Mohy and Nicholas J. Higham (2009),
		       "A new scaling and squaring algorithm for the matrix exponential."
		       SIAM J. Matrix Anal. Appl. Vol. 31, No. 3, pp. 970-989.
	**/
	static public function onenormest(A:Dynamic, ?t:Dynamic, ?itmax:Dynamic, ?compute_v:Dynamic, ?compute_w:Dynamic):Float;
	static public var print_function : Dynamic;
	/**
		Convert real Schur form to complex Schur form.
		
		Convert a quasi-diagonal real-valued Schur form to the upper triangular
		complex-valued Schur form.
		
		Parameters
		----------
		T : (M, M) array_like
		    Real Schur form of the original matrix
		Z : (M, M) array_like
		    Schur transformation matrix
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		T : (M, M) ndarray
		    Complex Schur form of the original matrix
		Z : (M, M) ndarray
		    Schur transformation matrix corresponding to the complex form
		
		See also
		--------
		schur : Schur decompose a matrix
	**/
	static public function rsf2csf(T:Dynamic, Z:Dynamic, ?check_finite:Dynamic):Dynamic;
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
		Solve the equation `a x = b` for `x`, assuming a is a triangular matrix.
		
		Parameters
		----------
		a : (M, M) array_like
		    A triangular matrix
		b : (M,) or (M, N) array_like
		    Right-hand side matrix in `a x = b`
		lower : bool, optional
		    Use only data contained in the lower triangle of `a`.
		    Default is to use upper triangle.
		trans : {0, 1, 2, 'N', 'T', 'C'}, optional
		    Type of system to solve:
		
		    ========  =========
		    trans     system
		    ========  =========
		    0 or 'N'  a x  = b
		    1 or 'T'  a^T x = b
		    2 or 'C'  a^H x = b
		    ========  =========
		unit_diagonal : bool, optional
		    If True, diagonal elements of `a` are assumed to be 1 and
		    will not be referenced.
		overwrite_b : bool, optional
		    Allow overwriting data in `b` (may enhance performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (M,) or (M, N) ndarray
		    Solution to the system `a x = b`.  Shape of return matches `b`.
		
		Raises
		------
		LinAlgError
		    If `a` is singular
		
		Notes
		-----
		.. versionadded:: 0.9.0
	**/
	static public function solve_triangular(a:Dynamic, b:Dynamic, ?trans:Dynamic, ?lower:Dynamic, ?unit_diagonal:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute singular values of a matrix.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to decompose.
		overwrite_a : bool, optional
		    Whether to overwrite `a`; may improve performance.
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		s : (min(M, N),) ndarray
		    The singular values, sorted in decreasing order.
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
		
		Notes
		-----
		``svdvals(a)`` only differs from ``svd(a, compute_uv=False)`` by its
		handling of the edge case of empty ``a``, where it returns an
		empty sequence:
		
		>>> a = np.empty((0, 2))
		>>> from scipy.linalg import svdvals
		>>> svdvals(a)
		array([], dtype=float64)
		
		See also
		--------
		svd : Compute the full singular value decomposition of a matrix.
		diagsvd : Construct the Sigma matrix, given the vector s.
	**/
	static public function svdvals(a:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
}