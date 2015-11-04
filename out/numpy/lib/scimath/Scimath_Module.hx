/* This file is generated, do not edit! */
package numpy.lib.scimath;
@:pythonImport("numpy.lib.scimath") extern class Scimath_Module {
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
		Convert `x` to double if it has real, negative components.
		
		Otherwise, output is just the array version of the input (via asarray).
		
		Parameters
		----------
		x : array_like
		
		Returns
		-------
		array
		
		Examples
		--------
		>>> np.lib.scimath._fix_int_lt_zero([1,2])
		array([1, 2])
		
		>>> np.lib.scimath._fix_int_lt_zero([-1,2])
		array([-1.,  2.])
	**/
	static public function _fix_int_lt_zero(x:Dynamic):Dynamic;
	/**
		Convert `x` to complex if it has real components x_i with abs(x_i)>1.
		
		Otherwise, output is just the array version of the input (via asarray).
		
		Parameters
		----------
		x : array_like
		
		Returns
		-------
		array
		
		Examples
		--------
		>>> np.lib.scimath._fix_real_abs_gt_1([0,1])
		array([0, 1])
		
		>>> np.lib.scimath._fix_real_abs_gt_1([0,2])
		array([ 0.+0.j,  2.+0.j])
	**/
	static public function _fix_real_abs_gt_1(x:Dynamic):Dynamic;
	/**
		Convert `x` to complex if it has real, negative components.
		
		Otherwise, output is just the array version of the input (via asarray).
		
		Parameters
		----------
		x : array_like
		
		Returns
		-------
		array
		
		Examples
		--------
		>>> np.lib.scimath._fix_real_lt_zero([1,2])
		array([1, 2])
		
		>>> np.lib.scimath._fix_real_lt_zero([-1,2])
		array([-1.+0.j,  2.+0.j])
	**/
	static public function _fix_real_lt_zero(x:Dynamic):Dynamic;
	static public var _ln2 : Dynamic;
	/**
		Convert its input `arr` to a complex array.
		
		The input is returned as a complex array of the smallest type that will fit
		the original data: types like single, byte, short, etc. become csingle,
		while others become cdouble.
		
		A copy of the input is always made.
		
		Parameters
		----------
		arr : array
		
		Returns
		-------
		array
		    An array with the same input data as the input but in complex form.
		
		Examples
		--------
		
		First, consider an input of type short:
		
		>>> a = np.array([1,2,3],np.short)
		
		>>> ac = np.lib.scimath._tocomplex(a); ac
		array([ 1.+0.j,  2.+0.j,  3.+0.j], dtype=complex64)
		
		>>> ac.dtype
		dtype('complex64')
		
		If the input is of type double, the output is correspondingly of the
		complex double type as well:
		
		>>> b = np.array([1,2,3],np.double)
		
		>>> bc = np.lib.scimath._tocomplex(b); bc
		array([ 1.+0.j,  2.+0.j,  3.+0.j])
		
		>>> bc.dtype
		dtype('complex128')
		
		Note that even if the input was complex to begin with, a copy is still
		made, since the astype() method always copies:
		
		>>> c = np.array([1,2,3],np.csingle)
		
		>>> cc = np.lib.scimath._tocomplex(c); cc
		array([ 1.+0.j,  2.+0.j,  3.+0.j], dtype=complex64)
		
		>>> c *= 2; c
		array([ 2.+0.j,  4.+0.j,  6.+0.j], dtype=complex64)
		
		>>> cc
		array([ 1.+0.j,  2.+0.j,  3.+0.j], dtype=complex64)
	**/
	static public function _tocomplex(arr:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Test whether any array element along a given axis evaluates to True.
		
		Returns single boolean unless `axis` is not ``None``
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a logical OR reduction is performed.
		    The default (`axis` = `None`) is to perform a logical OR over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternate output array in which to place the result.  It must have
		    the same shape as the expected output and its type is preserved
		    (e.g., if it is of type float, then it will remain so, returning
		    1.0 for True and 0.0 for False, regardless of the type of `a`).
		    See `doc.ufuncs` (Section "Output arguments") for details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		any : bool or ndarray
		    A new boolean or `ndarray` is returned unless `out` is specified,
		    in which case a reference to `out` is returned.
		
		See Also
		--------
		ndarray.any : equivalent method
		
		all : Test whether all elements along a given axis evaluate to True.
		
		Notes
		-----
		Not a Number (NaN), positive infinity and negative infinity evaluate
		to `True` because these are not equal to zero.
		
		Examples
		--------
		>>> np.any([[True, False], [True, True]])
		True
		
		>>> np.any([[True, False], [False, False]], axis=0)
		array([ True, False], dtype=bool)
		
		>>> np.any([-1, 0, 5])
		True
		
		>>> np.any(np.nan)
		True
		
		>>> o=np.array([False])
		>>> z=np.any([-1, 4, 5], out=o)
		>>> z, o
		(array([ True], dtype=bool), array([ True], dtype=bool))
		>>> # Check now that z is a reference to o
		>>> z is o
		True
		>>> id(z), id(o) # identity of z and o              # doctest: +SKIP
		(191614240, 191614240)
	**/
	static public function any(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Compute the inverse cosine of x.
		
		Return the "principal value" (for a description of this, see
		`numpy.arccos`) of the inverse cosine of `x`. For real `x` such that
		`abs(x) <= 1`, this is a real number in the closed interval
		:math:`[0, \pi]`.  Otherwise, the complex principle value is returned.
		
		Parameters
		----------
		x : array_like or scalar
		   The value(s) whose arccos is (are) required.
		
		Returns
		-------
		out : ndarray or scalar
		   The inverse cosine(s) of the `x` value(s). If `x` was a scalar, so
		   is `out`, otherwise an array object is returned.
		
		See Also
		--------
		numpy.arccos
		
		Notes
		-----
		For an arccos() that returns ``NAN`` when real `x` is not in the
		interval ``[-1,1]``, use `numpy.arccos`.
		
		Examples
		--------
		>>> np.set_printoptions(precision=4)
		
		>>> np.emath.arccos(1) # a scalar is returned
		0.0
		
		>>> np.emath.arccos([1,2])
		array([ 0.-0.j   ,  0.+1.317j])
	**/
	static public function arccos(x:Dynamic):Dynamic;
	/**
		Compute the inverse sine of x.
		
		Return the "principal value" (for a description of this, see
		`numpy.arcsin`) of the inverse sine of `x`. For real `x` such that
		`abs(x) <= 1`, this is a real number in the closed interval
		:math:`[-\pi/2, \pi/2]`.  Otherwise, the complex principle value is
		returned.
		
		Parameters
		----------
		x : array_like or scalar
		   The value(s) whose arcsin is (are) required.
		
		Returns
		-------
		out : ndarray or scalar
		   The inverse sine(s) of the `x` value(s). If `x` was a scalar, so
		   is `out`, otherwise an array object is returned.
		
		See Also
		--------
		numpy.arcsin
		
		Notes
		-----
		For an arcsin() that returns ``NAN`` when real `x` is not in the
		interval ``[-1,1]``, use `numpy.arcsin`.
		
		Examples
		--------
		>>> np.set_printoptions(precision=4)
		
		>>> np.emath.arcsin(0)
		0.0
		
		>>> np.emath.arcsin([0,1])
		array([ 0.    ,  1.5708])
	**/
	static public function arcsin(x:Dynamic):Dynamic;
	/**
		Compute the inverse hyperbolic tangent of `x`.
		
		Return the "principal value" (for a description of this, see
		`numpy.arctanh`) of `arctanh(x)`. For real `x` such that
		`abs(x) < 1`, this is a real number.  If `abs(x) > 1`, or if `x` is
		complex, the result is complex. Finally, `x = 1` returns``inf`` and
		`x=-1` returns ``-inf``.
		
		Parameters
		----------
		x : array_like
		   The value(s) whose arctanh is (are) required.
		
		Returns
		-------
		out : ndarray or scalar
		   The inverse hyperbolic tangent(s) of the `x` value(s). If `x` was
		   a scalar so is `out`, otherwise an array is returned.
		
		
		See Also
		--------
		numpy.arctanh
		
		Notes
		-----
		For an arctanh() that returns ``NAN`` when real `x` is not in the
		interval ``(-1,1)``, use `numpy.arctanh` (this latter, however, does
		return +/-inf for `x = +/-1`).
		
		Examples
		--------
		>>> np.set_printoptions(precision=4)
		
		>>> np.emath.arctanh(np.matrix(np.eye(2)))
		array([[ Inf,   0.],
		       [  0.,  Inf]])
		>>> np.emath.arctanh([1j])
		array([ 0.+0.7854j])
	**/
	static public function arctanh(x:Dynamic):Dynamic;
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
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Ndarray;
	static public var division : Dynamic;
	/**
		Returns a bool array, where True if input element is real.
		
		If element has complex type with zero complex part, the return value
		for that element is True.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray, bool
		    Boolean array of same shape as `x`.
		
		See Also
		--------
		iscomplex
		isrealobj : Return True if x is not a complex type.
		
		Examples
		--------
		>>> np.isreal([1+1j, 1+0j, 4.5, 3, 2, 2j])
		array([False,  True,  True,  True,  True, False], dtype=bool)
	**/
	static public function isreal(x:Dynamic):Dynamic;
	/**
		Compute the natural logarithm of `x`.
		
		Return the "principal value" (for a description of this, see `numpy.log`)
		of :math:`log_e(x)`. For real `x > 0`, this is a real number (``log(0)``
		returns ``-inf`` and ``log(np.inf)`` returns ``inf``). Otherwise, the
		complex principle value is returned.
		
		Parameters
		----------
		x : array_like
		   The value(s) whose log is (are) required.
		
		Returns
		-------
		out : ndarray or scalar
		   The log of the `x` value(s). If `x` was a scalar, so is `out`,
		   otherwise an array is returned.
		
		See Also
		--------
		numpy.log
		
		Notes
		-----
		For a log() that returns ``NAN`` when real `x < 0`, use `numpy.log`
		(note, however, that otherwise `numpy.log` and this `log` are identical,
		i.e., both return ``-inf`` for `x = 0`, ``inf`` for `x = inf`, and,
		notably, the complex principle value if ``x.imag != 0``).
		
		Examples
		--------
		>>> np.emath.log(np.exp(1))
		1.0
		
		Negative arguments are handled "correctly" (recall that
		``exp(log(x)) == x`` does *not* hold for real ``x < 0``):
		
		>>> np.emath.log(-np.exp(1)) == (1 + np.pi * 1j)
		True
	**/
	static public function log(x:Dynamic):Dynamic;
	/**
		Compute the logarithm base 10 of `x`.
		
		Return the "principal value" (for a description of this, see
		`numpy.log10`) of :math:`log_{10}(x)`. For real `x > 0`, this
		is a real number (``log10(0)`` returns ``-inf`` and ``log10(np.inf)``
		returns ``inf``). Otherwise, the complex principle value is returned.
		
		Parameters
		----------
		x : array_like or scalar
		   The value(s) whose log base 10 is (are) required.
		
		Returns
		-------
		out : ndarray or scalar
		   The log base 10 of the `x` value(s). If `x` was a scalar, so is `out`,
		   otherwise an array object is returned.
		
		See Also
		--------
		numpy.log10
		
		Notes
		-----
		For a log10() that returns ``NAN`` when real `x < 0`, use `numpy.log10`
		(note, however, that otherwise `numpy.log10` and this `log10` are
		identical, i.e., both return ``-inf`` for `x = 0`, ``inf`` for `x = inf`,
		and, notably, the complex principle value if ``x.imag != 0``).
		
		Examples
		--------
		
		(We set the printing precision so the example can be auto-tested)
		
		>>> np.set_printoptions(precision=4)
		
		>>> np.emath.log10(10**1)
		1.0
		
		>>> np.emath.log10([-10**1, -10**2, 10**2])
		array([ 1.+1.3644j,  2.+1.3644j,  2.+0.j    ])
	**/
	static public function log10(x:Dynamic):Dynamic;
	/**
		Compute the logarithm base 2 of `x`.
		
		Return the "principal value" (for a description of this, see
		`numpy.log2`) of :math:`log_2(x)`. For real `x > 0`, this is
		a real number (``log2(0)`` returns ``-inf`` and ``log2(np.inf)`` returns
		``inf``). Otherwise, the complex principle value is returned.
		
		Parameters
		----------
		x : array_like
		   The value(s) whose log base 2 is (are) required.
		
		Returns
		-------
		out : ndarray or scalar
		   The log base 2 of the `x` value(s). If `x` was a scalar, so is `out`,
		   otherwise an array is returned.
		
		See Also
		--------
		numpy.log2
		
		Notes
		-----
		For a log2() that returns ``NAN`` when real `x < 0`, use `numpy.log2`
		(note, however, that otherwise `numpy.log2` and this `log2` are
		identical, i.e., both return ``-inf`` for `x = 0`, ``inf`` for `x = inf`,
		and, notably, the complex principle value if ``x.imag != 0``).
		
		Examples
		--------
		We set the printing precision so the example can be auto-tested:
		
		>>> np.set_printoptions(precision=4)
		
		>>> np.emath.log2(8)
		3.0
		>>> np.emath.log2([-4, -8, 8])
		array([ 2.+4.5324j,  3.+4.5324j,  3.+0.j    ])
	**/
	static public function log2(x:Dynamic):Dynamic;
	/**
		Take log base n of x.
		
		If `x` contains negative inputs, the answer is computed and returned in the
		complex domain.
		
		Parameters
		----------
		n : int
		   The base in which the log is taken.
		x : array_like
		   The value(s) whose log base `n` is (are) required.
		
		Returns
		-------
		out : ndarray or scalar
		   The log base `n` of the `x` value(s). If `x` was a scalar, so is
		   `out`, otherwise an array is returned.
		
		Examples
		--------
		>>> np.set_printoptions(precision=4)
		
		>>> np.lib.scimath.logn(2, [4, 8])
		array([ 2.,  3.])
		>>> np.lib.scimath.logn(2, [-4, -8, 8])
		array([ 2.+4.5324j,  3.+4.5324j,  3.+0.j    ])
	**/
	static public function logn(n:Dynamic, x:Dynamic):Dynamic;
	/**
		Return x to the power p, (x**p).
		
		If `x` contains negative values, the output is converted to the
		complex domain.
		
		Parameters
		----------
		x : array_like
		    The input value(s).
		p : array_like of ints
		    The power(s) to which `x` is raised. If `x` contains multiple values,
		    `p` has to either be a scalar, or contain the same number of values
		    as `x`. In the latter case, the result is
		    ``x[0]**p[0], x[1]**p[1], ...``.
		
		Returns
		-------
		out : ndarray or scalar
		    The result of ``x**p``. If `x` and `p` are scalars, so is `out`,
		    otherwise an array is returned.
		
		See Also
		--------
		numpy.power
		
		Examples
		--------
		>>> np.set_printoptions(precision=4)
		
		>>> np.lib.scimath.power([2, 4], 2)
		array([ 4, 16])
		>>> np.lib.scimath.power([2, 4], -2)
		array([ 0.25  ,  0.0625])
		>>> np.lib.scimath.power([-2, 4], 2)
		array([  4.+0.j,  16.+0.j])
	**/
	static public function power(x:Dynamic, p:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute the square root of x.
		
		For negative input elements, a complex value is returned
		(unlike `numpy.sqrt` which returns NaN).
		
		Parameters
		----------
		x : array_like
		   The input value(s).
		
		Returns
		-------
		out : ndarray or scalar
		   The square root of `x`. If `x` was a scalar, so is `out`,
		   otherwise an array is returned.
		
		See Also
		--------
		numpy.sqrt
		
		Examples
		--------
		For real, non-negative inputs this works just like `numpy.sqrt`:
		
		>>> np.lib.scimath.sqrt(1)
		1.0
		>>> np.lib.scimath.sqrt([1, 4])
		array([ 1.,  2.])
		
		But it automatically handles negative inputs:
		
		>>> np.lib.scimath.sqrt(-1)
		(0.0+1.0j)
		>>> np.lib.scimath.sqrt([-1,4])
		array([ 0.+1.j,  2.+0.j])
	**/
	static public function sqrt(x:Dynamic):Dynamic;
}