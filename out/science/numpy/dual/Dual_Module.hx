/* This file is generated, do not edit! */
package numpy.dual;
@:pythonImport("numpy.dual") extern class Dual_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _restore_dict : Dynamic;
	/**
		Cholesky decomposition.
		
		Return the Cholesky decomposition, `L * L.H`, of the square matrix `a`,
		where `L` is lower-triangular and .H is the conjugate transpose operator
		(which is the ordinary transpose if `a` is real-valued).  `a` must be
		Hermitian (symmetric if real-valued) and positive-definite. No
		checking is performed to verify whether `a` is Hermitian or not.
		In addition, only the lower-triangular and diagonal elements of `a`
		are used. Only `L` is actually returned.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Hermitian (symmetric if all elements are real), positive-definite
		    input matrix.
		
		Returns
		-------
		L : (..., M, M) array_like
		    Upper or lower-triangular Cholesky factor of `a`.  Returns a
		    matrix object if `a` is a matrix object.
		
		Raises
		------
		LinAlgError
		   If the decomposition fails, for example, if `a` is not
		   positive-definite.
		
		See Also
		--------
		scipy.linalg.cholesky : Similar function in SciPy.
		scipy.linalg.cholesky_banded : Cholesky decompose a banded Hermitian
		                               positive-definite matrix.
		scipy.linalg.cho_factor : Cholesky decomposition of a matrix, to use in
		                          `scipy.linalg.cho_solve`.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		The Cholesky decomposition is often used as a fast way of solving
		
		.. math:: A \mathbf{x} = \mathbf{b}
		
		(when `A` is both Hermitian/symmetric and positive-definite).
		
		First, we solve for :math:`\mathbf{y}` in
		
		.. math:: L \mathbf{y} = \mathbf{b},
		
		and then for :math:`\mathbf{x}` in
		
		.. math:: L.H \mathbf{x} = \mathbf{y}.
		
		Examples
		--------
		>>> A = np.array([[1,-2j],[2j,5]])
		>>> A
		array([[ 1.+0.j, -0.-2.j],
		       [ 0.+2.j,  5.+0.j]])
		>>> L = np.linalg.cholesky(A)
		>>> L
		array([[1.+0.j, 0.+0.j],
		       [0.+2.j, 1.+0.j]])
		>>> np.dot(L, L.T.conj()) # verify that L * L.H = A
		array([[1.+0.j, 0.-2.j],
		       [0.+2.j, 5.+0.j]])
		>>> A = [[1,-2j],[2j,5]] # what happens if A is only array_like?
		>>> np.linalg.cholesky(A) # an ndarray object is returned
		array([[1.+0.j, 0.+0.j],
		       [0.+2.j, 1.+0.j]])
		>>> # But a matrix object is returned if A is a matrix object
		>>> np.linalg.cholesky(np.matrix(A))
		matrix([[ 1.+0.j,  0.+0.j],
		        [ 0.+2.j,  1.+0.j]])
	**/
	static public function cholesky(a:Dynamic):Dynamic;
	/**
		Compute the determinant of an array.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Input array to compute determinants for.
		
		Returns
		-------
		det : (...) array_like
		    Determinant of `a`.
		
		See Also
		--------
		slogdet : Another way to represent the determinant, more suitable
		  for large matrices where underflow/overflow may occur.
		scipy.linalg.det : Similar function in SciPy.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		The determinant is computed via LU factorization using the LAPACK
		routine ``z/dgetrf``.
		
		Examples
		--------
		The determinant of a 2-D array [[a, b], [c, d]] is ad - bc:
		
		>>> a = np.array([[1, 2], [3, 4]])
		>>> np.linalg.det(a)
		-2.0 # may vary
		
		Computing determinants for a stack of matrices:
		
		>>> a = np.array([ [[1, 2], [3, 4]], [[1, 2], [2, 1]], [[1, 3], [3, 1]] ])
		>>> a.shape
		(3, 2, 2)
		>>> np.linalg.det(a)
		array([-2., -3., -8.])
	**/
	static public function det(a:Dynamic):Dynamic;
	/**
		Compute the eigenvalues and right eigenvectors of a square array.
		
		Parameters
		----------
		a : (..., M, M) array
		    Matrices for which the eigenvalues and right eigenvectors will
		    be computed
		
		Returns
		-------
		w : (..., M) array
		    The eigenvalues, each repeated according to its multiplicity.
		    The eigenvalues are not necessarily ordered. The resulting
		    array will be of complex type, unless the imaginary part is
		    zero in which case it will be cast to a real type. When `a`
		    is real the resulting eigenvalues will be real (0 imaginary
		    part) or occur in conjugate pairs
		
		v : (..., M, M) array
		    The normalized (unit "length") eigenvectors, such that the
		    column ``v[:,i]`` is the eigenvector corresponding to the
		    eigenvalue ``w[i]``.
		
		Raises
		------
		LinAlgError
		    If the eigenvalue computation does not converge.
		
		See Also
		--------
		eigvals : eigenvalues of a non-symmetric array.
		eigh : eigenvalues and eigenvectors of a real symmetric or complex
		       Hermitian (conjugate symmetric) array.
		eigvalsh : eigenvalues of a real symmetric or complex Hermitian
		           (conjugate symmetric) array.
		scipy.linalg.eig : Similar function in SciPy that also solves the
		                   generalized eigenvalue problem.
		scipy.linalg.schur : Best choice for unitary and other non-Hermitian
		                     normal matrices.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		This is implemented using the ``_geev`` LAPACK routines which compute
		the eigenvalues and eigenvectors of general square arrays.
		
		The number `w` is an eigenvalue of `a` if there exists a vector
		`v` such that ``a @ v = w * v``. Thus, the arrays `a`, `w`, and
		`v` satisfy the equations ``a @ v[:,i] = w[i] * v[:,i]``
		for :math:`i \in \{0,...,M-1\}`.
		
		The array `v` of eigenvectors may not be of maximum rank, that is, some
		of the columns may be linearly dependent, although round-off error may
		obscure that fact. If the eigenvalues are all different, then theoretically
		the eigenvectors are linearly independent and `a` can be diagonalized by
		a similarity transformation using `v`, i.e, ``inv(v) @ a @ v`` is diagonal.
		
		For non-Hermitian normal matrices the SciPy function `scipy.linalg.schur`
		is preferred because the matrix `v` is guaranteed to be unitary, which is
		not the case when using `eig`. The Schur factorization produces an
		upper triangular matrix rather than a diagonal matrix, but for normal
		matrices only the diagonal of the upper triangular matrix is needed, the
		rest is roundoff error.
		
		Finally, it is emphasized that `v` consists of the *right* (as in
		right-hand side) eigenvectors of `a`.  A vector `y` satisfying
		``y.T @ a = z * y.T`` for some number `z` is called a *left*
		eigenvector of `a`, and, in general, the left and right eigenvectors
		of a matrix are not necessarily the (perhaps conjugate) transposes
		of each other.
		
		References
		----------
		G. Strang, *Linear Algebra and Its Applications*, 2nd Ed., Orlando, FL,
		Academic Press, Inc., 1980, Various pp.
		
		Examples
		--------
		>>> from numpy import linalg as LA
		
		(Almost) trivial example with real e-values and e-vectors.
		
		>>> w, v = LA.eig(np.diag((1, 2, 3)))
		>>> w; v
		array([1., 2., 3.])
		array([[1., 0., 0.],
		       [0., 1., 0.],
		       [0., 0., 1.]])
		
		Real matrix possessing complex e-values and e-vectors; note that the
		e-values are complex conjugates of each other.
		
		>>> w, v = LA.eig(np.array([[1, -1], [1, 1]]))
		>>> w; v
		array([1.+1.j, 1.-1.j])
		array([[0.70710678+0.j        , 0.70710678-0.j        ],
		       [0.        -0.70710678j, 0.        +0.70710678j]])
		
		Complex-valued matrix with real e-values (but complex-valued e-vectors);
		note that ``a.conj().T == a``, i.e., `a` is Hermitian.
		
		>>> a = np.array([[1, 1j], [-1j, 1]])
		>>> w, v = LA.eig(a)
		>>> w; v
		array([2.+0.j, 0.+0.j])
		array([[ 0.        +0.70710678j,  0.70710678+0.j        ], # may vary
		       [ 0.70710678+0.j        , -0.        +0.70710678j]])
		
		Be careful about round-off error!
		
		>>> a = np.array([[1 + 1e-9, 0], [0, 1 - 1e-9]])
		>>> # Theor. e-values are 1 +/- 1e-9
		>>> w, v = LA.eig(a)
		>>> w; v
		array([1., 1.])
		array([[1., 0.],
		       [0., 1.]])
	**/
	static public function eig(a:Dynamic):Dynamic;
	/**
		Return the eigenvalues and eigenvectors of a complex Hermitian
		(conjugate symmetric) or a real symmetric matrix.
		
		Returns two objects, a 1-D array containing the eigenvalues of `a`, and
		a 2-D square array or matrix (depending on the input type) of the
		corresponding eigenvectors (in columns).
		
		Parameters
		----------
		a : (..., M, M) array
		    Hermitian or real symmetric matrices whose eigenvalues and
		    eigenvectors are to be computed.
		UPLO : {'L', 'U'}, optional
		    Specifies whether the calculation is done with the lower triangular
		    part of `a` ('L', default) or the upper triangular part ('U').
		    Irrespective of this value only the real parts of the diagonal will
		    be considered in the computation to preserve the notion of a Hermitian
		    matrix. It therefore follows that the imaginary part of the diagonal
		    will always be treated as zero.
		
		Returns
		-------
		w : (..., M) ndarray
		    The eigenvalues in ascending order, each repeated according to
		    its multiplicity.
		v : {(..., M, M) ndarray, (..., M, M) matrix}
		    The column ``v[:, i]`` is the normalized eigenvector corresponding
		    to the eigenvalue ``w[i]``.  Will return a matrix object if `a` is
		    a matrix object.
		
		Raises
		------
		LinAlgError
		    If the eigenvalue computation does not converge.
		
		See Also
		--------
		eigvalsh : eigenvalues of real symmetric or complex Hermitian
		           (conjugate symmetric) arrays.
		eig : eigenvalues and right eigenvectors for non-symmetric arrays.
		eigvals : eigenvalues of non-symmetric arrays.
		scipy.linalg.eigh : Similar function in SciPy (but also solves the
		                    generalized eigenvalue problem).
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		The eigenvalues/eigenvectors are computed using LAPACK routines ``_syevd``,
		``_heevd``.
		
		The eigenvalues of real symmetric or complex Hermitian matrices are
		always real. [1]_ The array `v` of (column) eigenvectors is unitary
		and `a`, `w`, and `v` satisfy the equations
		``dot(a, v[:, i]) = w[i] * v[:, i]``.
		
		References
		----------
		.. [1] G. Strang, *Linear Algebra and Its Applications*, 2nd Ed., Orlando,
		       FL, Academic Press, Inc., 1980, pg. 222.
		
		Examples
		--------
		>>> from numpy import linalg as LA
		>>> a = np.array([[1, -2j], [2j, 5]])
		>>> a
		array([[ 1.+0.j, -0.-2.j],
		       [ 0.+2.j,  5.+0.j]])
		>>> w, v = LA.eigh(a)
		>>> w; v
		array([0.17157288, 5.82842712])
		array([[-0.92387953+0.j        , -0.38268343+0.j        ], # may vary
		       [ 0.        +0.38268343j,  0.        -0.92387953j]])
		
		>>> np.dot(a, v[:, 0]) - w[0] * v[:, 0] # verify 1st e-val/vec pair
		array([5.55111512e-17+0.0000000e+00j, 0.00000000e+00+1.2490009e-16j])
		>>> np.dot(a, v[:, 1]) - w[1] * v[:, 1] # verify 2nd e-val/vec pair
		array([0.+0.j, 0.+0.j])
		
		>>> A = np.matrix(a) # what happens if input is a matrix object
		>>> A
		matrix([[ 1.+0.j, -0.-2.j],
		        [ 0.+2.j,  5.+0.j]])
		>>> w, v = LA.eigh(A)
		>>> w; v
		array([0.17157288, 5.82842712])
		matrix([[-0.92387953+0.j        , -0.38268343+0.j        ], # may vary
		        [ 0.        +0.38268343j,  0.        -0.92387953j]])
		
		>>> # demonstrate the treatment of the imaginary part of the diagonal
		>>> a = np.array([[5+2j, 9-2j], [0+2j, 2-1j]])
		>>> a
		array([[5.+2.j, 9.-2.j],
		       [0.+2.j, 2.-1.j]])
		>>> # with UPLO='L' this is numerically equivalent to using LA.eig() with:
		>>> b = np.array([[5.+0.j, 0.-2.j], [0.+2.j, 2.-0.j]])
		>>> b
		array([[5.+0.j, 0.-2.j],
		       [0.+2.j, 2.+0.j]])
		>>> wa, va = LA.eigh(a)
		>>> wb, vb = LA.eig(b)
		>>> wa; wb
		array([1., 6.])
		array([6.+0.j, 1.+0.j])
		>>> va; vb
		array([[-0.4472136 +0.j        , -0.89442719+0.j        ], # may vary
		       [ 0.        +0.89442719j,  0.        -0.4472136j ]])
		array([[ 0.89442719+0.j       , -0.        +0.4472136j],
		       [-0.        +0.4472136j,  0.89442719+0.j       ]])
	**/
	static public function eigh(a:Dynamic, ?UPLO:Dynamic):Dynamic;
	/**
		Compute the eigenvalues of a general matrix.
		
		Main difference between `eigvals` and `eig`: the eigenvectors aren't
		returned.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    A complex- or real-valued matrix whose eigenvalues will be computed.
		
		Returns
		-------
		w : (..., M,) ndarray
		    The eigenvalues, each repeated according to its multiplicity.
		    They are not necessarily ordered, nor are they necessarily
		    real for real matrices.
		
		Raises
		------
		LinAlgError
		    If the eigenvalue computation does not converge.
		
		See Also
		--------
		eig : eigenvalues and right eigenvectors of general arrays
		eigvalsh : eigenvalues of real symmetric or complex Hermitian
		           (conjugate symmetric) arrays.
		eigh : eigenvalues and eigenvectors of real symmetric or complex
		       Hermitian (conjugate symmetric) arrays.
		scipy.linalg.eigvals : Similar function in SciPy.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		This is implemented using the ``_geev`` LAPACK routines which compute
		the eigenvalues and eigenvectors of general square arrays.
		
		Examples
		--------
		Illustration, using the fact that the eigenvalues of a diagonal matrix
		are its diagonal elements, that multiplying a matrix on the left
		by an orthogonal matrix, `Q`, and on the right by `Q.T` (the transpose
		of `Q`), preserves the eigenvalues of the "middle" matrix.  In other words,
		if `Q` is orthogonal, then ``Q * A * Q.T`` has the same eigenvalues as
		``A``:
		
		>>> from numpy import linalg as LA
		>>> x = np.random.random()
		>>> Q = np.array([[np.cos(x), -np.sin(x)], [np.sin(x), np.cos(x)]])
		>>> LA.norm(Q[0, :]), LA.norm(Q[1, :]), np.dot(Q[0, :],Q[1, :])
		(1.0, 1.0, 0.0)
		
		Now multiply a diagonal matrix by ``Q`` on one side and by ``Q.T`` on the other:
		
		>>> D = np.diag((-1,1))
		>>> LA.eigvals(D)
		array([-1.,  1.])
		>>> A = np.dot(Q, D)
		>>> A = np.dot(A, Q.T)
		>>> LA.eigvals(A)
		array([ 1., -1.]) # random
	**/
	static public function eigvals(a:Dynamic):Dynamic;
	/**
		Compute the eigenvalues of a complex Hermitian or real symmetric matrix.
		
		Main difference from eigh: the eigenvectors are not computed.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    A complex- or real-valued matrix whose eigenvalues are to be
		    computed.
		UPLO : {'L', 'U'}, optional
		    Specifies whether the calculation is done with the lower triangular
		    part of `a` ('L', default) or the upper triangular part ('U').
		    Irrespective of this value only the real parts of the diagonal will
		    be considered in the computation to preserve the notion of a Hermitian
		    matrix. It therefore follows that the imaginary part of the diagonal
		    will always be treated as zero.
		
		Returns
		-------
		w : (..., M,) ndarray
		    The eigenvalues in ascending order, each repeated according to
		    its multiplicity.
		
		Raises
		------
		LinAlgError
		    If the eigenvalue computation does not converge.
		
		See Also
		--------
		eigh : eigenvalues and eigenvectors of real symmetric or complex Hermitian
		       (conjugate symmetric) arrays.
		eigvals : eigenvalues of general real or complex arrays.
		eig : eigenvalues and right eigenvectors of general real or complex
		      arrays.
		scipy.linalg.eigvalsh : Similar function in SciPy.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		The eigenvalues are computed using LAPACK routines ``_syevd``, ``_heevd``.
		
		Examples
		--------
		>>> from numpy import linalg as LA
		>>> a = np.array([[1, -2j], [2j, 5]])
		>>> LA.eigvalsh(a)
		array([ 0.17157288,  5.82842712]) # may vary
		
		>>> # demonstrate the treatment of the imaginary part of the diagonal
		>>> a = np.array([[5+2j, 9-2j], [0+2j, 2-1j]])
		>>> a
		array([[5.+2.j, 9.-2.j],
		       [0.+2.j, 2.-1.j]])
		>>> # with UPLO='L' this is numerically equivalent to using LA.eigvals()
		>>> # with:
		>>> b = np.array([[5.+0.j, 0.-2.j], [0.+2.j, 2.-0.j]])
		>>> b
		array([[5.+0.j, 0.-2.j],
		       [0.+2.j, 2.+0.j]])
		>>> wa = LA.eigvalsh(a)
		>>> wb = LA.eigvals(b)
		>>> wa; wb
		array([1., 6.])
		array([6.+0.j, 1.+0.j])
	**/
	static public function eigvalsh(a:Dynamic, ?UPLO:Dynamic):Dynamic;
	/**
		Compute the one-dimensional discrete Fourier Transform.
		
		This function computes the one-dimensional *n*-point discrete Fourier
		Transform (DFT) with the efficient Fast Fourier Transform (FFT)
		algorithm [CT].
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		n : int, optional
		    Length of the transformed axis of the output.
		    If `n` is smaller than the length of the input, the input is cropped.
		    If it is larger, the input is padded with zeros.  If `n` is not given,
		    the length of the input along the axis specified by `axis` is used.
		axis : int, optional
		    Axis over which to compute the FFT.  If not given, the last axis is
		    used.
		norm : {"backward", "ortho", "forward"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is "backward".
		    Indicates which direction of the forward/backward pair of transforms
		    is scaled and with what normalization factor.
		
		    .. versionadded:: 1.20.0
		
		        The "backward", "forward" values were added.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		
		Raises
		------
		IndexError
		    If `axis` is not a valid axis of `a`.
		
		See Also
		--------
		numpy.fft : for definition of the DFT and conventions used.
		ifft : The inverse of `fft`.
		fft2 : The two-dimensional FFT.
		fftn : The *n*-dimensional FFT.
		rfftn : The *n*-dimensional FFT of real input.
		fftfreq : Frequency bins for given FFT parameters.
		
		Notes
		-----
		FFT (Fast Fourier Transform) refers to a way the discrete Fourier
		Transform (DFT) can be calculated efficiently, by using symmetries in the
		calculated terms.  The symmetry is highest when `n` is a power of 2, and
		the transform is therefore most efficient for these sizes.
		
		The DFT is defined, with the conventions used in this implementation, in
		the documentation for the `numpy.fft` module.
		
		References
		----------
		.. [CT] Cooley, James W., and John W. Tukey, 1965, "An algorithm for the
		        machine calculation of complex Fourier series," *Math. Comput.*
		        19: 297-301.
		
		Examples
		--------
		>>> np.fft.fft(np.exp(2j * np.pi * np.arange(8) / 8))
		array([-2.33486982e-16+1.14423775e-17j,  8.00000000e+00-1.25557246e-15j,
		        2.33486982e-16+2.33486982e-16j,  0.00000000e+00+1.22464680e-16j,
		       -1.14423775e-17+2.33486982e-16j,  0.00000000e+00+5.20784380e-16j,
		        1.14423775e-17+1.14423775e-17j,  0.00000000e+00+1.22464680e-16j])
		
		In this example, real input has an FFT which is Hermitian, i.e., symmetric
		in the real part and anti-symmetric in the imaginary part, as described in
		the `numpy.fft` documentation:
		
		>>> import matplotlib.pyplot as plt
		>>> t = np.arange(256)
		>>> sp = np.fft.fft(np.sin(t))
		>>> freq = np.fft.fftfreq(t.shape[-1])
		>>> plt.plot(freq, sp.real, freq, sp.imag)
		[<matplotlib.lines.Line2D object at 0x...>, <matplotlib.lines.Line2D object at 0x...>]
		>>> plt.show()
	**/
	static public function fft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the 2-dimensional discrete Fourier Transform.
		
		This function computes the *n*-dimensional discrete Fourier Transform
		over any axes in an *M*-dimensional array by means of the
		Fast Fourier Transform (FFT).  By default, the transform is computed over
		the last two axes of the input array, i.e., a 2-dimensional FFT.
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex
		s : sequence of ints, optional
		    Shape (length of each transformed axis) of the output
		    (``s[0]`` refers to axis 0, ``s[1]`` to axis 1, etc.).
		    This corresponds to ``n`` for ``fft(x, n)``.
		    Along each axis, if the given shape is smaller than that of the input,
		    the input is cropped.  If it is larger, the input is padded with zeros.
		    if `s` is not given, the shape of the input along the axes specified
		    by `axes` is used.
		axes : sequence of ints, optional
		    Axes over which to compute the FFT.  If not given, the last two
		    axes are used.  A repeated index in `axes` means the transform over
		    that axis is performed multiple times.  A one-element sequence means
		    that a one-dimensional FFT is performed.
		norm : {"backward", "ortho", "forward"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is "backward".
		    Indicates which direction of the forward/backward pair of transforms
		    is scaled and with what normalization factor.
		
		    .. versionadded:: 1.20.0
		
		        The "backward", "forward" values were added.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axes
		    indicated by `axes`, or the last two axes if `axes` is not given.
		
		Raises
		------
		ValueError
		    If `s` and `axes` have different length, or `axes` not given and
		    ``len(s) != 2``.
		IndexError
		    If an element of `axes` is larger than than the number of axes of `a`.
		
		See Also
		--------
		numpy.fft : Overall view of discrete Fourier transforms, with definitions
		     and conventions used.
		ifft2 : The inverse two-dimensional FFT.
		fft : The one-dimensional FFT.
		fftn : The *n*-dimensional FFT.
		fftshift : Shifts zero-frequency terms to the center of the array.
		    For two-dimensional input, swaps first and third quadrants, and second
		    and fourth quadrants.
		
		Notes
		-----
		`fft2` is just `fftn` with a different default for `axes`.
		
		The output, analogously to `fft`, contains the term for zero frequency in
		the low-order corner of the transformed axes, the positive frequency terms
		in the first half of these axes, the term for the Nyquist frequency in the
		middle of the axes and the negative frequency terms in the second half of
		the axes, in order of decreasingly negative frequency.
		
		See `fftn` for details and a plotting example, and `numpy.fft` for
		definitions and conventions used.
		
		
		Examples
		--------
		>>> a = np.mgrid[:5, :5][0]
		>>> np.fft.fft2(a)
		array([[ 50.  +0.j        ,   0.  +0.j        ,   0.  +0.j        , # may vary
		          0.  +0.j        ,   0.  +0.j        ],
		       [-12.5+17.20477401j,   0.  +0.j        ,   0.  +0.j        ,
		          0.  +0.j        ,   0.  +0.j        ],
		       [-12.5 +4.0614962j ,   0.  +0.j        ,   0.  +0.j        ,
		          0.  +0.j        ,   0.  +0.j        ],
		       [-12.5 -4.0614962j ,   0.  +0.j        ,   0.  +0.j        ,
		          0.  +0.j        ,   0.  +0.j        ],
		       [-12.5-17.20477401j,   0.  +0.j        ,   0.  +0.j        ,
		          0.  +0.j        ,   0.  +0.j        ]])
	**/
	static public function fft2(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the N-dimensional discrete Fourier Transform.
		
		This function computes the *N*-dimensional discrete Fourier Transform over
		any number of axes in an *M*-dimensional array by means of the Fast Fourier
		Transform (FFT).
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		s : sequence of ints, optional
		    Shape (length of each transformed axis) of the output
		    (``s[0]`` refers to axis 0, ``s[1]`` to axis 1, etc.).
		    This corresponds to ``n`` for ``fft(x, n)``.
		    Along any axis, if the given shape is smaller than that of the input,
		    the input is cropped.  If it is larger, the input is padded with zeros.
		    if `s` is not given, the shape of the input along the axes specified
		    by `axes` is used.
		axes : sequence of ints, optional
		    Axes over which to compute the FFT.  If not given, the last ``len(s)``
		    axes are used, or all axes if `s` is also not specified.
		    Repeated indices in `axes` means that the transform over that axis is
		    performed multiple times.
		norm : {"backward", "ortho", "forward"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is "backward".
		    Indicates which direction of the forward/backward pair of transforms
		    is scaled and with what normalization factor.
		
		    .. versionadded:: 1.20.0
		
		        The "backward", "forward" values were added.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axes
		    indicated by `axes`, or by a combination of `s` and `a`,
		    as explained in the parameters section above.
		
		Raises
		------
		ValueError
		    If `s` and `axes` have different length.
		IndexError
		    If an element of `axes` is larger than than the number of axes of `a`.
		
		See Also
		--------
		numpy.fft : Overall view of discrete Fourier transforms, with definitions
		    and conventions used.
		ifftn : The inverse of `fftn`, the inverse *n*-dimensional FFT.
		fft : The one-dimensional FFT, with definitions and conventions used.
		rfftn : The *n*-dimensional FFT of real input.
		fft2 : The two-dimensional FFT.
		fftshift : Shifts zero-frequency terms to centre of array
		
		Notes
		-----
		The output, analogously to `fft`, contains the term for zero frequency in
		the low-order corner of all axes, the positive frequency terms in the
		first half of all axes, the term for the Nyquist frequency in the middle
		of all axes and the negative frequency terms in the second half of all
		axes, in order of decreasingly negative frequency.
		
		See `numpy.fft` for details, definitions and conventions used.
		
		Examples
		--------
		>>> a = np.mgrid[:3, :3, :3][0]
		>>> np.fft.fftn(a, axes=(1, 2))
		array([[[ 0.+0.j,   0.+0.j,   0.+0.j], # may vary
		        [ 0.+0.j,   0.+0.j,   0.+0.j],
		        [ 0.+0.j,   0.+0.j,   0.+0.j]],
		       [[ 9.+0.j,   0.+0.j,   0.+0.j],
		        [ 0.+0.j,   0.+0.j,   0.+0.j],
		        [ 0.+0.j,   0.+0.j,   0.+0.j]],
		       [[18.+0.j,   0.+0.j,   0.+0.j],
		        [ 0.+0.j,   0.+0.j,   0.+0.j],
		        [ 0.+0.j,   0.+0.j,   0.+0.j]]])
		>>> np.fft.fftn(a, (2, 2), axes=(0, 1))
		array([[[ 2.+0.j,  2.+0.j,  2.+0.j], # may vary
		        [ 0.+0.j,  0.+0.j,  0.+0.j]],
		       [[-2.+0.j, -2.+0.j, -2.+0.j],
		        [ 0.+0.j,  0.+0.j,  0.+0.j]]])
		
		>>> import matplotlib.pyplot as plt
		>>> [X, Y] = np.meshgrid(2 * np.pi * np.arange(200) / 12,
		...                      2 * np.pi * np.arange(200) / 34)
		>>> S = np.sin(X) + np.cos(Y) + np.random.uniform(0, 1, X.shape)
		>>> FS = np.fft.fftn(S)
		>>> plt.imshow(np.log(np.abs(np.fft.fftshift(FS))**2))
		<matplotlib.image.AxesImage object at 0x...>
		>>> plt.show()
	**/
	static public function fftn(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Modified Bessel function of the first kind, order 0.
		
		Usually denoted :math:`I_0`.
		
		Parameters
		----------
		x : array_like of float
		    Argument of the Bessel function.
		
		Returns
		-------
		out : ndarray, shape = x.shape, dtype = float
		    The modified Bessel function evaluated at each of the elements of `x`.
		
		See Also
		--------
		scipy.special.i0, scipy.special.iv, scipy.special.ive
		
		Notes
		-----
		The scipy implementation is recommended over this function: it is a
		proper ufunc written in C, and more than an order of magnitude faster.
		
		We use the algorithm published by Clenshaw [1]_ and referenced by
		Abramowitz and Stegun [2]_, for which the function domain is
		partitioned into the two intervals [0,8] and (8,inf), and Chebyshev
		polynomial expansions are employed in each interval. Relative error on
		the domain [0,30] using IEEE arithmetic is documented [3]_ as having a
		peak of 5.8e-16 with an rms of 1.4e-16 (n = 30000).
		
		References
		----------
		.. [1] C. W. Clenshaw, "Chebyshev series for mathematical functions", in
		       *National Physical Laboratory Mathematical Tables*, vol. 5, London:
		       Her Majesty's Stationery Office, 1962.
		.. [2] M. Abramowitz and I. A. Stegun, *Handbook of Mathematical
		       Functions*, 10th printing, New York: Dover, 1964, pp. 379.
		       https://personal.math.ubc.ca/~cbm/aands/page_379.htm
		.. [3] https://metacpan.org/pod/distribution/Math-Cephes/lib/Math/Cephes.pod#i0:-Modified-Bessel-function-of-order-zero
		
		Examples
		--------
		>>> np.i0(0.)
		array(1.0)
		>>> np.i0([0, 1, 2, 3])
		array([1.        , 1.26606588, 2.2795853 , 4.88079259])
	**/
	static public function i0(x:Dynamic):Dynamic;
	/**
		Compute the one-dimensional inverse discrete Fourier Transform.
		
		This function computes the inverse of the one-dimensional *n*-point
		discrete Fourier transform computed by `fft`.  In other words,
		``ifft(fft(a)) == a`` to within numerical accuracy.
		For a general description of the algorithm and definitions,
		see `numpy.fft`.
		
		The input should be ordered in the same way as is returned by `fft`,
		i.e.,
		
		* ``a[0]`` should contain the zero frequency term,
		* ``a[1:n//2]`` should contain the positive-frequency terms,
		* ``a[n//2 + 1:]`` should contain the negative-frequency terms, in
		  increasing order starting from the most negative frequency.
		
		For an even number of input points, ``A[n//2]`` represents the sum of
		the values at the positive and negative Nyquist frequencies, as the two
		are aliased together. See `numpy.fft` for details.
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		n : int, optional
		    Length of the transformed axis of the output.
		    If `n` is smaller than the length of the input, the input is cropped.
		    If it is larger, the input is padded with zeros.  If `n` is not given,
		    the length of the input along the axis specified by `axis` is used.
		    See notes about padding issues.
		axis : int, optional
		    Axis over which to compute the inverse DFT.  If not given, the last
		    axis is used.
		norm : {"backward", "ortho", "forward"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is "backward".
		    Indicates which direction of the forward/backward pair of transforms
		    is scaled and with what normalization factor.
		
		    .. versionadded:: 1.20.0
		
		        The "backward", "forward" values were added.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		
		Raises
		------
		IndexError
		    If `axis` is not a valid axis of `a`.
		
		See Also
		--------
		numpy.fft : An introduction, with definitions and general explanations.
		fft : The one-dimensional (forward) FFT, of which `ifft` is the inverse
		ifft2 : The two-dimensional inverse FFT.
		ifftn : The n-dimensional inverse FFT.
		
		Notes
		-----
		If the input parameter `n` is larger than the size of the input, the input
		is padded by appending zeros at the end.  Even though this is the common
		approach, it might lead to surprising results.  If a different padding is
		desired, it must be performed before calling `ifft`.
		
		Examples
		--------
		>>> np.fft.ifft([0, 4, 0, 0])
		array([ 1.+0.j,  0.+1.j, -1.+0.j,  0.-1.j]) # may vary
		
		Create and plot a band-limited signal with random phases:
		
		>>> import matplotlib.pyplot as plt
		>>> t = np.arange(400)
		>>> n = np.zeros((400,), dtype=complex)
		>>> n[40:60] = np.exp(1j*np.random.uniform(0, 2*np.pi, (20,)))
		>>> s = np.fft.ifft(n)
		>>> plt.plot(t, s.real, label='real')
		[<matplotlib.lines.Line2D object at ...>]
		>>> plt.plot(t, s.imag, '--', label='imaginary')
		[<matplotlib.lines.Line2D object at ...>]
		>>> plt.legend()
		<matplotlib.legend.Legend object at ...>
		>>> plt.show()
	**/
	static public function ifft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the 2-dimensional inverse discrete Fourier Transform.
		
		This function computes the inverse of the 2-dimensional discrete Fourier
		Transform over any number of axes in an M-dimensional array by means of
		the Fast Fourier Transform (FFT).  In other words, ``ifft2(fft2(a)) == a``
		to within numerical accuracy.  By default, the inverse transform is
		computed over the last two axes of the input array.
		
		The input, analogously to `ifft`, should be ordered in the same way as is
		returned by `fft2`, i.e. it should have the term for zero frequency
		in the low-order corner of the two axes, the positive frequency terms in
		the first half of these axes, the term for the Nyquist frequency in the
		middle of the axes and the negative frequency terms in the second half of
		both axes, in order of decreasingly negative frequency.
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		s : sequence of ints, optional
		    Shape (length of each axis) of the output (``s[0]`` refers to axis 0,
		    ``s[1]`` to axis 1, etc.).  This corresponds to `n` for ``ifft(x, n)``.
		    Along each axis, if the given shape is smaller than that of the input,
		    the input is cropped.  If it is larger, the input is padded with zeros.
		    if `s` is not given, the shape of the input along the axes specified
		    by `axes` is used.  See notes for issue on `ifft` zero padding.
		axes : sequence of ints, optional
		    Axes over which to compute the FFT.  If not given, the last two
		    axes are used.  A repeated index in `axes` means the transform over
		    that axis is performed multiple times.  A one-element sequence means
		    that a one-dimensional FFT is performed.
		norm : {"backward", "ortho", "forward"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is "backward".
		    Indicates which direction of the forward/backward pair of transforms
		    is scaled and with what normalization factor.
		
		    .. versionadded:: 1.20.0
		
		        The "backward", "forward" values were added.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axes
		    indicated by `axes`, or the last two axes if `axes` is not given.
		
		Raises
		------
		ValueError
		    If `s` and `axes` have different length, or `axes` not given and
		    ``len(s) != 2``.
		IndexError
		    If an element of `axes` is larger than than the number of axes of `a`.
		
		See Also
		--------
		numpy.fft : Overall view of discrete Fourier transforms, with definitions
		     and conventions used.
		fft2 : The forward 2-dimensional FFT, of which `ifft2` is the inverse.
		ifftn : The inverse of the *n*-dimensional FFT.
		fft : The one-dimensional FFT.
		ifft : The one-dimensional inverse FFT.
		
		Notes
		-----
		`ifft2` is just `ifftn` with a different default for `axes`.
		
		See `ifftn` for details and a plotting example, and `numpy.fft` for
		definition and conventions used.
		
		Zero-padding, analogously with `ifft`, is performed by appending zeros to
		the input along the specified dimension.  Although this is the common
		approach, it might lead to surprising results.  If another form of zero
		padding is desired, it must be performed before `ifft2` is called.
		
		Examples
		--------
		>>> a = 4 * np.eye(4)
		>>> np.fft.ifft2(a)
		array([[1.+0.j,  0.+0.j,  0.+0.j,  0.+0.j], # may vary
		       [0.+0.j,  0.+0.j,  0.+0.j,  1.+0.j],
		       [0.+0.j,  0.+0.j,  1.+0.j,  0.+0.j],
		       [0.+0.j,  1.+0.j,  0.+0.j,  0.+0.j]])
	**/
	static public function ifft2(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the N-dimensional inverse discrete Fourier Transform.
		
		This function computes the inverse of the N-dimensional discrete
		Fourier Transform over any number of axes in an M-dimensional array by
		means of the Fast Fourier Transform (FFT).  In other words,
		``ifftn(fftn(a)) == a`` to within numerical accuracy.
		For a description of the definitions and conventions used, see `numpy.fft`.
		
		The input, analogously to `ifft`, should be ordered in the same way as is
		returned by `fftn`, i.e. it should have the term for zero frequency
		in all axes in the low-order corner, the positive frequency terms in the
		first half of all axes, the term for the Nyquist frequency in the middle
		of all axes and the negative frequency terms in the second half of all
		axes, in order of decreasingly negative frequency.
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		s : sequence of ints, optional
		    Shape (length of each transformed axis) of the output
		    (``s[0]`` refers to axis 0, ``s[1]`` to axis 1, etc.).
		    This corresponds to ``n`` for ``ifft(x, n)``.
		    Along any axis, if the given shape is smaller than that of the input,
		    the input is cropped.  If it is larger, the input is padded with zeros.
		    if `s` is not given, the shape of the input along the axes specified
		    by `axes` is used.  See notes for issue on `ifft` zero padding.
		axes : sequence of ints, optional
		    Axes over which to compute the IFFT.  If not given, the last ``len(s)``
		    axes are used, or all axes if `s` is also not specified.
		    Repeated indices in `axes` means that the inverse transform over that
		    axis is performed multiple times.
		norm : {"backward", "ortho", "forward"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is "backward".
		    Indicates which direction of the forward/backward pair of transforms
		    is scaled and with what normalization factor.
		
		    .. versionadded:: 1.20.0
		
		        The "backward", "forward" values were added.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axes
		    indicated by `axes`, or by a combination of `s` or `a`,
		    as explained in the parameters section above.
		
		Raises
		------
		ValueError
		    If `s` and `axes` have different length.
		IndexError
		    If an element of `axes` is larger than than the number of axes of `a`.
		
		See Also
		--------
		numpy.fft : Overall view of discrete Fourier transforms, with definitions
		     and conventions used.
		fftn : The forward *n*-dimensional FFT, of which `ifftn` is the inverse.
		ifft : The one-dimensional inverse FFT.
		ifft2 : The two-dimensional inverse FFT.
		ifftshift : Undoes `fftshift`, shifts zero-frequency terms to beginning
		    of array.
		
		Notes
		-----
		See `numpy.fft` for definitions and conventions used.
		
		Zero-padding, analogously with `ifft`, is performed by appending zeros to
		the input along the specified dimension.  Although this is the common
		approach, it might lead to surprising results.  If another form of zero
		padding is desired, it must be performed before `ifftn` is called.
		
		Examples
		--------
		>>> a = np.eye(4)
		>>> np.fft.ifftn(np.fft.fftn(a, axes=(0,)), axes=(1,))
		array([[1.+0.j,  0.+0.j,  0.+0.j,  0.+0.j], # may vary
		       [0.+0.j,  1.+0.j,  0.+0.j,  0.+0.j],
		       [0.+0.j,  0.+0.j,  1.+0.j,  0.+0.j],
		       [0.+0.j,  0.+0.j,  0.+0.j,  1.+0.j]])
		
		
		Create and plot an image with band-limited frequency content:
		
		>>> import matplotlib.pyplot as plt
		>>> n = np.zeros((200,200), dtype=complex)
		>>> n[60:80, 20:40] = np.exp(1j*np.random.uniform(0, 2*np.pi, (20, 20)))
		>>> im = np.fft.ifftn(n).real
		>>> plt.imshow(im)
		<matplotlib.image.AxesImage object at 0x...>
		>>> plt.show()
	**/
	static public function ifftn(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):Dynamic;
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
		
		See Also
		--------
		scipy.linalg.inv : Similar function in SciPy.
		
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
		array([[[-2.  ,  1.  ],
		        [ 1.5 , -0.5 ]],
		       [[-1.25,  0.75],
		        [ 0.75, -0.25]]])
	**/
	static public function inv(a:Dynamic):Dynamic;
	/**
		Return the least-squares solution to a linear matrix equation.
		
		Computes the vector `x` that approximately solves the equation
		``a @ x = b``. The equation may be under-, well-, or over-determined
		(i.e., the number of linearly independent rows of `a` can be less than,
		equal to, or greater than its number of linearly independent columns).
		If `a` is square and of full rank, then `x` (but for round-off error)
		is the "exact" solution of the equation. Else, `x` minimizes the
		Euclidean 2-norm :math:`||b - ax||`. If there are multiple minimizing
		solutions, the one with the smallest 2-norm :math:`||x||` is returned.
		
		Parameters
		----------
		a : (M, N) array_like
		    "Coefficient" matrix.
		b : {(M,), (M, K)} array_like
		    Ordinate or "dependent variable" values. If `b` is two-dimensional,
		    the least-squares solution is calculated for each of the `K` columns
		    of `b`.
		rcond : float, optional
		    Cut-off ratio for small singular values of `a`.
		    For the purposes of rank determination, singular values are treated
		    as zero if they are smaller than `rcond` times the largest singular
		    value of `a`.
		
		    .. versionchanged:: 1.14.0
		       If not set, a FutureWarning is given. The previous default
		       of ``-1`` will use the machine precision as `rcond` parameter,
		       the new default will use the machine precision times `max(M, N)`.
		       To silence the warning and use the new default, use ``rcond=None``,
		       to keep using the old behavior, use ``rcond=-1``.
		
		Returns
		-------
		x : {(N,), (N, K)} ndarray
		    Least-squares solution. If `b` is two-dimensional,
		    the solutions are in the `K` columns of `x`.
		residuals : {(1,), (K,), (0,)} ndarray
		    Sums of squared residuals: Squared Euclidean 2-norm for each column in
		    ``b - a @ x``.
		    If the rank of `a` is < N or M <= N, this is an empty array.
		    If `b` is 1-dimensional, this is a (1,) shape array.
		    Otherwise the shape is (K,).
		rank : int
		    Rank of matrix `a`.
		s : (min(M, N),) ndarray
		    Singular values of `a`.
		
		Raises
		------
		LinAlgError
		    If computation does not converge.
		
		See Also
		--------
		scipy.linalg.lstsq : Similar function in SciPy.
		
		Notes
		-----
		If `b` is a matrix, then all array results are returned as matrices.
		
		Examples
		--------
		Fit a line, ``y = mx + c``, through some noisy data-points:
		
		>>> x = np.array([0, 1, 2, 3])
		>>> y = np.array([-1, 0.2, 0.9, 2.1])
		
		By examining the coefficients, we see that the line should have a
		gradient of roughly 1 and cut the y-axis at, more or less, -1.
		
		We can rewrite the line equation as ``y = Ap``, where ``A = [[x 1]]``
		and ``p = [[m], [c]]``.  Now use `lstsq` to solve for `p`:
		
		>>> A = np.vstack([x, np.ones(len(x))]).T
		>>> A
		array([[ 0.,  1.],
		       [ 1.,  1.],
		       [ 2.,  1.],
		       [ 3.,  1.]])
		
		>>> m, c = np.linalg.lstsq(A, y, rcond=None)[0]
		>>> m, c
		(1.0 -0.95) # may vary
		
		Plot the data along with the fitted line:
		
		>>> import matplotlib.pyplot as plt
		>>> _ = plt.plot(x, y, 'o', label='Original data', markersize=10)
		>>> _ = plt.plot(x, m*x + c, 'r', label='Fitted line')
		>>> _ = plt.legend()
		>>> plt.show()
	**/
	static public function lstsq(a:Dynamic, b:Dynamic, ?rcond:Dynamic):Dynamic;
	/**
		Matrix or vector norm.
		
		This function is able to return one of eight different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter.
		
		Parameters
		----------
		x : array_like
		    Input array.  If `axis` is None, `x` must be 1-D or 2-D, unless `ord`
		    is None. If both `axis` and `ord` are None, the 2-norm of
		    ``x.ravel`` will be returned.
		ord : {non-zero int, inf, -inf, 'fro', 'nuc'}, optional
		    Order of the norm (see table under ``Notes``). inf means numpy's
		    `inf` object. The default is None.
		axis : {None, int, 2-tuple of ints}, optional.
		    If `axis` is an integer, it specifies the axis of `x` along which to
		    compute the vector norms.  If `axis` is a 2-tuple, it specifies the
		    axes that hold 2-D matrices, and the matrix norms of these matrices
		    are computed.  If `axis` is None then either a vector norm (when `x`
		    is 1-D) or a matrix norm (when `x` is 2-D) is returned. The default
		    is None.
		
		    .. versionadded:: 1.8.0
		
		keepdims : bool, optional
		    If this is set to True, the axes which are normed over are left in the
		    result as dimensions with size one.  With this option the result will
		    broadcast correctly against the original `x`.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		n : float or ndarray
		    Norm of the matrix or vector(s).
		
		See Also
		--------
		scipy.linalg.norm : Similar function in SciPy.
		
		Notes
		-----
		For values of ``ord < 1``, the result is, strictly speaking, not a
		mathematical 'norm', but it may still be useful for various numerical
		purposes.
		
		The following norms can be calculated:
		
		=====  ============================  ==========================
		ord    norm for matrices             norm for vectors
		=====  ============================  ==========================
		None   Frobenius norm                2-norm
		'fro'  Frobenius norm                --
		'nuc'  nuclear norm                  --
		inf    max(sum(abs(x), axis=1))      max(abs(x))
		-inf   min(sum(abs(x), axis=1))      min(abs(x))
		0      --                            sum(x != 0)
		1      max(sum(abs(x), axis=0))      as below
		-1     min(sum(abs(x), axis=0))      as below
		2      2-norm (largest sing. value)  as below
		-2     smallest singular value       as below
		other  --                            sum(abs(x)**ord)**(1./ord)
		=====  ============================  ==========================
		
		The Frobenius norm is given by [1]_:
		
		    :math:`||A||_F = [\sum_{i,j} abs(a_{i,j})^2]^{1/2}`
		
		The nuclear norm is the sum of the singular values.
		
		Both the Frobenius and nuclear norm orders are only defined for
		matrices and raise a ValueError when ``x.ndim != 2``.
		
		References
		----------
		.. [1] G. H. Golub and C. F. Van Loan, *Matrix Computations*,
		       Baltimore, MD, Johns Hopkins University Press, 1985, pg. 15
		
		Examples
		--------
		>>> from numpy import linalg as LA
		>>> a = np.arange(9) - 4
		>>> a
		array([-4, -3, -2, ...,  2,  3,  4])
		>>> b = a.reshape((3, 3))
		>>> b
		array([[-4, -3, -2],
		       [-1,  0,  1],
		       [ 2,  3,  4]])
		
		>>> LA.norm(a)
		7.745966692414834
		>>> LA.norm(b)
		7.745966692414834
		>>> LA.norm(b, 'fro')
		7.745966692414834
		>>> LA.norm(a, np.inf)
		4.0
		>>> LA.norm(b, np.inf)
		9.0
		>>> LA.norm(a, -np.inf)
		0.0
		>>> LA.norm(b, -np.inf)
		2.0
		
		>>> LA.norm(a, 1)
		20.0
		>>> LA.norm(b, 1)
		7.0
		>>> LA.norm(a, -1)
		-4.6566128774142013e-010
		>>> LA.norm(b, -1)
		6.0
		>>> LA.norm(a, 2)
		7.745966692414834
		>>> LA.norm(b, 2)
		7.3484692283495345
		
		>>> LA.norm(a, -2)
		0.0
		>>> LA.norm(b, -2)
		1.8570331885190563e-016 # may vary
		>>> LA.norm(a, 3)
		5.8480354764257312 # may vary
		>>> LA.norm(a, -3)
		0.0
		
		Using the `axis` argument to compute vector norms:
		
		>>> c = np.array([[ 1, 2, 3],
		...               [-1, 1, 4]])
		>>> LA.norm(c, axis=0)
		array([ 1.41421356,  2.23606798,  5.        ])
		>>> LA.norm(c, axis=1)
		array([ 3.74165739,  4.24264069])
		>>> LA.norm(c, ord=1, axis=1)
		array([ 6.,  6.])
		
		Using the `axis` argument to compute matrix norms:
		
		>>> m = np.arange(8).reshape(2,2,2)
		>>> LA.norm(m, axis=(1,2))
		array([  3.74165739,  11.22497216])
		>>> LA.norm(m[0, :, :]), LA.norm(m[1, :, :])
		(3.7416573867739413, 11.224972160321824)
	**/
	static public function norm(x:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Compute the (Moore-Penrose) pseudo-inverse of a matrix.
		
		Calculate the generalized inverse of a matrix using its
		singular-value decomposition (SVD) and including all
		*large* singular values.
		
		.. versionchanged:: 1.14
		   Can now operate on stacks of matrices
		
		Parameters
		----------
		a : (..., M, N) array_like
		    Matrix or stack of matrices to be pseudo-inverted.
		rcond : (...) array_like of float
		    Cutoff for small singular values.
		    Singular values less than or equal to
		    ``rcond * largest_singular_value`` are set to zero.
		    Broadcasts against the stack of matrices.
		hermitian : bool, optional
		    If True, `a` is assumed to be Hermitian (symmetric if real-valued),
		    enabling a more efficient method for finding singular values.
		    Defaults to False.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		B : (..., N, M) ndarray
		    The pseudo-inverse of `a`. If `a` is a `matrix` instance, then so
		    is `B`.
		
		Raises
		------
		LinAlgError
		    If the SVD computation does not converge.
		
		See Also
		--------
		scipy.linalg.pinv : Similar function in SciPy.
		scipy.linalg.pinv2 : Similar function in SciPy (SVD-based).
		scipy.linalg.pinvh : Compute the (Moore-Penrose) pseudo-inverse of a
		                     Hermitian matrix.
		
		Notes
		-----
		The pseudo-inverse of a matrix A, denoted :math:`A^+`, is
		defined as: "the matrix that 'solves' [the least-squares problem]
		:math:`Ax = b`," i.e., if :math:`\bar{x}` is said solution, then
		:math:`A^+` is that matrix such that :math:`\bar{x} = A^+b`.
		
		It can be shown that if :math:`Q_1 \Sigma Q_2^T = A` is the singular
		value decomposition of A, then
		:math:`A^+ = Q_2 \Sigma^+ Q_1^T`, where :math:`Q_{1,2}` are
		orthogonal matrices, :math:`\Sigma` is a diagonal matrix consisting
		of A's so-called singular values, (followed, typically, by
		zeros), and then :math:`\Sigma^+` is simply the diagonal matrix
		consisting of the reciprocals of A's singular values
		(again, followed by zeros). [1]_
		
		References
		----------
		.. [1] G. Strang, *Linear Algebra and Its Applications*, 2nd Ed., Orlando,
		       FL, Academic Press, Inc., 1980, pp. 139-142.
		
		Examples
		--------
		The following example checks that ``a * a+ * a == a`` and
		``a+ * a * a+ == a+``:
		
		>>> a = np.random.randn(9, 6)
		>>> B = np.linalg.pinv(a)
		>>> np.allclose(a, np.dot(a, np.dot(B, a)))
		True
		>>> np.allclose(B, np.dot(B, np.dot(a, B)))
		True
	**/
	static public function pinv(a:Dynamic, ?rcond:Dynamic, ?hermitian:Dynamic):Dynamic;
	static public function register_func(name:Dynamic, func:Dynamic):Dynamic;
	static public function restore_all():Dynamic;
	static public function restore_func(name:Dynamic):Dynamic;
	/**
		Solve a linear matrix equation, or system of linear scalar equations.
		
		Computes the "exact" solution, `x`, of the well-determined, i.e., full
		rank, linear matrix equation `ax = b`.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Coefficient matrix.
		b : {(..., M,), (..., M, K)}, array_like
		    Ordinate or "dependent variable" values.
		
		Returns
		-------
		x : {(..., M,), (..., M, K)} ndarray
		    Solution to the system a x = b.  Returned shape is identical to `b`.
		
		Raises
		------
		LinAlgError
		    If `a` is singular or not square.
		
		See Also
		--------
		scipy.linalg.solve : Similar function in SciPy.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		The solutions are computed using LAPACK routine ``_gesv``.
		
		`a` must be square and of full-rank, i.e., all rows (or, equivalently,
		columns) must be linearly independent; if either is not true, use
		`lstsq` for the least-squares best "solution" of the
		system/equation.
		
		References
		----------
		.. [1] G. Strang, *Linear Algebra and Its Applications*, 2nd Ed., Orlando,
		       FL, Academic Press, Inc., 1980, pg. 22.
		
		Examples
		--------
		Solve the system of equations ``x0 + 2 * x1 = 1`` and ``3 * x0 + 5 * x1 = 2``:
		
		>>> a = np.array([[1, 2], [3, 5]])
		>>> b = np.array([1, 2])
		>>> x = np.linalg.solve(a, b)
		>>> x
		array([-1.,  1.])
		
		Check that the solution is correct:
		
		>>> np.allclose(np.dot(a, x), b)
		True
	**/
	static public function solve(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Singular Value Decomposition.
		
		When `a` is a 2D array, it is factorized as ``u @ np.diag(s) @ vh
		= (u * s) @ vh``, where `u` and `vh` are 2D unitary arrays and `s` is a 1D
		array of `a`'s singular values. When `a` is higher-dimensional, SVD is
		applied in stacked mode as explained below.
		
		Parameters
		----------
		a : (..., M, N) array_like
		    A real or complex array with ``a.ndim >= 2``.
		full_matrices : bool, optional
		    If True (default), `u` and `vh` have the shapes ``(..., M, M)`` and
		    ``(..., N, N)``, respectively.  Otherwise, the shapes are
		    ``(..., M, K)`` and ``(..., K, N)``, respectively, where
		    ``K = min(M, N)``.
		compute_uv : bool, optional
		    Whether or not to compute `u` and `vh` in addition to `s`.  True
		    by default.
		hermitian : bool, optional
		    If True, `a` is assumed to be Hermitian (symmetric if real-valued),
		    enabling a more efficient method for finding singular values.
		    Defaults to False.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		u : { (..., M, M), (..., M, K) } array
		    Unitary array(s). The first ``a.ndim - 2`` dimensions have the same
		    size as those of the input `a`. The size of the last two dimensions
		    depends on the value of `full_matrices`. Only returned when
		    `compute_uv` is True.
		s : (..., K) array
		    Vector(s) with the singular values, within each vector sorted in
		    descending order. The first ``a.ndim - 2`` dimensions have the same
		    size as those of the input `a`.
		vh : { (..., N, N), (..., K, N) } array
		    Unitary array(s). The first ``a.ndim - 2`` dimensions have the same
		    size as those of the input `a`. The size of the last two dimensions
		    depends on the value of `full_matrices`. Only returned when
		    `compute_uv` is True.
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
		
		See Also
		--------
		scipy.linalg.svd : Similar function in SciPy.
		scipy.linalg.svdvals : Compute singular values of a matrix.
		
		Notes
		-----
		
		.. versionchanged:: 1.8.0
		   Broadcasting rules apply, see the `numpy.linalg` documentation for
		   details.
		
		The decomposition is performed using LAPACK routine ``_gesdd``.
		
		SVD is usually described for the factorization of a 2D matrix :math:`A`.
		The higher-dimensional case will be discussed below. In the 2D case, SVD is
		written as :math:`A = U S V^H`, where :math:`A = a`, :math:`U= u`,
		:math:`S= \mathtt{np.diag}(s)` and :math:`V^H = vh`. The 1D array `s`
		contains the singular values of `a` and `u` and `vh` are unitary. The rows
		of `vh` are the eigenvectors of :math:`A^H A` and the columns of `u` are
		the eigenvectors of :math:`A A^H`. In both cases the corresponding
		(possibly non-zero) eigenvalues are given by ``s**2``.
		
		If `a` has more than two dimensions, then broadcasting rules apply, as
		explained in :ref:`routines.linalg-broadcasting`. This means that SVD is
		working in "stacked" mode: it iterates over all indices of the first
		``a.ndim - 2`` dimensions and for each combination SVD is applied to the
		last two indices. The matrix `a` can be reconstructed from the
		decomposition with either ``(u * s[..., None, :]) @ vh`` or
		``u @ (s[..., None] * vh)``. (The ``@`` operator can be replaced by the
		function ``np.matmul`` for python versions below 3.5.)
		
		If `a` is a ``matrix`` object (as opposed to an ``ndarray``), then so are
		all the return values.
		
		Examples
		--------
		>>> a = np.random.randn(9, 6) + 1j*np.random.randn(9, 6)
		>>> b = np.random.randn(2, 7, 8, 3) + 1j*np.random.randn(2, 7, 8, 3)
		
		Reconstruction based on full SVD, 2D case:
		
		>>> u, s, vh = np.linalg.svd(a, full_matrices=True)
		>>> u.shape, s.shape, vh.shape
		((9, 9), (6,), (6, 6))
		>>> np.allclose(a, np.dot(u[:, :6] * s, vh))
		True
		>>> smat = np.zeros((9, 6), dtype=complex)
		>>> smat[:6, :6] = np.diag(s)
		>>> np.allclose(a, np.dot(u, np.dot(smat, vh)))
		True
		
		Reconstruction based on reduced SVD, 2D case:
		
		>>> u, s, vh = np.linalg.svd(a, full_matrices=False)
		>>> u.shape, s.shape, vh.shape
		((9, 6), (6,), (6, 6))
		>>> np.allclose(a, np.dot(u * s, vh))
		True
		>>> smat = np.diag(s)
		>>> np.allclose(a, np.dot(u, np.dot(smat, vh)))
		True
		
		Reconstruction based on full SVD, 4D case:
		
		>>> u, s, vh = np.linalg.svd(b, full_matrices=True)
		>>> u.shape, s.shape, vh.shape
		((2, 7, 8, 8), (2, 7, 3), (2, 7, 3, 3))
		>>> np.allclose(b, np.matmul(u[..., :3] * s[..., None, :], vh))
		True
		>>> np.allclose(b, np.matmul(u[..., :3], s[..., None] * vh))
		True
		
		Reconstruction based on reduced SVD, 4D case:
		
		>>> u, s, vh = np.linalg.svd(b, full_matrices=False)
		>>> u.shape, s.shape, vh.shape
		((2, 7, 8, 3), (2, 7, 3), (2, 7, 3, 3))
		>>> np.allclose(b, np.matmul(u * s[..., None, :], vh))
		True
		>>> np.allclose(b, np.matmul(u, s[..., None] * vh))
		True
	**/
	static public function svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic, ?hermitian:Dynamic):Dynamic;
}