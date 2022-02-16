/* This file is generated, do not edit! */
package numpy.core.getlimits;
@:pythonImport("numpy.core.getlimits") extern class Getlimits_Module {
	static public var NaN : Dynamic;
	static public var _KNOWN_TYPES : Dynamic;
	static public var _MACHAR_PARAMS : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _convert_to_float : Dynamic;
	/**
		Create MachAr instance with found information on float types
		    
	**/
	static public function _discovered_machar(ftype:Dynamic):Dynamic;
	static public var _float_ma : Dynamic;
	/**
		fix rank-0 --> rank-1
	**/
	static public function _fr0(a:Dynamic):Dynamic;
	/**
		fix rank > 0 --> rank-0
	**/
	static public function _fr1(a:Dynamic):Dynamic;
	/**
		Get MachAr instance or MachAr-like instance
		
		Get parameters for floating point type, by first trying signatures of
		various known floating point types, then, if none match, attempting to
		identify parameters by analysis.
		
		Parameters
		----------
		ftype : class
		    Numpy floating point type class (e.g. ``np.float64``)
		
		Returns
		-------
		ma_like : instance of :class:`MachAr` or :class:`MachArLike`
		    Object giving floating point parameters for `ftype`.
		
		Warns
		-----
		UserWarning
		    If the binary signature of the float type is not in the dictionary of
		    known float types.
	**/
	static public function _get_machar(ftype:Dynamic):Dynamic;
	static public function _register_known_types():Dynamic;
	static public function _register_type(machar:Dynamic, bytepat:Dynamic):Dynamic;
	static public var _title_fmt : Dynamic;
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
	/**
		exp2(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate `2**p` for all `p` in the input array.
		
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
		out : ndarray or scalar
		    Element-wise 2 to the power `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		power
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		
		
		Examples
		--------
		>>> np.exp2([2, 3])
		array([ 4.,  8.])
	**/
	static public function exp2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var inf : Dynamic;
	/**
		isnan(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for NaN and return result as a boolean array.
		
		Parameters
		----------
		x : array_like
		    Input array.
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
		y : ndarray or bool
		    True where ``x`` is NaN, false otherwise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		isinf, isneginf, isposinf, isfinite, isnat
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		
		Examples
		--------
		>>> np.isnan(np.nan)
		True
		>>> np.isnan(np.inf)
		False
		>>> np.isnan([np.log(-1.),1.,np.log(0)])
		array([ True, False, False])
	**/
	static public function isnan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log10(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the base 10 logarithm of the input array, element-wise.
		
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
		y : ndarray
		    The logarithm to the base 10 of `x`, element-wise. NaNs are
		    returned where x is negative.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		emath.log10
		
		Notes
		-----
		Logarithm is a multivalued function: for each `x` there is an infinite
		number of `z` such that `10**z = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi, pi]`.
		
		For real-valued input data types, `log10` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `log10` is a complex analytical function that
		has a branch cut `[-inf, 0]` and is continuous from above on it.
		`log10` handles the floating-point negative zero as an infinitesimal
		negative number, conforming to the C99 standard.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 67.
		       https://personal.math.ubc.ca/~cbm/aands/page_67.htm
		.. [2] Wikipedia, "Logarithm". https://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log10([1e-15, -3.])
		array([-15.,  nan])
	**/
	static public function log10(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nextafter(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the next floating-point value after x1 towards x2, element-wise.
		
		Parameters
		----------
		x1 : array_like
		    Values to find the next representable value of.
		x2 : array_like
		    The direction where to look for the next representable value of `x1`.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
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
		out : ndarray or scalar
		    The next representable values of `x1` in the direction of `x2`.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		Examples
		--------
		>>> eps = np.finfo(np.float64).eps
		>>> np.nextafter(1, 2) == eps + 1
		True
		>>> np.nextafter([1, 2], [2, 1]) == [eps + 1, 2 - eps]
		array([ True,  True])
	**/
	static public function nextafter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Decorator for overriding __module__ on a function or class.
		
		Example usage::
		
		    @set_module('numpy')
		    def example():
		        pass
		
		    assert example.__module__ == 'numpy'
	**/
	static public function set_module(module:Dynamic):Dynamic;
}