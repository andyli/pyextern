/* This file is generated, do not edit! */
package scipy.misc.common;
@:pythonImport("scipy.misc.common") extern class Common_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		arange([start,] stop[, step,], dtype=None)
		
		Return evenly spaced values within a given interval.
		
		Values are generated within the half-open interval ``[start, stop)``
		(in other words, the interval including `start` but excluding `stop`).
		For integer arguments the function is equivalent to the Python built-in
		`range <http://docs.python.org/lib/built-in-funcs.html>`_ function,
		but returns an ndarray rather than a list.
		
		When using a non-integer step, such as 0.1, the results will often not
		be consistent.  It is better to use ``linspace`` for these cases.
		
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
		    step size is 1.  If `step` is specified, `start` must also be given.
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
	/**
		Get an 8-bit grayscale bit-depth, 512 x 512 derived image for easy use in demos
		
		The image is derived from accent-to-the-top.jpg at
		http://www.public-domain-image.com/people-public-domain-images-pictures/
		
		Parameters
		----------
		None
		
		Returns
		-------
		ascent : ndarray
		   convenient image to use for testing and demonstration
		
		Examples
		--------
		>>> import scipy.misc
		>>> ascent = scipy.misc.ascent()
		>>> ascent.shape
		(512, 512)
		>>> ascent.max()
		255
		
		>>> import matplotlib.pyplot as plt
		>>> plt.gray()
		>>> plt.imshow(ascent)
		>>> plt.show()
	**/
	static public function ascent():Dynamic;
	/**
		Return weights for an Np-point central derivative.
		
		Assumes equally-spaced function points.
		
		If weights are in the vector w, then
		derivative is w[0] * f(x-ho*dx) + ... + w[-1] * f(x+h0*dx)
		
		Parameters
		----------
		Np : int
		    Number of points for the central derivative.
		ndiv : int, optional
		    Number of divisions.  Default is 1.
		
		Notes
		-----
		Can be inaccurate for large number of points.
	**/
	static public function central_diff_weights(Np:Dynamic, ?ndiv:Dynamic):Dynamic;
	/**
		Find the n-th derivative of a function at a point.
		
		Given a function, use a central difference formula with spacing `dx` to
		compute the `n`-th derivative at `x0`.
		
		Parameters
		----------
		func : function
		    Input function.
		x0 : float
		    The point at which `n`-th derivative is found.
		dx : float, optional
		    Spacing.
		n : int, optional
		    Order of the derivative. Default is 1.
		args : tuple, optional
		    Arguments
		order : int, optional
		    Number of points to use, must be odd.
		
		Notes
		-----
		Decreasing the step size too small can result in round-off error.
		
		Examples
		--------
		>>> from scipy.misc import derivative
		>>> def f(x):
		...     return x**3 + x**2
		>>> derivative(f, 1.0, dx=1e-6)
		4.9999999999217337
	**/
	static public function derivative(func:Dynamic, x0:Dynamic, ?dx:Dynamic, ?n:Dynamic, ?args:Dynamic, ?order:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Get a 1024 x 768, color image of a raccoon face.
		
		raccoon-procyon-lotor.jpg at http://www.public-domain-image.com
		
		Parameters
		----------
		gray : bool, optional
		    If True return 8-bit grey-scale image, otherwise return a color image
		
		Returns
		-------
		face : ndarray
		    image of a racoon face
		
		Examples
		--------
		>>> import scipy.misc
		>>> face = scipy.misc.face()
		>>> face.shape
		(768, 1024, 3)
		>>> face.max()
		255
		>>> face.dtype
		dtype('uint8')
		
		>>> import matplotlib.pyplot as plt
		>>> plt.gray()
		>>> plt.imshow(face)
		>>> plt.show()
	**/
	static public function face(?gray:Dynamic):Dynamic;
	/**
		fromstring(string, dtype=float, count=-1, sep='')
		
		A new 1-D array initialized from raw binary or text data in a string.
		
		Parameters
		----------
		string : str
		    A string containing the data.
		dtype : data-type, optional
		    The data type of the array; default: float.  For binary input data,
		    the data must be in exactly this format.
		count : int, optional
		    Read this number of `dtype` elements from the data.  If this is
		    negative (the default), the count will be determined from the
		    length of the data.
		sep : str, optional
		    If not provided or, equivalently, the empty string, the data will
		    be interpreted as binary data; otherwise, as ASCII text with
		    decimal numbers.  Also in this latter case, this argument is
		    interpreted as the string separating numbers in the data; extra
		    whitespace between elements is also ignored.
		
		Returns
		-------
		arr : ndarray
		    The constructed array.
		
		Raises
		------
		ValueError
		    If the string is not the correct size to satisfy the requested
		    `dtype` and `count`.
		
		See Also
		--------
		frombuffer, fromfile, fromiter
		
		Examples
		--------
		>>> np.fromstring('\x01\x02', dtype=np.uint8)
		array([1, 2], dtype=uint8)
		>>> np.fromstring('1 2', dtype=int, sep=' ')
		array([1, 2])
		>>> np.fromstring('1, 2', dtype=int, sep=',')
		array([1, 2])
		>>> np.fromstring('\x01\x02\x03\x04\x05', dtype=np.uint8, count=3)
		array([1, 2, 3], dtype=uint8)
	**/
	static public function fromstring(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Stack arrays in sequence horizontally (column wise).
		
		Take a sequence of arrays and stack them horizontally to make
		a single array. Rebuild arrays divided by `hsplit`.
		
		This function continues to be supported for backward compatibility, but
		you should prefer ``np.concatenate`` or ``np.stack``. The ``np.stack``
		function was added in NumPy 1.10.
		
		Parameters
		----------
		tup : sequence of ndarrays
		    All arrays must have the same shape along all but the second axis.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays.
		
		See Also
		--------
		stack : Join a sequence of arrays along a new axis.
		vstack : Stack arrays in sequence vertically (row wise).
		dstack : Stack arrays in sequence depth wise (along third axis).
		concatenate : Join a sequence of arrays along an existing axis.
		hsplit : Split array along second axis.
		block : Assemble arrays from blocks.
		
		Notes
		-----
		Equivalent to ``np.concatenate(tup, axis=1)`` if `tup` contains arrays that
		are at least 2-dimensional.
		
		Examples
		--------
		>>> a = np.array((1,2,3))
		>>> b = np.array((2,3,4))
		>>> np.hstack((a,b))
		array([1, 2, 3, 2, 3, 4])
		>>> a = np.array([[1],[2],[3]])
		>>> b = np.array([[2],[3],[4]])
		>>> np.hstack((a,b))
		array([[1, 2],
		       [2, 3],
		       [3, 4]])
	**/
	static public function hstack(tup:Dynamic):Dynamic;
	/**
		Function that previously returned an example image
		
		.. note:: Removed in 0.17
		
		Parameters
		----------
		None
		
		Returns
		-------
		None
		
		Raises
		------
		RuntimeError
		    This functionality has been removed due to licensing reasons.
		
		Notes
		-----
		The image previously returned by this function has an incompatible license
		and has been removed from SciPy. Please use `face` or `ascent` instead.
		
		See Also
		--------
		face, ascent
	**/
	static public function lena():Dynamic;
	static public var newaxis : Dynamic;
	static public var print_function : Dynamic;
	/**
		Return the product of array elements over a given axis.
		
		See Also
		--------
		prod : equivalent function; see for details.
	**/
	static public function product(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
}