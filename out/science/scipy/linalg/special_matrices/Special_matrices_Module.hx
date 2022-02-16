/* This file is generated, do not edit! */
package scipy.linalg.special_matrices;
@:pythonImport("scipy.linalg.special_matrices") extern class Special_matrices_Module {
	/**
		Create a view into the array with the given shape and strides.
		
		.. warning:: This function has to be used with extreme care, see notes.
		
		Parameters
		----------
		x : ndarray
		    Array to create a new.
		shape : sequence of int, optional
		    The shape of the new array. Defaults to ``x.shape``.
		strides : sequence of int, optional
		    The strides of the new array. Defaults to ``x.strides``.
		subok : bool, optional
		    .. versionadded:: 1.10
		
		    If True, subclasses are preserved.
		writeable : bool, optional
		    .. versionadded:: 1.12
		
		    If set to False, the returned array will always be readonly.
		    Otherwise it will be writable if the original array was. It
		    is advisable to set this to False if possible (see Notes).
		
		Returns
		-------
		view : ndarray
		
		See also
		--------
		broadcast_to : broadcast an array to a given shape.
		reshape : reshape an array.
		lib.stride_tricks.sliding_window_view :
		    userfriendly and safe function for the creation of sliding window views.
		
		Notes
		-----
		``as_strided`` creates a view into the array given the exact strides
		and shape. This means it manipulates the internal data structure of
		ndarray and, if done incorrectly, the array elements can point to
		invalid memory and can corrupt results or crash your program.
		It is advisable to always use the original ``x.strides`` when
		calculating new strides to avoid reliance on a contiguous memory
		layout.
		
		Furthermore, arrays created with this function often contain self
		overlapping memory, so that two elements are identical.
		Vectorized write operations on such arrays will typically be
		unpredictable. They may even give different results for small, large,
		or transposed arrays.
		Since writing to these arrays has to be tested and done with great
		care, you may want to use ``writeable=False`` to avoid accidental write
		operations.
		
		For these reasons it is advisable to avoid ``as_strided`` when
		possible.
	**/
	static public function as_strided(x:Dynamic, ?shape:Dynamic, ?strides:Dynamic, ?subok:Dynamic, ?writeable:Dynamic):Dynamic;
	/**
		Create a block diagonal matrix from provided arrays.
		
		Given the inputs `A`, `B` and `C`, the output will have these
		arrays arranged on the diagonal::
		
		    [[A, 0, 0],
		     [0, B, 0],
		     [0, 0, C]]
		
		Parameters
		----------
		A, B, C, ... : array_like, up to 2-D
		    Input arrays.  A 1-D array or array_like sequence of length `n` is
		    treated as a 2-D array with shape ``(1,n)``.
		
		Returns
		-------
		D : ndarray
		    Array with `A`, `B`, `C`, ... on the diagonal. `D` has the
		    same dtype as `A`.
		
		Notes
		-----
		If all the input arrays are square, the output is known as a
		block diagonal matrix.
		
		Empty sequences (i.e., array-likes of zero size) will not be ignored.
		Noteworthy, both [] and [[]] are treated as matrices with shape ``(1,0)``.
		
		Examples
		--------
		>>> from scipy.linalg import block_diag
		>>> A = [[1, 0],
		...      [0, 1]]
		>>> B = [[3, 4, 5],
		...      [6, 7, 8]]
		>>> C = [[7]]
		>>> P = np.zeros((2, 0), dtype='int32')
		>>> block_diag(A, B, C)
		array([[1, 0, 0, 0, 0, 0],
		       [0, 1, 0, 0, 0, 0],
		       [0, 0, 3, 4, 5, 0],
		       [0, 0, 6, 7, 8, 0],
		       [0, 0, 0, 0, 0, 7]])
		>>> block_diag(A, P, B, C)
		array([[1, 0, 0, 0, 0, 0],
		       [0, 1, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0],
		       [0, 0, 3, 4, 5, 0],
		       [0, 0, 6, 7, 8, 0],
		       [0, 0, 0, 0, 0, 7]])
		>>> block_diag(1.0, [2, 3], [[4, 5], [6, 7]])
		array([[ 1.,  0.,  0.,  0.,  0.],
		       [ 0.,  2.,  3.,  0.,  0.],
		       [ 0.,  0.,  0.,  4.,  5.],
		       [ 0.,  0.,  0.,  6.,  7.]])
	**/
	static public function block_diag(?arrs:python.VarArgs<Dynamic>):Dynamic;
	/**
		Construct a circulant matrix.
		
		Parameters
		----------
		c : (N,) array_like
		    1-D array, the first column of the matrix.
		
		Returns
		-------
		A : (N, N) ndarray
		    A circulant matrix whose first column is `c`.
		
		See Also
		--------
		toeplitz : Toeplitz matrix
		hankel : Hankel matrix
		solve_circulant : Solve a circulant system.
		
		Notes
		-----
		.. versionadded:: 0.8.0
		
		Examples
		--------
		>>> from scipy.linalg import circulant
		>>> circulant([1, 2, 3])
		array([[1, 3, 2],
		       [2, 1, 3],
		       [3, 2, 1]])
	**/
	static public function circulant(c:Dynamic):Dynamic;
	/**
		Create a companion matrix.
		
		Create the companion matrix [1]_ associated with the polynomial whose
		coefficients are given in `a`.
		
		Parameters
		----------
		a : (N,) array_like
		    1-D array of polynomial coefficients. The length of `a` must be
		    at least two, and ``a[0]`` must not be zero.
		
		Returns
		-------
		c : (N-1, N-1) ndarray
		    The first row of `c` is ``-a[1:]/a[0]``, and the first
		    sub-diagonal is all ones.  The data-type of the array is the same
		    as the data-type of ``1.0*a[0]``.
		
		Raises
		------
		ValueError
		    If any of the following are true: a) ``a.ndim != 1``;
		    b) ``a.size < 2``; c) ``a[0] == 0``.
		
		Notes
		-----
		.. versionadded:: 0.8.0
		
		References
		----------
		.. [1] R. A. Horn & C. R. Johnson, *Matrix Analysis*.  Cambridge, UK:
		    Cambridge University Press, 1999, pp. 146-7.
		
		Examples
		--------
		>>> from scipy.linalg import companion
		>>> companion([1, -10, 31, -30])
		array([[ 10., -31.,  30.],
		       [  1.,   0.,   0.],
		       [  0.,   1.,   0.]])
	**/
	static public function companion(a:Dynamic):Dynamic;
	/**
		Construct a convolution matrix.
		
		Constructs the Toeplitz matrix representing one-dimensional
		convolution [1]_.  See the notes below for details.
		
		Parameters
		----------
		a : (m,) array_like
		    The 1-D array to convolve.
		n : int
		    The number of columns in the resulting matrix.  It gives the length
		    of the input to be convolved with `a`.  This is analogous to the
		    length of `v` in ``numpy.convolve(a, v)``.
		mode : str
		    This is analogous to `mode` in ``numpy.convolve(v, a, mode)``.
		    It must be one of ('full', 'valid', 'same').
		    See below for how `mode` determines the shape of the result.
		
		Returns
		-------
		A : (k, n) ndarray
		    The convolution matrix whose row count `k` depends on `mode`::
		
		        =======  =========================
		         mode    k
		        =======  =========================
		        'full'   m + n -1
		        'same'   max(m, n)
		        'valid'  max(m, n) - min(m, n) + 1
		        =======  =========================
		
		See Also
		--------
		toeplitz : Toeplitz matrix
		
		Notes
		-----
		The code::
		
		    A = convolution_matrix(a, n, mode)
		
		creates a Toeplitz matrix `A` such that ``A @ v`` is equivalent to
		using ``convolve(a, v, mode)``.  The returned array always has `n`
		columns.  The number of rows depends on the specified `mode`, as
		explained above.
		
		In the default 'full' mode, the entries of `A` are given by::
		
		    A[i, j] == (a[i-j] if (0 <= (i-j) < m) else 0)
		
		where ``m = len(a)``.  Suppose, for example, the input array is
		``[x, y, z]``.  The convolution matrix has the form::
		
		    [x, 0, 0, ..., 0, 0]
		    [y, x, 0, ..., 0, 0]
		    [z, y, x, ..., 0, 0]
		    ...
		    [0, 0, 0, ..., x, 0]
		    [0, 0, 0, ..., y, x]
		    [0, 0, 0, ..., z, y]
		    [0, 0, 0, ..., 0, z]
		
		In 'valid' mode, the entries of `A` are given by::
		
		    A[i, j] == (a[i-j+m-1] if (0 <= (i-j+m-1) < m) else 0)
		
		This corresponds to a matrix whose rows are the subset of those from
		the 'full' case where all the coefficients in `a` are contained in the
		row.  For input ``[x, y, z]``, this array looks like::
		
		    [z, y, x, 0, 0, ..., 0, 0, 0]
		    [0, z, y, x, 0, ..., 0, 0, 0]
		    [0, 0, z, y, x, ..., 0, 0, 0]
		    ...
		    [0, 0, 0, 0, 0, ..., x, 0, 0]
		    [0, 0, 0, 0, 0, ..., y, x, 0]
		    [0, 0, 0, 0, 0, ..., z, y, x]
		
		In the 'same' mode, the entries of `A` are given by::
		
		    d = (m - 1) // 2
		    A[i, j] == (a[i-j+d] if (0 <= (i-j+d) < m) else 0)
		
		The typical application of the 'same' mode is when one has a signal of
		length `n` (with `n` greater than ``len(a)``), and the desired output
		is a filtered signal that is still of length `n`.
		
		For input ``[x, y, z]``, this array looks like::
		
		    [y, x, 0, 0, ..., 0, 0, 0]
		    [z, y, x, 0, ..., 0, 0, 0]
		    [0, z, y, x, ..., 0, 0, 0]
		    [0, 0, z, y, ..., 0, 0, 0]
		    ...
		    [0, 0, 0, 0, ..., y, x, 0]
		    [0, 0, 0, 0, ..., z, y, x]
		    [0, 0, 0, 0, ..., 0, z, y]
		
		.. versionadded:: 1.5.0
		
		References
		----------
		.. [1] "Convolution", https://en.wikipedia.org/wiki/Convolution
		
		Examples
		--------
		>>> from scipy.linalg import convolution_matrix
		>>> A = convolution_matrix([-1, 4, -2], 5, mode='same')
		>>> A
		array([[ 4, -1,  0,  0,  0],
		       [-2,  4, -1,  0,  0],
		       [ 0, -2,  4, -1,  0],
		       [ 0,  0, -2,  4, -1],
		       [ 0,  0,  0, -2,  4]])
		
		Compare multiplication by `A` with the use of `numpy.convolve`.
		
		>>> x = np.array([1, 2, 0, -3, 0.5])
		>>> A @ x
		array([  2. ,   6. ,  -1. , -12.5,   8. ])
		
		Verify that ``A @ x`` produced the same result as applying the
		convolution function.
		
		>>> np.convolve([-1, 4, -2], x, mode='same')
		array([  2. ,   6. ,  -1. , -12.5,   8. ])
		
		For comparison to the case ``mode='same'`` shown above, here are the
		matrices produced by ``mode='full'`` and ``mode='valid'`` for the
		same coefficients and size.
		
		>>> convolution_matrix([-1, 4, -2], 5, mode='full')
		array([[-1,  0,  0,  0,  0],
		       [ 4, -1,  0,  0,  0],
		       [-2,  4, -1,  0,  0],
		       [ 0, -2,  4, -1,  0],
		       [ 0,  0, -2,  4, -1],
		       [ 0,  0,  0, -2,  4],
		       [ 0,  0,  0,  0, -2]])
		
		>>> convolution_matrix([-1, 4, -2], 5, mode='valid')
		array([[-2,  4, -1,  0,  0],
		       [ 0, -2,  4, -1,  0],
		       [ 0,  0, -2,  4, -1]])
	**/
	static public function convolution_matrix(a:Dynamic, n:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Discrete Fourier transform matrix.
		
		Create the matrix that computes the discrete Fourier transform of a
		sequence [1]_. The nth primitive root of unity used to generate the
		matrix is exp(-2*pi*i/n), where i = sqrt(-1).
		
		Parameters
		----------
		n : int
		    Size the matrix to create.
		scale : str, optional
		    Must be None, 'sqrtn', or 'n'.
		    If `scale` is 'sqrtn', the matrix is divided by `sqrt(n)`.
		    If `scale` is 'n', the matrix is divided by `n`.
		    If `scale` is None (the default), the matrix is not normalized, and the
		    return value is simply the Vandermonde matrix of the roots of unity.
		
		Returns
		-------
		m : (n, n) ndarray
		    The DFT matrix.
		
		Notes
		-----
		When `scale` is None, multiplying a vector by the matrix returned by
		`dft` is mathematically equivalent to (but much less efficient than)
		the calculation performed by `scipy.fft.fft`.
		
		.. versionadded:: 0.14.0
		
		References
		----------
		.. [1] "DFT matrix", https://en.wikipedia.org/wiki/DFT_matrix
		
		Examples
		--------
		>>> from scipy.linalg import dft
		>>> np.set_printoptions(precision=2, suppress=True)  # for compact output
		>>> m = dft(5)
		>>> m
		array([[ 1.  +0.j  ,  1.  +0.j  ,  1.  +0.j  ,  1.  +0.j  ,  1.  +0.j  ],
		       [ 1.  +0.j  ,  0.31-0.95j, -0.81-0.59j, -0.81+0.59j,  0.31+0.95j],
		       [ 1.  +0.j  , -0.81-0.59j,  0.31+0.95j,  0.31-0.95j, -0.81+0.59j],
		       [ 1.  +0.j  , -0.81+0.59j,  0.31-0.95j,  0.31+0.95j, -0.81-0.59j],
		       [ 1.  +0.j  ,  0.31+0.95j, -0.81+0.59j, -0.81-0.59j,  0.31-0.95j]])
		>>> x = np.array([1, 2, 3, 0, 3])
		>>> m @ x  # Compute the DFT of x
		array([ 9.  +0.j  ,  0.12-0.81j, -2.12+3.44j, -2.12-3.44j,  0.12+0.81j])
		
		Verify that ``m @ x`` is the same as ``fft(x)``.
		
		>>> from scipy.fft import fft
		>>> fft(x)     # Same result as m @ x
		array([ 9.  +0.j  ,  0.12-0.81j, -2.12+3.44j, -2.12-3.44j,  0.12+0.81j])
	**/
	static public function dft(n:Dynamic, ?scale:Dynamic):Dynamic;
	/**
		Returns a symmetric Fiedler matrix
		
		Given an sequence of numbers `a`, Fiedler matrices have the structure
		``F[i, j] = np.abs(a[i] - a[j])``, and hence zero diagonals and nonnegative
		entries. A Fiedler matrix has a dominant positive eigenvalue and other
		eigenvalues are negative. Although not valid generally, for certain inputs,
		the inverse and the determinant can be derived explicitly as given in [1]_.
		
		Parameters
		----------
		a : (n,) array_like
		    coefficient array
		
		Returns
		-------
		F : (n, n) ndarray
		
		See Also
		--------
		circulant, toeplitz
		
		Notes
		-----
		
		.. versionadded:: 1.3.0
		
		References
		----------
		.. [1] J. Todd, "Basic Numerical Mathematics: Vol.2 : Numerical Algebra",
		    1977, Birkhauser, :doi:`10.1007/978-3-0348-7286-7`
		
		Examples
		--------
		>>> from scipy.linalg import det, inv, fiedler
		>>> a = [1, 4, 12, 45, 77]
		>>> n = len(a)
		>>> A = fiedler(a)
		>>> A
		array([[ 0,  3, 11, 44, 76],
		       [ 3,  0,  8, 41, 73],
		       [11,  8,  0, 33, 65],
		       [44, 41, 33,  0, 32],
		       [76, 73, 65, 32,  0]])
		
		The explicit formulas for determinant and inverse seem to hold only for
		monotonically increasing/decreasing arrays. Note the tridiagonal structure
		and the corners.
		
		>>> Ai = inv(A)
		>>> Ai[np.abs(Ai) < 1e-12] = 0.  # cleanup the numerical noise for display
		>>> Ai
		array([[-0.16008772,  0.16666667,  0.        ,  0.        ,  0.00657895],
		       [ 0.16666667, -0.22916667,  0.0625    ,  0.        ,  0.        ],
		       [ 0.        ,  0.0625    , -0.07765152,  0.01515152,  0.        ],
		       [ 0.        ,  0.        ,  0.01515152, -0.03077652,  0.015625  ],
		       [ 0.00657895,  0.        ,  0.        ,  0.015625  , -0.00904605]])
		>>> det(A)
		15409151.999999998
		>>> (-1)**(n-1) * 2**(n-2) * np.diff(a).prod() * (a[-1] - a[0])
		15409152
	**/
	static public function fiedler(a:Dynamic):Dynamic;
	/**
		Returns a Fiedler companion matrix
		
		Given a polynomial coefficient array ``a``, this function forms a
		pentadiagonal matrix with a special structure whose eigenvalues coincides
		with the roots of ``a``.
		
		Parameters
		----------
		a : (N,) array_like
		    1-D array of polynomial coefficients in descending order with a nonzero
		    leading coefficient. For ``N < 2``, an empty array is returned.
		
		Returns
		-------
		c : (N-1, N-1) ndarray
		    Resulting companion matrix
		
		Notes
		-----
		Similar to `companion` the leading coefficient should be nonzero. In the case
		the leading coefficient is not 1, other coefficients are rescaled before
		the array generation. To avoid numerical issues, it is best to provide a
		monic polynomial.
		
		.. versionadded:: 1.3.0
		
		See Also
		--------
		companion
		
		References
		----------
		.. [1] M. Fiedler, " A note on companion matrices", Linear Algebra and its
		    Applications, 2003, :doi:`10.1016/S0024-3795(03)00548-2`
		
		Examples
		--------
		>>> from scipy.linalg import fiedler_companion, eigvals
		>>> p = np.poly(np.arange(1, 9, 2))  # [1., -16., 86., -176., 105.]
		>>> fc = fiedler_companion(p)
		>>> fc
		array([[  16.,  -86.,    1.,    0.],
		       [   1.,    0.,    0.,    0.],
		       [   0.,  176.,    0., -105.],
		       [   0.,    1.,    0.,    0.]])
		>>> eigvals(fc)
		array([7.+0.j, 5.+0.j, 3.+0.j, 1.+0.j])
	**/
	static public function fiedler_companion(a:Dynamic):Dynamic;
	/**
		Construct an Hadamard matrix.
		
		Constructs an n-by-n Hadamard matrix, using Sylvester's
		construction. `n` must be a power of 2.
		
		Parameters
		----------
		n : int
		    The order of the matrix. `n` must be a power of 2.
		dtype : dtype, optional
		    The data type of the array to be constructed.
		
		Returns
		-------
		H : (n, n) ndarray
		    The Hadamard matrix.
		
		Notes
		-----
		.. versionadded:: 0.8.0
		
		Examples
		--------
		>>> from scipy.linalg import hadamard
		>>> hadamard(2, dtype=complex)
		array([[ 1.+0.j,  1.+0.j],
		       [ 1.+0.j, -1.-0.j]])
		>>> hadamard(4)
		array([[ 1,  1,  1,  1],
		       [ 1, -1,  1, -1],
		       [ 1,  1, -1, -1],
		       [ 1, -1, -1,  1]])
	**/
	static public function hadamard(n:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Construct a Hankel matrix.
		
		The Hankel matrix has constant anti-diagonals, with `c` as its
		first column and `r` as its last row. If `r` is not given, then
		`r = zeros_like(c)` is assumed.
		
		Parameters
		----------
		c : array_like
		    First column of the matrix. Whatever the actual shape of `c`, it
		    will be converted to a 1-D array.
		r : array_like, optional
		    Last row of the matrix. If None, ``r = zeros_like(c)`` is assumed.
		    r[0] is ignored; the last row of the returned matrix is
		    ``[c[-1], r[1:]]``. Whatever the actual shape of `r`, it will be
		    converted to a 1-D array.
		
		Returns
		-------
		A : (len(c), len(r)) ndarray
		    The Hankel matrix. Dtype is the same as ``(c[0] + r[0]).dtype``.
		
		See Also
		--------
		toeplitz : Toeplitz matrix
		circulant : circulant matrix
		
		Examples
		--------
		>>> from scipy.linalg import hankel
		>>> hankel([1, 17, 99])
		array([[ 1, 17, 99],
		       [17, 99,  0],
		       [99,  0,  0]])
		>>> hankel([1,2,3,4], [4,7,7,8,9])
		array([[1, 2, 3, 4, 7],
		       [2, 3, 4, 7, 7],
		       [3, 4, 7, 7, 8],
		       [4, 7, 7, 8, 9]])
	**/
	static public function hankel(c:Dynamic, ?r:Dynamic):Dynamic;
	/**
		Create an Helmert matrix of order `n`.
		
		This has applications in statistics, compositional or simplicial analysis,
		and in Aitchison geometry.
		
		Parameters
		----------
		n : int
		    The size of the array to create.
		full : bool, optional
		    If True the (n, n) ndarray will be returned.
		    Otherwise the submatrix that does not include the first
		    row will be returned.
		    Default: False.
		
		Returns
		-------
		M : ndarray
		    The Helmert matrix.
		    The shape is (n, n) or (n-1, n) depending on the `full` argument.
		
		Examples
		--------
		>>> from scipy.linalg import helmert
		>>> helmert(5, full=True)
		array([[ 0.4472136 ,  0.4472136 ,  0.4472136 ,  0.4472136 ,  0.4472136 ],
		       [ 0.70710678, -0.70710678,  0.        ,  0.        ,  0.        ],
		       [ 0.40824829,  0.40824829, -0.81649658,  0.        ,  0.        ],
		       [ 0.28867513,  0.28867513,  0.28867513, -0.8660254 ,  0.        ],
		       [ 0.2236068 ,  0.2236068 ,  0.2236068 ,  0.2236068 , -0.89442719]])
	**/
	static public function helmert(n:Dynamic, ?full:Dynamic):Dynamic;
	/**
		Create a Hilbert matrix of order `n`.
		
		Returns the `n` by `n` array with entries `h[i,j] = 1 / (i + j + 1)`.
		
		Parameters
		----------
		n : int
		    The size of the array to create.
		
		Returns
		-------
		h : (n, n) ndarray
		    The Hilbert matrix.
		
		See Also
		--------
		invhilbert : Compute the inverse of a Hilbert matrix.
		
		Notes
		-----
		.. versionadded:: 0.10.0
		
		Examples
		--------
		>>> from scipy.linalg import hilbert
		>>> hilbert(3)
		array([[ 1.        ,  0.5       ,  0.33333333],
		       [ 0.5       ,  0.33333333,  0.25      ],
		       [ 0.33333333,  0.25      ,  0.2       ]])
	**/
	static public function hilbert(n:Dynamic):Dynamic;
	/**
		Compute the inverse of the Hilbert matrix of order `n`.
		
		The entries in the inverse of a Hilbert matrix are integers. When `n`
		is greater than 14, some entries in the inverse exceed the upper limit
		of 64 bit integers. The `exact` argument provides two options for
		dealing with these large integers.
		
		Parameters
		----------
		n : int
		    The order of the Hilbert matrix.
		exact : bool, optional
		    If False, the data type of the array that is returned is np.float64,
		    and the array is an approximation of the inverse.
		    If True, the array is the exact integer inverse array. To represent
		    the exact inverse when n > 14, the returned array is an object array
		    of long integers. For n <= 14, the exact inverse is returned as an
		    array with data type np.int64.
		
		Returns
		-------
		invh : (n, n) ndarray
		    The data type of the array is np.float64 if `exact` is False.
		    If `exact` is True, the data type is either np.int64 (for n <= 14)
		    or object (for n > 14). In the latter case, the objects in the
		    array will be long integers.
		
		See Also
		--------
		hilbert : Create a Hilbert matrix.
		
		Notes
		-----
		.. versionadded:: 0.10.0
		
		Examples
		--------
		>>> from scipy.linalg import invhilbert
		>>> invhilbert(4)
		array([[   16.,  -120.,   240.,  -140.],
		       [ -120.,  1200., -2700.,  1680.],
		       [  240., -2700.,  6480., -4200.],
		       [ -140.,  1680., -4200.,  2800.]])
		>>> invhilbert(4, exact=True)
		array([[   16,  -120,   240,  -140],
		       [ -120,  1200, -2700,  1680],
		       [  240, -2700,  6480, -4200],
		       [ -140,  1680, -4200,  2800]], dtype=int64)
		>>> invhilbert(16)[7,7]
		4.2475099528537506e+19
		>>> invhilbert(16, exact=True)[7,7]
		42475099528537378560
	**/
	static public function invhilbert(n:Dynamic, ?exact:Dynamic):Dynamic;
	/**
		Returns the inverse of the n x n Pascal matrix.
		
		The Pascal matrix is a matrix containing the binomial coefficients as
		its elements.
		
		Parameters
		----------
		n : int
		    The size of the matrix to create; that is, the result is an n x n
		    matrix.
		kind : str, optional
		    Must be one of 'symmetric', 'lower', or 'upper'.
		    Default is 'symmetric'.
		exact : bool, optional
		    If `exact` is True, the result is either an array of type
		    ``numpy.int64`` (if `n` <= 35) or an object array of Python integers.
		    If `exact` is False, the coefficients in the matrix are computed using
		    `scipy.special.comb` with `exact=False`. The result will be a floating
		    point array, and for large `n`, the values in the array will not be the
		    exact coefficients.
		
		Returns
		-------
		invp : (n, n) ndarray
		    The inverse of the Pascal matrix.
		
		See Also
		--------
		pascal
		
		Notes
		-----
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] "Pascal matrix", https://en.wikipedia.org/wiki/Pascal_matrix
		.. [2] Cohen, A. M., "The inverse of a Pascal matrix", Mathematical
		       Gazette, 59(408), pp. 111-112, 1975.
		
		Examples
		--------
		>>> from scipy.linalg import invpascal, pascal
		>>> invp = invpascal(5)
		>>> invp
		array([[  5, -10,  10,  -5,   1],
		       [-10,  30, -35,  19,  -4],
		       [ 10, -35,  46, -27,   6],
		       [ -5,  19, -27,  17,  -4],
		       [  1,  -4,   6,  -4,   1]])
		
		>>> p = pascal(5)
		>>> p.dot(invp)
		array([[ 1.,  0.,  0.,  0.,  0.],
		       [ 0.,  1.,  0.,  0.,  0.],
		       [ 0.,  0.,  1.,  0.,  0.],
		       [ 0.,  0.,  0.,  1.,  0.],
		       [ 0.,  0.,  0.,  0.,  1.]])
		
		An example of the use of `kind` and `exact`:
		
		>>> invpascal(5, kind='lower', exact=False)
		array([[ 1., -0.,  0., -0.,  0.],
		       [-1.,  1., -0.,  0., -0.],
		       [ 1., -2.,  1., -0.,  0.],
		       [-1.,  3., -3.,  1., -0.],
		       [ 1., -4.,  6., -4.,  1.]])
	**/
	static public function invpascal(n:Dynamic, ?kind:Dynamic, ?exact:Dynamic):Dynamic;
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
	/**
		Create a Leslie matrix.
		
		Given the length n array of fecundity coefficients `f` and the length
		n-1 array of survival coefficients `s`, return the associated Leslie
		matrix.
		
		Parameters
		----------
		f : (N,) array_like
		    The "fecundity" coefficients.
		s : (N-1,) array_like
		    The "survival" coefficients, has to be 1-D.  The length of `s`
		    must be one less than the length of `f`, and it must be at least 1.
		
		Returns
		-------
		L : (N, N) ndarray
		    The array is zero except for the first row,
		    which is `f`, and the first sub-diagonal, which is `s`.
		    The data-type of the array will be the data-type of ``f[0]+s[0]``.
		
		Notes
		-----
		.. versionadded:: 0.8.0
		
		The Leslie matrix is used to model discrete-time, age-structured
		population growth [1]_ [2]_. In a population with `n` age classes, two sets
		of parameters define a Leslie matrix: the `n` "fecundity coefficients",
		which give the number of offspring per-capita produced by each age
		class, and the `n` - 1 "survival coefficients", which give the
		per-capita survival rate of each age class.
		
		References
		----------
		.. [1] P. H. Leslie, On the use of matrices in certain population
		       mathematics, Biometrika, Vol. 33, No. 3, 183--212 (Nov. 1945)
		.. [2] P. H. Leslie, Some further notes on the use of matrices in
		       population mathematics, Biometrika, Vol. 35, No. 3/4, 213--245
		       (Dec. 1948)
		
		Examples
		--------
		>>> from scipy.linalg import leslie
		>>> leslie([0.1, 2.0, 1.0, 0.1], [0.2, 0.8, 0.7])
		array([[ 0.1,  2. ,  1. ,  0.1],
		       [ 0.2,  0. ,  0. ,  0. ],
		       [ 0. ,  0.8,  0. ,  0. ],
		       [ 0. ,  0. ,  0.7,  0. ]])
	**/
	static public function leslie(f:Dynamic, s:Dynamic):Dynamic;
	/**
		Returns the n x n Pascal matrix.
		
		The Pascal matrix is a matrix containing the binomial coefficients as
		its elements.
		
		Parameters
		----------
		n : int
		    The size of the matrix to create; that is, the result is an n x n
		    matrix.
		kind : str, optional
		    Must be one of 'symmetric', 'lower', or 'upper'.
		    Default is 'symmetric'.
		exact : bool, optional
		    If `exact` is True, the result is either an array of type
		    numpy.uint64 (if n < 35) or an object array of Python long integers.
		    If `exact` is False, the coefficients in the matrix are computed using
		    `scipy.special.comb` with `exact=False`. The result will be a floating
		    point array, and the values in the array will not be the exact
		    coefficients, but this version is much faster than `exact=True`.
		
		Returns
		-------
		p : (n, n) ndarray
		    The Pascal matrix.
		
		See Also
		--------
		invpascal
		
		Notes
		-----
		See https://en.wikipedia.org/wiki/Pascal_matrix for more information
		about Pascal matrices.
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		>>> from scipy.linalg import pascal
		>>> pascal(4)
		array([[ 1,  1,  1,  1],
		       [ 1,  2,  3,  4],
		       [ 1,  3,  6, 10],
		       [ 1,  4, 10, 20]], dtype=uint64)
		>>> pascal(4, kind='lower')
		array([[1, 0, 0, 0],
		       [1, 1, 0, 0],
		       [1, 2, 1, 0],
		       [1, 3, 3, 1]], dtype=uint64)
		>>> pascal(50)[-1, -1]
		25477612258980856902730428600
		>>> from scipy.special import comb
		>>> comb(98, 49, exact=True)
		25477612258980856902730428600
	**/
	static public function pascal(n:Dynamic, ?kind:Dynamic, ?exact:Dynamic):Dynamic;
	/**
		Construct a Toeplitz matrix.
		
		The Toeplitz matrix has constant diagonals, with c as its first column
		and r as its first row. If r is not given, ``r == conjugate(c)`` is
		assumed.
		
		Parameters
		----------
		c : array_like
		    First column of the matrix.  Whatever the actual shape of `c`, it
		    will be converted to a 1-D array.
		r : array_like, optional
		    First row of the matrix. If None, ``r = conjugate(c)`` is assumed;
		    in this case, if c[0] is real, the result is a Hermitian matrix.
		    r[0] is ignored; the first row of the returned matrix is
		    ``[c[0], r[1:]]``.  Whatever the actual shape of `r`, it will be
		    converted to a 1-D array.
		
		Returns
		-------
		A : (len(c), len(r)) ndarray
		    The Toeplitz matrix. Dtype is the same as ``(c[0] + r[0]).dtype``.
		
		See Also
		--------
		circulant : circulant matrix
		hankel : Hankel matrix
		solve_toeplitz : Solve a Toeplitz system.
		
		Notes
		-----
		The behavior when `c` or `r` is a scalar, or when `c` is complex and
		`r` is None, was changed in version 0.8.0. The behavior in previous
		versions was undocumented and is no longer supported.
		
		Examples
		--------
		>>> from scipy.linalg import toeplitz
		>>> toeplitz([1,2,3], [1,4,5,6])
		array([[1, 4, 5, 6],
		       [2, 1, 4, 5],
		       [3, 2, 1, 4]])
		>>> toeplitz([1.0, 2+3j, 4-1j])
		array([[ 1.+0.j,  2.-3.j,  4.+1.j],
		       [ 2.+3.j,  1.+0.j,  2.-3.j],
		       [ 4.-1.j,  2.+3.j,  1.+0.j]])
	**/
	static public function toeplitz(c:Dynamic, ?r:Dynamic):Dynamic;
	/**
		Construct (N, M) matrix filled with ones at and below the kth diagonal.
		
		The matrix has A[i,j] == 1 for j <= i + k
		
		Parameters
		----------
		N : int
		    The size of the first dimension of the matrix.
		M : int or None, optional
		    The size of the second dimension of the matrix. If `M` is None,
		    `M = N` is assumed.
		k : int, optional
		    Number of subdiagonal below which matrix is filled with ones.
		    `k` = 0 is the main diagonal, `k` < 0 subdiagonal and `k` > 0
		    superdiagonal.
		dtype : dtype, optional
		    Data type of the matrix.
		
		Returns
		-------
		tri : (N, M) ndarray
		    Tri matrix.
		
		Examples
		--------
		>>> from scipy.linalg import tri
		>>> tri(3, 5, 2, dtype=int)
		array([[1, 1, 1, 0, 0],
		       [1, 1, 1, 1, 0],
		       [1, 1, 1, 1, 1]])
		>>> tri(3, 5, -1, dtype=int)
		array([[0, 0, 0, 0, 0],
		       [1, 0, 0, 0, 0],
		       [1, 1, 0, 0, 0]])
	**/
	static public function tri(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Make a copy of a matrix with elements above the kth diagonal zeroed.
		
		Parameters
		----------
		m : array_like
		    Matrix whose elements to return
		k : int, optional
		    Diagonal above which to zero elements.
		    `k` == 0 is the main diagonal, `k` < 0 subdiagonal and
		    `k` > 0 superdiagonal.
		
		Returns
		-------
		tril : ndarray
		    Return is the same shape and type as `m`.
		
		Examples
		--------
		>>> from scipy.linalg import tril
		>>> tril([[1,2,3],[4,5,6],[7,8,9],[10,11,12]], -1)
		array([[ 0,  0,  0],
		       [ 4,  0,  0],
		       [ 7,  8,  0],
		       [10, 11, 12]])
	**/
	static public function tril(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Make a copy of a matrix with elements below the kth diagonal zeroed.
		
		Parameters
		----------
		m : array_like
		    Matrix whose elements to return
		k : int, optional
		    Diagonal below which to zero elements.
		    `k` == 0 is the main diagonal, `k` < 0 subdiagonal and
		    `k` > 0 superdiagonal.
		
		Returns
		-------
		triu : ndarray
		    Return matrix with zeroed elements below the kth diagonal and has
		    same shape and type as `m`.
		
		Examples
		--------
		>>> from scipy.linalg import triu
		>>> triu([[1,2,3],[4,5,6],[7,8,9],[10,11,12]], -1)
		array([[ 1,  2,  3],
		       [ 4,  5,  6],
		       [ 0,  8,  9],
		       [ 0,  0, 12]])
	**/
	static public function triu(m:Dynamic, ?k:Dynamic):Dynamic;
}