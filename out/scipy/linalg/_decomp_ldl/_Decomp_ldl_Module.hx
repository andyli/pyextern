/* This file is generated, do not edit! */
package scipy.linalg._decomp_ldl;
@:pythonImport("scipy.linalg._decomp_ldl") extern class _Decomp_ldl_Module {
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
		Helper function for scipy argument validation.
		
		Many scipy linear algebra functions do support arbitrary array-like
		input arguments.  Examples of commonly unsupported inputs include
		matrices containing inf/nan, sparse matrix representations, and
		matrices with complicated elements.
		
		Parameters
		----------
		a : array_like
		    The array-like input.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		sparse_ok : bool, optional
		    True if scipy sparse matrices are allowed.
		objects_ok : bool, optional
		    True if arrays with dype('O') are allowed.
		mask_ok : bool, optional
		    True if masked arrays are allowed.
		as_inexact : bool, optional
		    True to convert the input array to a np.inexact dtype.
		
		Returns
		-------
		ret : ndarray
		    The converted validated array.
	**/
	static public function _asarray_validated(a:Dynamic, ?check_finite:Dynamic, ?sparse_ok:Dynamic, ?objects_ok:Dynamic, ?mask_ok:Dynamic, ?as_inexact:Dynamic):Dynamic;
	/**
		Round floating-point lwork returned by lapack to integer.
		
		Several LAPACK routines compute optimal values for LWORK, which
		they return in a floating-point variable. However, for large
		values of LWORK, single-precision floating point is not sufficient
		to hold the exact value --- some LAPACK versions (<= 3.5.0 at
		least) truncate the returned integer to single precision and in
		some cases this can be smaller than the required value.
		
		Examples
		--------
		>>> from scipy.linalg import lapack
		>>> n = 5000
		>>> s_r, s_lw = lapack.get_lapack_funcs(('sysvx', 'sysvx_lwork'))
		>>> lwork = lapack._compute_lwork(s_lw, n)
		>>> lwork
		32000
	**/
	static public function _compute_lwork(routine:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper function to construct explicit outer factors of LDL factorization.
		
		If lower is True the permuted factors are multiplied as L(1)*L(2)*...*L(k).
		Otherwise, the permuted factors are multiplied as L(k)*...*L(2)*L(1). See
		LAPACK documentation for more details.
		
		Parameters
		----------
		lu : ndarray
		    The triangular array that is extracted from LAPACK routine call with
		    ones on the diagonals.
		swap_vec : ndarray
		    The array that defines the row swapping indices. If k'th entry is m
		    then rows k,m are swapped. Notice that m'th entry is not necessarily
		    k to avoid undoing the swapping.
		pivs : ndarray
		    The array that defines the block diagonal structure returned by
		    _ldl_sanitize_ipiv().
		lower : bool, optional
		    The boolean to switch between lower and upper triangular structure.
		
		Returns
		-------
		lu : ndarray
		    The square outer factor which satisfies the L * D * L.T = A
		perm : ndarray
		    The permutation vector that brings the lu to the triangular form
		
		Notes
		-----
		Note that the original argument "lu" is overwritten.
	**/
	static public function _ldl_construct_tri_factor(lu:Dynamic, swap_vec:Dynamic, pivs:Dynamic, ?lower:Dynamic):Dynamic;
	/**
		Helper function to extract the diagonal and triangular matrices for
		LDL.T factorization.
		
		Parameters
		----------
		ldu : ndarray
		    The compact output returned by the LAPACK routing
		pivs : ndarray
		    The sanitized array of {0, 1, 2} denoting the sizes of the pivots. For
		    every 2 there is a succeeding 0.
		lower : bool, optional
		    If set to False, upper triangular part is considered.
		hermitian : bool, optional
		    If set to False a symmetric complex array is assumed.
		
		Returns
		-------
		d : ndarray
		    The block diagonal matrix.
		lu : ndarray
		    The upper/lower triangular matrix
	**/
	static public function _ldl_get_d_and_l(ldu:Dynamic, pivs:Dynamic, ?lower:Dynamic, ?hermitian:Dynamic):Dynamic;
	/**
		This helper function takes the rather strangely encoded permutation array
		returned by the LAPACK routines ?(HE/SY)TRF and converts it into
		regularized permutation and diagonal pivot size format.
		
		Since FORTRAN uses 1-indexing and LAPACK uses different start points for
		upper and lower formats there are certain offsets in the indices used
		below.
		
		Let's assume a result where the matrix is 6x6 and there are two 2x2
		and two 1x1 blocks reported by the routine. To ease the coding efforts,
		we still populate a 6-sized array and fill zeros as the following ::
		
		    pivots = [2, 0, 2, 0, 1, 1]
		
		This denotes a diagonal matrix of the form ::
		
		    [x x        ]
		    [x x        ]
		    [    x x    ]
		    [    x x    ]
		    [        x  ]
		    [          x]
		
		In other words, we write 2 when the 2x2 block is first encountered and
		automatically write 0 to the next entry and skip the next spin of the
		loop. Thus, a separate counter or array appends to keep track of block
		sizes are avoided. If needed, zeros can be filtered out later without
		losing the block structure.
		
		Parameters
		----------
		a : ndarray
		    The permutation array ipiv returned by LAPACK
		lower : bool, optional
		    The switch to select whether upper or lower triangle is chosen in
		    the LAPACK call.
		
		Returns
		-------
		swap_ : ndarray
		    The array that defines the row/column swap operations. For example,
		    if row two is swapped with row four, the result is [0, 3, 2, 3].
		pivots : ndarray
		    The array that defines the block diagonal structure as given above.
	**/
	static public function _ldl_sanitize_ipiv(a:Dynamic, ?lower:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		arange([start,] stop[, step,], dtype=None)
		
		Return evenly spaced values within a given interval.
		
		Values are generated within the half-open interval ``[start, stop)``
		(in other words, the interval including `start` but excluding `stop`).
		For integer arguments the function is equivalent to the Python built-in
		`range` function, but returns an ndarray rather than a list.
		
		When using a non-integer step, such as 0.1, the results will often not
		be consistent.  It is better to use `numpy.linspace` for these cases.
		
		Parameters
		----------
		start : number, optional
		    Start of interval.  The interval includes this value.  The default
		    start value is 0.
		stop : number
		    End of interval.  The interval does not include this value, except
		    in some cases where `step` is not an integer and floating point
		    round-off affects the length of `out`.
		step : number, optional
		    Spacing between values.  For any output `out`, this is the distance
		    between two adjacent values, ``out[i+1] - out[i]``.  The default
		    step size is 1.  If `step` is specified as a position argument,
		    `start` must also be given.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
		Returns
		-------
		arange : ndarray
		    Array of evenly spaced values.
		
		    For floating point arguments, the length of the result is
		    ``ceil((stop - start)/step)``.  Because of floating point overflow,
		    this rule may result in the last element of `out` being greater
		    than `stop`.
		
		See Also
		--------
		linspace : Evenly spaced numbers with careful handling of endpoints.
		ogrid: Arrays of evenly spaced numbers in N-dimensions.
		mgrid: Grid-shaped arrays of evenly spaced numbers in N-dimensions.
		
		Examples
		--------
		>>> np.arange(3)
		array([0, 1, 2])
		>>> np.arange(3.0)
		array([ 0.,  1.,  2.])
		>>> np.arange(3,7)
		array([3, 4, 5, 6])
		>>> np.arange(3,7,2)
		array([3, 5])
	**/
	static public function arange(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		    Sorting algorithm.
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc.  A single field can
		    be specified as a string, and not all fields need be specified,
		    but unspecified fields will still be used, in the order in which
		    they come up in the dtype, to break ties.
		
		Returns
		-------
		index_array : ndarray, int
		    Array of indices that sort `a` along the specified axis.
		    If `a` is one-dimensional, ``a[index_array]`` yields a sorted `a`.
		    More generally, ``np.take_along_axis(a, index_array, axis=a)`` always
		    yields the sorted `a`, irrespective of dimensionality.
		
		See Also
		--------
		sort : Describes sorting algorithms used.
		lexsort : Indirect stable sort with multiple keys.
		ndarray.sort : Inplace sort.
		argpartition : Indirect partial sort.
		
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
		
		>>> np.argsort(x, axis=0)  # sorts along first axis (down)
		array([[0, 1],
		       [1, 0]])
		
		>>> np.argsort(x, axis=1)  # sorts along last axis (across)
		array([[0, 1],
		       [0, 1]])
		
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
		View inputs as arrays with at least two dimensions.
		
		Parameters
		----------
		arys1, arys2, ... : array_like
		    One or more array-like sequences.  Non-array inputs are converted
		    to arrays.  Arrays that already have two or more dimensions are
		    preserved.
		
		Returns
		-------
		res, res2, ... : ndarray
		    An array, or list of arrays, each with ``a.ndim >= 2``.
		    Copies are avoided where possible, and views with two or more
		    dimensions are returned.
		
		See Also
		--------
		atleast_1d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_2d(3.0)
		array([[ 3.]])
		
		>>> x = np.arange(3.0)
		>>> np.atleast_2d(x)
		array([[ 0.,  1.,  2.]])
		>>> np.atleast_2d(x).base is x
		True
		
		>>> np.atleast_2d(1, [1, 2], [[1, 2]])
		[array([[1]]), array([[1, 2]]), array([[1, 2]])]
	**/
	static public function atleast_2d(?arys:python.VarArgs<Dynamic>):Dynamic;
	/**
		Extract a diagonal or construct a diagonal array.
		
		See the more detailed documentation for ``numpy.diagonal`` if you use this
		function to extract a diagonal and wish to write to the resulting array;
		whether it returns a copy or a view depends on what version of numpy you
		are using.
		
		Parameters
		----------
		v : array_like
		    If `v` is a 2-D array, return a copy of its `k`-th diagonal.
		    If `v` is a 1-D array, return a 2-D array with `v` on the `k`-th
		    diagonal.
		k : int, optional
		    Diagonal in question. The default is 0. Use `k>0` for diagonals
		    above the main diagonal, and `k<0` for diagonals below the main
		    diagonal.
		
		Returns
		-------
		out : ndarray
		    The extracted diagonal or constructed diagonal array.
		
		See Also
		--------
		diagonal : Return specified diagonals.
		diagflat : Create a 2-D array with the flattened input as a diagonal.
		trace : Sum along diagonals.
		triu : Upper triangle of an array.
		tril : Lower triangle of an array.
		
		Examples
		--------
		>>> x = np.arange(9).reshape((3,3))
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5],
		       [6, 7, 8]])
		
		>>> np.diag(x)
		array([0, 4, 8])
		>>> np.diag(x, k=1)
		array([1, 5])
		>>> np.diag(x, k=-1)
		array([3, 7])
		
		>>> np.diag(np.diag(x))
		array([[0, 0, 0],
		       [0, 4, 0],
		       [0, 0, 8]])
	**/
	static public function diag(v:Dynamic, ?k:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		empty_like(prototype, dtype=None, order='K', subok=True)
		
		Return a new array with the same shape and type as a given array.
		
		Parameters
		----------
		prototype : array_like
		    The shape and data-type of `prototype` define these same attributes
		    of the returned array.
		dtype : data-type, optional
		    Overrides the data type of the result.
		
		    .. versionadded:: 1.6.0
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if ``prototype`` is Fortran
		    contiguous, 'C' otherwise. 'K' means match the layout of ``prototype``
		    as closely as possible.
		
		    .. versionadded:: 1.6.0
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of 'a', otherwise it will be a base-class array. Defaults
		    to True.
		
		Returns
		-------
		out : ndarray
		    Array of uninitialized (arbitrary) data with the same
		    shape and type as `prototype`.
		
		See Also
		--------
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		empty : Return a new uninitialized array.
		
		Notes
		-----
		This function does *not* initialize the returned array; to do that use
		`zeros_like` or `ones_like` instead.  It may be marginally faster than
		the functions that do set the array values.
		
		Examples
		--------
		>>> a = ([1,2,3], [4,5,6])                         # a is array-like
		>>> np.empty_like(a)
		array([[-1073741821, -1073741821,           3],    #random
		       [          0,           0, -1073741821]])
		>>> a = np.array([[1., 2., 3.],[4.,5.,6.]])
		>>> np.empty_like(a)
		array([[ -2.00000715e+000,   1.48219694e-323,  -2.00000572e+000],#random
		       [  4.38791518e-305,  -2.00000715e+000,   4.17269252e-309]])
	**/
	static public function empty_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		types {float32, float64, complex64, complex128} respectively, and
		are stored in attribute ``typecode`` of the returned functions.
		
		Examples
		--------
		Suppose we would like to use '?lange' routine which computes the selected
		norm of an array. We pass our array in order to get the correct 'lange'
		flavor.
		
		>>> import scipy.linalg as LA
		>>> a = np.random.rand(3,2)
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
		>>> a = np.random.rand(1000,1000)
		>>> b = np.random.rand(1000,1)*1j
		>>> # We pick up zsysv and zsysv_lwork due to b array
		... xsysv, xlwork = LA.get_lapack_funcs(('sysv', 'sysv_lwork'), (a, b))
		>>> opt_lwork, _ = xlwork(a.shape[0])  # returns a complex for 'z' prefix
		>>> udut, ipiv, x, info = xsysv(a, b, lwork=int(opt_lwork.real))
	**/
	static public function get_lapack_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Array<Dynamic>;
	/**
		Return the imaginary part of the complex argument.
		
		Parameters
		----------
		val : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray or scalar
		    The imaginary component of the complex argument. If `val` is real,
		    the type of `val` is used for the output.  If `val` has complex
		    elements, the returned type is float.
		
		See Also
		--------
		real, angle, real_if_close
		
		Examples
		--------
		>>> a = np.array([1+2j, 3+4j, 5+6j])
		>>> a.imag
		array([ 2.,  4.,  6.])
		>>> a.imag = np.array([8, 10, 12])
		>>> a
		array([ 1. +8.j,  3.+10.j,  5.+12.j])
		>>> np.imag(1 + 1j)
		1.0
	**/
	static public function imag(val:Dynamic):Dynamic;
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
		Computes the LDLt or Bunch-Kaufman factorization of a symmetric/
		hermitian matrix.
		
		This function returns a block diagonal matrix D consisting blocks of size
		at most 2x2 and also a possibly permuted unit lower triangular matrix
		``L`` such that the factorization ``A = L D L^H`` or ``A = L D L^T``
		holds. If ``lower`` is False then (again possibly permuted) upper
		triangular matrices are returned as outer factors.
		
		The permutation array can be used to triangularize the outer factors
		simply by a row shuffle, i.e., ``lu[perm, :]`` is an upper/lower
		triangular matrix. This is also equivalent to multiplication with a
		permutation matrix ``P.dot(lu)`` where ``P`` is a column-permuted
		identity matrix ``I[:, perm]``.
		
		Depending on the value of the boolean ``lower``, only upper or lower
		triangular part of the input array is referenced. Hence a triangular
		matrix on entry would give the same result as if the full matrix is
		supplied.
		
		Parameters
		----------
		a : array_like
		    Square input array
		lower : bool, optional
		    This switches between the lower and upper triangular outer factors of
		    the factorization. Lower triangular (``lower=True``) is the default.
		hermitian : bool, optional
		    For complex-valued arrays, this defines whether ``a = a.conj().T`` or
		    ``a = a.T`` is assumed. For real-valued arrays, this switch has no
		    effect.
		overwrite_a : bool, optional
		    Allow overwriting data in ``a`` (may enhance performance). The default
		    is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		lu : ndarray
		    The (possibly) permuted upper/lower triangular outer factor of the
		    factorization.
		d : ndarray
		    The block diagonal multiplier of the factorization.
		perm : ndarray
		    The row-permutation index array that brings lu into triangular form.
		
		Raises
		------
		ValueError
		    If input array is not square.
		ComplexWarning
		    If a complex-valued array with nonzero imaginary parts on the
		    diagonal is given and hermitian is set to True.
		
		Examples
		--------
		Given an upper triangular array `a` that represents the full symmetric
		array with its entries, obtain `l`, 'd' and the permutation vector `perm`:
		
		>>> import numpy as np
		>>> from scipy.linalg import ldl
		>>> a = np.array([[2, -1, 3], [0, 2, 0], [0, 0, 1]])
		>>> lu, d, perm = ldl(a, lower=0) # Use the upper part
		>>> lu
		array([[ 0. ,  0. ,  1. ],
		       [ 0. ,  1. , -0.5],
		       [ 1. ,  1. ,  1.5]])
		>>> d
		array([[-5. ,  0. ,  0. ],
		       [ 0. ,  1.5,  0. ],
		       [ 0. ,  0. ,  2. ]])
		>>> perm
		array([2, 1, 0])
		>>> lu[perm, :]
		array([[ 1. ,  1. ,  1.5],
		       [ 0. ,  1. , -0.5],
		       [ 0. ,  0. ,  1. ]])
		>>> lu.dot(d).dot(lu.T)
		array([[ 2., -1.,  3.],
		       [-1.,  2.,  0.],
		       [ 3.,  0.,  1.]])
		
		Notes
		-----
		This function uses ``?SYTRF`` routines for symmetric matrices and
		``?HETRF`` routines for Hermitian matrices from LAPACK. See [1]_ for
		the algorithm details.
		
		Depending on the ``lower`` keyword value, only lower or upper triangular
		part of the input array is referenced. Moreover, this keyword also defines
		the structure of the outer factors of the factorization.
		
		.. versionadded:: 1.1.0
		
		See also
		--------
		cholesky, lu
		
		References
		----------
		.. [1] J.R. Bunch, L. Kaufman, Some stable methods for calculating
		   inertia and solving symmetric linear systems, Math. Comput. Vol.31,
		   1977. DOI: 10.2307/2005787
	**/
	static public function ldl(A:Dynamic, ?lower:Dynamic, ?hermitian:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Lower triangle of an array.
		
		Return a copy of an array with elements above the `k`-th diagonal zeroed.
		
		Parameters
		----------
		m : array_like, shape (M, N)
		    Input array.
		k : int, optional
		    Diagonal above which to zero elements.  `k = 0` (the default) is the
		    main diagonal, `k < 0` is below it and `k > 0` is above.
		
		Returns
		-------
		tril : ndarray, shape (M, N)
		    Lower triangle of `m`, of same shape and data-type as `m`.
		
		See Also
		--------
		triu : same thing, only for the upper triangle
		
		Examples
		--------
		>>> np.tril([[1,2,3],[4,5,6],[7,8,9],[10,11,12]], -1)
		array([[ 0,  0,  0],
		       [ 4,  0,  0],
		       [ 7,  8,  0],
		       [10, 11, 12]])
	**/
	static public function tril(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Upper triangle of an array.
		
		Return a copy of a matrix with the elements below the `k`-th diagonal
		zeroed.
		
		Please refer to the documentation for `tril` for further details.
		
		See Also
		--------
		tril : lower triangle of an array
		
		Examples
		--------
		>>> np.triu([[1,2,3],[4,5,6],[7,8,9],[10,11,12]], -1)
		array([[ 1,  2,  3],
		       [ 4,  5,  6],
		       [ 0,  8,  9],
		       [ 0,  0, 12]])
	**/
	static public function triu(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return an array of zeros with the same shape and type as a given array.
		
		Parameters
		----------
		a : array_like
		    The shape and data-type of `a` define these same attributes of
		    the returned array.
		dtype : data-type, optional
		    Overrides the data type of the result.
		
		    .. versionadded:: 1.6.0
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `a` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of `a` as closely
		    as possible.
		
		    .. versionadded:: 1.6.0
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of 'a', otherwise it will be a base-class array. Defaults
		    to True.
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the same shape and type as `a`.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		zeros : Return a new array setting values to zero.
		
		Examples
		--------
		>>> x = np.arange(6)
		>>> x = x.reshape((2, 3))
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.zeros_like(x)
		array([[0, 0, 0],
		       [0, 0, 0]])
		
		>>> y = np.arange(3, dtype=float)
		>>> y
		array([ 0.,  1.,  2.])
		>>> np.zeros_like(y)
		array([ 0.,  0.,  0.])
	**/
	static public function zeros_like(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?subok:Dynamic):Dynamic;
}