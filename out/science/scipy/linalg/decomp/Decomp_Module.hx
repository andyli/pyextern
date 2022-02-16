/* This file is generated, do not edit! */
package scipy.linalg.decomp;
@:pythonImport("scipy.linalg.decomp") extern class Decomp_Module {
	/**
		Returns the indices that would sort an array.
		
		Perform an indirect sort along the given axis using the algorithm specified
		by the `kind` keyword. It returns an array of indices of the same shape as
		`a` that index data along the given axis in sorted order.
		
		Parameters
		----------
		a : array_like
		    Array to sort.
		axis : int or None, optional
		    Axis along which to sort.  The default is -1 (the last axis). If None,
		    the flattened array is used.
		kind : {'quicksort', 'mergesort', 'heapsort', 'stable'}, optional
		    Sorting algorithm. The default is 'quicksort'. Note that both 'stable'
		    and 'mergesort' use timsort under the covers and, in general, the
		    actual implementation will vary with data type. The 'mergesort' option
		    is retained for backwards compatibility.
		
		    .. versionchanged:: 1.15.0.
		       The 'stable' option was added.
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc.  A single field can
		    be specified as a string, and not all fields need be specified,
		    but unspecified fields will still be used, in the order in which
		    they come up in the dtype, to break ties.
		
		Returns
		-------
		index_array : ndarray, int
		    Array of indices that sort `a` along the specified `axis`.
		    If `a` is one-dimensional, ``a[index_array]`` yields a sorted `a`.
		    More generally, ``np.take_along_axis(a, index_array, axis=axis)``
		    always yields the sorted `a`, irrespective of dimensionality.
		
		See Also
		--------
		sort : Describes sorting algorithms used.
		lexsort : Indirect stable sort with multiple keys.
		ndarray.sort : Inplace sort.
		argpartition : Indirect partial sort.
		take_along_axis : Apply ``index_array`` from argsort
		                  to an array as if by calling sort.
		
		Notes
		-----
		See `sort` for notes on the different sorting algorithms.
		
		As of NumPy 1.4.0 `argsort` works with real/complex arrays containing
		nan values. The enhanced sort order is documented in `sort`.
		
		Examples
		--------
		One dimensional array:
		
		>>> x = np.array([3, 1, 2])
		>>> np.argsort(x)
		array([1, 2, 0])
		
		Two-dimensional array:
		
		>>> x = np.array([[0, 3], [2, 2]])
		>>> x
		array([[0, 3],
		       [2, 2]])
		
		>>> ind = np.argsort(x, axis=0)  # sorts along first axis (down)
		>>> ind
		array([[0, 1],
		       [1, 0]])
		>>> np.take_along_axis(x, ind, axis=0)  # same as np.sort(x, axis=0)
		array([[0, 2],
		       [2, 3]])
		
		>>> ind = np.argsort(x, axis=1)  # sorts along last axis (across)
		>>> ind
		array([[0, 1],
		       [0, 1]])
		>>> np.take_along_axis(x, ind, axis=1)  # same as np.sort(x, axis=1)
		array([[0, 3],
		       [2, 2]])
		
		Indices of the sorted elements of a N-dimensional array:
		
		>>> ind = np.unravel_index(np.argsort(x, axis=None), x.shape)
		>>> ind
		(array([0, 1, 1, 0]), array([0, 0, 1, 1]))
		>>> x[ind]  # same as np.sort(x, axis=None)
		array([0, 2, 2, 3])
		
		Sorting with keys:
		
		>>> x = np.array([(1, 0), (0, 1)], dtype=[('x', '<i4'), ('y', '<i4')])
		>>> x
		array([(1, 0), (0, 1)],
		      dtype=[('x', '<i4'), ('y', '<i4')])
		
		>>> np.argsort(x, order=('x','y'))
		array([1, 0])
		
		>>> np.argsort(x, order=('y','x'))
		array([0, 1])
	**/
	static public function argsort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
	/**
		array(object, dtype=None, *, copy=True, order='K', subok=False, ndmin=0,
		      like=None)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an object whose
		    __array__ method returns an array, or any (nested) sequence.
		    If object is a scalar, a 0-dimensional array containing object is
		    returned.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then the type will
		    be determined as the minimum type required to hold the objects in the
		    sequence.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy will
		    only be made if __array__ returns a copy, if obj is a nested sequence,
		    or if a copy is needed to satisfy any of the other requirements
		    (`dtype`, `order`, etc.).
		order : {'K', 'A', 'C', 'F'}, optional
		    Specify the memory layout of the array. If object is not an array, the
		    newly created array will be in C order (row major) unless 'F' is
		    specified, in which case it will be in Fortran order (column major).
		    If object is an array the following holds.
		
		    ===== ========= ===================================================
		    order  no copy                     copy=True
		    ===== ========= ===================================================
		    'K'   unchanged F & C order preserved, otherwise most similar order
		    'A'   unchanged F order if input is F and not C, otherwise C order
		    'C'   C order   C order
		    'F'   F order   F order
		    ===== ========= ===================================================
		
		    When ``copy=False`` and a copy is made for other reasons, the result is
		    the same as if ``copy=True``, with some exceptions for 'A', see the
		    Notes section. The default order is 'K'.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		    An array object satisfying the specified requirements.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
		Notes
		-----
		When order is 'A' and `object` is an array in neither 'C' nor 'F' order,
		and a copy is forced by a change in dtype, then the order of the result is
		not necessarily 'C' as expected. This is likely a bug.
		
		Examples
		--------
		>>> np.array([1, 2, 3])
		array([1, 2, 3])
		
		Upcasting:
		
		>>> np.array([1, 2, 3.0])
		array([ 1.,  2.,  3.])
		
		More than one dimension:
		
		>>> np.array([[1, 2], [3, 4]])
		array([[1, 2],
		       [3, 4]])
		
		Minimum dimensions 2:
		
		>>> np.array([1, 2, 3], ndmin=2)
		array([[1, 2, 3]])
		
		Type provided:
		
		>>> np.array([1, 2, 3], dtype=complex)
		array([ 1.+0.j,  2.+0.j,  3.+0.j])
		
		Data-type consisting of more than one element:
		
		>>> x = np.array([(1,2),(3,4)],dtype=[('a','<i4'),('b','<i4')])
		>>> x['a']
		array([1, 3])
		
		Creating an array from sub-classes:
		
		>>> np.array(np.mat('1 2; 3 4'))
		array([[1, 2],
		       [3, 4]])
		
		>>> np.array(np.mat('1 2; 3 4'), subok=True)
		matrix([[1, 2],
		        [3, 4]])
	**/
	static public function array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:native("cast")
	static public var _cast : Dynamic;
	/**
		Converts complex eigenvalues ``w`` and eigenvectors ``v`` to real
		eigenvalues in a block diagonal form ``wr`` and the associated real
		eigenvectors ``vr``, such that::
		
		    vr @ wr = X @ vr
		
		continues to hold, where ``X`` is the original array for which ``w`` and
		``v`` are the eigenvalues and eigenvectors.
		
		.. versionadded:: 1.1.0
		
		Parameters
		----------
		w : (..., M) array_like
		    Complex or real eigenvalues, an array or stack of arrays
		
		    Conjugate pairs must not be interleaved, else the wrong result
		    will be produced. So ``[1+1j, 1, 1-1j]`` will give a correct result,
		    but ``[1+1j, 2+1j, 1-1j, 2-1j]`` will not.
		
		v : (..., M, M) array_like
		    Complex or real eigenvectors, a square array or stack of square arrays.
		
		Returns
		-------
		wr : (..., M, M) ndarray
		    Real diagonal block form of eigenvalues
		vr : (..., M, M) ndarray
		    Real eigenvectors associated with ``wr``
		
		See Also
		--------
		eig : Eigenvalues and right eigenvectors for non-symmetric arrays
		rsf2csf : Convert real Schur form to complex Schur form
		
		Notes
		-----
		``w``, ``v`` must be the eigenstructure for some *real* matrix ``X``.
		For example, obtained by ``w, v = scipy.linalg.eig(X)`` or
		``w, v = numpy.linalg.eig(X)`` in which case ``X`` can also represent
		stacked arrays.
		
		.. versionadded:: 1.1.0
		
		Examples
		--------
		>>> X = np.array([[1, 2, 3], [0, 4, 5], [0, -5, 4]])
		>>> X
		array([[ 1,  2,  3],
		       [ 0,  4,  5],
		       [ 0, -5,  4]])
		
		>>> from scipy import linalg
		>>> w, v = linalg.eig(X)
		>>> w
		array([ 1.+0.j,  4.+5.j,  4.-5.j])
		>>> v
		array([[ 1.00000+0.j     , -0.01906-0.40016j, -0.01906+0.40016j],
		       [ 0.00000+0.j     ,  0.00000-0.64788j,  0.00000+0.64788j],
		       [ 0.00000+0.j     ,  0.64788+0.j     ,  0.64788-0.j     ]])
		
		>>> wr, vr = linalg.cdf2rdf(w, v)
		>>> wr
		array([[ 1.,  0.,  0.],
		       [ 0.,  4.,  5.],
		       [ 0., -5.,  4.]])
		>>> vr
		array([[ 1.     ,  0.40016, -0.01906],
		       [ 0.     ,  0.64788,  0.     ],
		       [ 0.     ,  0.     ,  0.64788]])
		
		>>> vr @ wr
		array([[ 1.     ,  1.69593,  1.9246 ],
		       [ 0.     ,  2.59153,  3.23942],
		       [ 0.     , -3.23942,  2.59153]])
		>>> X @ vr
		array([[ 1.     ,  1.69593,  1.9246 ],
		       [ 0.     ,  2.59153,  3.23942],
		       [ 0.     , -3.23942,  2.59153]])
	**/
	static public function cdf2rdf(w:Dynamic, v:Dynamic):Dynamic;
	/**
		Solve an ordinary or generalized eigenvalue problem of a square matrix.
		
		Find eigenvalues w and right or left eigenvectors of a general matrix::
		
		    a   vr[:,i] = w[i]        b   vr[:,i]
		    a.H vl[:,i] = w[i].conj() b.H vl[:,i]
		
		where ``.H`` is the Hermitian conjugation.
		
		Parameters
		----------
		a : (M, M) array_like
		    A complex or real matrix whose eigenvalues and eigenvectors
		    will be computed.
		b : (M, M) array_like, optional
		    Right-hand side matrix in a generalized eigenvalue problem.
		    Default is None, identity matrix is assumed.
		left : bool, optional
		    Whether to calculate and return left eigenvectors.  Default is False.
		right : bool, optional
		    Whether to calculate and return right eigenvectors.  Default is True.
		overwrite_a : bool, optional
		    Whether to overwrite `a`; may improve performance.  Default is False.
		overwrite_b : bool, optional
		    Whether to overwrite `b`; may improve performance.  Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		homogeneous_eigvals : bool, optional
		    If True, return the eigenvalues in homogeneous coordinates.
		    In this case ``w`` is a (2, M) array so that::
		
		        w[1,i] a vr[:,i] = w[0,i] b vr[:,i]
		
		    Default is False.
		
		Returns
		-------
		w : (M,) or (2, M) double or complex ndarray
		    The eigenvalues, each repeated according to its
		    multiplicity. The shape is (M,) unless
		    ``homogeneous_eigvals=True``.
		vl : (M, M) double or complex ndarray
		    The normalized left eigenvector corresponding to the eigenvalue
		    ``w[i]`` is the column vl[:,i]. Only returned if ``left=True``.
		vr : (M, M) double or complex ndarray
		    The normalized right eigenvector corresponding to the eigenvalue
		    ``w[i]`` is the column ``vr[:,i]``.  Only returned if ``right=True``.
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge.
		
		See Also
		--------
		eigvals : eigenvalues of general arrays
		eigh : Eigenvalues and right eigenvectors for symmetric/Hermitian arrays.
		eig_banded : eigenvalues and right eigenvectors for symmetric/Hermitian
		    band matrices
		eigh_tridiagonal : eigenvalues and right eiegenvectors for
		    symmetric/Hermitian tridiagonal matrices
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[0., -1.], [1., 0.]])
		>>> linalg.eigvals(a)
		array([0.+1.j, 0.-1.j])
		
		>>> b = np.array([[0., 1.], [1., 1.]])
		>>> linalg.eigvals(a, b)
		array([ 1.+0.j, -1.+0.j])
		
		>>> a = np.array([[3., 0., 0.], [0., 8., 0.], [0., 0., 7.]])
		>>> linalg.eigvals(a, homogeneous_eigvals=True)
		array([[3.+0.j, 8.+0.j, 7.+0.j],
		       [1.+0.j, 1.+0.j, 1.+0.j]])
		
		>>> a = np.array([[0., -1.], [1., 0.]])
		>>> linalg.eigvals(a) == linalg.eig(a)[0]
		array([ True,  True])
		>>> linalg.eig(a, left=True, right=False)[1] # normalized left eigenvector
		array([[-0.70710678+0.j        , -0.70710678-0.j        ],
		       [-0.        +0.70710678j, -0.        -0.70710678j]])
		>>> linalg.eig(a, left=False, right=True)[1] # normalized right eigenvector
		array([[0.70710678+0.j        , 0.70710678-0.j        ],
		       [0.        -0.70710678j, 0.        +0.70710678j]])
	**/
	static public function eig(a:Dynamic, ?b:Dynamic, ?left:Dynamic, ?right:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic, ?homogeneous_eigvals:Dynamic):Dynamic;
	/**
		Solve real symmetric or complex Hermitian band matrix eigenvalue problem.
		
		Find eigenvalues w and optionally right eigenvectors v of a::
		
		    a v[:,i] = w[i] v[:,i]
		    v.H v    = identity
		
		The matrix a is stored in a_band either in lower diagonal or upper
		diagonal ordered form:
		
		    a_band[u + i - j, j] == a[i,j]        (if upper form; i <= j)
		    a_band[    i - j, j] == a[i,j]        (if lower form; i >= j)
		
		where u is the number of bands above the diagonal.
		
		Example of a_band (shape of a is (6,6), u=2)::
		
		    upper form:
		    *   *   a02 a13 a24 a35
		    *   a01 a12 a23 a34 a45
		    a00 a11 a22 a33 a44 a55
		
		    lower form:
		    a00 a11 a22 a33 a44 a55
		    a10 a21 a32 a43 a54 *
		    a20 a31 a42 a53 *   *
		
		Cells marked with * are not used.
		
		Parameters
		----------
		a_band : (u+1, M) array_like
		    The bands of the M by M matrix a.
		lower : bool, optional
		    Is the matrix in the lower form. (Default is upper form)
		eigvals_only : bool, optional
		    Compute only the eigenvalues and no eigenvectors.
		    (Default: calculate also eigenvectors)
		overwrite_a_band : bool, optional
		    Discard data in a_band (may enhance performance)
		select : {'a', 'v', 'i'}, optional
		    Which eigenvalues to calculate
		
		    ======  ========================================
		    select  calculated
		    ======  ========================================
		    'a'     All eigenvalues
		    'v'     Eigenvalues in the interval (min, max]
		    'i'     Eigenvalues with indices min <= i <= max
		    ======  ========================================
		select_range : (min, max), optional
		    Range of selected eigenvalues
		max_ev : int, optional
		    For select=='v', maximum number of eigenvalues expected.
		    For other values of select, has no meaning.
		
		    In doubt, leave this parameter untouched.
		
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		w : (M,) ndarray
		    The eigenvalues, in ascending order, each repeated according to its
		    multiplicity.
		v : (M, M) float or complex ndarray
		    The normalized eigenvector corresponding to the eigenvalue w[i] is
		    the column v[:,i].
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge.
		
		See Also
		--------
		eigvals_banded : eigenvalues for symmetric/Hermitian band matrices
		eig : eigenvalues and right eigenvectors of general arrays.
		eigh : eigenvalues and right eigenvectors for symmetric/Hermitian arrays
		eigh_tridiagonal : eigenvalues and right eigenvectors for
		    symmetric/Hermitian tridiagonal matrices
		
		Examples
		--------
		>>> from scipy.linalg import eig_banded
		>>> A = np.array([[1, 5, 2, 0], [5, 2, 5, 2], [2, 5, 3, 5], [0, 2, 5, 4]])
		>>> Ab = np.array([[1, 2, 3, 4], [5, 5, 5, 0], [2, 2, 0, 0]])
		>>> w, v = eig_banded(Ab, lower=True)
		>>> np.allclose(A @ v - v @ np.diag(w), np.zeros((4, 4)))
		True
		>>> w = eig_banded(Ab, lower=True, eigvals_only=True)
		>>> w
		array([-4.26200532, -2.22987175,  3.95222349, 12.53965359])
		
		Request only the eigenvalues between ``[-3, 4]``
		
		>>> w, v = eig_banded(Ab, lower=True, select='v', select_range=[-3, 4])
		>>> w
		array([-2.22987175,  3.95222349])
	**/
	static public function eig_banded(a_band:Dynamic, ?lower:Dynamic, ?eigvals_only:Dynamic, ?overwrite_a_band:Dynamic, ?select:Dynamic, ?select_range:Dynamic, ?max_ev:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve a standard or generalized eigenvalue problem for a complex
		Hermitian or real symmetric matrix.
		
		Find eigenvalues array ``w`` and optionally eigenvectors array ``v`` of
		array ``a``, where ``b`` is positive definite such that for every
		eigenvalue λ (i-th entry of w) and its eigenvector ``vi`` (i-th column of
		``v``) satisfies::
		
		                  a @ vi = λ * b @ vi
		    vi.conj().T @ a @ vi = λ
		    vi.conj().T @ b @ vi = 1
		
		In the standard problem, ``b`` is assumed to be the identity matrix.
		
		Parameters
		----------
		a : (M, M) array_like
		    A complex Hermitian or real symmetric matrix whose eigenvalues and
		    eigenvectors will be computed.
		b : (M, M) array_like, optional
		    A complex Hermitian or real symmetric definite positive matrix in.
		    If omitted, identity matrix is assumed.
		lower : bool, optional
		    Whether the pertinent array data is taken from the lower or upper
		    triangle of ``a`` and, if applicable, ``b``. (Default: lower)
		eigvals_only : bool, optional
		    Whether to calculate only eigenvalues and no eigenvectors.
		    (Default: both are calculated)
		subset_by_index : iterable, optional
		    If provided, this two-element iterable defines the start and the end
		    indices of the desired eigenvalues (ascending order and 0-indexed).
		    To return only the second smallest to fifth smallest eigenvalues,
		    ``[1, 4]`` is used. ``[n-3, n-1]`` returns the largest three. Only
		    available with "evr", "evx", and "gvx" drivers. The entries are
		    directly converted to integers via ``int()``.
		subset_by_value : iterable, optional
		    If provided, this two-element iterable defines the half-open interval
		    ``(a, b]`` that, if any, only the eigenvalues between these values
		    are returned. Only available with "evr", "evx", and "gvx" drivers. Use
		    ``np.inf`` for the unconstrained ends.
		driver: str, optional
		    Defines which LAPACK driver should be used. Valid options are "ev",
		    "evd", "evr", "evx" for standard problems and "gv", "gvd", "gvx" for
		    generalized (where b is not None) problems. See the Notes section.
		    The default for standard problems is "evr". For generalized problems,
		    "gvd" is used for full set, and "gvx" for subset requested cases.
		type : int, optional
		    For the generalized problems, this keyword specifies the problem type
		    to be solved for ``w`` and ``v`` (only takes 1, 2, 3 as possible
		    inputs)::
		
		        1 =>     a @ v = w @ b @ v
		        2 => a @ b @ v = w @ v
		        3 => b @ a @ v = w @ v
		
		    This keyword is ignored for standard problems.
		overwrite_a : bool, optional
		    Whether to overwrite data in ``a`` (may improve performance). Default
		    is False.
		overwrite_b : bool, optional
		    Whether to overwrite data in ``b`` (may improve performance). Default
		    is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		turbo : bool, optional
		    *Deprecated since v1.5.0, use ``driver=gvd`` keyword instead*.
		    Use divide and conquer algorithm (faster but expensive in memory, only
		    for generalized eigenvalue problem and if full set of eigenvalues are
		    requested.). Has no significant effect if eigenvectors are not
		    requested.
		eigvals : tuple (lo, hi), optional
		    *Deprecated since v1.5.0, use ``subset_by_index`` keyword instead*.
		    Indexes of the smallest and largest (in ascending order) eigenvalues
		    and corresponding eigenvectors to be returned: 0 <= lo <= hi <= M-1.
		    If omitted, all eigenvalues and eigenvectors are returned.
		
		Returns
		-------
		w : (N,) ndarray
		    The N (1<=N<=M) selected eigenvalues, in ascending order, each
		    repeated according to its multiplicity.
		v : (M, N) ndarray
		    (if ``eigvals_only == False``)
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge, an error occurred, or
		    b matrix is not definite positive. Note that if input matrices are
		    not symmetric or Hermitian, no error will be reported but results will
		    be wrong.
		
		See Also
		--------
		eigvalsh : eigenvalues of symmetric or Hermitian arrays
		eig : eigenvalues and right eigenvectors for non-symmetric arrays
		eigh_tridiagonal : eigenvalues and right eiegenvectors for
		    symmetric/Hermitian tridiagonal matrices
		
		Notes
		-----
		This function does not check the input array for being Hermitian/symmetric
		in order to allow for representing arrays with only their upper/lower
		triangular parts. Also, note that even though not taken into account,
		finiteness check applies to the whole array and unaffected by "lower"
		keyword.
		
		This function uses LAPACK drivers for computations in all possible keyword
		combinations, prefixed with ``sy`` if arrays are real and ``he`` if
		complex, e.g., a float array with "evr" driver is solved via
		"syevr", complex arrays with "gvx" driver problem is solved via "hegvx"
		etc.
		
		As a brief summary, the slowest and the most robust driver is the
		classical ``<sy/he>ev`` which uses symmetric QR. ``<sy/he>evr`` is seen as
		the optimal choice for the most general cases. However, there are certain
		occasions that ``<sy/he>evd`` computes faster at the expense of more
		memory usage. ``<sy/he>evx``, while still being faster than ``<sy/he>ev``,
		often performs worse than the rest except when very few eigenvalues are
		requested for large arrays though there is still no performance guarantee.
		
		
		For the generalized problem, normalization with respect to the given
		type argument::
		
		        type 1 and 3 :      v.conj().T @ a @ v = w
		        type 2       : inv(v).conj().T @ a @ inv(v) = w
		
		        type 1 or 2  :      v.conj().T @ b @ v  = I
		        type 3       : v.conj().T @ inv(b) @ v  = I
		
		
		Examples
		--------
		>>> from scipy.linalg import eigh
		>>> A = np.array([[6, 3, 1, 5], [3, 0, 5, 1], [1, 5, 6, 2], [5, 1, 2, 2]])
		>>> w, v = eigh(A)
		>>> np.allclose(A @ v - v @ np.diag(w), np.zeros((4, 4)))
		True
		
		Request only the eigenvalues
		
		>>> w = eigh(A, eigvals_only=True)
		
		Request eigenvalues that are less than 10.
		
		>>> A = np.array([[34, -4, -10, -7, 2],
		...               [-4, 7, 2, 12, 0],
		...               [-10, 2, 44, 2, -19],
		...               [-7, 12, 2, 79, -34],
		...               [2, 0, -19, -34, 29]])
		>>> eigh(A, eigvals_only=True, subset_by_value=[-np.inf, 10])
		array([6.69199443e-07, 9.11938152e+00])
		
		Request the largest second eigenvalue and its eigenvector
		
		>>> w, v = eigh(A, subset_by_index=[1, 1])
		>>> w
		array([9.11938152])
		>>> v.shape  # only a single column is returned
		(5, 1)
	**/
	static public function eigh(a:Dynamic, ?b:Dynamic, ?lower:Dynamic, ?eigvals_only:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?turbo:Dynamic, ?eigvals:Dynamic, ?type:Dynamic, ?check_finite:Dynamic, ?subset_by_index:Dynamic, ?subset_by_value:Dynamic, ?driver:Dynamic):Dynamic;
	/**
		Solve eigenvalue problem for a real symmetric tridiagonal matrix.
		
		Find eigenvalues `w` and optionally right eigenvectors `v` of ``a``::
		
		    a v[:,i] = w[i] v[:,i]
		    v.H v    = identity
		
		For a real symmetric matrix ``a`` with diagonal elements `d` and
		off-diagonal elements `e`.
		
		Parameters
		----------
		d : ndarray, shape (ndim,)
		    The diagonal elements of the array.
		e : ndarray, shape (ndim-1,)
		    The off-diagonal elements of the array.
		select : {'a', 'v', 'i'}, optional
		    Which eigenvalues to calculate
		
		    ======  ========================================
		    select  calculated
		    ======  ========================================
		    'a'     All eigenvalues
		    'v'     Eigenvalues in the interval (min, max]
		    'i'     Eigenvalues with indices min <= i <= max
		    ======  ========================================
		select_range : (min, max), optional
		    Range of selected eigenvalues
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		tol : float
		    The absolute tolerance to which each eigenvalue is required
		    (only used when 'stebz' is the `lapack_driver`).
		    An eigenvalue (or cluster) is considered to have converged if it
		    lies in an interval of this width. If <= 0. (default),
		    the value ``eps*|a|`` is used where eps is the machine precision,
		    and ``|a|`` is the 1-norm of the matrix ``a``.
		lapack_driver : str
		    LAPACK function to use, can be 'auto', 'stemr', 'stebz', 'sterf',
		    or 'stev'. When 'auto' (default), it will use 'stemr' if ``select='a'``
		    and 'stebz' otherwise. When 'stebz' is used to find the eigenvalues and
		    ``eigvals_only=False``, then a second LAPACK call (to ``?STEIN``) is
		    used to find the corresponding eigenvectors. 'sterf' can only be
		    used when ``eigvals_only=True`` and ``select='a'``. 'stev' can only
		    be used when ``select='a'``.
		
		Returns
		-------
		w : (M,) ndarray
		    The eigenvalues, in ascending order, each repeated according to its
		    multiplicity.
		v : (M, M) ndarray
		    The normalized eigenvector corresponding to the eigenvalue ``w[i]`` is
		    the column ``v[:,i]``.
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge.
		
		See Also
		--------
		eigvalsh_tridiagonal : eigenvalues of symmetric/Hermitian tridiagonal
		    matrices
		eig : eigenvalues and right eigenvectors for non-symmetric arrays
		eigh : eigenvalues and right eigenvectors for symmetric/Hermitian arrays
		eig_banded : eigenvalues and right eigenvectors for symmetric/Hermitian
		    band matrices
		
		Notes
		-----
		This function makes use of LAPACK ``S/DSTEMR`` routines.
		
		Examples
		--------
		>>> from scipy.linalg import eigh_tridiagonal
		>>> d = 3*np.ones(4)
		>>> e = -1*np.ones(3)
		>>> w, v = eigh_tridiagonal(d, e)
		>>> A = np.diag(d) + np.diag(e, k=1) + np.diag(e, k=-1)
		>>> np.allclose(A @ v - v @ np.diag(w), np.zeros((4, 4)))
		True
	**/
	static public function eigh_tridiagonal(d:Dynamic, e:Dynamic, ?eigvals_only:Dynamic, ?select:Dynamic, ?select_range:Dynamic, ?check_finite:Dynamic, ?tol:Dynamic, ?lapack_driver:Dynamic):Dynamic;
	/**
		Compute eigenvalues from an ordinary or generalized eigenvalue problem.
		
		Find eigenvalues of a general matrix::
		
		    a   vr[:,i] = w[i]        b   vr[:,i]
		
		Parameters
		----------
		a : (M, M) array_like
		    A complex or real matrix whose eigenvalues and eigenvectors
		    will be computed.
		b : (M, M) array_like, optional
		    Right-hand side matrix in a generalized eigenvalue problem.
		    If omitted, identity matrix is assumed.
		overwrite_a : bool, optional
		    Whether to overwrite data in a (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities
		    or NaNs.
		homogeneous_eigvals : bool, optional
		    If True, return the eigenvalues in homogeneous coordinates.
		    In this case ``w`` is a (2, M) array so that::
		
		        w[1,i] a vr[:,i] = w[0,i] b vr[:,i]
		
		    Default is False.
		
		Returns
		-------
		w : (M,) or (2, M) double or complex ndarray
		    The eigenvalues, each repeated according to its multiplicity
		    but not in any specific order. The shape is (M,) unless
		    ``homogeneous_eigvals=True``.
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge
		
		See Also
		--------
		eig : eigenvalues and right eigenvectors of general arrays.
		eigvalsh : eigenvalues of symmetric or Hermitian arrays
		eigvals_banded : eigenvalues for symmetric/Hermitian band matrices
		eigvalsh_tridiagonal : eigenvalues of symmetric/Hermitian tridiagonal
		    matrices
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[0., -1.], [1., 0.]])
		>>> linalg.eigvals(a)
		array([0.+1.j, 0.-1.j])
		
		>>> b = np.array([[0., 1.], [1., 1.]])
		>>> linalg.eigvals(a, b)
		array([ 1.+0.j, -1.+0.j])
		
		>>> a = np.array([[3., 0., 0.], [0., 8., 0.], [0., 0., 7.]])
		>>> linalg.eigvals(a, homogeneous_eigvals=True)
		array([[3.+0.j, 8.+0.j, 7.+0.j],
		       [1.+0.j, 1.+0.j, 1.+0.j]])
	**/
	static public function eigvals(a:Dynamic, ?b:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic, ?homogeneous_eigvals:Dynamic):Dynamic;
	/**
		Solve real symmetric or complex Hermitian band matrix eigenvalue problem.
		
		Find eigenvalues w of a::
		
		    a v[:,i] = w[i] v[:,i]
		    v.H v    = identity
		
		The matrix a is stored in a_band either in lower diagonal or upper
		diagonal ordered form:
		
		    a_band[u + i - j, j] == a[i,j]        (if upper form; i <= j)
		    a_band[    i - j, j] == a[i,j]        (if lower form; i >= j)
		
		where u is the number of bands above the diagonal.
		
		Example of a_band (shape of a is (6,6), u=2)::
		
		    upper form:
		    *   *   a02 a13 a24 a35
		    *   a01 a12 a23 a34 a45
		    a00 a11 a22 a33 a44 a55
		
		    lower form:
		    a00 a11 a22 a33 a44 a55
		    a10 a21 a32 a43 a54 *
		    a20 a31 a42 a53 *   *
		
		Cells marked with * are not used.
		
		Parameters
		----------
		a_band : (u+1, M) array_like
		    The bands of the M by M matrix a.
		lower : bool, optional
		    Is the matrix in the lower form. (Default is upper form)
		overwrite_a_band : bool, optional
		    Discard data in a_band (may enhance performance)
		select : {'a', 'v', 'i'}, optional
		    Which eigenvalues to calculate
		
		    ======  ========================================
		    select  calculated
		    ======  ========================================
		    'a'     All eigenvalues
		    'v'     Eigenvalues in the interval (min, max]
		    'i'     Eigenvalues with indices min <= i <= max
		    ======  ========================================
		select_range : (min, max), optional
		    Range of selected eigenvalues
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		w : (M,) ndarray
		    The eigenvalues, in ascending order, each repeated according to its
		    multiplicity.
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge.
		
		See Also
		--------
		eig_banded : eigenvalues and right eigenvectors for symmetric/Hermitian
		    band matrices
		eigvalsh_tridiagonal : eigenvalues of symmetric/Hermitian tridiagonal
		    matrices
		eigvals : eigenvalues of general arrays
		eigh : eigenvalues and right eigenvectors for symmetric/Hermitian arrays
		eig : eigenvalues and right eigenvectors for non-symmetric arrays
		
		Examples
		--------
		>>> from scipy.linalg import eigvals_banded
		>>> A = np.array([[1, 5, 2, 0], [5, 2, 5, 2], [2, 5, 3, 5], [0, 2, 5, 4]])
		>>> Ab = np.array([[1, 2, 3, 4], [5, 5, 5, 0], [2, 2, 0, 0]])
		>>> w = eigvals_banded(Ab, lower=True)
		>>> w
		array([-4.26200532, -2.22987175,  3.95222349, 12.53965359])
	**/
	static public function eigvals_banded(a_band:Dynamic, ?lower:Dynamic, ?overwrite_a_band:Dynamic, ?select:Dynamic, ?select_range:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solves a standard or generalized eigenvalue problem for a complex
		Hermitian or real symmetric matrix.
		
		Find eigenvalues array ``w`` of array ``a``, where ``b`` is positive
		definite such that for every eigenvalue λ (i-th entry of w) and its
		eigenvector vi (i-th column of v) satisfies::
		
		                  a @ vi = λ * b @ vi
		    vi.conj().T @ a @ vi = λ
		    vi.conj().T @ b @ vi = 1
		
		In the standard problem, b is assumed to be the identity matrix.
		
		Parameters
		----------
		a : (M, M) array_like
		    A complex Hermitian or real symmetric matrix whose eigenvalues will
		    be computed.
		b : (M, M) array_like, optional
		    A complex Hermitian or real symmetric definite positive matrix in.
		    If omitted, identity matrix is assumed.
		lower : bool, optional
		    Whether the pertinent array data is taken from the lower or upper
		    triangle of ``a`` and, if applicable, ``b``. (Default: lower)
		overwrite_a : bool, optional
		    Whether to overwrite data in ``a`` (may improve performance). Default
		    is False.
		overwrite_b : bool, optional
		    Whether to overwrite data in ``b`` (may improve performance). Default
		    is False.
		type : int, optional
		    For the generalized problems, this keyword specifies the problem type
		    to be solved for ``w`` and ``v`` (only takes 1, 2, 3 as possible
		    inputs)::
		
		        1 =>     a @ v = w @ b @ v
		        2 => a @ b @ v = w @ v
		        3 => b @ a @ v = w @ v
		
		    This keyword is ignored for standard problems.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		subset_by_index : iterable, optional
		    If provided, this two-element iterable defines the start and the end
		    indices of the desired eigenvalues (ascending order and 0-indexed).
		    To return only the second smallest to fifth smallest eigenvalues,
		    ``[1, 4]`` is used. ``[n-3, n-1]`` returns the largest three. Only
		    available with "evr", "evx", and "gvx" drivers. The entries are
		    directly converted to integers via ``int()``.
		subset_by_value : iterable, optional
		    If provided, this two-element iterable defines the half-open interval
		    ``(a, b]`` that, if any, only the eigenvalues between these values
		    are returned. Only available with "evr", "evx", and "gvx" drivers. Use
		    ``np.inf`` for the unconstrained ends.
		driver: str, optional
		    Defines which LAPACK driver should be used. Valid options are "ev",
		    "evd", "evr", "evx" for standard problems and "gv", "gvd", "gvx" for
		    generalized (where b is not None) problems. See the Notes section of
		    `scipy.linalg.eigh`.
		turbo : bool, optional
		    *Deprecated by ``driver=gvd`` option*. Has no significant effect for
		    eigenvalue computations since no eigenvectors are requested.
		
		    .. deprecated:: 1.5.0
		
		eigvals : tuple (lo, hi), optional
		    *Deprecated by ``subset_by_index`` keyword*. Indexes of the smallest
		    and largest (in ascending order) eigenvalues and corresponding
		    eigenvectors to be returned: 0 <= lo <= hi <= M-1. If omitted, all
		    eigenvalues and eigenvectors are returned.
		
		    .. deprecated:: 1.5.0
		
		Returns
		-------
		w : (N,) ndarray
		    The ``N`` (``1<=N<=M``) selected eigenvalues, in ascending order, each
		    repeated according to its multiplicity.
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge, an error occurred, or
		    b matrix is not definite positive. Note that if input matrices are
		    not symmetric or Hermitian, no error will be reported but results will
		    be wrong.
		
		See Also
		--------
		eigh : eigenvalues and right eigenvectors for symmetric/Hermitian arrays
		eigvals : eigenvalues of general arrays
		eigvals_banded : eigenvalues for symmetric/Hermitian band matrices
		eigvalsh_tridiagonal : eigenvalues of symmetric/Hermitian tridiagonal
		    matrices
		
		Notes
		-----
		This function does not check the input array for being Hermitian/symmetric
		in order to allow for representing arrays with only their upper/lower
		triangular parts.
		
		This function serves as a one-liner shorthand for `scipy.linalg.eigh` with
		the option ``eigvals_only=True`` to get the eigenvalues and not the
		eigenvectors. Here it is kept as a legacy convenience. It might be
		beneficial to use the main function to have full control and to be a bit
		more pythonic.
		
		Examples
		--------
		For more examples see `scipy.linalg.eigh`.
		
		>>> from scipy.linalg import eigvalsh
		>>> A = np.array([[6, 3, 1, 5], [3, 0, 5, 1], [1, 5, 6, 2], [5, 1, 2, 2]])
		>>> w = eigvalsh(A)
		>>> w
		array([-3.74637491, -0.76263923,  6.08502336, 12.42399079])
	**/
	static public function eigvalsh(a:Dynamic, ?b:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?turbo:Dynamic, ?eigvals:Dynamic, ?type:Dynamic, ?check_finite:Dynamic, ?subset_by_index:Dynamic, ?subset_by_value:Dynamic, ?driver:Dynamic):Dynamic;
	/**
		Solve eigenvalue problem for a real symmetric tridiagonal matrix.
		
		Find eigenvalues `w` of ``a``::
		
		    a v[:,i] = w[i] v[:,i]
		    v.H v    = identity
		
		For a real symmetric matrix ``a`` with diagonal elements `d` and
		off-diagonal elements `e`.
		
		Parameters
		----------
		d : ndarray, shape (ndim,)
		    The diagonal elements of the array.
		e : ndarray, shape (ndim-1,)
		    The off-diagonal elements of the array.
		select : {'a', 'v', 'i'}, optional
		    Which eigenvalues to calculate
		
		    ======  ========================================
		    select  calculated
		    ======  ========================================
		    'a'     All eigenvalues
		    'v'     Eigenvalues in the interval (min, max]
		    'i'     Eigenvalues with indices min <= i <= max
		    ======  ========================================
		select_range : (min, max), optional
		    Range of selected eigenvalues
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		tol : float
		    The absolute tolerance to which each eigenvalue is required
		    (only used when ``lapack_driver='stebz'``).
		    An eigenvalue (or cluster) is considered to have converged if it
		    lies in an interval of this width. If <= 0. (default),
		    the value ``eps*|a|`` is used where eps is the machine precision,
		    and ``|a|`` is the 1-norm of the matrix ``a``.
		lapack_driver : str
		    LAPACK function to use, can be 'auto', 'stemr', 'stebz',  'sterf',
		    or 'stev'. When 'auto' (default), it will use 'stemr' if ``select='a'``
		    and 'stebz' otherwise. 'sterf' and 'stev' can only be used when
		    ``select='a'``.
		
		Returns
		-------
		w : (M,) ndarray
		    The eigenvalues, in ascending order, each repeated according to its
		    multiplicity.
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge.
		
		See Also
		--------
		eigh_tridiagonal : eigenvalues and right eiegenvectors for
		    symmetric/Hermitian tridiagonal matrices
		
		Examples
		--------
		>>> from scipy.linalg import eigvalsh_tridiagonal, eigvalsh
		>>> d = 3*np.ones(4)
		>>> e = -1*np.ones(3)
		>>> w = eigvalsh_tridiagonal(d, e)
		>>> A = np.diag(d) + np.diag(e, k=1) + np.diag(e, k=-1)
		>>> w2 = eigvalsh(A)  # Verify with other eigenvalue routines
		>>> np.allclose(w - w2, np.zeros(4))
		True
	**/
	static public function eigvalsh_tridiagonal(d:Dynamic, e:Dynamic, ?select:Dynamic, ?select_range:Dynamic, ?check_finite:Dynamic, ?tol:Dynamic, ?lapack_driver:Dynamic):Dynamic;
	/**
		einsum(subscripts, *operands, out=None, dtype=None, order='K',
		       casting='safe', optimize=False)
		
		Evaluates the Einstein summation convention on the operands.
		
		Using the Einstein summation convention, many common multi-dimensional,
		linear algebraic array operations can be represented in a simple fashion.
		In *implicit* mode `einsum` computes these values.
		
		In *explicit* mode, `einsum` provides further flexibility to compute
		other array operations that might not be considered classical Einstein
		summation operations, by disabling, or forcing summation over specified
		subscript labels.
		
		See the notes and examples for clarification.
		
		Parameters
		----------
		subscripts : str
		    Specifies the subscripts for summation as comma separated list of
		    subscript labels. An implicit (classical Einstein summation)
		    calculation is performed unless the explicit indicator '->' is
		    included as well as subscript labels of the precise output form.
		operands : list of array_like
		    These are the arrays for the operation.
		out : ndarray, optional
		    If provided, the calculation is done into this array.
		dtype : {data-type, None}, optional
		    If provided, forces the calculation to use the data type specified.
		    Note that you may have to also give a more liberal `casting`
		    parameter to allow the conversions. Default is None.
		order : {'C', 'F', 'A', 'K'}, optional
		    Controls the memory layout of the output. 'C' means it should
		    be C contiguous. 'F' means it should be Fortran contiguous,
		    'A' means it should be 'F' if the inputs are all 'F', 'C' otherwise.
		    'K' means it should be as close to the layout as the inputs as
		    is possible, including arbitrarily permuted axes.
		    Default is 'K'.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur.  Setting this to
		    'unsafe' is not recommended, as it can adversely affect accumulations.
		
		      * 'no' means the data types should not be cast at all.
		      * 'equiv' means only byte-order changes are allowed.
		      * 'safe' means only casts which can preserve values are allowed.
		      * 'same_kind' means only safe casts or casts within a kind,
		        like float64 to float32, are allowed.
		      * 'unsafe' means any data conversions may be done.
		
		    Default is 'safe'.
		optimize : {False, True, 'greedy', 'optimal'}, optional
		    Controls if intermediate optimization should occur. No optimization
		    will occur if False and True will default to the 'greedy' algorithm.
		    Also accepts an explicit contraction list from the ``np.einsum_path``
		    function. See ``np.einsum_path`` for more details. Defaults to False.
		
		Returns
		-------
		output : ndarray
		    The calculation based on the Einstein summation convention.
		
		See Also
		--------
		einsum_path, dot, inner, outer, tensordot, linalg.multi_dot
		einops :
		    similar verbose interface is provided by
		    `einops <https://github.com/arogozhnikov/einops>`_ package to cover
		    additional operations: transpose, reshape/flatten, repeat/tile,
		    squeeze/unsqueeze and reductions.
		opt_einsum :
		    `opt_einsum <https://optimized-einsum.readthedocs.io/en/stable/>`_
		    optimizes contraction order for einsum-like expressions
		    in backend-agnostic manner.
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		The Einstein summation convention can be used to compute
		many multi-dimensional, linear algebraic array operations. `einsum`
		provides a succinct way of representing these.
		
		A non-exhaustive list of these operations,
		which can be computed by `einsum`, is shown below along with examples:
		
		* Trace of an array, :py:func:`numpy.trace`.
		* Return a diagonal, :py:func:`numpy.diag`.
		* Array axis summations, :py:func:`numpy.sum`.
		* Transpositions and permutations, :py:func:`numpy.transpose`.
		* Matrix multiplication and dot product, :py:func:`numpy.matmul` :py:func:`numpy.dot`.
		* Vector inner and outer products, :py:func:`numpy.inner` :py:func:`numpy.outer`.
		* Broadcasting, element-wise and scalar multiplication, :py:func:`numpy.multiply`.
		* Tensor contractions, :py:func:`numpy.tensordot`.
		* Chained array operations, in efficient calculation order, :py:func:`numpy.einsum_path`.
		
		The subscripts string is a comma-separated list of subscript labels,
		where each label refers to a dimension of the corresponding operand.
		Whenever a label is repeated it is summed, so ``np.einsum('i,i', a, b)``
		is equivalent to :py:func:`np.inner(a,b) <numpy.inner>`. If a label
		appears only once, it is not summed, so ``np.einsum('i', a)`` produces a
		view of ``a`` with no changes. A further example ``np.einsum('ij,jk', a, b)``
		describes traditional matrix multiplication and is equivalent to
		:py:func:`np.matmul(a,b) <numpy.matmul>`. Repeated subscript labels in one
		operand take the diagonal. For example, ``np.einsum('ii', a)`` is equivalent
		to :py:func:`np.trace(a) <numpy.trace>`.
		
		In *implicit mode*, the chosen subscripts are important
		since the axes of the output are reordered alphabetically.  This
		means that ``np.einsum('ij', a)`` doesn't affect a 2D array, while
		``np.einsum('ji', a)`` takes its transpose. Additionally,
		``np.einsum('ij,jk', a, b)`` returns a matrix multiplication, while,
		``np.einsum('ij,jh', a, b)`` returns the transpose of the
		multiplication since subscript 'h' precedes subscript 'i'.
		
		In *explicit mode* the output can be directly controlled by
		specifying output subscript labels.  This requires the
		identifier '->' as well as the list of output subscript labels.
		This feature increases the flexibility of the function since
		summing can be disabled or forced when required. The call
		``np.einsum('i->', a)`` is like :py:func:`np.sum(a, axis=-1) <numpy.sum>`,
		and ``np.einsum('ii->i', a)`` is like :py:func:`np.diag(a) <numpy.diag>`.
		The difference is that `einsum` does not allow broadcasting by default.
		Additionally ``np.einsum('ij,jh->ih', a, b)`` directly specifies the
		order of the output subscript labels and therefore returns matrix
		multiplication, unlike the example above in implicit mode.
		
		To enable and control broadcasting, use an ellipsis.  Default
		NumPy-style broadcasting is done by adding an ellipsis
		to the left of each term, like ``np.einsum('...ii->...i', a)``.
		To take the trace along the first and last axes,
		you can do ``np.einsum('i...i', a)``, or to do a matrix-matrix
		product with the left-most indices instead of rightmost, one can do
		``np.einsum('ij...,jk...->ik...', a, b)``.
		
		When there is only one operand, no axes are summed, and no output
		parameter is provided, a view into the operand is returned instead
		of a new array.  Thus, taking the diagonal as ``np.einsum('ii->i', a)``
		produces a view (changed in version 1.10.0).
		
		`einsum` also provides an alternative way to provide the subscripts
		and operands as ``einsum(op0, sublist0, op1, sublist1, ..., [sublistout])``.
		If the output shape is not provided in this format `einsum` will be
		calculated in implicit mode, otherwise it will be performed explicitly.
		The examples below have corresponding `einsum` calls with the two
		parameter methods.
		
		.. versionadded:: 1.10.0
		
		Views returned from einsum are now writeable whenever the input array
		is writeable. For example, ``np.einsum('ijk...->kji...', a)`` will now
		have the same effect as :py:func:`np.swapaxes(a, 0, 2) <numpy.swapaxes>`
		and ``np.einsum('ii->i', a)`` will return a writeable view of the diagonal
		of a 2D array.
		
		.. versionadded:: 1.12.0
		
		Added the ``optimize`` argument which will optimize the contraction order
		of an einsum expression. For a contraction with three or more operands this
		can greatly increase the computational efficiency at the cost of a larger
		memory footprint during computation.
		
		Typically a 'greedy' algorithm is applied which empirical tests have shown
		returns the optimal path in the majority of cases. In some cases 'optimal'
		will return the superlative path through a more expensive, exhaustive search.
		For iterative calculations it may be advisable to calculate the optimal path
		once and reuse that path by supplying it as an argument. An example is given
		below.
		
		See :py:func:`numpy.einsum_path` for more details.
		
		Examples
		--------
		>>> a = np.arange(25).reshape(5,5)
		>>> b = np.arange(5)
		>>> c = np.arange(6).reshape(2,3)
		
		Trace of a matrix:
		
		>>> np.einsum('ii', a)
		60
		>>> np.einsum(a, [0,0])
		60
		>>> np.trace(a)
		60
		
		Extract the diagonal (requires explicit form):
		
		>>> np.einsum('ii->i', a)
		array([ 0,  6, 12, 18, 24])
		>>> np.einsum(a, [0,0], [0])
		array([ 0,  6, 12, 18, 24])
		>>> np.diag(a)
		array([ 0,  6, 12, 18, 24])
		
		Sum over an axis (requires explicit form):
		
		>>> np.einsum('ij->i', a)
		array([ 10,  35,  60,  85, 110])
		>>> np.einsum(a, [0,1], [0])
		array([ 10,  35,  60,  85, 110])
		>>> np.sum(a, axis=1)
		array([ 10,  35,  60,  85, 110])
		
		For higher dimensional arrays summing a single axis can be done with ellipsis:
		
		>>> np.einsum('...j->...', a)
		array([ 10,  35,  60,  85, 110])
		>>> np.einsum(a, [Ellipsis,1], [Ellipsis])
		array([ 10,  35,  60,  85, 110])
		
		Compute a matrix transpose, or reorder any number of axes:
		
		>>> np.einsum('ji', c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.einsum('ij->ji', c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.einsum(c, [1,0])
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.transpose(c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		
		Vector inner products:
		
		>>> np.einsum('i,i', b, b)
		30
		>>> np.einsum(b, [0], b, [0])
		30
		>>> np.inner(b,b)
		30
		
		Matrix vector multiplication:
		
		>>> np.einsum('ij,j', a, b)
		array([ 30,  80, 130, 180, 230])
		>>> np.einsum(a, [0,1], b, [1])
		array([ 30,  80, 130, 180, 230])
		>>> np.dot(a, b)
		array([ 30,  80, 130, 180, 230])
		>>> np.einsum('...j,j', a, b)
		array([ 30,  80, 130, 180, 230])
		
		Broadcasting and scalar multiplication:
		
		>>> np.einsum('..., ...', 3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.einsum(',ij', 3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.einsum(3, [Ellipsis], c, [Ellipsis])
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.multiply(3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		
		Vector outer product:
		
		>>> np.einsum('i,j', np.arange(2)+1, b)
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		>>> np.einsum(np.arange(2)+1, [0], b, [1])
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		>>> np.outer(np.arange(2)+1, b)
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		
		Tensor contraction:
		
		>>> a = np.arange(60.).reshape(3,4,5)
		>>> b = np.arange(24.).reshape(4,3,2)
		>>> np.einsum('ijk,jil->kl', a, b)
		array([[4400., 4730.],
		       [4532., 4874.],
		       [4664., 5018.],
		       [4796., 5162.],
		       [4928., 5306.]])
		>>> np.einsum(a, [0,1,2], b, [1,0,3], [2,3])
		array([[4400., 4730.],
		       [4532., 4874.],
		       [4664., 5018.],
		       [4796., 5162.],
		       [4928., 5306.]])
		>>> np.tensordot(a,b, axes=([1,0],[0,1]))
		array([[4400., 4730.],
		       [4532., 4874.],
		       [4664., 5018.],
		       [4796., 5162.],
		       [4928., 5306.]])
		
		Writeable returned arrays (since version 1.10.0):
		
		>>> a = np.zeros((3, 3))
		>>> np.einsum('ii->i', a)[:] = 1
		>>> a
		array([[1., 0., 0.],
		       [0., 1., 0.],
		       [0., 0., 1.]])
		
		Example of ellipsis use:
		
		>>> a = np.arange(6).reshape((3,2))
		>>> b = np.arange(12).reshape((4,3))
		>>> np.einsum('ki,jk->ij', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		>>> np.einsum('ki,...k->i...', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		>>> np.einsum('k...,jk', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		
		Chained array operations. For more complicated contractions, speed ups
		might be achieved by repeatedly computing a 'greedy' path or pre-computing the
		'optimal' path and repeatedly applying it, using an
		`einsum_path` insertion (since version 1.12.0). Performance improvements can be
		particularly significant with larger arrays:
		
		>>> a = np.ones(64).reshape(2,4,8)
		
		Basic `einsum`: ~1520ms  (benchmarked on 3.1GHz Intel i5.)
		
		>>> for iteration in range(500):
		...     _ = np.einsum('ijk,ilm,njm,nlk,abc->',a,a,a,a,a)
		
		Sub-optimal `einsum` (due to repeated path calculation time): ~330ms
		
		>>> for iteration in range(500):
		...     _ = np.einsum('ijk,ilm,njm,nlk,abc->',a,a,a,a,a, optimize='optimal')
		
		Greedy `einsum` (faster optimal path approximation): ~160ms
		
		>>> for iteration in range(500):
		...     _ = np.einsum('ijk,ilm,njm,nlk,abc->',a,a,a,a,a, optimize='greedy')
		
		Optimal `einsum` (best usage pattern in some use cases): ~110ms
		
		>>> path = np.einsum_path('ijk,ilm,njm,nlk,abc->',a,a,a,a,a, optimize='optimal')[0]
		>>> for iteration in range(500):
		...     _ = np.einsum('ijk,ilm,njm,nlk,abc->',a,a,a,a,a, optimize=path)
	**/
	static public function einsum(?operands:python.VarArgs<Dynamic>, ?out:Dynamic, ?optimize:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a 2-D array with ones on the diagonal and zeros elsewhere.
		
		Parameters
		----------
		N : int
		  Number of rows in the output.
		M : int, optional
		  Number of columns in the output. If None, defaults to `N`.
		k : int, optional
		  Index of the diagonal: 0 (the default) refers to the main diagonal,
		  a positive value refers to an upper diagonal, and a negative value
		  to a lower diagonal.
		dtype : data-type, optional
		  Data-type of the returned array.
		order : {'C', 'F'}, optional
		    Whether the output should be stored in row-major (C-style) or
		    column-major (Fortran-style) order in memory.
		
		    .. versionadded:: 1.14.0
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		I : ndarray of shape (N,M)
		  An array where all elements are equal to zero, except for the `k`-th
		  diagonal, whose values are equal to one.
		
		See Also
		--------
		identity : (almost) equivalent function
		diag : diagonal 2-D array from a 1-D array specified by the user.
		
		Examples
		--------
		>>> np.eye(2, dtype=int)
		array([[1, 0],
		       [0, 1]])
		>>> np.eye(3, k=1)
		array([[0.,  1.,  0.],
		       [0.,  0.,  1.],
		       [0.,  0.,  0.]])
	**/
	static public function eye(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?like:Dynamic):Dynamic;
	/**
		Return indices that are non-zero in the flattened version of a.
		
		This is equivalent to np.nonzero(np.ravel(a))[0].
		
		Parameters
		----------
		a : array_like
		    Input data.
		
		Returns
		-------
		res : ndarray
		    Output array, containing the indices of the elements of `a.ravel()`
		    that are non-zero.
		
		See Also
		--------
		nonzero : Return the indices of the non-zero elements of the input array.
		ravel : Return a 1-D array containing the elements of the input array.
		
		Examples
		--------
		>>> x = np.arange(-2, 3)
		>>> x
		array([-2, -1,  0,  1,  2])
		>>> np.flatnonzero(x)
		array([0, 1, 3, 4])
		
		Use the indices of the non-zero elements as an index array to extract
		these elements:
		
		>>> x.ravel()[np.flatnonzero(x)]
		array([-2, -1,  1,  2])
	**/
	static public function flatnonzero(a:Dynamic):Dynamic;
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
		
		ilp64 : {True, False, 'preferred'}, optional
		    Whether to return ILP64 routine variant.
		    Choosing 'preferred' returns ILP64 routine if available, and
		    otherwise the 32-bit routine. Default: False
		
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
		matrix. These can be one of {'s', 'd', 'c', 'z'} for the NumPy
		types {float32, float64, complex64, complex128} respectively, and
		are stored in attribute ``typecode`` of the returned functions.
		
		Examples
		--------
		Suppose we would like to use '?lange' routine which computes the selected
		norm of an array. We pass our array in order to get the correct 'lange'
		flavor.
		
		>>> import scipy.linalg as LA
		>>> rng = np.random.default_rng()
		>>> a = rng.random((3,2))
		>>> x_lange = LA.get_lapack_funcs('lange', (a,))
		>>> x_lange.typecode
		'd'
		>>> x_lange = LA.get_lapack_funcs('lange',(a*1j,))
		>>> x_lange.typecode
		'z'
		
		Several LAPACK routines work best when its internal WORK array has
		the optimal size (big enough for fast computation and small enough to
		avoid waste of memory). This size is determined also by a dedicated query
		to the function which is often wrapped as a standalone function and
		commonly denoted as ``###_lwork``. Below is an example for ``?sysv``
		
		>>> import scipy.linalg as LA
		>>> rng = np.random.default_rng()
		>>> a = rng.random((1000, 1000))
		>>> b = rng.random((1000, 1)) * 1j
		>>> # We pick up zsysv and zsysv_lwork due to b array
		... xsysv, xlwork = LA.get_lapack_funcs(('sysv', 'sysv_lwork'), (a, b))
		>>> opt_lwork, _ = xlwork(a.shape[0])  # returns a complex for 'z' prefix
		>>> udut, ipiv, x, info = xsysv(a, b, lwork=int(opt_lwork.real))
	**/
	static public function get_lapack_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic, ?ilp64:Dynamic):Array<Dynamic>;
	/**
		Compute Hessenberg form of a matrix.
		
		The Hessenberg decomposition is::
		
		    A = Q H Q^H
		
		where `Q` is unitary/orthogonal and `H` has only zero elements below
		the first sub-diagonal.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to bring into Hessenberg form.
		calc_q : bool, optional
		    Whether to compute the transformation matrix.  Default is False.
		overwrite_a : bool, optional
		    Whether to overwrite `a`; may improve performance.
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		H : (M, M) ndarray
		    Hessenberg form of `a`.
		Q : (M, M) ndarray
		    Unitary/orthogonal similarity transformation matrix ``A = Q H Q^H``.
		    Only returned if ``calc_q=True``.
		
		Examples
		--------
		>>> from scipy.linalg import hessenberg
		>>> A = np.array([[2, 5, 8, 7], [5, 2, 2, 8], [7, 5, 6, 6], [5, 4, 4, 8]])
		>>> H, Q = hessenberg(A, calc_q=True)
		>>> H
		array([[  2.        , -11.65843866,   1.42005301,   0.25349066],
		       [ -9.94987437,  14.53535354,  -5.31022304,   2.43081618],
		       [  0.        ,  -1.83299243,   0.38969961,  -0.51527034],
		       [  0.        ,   0.        ,  -3.83189513,   1.07494686]])
		>>> np.allclose(Q @ H @ Q.conj().T - A, np.zeros((4, 4)))
		True
	**/
	static public function hessenberg(a:Dynamic, ?calc_q:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public var inf : Dynamic;
	/**
		Returns a bool array, where True if input element is complex.
		
		What is tested is whether the input has a non-zero imaginary part, not if
		the input type is complex.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray of bools
		    Output array.
		
		See Also
		--------
		isreal
		iscomplexobj : Return True if x is a complex type or an array of complex
		               numbers.
		
		Examples
		--------
		>>> np.iscomplex([1+1j, 1+0j, 4.5, 3, 2, 2j])
		array([ True, False, False, False, False,  True])
	**/
	static public function iscomplex(x:Dynamic):Dynamic;
	/**
		Check for a complex type or an array of complex numbers.
		
		The type of the input is checked, not the value. Even if the input
		has an imaginary part equal to zero, `iscomplexobj` evaluates to True.
		
		Parameters
		----------
		x : any
		    The input can be of any type and shape.
		
		Returns
		-------
		iscomplexobj : bool
		    The return value, True if `x` is of a complex type or has at least
		    one complex element.
		
		See Also
		--------
		isrealobj, iscomplex
		
		Examples
		--------
		>>> np.iscomplexobj(1)
		False
		>>> np.iscomplexobj(1+0j)
		True
		>>> np.iscomplexobj([3, 1+0j, True])
		True
	**/
	static public function iscomplexobj(x:Dynamic):Bool;
	/**
		isfinite(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for finiteness (not infinity and not Not a Number).
		
		The result is returned as a boolean array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray, bool
		    True where ``x`` is not positive infinity, negative infinity,
		    or NaN; false otherwise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		isinf, isneginf, isposinf, isnan
		
		Notes
		-----
		Not a Number, positive infinity and negative infinity are considered
		to be non-finite.
		
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		Also that positive infinity is not equivalent to negative infinity. But
		infinity is equivalent to positive infinity.  Errors result if the
		second argument is also supplied when `x` is a scalar input, or if
		first and second arguments have different shapes.
		
		Examples
		--------
		>>> np.isfinite(1)
		True
		>>> np.isfinite(0)
		True
		>>> np.isfinite(np.nan)
		False
		>>> np.isfinite(np.inf)
		False
		>>> np.isfinite(np.NINF)
		False
		>>> np.isfinite([np.log(-1.),1.,np.log(0)])
		array([False,  True, False])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isfinite(x, y)
		array([0, 1, 0])
		>>> y
		array([0, 1, 0])
	**/
	static public function isfinite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the indices of the elements that are non-zero.
		
		Returns a tuple of arrays, one for each dimension of `a`,
		containing the indices of the non-zero elements in that
		dimension. The values in `a` are always tested and returned in
		row-major, C-style order.
		
		To group the indices by element, rather than dimension, use `argwhere`,
		which returns a row for each non-zero element.
		
		.. note::
		
		   When called on a zero-d array or scalar, ``nonzero(a)`` is treated
		   as ``nonzero(atleast_1d(a))``.
		
		   .. deprecated:: 1.17.0
		
		      Use `atleast_1d` explicitly if this behavior is deliberate.
		
		Parameters
		----------
		a : array_like
		    Input array.
		
		Returns
		-------
		tuple_of_arrays : tuple
		    Indices of elements that are non-zero.
		
		See Also
		--------
		flatnonzero :
		    Return indices that are non-zero in the flattened version of the input
		    array.
		ndarray.nonzero :
		    Equivalent ndarray method.
		count_nonzero :
		    Counts the number of non-zero elements in the input array.
		
		Notes
		-----
		While the nonzero values can be obtained with ``a[nonzero(a)]``, it is
		recommended to use ``x[x.astype(bool)]`` or ``x[x != 0]`` instead, which
		will correctly handle 0-d arrays.
		
		Examples
		--------
		>>> x = np.array([[3, 0, 0], [0, 4, 0], [5, 6, 0]])
		>>> x
		array([[3, 0, 0],
		       [0, 4, 0],
		       [5, 6, 0]])
		>>> np.nonzero(x)
		(array([0, 1, 2, 2]), array([0, 1, 0, 1]))
		
		>>> x[np.nonzero(x)]
		array([3, 4, 5, 6])
		>>> np.transpose(np.nonzero(x))
		array([[0, 0],
		       [1, 1],
		       [2, 0],
		       [2, 1]])
		
		A common use for ``nonzero`` is to find the indices of an array, where
		a condition is True.  Given an array `a`, the condition `a` > 3 is a
		boolean array and since False is interpreted as 0, np.nonzero(a > 3)
		yields the indices of the `a` where the condition is true.
		
		>>> a = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
		>>> a > 3
		array([[False, False, False],
		       [ True,  True,  True],
		       [ True,  True,  True]])
		>>> np.nonzero(a > 3)
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
		
		Using this result to index `a` is equivalent to using the mask directly:
		
		>>> a[np.nonzero(a > 3)]
		array([4, 5, 6, 7, 8, 9])
		>>> a[a > 3]  # prefer this spelling
		array([4, 5, 6, 7, 8, 9])
		
		``nonzero`` can also be called as a method of the array.
		
		>>> (a > 3).nonzero()
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
	**/
	static public function nonzero(a:Dynamic):python.Tuple<Dynamic>;
	/**
		Matrix or vector norm.
		
		This function is able to return one of eight different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter. For tensors with rank different from
		1 or 2, only `ord=None` is supported.
		
		Parameters
		----------
		a : array_like
		    Input array. If `axis` is None, `a` must be 1-D or 2-D, unless `ord`
		    is None. If both `axis` and `ord` are None, the 2-norm of
		    ``a.ravel`` will be returned.
		ord : {int, inf, -inf, 'fro', 'nuc', None}, optional
		    Order of the norm (see table under ``Notes``). inf means NumPy's
		    `inf` object.
		axis : {int, 2-tuple of ints, None}, optional
		    If `axis` is an integer, it specifies the axis of `a` along which to
		    compute the vector norms. If `axis` is a 2-tuple, it specifies the
		    axes that hold 2-D matrices, and the matrix norms of these matrices
		    are computed. If `axis` is None then either a vector norm (when `a`
		    is 1-D) or a matrix norm (when `a` is 2-D) is returned.
		keepdims : bool, optional
		    If this is set to True, the axes which are normed over are left in the
		    result as dimensions with size one. With this option the result will
		    broadcast correctly against the original `a`.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		n : float or ndarray
		    Norm of the matrix or vector(s).
		
		Notes
		-----
		For values of ``ord <= 0``, the result is, strictly speaking, not a
		mathematical 'norm', but it may still be useful for various numerical
		purposes.
		
		The following norms can be calculated:
		
		=====  ============================  ==========================
		ord    norm for matrices             norm for vectors
		=====  ============================  ==========================
		None   Frobenius norm                2-norm
		'fro'  Frobenius norm                --
		'nuc'  nuclear norm                  --
		inf    max(sum(abs(a), axis=1))      max(abs(a))
		-inf   min(sum(abs(a), axis=1))      min(abs(a))
		0      --                            sum(a != 0)
		1      max(sum(abs(a), axis=0))      as below
		-1     min(sum(abs(a), axis=0))      as below
		2      2-norm (largest sing. value)  as below
		-2     smallest singular value       as below
		other  --                            sum(abs(a)**ord)**(1./ord)
		=====  ============================  ==========================
		
		The Frobenius norm is given by [1]_:
		
		    :math:`||A||_F = [\sum_{i,j} abs(a_{i,j})^2]^{1/2}`
		
		The nuclear norm is the sum of the singular values.
		
		Both the Frobenius and nuclear norm orders are only defined for
		matrices.
		
		References
		----------
		.. [1] G. H. Golub and C. F. Van Loan, *Matrix Computations*,
		       Baltimore, MD, Johns Hopkins University Press, 1985, pg. 15
		
		Examples
		--------
		>>> from scipy.linalg import norm
		>>> a = np.arange(9) - 4.0
		>>> a
		array([-4., -3., -2., -1.,  0.,  1.,  2.,  3.,  4.])
		>>> b = a.reshape((3, 3))
		>>> b
		array([[-4., -3., -2.],
		       [-1.,  0.,  1.],
		       [ 2.,  3.,  4.]])
		
		>>> norm(a)
		7.745966692414834
		>>> norm(b)
		7.745966692414834
		>>> norm(b, 'fro')
		7.745966692414834
		>>> norm(a, np.inf)
		4
		>>> norm(b, np.inf)
		9
		>>> norm(a, -np.inf)
		0
		>>> norm(b, -np.inf)
		2
		
		>>> norm(a, 1)
		20
		>>> norm(b, 1)
		7
		>>> norm(a, -1)
		-4.6566128774142013e-010
		>>> norm(b, -1)
		6
		>>> norm(a, 2)
		7.745966692414834
		>>> norm(b, 2)
		7.3484692283495345
		
		>>> norm(a, -2)
		0
		>>> norm(b, -2)
		1.8570331885190563e-016
		>>> norm(a, 3)
		5.8480354764257312
		>>> norm(a, -3)
		0
	**/
	static public function norm(a:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?check_finite:Dynamic):Dynamic;
}