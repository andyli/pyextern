/* This file is generated, do not edit! */
package scipy.linalg;
@:pythonImport("scipy.linalg.decomp_lu") extern class Decomp_lu {
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
	static public var absolute_import : Dynamic;
	/**
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
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
		
		See Also
		--------
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asarray(a)
		array([1, 2])
		
		Existing arrays are not copied:
		
		>>> a = np.array([1, 2])
		>>> np.asarray(a) is a
		True
		
		If `dtype` is set, array is copied only if dtype does not match:
		
		>>> a = np.array([1, 2], dtype=np.float32)
		>>> np.asarray(a, dtype=np.float32) is a
		True
		>>> np.asarray(a, dtype=np.float64) is a
		False
		
		Contrary to `asanyarray`, ndarray subclasses are not passed through:
		
		>>> issubclass(np.matrix, np.ndarray)
		True
		>>> a = np.matrix([[1, 2]])
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
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
	static public var division : Dynamic;
	/**
		Return optimal available _flinalg function objects with
		names. arrays are used to determine optimal prefix.
	**/
	static public function get_flinalg_funcs(names:Dynamic, ?arrays:Dynamic, ?debug:Dynamic):Dynamic;
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
	static public function get_lapack_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Compute pivoted LU decomposition of a matrix.
		
		The decomposition is::
		
		    A = P L U
		
		where P is a permutation matrix, L lower triangular with unit
		diagonal elements, and U upper triangular.
		
		Parameters
		----------
		a : (M, N) array_like
		    Array to decompose
		permute_l : bool, optional
		    Perform the multiplication P*L  (Default: do not permute)
		overwrite_a : bool, optional
		    Whether to overwrite data in a (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		**(If permute_l == False)**
		
		p : (M, M) ndarray
		    Permutation matrix
		l : (M, K) ndarray
		    Lower triangular or trapezoidal matrix with unit diagonal.
		    K = min(M, N)
		u : (K, N) ndarray
		    Upper triangular or trapezoidal matrix
		
		**(If permute_l == True)**
		
		pl : (M, K) ndarray
		    Permuted L matrix.
		    K = min(M, N)
		u : (K, N) ndarray
		    Upper triangular or trapezoidal matrix
		
		Notes
		-----
		This is a LU factorization routine written for Scipy.
	**/
	static public function lu(a:Dynamic, ?permute_l:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute pivoted LU decomposition of a matrix.
		
		The decomposition is::
		
		    A = P L U
		
		where P is a permutation matrix, L lower triangular with unit
		diagonal elements, and U upper triangular.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to decompose
		overwrite_a : bool, optional
		    Whether to overwrite data in A (may increase performance)
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		lu : (N, N) ndarray
		    Matrix containing U in its upper triangle, and L in its lower triangle.
		    The unit diagonal elements of L are not stored.
		piv : (N,) ndarray
		    Pivot indices representing the permutation matrix P:
		    row i of matrix was interchanged with row piv[i].
		
		See also
		--------
		lu_solve : solve an equation system using the LU factorization of a matrix
		
		Notes
		-----
		This is a wrapper to the ``*GETRF`` routines from LAPACK.
	**/
	static public function lu_factor(a:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve an equation system, a x = b, given the LU factorization of a
		
		Parameters
		----------
		(lu, piv)
		    Factorization of the coefficient matrix a, as given by lu_factor
		b : array
		    Right-hand side
		trans : {0, 1, 2}, optional
		    Type of system to solve:
		
		    =====  =========
		    trans  system
		    =====  =========
		    0      a x   = b
		    1      a^T x = b
		    2      a^H x = b
		    =====  =========
		overwrite_b : bool, optional
		    Whether to overwrite data in b (may increase performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : array
		    Solution to the system
		
		See also
		--------
		lu_factor : LU factorize a matrix
	**/
	static public function lu_solve(lu_and_piv:Dynamic, b:Dynamic, ?trans:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}