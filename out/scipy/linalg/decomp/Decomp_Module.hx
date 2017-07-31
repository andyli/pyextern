/* This file is generated, do not edit! */
package scipy.linalg.decomp;
@:pythonImport("scipy.linalg.decomp") extern class Decomp_Module {
	static public var _I : Dynamic;
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
	**/
	static public function _compute_lwork(routine:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Strict check for `arr` not sharing any data with `original`,
		under the assumption that arr = asarray(original)
	**/
	static public function _datacopied(arr:Dynamic, original:Dynamic):Dynamic;
	static public var _double_precision : Dynamic;
	static public function _geneig(a1:Dynamic, b1:Dynamic, left:Dynamic, right:Dynamic, overwrite_a:Dynamic, overwrite_b:Dynamic, homogeneous_eigvals:Dynamic):Dynamic;
	/**
		Produce complex-valued eigenvectors from LAPACK DGGEV real-valued output
	**/
	static public function _make_complex_eigvecs(w:Dynamic, vin:Dynamic, dtype:Dynamic):Dynamic;
	static public function _make_eigvals(alpha:Dynamic, beta:Dynamic, homogeneous_eigvals:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		array(object, dtype=None, copy=True, order='K', subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an object whose
		    __array__ method returns an array, or any (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then the type will
		    be determined as the minimum type required to hold the objects in the
		    sequence.  This argument can only be used to 'upcast' the array.  For
		    downcasting, use the .astype(t) method.
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
		    the same as if ``copy=True``, with some exceptions for `A`, see the
		    Notes section. The default order is 'K'.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		
		Returns
		-------
		out : ndarray
		    An array object satisfying the specified requirements.
		
		See Also
		--------
		empty, empty_like, zeros, zeros_like, ones, ones_like, full, full_like
		
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
		conjugate(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the complex conjugate, element-wise.
		
		The complex conjugate of a complex number is obtained by changing the
		sign of its imaginary part.
		
		Parameters
		----------
		x : array_like
		    Input value.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The complex conjugate of `x`, with same dtype as `y`.
		
		Examples
		--------
		>>> np.conjugate(1+2j)
		(1-2j)
		
		>>> x = np.eye(2) + 1j * np.eye(2)
		>>> np.conjugate(x)
		array([[ 1.-1.j,  0.-0.j],
		       [ 0.-0.j,  1.-1.j]])
	**/
	static public function conj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
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
		eigh : Eigenvalues and right eigenvectors for symmetric/Hermitian arrays.
	**/
	static public function eig(a:Dynamic, ?b:Dynamic, ?left:Dynamic, ?right:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic, ?homogeneous_eigvals:Dynamic):Dynamic;
	/**
		Solve real symmetric or complex hermitian band matrix eigenvalue problem.
		
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
		
		Raises LinAlgError if eigenvalue computation does not converge
	**/
	static public function eig_banded(a_band:Dynamic, ?lower:Dynamic, ?eigvals_only:Dynamic, ?overwrite_a_band:Dynamic, ?select:Dynamic, ?select_range:Dynamic, ?max_ev:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve an ordinary or generalized eigenvalue problem for a complex
		Hermitian or real symmetric matrix.
		
		Find eigenvalues w and optionally eigenvectors v of matrix `a`, where
		`b` is positive definite::
		
		                  a v[:,i] = w[i] b v[:,i]
		    v[i,:].conj() a v[:,i] = w[i]
		    v[i,:].conj() b v[:,i] = 1
		
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
		    triangle of `a`. (Default: lower)
		eigvals_only : bool, optional
		    Whether to calculate only eigenvalues and no eigenvectors.
		    (Default: both are calculated)
		turbo : bool, optional
		    Use divide and conquer algorithm (faster but expensive in memory,
		    only for generalized eigenvalue problem and if eigvals=None)
		eigvals : tuple (lo, hi), optional
		    Indexes of the smallest and largest (in ascending order) eigenvalues
		    and corresponding eigenvectors to be returned: 0 <= lo <= hi <= M-1.
		    If omitted, all eigenvalues and eigenvectors are returned.
		type : int, optional
		    Specifies the problem type to be solved:
		
		       type = 1: a   v[:,i] = w[i] b v[:,i]
		
		       type = 2: a b v[:,i] = w[i]   v[:,i]
		
		       type = 3: b a v[:,i] = w[i]   v[:,i]
		overwrite_a : bool, optional
		    Whether to overwrite data in `a` (may improve performance)
		overwrite_b : bool, optional
		    Whether to overwrite data in `b` (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		w : (N,) float ndarray
		    The N (1<=N<=M) selected eigenvalues, in ascending order, each
		    repeated according to its multiplicity.
		v : (M, N) complex ndarray
		    (if eigvals_only == False)
		
		    The normalized selected eigenvector corresponding to the
		    eigenvalue w[i] is the column v[:,i].
		
		    Normalization:
		
		        type 1 and 3: v.conj() a      v  = w
		
		        type 2: inv(v).conj() a  inv(v) = w
		
		        type = 1 or 2: v.conj() b      v  = I
		
		        type = 3: v.conj() inv(b) v  = I
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge,
		    an error occurred, or b matrix is not definite positive. Note that
		    if input matrices are not symmetric or hermitian, no error is reported
		    but results will be wrong.
		
		See Also
		--------
		eig : eigenvalues and right eigenvectors for non-symmetric arrays
	**/
	static public function eigh(a:Dynamic, ?b:Dynamic, ?lower:Dynamic, ?eigvals_only:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?turbo:Dynamic, ?eigvals:Dynamic, ?type:Dynamic, ?check_finite:Dynamic):Dynamic;
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
		eigvalsh : eigenvalues of symmetric or Hermitian arrays,
		eig : eigenvalues and right eigenvectors of general arrays.
		eigh : eigenvalues and eigenvectors of symmetric/Hermitian arrays.
	**/
	static public function eigvals(a:Dynamic, ?b:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic, ?homogeneous_eigvals:Dynamic):Dynamic;
	/**
		Solve real symmetric or complex hermitian band matrix eigenvalue problem.
		
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
		
		Raises LinAlgError if eigenvalue computation does not converge
		
		See Also
		--------
		eig_banded : eigenvalues and right eigenvectors for symmetric/Hermitian
		    band matrices
		eigvals : eigenvalues of general arrays
		eigh : eigenvalues and right eigenvectors for symmetric/Hermitian arrays
		eig : eigenvalues and right eigenvectors for non-symmetric arrays
	**/
	static public function eigvals_banded(a_band:Dynamic, ?lower:Dynamic, ?overwrite_a_band:Dynamic, ?select:Dynamic, ?select_range:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve an ordinary or generalized eigenvalue problem for a complex
		Hermitian or real symmetric matrix.
		
		Find eigenvalues w of matrix a, where b is positive definite::
		
		                  a v[:,i] = w[i] b v[:,i]
		    v[i,:].conj() a v[:,i] = w[i]
		    v[i,:].conj() b v[:,i] = 1
		
		
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
		    triangle of `a`. (Default: lower)
		turbo : bool, optional
		    Use divide and conquer algorithm (faster but expensive in memory,
		    only for generalized eigenvalue problem and if eigvals=None)
		eigvals : tuple (lo, hi), optional
		    Indexes of the smallest and largest (in ascending order) eigenvalues
		    and corresponding eigenvectors to be returned: 0 <= lo < hi <= M-1.
		    If omitted, all eigenvalues and eigenvectors are returned.
		type : int, optional
		    Specifies the problem type to be solved:
		
		       type = 1: a   v[:,i] = w[i] b v[:,i]
		
		       type = 2: a b v[:,i] = w[i]   v[:,i]
		
		       type = 3: b a v[:,i] = w[i]   v[:,i]
		overwrite_a : bool, optional
		    Whether to overwrite data in `a` (may improve performance)
		overwrite_b : bool, optional
		    Whether to overwrite data in `b` (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		w : (N,) float ndarray
		    The N (1<=N<=M) selected eigenvalues, in ascending order, each
		    repeated according to its multiplicity.
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge,
		    an error occurred, or b matrix is not definite positive. Note that
		    if input matrices are not symmetric or hermitian, no error is reported
		    but results will be wrong.
		
		See Also
		--------
		eigvals : eigenvalues of general arrays
		eigh : eigenvalues and right eigenvectors for symmetric/Hermitian arrays
		eig : eigenvalues and right eigenvectors for non-symmetric arrays
	**/
	static public function eigvalsh(a:Dynamic, ?b:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?turbo:Dynamic, ?eigvals:Dynamic, ?type:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Return indices that are non-zero in the flattened version of a.
		
		This is equivalent to a.ravel().nonzero()[0].
		
		Parameters
		----------
		a : ndarray
		    Input array.
		
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
		types {float32, float64, complex64, complex128} respectevely, and
		are stored in attribute `typecode` of the returned functions.
	**/
	static public function get_lapack_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Array<Dynamic>;
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
	**/
	static public function hessenberg(a:Dynamic, ?calc_q:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
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
		
		Test element-wise for finiteness (not infinity or not Not a Number).
		
		The result is returned as a boolean array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray, bool
		    For scalar input, the result is a new boolean with value True
		    if the input is finite; otherwise the value is False (input is
		    either positive infinity, negative infinity or Not a Number).
		
		    For array input, the result is a boolean array with the same
		    dimensions as the input and the values are True if the
		    corresponding element of the input is finite; otherwise the values
		    are False (element is either positive infinity, negative infinity
		    or Not a Number).
		
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
		array([False,  True, False], dtype=bool)
		
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
		row-major, C-style order. The corresponding non-zero
		values can be obtained with::
		
		    a[nonzero(a)]
		
		To group the indices by element, rather than dimension, use::
		
		    transpose(nonzero(a))
		
		The result of this is always a 2-D array, with a row for
		each non-zero element.
		
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
		
		Examples
		--------
		>>> x = np.array([[1,0,0], [0,2,0], [1,1,0]])
		>>> x
		array([[1, 0, 0],
		       [0, 2, 0],
		       [1, 1, 0]])
		>>> np.nonzero(x)
		(array([0, 1, 2, 2], dtype=int64), array([0, 1, 0, 1], dtype=int64))
		
		>>> x[np.nonzero(x)]
		array([ 1.,  1.,  1.])
		>>> np.transpose(np.nonzero(x))
		array([[0, 0],
		       [1, 1],
		       [2, 2]])
		
		A common use for ``nonzero`` is to find the indices of an array, where
		a condition is True.  Given an array `a`, the condition `a` > 3 is a
		boolean array and since False is interpreted as 0, np.nonzero(a > 3)
		yields the indices of the `a` where the condition is true.
		
		>>> a = np.array([[1,2,3],[4,5,6],[7,8,9]])
		>>> a > 3
		array([[False, False, False],
		       [ True,  True,  True],
		       [ True,  True,  True]], dtype=bool)
		>>> np.nonzero(a > 3)
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
		
		The ``nonzero`` method of the boolean array can also be called.
		
		>>> (a > 3).nonzero()
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
	**/
	static public function nonzero(a:Dynamic):python.Tuple<Dynamic>;
	/**
		Matrix or vector norm.
		
		This function is able to return one of seven different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter.
		
		Parameters
		----------
		a : (M,) or (M, N) array_like
		    Input array.  If `axis` is None, `a` must be 1-D or 2-D.
		ord : {non-zero int, inf, -inf, 'fro'}, optional
		    Order of the norm (see table under ``Notes``). inf means numpy's
		    `inf` object
		axis : {int, 2-tuple of ints, None}, optional
		    If `axis` is an integer, it specifies the axis of `a` along which to
		    compute the vector norms.  If `axis` is a 2-tuple, it specifies the
		    axes that hold 2-D matrices, and the matrix norms of these matrices
		    are computed.  If `axis` is None then either a vector norm (when `a`
		    is 1-D) or a matrix norm (when `a` is 2-D) is returned.
		keepdims : bool, optional
		    If this is set to True, the axes which are normed over are left in the
		    result as dimensions with size one.  With this option the result will
		    broadcast correctly against the original `a`.
		
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
		
		The ``axis`` and ``keepdims`` arguments are passed directly to
		``numpy.linalg.norm`` and are only usable if they are supported
		by the version of numpy in use.
		
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
	static public function norm(a:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}