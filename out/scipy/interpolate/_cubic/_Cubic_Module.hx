/* This file is generated, do not edit! */
package scipy.interpolate._cubic;
@:pythonImport("scipy.interpolate._cubic") extern class _Cubic_Module {
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
		Check whether x is if a scalar type, or 0-dim
	**/
	static public function _isscalar(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Convenience function for pchip interpolation.
		xi and yi are arrays of values used to approximate some function f,
		with ``yi = f(xi)``.  The interpolant uses monotonic cubic splines
		to find the value of new points x and the derivatives there.
		
		See `PchipInterpolator` for details.
		
		Parameters
		----------
		xi : array_like
		    A sorted list of x-coordinates, of length N.
		yi :  array_like
		    A 1-D array of real values.  `yi`'s length along the interpolation
		    axis must be equal to the length of `xi`. If N-D array, use axis
		    parameter to select correct axis.
		x : scalar or array_like
		    Of length M.
		der : int or list, optional
		    Derivatives to extract.  The 0-th derivative can be included to
		    return the function value.
		axis : int, optional
		    Axis in the yi array corresponding to the x-coordinate values.
		
		See Also
		--------
		PchipInterpolator
		
		Returns
		-------
		y : scalar or array_like
		    The result, of length R or length M or M by R,
	**/
	static public function pchip_interpolate(xi:Dynamic, yi:Dynamic, x:Dynamic, ?der:Dynamic, ?axis:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Solve the equation ``a x = b`` for ``x``.
		
		Parameters
		----------
		a : (M, M) array_like
		    A square matrix.
		b : (M,) or (M, N) array_like
		    Right-hand side matrix in ``a x = b``.
		sym_pos : bool, optional
		    Assume `a` is symmetric and positive definite.
		lower : bool, optional
		    Use only data contained in the lower triangle of `a`, if `sym_pos` is
		    true.  Default is to use upper triangle.
		overwrite_a : bool, optional
		    Allow overwriting data in `a` (may enhance performance).
		    Default is False.
		overwrite_b : bool, optional
		    Allow overwriting data in `b` (may enhance performance).
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (M,) or (M, N) ndarray
		    Solution to the system ``a x = b``.  Shape of the return matches the
		    shape of `b`.
		
		Raises
		------
		LinAlgError
		    If `a` is singular.
		ValueError
		    If `a` is not square
		
		Examples
		--------
		Given `a` and `b`, solve for `x`:
		
		>>> a = np.array([[3, 2, 0], [1, -1, 0], [0, 5, 1]])
		>>> b = np.array([2, 4, -1])
		>>> from scipy import linalg
		>>> x = linalg.solve(a, b)
		>>> x
		array([ 2., -2.,  9.])
		>>> np.dot(a, x) == b
		array([ True,  True,  True], dtype=bool)
	**/
	static public function solve(a:Dynamic, b:Dynamic, ?sym_pos:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve the equation a x = b for x, assuming a is banded matrix.
		
		The matrix a is stored in `ab` using the matrix diagonal ordered form::
		
		    ab[u + i - j, j] == a[i,j]
		
		Example of `ab` (shape of a is (6,6), `u` =1, `l` =2)::
		
		    *    a01  a12  a23  a34  a45
		    a00  a11  a22  a33  a44  a55
		    a10  a21  a32  a43  a54   *
		    a20  a31  a42  a53   *    *
		
		Parameters
		----------
		(l, u) : (integer, integer)
		    Number of non-zero lower and upper diagonals
		ab : (`l` + `u` + 1, M) array_like
		    Banded matrix
		b : (M,) or (M, K) array_like
		    Right-hand side
		overwrite_ab : bool, optional
		    Discard data in `ab` (may enhance performance)
		overwrite_b : bool, optional
		    Discard data in `b` (may enhance performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (M,) or (M, K) ndarray
		    The solution to the system a x = b.  Returned shape depends on the
		    shape of `b`.
	**/
	static public function solve_banded(l_and_u:Dynamic, ab:Dynamic, b:Dynamic, ?overwrite_ab:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public var string_types : Dynamic;
}