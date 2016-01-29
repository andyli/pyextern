/* This file is generated, do not edit! */
package scipy.linalg._decomp_qz;
@:pythonImport("scipy.linalg._decomp_qz") extern class _Decomp_qz_Module {
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
		Strict check for `arr` not sharing any data with `original`,
		under the assumption that arr = asarray(original)
	**/
	static public function _datacopied(arr:Dynamic, original:Dynamic):Dynamic;
	static public var _double_precision : Dynamic;
	static public function _qz(A:Dynamic, B:Dynamic, ?output:Dynamic, ?lwork:Dynamic, ?sort:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public function _select_function(sort:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Convert the input to an array, checking for NaNs or Infs.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.  Success requires no NaNs or Infs.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		     Whether to use row-major (C-style) or
		     column-major (Fortran-style) memory representation.
		     Defaults to 'C'.
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray.  If `a` is a subclass of ndarray, a base
		    class ndarray is returned.
		
		Raises
		------
		ValueError
		    Raises ValueError if `a` contains NaN (Not a Number) or Inf (Infinity).
		
		See Also
		--------
		asarray : Create and array.
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array.  If all elements are finite
		``asarray_chkfinite`` is identical to ``asarray``.
		
		>>> a = [1, 2]
		>>> np.asarray_chkfinite(a, dtype=float)
		array([1., 2.])
		
		Raises ValueError if array_like contains Nans or Infs.
		
		>>> a = [1, 2, np.inf]
		>>> try:
		...     np.asarray_chkfinite(a)
		... except ValueError:
		...     print 'ValueError'
		...
		ValueError
	**/
	static public function asarray_chkfinite(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	static public function callable(obj:Dynamic):Dynamic;
	static public var division : Dynamic;
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
		QZ decomposition for a pair of matrices with reordering.
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		A : (N, N) array_like
		    2d array to decompose
		B : (N, N) array_like
		    2d array to decompose
		sort : {callable, 'lhp', 'rhp', 'iuc', 'ouc'}, optional
		    Specifies whether the upper eigenvalues should be sorted.  A callable
		    may be passed that, given a eigenvalue, returns a boolean denoting
		    whether the eigenvalue should be sorted to the top-left (True). For
		    real matrix pairs, the sort function takes three real arguments
		    (alphar, alphai, beta). The eigenvalue
		    ``x = (alphar + alphai*1j)/beta``.  For complex matrix pairs or
		    output='complex', the sort function takes two complex arguments
		    (alpha, beta). The eigenvalue ``x = (alpha/beta)``.
		    Alternatively, string parameters may be used:
		
		        - 'lhp'   Left-hand plane (x.real < 0.0)
		        - 'rhp'   Right-hand plane (x.real > 0.0)
		        - 'iuc'   Inside the unit circle (x*x.conjugate() < 1.0)
		        - 'ouc'   Outside the unit circle (x*x.conjugate() > 1.0)
		
		output : str {'real','complex'}, optional
		    Construct the real or complex QZ decomposition for real matrices.
		    Default is 'real'.
		overwrite_a : bool, optional
		    If True, the contents of A are overwritten.
		overwrite_b : bool, optional
		    If True, the contents of B are overwritten.
		check_finite : bool, optional
		    If true checks the elements of `A` and `B` are finite numbers. If
		    false does no checking and passes matrix through to
		    underlying algorithm.
		
		Returns
		-------
		AA : (N, N) ndarray
		    Generalized Schur form of A.
		BB : (N, N) ndarray
		    Generalized Schur form of B.
		alpha : (N,) ndarray
		    alpha = alphar + alphai * 1j. See notes.
		beta : (N,) ndarray
		    See notes.
		Q : (N, N) ndarray
		    The left Schur vectors.
		Z : (N, N) ndarray
		    The right Schur vectors.
		
		Notes
		-----
		On exit, ``(ALPHAR(j) + ALPHAI(j)*i)/BETA(j), j=1,...,N``, will be the
		generalized eigenvalues.  ``ALPHAR(j) + ALPHAI(j)*i`` and
		``BETA(j),j=1,...,N`` are the diagonals of the complex Schur form (S,T)
		that would result if the 2-by-2 diagonal blocks of the real generalized
		Schur form of (A,B) were further reduced to triangular form using complex
		unitary transformations. If ALPHAI(j) is zero, then the j-th eigenvalue is
		real; if positive, then the ``j``-th and ``(j+1)``-st eigenvalues are a complex
		conjugate pair, with ``ALPHAI(j+1)`` negative.
		
		See also
		--------
		qz
	**/
	static public function ordqz(A:Dynamic, B:Dynamic, ?sort:Dynamic, ?output:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		QZ decomposition for generalized eigenvalues of a pair of matrices.
		
		The QZ, or generalized Schur, decomposition for a pair of N x N
		nonsymmetric matrices (A,B) is::
		
		    (A,B) = (Q*AA*Z', Q*BB*Z')
		
		where AA, BB is in generalized Schur form if BB is upper-triangular
		with non-negative diagonal and AA is upper-triangular, or for real QZ
		decomposition (``output='real'``) block upper triangular with 1x1
		and 2x2 blocks.  In this case, the 1x1 blocks correspond to real
		generalized eigenvalues and 2x2 blocks are 'standardized' by making
		the corresponding elements of BB have the form::
		
		    [ a 0 ]
		    [ 0 b ]
		
		and the pair of corresponding 2x2 blocks in AA and BB will have a complex
		conjugate pair of generalized eigenvalues.  If (``output='complex'``) or
		A and B are complex matrices, Z' denotes the conjugate-transpose of Z.
		Q and Z are unitary matrices.
		
		Parameters
		----------
		A : (N, N) array_like
		    2d array to decompose
		B : (N, N) array_like
		    2d array to decompose
		output : {'real', 'complex'}, optional
		    Construct the real or complex QZ decomposition for real matrices.
		    Default is 'real'.
		lwork : int, optional
		    Work array size.  If None or -1, it is automatically computed.
		sort : {None, callable, 'lhp', 'rhp', 'iuc', 'ouc'}, optional
		    NOTE: THIS INPUT IS DISABLED FOR NOW. Use ordqz instead.
		
		    Specifies whether the upper eigenvalues should be sorted.  A callable
		    may be passed that, given a eigenvalue, returns a boolean denoting
		    whether the eigenvalue should be sorted to the top-left (True). For
		    real matrix pairs, the sort function takes three real arguments
		    (alphar, alphai, beta). The eigenvalue
		    ``x = (alphar + alphai*1j)/beta``.  For complex matrix pairs or
		    output='complex', the sort function takes two complex arguments
		    (alpha, beta). The eigenvalue ``x = (alpha/beta)``.  Alternatively,
		    string parameters may be used:
		
		        - 'lhp'   Left-hand plane (x.real < 0.0)
		        - 'rhp'   Right-hand plane (x.real > 0.0)
		        - 'iuc'   Inside the unit circle (x*x.conjugate() < 1.0)
		        - 'ouc'   Outside the unit circle (x*x.conjugate() > 1.0)
		
		    Defaults to None (no sorting).
		overwrite_a : bool, optional
		    Whether to overwrite data in a (may improve performance)
		overwrite_b : bool, optional
		    Whether to overwrite data in b (may improve performance)
		check_finite : bool, optional
		    If true checks the elements of `A` and `B` are finite numbers. If
		    false does no checking and passes matrix through to
		    underlying algorithm.
		
		Returns
		-------
		AA : (N, N) ndarray
		    Generalized Schur form of A.
		BB : (N, N) ndarray
		    Generalized Schur form of B.
		Q : (N, N) ndarray
		    The left Schur vectors.
		Z : (N, N) ndarray
		    The right Schur vectors.
		
		Notes
		-----
		Q is transposed versus the equivalent function in Matlab.
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		>>> from scipy import linalg
		>>> np.random.seed(1234)
		>>> A = np.arange(9).reshape((3, 3))
		>>> B = np.random.randn(3, 3)
		
		>>> AA, BB, Q, Z = linalg.qz(A, B)
		>>> AA
		array([[-13.40928183,  -4.62471562,   1.09215523],
		       [  0.        ,   0.        ,   1.22805978],
		       [  0.        ,   0.        ,   0.31973817]])
		>>> BB
		array([[ 0.33362547, -1.37393632,  0.02179805],
		       [ 0.        ,  1.68144922,  0.74683866],
		       [ 0.        ,  0.        ,  0.9258294 ]])
		>>> Q
		array([[ 0.14134727, -0.97562773,  0.16784365],
		       [ 0.49835904, -0.07636948, -0.86360059],
		       [ 0.85537081,  0.20571399,  0.47541828]])
		>>> Z
		array([[-0.24900855, -0.51772687,  0.81850696],
		       [-0.79813178,  0.58842606,  0.12938478],
		       [-0.54861681, -0.6210585 , -0.55973739]])
		
		See also
		--------
		ordqz
	**/
	static public function qz(A:Dynamic, B:Dynamic, ?output:Dynamic, ?lwork:Dynamic, ?sort:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Dynamic;
}