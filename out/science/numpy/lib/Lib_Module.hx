/* This file is generated, do not edit! */
package numpy.lib;
@:pythonImport("numpy.lib") extern class Lib_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		add_docstring(obj, docstring)
		
		Add a docstring to a built-in obj if possible.
		If the obj already has a docstring raise a RuntimeError
		If this routine does not know how to add a docstring to the object
		raise a TypeError
	**/
	static public function add_docstring(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Add documentation to an existing object, typically one defined in C
		
		The purpose is to allow easier editing of the docstrings without requiring
		a re-compile. This exists primarily for internal use within numpy itself.
		
		Parameters
		----------
		place : str
		    The absolute name of the module to import from
		obj : str
		    The name of the object to add documentation to, typically a class or
		    function name
		doc : {str, Tuple[str, str], List[Tuple[str, str]]}
		    If a string, the documentation to apply to `obj`
		
		    If a tuple, then the first element is interpreted as an attribute of
		    `obj` and the second as the docstring to apply - ``(method, docstring)``
		
		    If a list, then each element of the list should be a tuple of length
		    two - ``[(method1, docstring1), (method2, docstring2), ...]``
		warn_on_python : bool
		    If True, the default, emit `UserWarning` if this is used to attach
		    documentation to a pure-python object.
		
		Notes
		-----
		This routine never raises an error if the docstring can't be written, but
		will raise an error if the object being documented does not exist.
		
		This routine cannot modify read-only docstrings, as appear
		in new-style classes or built-in functions. Because this
		routine never raises an error the caller must check manually
		that the docstrings were changed.
		
		Since this function grabs the ``char *`` from a c-level str object and puts
		it into the ``tp_doc`` slot of the type of `obj`, it violates a number of
		C-API best-practices, by:
		
		- modifying a `PyTypeObject` after calling `PyType_Ready`
		- calling `Py_INCREF` on the str and losing the reference, so the str
		  will never be released
		
		If possible it should be avoided.
	**/
	static public function add_newdoc(place:Dynamic, obj:Dynamic, doc:Dynamic, ?warn_on_python:Dynamic):Dynamic;
	/**
		add_ufunc_docstring(ufunc, new_docstring)
		
		Replace the docstring for a ufunc with new_docstring.
		This method will only work if the current docstring for
		the ufunc is NULL. (At the C level, i.e. when ufunc->doc is NULL.)
		
		Parameters
		----------
		ufunc : numpy.ufunc
		    A ufunc whose current doc is NULL.
		new_docstring : string
		    The new docstring for the ufunc.
		
		Notes
		-----
		This method allocates memory for new_docstring on
		the heap. Technically this creates a mempory leak, since this
		memory will not be reclaimed until the end of the program
		even if the ufunc itself is removed. However this will only
		be a problem if the user is repeatedly creating ufuncs with
		no documentation, adding documentation via add_newdoc_ufunc,
		and then throwing away the ufunc.
	**/
	static public function add_newdoc_ufunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the angle of the complex argument.
		
		Parameters
		----------
		z : array_like
		    A complex number or sequence of complex numbers.
		deg : bool, optional
		    Return angle in degrees if True, radians if False (default).
		
		Returns
		-------
		angle : ndarray or scalar
		    The counterclockwise angle from the positive real axis on the complex
		    plane in the range ``(-pi, pi]``, with dtype as numpy.float64.
		
		    .. versionchanged:: 1.16.0
		        This function works on subclasses of ndarray like `ma.array`.
		
		See Also
		--------
		arctan2
		absolute
		
		Notes
		-----
		Although the angle of the complex number 0 is undefined, ``numpy.angle(0)``
		returns the value 0.
		
		Examples
		--------
		>>> np.angle([1.0, 1.0j, 1+1j])               # in radians
		array([ 0.        ,  1.57079633,  0.78539816]) # may vary
		>>> np.angle(1+1j, deg=True)                  # in degrees
		45.0
	**/
	static public function angle(z:Dynamic, ?deg:Dynamic):Dynamic;
	/**
		Append values to the end of an array.
		
		Parameters
		----------
		arr : array_like
		    Values are appended to a copy of this array.
		values : array_like
		    These values are appended to a copy of `arr`.  It must be of the
		    correct shape (the same shape as `arr`, excluding `axis`).  If
		    `axis` is not specified, `values` can be any shape and will be
		    flattened before use.
		axis : int, optional
		    The axis along which `values` are appended.  If `axis` is not
		    given, both `arr` and `values` are flattened before use.
		
		Returns
		-------
		append : ndarray
		    A copy of `arr` with `values` appended to `axis`.  Note that
		    `append` does not occur in-place: a new array is allocated and
		    filled.  If `axis` is None, `out` is a flattened array.
		
		See Also
		--------
		insert : Insert elements into an array.
		delete : Delete elements from an array.
		
		Examples
		--------
		>>> np.append([1, 2, 3], [[4, 5, 6], [7, 8, 9]])
		array([1, 2, 3, ..., 7, 8, 9])
		
		When `axis` is specified, `values` must have the correct shape.
		
		>>> np.append([[1, 2, 3], [4, 5, 6]], [[7, 8, 9]], axis=0)
		array([[1, 2, 3],
		       [4, 5, 6],
		       [7, 8, 9]])
		>>> np.append([[1, 2, 3], [4, 5, 6]], [7, 8, 9], axis=0)
		Traceback (most recent call last):
		    ...
		ValueError: all the input arrays must have same number of dimensions, but
		the array at index 0 has 2 dimension(s) and the array at index 1 has 1
		dimension(s)
	**/
	static public function append(arr:Dynamic, values:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Apply a function to 1-D slices along the given axis.
		
		Execute `func1d(a, *args, **kwargs)` where `func1d` operates on 1-D arrays
		and `a` is a 1-D slice of `arr` along `axis`.
		
		This is equivalent to (but faster than) the following use of `ndindex` and
		`s_`, which sets each of ``ii``, ``jj``, and ``kk`` to a tuple of indices::
		
		    Ni, Nk = a.shape[:axis], a.shape[axis+1:]
		    for ii in ndindex(Ni):
		        for kk in ndindex(Nk):
		            f = func1d(arr[ii + s_[:,] + kk])
		            Nj = f.shape
		            for jj in ndindex(Nj):
		                out[ii + jj + kk] = f[jj]
		
		Equivalently, eliminating the inner loop, this can be expressed as::
		
		    Ni, Nk = a.shape[:axis], a.shape[axis+1:]
		    for ii in ndindex(Ni):
		        for kk in ndindex(Nk):
		            out[ii + s_[...,] + kk] = func1d(arr[ii + s_[:,] + kk])
		
		Parameters
		----------
		func1d : function (M,) -> (Nj...)
		    This function should accept 1-D arrays. It is applied to 1-D
		    slices of `arr` along the specified axis.
		axis : integer
		    Axis along which `arr` is sliced.
		arr : ndarray (Ni..., M, Nk...)
		    Input array.
		args : any
		    Additional arguments to `func1d`.
		kwargs : any
		    Additional named arguments to `func1d`.
		
		    .. versionadded:: 1.9.0
		
		
		Returns
		-------
		out : ndarray  (Ni..., Nj..., Nk...)
		    The output array. The shape of `out` is identical to the shape of
		    `arr`, except along the `axis` dimension. This axis is removed, and
		    replaced with new dimensions equal to the shape of the return value
		    of `func1d`. So if `func1d` returns a scalar `out` will have one
		    fewer dimensions than `arr`.
		
		See Also
		--------
		apply_over_axes : Apply a function repeatedly over multiple axes.
		
		Examples
		--------
		>>> def my_func(a):
		...     """Average first and last element of a 1-D array"""
		...     return (a[0] + a[-1]) * 0.5
		>>> b = np.array([[1,2,3], [4,5,6], [7,8,9]])
		>>> np.apply_along_axis(my_func, 0, b)
		array([4., 5., 6.])
		>>> np.apply_along_axis(my_func, 1, b)
		array([2.,  5.,  8.])
		
		For a function that returns a 1D array, the number of dimensions in
		`outarr` is the same as `arr`.
		
		>>> b = np.array([[8,1,7], [4,3,9], [5,2,6]])
		>>> np.apply_along_axis(sorted, 1, b)
		array([[1, 7, 8],
		       [3, 4, 9],
		       [2, 5, 6]])
		
		For a function that returns a higher dimensional array, those dimensions
		are inserted in place of the `axis` dimension.
		
		>>> b = np.array([[1,2,3], [4,5,6], [7,8,9]])
		>>> np.apply_along_axis(np.diag, -1, b)
		array([[[1, 0, 0],
		        [0, 2, 0],
		        [0, 0, 3]],
		       [[4, 0, 0],
		        [0, 5, 0],
		        [0, 0, 6]],
		       [[7, 0, 0],
		        [0, 8, 0],
		        [0, 0, 9]]])
	**/
	static public function apply_along_axis(func1d:Dynamic, axis:Dynamic, arr:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply a function repeatedly over multiple axes.
		
		`func` is called as `res = func(a, axis)`, where `axis` is the first
		element of `axes`.  The result `res` of the function call must have
		either the same dimensions as `a` or one less dimension.  If `res`
		has one less dimension than `a`, a dimension is inserted before
		`axis`.  The call to `func` is then repeated for each axis in `axes`,
		with `res` as the first argument.
		
		Parameters
		----------
		func : function
		    This function must take two arguments, `func(a, axis)`.
		a : array_like
		    Input array.
		axes : array_like
		    Axes over which `func` is applied; the elements must be integers.
		
		Returns
		-------
		apply_over_axis : ndarray
		    The output array.  The number of dimensions is the same as `a`,
		    but the shape can be different.  This depends on whether `func`
		    changes the shape of its output with respect to its input.
		
		See Also
		--------
		apply_along_axis :
		    Apply a function to 1-D slices of an array along the given axis.
		
		Notes
		-----
		This function is equivalent to tuple axis arguments to reorderable ufuncs
		with keepdims=True. Tuple axis arguments to ufuncs have been available since
		version 1.7.0.
		
		Examples
		--------
		>>> a = np.arange(24).reshape(2,3,4)
		>>> a
		array([[[ 0,  1,  2,  3],
		        [ 4,  5,  6,  7],
		        [ 8,  9, 10, 11]],
		       [[12, 13, 14, 15],
		        [16, 17, 18, 19],
		        [20, 21, 22, 23]]])
		
		Sum over axes 0 and 2. The result has same number of dimensions
		as the original array:
		
		>>> np.apply_over_axes(np.sum, a, [0,2])
		array([[[ 60],
		        [ 92],
		        [124]]])
		
		Tuple axis arguments to ufuncs are equivalent:
		
		>>> np.sum(a, axis=(0,2), keepdims=True)
		array([[[ 60],
		        [ 92],
		        [124]]])
	**/
	static public function apply_over_axes(func:Dynamic, a:Dynamic, axes:Dynamic):numpy.Ndarray;
	/**
		Split an array into multiple sub-arrays.
		
		Please refer to the ``split`` documentation.  The only difference
		between these functions is that ``array_split`` allows
		`indices_or_sections` to be an integer that does *not* equally
		divide the axis. For an array of length l that should be split
		into n sections, it returns l % n sub-arrays of size l//n + 1
		and the rest of size l//n.
		
		See Also
		--------
		split : Split array into multiple sub-arrays of equal size.
		
		Examples
		--------
		>>> x = np.arange(8.0)
		>>> np.array_split(x, 3)
		[array([0.,  1.,  2.]), array([3.,  4.,  5.]), array([6.,  7.])]
		
		>>> x = np.arange(9)
		>>> np.array_split(x, 4)
		[array([0, 1, 2]), array([3, 4]), array([5, 6]), array([7, 8])]
	**/
	static public function array_split(ary:Dynamic, indices_or_sections:Dynamic, ?axis:Dynamic):Dynamic;
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
		order : {'C', 'F', 'A', 'K'}, optional
		    Memory layout.  'A' and 'K' depend on the order of input array a.
		    'C' row-major (C-style),
		    'F' column-major (Fortran-style) memory representation.
		    'A' (any) means 'F' if `a` is Fortran contiguous, 'C' otherwise
		    'K' (keep) preserve input order
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
		...     print('ValueError')
		...
		ValueError
	**/
	static public function asarray_chkfinite(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Ndarray;
	/**
		Return an array converted to a float type.
		
		Parameters
		----------
		a : array_like
		    The input array.
		dtype : str or dtype object, optional
		    Float type code to coerce input array `a`.  If `dtype` is one of the
		    'int' dtypes, it is replaced with float64.
		
		Returns
		-------
		out : ndarray
		    The input `a` as a float ndarray.
		
		Examples
		--------
		>>> np.asfarray([2, 3])
		array([2.,  3.])
		>>> np.asfarray([2, 3], dtype='float')
		array([2.,  3.])
		>>> np.asfarray([2, 3], dtype='int8')
		array([2.,  3.])
	**/
	static public function asfarray(a:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		Convert an array of size 1 to its scalar equivalent.
		
		.. deprecated:: 1.16
		
		    Deprecated, use `numpy.ndarray.item()` instead.
		
		Parameters
		----------
		a : ndarray
		    Input array of size 1.
		
		Returns
		-------
		out : scalar
		    Scalar representation of `a`. The output data type is the same type
		    returned by the input's `item` method.
		
		Examples
		--------
		>>> np.asscalar(np.array([24]))
		24
	**/
	static public function asscalar(a:Dynamic):Dynamic;
	/**
		Compute the weighted average along the specified axis.
		
		Parameters
		----------
		a : array_like
		    Array containing data to be averaged. If `a` is not an array, a
		    conversion is attempted.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which to average `a`.  The default,
		    axis=None, will average over all of the elements of the input array.
		    If axis is negative it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If axis is a tuple of ints, averaging is performed on all of the axes
		    specified in the tuple instead of a single axis or all the axes as
		    before.
		weights : array_like, optional
		    An array of weights associated with the values in `a`. Each value in
		    `a` contributes to the average according to its associated weight.
		    The weights array can either be 1-D (in which case its length must be
		    the size of `a` along the given axis) or of the same shape as `a`.
		    If `weights=None`, then all data in `a` are assumed to have a
		    weight equal to one.  The 1-D calculation is::
		
		        avg = sum(a * weights) / sum(weights)
		
		    The only constraint on `weights` is that `sum(weights)` must not be 0.
		returned : bool, optional
		    Default is `False`. If `True`, the tuple (`average`, `sum_of_weights`)
		    is returned, otherwise only the average is returned.
		    If `weights=None`, `sum_of_weights` is equivalent to the number of
		    elements over which the average is taken.
		
		Returns
		-------
		retval, [sum_of_weights] : array_type or double
		    Return the average along the specified axis. When `returned` is `True`,
		    return a tuple with the average as the first element and the sum
		    of the weights as the second element. `sum_of_weights` is of the
		    same type as `retval`. The result dtype follows a genereal pattern.
		    If `weights` is None, the result dtype will be that of `a` , or ``float64``
		    if `a` is integral. Otherwise, if `weights` is not None and `a` is non-
		    integral, the result type will be the type of lowest precision capable of
		    representing values of both `a` and `weights`. If `a` happens to be
		    integral, the previous rules still applies but the result dtype will
		    at least be ``float64``.
		
		Raises
		------
		ZeroDivisionError
		    When all weights along axis are zero. See `numpy.ma.average` for a
		    version robust to this type of error.
		TypeError
		    When the length of 1D `weights` is not the same as the shape of `a`
		    along axis.
		
		See Also
		--------
		mean
		
		ma.average : average for masked arrays -- useful if your data contains
		             "missing" values
		numpy.result_type : Returns the type that results from applying the
		                    numpy type promotion rules to the arguments.
		
		Examples
		--------
		>>> data = np.arange(1, 5)
		>>> data
		array([1, 2, 3, 4])
		>>> np.average(data)
		2.5
		>>> np.average(np.arange(1, 11), weights=np.arange(10, 0, -1))
		4.0
		
		>>> data = np.arange(6).reshape((3,2))
		>>> data
		array([[0, 1],
		       [2, 3],
		       [4, 5]])
		>>> np.average(data, axis=1, weights=[1./4, 3./4])
		array([0.75, 2.75, 4.75])
		>>> np.average(data, weights=[1./4, 3./4])
		Traceback (most recent call last):
		    ...
		TypeError: Axis must be specified when shapes of a and weights differ.
		
		>>> a = np.ones(5, dtype=np.float128)
		>>> w = np.ones(5, dtype=np.complex64)
		>>> avg = np.average(a, weights=w)
		>>> print(avg.dtype)
		complex256
	**/
	static public function average(a:Dynamic, ?axis:Dynamic, ?weights:Dynamic, ?returned:Dynamic):Dynamic;
	/**
		Return the Bartlett window.
		
		The Bartlett window is very similar to a triangular window, except
		that the end points are at zero.  It is often used in signal
		processing for tapering a signal, without generating too much
		ripple in the frequency domain.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an
		    empty array is returned.
		
		Returns
		-------
		out : array
		    The triangular window, with the maximum value normalized to one
		    (the value one appears only if the number of samples is odd), with
		    the first and last samples equal to zero.
		
		See Also
		--------
		blackman, hamming, hanning, kaiser
		
		Notes
		-----
		The Bartlett window is defined as
		
		.. math:: w(n) = \frac{2}{M-1} \left(
		          \frac{M-1}{2} - \left|n - \frac{M-1}{2}\right|
		          \right)
		
		Most references to the Bartlett window come from the signal
		processing literature, where it is used as one of many windowing
		functions for smoothing values.  Note that convolution with this
		window produces linear interpolation.  It is also known as an
		apodization (which means"removing the foot", i.e. smoothing
		discontinuities at the beginning and end of the sampled signal) or
		tapering function. The fourier transform of the Bartlett is the product
		of two sinc functions.
		Note the excellent discussion in Kanasewich.
		
		References
		----------
		.. [1] M.S. Bartlett, "Periodogram Analysis and Continuous Spectra",
		       Biometrika 37, 1-16, 1950.
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics",
		       The University of Alberta Press, 1975, pp. 109-110.
		.. [3] A.V. Oppenheim and R.W. Schafer, "Discrete-Time Signal
		       Processing", Prentice-Hall, 1999, pp. 468-471.
		.. [4] Wikipedia, "Window function",
		       https://en.wikipedia.org/wiki/Window_function
		.. [5] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 429.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> np.bartlett(12)
		array([ 0.        ,  0.18181818,  0.36363636,  0.54545455,  0.72727273, # may vary
		        0.90909091,  0.90909091,  0.72727273,  0.54545455,  0.36363636,
		        0.18181818,  0.        ])
		
		Plot the window and its frequency response (requires SciPy and matplotlib):
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.bartlett(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Bartlett window")
		Text(0.5, 1.0, 'Bartlett window')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("Sample")
		Text(0.5, 0, 'Sample')
		>>> plt.show()
		
		>>> plt.figure()
		<Figure size 640x480 with 0 Axes>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> with np.errstate(divide='ignore', invalid='ignore'):
		...     response = 20 * np.log10(mag)
		...
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Bartlett window")
		Text(0.5, 1.0, 'Frequency response of Bartlett window')
		>>> plt.ylabel("Magnitude [dB]")
		Text(0, 0.5, 'Magnitude [dB]')
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		Text(0.5, 0, 'Normalized frequency [cycles per sample]')
		>>> _ = plt.axis('tight')
		>>> plt.show()
	**/
	static public function bartlett(M:Dynamic):Array<Dynamic>;
	/**
		bincount(x, /, weights=None, minlength=0)
		
		Count number of occurrences of each value in array of non-negative ints.
		
		The number of bins (of size 1) is one larger than the largest value in
		`x`. If `minlength` is specified, there will be at least this number
		of bins in the output array (though it will be longer if necessary,
		depending on the contents of `x`).
		Each bin gives the number of occurrences of its index value in `x`.
		If `weights` is specified the input array is weighted by it, i.e. if a
		value ``n`` is found at position ``i``, ``out[n] += weight[i]`` instead
		of ``out[n] += 1``.
		
		Parameters
		----------
		x : array_like, 1 dimension, nonnegative ints
		    Input array.
		weights : array_like, optional
		    Weights, array of the same shape as `x`.
		minlength : int, optional
		    A minimum number of bins for the output array.
		
		    .. versionadded:: 1.6.0
		
		Returns
		-------
		out : ndarray of ints
		    The result of binning the input array.
		    The length of `out` is equal to ``np.amax(x)+1``.
		
		Raises
		------
		ValueError
		    If the input is not 1-dimensional, or contains elements with negative
		    values, or if `minlength` is negative.
		TypeError
		    If the type of the input is float or complex.
		
		See Also
		--------
		histogram, digitize, unique
		
		Examples
		--------
		>>> np.bincount(np.arange(5))
		array([1, 1, 1, 1, 1])
		>>> np.bincount(np.array([0, 1, 1, 3, 2, 1, 7]))
		array([1, 3, 1, 1, 0, 0, 0, 1])
		
		>>> x = np.array([0, 1, 1, 3, 2, 1, 7, 23])
		>>> np.bincount(x).size == np.amax(x)+1
		True
		
		The input array needs to be of integer dtype, otherwise a
		TypeError is raised:
		
		>>> np.bincount(np.arange(5, dtype=float))
		Traceback (most recent call last):
		  ...
		TypeError: Cannot cast array data from dtype('float64') to dtype('int64')
		according to the rule 'safe'
		
		A possible use of ``bincount`` is to perform sums over
		variable-size chunks of an array, using the ``weights`` keyword.
		
		>>> w = np.array([0.3, 0.5, 0.2, 0.7, 1., -0.6]) # weights
		>>> x = np.array([0, 1, 1, 2, 2, 2])
		>>> np.bincount(x,  weights=w)
		array([ 0.3,  0.7,  1.1])
	**/
	static public function bincount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the Blackman window.
		
		The Blackman window is a taper formed by using the first three
		terms of a summation of cosines. It was designed to have close to the
		minimal leakage possible.  It is close to optimal, only slightly worse
		than a Kaiser window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		
		Returns
		-------
		out : ndarray
		    The window, with the maximum value normalized to one (the value one
		    appears only if the number of samples is odd).
		
		See Also
		--------
		bartlett, hamming, hanning, kaiser
		
		Notes
		-----
		The Blackman window is defined as
		
		.. math::  w(n) = 0.42 - 0.5 \cos(2\pi n/M) + 0.08 \cos(4\pi n/M)
		
		Most references to the Blackman window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function. It is known as a
		"near optimal" tapering function, almost as good (by some measures)
		as the kaiser window.
		
		References
		----------
		Blackman, R.B. and Tukey, J.W., (1958) The measurement of power spectra,
		Dover Publications, New York.
		
		Oppenheim, A.V., and R.W. Schafer. Discrete-Time Signal Processing.
		Upper Saddle River, NJ: Prentice-Hall, 1999, pp. 468-471.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> np.blackman(12)
		array([-1.38777878e-17,   3.26064346e-02,   1.59903635e-01, # may vary
		        4.14397981e-01,   7.36045180e-01,   9.67046769e-01,
		        9.67046769e-01,   7.36045180e-01,   4.14397981e-01,
		        1.59903635e-01,   3.26064346e-02,  -1.38777878e-17])
		
		Plot the window and the frequency response:
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.blackman(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Blackman window")
		Text(0.5, 1.0, 'Blackman window')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("Sample")
		Text(0.5, 0, 'Sample')
		>>> plt.show()
		
		>>> plt.figure()
		<Figure size 640x480 with 0 Axes>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> with np.errstate(divide='ignore', invalid='ignore'):
		...     response = 20 * np.log10(mag)
		...
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Blackman window")
		Text(0.5, 1.0, 'Frequency response of Blackman window')
		>>> plt.ylabel("Magnitude [dB]")
		Text(0, 0.5, 'Magnitude [dB]')
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		Text(0.5, 0, 'Normalized frequency [cycles per sample]')
		>>> _ = plt.axis('tight')
		>>> plt.show()
	**/
	static public function blackman(M:Dynamic):numpy.Ndarray;
	/**
		Broadcast any number of arrays against each other.
		
		Parameters
		----------
		`*args` : array_likes
		    The arrays to broadcast.
		
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned arrays will be forced to be a base-class array (default).
		
		Returns
		-------
		broadcasted : list of arrays
		    These arrays are views on the original arrays.  They are typically
		    not contiguous.  Furthermore, more than one element of a
		    broadcasted array may refer to a single memory location. If you need
		    to write to the arrays, make copies first. While you can set the
		    ``writable`` flag True, writing to a single output value may end up
		    changing more than one location in the output array.
		
		    .. deprecated:: 1.17
		        The output is currently marked so that if written to, a deprecation
		        warning will be emitted. A future version will set the
		        ``writable`` flag False so writing to it will raise an error.
		
		See Also
		--------
		broadcast
		broadcast_to
		broadcast_shapes
		
		Examples
		--------
		>>> x = np.array([[1,2,3]])
		>>> y = np.array([[4],[5]])
		>>> np.broadcast_arrays(x, y)
		[array([[1, 2, 3],
		       [1, 2, 3]]), array([[4, 4, 4],
		       [5, 5, 5]])]
		
		Here is a useful idiom for getting contiguous copies instead of
		non-contiguous views.
		
		>>> [np.array(a) for a in np.broadcast_arrays(x, y)]
		[array([[1, 2, 3],
		       [1, 2, 3]]), array([[4, 4, 4],
		       [5, 5, 5]])]
	**/
	static public function broadcast_arrays(?args:python.VarArgs<Dynamic>, ?subok:Dynamic):Dynamic;
	/**
		Broadcast the input shapes into a single shape.
		
		:ref:`Learn more about broadcasting here <basics.broadcasting>`.
		
		.. versionadded:: 1.20.0
		
		Parameters
		----------
		`*args` : tuples of ints, or ints
		    The shapes to be broadcast against each other.
		
		Returns
		-------
		tuple
		    Broadcasted shape.
		
		Raises
		------
		ValueError
		    If the shapes are not compatible and cannot be broadcast according
		    to NumPy's broadcasting rules.
		
		See Also
		--------
		broadcast
		broadcast_arrays
		broadcast_to
		
		Examples
		--------
		>>> np.broadcast_shapes((1, 2), (3, 1), (3, 2))
		(3, 2)
		
		>>> np.broadcast_shapes((6, 7), (5, 6, 1), (7,), (5, 1, 7))
		(5, 6, 7)
	**/
	static public function broadcast_shapes(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Broadcast an array to a new shape.
		
		Parameters
		----------
		array : array_like
		    The array to broadcast.
		shape : tuple or int
		    The shape of the desired array. A single integer ``i`` is interpreted
		    as ``(i,)``.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		
		Returns
		-------
		broadcast : array
		    A readonly view on the original array with the given shape. It is
		    typically not contiguous. Furthermore, more than one element of a
		    broadcasted array may refer to a single memory location.
		
		Raises
		------
		ValueError
		    If the array is not compatible with the new shape according to NumPy's
		    broadcasting rules.
		
		See Also
		--------
		broadcast
		broadcast_arrays
		broadcast_shapes
		
		Notes
		-----
		.. versionadded:: 1.10.0
		
		Examples
		--------
		>>> x = np.array([1, 2, 3])
		>>> np.broadcast_to(x, (3, 3))
		array([[1, 2, 3],
		       [1, 2, 3],
		       [1, 2, 3]])
	**/
	static public function broadcast_to(array:Dynamic, shape:Dynamic, ?subok:Dynamic):Array<Dynamic>;
	/**
		Returns pointers to the end-points of an array.
		
		Parameters
		----------
		a : ndarray
		    Input array. It must conform to the Python-side of the array
		    interface.
		
		Returns
		-------
		(low, high) : tuple of 2 integers
		    The first integer is the first byte of the array, the second
		    integer is just past the last byte of the array.  If `a` is not
		    contiguous it will not use every byte between the (`low`, `high`)
		    values.
		
		Examples
		--------
		>>> I = np.eye(2, dtype='f'); I.dtype
		dtype('float32')
		>>> low, high = np.byte_bounds(I)
		>>> high - low == I.size*I.itemsize
		True
		>>> I = np.eye(2); I.dtype
		dtype('float64')
		>>> low, high = np.byte_bounds(I)
		>>> high - low == I.size*I.itemsize
		True
	**/
	static public function byte_bounds(a:Dynamic):Dynamic;
	static public var c_ : Dynamic;
	/**
		Stack 1-D arrays as columns into a 2-D array.
		
		Take a sequence of 1-D arrays and stack them as columns
		to make a single 2-D array. 2-D arrays are stacked as-is,
		just like with `hstack`.  1-D arrays are turned into 2-D columns
		first.
		
		Parameters
		----------
		tup : sequence of 1-D or 2-D arrays.
		    Arrays to stack. All of them must have the same first dimension.
		
		Returns
		-------
		stacked : 2-D array
		    The array formed by stacking the given arrays.
		
		See Also
		--------
		stack, hstack, vstack, concatenate
		
		Examples
		--------
		>>> a = np.array((1,2,3))
		>>> b = np.array((2,3,4))
		>>> np.column_stack((a,b))
		array([[1, 2],
		       [2, 3],
		       [3, 4]])
	**/
	static public function column_stack(tup:Dynamic):Dynamic;
	/**
		Return a scalar type which is common to the input arrays.
		
		The return type will always be an inexact (i.e. floating point) scalar
		type, even if all the arrays are integer arrays. If one of the inputs is
		an integer array, the minimum precision type that is returned is a
		64-bit floating point dtype.
		
		All input arrays except int64 and uint64 can be safely cast to the
		returned dtype without loss of information.
		
		Parameters
		----------
		array1, array2, ... : ndarrays
		    Input arrays.
		
		Returns
		-------
		out : data type code
		    Data type code.
		
		See Also
		--------
		dtype, mintypecode
		
		Examples
		--------
		>>> np.common_type(np.arange(2, dtype=np.float32))
		<class 'numpy.float32'>
		>>> np.common_type(np.arange(2, dtype=np.float32), np.arange(2))
		<class 'numpy.float64'>
		>>> np.common_type(np.arange(4), np.array([45, 6.j]), np.array([45.0]))
		<class 'numpy.complex128'>
	**/
	static public function common_type(?arrays:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return an array copy of the given object.
		
		Parameters
		----------
		a : array_like
		    Input data.
		order : {'C', 'F', 'A', 'K'}, optional
		    Controls the memory layout of the copy. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `a` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of `a` as closely
		    as possible. (Note that this function and :meth:`ndarray.copy` are very
		    similar, but have different default values for their order=
		    arguments.)
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise the
		    returned array will be forced to be a base-class array (defaults to False).
		
		    .. versionadded:: 1.19.0
		
		Returns
		-------
		arr : ndarray
		    Array interpretation of `a`.
		
		See Also
		--------
		ndarray.copy : Preferred method for creating an array copy
		
		Notes
		-----
		This is equivalent to:
		
		>>> np.array(a, copy=True)  #doctest: +SKIP
		
		Examples
		--------
		Create an array x, with a reference y and a copy z:
		
		>>> x = np.array([1, 2, 3])
		>>> y = x
		>>> z = np.copy(x)
		
		Note that, when we modify x, y changes, but not z:
		
		>>> x[0] = 10
		>>> x[0] == y[0]
		True
		>>> x[0] == z[0]
		False
		
		Note that, np.copy clears previously set WRITEABLE=False flag.
		
		>>> a = np.array([1, 2, 3])
		>>> a.flags["WRITEABLE"] = False
		>>> b = np.copy(a)
		>>> b.flags["WRITEABLE"]
		True
		>>> b[0] = 3
		>>> b
		array([3, 2, 3])
		
		Note that np.copy is a shallow copy and will not copy object
		elements within arrays. This is mainly important for arrays
		containing Python objects. The new array will contain the
		same object which may lead to surprises if that object can
		be modified (is mutable):
		
		>>> a = np.array([1, 'm', [2, 3, 4]], dtype=object)
		>>> b = np.copy(a)
		>>> b[2][0] = 10
		>>> a
		array([1, 'm', list([10, 3, 4])], dtype=object)
		
		To ensure all elements within an ``object`` array are copied,
		use `copy.deepcopy`:
		
		>>> import copy
		>>> a = np.array([1, 'm', [2, 3, 4]], dtype=object)
		>>> c = copy.deepcopy(a)
		>>> c[2][0] = 10
		>>> c
		array([1, 'm', list([10, 3, 4])], dtype=object)
		>>> a
		array([1, 'm', list([2, 3, 4])], dtype=object)
	**/
	static public function copy(a:Dynamic, ?order:Dynamic, ?subok:Dynamic):numpy.Ndarray;
	/**
		Return Pearson product-moment correlation coefficients.
		
		Please refer to the documentation for `cov` for more detail.  The
		relationship between the correlation coefficient matrix, `R`, and the
		covariance matrix, `C`, is
		
		.. math:: R_{ij} = \frac{ C_{ij} } { \sqrt{ C_{ii} * C_{jj} } }
		
		The values of `R` are between -1 and 1, inclusive.
		
		Parameters
		----------
		x : array_like
		    A 1-D or 2-D array containing multiple variables and observations.
		    Each row of `x` represents a variable, and each column a single
		    observation of all those variables. Also see `rowvar` below.
		y : array_like, optional
		    An additional set of variables and observations. `y` has the same
		    shape as `x`.
		rowvar : bool, optional
		    If `rowvar` is True (default), then each row represents a
		    variable, with observations in the columns. Otherwise, the relationship
		    is transposed: each column represents a variable, while the rows
		    contain observations.
		bias : _NoValue, optional
		    Has no effect, do not use.
		
		    .. deprecated:: 1.10.0
		ddof : _NoValue, optional
		    Has no effect, do not use.
		
		    .. deprecated:: 1.10.0
		dtype : data-type, optional
		    Data-type of the result. By default, the return data-type will have
		    at least `numpy.float64` precision.
		
		    .. versionadded:: 1.20
		
		Returns
		-------
		R : ndarray
		    The correlation coefficient matrix of the variables.
		
		See Also
		--------
		cov : Covariance matrix
		
		Notes
		-----
		Due to floating point rounding the resulting array may not be Hermitian,
		the diagonal elements may not be 1, and the elements may not satisfy the
		inequality abs(a) <= 1. The real and imaginary parts are clipped to the
		interval [-1,  1] in an attempt to improve on that situation but is not
		much help in the complex case.
		
		This function accepts but discards arguments `bias` and `ddof`.  This is
		for backwards compatibility with previous versions of this function.  These
		arguments had no effect on the return values of the function and can be
		safely ignored in this and previous versions of numpy.
		
		Examples
		--------
		In this example we generate two random arrays, ``xarr`` and ``yarr``, and
		compute the row-wise and column-wise Pearson correlation coefficients,
		``R``. Since ``rowvar`` is  true by  default, we first find the row-wise
		Pearson correlation coefficients between the variables of ``xarr``.
		
		>>> import numpy as np
		>>> rng = np.random.default_rng(seed=42)
		>>> xarr = rng.random((3, 3))
		>>> xarr
		array([[0.77395605, 0.43887844, 0.85859792],
		       [0.69736803, 0.09417735, 0.97562235],
		       [0.7611397 , 0.78606431, 0.12811363]])
		>>> R1 = np.corrcoef(xarr)
		>>> R1
		array([[ 1.        ,  0.99256089, -0.68080986],
		       [ 0.99256089,  1.        , -0.76492172],
		       [-0.68080986, -0.76492172,  1.        ]])
		
		If we add another set of variables and observations ``yarr``, we can
		compute the row-wise Pearson correlation coefficients between the
		variables in ``xarr`` and ``yarr``.
		
		>>> yarr = rng.random((3, 3))
		>>> yarr
		array([[0.45038594, 0.37079802, 0.92676499],
		       [0.64386512, 0.82276161, 0.4434142 ],
		       [0.22723872, 0.55458479, 0.06381726]])
		>>> R2 = np.corrcoef(xarr, yarr)
		>>> R2
		array([[ 1.        ,  0.99256089, -0.68080986,  0.75008178, -0.934284  ,
		        -0.99004057],
		       [ 0.99256089,  1.        , -0.76492172,  0.82502011, -0.97074098,
		        -0.99981569],
		       [-0.68080986, -0.76492172,  1.        , -0.99507202,  0.89721355,
		         0.77714685],
		       [ 0.75008178,  0.82502011, -0.99507202,  1.        , -0.93657855,
		        -0.83571711],
		       [-0.934284  , -0.97074098,  0.89721355, -0.93657855,  1.        ,
		         0.97517215],
		       [-0.99004057, -0.99981569,  0.77714685, -0.83571711,  0.97517215,
		         1.        ]])
		
		Finally if we use the option ``rowvar=False``, the columns are now
		being treated as the variables and we will find the column-wise Pearson
		correlation coefficients between variables in ``xarr`` and ``yarr``.
		
		>>> R3 = np.corrcoef(xarr, yarr, rowvar=False)
		>>> R3
		array([[ 1.        ,  0.77598074, -0.47458546, -0.75078643, -0.9665554 ,
		         0.22423734],
		       [ 0.77598074,  1.        , -0.92346708, -0.99923895, -0.58826587,
		        -0.44069024],
		       [-0.47458546, -0.92346708,  1.        ,  0.93773029,  0.23297648,
		         0.75137473],
		       [-0.75078643, -0.99923895,  0.93773029,  1.        ,  0.55627469,
		         0.47536961],
		       [-0.9665554 , -0.58826587,  0.23297648,  0.55627469,  1.        ,
		        -0.46666491],
		       [ 0.22423734, -0.44069024,  0.75137473,  0.47536961, -0.46666491,
		         1.        ]])
	**/
	static public function corrcoef(x:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?bias:Dynamic, ?ddof:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		Estimate a covariance matrix, given data and weights.
		
		Covariance indicates the level to which two variables vary together.
		If we examine N-dimensional samples, :math:`X = [x_1, x_2, ... x_N]^T`,
		then the covariance matrix element :math:`C_{ij}` is the covariance of
		:math:`x_i` and :math:`x_j`. The element :math:`C_{ii}` is the variance
		of :math:`x_i`.
		
		See the notes for an outline of the algorithm.
		
		Parameters
		----------
		m : array_like
		    A 1-D or 2-D array containing multiple variables and observations.
		    Each row of `m` represents a variable, and each column a single
		    observation of all those variables. Also see `rowvar` below.
		y : array_like, optional
		    An additional set of variables and observations. `y` has the same form
		    as that of `m`.
		rowvar : bool, optional
		    If `rowvar` is True (default), then each row represents a
		    variable, with observations in the columns. Otherwise, the relationship
		    is transposed: each column represents a variable, while the rows
		    contain observations.
		bias : bool, optional
		    Default normalization (False) is by ``(N - 1)``, where ``N`` is the
		    number of observations given (unbiased estimate). If `bias` is True,
		    then normalization is by ``N``. These values can be overridden by using
		    the keyword ``ddof`` in numpy versions >= 1.5.
		ddof : int, optional
		    If not ``None`` the default value implied by `bias` is overridden.
		    Note that ``ddof=1`` will return the unbiased estimate, even if both
		    `fweights` and `aweights` are specified, and ``ddof=0`` will return
		    the simple average. See the notes for the details. The default value
		    is ``None``.
		
		    .. versionadded:: 1.5
		fweights : array_like, int, optional
		    1-D array of integer frequency weights; the number of times each
		    observation vector should be repeated.
		
		    .. versionadded:: 1.10
		aweights : array_like, optional
		    1-D array of observation vector weights. These relative weights are
		    typically large for observations considered "important" and smaller for
		    observations considered less "important". If ``ddof=0`` the array of
		    weights can be used to assign probabilities to observation vectors.
		
		    .. versionadded:: 1.10
		dtype : data-type, optional
		    Data-type of the result. By default, the return data-type will have
		    at least `numpy.float64` precision.
		
		    .. versionadded:: 1.20
		
		Returns
		-------
		out : ndarray
		    The covariance matrix of the variables.
		
		See Also
		--------
		corrcoef : Normalized covariance matrix
		
		Notes
		-----
		Assume that the observations are in the columns of the observation
		array `m` and let ``f = fweights`` and ``a = aweights`` for brevity. The
		steps to compute the weighted covariance are as follows::
		
		    >>> m = np.arange(10, dtype=np.float64)
		    >>> f = np.arange(10) * 2
		    >>> a = np.arange(10) ** 2.
		    >>> ddof = 1
		    >>> w = f * a
		    >>> v1 = np.sum(w)
		    >>> v2 = np.sum(w * a)
		    >>> m -= np.sum(m * w, axis=None, keepdims=True) / v1
		    >>> cov = np.dot(m * w, m.T) * v1 / (v1**2 - ddof * v2)
		
		Note that when ``a == 1``, the normalization factor
		``v1 / (v1**2 - ddof * v2)`` goes over to ``1 / (np.sum(f) - ddof)``
		as it should.
		
		Examples
		--------
		Consider two variables, :math:`x_0` and :math:`x_1`, which
		correlate perfectly, but in opposite directions:
		
		>>> x = np.array([[0, 2], [1, 1], [2, 0]]).T
		>>> x
		array([[0, 1, 2],
		       [2, 1, 0]])
		
		Note how :math:`x_0` increases while :math:`x_1` decreases. The covariance
		matrix shows this clearly:
		
		>>> np.cov(x)
		array([[ 1., -1.],
		       [-1.,  1.]])
		
		Note that element :math:`C_{0,1}`, which shows the correlation between
		:math:`x_0` and :math:`x_1`, is negative.
		
		Further, note how `x` and `y` are combined:
		
		>>> x = [-2.1, -1,  4.3]
		>>> y = [3,  1.1,  0.12]
		>>> X = np.stack((x, y), axis=0)
		>>> np.cov(X)
		array([[11.71      , -4.286     ], # may vary
		       [-4.286     ,  2.144133]])
		>>> np.cov(x, y)
		array([[11.71      , -4.286     ], # may vary
		       [-4.286     ,  2.144133]])
		>>> np.cov(x)
		array(11.71)
	**/
	static public function cov(m:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?bias:Dynamic, ?ddof:Dynamic, ?fweights:Dynamic, ?aweights:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		Return a new array with sub-arrays along an axis deleted. For a one
		dimensional array, this returns those entries not returned by
		`arr[obj]`.
		
		Parameters
		----------
		arr : array_like
		    Input array.
		obj : slice, int or array of ints
		    Indicate indices of sub-arrays to remove along the specified axis.
		
		    .. versionchanged:: 1.19.0
		        Boolean indices are now treated as a mask of elements to remove,
		        rather than being cast to the integers 0 and 1.
		
		axis : int, optional
		    The axis along which to delete the subarray defined by `obj`.
		    If `axis` is None, `obj` is applied to the flattened array.
		
		Returns
		-------
		out : ndarray
		    A copy of `arr` with the elements specified by `obj` removed. Note
		    that `delete` does not occur in-place. If `axis` is None, `out` is
		    a flattened array.
		
		See Also
		--------
		insert : Insert elements into an array.
		append : Append elements at the end of an array.
		
		Notes
		-----
		Often it is preferable to use a boolean mask. For example:
		
		>>> arr = np.arange(12) + 1
		>>> mask = np.ones(len(arr), dtype=bool)
		>>> mask[[0,2,4]] = False
		>>> result = arr[mask,...]
		
		Is equivalent to `np.delete(arr, [0,2,4], axis=0)`, but allows further
		use of `mask`.
		
		Examples
		--------
		>>> arr = np.array([[1,2,3,4], [5,6,7,8], [9,10,11,12]])
		>>> arr
		array([[ 1,  2,  3,  4],
		       [ 5,  6,  7,  8],
		       [ 9, 10, 11, 12]])
		>>> np.delete(arr, 1, 0)
		array([[ 1,  2,  3,  4],
		       [ 9, 10, 11, 12]])
		
		>>> np.delete(arr, np.s_[::2], 1)
		array([[ 2,  4],
		       [ 6,  8],
		       [10, 12]])
		>>> np.delete(arr, [1,3,5], None)
		array([ 1,  3,  5,  7,  8,  9, 10, 11, 12])
	**/
	static public function delete(arr:Dynamic, obj:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Issues a DeprecationWarning, adds warning to `old_name`'s
		docstring, rebinds ``old_name.__name__`` and returns the new
		function object.
		
		This function may also be used as a decorator.
		
		Parameters
		----------
		func : function
		    The function to be deprecated.
		old_name : str, optional
		    The name of the function to be deprecated. Default is None, in
		    which case the name of `func` is used.
		new_name : str, optional
		    The new name for the function. Default is None, in which case the
		    deprecation message is that `old_name` is deprecated. If given, the
		    deprecation message is that `old_name` is deprecated and `new_name`
		    should be used instead.
		message : str, optional
		    Additional explanation of the deprecation.  Displayed in the
		    docstring after the warning.
		
		Returns
		-------
		old_func : function
		    The deprecated function.
		
		Examples
		--------
		Note that ``olduint`` returns a value after printing Deprecation
		Warning:
		
		>>> olduint = np.deprecate(np.uint)
		DeprecationWarning: `uint64` is deprecated! # may vary
		>>> olduint(6)
		6
	**/
	static public function deprecate(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	/**
		Deprecates a function and includes the deprecation in its docstring.
		
		This function is used as a decorator. It returns an object that can be
		used to issue a DeprecationWarning, by passing the to-be decorated
		function as argument, this adds warning to the to-be decorated function's
		docstring and returns the new function object.
		
		See Also
		--------
		deprecate : Decorate a function such that it issues a `DeprecationWarning`
		
		Parameters
		----------
		msg : str
		    Additional explanation of the deprecation. Displayed in the
		    docstring after the warning.
		
		Returns
		-------
		obj : object
	**/
	static public function deprecate_with_doc(msg:Dynamic):Dynamic;
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
	static public function diag(v:Dynamic, ?k:Dynamic):numpy.Ndarray;
	/**
		Return the indices to access the main diagonal of an array.
		
		This returns a tuple of indices that can be used to access the main
		diagonal of an array `a` with ``a.ndim >= 2`` dimensions and shape
		(n, n, ..., n). For ``a.ndim = 2`` this is the usual diagonal, for
		``a.ndim > 2`` this is the set of indices to access ``a[i, i, ..., i]``
		for ``i = [0..n-1]``.
		
		Parameters
		----------
		n : int
		  The size, along each dimension, of the arrays for which the returned
		  indices can be used.
		
		ndim : int, optional
		  The number of dimensions.
		
		See Also
		--------
		diag_indices_from
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		Examples
		--------
		Create a set of indices to access the diagonal of a (4, 4) array:
		
		>>> di = np.diag_indices(4)
		>>> di
		(array([0, 1, 2, 3]), array([0, 1, 2, 3]))
		>>> a = np.arange(16).reshape(4, 4)
		>>> a
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11],
		       [12, 13, 14, 15]])
		>>> a[di] = 100
		>>> a
		array([[100,   1,   2,   3],
		       [  4, 100,   6,   7],
		       [  8,   9, 100,  11],
		       [ 12,  13,  14, 100]])
		
		Now, we create indices to manipulate a 3-D array:
		
		>>> d3 = np.diag_indices(2, 3)
		>>> d3
		(array([0, 1]), array([0, 1]), array([0, 1]))
		
		And use it to set the diagonal of an array of zeros to 1:
		
		>>> a = np.zeros((2, 2, 2), dtype=int)
		>>> a[d3] = 1
		>>> a
		array([[[1, 0],
		        [0, 0]],
		       [[0, 0],
		        [0, 1]]])
	**/
	static public function diag_indices(n:Dynamic, ?ndim:Dynamic):Dynamic;
	/**
		Return the indices to access the main diagonal of an n-dimensional array.
		
		See `diag_indices` for full details.
		
		Parameters
		----------
		arr : array, at least 2-D
		
		See Also
		--------
		diag_indices
		
		Notes
		-----
		.. versionadded:: 1.4.0
	**/
	static public function diag_indices_from(arr:Dynamic):Dynamic;
	/**
		Create a two-dimensional array with the flattened input as a diagonal.
		
		Parameters
		----------
		v : array_like
		    Input data, which is flattened and set as the `k`-th
		    diagonal of the output.
		k : int, optional
		    Diagonal to set; 0, the default, corresponds to the "main" diagonal,
		    a positive (negative) `k` giving the number of the diagonal above
		    (below) the main.
		
		Returns
		-------
		out : ndarray
		    The 2-D output array.
		
		See Also
		--------
		diag : MATLAB work-alike for 1-D and 2-D arrays.
		diagonal : Return specified diagonals.
		trace : Sum along diagonals.
		
		Examples
		--------
		>>> np.diagflat([[1,2], [3,4]])
		array([[1, 0, 0, 0],
		       [0, 2, 0, 0],
		       [0, 0, 3, 0],
		       [0, 0, 0, 4]])
		
		>>> np.diagflat([1,2], 1)
		array([[0, 1, 0],
		       [0, 0, 2],
		       [0, 0, 0]])
	**/
	static public function diagflat(v:Dynamic, ?k:Dynamic):numpy.Ndarray;
	/**
		Calculate the n-th discrete difference along the given axis.
		
		The first difference is given by ``out[i] = a[i+1] - a[i]`` along
		the given axis, higher differences are calculated by using `diff`
		recursively.
		
		Parameters
		----------
		a : array_like
		    Input array
		n : int, optional
		    The number of times values are differenced. If zero, the input
		    is returned as-is.
		axis : int, optional
		    The axis along which the difference is taken, default is the
		    last axis.
		prepend, append : array_like, optional
		    Values to prepend or append to `a` along axis prior to
		    performing the difference.  Scalar values are expanded to
		    arrays with length 1 in the direction of axis and the shape
		    of the input array in along all other axes.  Otherwise the
		    dimension and shape must match `a` except along axis.
		
		    .. versionadded:: 1.16.0
		
		Returns
		-------
		diff : ndarray
		    The n-th differences. The shape of the output is the same as `a`
		    except along `axis` where the dimension is smaller by `n`. The
		    type of the output is the same as the type of the difference
		    between any two elements of `a`. This is the same as the type of
		    `a` in most cases. A notable exception is `datetime64`, which
		    results in a `timedelta64` output array.
		
		See Also
		--------
		gradient, ediff1d, cumsum
		
		Notes
		-----
		Type is preserved for boolean arrays, so the result will contain
		`False` when consecutive elements are the same and `True` when they
		differ.
		
		For unsigned integer arrays, the results will also be unsigned. This
		should not be surprising, as the result is consistent with
		calculating the difference directly:
		
		>>> u8_arr = np.array([1, 0], dtype=np.uint8)
		>>> np.diff(u8_arr)
		array([255], dtype=uint8)
		>>> u8_arr[1,...] - u8_arr[0,...]
		255
		
		If this is not desirable, then the array should be cast to a larger
		integer type first:
		
		>>> i16_arr = u8_arr.astype(np.int16)
		>>> np.diff(i16_arr)
		array([-1], dtype=int16)
		
		Examples
		--------
		>>> x = np.array([1, 2, 4, 7, 0])
		>>> np.diff(x)
		array([ 1,  2,  3, -7])
		>>> np.diff(x, n=2)
		array([  1,   1, -10])
		
		>>> x = np.array([[1, 3, 6, 10], [0, 5, 6, 8]])
		>>> np.diff(x)
		array([[2, 3, 4],
		       [5, 1, 2]])
		>>> np.diff(x, axis=0)
		array([[-1,  2,  0, -2]])
		
		>>> x = np.arange('1066-10-13', '1066-10-16', dtype=np.datetime64)
		>>> np.diff(x)
		array([1, 1], dtype='timedelta64[D]')
	**/
	static public function diff(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?prepend:Dynamic, ?append:Dynamic):numpy.Ndarray;
	/**
		Return the indices of the bins to which each value in input array belongs.
		
		=========  =============  ============================
		`right`    order of bins  returned index `i` satisfies
		=========  =============  ============================
		``False``  increasing     ``bins[i-1] <= x < bins[i]``
		``True``   increasing     ``bins[i-1] < x <= bins[i]``
		``False``  decreasing     ``bins[i-1] > x >= bins[i]``
		``True``   decreasing     ``bins[i-1] >= x > bins[i]``
		=========  =============  ============================
		
		If values in `x` are beyond the bounds of `bins`, 0 or ``len(bins)`` is
		returned as appropriate.
		
		Parameters
		----------
		x : array_like
		    Input array to be binned. Prior to NumPy 1.10.0, this array had to
		    be 1-dimensional, but can now have any shape.
		bins : array_like
		    Array of bins. It has to be 1-dimensional and monotonic.
		right : bool, optional
		    Indicating whether the intervals include the right or the left bin
		    edge. Default behavior is (right==False) indicating that the interval
		    does not include the right edge. The left bin end is open in this
		    case, i.e., bins[i-1] <= x < bins[i] is the default behavior for
		    monotonically increasing bins.
		
		Returns
		-------
		indices : ndarray of ints
		    Output array of indices, of same shape as `x`.
		
		Raises
		------
		ValueError
		    If `bins` is not monotonic.
		TypeError
		    If the type of the input is complex.
		
		See Also
		--------
		bincount, histogram, unique, searchsorted
		
		Notes
		-----
		If values in `x` are such that they fall outside the bin range,
		attempting to index `bins` with the indices that `digitize` returns
		will result in an IndexError.
		
		.. versionadded:: 1.10.0
		
		`np.digitize` is  implemented in terms of `np.searchsorted`. This means
		that a binary search is used to bin the values, which scales much better
		for larger number of bins than the previous linear search. It also removes
		the requirement for the input array to be 1-dimensional.
		
		For monotonically _increasing_ `bins`, the following are equivalent::
		
		    np.digitize(x, bins, right=True)
		    np.searchsorted(bins, x, side='left')
		
		Note that as the order of the arguments are reversed, the side must be too.
		The `searchsorted` call is marginally faster, as it does not do any
		monotonicity checks. Perhaps more importantly, it supports all dtypes.
		
		Examples
		--------
		>>> x = np.array([0.2, 6.4, 3.0, 1.6])
		>>> bins = np.array([0.0, 1.0, 2.5, 4.0, 10.0])
		>>> inds = np.digitize(x, bins)
		>>> inds
		array([1, 4, 3, 2])
		>>> for n in range(x.size):
		...   print(bins[inds[n]-1], "<=", x[n], "<", bins[inds[n]])
		...
		0.0 <= 0.2 < 1.0
		4.0 <= 6.4 < 10.0
		2.5 <= 3.0 < 4.0
		1.0 <= 1.6 < 2.5
		
		>>> x = np.array([1.2, 10.0, 12.4, 15.5, 20.])
		>>> bins = np.array([0, 5, 10, 15, 20])
		>>> np.digitize(x,bins,right=True)
		array([1, 2, 3, 4, 4])
		>>> np.digitize(x,bins,right=False)
		array([1, 3, 3, 4, 5])
	**/
	static public function digitize(x:Dynamic, bins:Dynamic, ?right:Dynamic):Dynamic;
	/**
		Display a message on a device.
		
		Parameters
		----------
		mesg : str
		    Message to display.
		device : object
		    Device to write message. If None, defaults to ``sys.stdout`` which is
		    very similar to ``print``. `device` needs to have ``write()`` and
		    ``flush()`` methods.
		linefeed : bool, optional
		    Option whether to print a line feed or not. Defaults to True.
		
		Raises
		------
		AttributeError
		    If `device` does not have a ``write()`` or ``flush()`` method.
		
		Examples
		--------
		Besides ``sys.stdout``, a file-like object can also be used as it has
		both required methods:
		
		>>> from io import StringIO
		>>> buf = StringIO()
		>>> np.disp(u'"Display" in a file', device=buf)
		>>> buf.getvalue()
		'"Display" in a file\n'
	**/
	static public function disp(mesg:Dynamic, ?device:Dynamic, ?linefeed:Dynamic):Dynamic;
	/**
		Split array into multiple sub-arrays along the 3rd axis (depth).
		
		Please refer to the `split` documentation.  `dsplit` is equivalent
		to `split` with ``axis=2``, the array is always split along the third
		axis provided the array dimension is greater than or equal to 3.
		
		See Also
		--------
		split : Split an array into multiple sub-arrays of equal size.
		
		Examples
		--------
		>>> x = np.arange(16.0).reshape(2, 2, 4)
		>>> x
		array([[[ 0.,   1.,   2.,   3.],
		        [ 4.,   5.,   6.,   7.]],
		       [[ 8.,   9.,  10.,  11.],
		        [12.,  13.,  14.,  15.]]])
		>>> np.dsplit(x, 2)
		[array([[[ 0.,  1.],
		        [ 4.,  5.]],
		       [[ 8.,  9.],
		        [12., 13.]]]), array([[[ 2.,  3.],
		        [ 6.,  7.]],
		       [[10., 11.],
		        [14., 15.]]])]
		>>> np.dsplit(x, np.array([3, 6]))
		[array([[[ 0.,   1.,   2.],
		        [ 4.,   5.,   6.]],
		       [[ 8.,   9.,  10.],
		        [12.,  13.,  14.]]]),
		 array([[[ 3.],
		        [ 7.]],
		       [[11.],
		        [15.]]]),
		array([], shape=(2, 2, 0), dtype=float64)]
	**/
	static public function dsplit(ary:Dynamic, indices_or_sections:Dynamic):Dynamic;
	/**
		Stack arrays in sequence depth wise (along third axis).
		
		This is equivalent to concatenation along the third axis after 2-D arrays
		of shape `(M,N)` have been reshaped to `(M,N,1)` and 1-D arrays of shape
		`(N,)` have been reshaped to `(1,N,1)`. Rebuilds arrays divided by
		`dsplit`.
		
		This function makes most sense for arrays with up to 3 dimensions. For
		instance, for pixel-data with a height (first axis), width (second axis),
		and r/g/b channels (third axis). The functions `concatenate`, `stack` and
		`block` provide more general stacking and concatenation operations.
		
		Parameters
		----------
		tup : sequence of arrays
		    The arrays must have the same shape along all but the third axis.
		    1-D or 2-D arrays must have the same shape.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays, will be at least 3-D.
		
		See Also
		--------
		concatenate : Join a sequence of arrays along an existing axis.
		stack : Join a sequence of arrays along a new axis.
		block : Assemble an nd-array from nested lists of blocks.
		vstack : Stack arrays in sequence vertically (row wise).
		hstack : Stack arrays in sequence horizontally (column wise).
		column_stack : Stack 1-D arrays as columns into a 2-D array.
		dsplit : Split array along third axis.
		
		Examples
		--------
		>>> a = np.array((1,2,3))
		>>> b = np.array((2,3,4))
		>>> np.dstack((a,b))
		array([[[1, 2],
		        [2, 3],
		        [3, 4]]])
		
		>>> a = np.array([[1],[2],[3]])
		>>> b = np.array([[2],[3],[4]])
		>>> np.dstack((a,b))
		array([[[1, 2]],
		       [[2, 3]],
		       [[3, 4]]])
	**/
	static public function dstack(tup:Dynamic):numpy.Ndarray;
	/**
		The differences between consecutive elements of an array.
		
		Parameters
		----------
		ary : array_like
		    If necessary, will be flattened before the differences are taken.
		to_end : array_like, optional
		    Number(s) to append at the end of the returned differences.
		to_begin : array_like, optional
		    Number(s) to prepend at the beginning of the returned differences.
		
		Returns
		-------
		ediff1d : ndarray
		    The differences. Loosely, this is ``ary.flat[1:] - ary.flat[:-1]``.
		
		See Also
		--------
		diff, gradient
		
		Notes
		-----
		When applied to masked arrays, this function drops the mask information
		if the `to_begin` and/or `to_end` parameters are used.
		
		Examples
		--------
		>>> x = np.array([1, 2, 4, 7, 0])
		>>> np.ediff1d(x)
		array([ 1,  2,  3, -7])
		
		>>> np.ediff1d(x, to_begin=-99, to_end=np.array([88, 99]))
		array([-99,   1,   2, ...,  -7,  88,  99])
		
		The returned array is always 1D.
		
		>>> y = [[1, 2, 4], [1, 6, 24]]
		>>> np.ediff1d(y)
		array([ 1,  2, -3,  5, 18])
	**/
	static public function ediff1d(ary:Dynamic, ?to_end:Dynamic, ?to_begin:Dynamic):numpy.Ndarray;
	/**
		Expand the shape of an array.
		
		Insert a new axis that will appear at the `axis` position in the expanded
		array shape.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int or tuple of ints
		    Position in the expanded axes where the new axis (or axes) is placed.
		
		    .. deprecated:: 1.13.0
		        Passing an axis where ``axis > a.ndim`` will be treated as
		        ``axis == a.ndim``, and passing ``axis < -a.ndim - 1`` will
		        be treated as ``axis == 0``. This behavior is deprecated.
		
		    .. versionchanged:: 1.18.0
		        A tuple of axes is now supported.  Out of range axes as
		        described above are now forbidden and raise an `AxisError`.
		
		Returns
		-------
		result : ndarray
		    View of `a` with the number of dimensions increased.
		
		See Also
		--------
		squeeze : The inverse operation, removing singleton dimensions
		reshape : Insert, remove, and combine dimensions, and resize existing ones
		doc.indexing, atleast_1d, atleast_2d, atleast_3d
		
		Examples
		--------
		>>> x = np.array([1, 2])
		>>> x.shape
		(2,)
		
		The following is equivalent to ``x[np.newaxis, :]`` or ``x[np.newaxis]``:
		
		>>> y = np.expand_dims(x, axis=0)
		>>> y
		array([[1, 2]])
		>>> y.shape
		(1, 2)
		
		The following is equivalent to ``x[:, np.newaxis]``:
		
		>>> y = np.expand_dims(x, axis=1)
		>>> y
		array([[1],
		       [2]])
		>>> y.shape
		(2, 1)
		
		``axis`` may also be a tuple:
		
		>>> y = np.expand_dims(x, axis=(0, 1))
		>>> y
		array([[[1, 2]]])
		
		>>> y = np.expand_dims(x, axis=(2, 0))
		>>> y
		array([[[1],
		        [2]]])
		
		Note that some examples may use ``None`` instead of ``np.newaxis``.  These
		are the same objects:
		
		>>> np.newaxis is None
		True
	**/
	static public function expand_dims(a:Dynamic, axis:Dynamic):numpy.Ndarray;
	/**
		Return the elements of an array that satisfy some condition.
		
		This is equivalent to ``np.compress(ravel(condition), ravel(arr))``.  If
		`condition` is boolean ``np.extract`` is equivalent to ``arr[condition]``.
		
		Note that `place` does the exact opposite of `extract`.
		
		Parameters
		----------
		condition : array_like
		    An array whose nonzero or True entries indicate the elements of `arr`
		    to extract.
		arr : array_like
		    Input array of the same size as `condition`.
		
		Returns
		-------
		extract : ndarray
		    Rank 1 array of values from `arr` where `condition` is True.
		
		See Also
		--------
		take, put, copyto, compress, place
		
		Examples
		--------
		>>> arr = np.arange(12).reshape((3, 4))
		>>> arr
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11]])
		>>> condition = np.mod(arr, 3)==0
		>>> condition
		array([[ True, False, False,  True],
		       [False, False,  True, False],
		       [False,  True, False, False]])
		>>> np.extract(condition, arr)
		array([0, 3, 6, 9])
		
		
		If `condition` is boolean:
		
		>>> arr[condition]
		array([0, 3, 6, 9])
	**/
	static public function extract(condition:Dynamic, arr:Dynamic):numpy.Ndarray;
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
		Fill the main diagonal of the given array of any dimensionality.
		
		For an array `a` with ``a.ndim >= 2``, the diagonal is the list of
		locations with indices ``a[i, ..., i]`` all identical. This function
		modifies the input array in-place, it does not return a value.
		
		Parameters
		----------
		a : array, at least 2-D.
		  Array whose diagonal is to be filled, it gets modified in-place.
		
		val : scalar or array_like
		  Value(s) to write on the diagonal. If `val` is scalar, the value is
		  written along the diagonal. If array-like, the flattened `val` is
		  written along the diagonal, repeating if necessary to fill all
		  diagonal entries.
		
		wrap : bool
		  For tall matrices in NumPy version up to 1.6.2, the
		  diagonal "wrapped" after N columns. You can have this behavior
		  with this option. This affects only tall matrices.
		
		See also
		--------
		diag_indices, diag_indices_from
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		This functionality can be obtained via `diag_indices`, but internally
		this version uses a much faster implementation that never constructs the
		indices and uses simple slicing.
		
		Examples
		--------
		>>> a = np.zeros((3, 3), int)
		>>> np.fill_diagonal(a, 5)
		>>> a
		array([[5, 0, 0],
		       [0, 5, 0],
		       [0, 0, 5]])
		
		The same function can operate on a 4-D array:
		
		>>> a = np.zeros((3, 3, 3, 3), int)
		>>> np.fill_diagonal(a, 4)
		
		We only show a few blocks for clarity:
		
		>>> a[0, 0]
		array([[4, 0, 0],
		       [0, 0, 0],
		       [0, 0, 0]])
		>>> a[1, 1]
		array([[0, 0, 0],
		       [0, 4, 0],
		       [0, 0, 0]])
		>>> a[2, 2]
		array([[0, 0, 0],
		       [0, 0, 0],
		       [0, 0, 4]])
		
		The wrap option affects only tall matrices:
		
		>>> # tall matrices no wrap
		>>> a = np.zeros((5, 3), int)
		>>> np.fill_diagonal(a, 4)
		>>> a
		array([[4, 0, 0],
		       [0, 4, 0],
		       [0, 0, 4],
		       [0, 0, 0],
		       [0, 0, 0]])
		
		>>> # tall matrices wrap
		>>> a = np.zeros((5, 3), int)
		>>> np.fill_diagonal(a, 4, wrap=True)
		>>> a
		array([[4, 0, 0],
		       [0, 4, 0],
		       [0, 0, 4],
		       [0, 0, 0],
		       [4, 0, 0]])
		
		>>> # wide matrices
		>>> a = np.zeros((3, 5), int)
		>>> np.fill_diagonal(a, 4, wrap=True)
		>>> a
		array([[4, 0, 0, 0, 0],
		       [0, 4, 0, 0, 0],
		       [0, 0, 4, 0, 0]])
		
		The anti-diagonal can be filled by reversing the order of elements
		using either `numpy.flipud` or `numpy.fliplr`.
		
		>>> a = np.zeros((3, 3), int);
		>>> np.fill_diagonal(np.fliplr(a), [1,2,3])  # Horizontal flip
		>>> a
		array([[0, 0, 1],
		       [0, 2, 0],
		       [3, 0, 0]])
		>>> np.fill_diagonal(np.flipud(a), [1,2,3])  # Vertical flip
		>>> a
		array([[0, 0, 3],
		       [0, 2, 0],
		       [1, 0, 0]])
		
		Note that the order in which the diagonal is filled varies depending
		on the flip function.
	**/
	static public function fill_diagonal(a:Dynamic, val:Dynamic, ?wrap:Dynamic):Dynamic;
	/**
		Round to nearest integer towards zero.
		
		Round an array of floats element-wise to nearest integer towards zero.
		The rounded values are returned as floats.
		
		Parameters
		----------
		x : array_like
		    An array of floats to be rounded
		out : ndarray, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the input broadcasts to. If not provided or None, a
		    freshly-allocated array is returned.
		
		Returns
		-------
		out : ndarray of floats
		    A float array with the same dimensions as the input.
		    If second argument is not supplied then a float array is returned
		    with the rounded values.
		
		    If a second argument is supplied the result is stored there.
		    The return value `out` is then a reference to that array.
		
		See Also
		--------
		rint, trunc, floor, ceil
		around : Round to given number of decimals
		
		Examples
		--------
		>>> np.fix(3.14)
		3.0
		>>> np.fix(3)
		3.0
		>>> np.fix([2.1, 2.9, -2.1, -2.9])
		array([ 2.,  2., -2., -2.])
	**/
	static public function fix(x:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Reverse the order of elements in an array along the given axis.
		
		The shape of the array is preserved, but the elements are reordered.
		
		.. versionadded:: 1.12.0
		
		Parameters
		----------
		m : array_like
		    Input array.
		axis : None or int or tuple of ints, optional
		     Axis or axes along which to flip over. The default,
		     axis=None, will flip over all of the axes of the input array.
		     If axis is negative it counts from the last to the first axis.
		
		     If axis is a tuple of ints, flipping is performed on all of the axes
		     specified in the tuple.
		
		     .. versionchanged:: 1.15.0
		        None and tuples of axes are supported
		
		Returns
		-------
		out : array_like
		    A view of `m` with the entries of axis reversed.  Since a view is
		    returned, this operation is done in constant time.
		
		See Also
		--------
		flipud : Flip an array vertically (axis=0).
		fliplr : Flip an array horizontally (axis=1).
		
		Notes
		-----
		flip(m, 0) is equivalent to flipud(m).
		
		flip(m, 1) is equivalent to fliplr(m).
		
		flip(m, n) corresponds to ``m[...,::-1,...]`` with ``::-1`` at position n.
		
		flip(m) corresponds to ``m[::-1,::-1,...,::-1]`` with ``::-1`` at all
		positions.
		
		flip(m, (0, 1)) corresponds to ``m[::-1,::-1,...]`` with ``::-1`` at
		position 0 and position 1.
		
		Examples
		--------
		>>> A = np.arange(8).reshape((2,2,2))
		>>> A
		array([[[0, 1],
		        [2, 3]],
		       [[4, 5],
		        [6, 7]]])
		>>> np.flip(A, 0)
		array([[[4, 5],
		        [6, 7]],
		       [[0, 1],
		        [2, 3]]])
		>>> np.flip(A, 1)
		array([[[2, 3],
		        [0, 1]],
		       [[6, 7],
		        [4, 5]]])
		>>> np.flip(A)
		array([[[7, 6],
		        [5, 4]],
		       [[3, 2],
		        [1, 0]]])
		>>> np.flip(A, (0, 2))
		array([[[5, 4],
		        [7, 6]],
		       [[1, 0],
		        [3, 2]]])
		>>> A = np.random.randn(3,4,5)
		>>> np.all(np.flip(A,2) == A[:,:,::-1,...])
		True
	**/
	static public function flip(m:Dynamic, ?axis:Dynamic):python.NativeIterable<Dynamic>;
	/**
		Reverse the order of elements along axis 1 (left/right).
		
		For a 2-D array, this flips the entries in each row in the left/right
		direction. Columns are preserved, but appear in a different order than
		before.
		
		Parameters
		----------
		m : array_like
		    Input array, must be at least 2-D.
		
		Returns
		-------
		f : ndarray
		    A view of `m` with the columns reversed.  Since a view
		    is returned, this operation is :math:`\mathcal O(1)`.
		
		See Also
		--------
		flipud : Flip array in the up/down direction.
		flip : Flip array in one or more dimensions.
		rot90 : Rotate array counterclockwise.
		
		Notes
		-----
		Equivalent to ``m[:,::-1]`` or ``np.flip(m, axis=1)``.
		Requires the array to be at least 2-D.
		
		Examples
		--------
		>>> A = np.diag([1.,2.,3.])
		>>> A
		array([[1.,  0.,  0.],
		       [0.,  2.,  0.],
		       [0.,  0.,  3.]])
		>>> np.fliplr(A)
		array([[0.,  0.,  1.],
		       [0.,  2.,  0.],
		       [3.,  0.,  0.]])
		
		>>> A = np.random.randn(2,3,5)
		>>> np.all(np.fliplr(A) == A[:,::-1,...])
		True
	**/
	static public function fliplr(m:Dynamic):numpy.Ndarray;
	/**
		Reverse the order of elements along axis 0 (up/down).
		
		For a 2-D array, this flips the entries in each column in the up/down
		direction. Rows are preserved, but appear in a different order than before.
		
		Parameters
		----------
		m : array_like
		    Input array.
		
		Returns
		-------
		out : array_like
		    A view of `m` with the rows reversed.  Since a view is
		    returned, this operation is :math:`\mathcal O(1)`.
		
		See Also
		--------
		fliplr : Flip array in the left/right direction.
		flip : Flip array in one or more dimensions.
		rot90 : Rotate array counterclockwise.
		
		Notes
		-----
		Equivalent to ``m[::-1, ...]`` or ``np.flip(m, axis=0)``.
		Requires the array to be at least 1-D.
		
		Examples
		--------
		>>> A = np.diag([1.0, 2, 3])
		>>> A
		array([[1.,  0.,  0.],
		       [0.,  2.,  0.],
		       [0.,  0.,  3.]])
		>>> np.flipud(A)
		array([[0.,  0.,  3.],
		       [0.,  2.,  0.],
		       [1.,  0.,  0.]])
		
		>>> A = np.random.randn(2,3,5)
		>>> np.all(np.flipud(A) == A[::-1,...])
		True
		
		>>> np.flipud([1,2])
		array([2, 1])
	**/
	static public function flipud(m:Dynamic):python.NativeIterable<Dynamic>;
	/**
		Construct an array from a text file, using regular expression parsing.
		
		The returned array is always a structured array, and is constructed from
		all matches of the regular expression in the file. Groups in the regular
		expression are converted to fields of the structured array.
		
		Parameters
		----------
		file : path or file
		    Filename or file object to read.
		
		    .. versionchanged:: 1.22.0
		        Now accepts `os.PathLike` implementations.
		regexp : str or regexp
		    Regular expression used to parse the file.
		    Groups in the regular expression correspond to fields in the dtype.
		dtype : dtype or list of dtypes
		    Dtype for the structured array; must be a structured datatype.
		encoding : str, optional
		    Encoding used to decode the inputfile. Does not apply to input streams.
		
		    .. versionadded:: 1.14.0
		
		Returns
		-------
		output : ndarray
		    The output array, containing the part of the content of `file` that
		    was matched by `regexp`. `output` is always a structured array.
		
		Raises
		------
		TypeError
		    When `dtype` is not a valid dtype for a structured array.
		
		See Also
		--------
		fromstring, loadtxt
		
		Notes
		-----
		Dtypes for structured arrays can be specified in several forms, but all
		forms specify at least the data type and field name. For details see
		`basics.rec`.
		
		Examples
		--------
		>>> from io import StringIO
		>>> text = StringIO("1312 foo\n1534  bar\n444   qux")
		
		>>> regexp = r"(\d+)\s+(...)"  # match [digits, whitespace, anything]
		>>> output = np.fromregex(text, regexp,
		...                       [('num', np.int64), ('key', 'S3')])
		>>> output
		array([(1312, b'foo'), (1534, b'bar'), ( 444, b'qux')],
		      dtype=[('num', '<i8'), ('key', 'S3')])
		>>> output['num']
		array([1312, 1534,  444])
	**/
	static public function fromregex(file:Dynamic, regexp:Dynamic, dtype:Dynamic, ?encoding:Dynamic):numpy.Ndarray;
	/**
		Load data from a text file, with missing values handled as specified.
		
		Each line past the first `skip_header` lines is split at the `delimiter`
		character, and characters following the `comments` character are discarded.
		
		Parameters
		----------
		fname : file, str, pathlib.Path, list of str, generator
		    File, filename, list, or generator to read.  If the filename
		    extension is ``.gz`` or ``.bz2``, the file is first decompressed. Note
		    that generators must return bytes or strings. The strings
		    in a list or produced by a generator are treated as lines.
		dtype : dtype, optional
		    Data type of the resulting array.
		    If None, the dtypes will be determined by the contents of each
		    column, individually.
		comments : str, optional
		    The character used to indicate the start of a comment.
		    All the characters occurring on a line after a comment are discarded.
		delimiter : str, int, or sequence, optional
		    The string used to separate values.  By default, any consecutive
		    whitespaces act as delimiter.  An integer or sequence of integers
		    can also be provided as width(s) of each field.
		skiprows : int, optional
		    `skiprows` was removed in numpy 1.10. Please use `skip_header` instead.
		skip_header : int, optional
		    The number of lines to skip at the beginning of the file.
		skip_footer : int, optional
		    The number of lines to skip at the end of the file.
		converters : variable, optional
		    The set of functions that convert the data of a column to a value.
		    The converters can also be used to provide a default value
		    for missing data: ``converters = {3: lambda s: float(s or 0)}``.
		missing : variable, optional
		    `missing` was removed in numpy 1.10. Please use `missing_values`
		    instead.
		missing_values : variable, optional
		    The set of strings corresponding to missing data.
		filling_values : variable, optional
		    The set of values to be used as default when the data are missing.
		usecols : sequence, optional
		    Which columns to read, with 0 being the first.  For example,
		    ``usecols = (1, 4, 5)`` will extract the 2nd, 5th and 6th columns.
		names : {None, True, str, sequence}, optional
		    If `names` is True, the field names are read from the first line after
		    the first `skip_header` lines. This line can optionally be preceded
		    by a comment delimiter. If `names` is a sequence or a single-string of
		    comma-separated names, the names will be used to define the field names
		    in a structured dtype. If `names` is None, the names of the dtype
		    fields will be used, if any.
		excludelist : sequence, optional
		    A list of names to exclude. This list is appended to the default list
		    ['return','file','print']. Excluded names are appended with an
		    underscore: for example, `file` would become `file_`.
		deletechars : str, optional
		    A string combining invalid characters that must be deleted from the
		    names.
		defaultfmt : str, optional
		    A format used to define default field names, such as "f%i" or "f_%02i".
		autostrip : bool, optional
		    Whether to automatically strip white spaces from the variables.
		replace_space : char, optional
		    Character(s) used in replacement of white spaces in the variable
		    names. By default, use a '_'.
		case_sensitive : {True, False, 'upper', 'lower'}, optional
		    If True, field names are case sensitive.
		    If False or 'upper', field names are converted to upper case.
		    If 'lower', field names are converted to lower case.
		unpack : bool, optional
		    If True, the returned array is transposed, so that arguments may be
		    unpacked using ``x, y, z = genfromtxt(...)``.  When used with a
		    structured data-type, arrays are returned for each field.
		    Default is False.
		usemask : bool, optional
		    If True, return a masked array.
		    If False, return a regular array.
		loose : bool, optional
		    If True, do not raise errors for invalid values.
		invalid_raise : bool, optional
		    If True, an exception is raised if an inconsistency is detected in the
		    number of columns.
		    If False, a warning is emitted and the offending lines are skipped.
		max_rows : int,  optional
		    The maximum number of rows to read. Must not be used with skip_footer
		    at the same time.  If given, the value must be at least 1. Default is
		    to read the entire file.
		
		    .. versionadded:: 1.10.0
		encoding : str, optional
		    Encoding used to decode the inputfile. Does not apply when `fname` is
		    a file object.  The special value 'bytes' enables backward compatibility
		    workarounds that ensure that you receive byte arrays when possible
		    and passes latin1 encoded strings to converters. Override this value to
		    receive unicode arrays and pass strings as input to converters.  If set
		    to None the system default is used. The default value is 'bytes'.
		
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
		out : ndarray
		    Data read from the text file. If `usemask` is True, this is a
		    masked array.
		
		See Also
		--------
		numpy.loadtxt : equivalent function when no data is missing.
		
		Notes
		-----
		* When spaces are used as delimiters, or when no delimiter has been given
		  as input, there should not be any missing data between two fields.
		* When the variables are named (either by a flexible dtype or with `names`),
		  there must not be any header in the file (else a ValueError
		  exception is raised).
		* Individual values are not stripped of spaces by default.
		  When using a custom converter, make sure the function does remove spaces.
		
		References
		----------
		.. [1] NumPy User Guide, section `I/O with NumPy
		       <https://docs.scipy.org/doc/numpy/user/basics.io.genfromtxt.html>`_.
		
		Examples
		--------
		>>> from io import StringIO
		>>> import numpy as np
		
		Comma delimited file with mixed dtype
		
		>>> s = StringIO(u"1,1.3,abcde")
		>>> data = np.genfromtxt(s, dtype=[('myint','i8'),('myfloat','f8'),
		... ('mystring','S5')], delimiter=",")
		>>> data
		array((1, 1.3, b'abcde'),
		      dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', 'S5')])
		
		Using dtype = None
		
		>>> _ = s.seek(0) # needed for StringIO example only
		>>> data = np.genfromtxt(s, dtype=None,
		... names = ['myint','myfloat','mystring'], delimiter=",")
		>>> data
		array((1, 1.3, b'abcde'),
		      dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', 'S5')])
		
		Specifying dtype and names
		
		>>> _ = s.seek(0)
		>>> data = np.genfromtxt(s, dtype="i8,f8,S5",
		... names=['myint','myfloat','mystring'], delimiter=",")
		>>> data
		array((1, 1.3, b'abcde'),
		      dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', 'S5')])
		
		An example with fixed-width columns
		
		>>> s = StringIO(u"11.3abcde")
		>>> data = np.genfromtxt(s, dtype=None, names=['intvar','fltvar','strvar'],
		...     delimiter=[1,3,5])
		>>> data
		array((1, 1.3, b'abcde'),
		      dtype=[('intvar', '<i8'), ('fltvar', '<f8'), ('strvar', 'S5')])
		
		An example to show comments
		
		>>> f = StringIO('''
		... text,# of chars
		... hello world,11
		... numpy,5''')
		>>> np.genfromtxt(f, dtype='S12,S12', delimiter=',')
		array([(b'text', b''), (b'hello world', b'11'), (b'numpy', b'5')],
		  dtype=[('f0', 'S12'), ('f1', 'S12')])
	**/
	static public function genfromtxt(fname:Dynamic, ?dtype:Dynamic, ?comments:Dynamic, ?delimiter:Dynamic, ?skip_header:Dynamic, ?skip_footer:Dynamic, ?converters:Dynamic, ?missing_values:Dynamic, ?filling_values:Dynamic, ?usecols:Dynamic, ?names:Dynamic, ?excludelist:Dynamic, ?deletechars:Dynamic, ?replace_space:Dynamic, ?autostrip:Dynamic, ?case_sensitive:Dynamic, ?defaultfmt:Dynamic, ?unpack:Dynamic, ?usemask:Dynamic, ?loose:Dynamic, ?invalid_raise:Dynamic, ?max_rows:Dynamic, ?encoding:Dynamic, ?like:Dynamic):numpy.Ndarray;
	/**
		Find the wrapper for the array with the highest priority.
		
		In case of ties, leftmost wins. If no wrapper is found, return None
	**/
	static public function get_array_wrap(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return the directory that contains the NumPy \*.h header files.
		
		Extension modules that need to compile against NumPy should use this
		function to locate the appropriate include directory.
		
		Notes
		-----
		When using ``distutils``, for example in ``setup.py``.
		::
		
		    import numpy as np
		    ...
		    Extension('extension_name', ...
		            include_dirs=[np.get_include()])
		    ...
	**/
	static public function get_include():Dynamic;
	/**
		Return the gradient of an N-dimensional array.
		
		The gradient is computed using second order accurate central differences
		in the interior points and either first or second order accurate one-sides
		(forward or backwards) differences at the boundaries.
		The returned gradient hence has the same shape as the input array.
		
		Parameters
		----------
		f : array_like
		    An N-dimensional array containing samples of a scalar function.
		varargs : list of scalar or array, optional
		    Spacing between f values. Default unitary spacing for all dimensions.
		    Spacing can be specified using:
		
		    1. single scalar to specify a sample distance for all dimensions.
		    2. N scalars to specify a constant sample distance for each dimension.
		       i.e. `dx`, `dy`, `dz`, ...
		    3. N arrays to specify the coordinates of the values along each
		       dimension of F. The length of the array must match the size of
		       the corresponding dimension
		    4. Any combination of N scalars/arrays with the meaning of 2. and 3.
		
		    If `axis` is given, the number of varargs must equal the number of axes.
		    Default: 1.
		
		edge_order : {1, 2}, optional
		    Gradient is calculated using N-th order accurate differences
		    at the boundaries. Default: 1.
		
		    .. versionadded:: 1.9.1
		
		axis : None or int or tuple of ints, optional
		    Gradient is calculated only along the given axis or axes
		    The default (axis = None) is to calculate the gradient for all the axes
		    of the input array. axis may be negative, in which case it counts from
		    the last to the first axis.
		
		    .. versionadded:: 1.11.0
		
		Returns
		-------
		gradient : ndarray or list of ndarray
		    A list of ndarrays (or a single ndarray if there is only one dimension)
		    corresponding to the derivatives of f with respect to each dimension.
		    Each derivative has the same shape as f.
		
		Examples
		--------
		>>> f = np.array([1, 2, 4, 7, 11, 16], dtype=float)
		>>> np.gradient(f)
		array([1. , 1.5, 2.5, 3.5, 4.5, 5. ])
		>>> np.gradient(f, 2)
		array([0.5 ,  0.75,  1.25,  1.75,  2.25,  2.5 ])
		
		Spacing can be also specified with an array that represents the coordinates
		of the values F along the dimensions.
		For instance a uniform spacing:
		
		>>> x = np.arange(f.size)
		>>> np.gradient(f, x)
		array([1. ,  1.5,  2.5,  3.5,  4.5,  5. ])
		
		Or a non uniform one:
		
		>>> x = np.array([0., 1., 1.5, 3.5, 4., 6.], dtype=float)
		>>> np.gradient(f, x)
		array([1. ,  3. ,  3.5,  6.7,  6.9,  2.5])
		
		For two dimensional arrays, the return will be two arrays ordered by
		axis. In this example the first array stands for the gradient in
		rows and the second one in columns direction:
		
		>>> np.gradient(np.array([[1, 2, 6], [3, 4, 5]], dtype=float))
		[array([[ 2.,  2., -1.],
		       [ 2.,  2., -1.]]), array([[1. , 2.5, 4. ],
		       [1. , 1. , 1. ]])]
		
		In this example the spacing is also specified:
		uniform for axis=0 and non uniform for axis=1
		
		>>> dx = 2.
		>>> y = [1., 1.5, 3.5]
		>>> np.gradient(np.array([[1, 2, 6], [3, 4, 5]], dtype=float), dx, y)
		[array([[ 1. ,  1. , -0.5],
		       [ 1. ,  1. , -0.5]]), array([[2. , 2. , 2. ],
		       [2. , 1.7, 0.5]])]
		
		It is possible to specify how boundaries are treated using `edge_order`
		
		>>> x = np.array([0, 1, 2, 3, 4])
		>>> f = x**2
		>>> np.gradient(f, edge_order=1)
		array([1.,  2.,  4.,  6.,  7.])
		>>> np.gradient(f, edge_order=2)
		array([0., 2., 4., 6., 8.])
		
		The `axis` keyword can be used to specify a subset of axes of which the
		gradient is calculated
		
		>>> np.gradient(np.array([[1, 2, 6], [3, 4, 5]], dtype=float), axis=0)
		array([[ 2.,  2., -1.],
		       [ 2.,  2., -1.]])
		
		Notes
		-----
		Assuming that :math:`f\in C^{3}` (i.e., :math:`f` has at least 3 continuous
		derivatives) and let :math:`h_{*}` be a non-homogeneous stepsize, we
		minimize the "consistency error" :math:`\eta_{i}` between the true gradient
		and its estimate from a linear combination of the neighboring grid-points:
		
		.. math::
		
		    \eta_{i} = f_{i}^{\left(1\right)} -
		                \left[ \alpha f\left(x_{i}\right) +
		                        \beta f\left(x_{i} + h_{d}\right) +
		                        \gamma f\left(x_{i}-h_{s}\right)
		                \right]
		
		By substituting :math:`f(x_{i} + h_{d})` and :math:`f(x_{i} - h_{s})`
		with their Taylor series expansion, this translates into solving
		the following the linear system:
		
		.. math::
		
		    \left\{
		        \begin{array}{r}
		            \alpha+\beta+\gamma=0 \\
		            \beta h_{d}-\gamma h_{s}=1 \\
		            \beta h_{d}^{2}+\gamma h_{s}^{2}=0
		        \end{array}
		    \right.
		
		The resulting approximation of :math:`f_{i}^{(1)}` is the following:
		
		.. math::
		
		    \hat f_{i}^{(1)} =
		        \frac{
		            h_{s}^{2}f\left(x_{i} + h_{d}\right)
		            + \left(h_{d}^{2} - h_{s}^{2}\right)f\left(x_{i}\right)
		            - h_{d}^{2}f\left(x_{i}-h_{s}\right)}
		            { h_{s}h_{d}\left(h_{d} + h_{s}\right)}
		        + \mathcal{O}\left(\frac{h_{d}h_{s}^{2}
		                            + h_{s}h_{d}^{2}}{h_{d}
		                            + h_{s}}\right)
		
		It is worth noting that if :math:`h_{s}=h_{d}`
		(i.e., data are evenly spaced)
		we find the standard second order approximation:
		
		.. math::
		
		    \hat f_{i}^{(1)}=
		        \frac{f\left(x_{i+1}\right) - f\left(x_{i-1}\right)}{2h}
		        + \mathcal{O}\left(h^{2}\right)
		
		With a similar procedure the forward/backward approximations used for
		boundaries can be derived.
		
		References
		----------
		.. [1]  Quarteroni A., Sacco R., Saleri F. (2007) Numerical Mathematics
		        (Texts in Applied Mathematics). New York: Springer.
		.. [2]  Durran D. R. (1999) Numerical Methods for Wave Equations
		        in Geophysical Fluid Dynamics. New York: Springer.
		.. [3]  Fornberg B. (1988) Generation of Finite Difference Formulas on
		        Arbitrarily Spaced Grids,
		        Mathematics of Computation 51, no. 184 : 699-706.
		        `PDF <http://www.ams.org/journals/mcom/1988-51-184/
		        S0025-5718-1988-0935077-0/S0025-5718-1988-0935077-0.pdf>`_.
	**/
	static public function gradient(f:Dynamic, ?varargs:python.VarArgs<Dynamic>, ?axis:Dynamic, ?edge_order:Dynamic):Dynamic;
	/**
		Return the Hamming window.
		
		The Hamming window is a taper formed by using a weighted cosine.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an
		    empty array is returned.
		
		Returns
		-------
		out : ndarray
		    The window, with the maximum value normalized to one (the value
		    one appears only if the number of samples is odd).
		
		See Also
		--------
		bartlett, blackman, hanning, kaiser
		
		Notes
		-----
		The Hamming window is defined as
		
		.. math::  w(n) = 0.54 - 0.46cos\left(\frac{2\pi{n}}{M-1}\right)
		           \qquad 0 \leq n \leq M-1
		
		The Hamming was named for R. W. Hamming, an associate of J. W. Tukey
		and is described in Blackman and Tukey. It was recommended for
		smoothing the truncated autocovariance function in the time domain.
		Most references to the Hamming window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function.
		
		References
		----------
		.. [1] Blackman, R.B. and Tukey, J.W., (1958) The measurement of power
		       spectra, Dover Publications, New York.
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics", The
		       University of Alberta Press, 1975, pp. 109-110.
		.. [3] Wikipedia, "Window function",
		       https://en.wikipedia.org/wiki/Window_function
		.. [4] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 425.
		
		Examples
		--------
		>>> np.hamming(12)
		array([ 0.08      ,  0.15302337,  0.34890909,  0.60546483,  0.84123594, # may vary
		        0.98136677,  0.98136677,  0.84123594,  0.60546483,  0.34890909,
		        0.15302337,  0.08      ])
		
		Plot the window and the frequency response:
		
		>>> import matplotlib.pyplot as plt
		>>> from numpy.fft import fft, fftshift
		>>> window = np.hamming(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Hamming window")
		Text(0.5, 1.0, 'Hamming window')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("Sample")
		Text(0.5, 0, 'Sample')
		>>> plt.show()
		
		>>> plt.figure()
		<Figure size 640x480 with 0 Axes>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(mag)
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Hamming window")
		Text(0.5, 1.0, 'Frequency response of Hamming window')
		>>> plt.ylabel("Magnitude [dB]")
		Text(0, 0.5, 'Magnitude [dB]')
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		Text(0.5, 0, 'Normalized frequency [cycles per sample]')
		>>> plt.axis('tight')
		...
		>>> plt.show()
	**/
	static public function hamming(M:Dynamic):numpy.Ndarray;
	/**
		Return the Hanning window.
		
		The Hanning window is a taper formed by using a weighted cosine.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an
		    empty array is returned.
		
		Returns
		-------
		out : ndarray, shape(M,)
		    The window, with the maximum value normalized to one (the value
		    one appears only if `M` is odd).
		
		See Also
		--------
		bartlett, blackman, hamming, kaiser
		
		Notes
		-----
		The Hanning window is defined as
		
		.. math::  w(n) = 0.5 - 0.5cos\left(\frac{2\pi{n}}{M-1}\right)
		           \qquad 0 \leq n \leq M-1
		
		The Hanning was named for Julius von Hann, an Austrian meteorologist.
		It is also known as the Cosine Bell. Some authors prefer that it be
		called a Hann window, to help avoid confusion with the very similar
		Hamming window.
		
		Most references to the Hanning window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function.
		
		References
		----------
		.. [1] Blackman, R.B. and Tukey, J.W., (1958) The measurement of power
		       spectra, Dover Publications, New York.
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics",
		       The University of Alberta Press, 1975, pp. 106-108.
		.. [3] Wikipedia, "Window function",
		       https://en.wikipedia.org/wiki/Window_function
		.. [4] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 425.
		
		Examples
		--------
		>>> np.hanning(12)
		array([0.        , 0.07937323, 0.29229249, 0.57115742, 0.82743037,
		       0.97974649, 0.97974649, 0.82743037, 0.57115742, 0.29229249,
		       0.07937323, 0.        ])
		
		Plot the window and its frequency response:
		
		>>> import matplotlib.pyplot as plt
		>>> from numpy.fft import fft, fftshift
		>>> window = np.hanning(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Hann window")
		Text(0.5, 1.0, 'Hann window')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("Sample")
		Text(0.5, 0, 'Sample')
		>>> plt.show()
		
		>>> plt.figure()
		<Figure size 640x480 with 0 Axes>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> with np.errstate(divide='ignore', invalid='ignore'):
		...     response = 20 * np.log10(mag)
		...
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of the Hann window")
		Text(0.5, 1.0, 'Frequency response of the Hann window')
		>>> plt.ylabel("Magnitude [dB]")
		Text(0, 0.5, 'Magnitude [dB]')
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		Text(0.5, 0, 'Normalized frequency [cycles per sample]')
		>>> plt.axis('tight')
		...
		>>> plt.show()
	**/
	static public function hanning(M:Dynamic):Dynamic;
	/**
		Compute the histogram of a dataset.
		
		Parameters
		----------
		a : array_like
		    Input data. The histogram is computed over the flattened array.
		bins : int or sequence of scalars or str, optional
		    If `bins` is an int, it defines the number of equal-width
		    bins in the given range (10, by default). If `bins` is a
		    sequence, it defines a monotonically increasing array of bin edges,
		    including the rightmost edge, allowing for non-uniform bin widths.
		
		    .. versionadded:: 1.11.0
		
		    If `bins` is a string, it defines the method used to calculate the
		    optimal bin width, as defined by `histogram_bin_edges`.
		
		range : (float, float), optional
		    The lower and upper range of the bins.  If not provided, range
		    is simply ``(a.min(), a.max())``.  Values outside the range are
		    ignored. The first element of the range must be less than or
		    equal to the second. `range` affects the automatic bin
		    computation as well. While bin width is computed to be optimal
		    based on the actual data within `range`, the bin count will fill
		    the entire range including portions containing no data.
		normed : bool, optional
		
		    .. deprecated:: 1.6.0
		
		    This is equivalent to the `density` argument, but produces incorrect
		    results for unequal bin widths. It should not be used.
		
		    .. versionchanged:: 1.15.0
		        DeprecationWarnings are actually emitted.
		
		weights : array_like, optional
		    An array of weights, of the same shape as `a`.  Each value in
		    `a` only contributes its associated weight towards the bin count
		    (instead of 1). If `density` is True, the weights are
		    normalized, so that the integral of the density over the range
		    remains 1.
		density : bool, optional
		    If ``False``, the result will contain the number of samples in
		    each bin. If ``True``, the result is the value of the
		    probability *density* function at the bin, normalized such that
		    the *integral* over the range is 1. Note that the sum of the
		    histogram values will not be equal to 1 unless bins of unity
		    width are chosen; it is not a probability *mass* function.
		
		    Overrides the ``normed`` keyword if given.
		
		Returns
		-------
		hist : array
		    The values of the histogram. See `density` and `weights` for a
		    description of the possible semantics.
		bin_edges : array of dtype float
		    Return the bin edges ``(length(hist)+1)``.
		
		
		See Also
		--------
		histogramdd, bincount, searchsorted, digitize, histogram_bin_edges
		
		Notes
		-----
		All but the last (righthand-most) bin is half-open.  In other words,
		if `bins` is::
		
		  [1, 2, 3, 4]
		
		then the first bin is ``[1, 2)`` (including 1, but excluding 2) and
		the second ``[2, 3)``.  The last bin, however, is ``[3, 4]``, which
		*includes* 4.
		
		
		Examples
		--------
		>>> np.histogram([1, 2, 1], bins=[0, 1, 2, 3])
		(array([0, 2, 1]), array([0, 1, 2, 3]))
		>>> np.histogram(np.arange(4), bins=np.arange(5), density=True)
		(array([0.25, 0.25, 0.25, 0.25]), array([0, 1, 2, 3, 4]))
		>>> np.histogram([[1, 2, 1], [1, 0, 1]], bins=[0,1,2,3])
		(array([1, 4, 1]), array([0, 1, 2, 3]))
		
		>>> a = np.arange(5)
		>>> hist, bin_edges = np.histogram(a, density=True)
		>>> hist
		array([0.5, 0. , 0.5, 0. , 0. , 0.5, 0. , 0.5, 0. , 0.5])
		>>> hist.sum()
		2.4999999999999996
		>>> np.sum(hist * np.diff(bin_edges))
		1.0
		
		.. versionadded:: 1.11.0
		
		Automated Bin Selection Methods example, using 2 peak random data
		with 2000 points:
		
		>>> import matplotlib.pyplot as plt
		>>> rng = np.random.RandomState(10)  # deterministic random data
		>>> a = np.hstack((rng.normal(size=1000),
		...                rng.normal(loc=5, scale=2, size=1000)))
		>>> _ = plt.hist(a, bins='auto')  # arguments are passed to np.histogram
		>>> plt.title("Histogram with 'auto' bins")
		Text(0.5, 1.0, "Histogram with 'auto' bins")
		>>> plt.show()
	**/
	static public function histogram(a:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic, ?density:Dynamic):Array<Dynamic>;
	/**
		Compute the bi-dimensional histogram of two data samples.
		
		Parameters
		----------
		x : array_like, shape (N,)
		    An array containing the x coordinates of the points to be
		    histogrammed.
		y : array_like, shape (N,)
		    An array containing the y coordinates of the points to be
		    histogrammed.
		bins : int or array_like or [int, int] or [array, array], optional
		    The bin specification:
		
		      * If int, the number of bins for the two dimensions (nx=ny=bins).
		      * If array_like, the bin edges for the two dimensions
		        (x_edges=y_edges=bins).
		      * If [int, int], the number of bins in each dimension
		        (nx, ny = bins).
		      * If [array, array], the bin edges in each dimension
		        (x_edges, y_edges = bins).
		      * A combination [int, array] or [array, int], where int
		        is the number of bins and array is the bin edges.
		
		range : array_like, shape(2,2), optional
		    The leftmost and rightmost edges of the bins along each dimension
		    (if not specified explicitly in the `bins` parameters):
		    ``[[xmin, xmax], [ymin, ymax]]``. All values outside of this range
		    will be considered outliers and not tallied in the histogram.
		density : bool, optional
		    If False, the default, returns the number of samples in each bin.
		    If True, returns the probability *density* function at the bin,
		    ``bin_count / sample_count / bin_area``.
		normed : bool, optional
		    An alias for the density argument that behaves identically. To avoid
		    confusion with the broken normed argument to `histogram`, `density`
		    should be preferred.
		weights : array_like, shape(N,), optional
		    An array of values ``w_i`` weighing each sample ``(x_i, y_i)``.
		    Weights are normalized to 1 if `normed` is True. If `normed` is
		    False, the values of the returned histogram are equal to the sum of
		    the weights belonging to the samples falling into each bin.
		
		Returns
		-------
		H : ndarray, shape(nx, ny)
		    The bi-dimensional histogram of samples `x` and `y`. Values in `x`
		    are histogrammed along the first dimension and values in `y` are
		    histogrammed along the second dimension.
		xedges : ndarray, shape(nx+1,)
		    The bin edges along the first dimension.
		yedges : ndarray, shape(ny+1,)
		    The bin edges along the second dimension.
		
		See Also
		--------
		histogram : 1D histogram
		histogramdd : Multidimensional histogram
		
		Notes
		-----
		When `normed` is True, then the returned histogram is the sample
		density, defined such that the sum over bins of the product
		``bin_value * bin_area`` is 1.
		
		Please note that the histogram does not follow the Cartesian convention
		where `x` values are on the abscissa and `y` values on the ordinate
		axis.  Rather, `x` is histogrammed along the first dimension of the
		array (vertical), and `y` along the second dimension of the array
		(horizontal).  This ensures compatibility with `histogramdd`.
		
		Examples
		--------
		>>> from matplotlib.image import NonUniformImage
		>>> import matplotlib.pyplot as plt
		
		Construct a 2-D histogram with variable bin width. First define the bin
		edges:
		
		>>> xedges = [0, 1, 3, 5]
		>>> yedges = [0, 2, 3, 4, 6]
		
		Next we create a histogram H with random bin content:
		
		>>> x = np.random.normal(2, 1, 100)
		>>> y = np.random.normal(1, 1, 100)
		>>> H, xedges, yedges = np.histogram2d(x, y, bins=(xedges, yedges))
		>>> # Histogram does not follow Cartesian convention (see Notes),
		>>> # therefore transpose H for visualization purposes.
		>>> H = H.T
		
		:func:`imshow <matplotlib.pyplot.imshow>` can only display square bins:
		
		>>> fig = plt.figure(figsize=(7, 3))
		>>> ax = fig.add_subplot(131, title='imshow: square bins')
		>>> plt.imshow(H, interpolation='nearest', origin='lower',
		...         extent=[xedges[0], xedges[-1], yedges[0], yedges[-1]])
		<matplotlib.image.AxesImage object at 0x...>
		
		:func:`pcolormesh <matplotlib.pyplot.pcolormesh>` can display actual edges:
		
		>>> ax = fig.add_subplot(132, title='pcolormesh: actual edges',
		...         aspect='equal')
		>>> X, Y = np.meshgrid(xedges, yedges)
		>>> ax.pcolormesh(X, Y, H)
		<matplotlib.collections.QuadMesh object at 0x...>
		
		:class:`NonUniformImage <matplotlib.image.NonUniformImage>` can be used to
		display actual bin edges with interpolation:
		
		>>> ax = fig.add_subplot(133, title='NonUniformImage: interpolated',
		...         aspect='equal', xlim=xedges[[0, -1]], ylim=yedges[[0, -1]])
		>>> im = NonUniformImage(ax, interpolation='bilinear')
		>>> xcenters = (xedges[:-1] + xedges[1:]) / 2
		>>> ycenters = (yedges[:-1] + yedges[1:]) / 2
		>>> im.set_data(xcenters, ycenters, H)
		>>> ax.images.append(im)
		>>> plt.show()
		
		It is also possible to construct a 2-D histogram without specifying bin
		edges:
		
		>>> # Generate non-symmetric test data
		>>> n = 10000
		>>> x = np.linspace(1, 100, n)
		>>> y = 2*np.log(x) + np.random.rand(n) - 0.5
		>>> # Compute 2d histogram. Note the order of x/y and xedges/yedges
		>>> H, yedges, xedges = np.histogram2d(y, x, bins=20)
		
		Now we can plot the histogram using
		:func:`pcolormesh <matplotlib.pyplot.pcolormesh>`, and a
		:func:`hexbin <matplotlib.pyplot.hexbin>` for comparison.
		
		>>> # Plot histogram using pcolormesh
		>>> fig, (ax1, ax2) = plt.subplots(ncols=2, sharey=True)
		>>> ax1.pcolormesh(xedges, yedges, H, cmap='rainbow')
		>>> ax1.plot(x, 2*np.log(x), 'k-')
		>>> ax1.set_xlim(x.min(), x.max())
		>>> ax1.set_ylim(y.min(), y.max())
		>>> ax1.set_xlabel('x')
		>>> ax1.set_ylabel('y')
		>>> ax1.set_title('histogram2d')
		>>> ax1.grid()
		
		>>> # Create hexbin plot for comparison
		>>> ax2.hexbin(x, y, gridsize=20, cmap='rainbow')
		>>> ax2.plot(x, 2*np.log(x), 'k-')
		>>> ax2.set_title('hexbin')
		>>> ax2.set_xlim(x.min(), x.max())
		>>> ax2.set_xlabel('x')
		>>> ax2.grid()
		
		>>> plt.show()
	**/
	static public function histogram2d(x:Dynamic, y:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic, ?density:Dynamic):Dynamic;
	/**
		Function to calculate only the edges of the bins used by the `histogram`
		function.
		
		Parameters
		----------
		a : array_like
		    Input data. The histogram is computed over the flattened array.
		bins : int or sequence of scalars or str, optional
		    If `bins` is an int, it defines the number of equal-width
		    bins in the given range (10, by default). If `bins` is a
		    sequence, it defines the bin edges, including the rightmost
		    edge, allowing for non-uniform bin widths.
		
		    If `bins` is a string from the list below, `histogram_bin_edges` will use
		    the method chosen to calculate the optimal bin width and
		    consequently the number of bins (see `Notes` for more detail on
		    the estimators) from the data that falls within the requested
		    range. While the bin width will be optimal for the actual data
		    in the range, the number of bins will be computed to fill the
		    entire range, including the empty portions. For visualisation,
		    using the 'auto' option is suggested. Weighted data is not
		    supported for automated bin size selection.
		
		    'auto'
		        Maximum of the 'sturges' and 'fd' estimators. Provides good
		        all around performance.
		
		    'fd' (Freedman Diaconis Estimator)
		        Robust (resilient to outliers) estimator that takes into
		        account data variability and data size.
		
		    'doane'
		        An improved version of Sturges' estimator that works better
		        with non-normal datasets.
		
		    'scott'
		        Less robust estimator that that takes into account data
		        variability and data size.
		
		    'stone'
		        Estimator based on leave-one-out cross-validation estimate of
		        the integrated squared error. Can be regarded as a generalization
		        of Scott's rule.
		
		    'rice'
		        Estimator does not take variability into account, only data
		        size. Commonly overestimates number of bins required.
		
		    'sturges'
		        R's default method, only accounts for data size. Only
		        optimal for gaussian data and underestimates number of bins
		        for large non-gaussian datasets.
		
		    'sqrt'
		        Square root (of data size) estimator, used by Excel and
		        other programs for its speed and simplicity.
		
		range : (float, float), optional
		    The lower and upper range of the bins.  If not provided, range
		    is simply ``(a.min(), a.max())``.  Values outside the range are
		    ignored. The first element of the range must be less than or
		    equal to the second. `range` affects the automatic bin
		    computation as well. While bin width is computed to be optimal
		    based on the actual data within `range`, the bin count will fill
		    the entire range including portions containing no data.
		
		weights : array_like, optional
		    An array of weights, of the same shape as `a`.  Each value in
		    `a` only contributes its associated weight towards the bin count
		    (instead of 1). This is currently not used by any of the bin estimators,
		    but may be in the future.
		
		Returns
		-------
		bin_edges : array of dtype float
		    The edges to pass into `histogram`
		
		See Also
		--------
		histogram
		
		Notes
		-----
		The methods to estimate the optimal number of bins are well founded
		in literature, and are inspired by the choices R provides for
		histogram visualisation. Note that having the number of bins
		proportional to :math:`n^{1/3}` is asymptotically optimal, which is
		why it appears in most estimators. These are simply plug-in methods
		that give good starting points for number of bins. In the equations
		below, :math:`h` is the binwidth and :math:`n_h` is the number of
		bins. All estimators that compute bin counts are recast to bin width
		using the `ptp` of the data. The final bin count is obtained from
		``np.round(np.ceil(range / h))``. The final bin width is often less 
		than what is returned by the estimators below.
		
		'auto' (maximum of the 'sturges' and 'fd' estimators)
		    A compromise to get a good value. For small datasets the Sturges
		    value will usually be chosen, while larger datasets will usually
		    default to FD.  Avoids the overly conservative behaviour of FD
		    and Sturges for small and large datasets respectively.
		    Switchover point is usually :math:`a.size \approx 1000`.
		
		'fd' (Freedman Diaconis Estimator)
		    .. math:: h = 2 \frac{IQR}{n^{1/3}}
		
		    The binwidth is proportional to the interquartile range (IQR)
		    and inversely proportional to cube root of a.size. Can be too
		    conservative for small datasets, but is quite good for large
		    datasets. The IQR is very robust to outliers.
		
		'scott'
		    .. math:: h = \sigma \sqrt[3]{\frac{24 * \sqrt{\pi}}{n}}
		
		    The binwidth is proportional to the standard deviation of the
		    data and inversely proportional to cube root of ``x.size``. Can
		    be too conservative for small datasets, but is quite good for
		    large datasets. The standard deviation is not very robust to
		    outliers. Values are very similar to the Freedman-Diaconis
		    estimator in the absence of outliers.
		
		'rice'
		    .. math:: n_h = 2n^{1/3}
		
		    The number of bins is only proportional to cube root of
		    ``a.size``. It tends to overestimate the number of bins and it
		    does not take into account data variability.
		
		'sturges'
		    .. math:: n_h = \log _{2}n+1
		
		    The number of bins is the base 2 log of ``a.size``.  This
		    estimator assumes normality of data and is too conservative for
		    larger, non-normal datasets. This is the default method in R's
		    ``hist`` method.
		
		'doane'
		    .. math:: n_h = 1 + \log_{2}(n) +
		                    \log_{2}(1 + \frac{|g_1|}{\sigma_{g_1}})
		
		        g_1 = mean[(\frac{x - \mu}{\sigma})^3]
		
		        \sigma_{g_1} = \sqrt{\frac{6(n - 2)}{(n + 1)(n + 3)}}
		
		    An improved version of Sturges' formula that produces better
		    estimates for non-normal datasets. This estimator attempts to
		    account for the skew of the data.
		
		'sqrt'
		    .. math:: n_h = \sqrt n
		
		    The simplest and fastest estimator. Only takes into account the
		    data size.
		
		Examples
		--------
		>>> arr = np.array([0, 0, 0, 1, 2, 3, 3, 4, 5])
		>>> np.histogram_bin_edges(arr, bins='auto', range=(0, 1))
		array([0.  , 0.25, 0.5 , 0.75, 1.  ])
		>>> np.histogram_bin_edges(arr, bins=2)
		array([0. , 2.5, 5. ])
		
		For consistency with histogram, an array of pre-computed bins is
		passed through unmodified:
		
		>>> np.histogram_bin_edges(arr, [1, 2])
		array([1, 2])
		
		This function allows one set of bins to be computed, and reused across
		multiple histograms:
		
		>>> shared_bins = np.histogram_bin_edges(arr, bins='auto')
		>>> shared_bins
		array([0., 1., 2., 3., 4., 5.])
		
		>>> group_id = np.array([0, 1, 1, 0, 1, 1, 0, 1, 1])
		>>> hist_0, _ = np.histogram(arr[group_id == 0], bins=shared_bins)
		>>> hist_1, _ = np.histogram(arr[group_id == 1], bins=shared_bins)
		
		>>> hist_0; hist_1
		array([1, 1, 0, 1, 0])
		array([2, 0, 1, 1, 2])
		
		Which gives more easily comparable results than using separate bins for
		each histogram:
		
		>>> hist_0, bins_0 = np.histogram(arr[group_id == 0], bins='auto')
		>>> hist_1, bins_1 = np.histogram(arr[group_id == 1], bins='auto')
		>>> hist_0; hist_1
		array([1, 1, 1])
		array([2, 1, 1, 2])
		>>> bins_0; bins_1
		array([0., 1., 2., 3.])
		array([0.  , 1.25, 2.5 , 3.75, 5.  ])
	**/
	static public function histogram_bin_edges(a:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Compute the multidimensional histogram of some data.
		
		Parameters
		----------
		sample : (N, D) array, or (D, N) array_like
		    The data to be histogrammed.
		
		    Note the unusual interpretation of sample when an array_like:
		
		    * When an array, each row is a coordinate in a D-dimensional space -
		      such as ``histogramdd(np.array([p1, p2, p3]))``.
		    * When an array_like, each element is the list of values for single
		      coordinate - such as ``histogramdd((X, Y, Z))``.
		
		    The first form should be preferred.
		
		bins : sequence or int, optional
		    The bin specification:
		
		    * A sequence of arrays describing the monotonically increasing bin
		      edges along each dimension.
		    * The number of bins for each dimension (nx, ny, ... =bins)
		    * The number of bins for all dimensions (nx=ny=...=bins).
		
		range : sequence, optional
		    A sequence of length D, each an optional (lower, upper) tuple giving
		    the outer bin edges to be used if the edges are not given explicitly in
		    `bins`.
		    An entry of None in the sequence results in the minimum and maximum
		    values being used for the corresponding dimension.
		    The default, None, is equivalent to passing a tuple of D None values.
		density : bool, optional
		    If False, the default, returns the number of samples in each bin.
		    If True, returns the probability *density* function at the bin,
		    ``bin_count / sample_count / bin_volume``.
		normed : bool, optional
		    An alias for the density argument that behaves identically. To avoid
		    confusion with the broken normed argument to `histogram`, `density`
		    should be preferred.
		weights : (N,) array_like, optional
		    An array of values `w_i` weighing each sample `(x_i, y_i, z_i, ...)`.
		    Weights are normalized to 1 if normed is True. If normed is False,
		    the values of the returned histogram are equal to the sum of the
		    weights belonging to the samples falling into each bin.
		
		Returns
		-------
		H : ndarray
		    The multidimensional histogram of sample x. See normed and weights
		    for the different possible semantics.
		edges : list
		    A list of D arrays describing the bin edges for each dimension.
		
		See Also
		--------
		histogram: 1-D histogram
		histogram2d: 2-D histogram
		
		Examples
		--------
		>>> r = np.random.randn(100,3)
		>>> H, edges = np.histogramdd(r, bins = (5, 8, 4))
		>>> H.shape, edges[0].size, edges[1].size, edges[2].size
		((5, 8, 4), 6, 9, 5)
	**/
	static public function histogramdd(sample:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic, ?density:Dynamic):numpy.Ndarray;
	/**
		Split an array into multiple sub-arrays horizontally (column-wise).
		
		Please refer to the `split` documentation.  `hsplit` is equivalent
		to `split` with ``axis=1``, the array is always split along the second
		axis regardless of the array dimension.
		
		See Also
		--------
		split : Split an array into multiple sub-arrays of equal size.
		
		Examples
		--------
		>>> x = np.arange(16.0).reshape(4, 4)
		>>> x
		array([[ 0.,   1.,   2.,   3.],
		       [ 4.,   5.,   6.,   7.],
		       [ 8.,   9.,  10.,  11.],
		       [12.,  13.,  14.,  15.]])
		>>> np.hsplit(x, 2)
		[array([[  0.,   1.],
		       [  4.,   5.],
		       [  8.,   9.],
		       [12.,  13.]]),
		 array([[  2.,   3.],
		       [  6.,   7.],
		       [10.,  11.],
		       [14.,  15.]])]
		>>> np.hsplit(x, np.array([3, 6]))
		[array([[ 0.,   1.,   2.],
		       [ 4.,   5.,   6.],
		       [ 8.,   9.,  10.],
		       [12.,  13.,  14.]]),
		 array([[ 3.],
		       [ 7.],
		       [11.],
		       [15.]]),
		 array([], shape=(4, 0), dtype=float64)]
		
		With a higher dimensional array the split is still along the second axis.
		
		>>> x = np.arange(8.0).reshape(2, 2, 2)
		>>> x
		array([[[0.,  1.],
		        [2.,  3.]],
		       [[4.,  5.],
		        [6.,  7.]]])
		>>> np.hsplit(x, 2)
		[array([[[0.,  1.]],
		       [[4.,  5.]]]),
		 array([[[2.,  3.]],
		       [[6.,  7.]]])]
	**/
	static public function hsplit(ary:Dynamic, indices_or_sections:Dynamic):Dynamic;
	/**
		Modified Bessel function of the first kind, order 0.
		
		Usually denoted :math:`I_0`.
		
		Parameters
		----------
		x : array_like of float
		    Argument of the Bessel function.
		
		Returns
		-------
		out : ndarray, shape = x.shape, dtype = float
		    The modified Bessel function evaluated at each of the elements of `x`.
		
		See Also
		--------
		scipy.special.i0, scipy.special.iv, scipy.special.ive
		
		Notes
		-----
		The scipy implementation is recommended over this function: it is a
		proper ufunc written in C, and more than an order of magnitude faster.
		
		We use the algorithm published by Clenshaw [1]_ and referenced by
		Abramowitz and Stegun [2]_, for which the function domain is
		partitioned into the two intervals [0,8] and (8,inf), and Chebyshev
		polynomial expansions are employed in each interval. Relative error on
		the domain [0,30] using IEEE arithmetic is documented [3]_ as having a
		peak of 5.8e-16 with an rms of 1.4e-16 (n = 30000).
		
		References
		----------
		.. [1] C. W. Clenshaw, "Chebyshev series for mathematical functions", in
		       *National Physical Laboratory Mathematical Tables*, vol. 5, London:
		       Her Majesty's Stationery Office, 1962.
		.. [2] M. Abramowitz and I. A. Stegun, *Handbook of Mathematical
		       Functions*, 10th printing, New York: Dover, 1964, pp. 379.
		       https://personal.math.ubc.ca/~cbm/aands/page_379.htm
		.. [3] https://metacpan.org/pod/distribution/Math-Cephes/lib/Math/Cephes.pod#i0:-Modified-Bessel-function-of-order-zero
		
		Examples
		--------
		>>> np.i0(0.)
		array(1.0)
		>>> np.i0([0, 1, 2, 3])
		array([1.        , 1.26606588, 2.2795853 , 4.88079259])
	**/
	static public function i0(x:Dynamic):Dynamic;
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
		array([2.,  4.,  6.])
		>>> a.imag = np.array([8, 10, 12])
		>>> a
		array([1. +8.j,  3.+10.j,  5.+12.j])
		>>> np.imag(1 + 1j)
		1.0
	**/
	static public function imag(val:Dynamic):Dynamic;
	/**
		Test whether each element of a 1-D array is also present in a second array.
		
		Returns a boolean array the same length as `ar1` that is True
		where an element of `ar1` is in `ar2` and False otherwise.
		
		We recommend using :func:`isin` instead of `in1d` for new code.
		
		Parameters
		----------
		ar1 : (M,) array_like
		    Input array.
		ar2 : array_like
		    The values against which to test each value of `ar1`.
		assume_unique : bool, optional
		    If True, the input arrays are both assumed to be unique, which
		    can speed up the calculation.  Default is False.
		invert : bool, optional
		    If True, the values in the returned array are inverted (that is,
		    False where an element of `ar1` is in `ar2` and True otherwise).
		    Default is False. ``np.in1d(a, b, invert=True)`` is equivalent
		    to (but is faster than) ``np.invert(in1d(a, b))``.
		
		    .. versionadded:: 1.8.0
		
		Returns
		-------
		in1d : (M,) ndarray, bool
		    The values `ar1[in1d]` are in `ar2`.
		
		See Also
		--------
		isin                  : Version of this function that preserves the
		                        shape of ar1.
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Notes
		-----
		`in1d` can be considered as an element-wise function version of the
		python keyword `in`, for 1-D sequences. ``in1d(a, b)`` is roughly
		equivalent to ``np.array([item in b for item in a])``.
		However, this idea fails if `ar2` is a set, or similar (non-sequence)
		container:  As ``ar2`` is converted to an array, in those cases
		``asarray(ar2)`` is an object array rather than the expected array of
		contained values.
		
		.. versionadded:: 1.4.0
		
		Examples
		--------
		>>> test = np.array([0, 1, 2, 5, 0])
		>>> states = [0, 2]
		>>> mask = np.in1d(test, states)
		>>> mask
		array([ True, False,  True, False,  True])
		>>> test[mask]
		array([0, 2, 0])
		>>> mask = np.in1d(test, states, invert=True)
		>>> mask
		array([False,  True, False,  True, False])
		>>> test[mask]
		array([1, 5])
	**/
	static public function in1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic, ?invert:Dynamic):Dynamic;
	static public var index_exp : Dynamic;
	/**
		Get help information for a function, class, or module.
		
		Parameters
		----------
		object : object or str, optional
		    Input object or name to get information about. If `object` is a
		    numpy object, its docstring is given. If it is a string, available
		    modules are searched for matching objects.  If None, information
		    about `info` itself is returned.
		maxwidth : int, optional
		    Printing width.
		output : file like object, optional
		    File like object that the output is written to, default is
		    ``stdout``.  The object has to be opened in 'w' or 'a' mode.
		toplevel : str, optional
		    Start search at this level.
		
		See Also
		--------
		source, lookfor
		
		Notes
		-----
		When used interactively with an object, ``np.info(obj)`` is equivalent
		to ``help(obj)`` on the Python prompt or ``obj?`` on the IPython
		prompt.
		
		Examples
		--------
		>>> np.info(np.polyval) # doctest: +SKIP
		   polyval(p, x)
		     Evaluate the polynomial p at x.
		     ...
		
		When using a string for `object` it is possible to get multiple results.
		
		>>> np.info('fft') # doctest: +SKIP
		     *** Found in numpy ***
		Core FFT routines
		...
		     *** Found in numpy.fft ***
		 fft(a, n=None, axis=-1)
		...
		     *** Repeat reference found in numpy.fft.fftpack ***
		     *** Total of 3 references found. ***
	**/
	static public function info(?object:Dynamic, ?maxwidth:Dynamic, ?output:Dynamic, ?toplevel:Dynamic):Dynamic;
	/**
		Insert values along the given axis before the given indices.
		
		Parameters
		----------
		arr : array_like
		    Input array.
		obj : int, slice or sequence of ints
		    Object that defines the index or indices before which `values` is
		    inserted.
		
		    .. versionadded:: 1.8.0
		
		    Support for multiple insertions when `obj` is a single scalar or a
		    sequence with one element (similar to calling insert multiple
		    times).
		values : array_like
		    Values to insert into `arr`. If the type of `values` is different
		    from that of `arr`, `values` is converted to the type of `arr`.
		    `values` should be shaped so that ``arr[...,obj,...] = values``
		    is legal.
		axis : int, optional
		    Axis along which to insert `values`.  If `axis` is None then `arr`
		    is flattened first.
		
		Returns
		-------
		out : ndarray
		    A copy of `arr` with `values` inserted.  Note that `insert`
		    does not occur in-place: a new array is returned. If
		    `axis` is None, `out` is a flattened array.
		
		See Also
		--------
		append : Append elements at the end of an array.
		concatenate : Join a sequence of arrays along an existing axis.
		delete : Delete elements from an array.
		
		Notes
		-----
		Note that for higher dimensional inserts `obj=0` behaves very different
		from `obj=[0]` just like `arr[:,0,:] = values` is different from
		`arr[:,[0],:] = values`.
		
		Examples
		--------
		>>> a = np.array([[1, 1], [2, 2], [3, 3]])
		>>> a
		array([[1, 1],
		       [2, 2],
		       [3, 3]])
		>>> np.insert(a, 1, 5)
		array([1, 5, 1, ..., 2, 3, 3])
		>>> np.insert(a, 1, 5, axis=1)
		array([[1, 5, 1],
		       [2, 5, 2],
		       [3, 5, 3]])
		
		Difference between sequence and scalars:
		
		>>> np.insert(a, [1], [[1],[2],[3]], axis=1)
		array([[1, 1, 1],
		       [2, 2, 2],
		       [3, 3, 3]])
		>>> np.array_equal(np.insert(a, 1, [1, 2, 3], axis=1),
		...                np.insert(a, [1], [[1],[2],[3]], axis=1))
		True
		
		>>> b = a.flatten()
		>>> b
		array([1, 1, 2, 2, 3, 3])
		>>> np.insert(b, [2, 2], [5, 6])
		array([1, 1, 5, ..., 2, 3, 3])
		
		>>> np.insert(b, slice(2, 4), [5, 6])
		array([1, 1, 5, ..., 2, 3, 3])
		
		>>> np.insert(b, [2, 2], [7.13, False]) # type casting
		array([1, 1, 7, ..., 2, 3, 3])
		
		>>> x = np.arange(8).reshape(2, 4)
		>>> idx = (1, 3)
		>>> np.insert(x, idx, 999, axis=1)
		array([[  0, 999,   1,   2, 999,   3],
		       [  4, 999,   5,   6, 999,   7]])
	**/
	static public function insert(arr:Dynamic, obj:Dynamic, values:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		One-dimensional linear interpolation for monotonically increasing sample points.
		
		Returns the one-dimensional piecewise linear interpolant to a function
		with given discrete data points (`xp`, `fp`), evaluated at `x`.
		
		Parameters
		----------
		x : array_like
		    The x-coordinates at which to evaluate the interpolated values.
		
		xp : 1-D sequence of floats
		    The x-coordinates of the data points, must be increasing if argument
		    `period` is not specified. Otherwise, `xp` is internally sorted after
		    normalizing the periodic boundaries with ``xp = xp % period``.
		
		fp : 1-D sequence of float or complex
		    The y-coordinates of the data points, same length as `xp`.
		
		left : optional float or complex corresponding to fp
		    Value to return for `x < xp[0]`, default is `fp[0]`.
		
		right : optional float or complex corresponding to fp
		    Value to return for `x > xp[-1]`, default is `fp[-1]`.
		
		period : None or float, optional
		    A period for the x-coordinates. This parameter allows the proper
		    interpolation of angular x-coordinates. Parameters `left` and `right`
		    are ignored if `period` is specified.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		y : float or complex (corresponding to fp) or ndarray
		    The interpolated values, same shape as `x`.
		
		Raises
		------
		ValueError
		    If `xp` and `fp` have different length
		    If `xp` or `fp` are not 1-D sequences
		    If `period == 0`
		
		See Also
		--------
		scipy.interpolate
		
		Warnings
		--------
		The x-coordinate sequence is expected to be increasing, but this is not
		explicitly enforced.  However, if the sequence `xp` is non-increasing,
		interpolation results are meaningless.
		
		Note that, since NaN is unsortable, `xp` also cannot contain NaNs.
		
		A simple check for `xp` being strictly increasing is::
		
		    np.all(np.diff(xp) > 0)
		
		Examples
		--------
		>>> xp = [1, 2, 3]
		>>> fp = [3, 2, 0]
		>>> np.interp(2.5, xp, fp)
		1.0
		>>> np.interp([0, 1, 1.5, 2.72, 3.14], xp, fp)
		array([3.  , 3.  , 2.5 , 0.56, 0.  ])
		>>> UNDEF = -99.0
		>>> np.interp(3.14, xp, fp, right=UNDEF)
		-99.0
		
		Plot an interpolant to the sine function:
		
		>>> x = np.linspace(0, 2*np.pi, 10)
		>>> y = np.sin(x)
		>>> xvals = np.linspace(0, 2*np.pi, 50)
		>>> yinterp = np.interp(xvals, x, y)
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(x, y, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.plot(xvals, yinterp, '-x')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.show()
		
		Interpolation with periodic x-coordinates:
		
		>>> x = [-180, -170, -185, 185, -10, -5, 0, 365]
		>>> xp = [190, -190, 350, -350]
		>>> fp = [5, 10, 3, 4]
		>>> np.interp(x, xp, fp, period=360)
		array([7.5 , 5.  , 8.75, 6.25, 3.  , 3.25, 3.5 , 3.75])
		
		Complex interpolation:
		
		>>> x = [1.5, 4.0]
		>>> xp = [2,3,5]
		>>> fp = [1.0j, 0, 2+3j]
		>>> np.interp(x, xp, fp)
		array([0.+1.j , 1.+1.5j])
	**/
	static public function interp(x:Dynamic, xp:Dynamic, fp:Dynamic, ?left:Dynamic, ?right:Dynamic, ?period:Dynamic):Dynamic;
	/**
		Find the intersection of two arrays.
		
		Return the sorted, unique values that are in both of the input arrays.
		
		Parameters
		----------
		ar1, ar2 : array_like
		    Input arrays. Will be flattened if not already 1D.
		assume_unique : bool
		    If True, the input arrays are both assumed to be unique, which
		    can speed up the calculation.  If True but ``ar1`` or ``ar2`` are not
		    unique, incorrect results and out-of-bounds indices could result.
		    Default is False.
		return_indices : bool
		    If True, the indices which correspond to the intersection of the two
		    arrays are returned. The first instance of a value is used if there are
		    multiple. Default is False.
		
		    .. versionadded:: 1.15.0
		
		Returns
		-------
		intersect1d : ndarray
		    Sorted 1D array of common and unique elements.
		comm1 : ndarray
		    The indices of the first occurrences of the common values in `ar1`.
		    Only provided if `return_indices` is True.
		comm2 : ndarray
		    The indices of the first occurrences of the common values in `ar2`.
		    Only provided if `return_indices` is True.
		
		
		See Also
		--------
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Examples
		--------
		>>> np.intersect1d([1, 3, 4, 3], [3, 1, 2, 1])
		array([1, 3])
		
		To intersect more than two arrays, use functools.reduce:
		
		>>> from functools import reduce
		>>> reduce(np.intersect1d, ([1, 3, 4, 3], [3, 1, 2, 1], [6, 3, 4, 2]))
		array([3])
		
		To return the indices of the values common to the input arrays
		along with the intersected values:
		
		>>> x = np.array([1, 1, 2, 3, 4])
		>>> y = np.array([2, 1, 4, 6])
		>>> xy, x_ind, y_ind = np.intersect1d(x, y, return_indices=True)
		>>> x_ind, y_ind
		(array([0, 2, 4]), array([1, 0, 2]))
		>>> xy, x[x_ind], y[y_ind]
		(array([1, 2, 4]), array([1, 2, 4]), array([1, 2, 4]))
	**/
	static public function intersect1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic, ?return_indices:Dynamic):numpy.Ndarray;
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
		Calculates `element in test_elements`, broadcasting over `element` only.
		Returns a boolean array of the same shape as `element` that is True
		where an element of `element` is in `test_elements` and False otherwise.
		
		Parameters
		----------
		element : array_like
		    Input array.
		test_elements : array_like
		    The values against which to test each value of `element`.
		    This argument is flattened if it is an array or array_like.
		    See notes for behavior with non-array-like parameters.
		assume_unique : bool, optional
		    If True, the input arrays are both assumed to be unique, which
		    can speed up the calculation.  Default is False.
		invert : bool, optional
		    If True, the values in the returned array are inverted, as if
		    calculating `element not in test_elements`. Default is False.
		    ``np.isin(a, b, invert=True)`` is equivalent to (but faster
		    than) ``np.invert(np.isin(a, b))``.
		
		Returns
		-------
		isin : ndarray, bool
		    Has the same shape as `element`. The values `element[isin]`
		    are in `test_elements`.
		
		See Also
		--------
		in1d                  : Flattened version of this function.
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Notes
		-----
		
		`isin` is an element-wise function version of the python keyword `in`.
		``isin(a, b)`` is roughly equivalent to
		``np.array([item in b for item in a])`` if `a` and `b` are 1-D sequences.
		
		`element` and `test_elements` are converted to arrays if they are not
		already. If `test_elements` is a set (or other non-sequence collection)
		it will be converted to an object array with one element, rather than an
		array of the values contained in `test_elements`. This is a consequence
		of the `array` constructor's way of handling non-sequence collections.
		Converting the set to a list usually gives the desired behavior.
		
		.. versionadded:: 1.13.0
		
		Examples
		--------
		>>> element = 2*np.arange(4).reshape((2, 2))
		>>> element
		array([[0, 2],
		       [4, 6]])
		>>> test_elements = [1, 2, 4, 8]
		>>> mask = np.isin(element, test_elements)
		>>> mask
		array([[False,  True],
		       [ True, False]])
		>>> element[mask]
		array([2, 4])
		
		The indices of the matched values can be obtained with `nonzero`:
		
		>>> np.nonzero(mask)
		(array([0, 1]), array([1, 0]))
		
		The test can also be inverted:
		
		>>> mask = np.isin(element, test_elements, invert=True)
		>>> mask
		array([[ True, False],
		       [False,  True]])
		>>> element[mask]
		array([0, 6])
		
		Because of how `array` handles sets, the following does not
		work as expected:
		
		>>> test_set = {1, 2, 4, 8}
		>>> np.isin(element, test_set)
		array([[False, False],
		       [False, False]])
		
		Casting the set to a list gives the expected result:
		
		>>> np.isin(element, list(test_set))
		array([[False,  True],
		       [ True, False]])
	**/
	static public function isin(element:Dynamic, test_elements:Dynamic, ?assume_unique:Dynamic, ?invert:Dynamic):Dynamic;
	/**
		Test element-wise for negative infinity, return result as bool array.
		
		Parameters
		----------
		x : array_like
		    The input array.
		out : array_like, optional
		    A location into which the result is stored. If provided, it must have a
		    shape that the input broadcasts to. If not provided or None, a
		    freshly-allocated boolean array is returned.
		
		Returns
		-------
		out : ndarray
		    A boolean array with the same dimensions as the input.
		    If second argument is not supplied then a numpy boolean array is
		    returned with values True where the corresponding element of the
		    input is negative infinity and values False where the element of
		    the input is not negative infinity.
		
		    If a second argument is supplied the result is stored there. If the
		    type of that array is a numeric type the result is represented as
		    zeros and ones, if the type is boolean then as False and True. The
		    return value `out` is then a reference to that array.
		
		See Also
		--------
		isinf, isposinf, isnan, isfinite
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754).
		
		Errors result if the second argument is also supplied when x is a scalar
		input, if first and second arguments have different shapes, or if the
		first argument has complex values.
		
		Examples
		--------
		>>> np.isneginf(np.NINF)
		True
		>>> np.isneginf(np.inf)
		False
		>>> np.isneginf(np.PINF)
		False
		>>> np.isneginf([-np.inf, 0., np.inf])
		array([ True, False, False])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isneginf(x, y)
		array([1, 0, 0])
		>>> y
		array([1, 0, 0])
	**/
	static public function isneginf(x:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		Test element-wise for positive infinity, return result as bool array.
		
		Parameters
		----------
		x : array_like
		    The input array.
		out : array_like, optional
		    A location into which the result is stored. If provided, it must have a
		    shape that the input broadcasts to. If not provided or None, a
		    freshly-allocated boolean array is returned.
		
		Returns
		-------
		out : ndarray
		    A boolean array with the same dimensions as the input.
		    If second argument is not supplied then a boolean array is returned
		    with values True where the corresponding element of the input is
		    positive infinity and values False where the element of the input is
		    not positive infinity.
		
		    If a second argument is supplied the result is stored there. If the
		    type of that array is a numeric type the result is represented as zeros
		    and ones, if the type is boolean then as False and True.
		    The return value `out` is then a reference to that array.
		
		See Also
		--------
		isinf, isneginf, isfinite, isnan
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754).
		
		Errors result if the second argument is also supplied when x is a scalar
		input, if first and second arguments have different shapes, or if the
		first argument has complex values
		
		Examples
		--------
		>>> np.isposinf(np.PINF)
		True
		>>> np.isposinf(np.inf)
		True
		>>> np.isposinf(np.NINF)
		False
		>>> np.isposinf([-np.inf, 0., np.inf])
		array([False, False,  True])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isposinf(x, y)
		array([0, 0, 1])
		>>> y
		array([0, 0, 1])
	**/
	static public function isposinf(x:Dynamic, ?out:Dynamic):numpy.Ndarray;
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
		
		Notes
		-----
		`isreal` may behave unexpectedly for string or object arrays (see examples)
		
		See Also
		--------
		iscomplex
		isrealobj : Return True if x is not a complex type.
		
		Examples
		--------
		>>> a = np.array([1+1j, 1+0j, 4.5, 3, 2, 2j], dtype=complex)
		>>> np.isreal(a)
		array([False,  True,  True,  True,  True, False])
		
		The function does not work on string arrays.
		
		>>> a = np.array([2j, "a"], dtype="U")
		>>> np.isreal(a)  # Warns about non-elementwise comparison
		False
		
		Returns True for all elements in input array of ``dtype=object`` even if
		any of the elements is complex.
		
		>>> a = np.array([1, "2", 3+4j], dtype=object)
		>>> np.isreal(a)
		array([ True,  True,  True])
		
		isreal should not be used with object arrays
		
		>>> a = np.array([1+2j, 2+1j], dtype=object)
		>>> np.isreal(a)
		array([ True,  True])
	**/
	static public function isreal(x:Dynamic):Dynamic;
	/**
		Return True if x is a not complex type or an array of complex numbers.
		
		The type of the input is checked, not the value. So even if the input
		has an imaginary part equal to zero, `isrealobj` evaluates to False
		if the data type is complex.
		
		Parameters
		----------
		x : any
		    The input can be of any type and shape.
		
		Returns
		-------
		y : bool
		    The return value, False if `x` is of a complex type.
		
		See Also
		--------
		iscomplexobj, isreal
		
		Notes
		-----
		The function is only meant for arrays with numerical values but it
		accepts all other objects. Since it assumes array input, the return
		value of other objects may be True.
		
		>>> np.isrealobj('A string')
		True
		>>> np.isrealobj(False)
		True
		>>> np.isrealobj(None)
		True
		
		Examples
		--------
		>>> np.isrealobj(1)
		True
		>>> np.isrealobj(1+0j)
		False
		>>> np.isrealobj([3, 1+0j, True])
		False
	**/
	static public function isrealobj(x:Dynamic):Bool;
	/**
		Determine if a class is a subclass of a second class.
		
		`issubclass_` is equivalent to the Python built-in ``issubclass``,
		except that it returns False instead of raising a TypeError if one
		of the arguments is not a class.
		
		Parameters
		----------
		arg1 : class
		    Input class. True is returned if `arg1` is a subclass of `arg2`.
		arg2 : class or tuple of classes.
		    Input class. If a tuple of classes, True is returned if `arg1` is a
		    subclass of any of the tuple elements.
		
		Returns
		-------
		out : bool
		    Whether `arg1` is a subclass of `arg2` or not.
		
		See Also
		--------
		issubsctype, issubdtype, issctype
		
		Examples
		--------
		>>> np.issubclass_(np.int32, int)
		False
		>>> np.issubclass_(np.int32, float)
		False
		>>> np.issubclass_(np.float64, float)
		True
	**/
	static public function issubclass_(arg1:Dynamic, arg2:Dynamic):Bool;
	/**
		Returns True if first argument is a typecode lower/equal in type hierarchy.
		
		This is like the builtin :func:`issubclass`, but for `dtype`\ s.
		
		Parameters
		----------
		arg1, arg2 : dtype_like
		    `dtype` or object coercible to one
		
		Returns
		-------
		out : bool
		
		See Also
		--------
		:ref:`arrays.scalars` : Overview of the numpy type hierarchy.
		issubsctype, issubclass_
		
		Examples
		--------
		`issubdtype` can be used to check the type of arrays:
		
		>>> ints = np.array([1, 2, 3], dtype=np.int32)
		>>> np.issubdtype(ints.dtype, np.integer)
		True
		>>> np.issubdtype(ints.dtype, np.floating)
		False
		
		>>> floats = np.array([1, 2, 3], dtype=np.float32)
		>>> np.issubdtype(floats.dtype, np.integer)
		False
		>>> np.issubdtype(floats.dtype, np.floating)
		True
		
		Similar types of different sizes are not subdtypes of each other:
		
		>>> np.issubdtype(np.float64, np.float32)
		False
		>>> np.issubdtype(np.float32, np.float64)
		False
		
		but both are subtypes of `floating`:
		
		>>> np.issubdtype(np.float64, np.floating)
		True
		>>> np.issubdtype(np.float32, np.floating)
		True
		
		For convenience, dtype-like objects are allowed too:
		
		>>> np.issubdtype('S1', np.string_)
		True
		>>> np.issubdtype('i4', np.signedinteger)
		True
	**/
	static public function issubdtype(arg1:Dynamic, arg2:Dynamic):Bool;
	/**
		Determine if the first argument is a subclass of the second argument.
		
		Parameters
		----------
		arg1, arg2 : dtype or dtype specifier
		    Data-types.
		
		Returns
		-------
		out : bool
		    The result.
		
		See Also
		--------
		issctype, issubdtype, obj2sctype
		
		Examples
		--------
		>>> np.issubsctype('S8', str)
		False
		>>> np.issubsctype(np.array([1]), int)
		True
		>>> np.issubsctype(np.array([1]), float)
		False
	**/
	static public function issubsctype(arg1:Dynamic, arg2:Dynamic):Bool;
	/**
		Check whether or not an object can be iterated over.
		
		Parameters
		----------
		y : object
		  Input object.
		
		Returns
		-------
		b : bool
		  Return ``True`` if the object has an iterator method or is a
		  sequence and ``False`` otherwise.
		
		
		Examples
		--------
		>>> np.iterable([1, 2, 3])
		True
		>>> np.iterable(2)
		False
		
		Notes
		-----
		In most cases, the results of ``np.iterable(obj)`` are consistent with
		``isinstance(obj, collections.abc.Iterable)``. One notable exception is
		the treatment of 0-dimensional arrays::
		
		    >>> from collections.abc import Iterable
		    >>> a = np.array(1.0)  # 0-dimensional numpy array
		    >>> isinstance(a, Iterable)
		    True
		    >>> np.iterable(a)
		    False
	**/
	static public function iterable(y:Dynamic):Bool;
	/**
		Construct an open mesh from multiple sequences.
		
		This function takes N 1-D sequences and returns N outputs with N
		dimensions each, such that the shape is 1 in all but one dimension
		and the dimension with the non-unit shape value cycles through all
		N dimensions.
		
		Using `ix_` one can quickly construct index arrays that will index
		the cross product. ``a[np.ix_([1,3],[2,5])]`` returns the array
		``[[a[1,2] a[1,5]], [a[3,2] a[3,5]]]``.
		
		Parameters
		----------
		args : 1-D sequences
		    Each sequence should be of integer or boolean type.
		    Boolean sequences will be interpreted as boolean masks for the
		    corresponding dimension (equivalent to passing in
		    ``np.nonzero(boolean_sequence)``).
		
		Returns
		-------
		out : tuple of ndarrays
		    N arrays with N dimensions each, with N the number of input
		    sequences. Together these arrays form an open mesh.
		
		See Also
		--------
		ogrid, mgrid, meshgrid
		
		Examples
		--------
		>>> a = np.arange(10).reshape(2, 5)
		>>> a
		array([[0, 1, 2, 3, 4],
		       [5, 6, 7, 8, 9]])
		>>> ixgrid = np.ix_([0, 1], [2, 4])
		>>> ixgrid
		(array([[0],
		       [1]]), array([[2, 4]]))
		>>> ixgrid[0].shape, ixgrid[1].shape
		((2, 1), (1, 2))
		>>> a[ixgrid]
		array([[2, 4],
		       [7, 9]])
		
		>>> ixgrid = np.ix_([True, True], [2, 4])
		>>> a[ixgrid]
		array([[2, 4],
		       [7, 9]])
		>>> ixgrid = np.ix_([True, True], [False, False, True, False, True])
		>>> a[ixgrid]
		array([[2, 4],
		       [7, 9]])
	**/
	static public function ix_(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return the Kaiser window.
		
		The Kaiser window is a taper formed by using a Bessel function.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an
		    empty array is returned.
		beta : float
		    Shape parameter for window.
		
		Returns
		-------
		out : array
		    The window, with the maximum value normalized to one (the value
		    one appears only if the number of samples is odd).
		
		See Also
		--------
		bartlett, blackman, hamming, hanning
		
		Notes
		-----
		The Kaiser window is defined as
		
		.. math::  w(n) = I_0\left( \beta \sqrt{1-\frac{4n^2}{(M-1)^2}}
		           \right)/I_0(\beta)
		
		with
		
		.. math:: \quad -\frac{M-1}{2} \leq n \leq \frac{M-1}{2},
		
		where :math:`I_0` is the modified zeroth-order Bessel function.
		
		The Kaiser was named for Jim Kaiser, who discovered a simple
		approximation to the DPSS window based on Bessel functions.  The Kaiser
		window is a very good approximation to the Digital Prolate Spheroidal
		Sequence, or Slepian window, which is the transform which maximizes the
		energy in the main lobe of the window relative to total energy.
		
		The Kaiser can approximate many other windows by varying the beta
		parameter.
		
		====  =======================
		beta  Window shape
		====  =======================
		0     Rectangular
		5     Similar to a Hamming
		6     Similar to a Hanning
		8.6   Similar to a Blackman
		====  =======================
		
		A beta value of 14 is probably a good starting point. Note that as beta
		gets large, the window narrows, and so the number of samples needs to be
		large enough to sample the increasingly narrow spike, otherwise NaNs will
		get returned.
		
		Most references to the Kaiser window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function.
		
		References
		----------
		.. [1] J. F. Kaiser, "Digital Filters" - Ch 7 in "Systems analysis by
		       digital computer", Editors: F.F. Kuo and J.F. Kaiser, p 218-285.
		       John Wiley and Sons, New York, (1966).
		.. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics", The
		       University of Alberta Press, 1975, pp. 177-178.
		.. [3] Wikipedia, "Window function",
		       https://en.wikipedia.org/wiki/Window_function
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> np.kaiser(12, 14)
		 array([7.72686684e-06, 3.46009194e-03, 4.65200189e-02, # may vary
		        2.29737120e-01, 5.99885316e-01, 9.45674898e-01,
		        9.45674898e-01, 5.99885316e-01, 2.29737120e-01,
		        4.65200189e-02, 3.46009194e-03, 7.72686684e-06])
		
		
		Plot the window and the frequency response:
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.kaiser(51, 14)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Kaiser window")
		Text(0.5, 1.0, 'Kaiser window')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("Sample")
		Text(0.5, 0, 'Sample')
		>>> plt.show()
		
		>>> plt.figure()
		<Figure size 640x480 with 0 Axes>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(mag)
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Kaiser window")
		Text(0.5, 1.0, 'Frequency response of Kaiser window')
		>>> plt.ylabel("Magnitude [dB]")
		Text(0, 0.5, 'Magnitude [dB]')
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		Text(0.5, 0, 'Normalized frequency [cycles per sample]')
		>>> plt.axis('tight')
		(-0.5, 0.5, -100.0, ...) # may vary
		>>> plt.show()
	**/
	static public function kaiser(M:Dynamic, beta:Dynamic):Array<Dynamic>;
	/**
		Kronecker product of two arrays.
		
		Computes the Kronecker product, a composite array made of blocks of the
		second array scaled by the first.
		
		Parameters
		----------
		a, b : array_like
		
		Returns
		-------
		out : ndarray
		
		See Also
		--------
		outer : The outer product
		
		Notes
		-----
		The function assumes that the number of dimensions of `a` and `b`
		are the same, if necessary prepending the smallest with ones.
		If ``a.shape = (r0,r1,..,rN)`` and ``b.shape = (s0,s1,...,sN)``,
		the Kronecker product has shape ``(r0*s0, r1*s1, ..., rN*SN)``.
		The elements are products of elements from `a` and `b`, organized
		explicitly by::
		
		    kron(a,b)[k0,k1,...,kN] = a[i0,i1,...,iN] * b[j0,j1,...,jN]
		
		where::
		
		    kt = it * st + jt,  t = 0,...,N
		
		In the common 2-D case (N=1), the block structure can be visualized::
		
		    [[ a[0,0]*b,   a[0,1]*b,  ... , a[0,-1]*b  ],
		     [  ...                              ...   ],
		     [ a[-1,0]*b,  a[-1,1]*b, ... , a[-1,-1]*b ]]
		
		
		Examples
		--------
		>>> np.kron([1,10,100], [5,6,7])
		array([  5,   6,   7, ..., 500, 600, 700])
		>>> np.kron([5,6,7], [1,10,100])
		array([  5,  50, 500, ...,   7,  70, 700])
		
		>>> np.kron(np.eye(2), np.ones((2,2)))
		array([[1.,  1.,  0.,  0.],
		       [1.,  1.,  0.,  0.],
		       [0.,  0.,  1.,  1.],
		       [0.,  0.,  1.,  1.]])
		
		>>> a = np.arange(100).reshape((2,5,2,5))
		>>> b = np.arange(24).reshape((2,3,4))
		>>> c = np.kron(a,b)
		>>> c.shape
		(2, 10, 6, 20)
		>>> I = (1,3,0,2)
		>>> J = (0,2,1)
		>>> J1 = (0,) + J             # extend to ndim=4
		>>> S1 = (1,) + b.shape
		>>> K = tuple(np.array(I) * np.array(S1) + np.array(J1))
		>>> c[K] == a[I]*b[J]
		True
	**/
	static public function kron(a:Dynamic, b:Dynamic):numpy.Ndarray;
	/**
		Load arrays or pickled objects from ``.npy``, ``.npz`` or pickled files.
		
		.. warning:: Loading files that contain object arrays uses the ``pickle``
		             module, which is not secure against erroneous or maliciously
		             constructed data. Consider passing ``allow_pickle=False`` to
		             load data that is known not to contain object arrays for the
		             safer handling of untrusted sources.
		
		Parameters
		----------
		file : file-like object, string, or pathlib.Path
		    The file to read. File-like objects must support the
		    ``seek()`` and ``read()`` methods. Pickled files require that the
		    file-like object support the ``readline()`` method as well.
		mmap_mode : {None, 'r+', 'r', 'w+', 'c'}, optional
		    If not None, then memory-map the file, using the given mode (see
		    `numpy.memmap` for a detailed description of the modes).  A
		    memory-mapped array is kept on disk. However, it can be accessed
		    and sliced like any ndarray.  Memory mapping is especially useful
		    for accessing small fragments of large files without reading the
		    entire file into memory.
		allow_pickle : bool, optional
		    Allow loading pickled object arrays stored in npy files. Reasons for
		    disallowing pickles include security, as loading pickled data can
		    execute arbitrary code. If pickles are disallowed, loading object
		    arrays will fail. Default: False
		
		    .. versionchanged:: 1.16.3
		        Made default False in response to CVE-2019-6446.
		
		fix_imports : bool, optional
		    Only useful when loading Python 2 generated pickled files on Python 3,
		    which includes npy/npz files containing object arrays. If `fix_imports`
		    is True, pickle will try to map the old Python 2 names to the new names
		    used in Python 3.
		encoding : str, optional
		    What encoding to use when reading Python 2 strings. Only useful when
		    loading Python 2 generated pickled files in Python 3, which includes
		    npy/npz files containing object arrays. Values other than 'latin1',
		    'ASCII', and 'bytes' are not allowed, as they can corrupt numerical
		    data. Default: 'ASCII'
		
		Returns
		-------
		result : array, tuple, dict, etc.
		    Data stored in the file. For ``.npz`` files, the returned instance
		    of NpzFile class must be closed to avoid leaking file descriptors.
		
		Raises
		------
		OSError
		    If the input file does not exist or cannot be read.
		UnpicklingError
		    If ``allow_pickle=True``, but the file cannot be loaded as a pickle.
		ValueError
		    The file contains an object array, but ``allow_pickle=False`` given.
		
		See Also
		--------
		save, savez, savez_compressed, loadtxt
		memmap : Create a memory-map to an array stored in a file on disk.
		lib.format.open_memmap : Create or load a memory-mapped ``.npy`` file.
		
		Notes
		-----
		- If the file contains pickle data, then whatever object is stored
		  in the pickle is returned.
		- If the file is a ``.npy`` file, then a single array is returned.
		- If the file is a ``.npz`` file, then a dictionary-like object is
		  returned, containing ``{filename: array}`` key-value pairs, one for
		  each file in the archive.
		- If the file is a ``.npz`` file, the returned value supports the
		  context manager protocol in a similar fashion to the open function::
		
		    with load('foo.npz') as data:
		        a = data['a']
		
		  The underlying file descriptor is closed when exiting the 'with'
		  block.
		
		Examples
		--------
		Store data to disk, and load it again:
		
		>>> np.save('/tmp/123', np.array([[1, 2, 3], [4, 5, 6]]))
		>>> np.load('/tmp/123.npy')
		array([[1, 2, 3],
		       [4, 5, 6]])
		
		Store compressed data to disk, and load it again:
		
		>>> a=np.array([[1, 2, 3], [4, 5, 6]])
		>>> b=np.array([1, 2])
		>>> np.savez('/tmp/123.npz', a=a, b=b)
		>>> data = np.load('/tmp/123.npz')
		>>> data['a']
		array([[1, 2, 3],
		       [4, 5, 6]])
		>>> data['b']
		array([1, 2])
		>>> data.close()
		
		Mem-map the stored array, and then access the second row
		directly from disk:
		
		>>> X = np.load('/tmp/123.npy', mmap_mode='r')
		>>> X[1, :]
		memmap([4, 5, 6])
	**/
	static public function load(file:Dynamic, ?mmap_mode:Dynamic, ?allow_pickle:Dynamic, ?fix_imports:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		Load data from a text file.
		
		Each row in the text file must have the same number of values.
		
		Parameters
		----------
		fname : file, str, pathlib.Path, list of str, generator
		    File, filename, list, or generator to read.  If the filename
		    extension is ``.gz`` or ``.bz2``, the file is first decompressed. Note
		    that generators must return bytes or strings. The strings
		    in a list or produced by a generator are treated as lines.
		dtype : data-type, optional
		    Data-type of the resulting array; default: float.  If this is a
		    structured data-type, the resulting array will be 1-dimensional, and
		    each row will be interpreted as an element of the array.  In this
		    case, the number of columns used must match the number of fields in
		    the data-type.
		comments : str or sequence of str, optional
		    The characters or list of characters used to indicate the start of a
		    comment. None implies no comments. For backwards compatibility, byte
		    strings will be decoded as 'latin1'. The default is '#'.
		delimiter : str, optional
		    The string used to separate values. For backwards compatibility, byte
		    strings will be decoded as 'latin1'. The default is whitespace.
		converters : dict, optional
		    A dictionary mapping column number to a function that will parse the
		    column string into the desired value.  E.g., if column 0 is a date
		    string: ``converters = {0: datestr2num}``.  Converters can also be
		    used to provide a default value for missing data (but see also
		    `genfromtxt`): ``converters = {3: lambda s: float(s.strip() or 0)}``.
		    Default: None.
		skiprows : int, optional
		    Skip the first `skiprows` lines, including comments; default: 0.
		usecols : int or sequence, optional
		    Which columns to read, with 0 being the first. For example,
		    ``usecols = (1,4,5)`` will extract the 2nd, 5th and 6th columns.
		    The default, None, results in all columns being read.
		
		    .. versionchanged:: 1.11.0
		        When a single column has to be read it is possible to use
		        an integer instead of a tuple. E.g ``usecols = 3`` reads the
		        fourth column the same way as ``usecols = (3,)`` would.
		unpack : bool, optional
		    If True, the returned array is transposed, so that arguments may be
		    unpacked using ``x, y, z = loadtxt(...)``.  When used with a
		    structured data-type, arrays are returned for each field.
		    Default is False.
		ndmin : int, optional
		    The returned array will have at least `ndmin` dimensions.
		    Otherwise mono-dimensional axes will be squeezed.
		    Legal values: 0 (default), 1 or 2.
		
		    .. versionadded:: 1.6.0
		encoding : str, optional
		    Encoding used to decode the inputfile. Does not apply to input streams.
		    The special value 'bytes' enables backward compatibility workarounds
		    that ensures you receive byte arrays as results if possible and passes
		    'latin1' encoded strings to converters. Override this value to receive
		    unicode arrays and pass strings as input to converters.  If set to None
		    the system default is used. The default value is 'bytes'.
		
		    .. versionadded:: 1.14.0
		max_rows : int, optional
		    Read `max_rows` lines of content after `skiprows` lines. The default
		    is to read all the lines.
		
		    .. versionadded:: 1.16.0
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
		    Data read from the text file.
		
		See Also
		--------
		load, fromstring, fromregex
		genfromtxt : Load data with missing values handled as specified.
		scipy.io.loadmat : reads MATLAB data files
		
		Notes
		-----
		This function aims to be a fast reader for simply formatted files.  The
		`genfromtxt` function provides more sophisticated handling of, e.g.,
		lines with missing values.
		
		.. versionadded:: 1.10.0
		
		The strings produced by the Python float.hex method can be used as
		input for floats.
		
		Examples
		--------
		>>> from io import StringIO   # StringIO behaves like a file object
		>>> c = StringIO("0 1\n2 3")
		>>> np.loadtxt(c)
		array([[0., 1.],
		       [2., 3.]])
		
		>>> d = StringIO("M 21 72\nF 35 58")
		>>> np.loadtxt(d, dtype={'names': ('gender', 'age', 'weight'),
		...                      'formats': ('S1', 'i4', 'f4')})
		array([(b'M', 21, 72.), (b'F', 35, 58.)],
		      dtype=[('gender', 'S1'), ('age', '<i4'), ('weight', '<f4')])
		
		>>> c = StringIO("1,0,2\n3,0,4")
		>>> x, y = np.loadtxt(c, delimiter=',', usecols=(0, 2), unpack=True)
		>>> x
		array([1., 3.])
		>>> y
		array([2., 4.])
		
		This example shows how `converters` can be used to convert a field
		with a trailing minus sign into a negative number.
		
		>>> s = StringIO('10.01 31.25-\n19.22 64.31\n17.57- 63.94')
		>>> def conv(fld):
		...     return -float(fld[:-1]) if fld.endswith(b'-') else float(fld)
		...
		>>> np.loadtxt(s, converters={0: conv, 1: conv})
		array([[ 10.01, -31.25],
		       [ 19.22,  64.31],
		       [-17.57,  63.94]])
	**/
	static public function loadtxt(fname:Dynamic, ?dtype:Dynamic, ?comments:Dynamic, ?delimiter:Dynamic, ?converters:Dynamic, ?skiprows:Dynamic, ?usecols:Dynamic, ?unpack:Dynamic, ?ndmin:Dynamic, ?encoding:Dynamic, ?max_rows:Dynamic, ?like:Dynamic):numpy.Ndarray;
	/**
		Do a keyword search on docstrings.
		
		A list of objects that matched the search is displayed,
		sorted by relevance. All given keywords need to be found in the
		docstring for it to be returned as a result, but the order does
		not matter.
		
		Parameters
		----------
		what : str
		    String containing words to look for.
		module : str or list, optional
		    Name of module(s) whose docstrings to go through.
		import_modules : bool, optional
		    Whether to import sub-modules in packages. Default is True.
		regenerate : bool, optional
		    Whether to re-generate the docstring cache. Default is False.
		output : file-like, optional
		    File-like object to write the output to. If omitted, use a pager.
		
		See Also
		--------
		source, info
		
		Notes
		-----
		Relevance is determined only roughly, by checking if the keywords occur
		in the function name, at the start of a docstring, etc.
		
		Examples
		--------
		>>> np.lookfor('binary representation') # doctest: +SKIP
		Search results for 'binary representation'
		------------------------------------------
		numpy.binary_repr
		    Return the binary representation of the input number as a string.
		numpy.core.setup_common.long_double_representation
		    Given a binary dump as given by GNU od -b, look for long double
		numpy.base_repr
		    Return a string representation of a number in the given base system.
		...
	**/
	static public function lookfor(what:Dynamic, ?module:Dynamic, ?import_modules:Dynamic, ?regenerate:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Return the indices to access (n, n) arrays, given a masking function.
		
		Assume `mask_func` is a function that, for a square array a of size
		``(n, n)`` with a possible offset argument `k`, when called as
		``mask_func(a, k)`` returns a new array with zeros in certain locations
		(functions like `triu` or `tril` do precisely this). Then this function
		returns the indices where the non-zero values would be located.
		
		Parameters
		----------
		n : int
		    The returned indices will be valid to access arrays of shape (n, n).
		mask_func : callable
		    A function whose call signature is similar to that of `triu`, `tril`.
		    That is, ``mask_func(x, k)`` returns a boolean array, shaped like `x`.
		    `k` is an optional argument to the function.
		k : scalar
		    An optional argument which is passed through to `mask_func`. Functions
		    like `triu`, `tril` take a second argument that is interpreted as an
		    offset.
		
		Returns
		-------
		indices : tuple of arrays.
		    The `n` arrays of indices corresponding to the locations where
		    ``mask_func(np.ones((n, n)), k)`` is True.
		
		See Also
		--------
		triu, tril, triu_indices, tril_indices
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		Examples
		--------
		These are the indices that would allow you to access the upper triangular
		part of any 3x3 array:
		
		>>> iu = np.mask_indices(3, np.triu)
		
		For example, if `a` is a 3x3 array:
		
		>>> a = np.arange(9).reshape(3, 3)
		>>> a
		array([[0, 1, 2],
		       [3, 4, 5],
		       [6, 7, 8]])
		>>> a[iu]
		array([0, 1, 2, 4, 5, 8])
		
		An offset can be passed also to the masking function.  This gets us the
		indices starting on the first diagonal right of the main one:
		
		>>> iu1 = np.mask_indices(3, np.triu, 1)
		
		with which we now extract only three elements:
		
		>>> a[iu1]
		array([1, 2, 5])
	**/
	static public function mask_indices(n:Dynamic, mask_func:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Compute the median along the specified axis.
		
		Returns the median of the array elements.
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : {int, sequence of int, None}, optional
		    Axis or axes along which the medians are computed. The default
		    is to compute the median along a flattened version of the array.
		    A sequence of axes is supported since version 1.9.0.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output,
		    but the type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		   If True, then allow use of memory of input array `a` for
		   calculations. The input array will be modified by the call to
		   `median`. This will save memory when you do not need to preserve
		   the contents of the input array. Treat the input as undefined,
		   but it will probably be fully or partially sorted. Default is
		   False. If `overwrite_input` is ``True`` and `a` is not already an
		   `ndarray`, an error will be raised.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		median : ndarray
		    A new array holding the result. If the input contains integers
		    or floats smaller than ``float64``, then the output data-type is
		    ``np.float64``.  Otherwise, the data-type of the output is the
		    same as that of the input. If `out` is specified, that array is
		    returned instead.
		
		See Also
		--------
		mean, percentile
		
		Notes
		-----
		Given a vector ``V`` of length ``N``, the median of ``V`` is the
		middle value of a sorted copy of ``V``, ``V_sorted`` - i
		e., ``V_sorted[(N-1)/2]``, when ``N`` is odd, and the average of the
		two middle values of ``V_sorted`` when ``N`` is even.
		
		Examples
		--------
		>>> a = np.array([[10, 7, 4], [3, 2, 1]])
		>>> a
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> np.median(a)
		3.5
		>>> np.median(a, axis=0)
		array([6.5, 4.5, 2.5])
		>>> np.median(a, axis=1)
		array([7.,  2.])
		>>> m = np.median(a, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.median(a, axis=0, out=m)
		array([6.5,  4.5,  2.5])
		>>> m
		array([6.5,  4.5,  2.5])
		>>> b = a.copy()
		>>> np.median(b, axis=1, overwrite_input=True)
		array([7.,  2.])
		>>> assert not np.all(a==b)
		>>> b = a.copy()
		>>> np.median(b, axis=None, overwrite_input=True)
		3.5
		>>> assert not np.all(a==b)
	**/
	static public function median(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?keepdims:Dynamic):numpy.Ndarray;
	/**
		Return coordinate matrices from coordinate vectors.
		
		Make N-D coordinate arrays for vectorized evaluations of
		N-D scalar/vector fields over N-D grids, given
		one-dimensional coordinate arrays x1, x2,..., xn.
		
		.. versionchanged:: 1.9
		   1-D and 0-D cases are allowed.
		
		Parameters
		----------
		x1, x2,..., xn : array_like
		    1-D arrays representing the coordinates of a grid.
		indexing : {'xy', 'ij'}, optional
		    Cartesian ('xy', default) or matrix ('ij') indexing of output.
		    See Notes for more details.
		
		    .. versionadded:: 1.7.0
		sparse : bool, optional
		    If True the shape of the returned coordinate array for dimension *i*
		    is reduced from ``(N1, ..., Ni, ... Nn)`` to
		    ``(1, ..., 1, Ni, 1, ..., 1)``.  These sparse coordinate grids are
		    intended to be use with :ref:`basics.broadcasting`.  When all
		    coordinates are used in an expression, broadcasting still leads to a
		    fully-dimensonal result array.
		
		    Default is False.
		
		    .. versionadded:: 1.7.0
		copy : bool, optional
		    If False, a view into the original arrays are returned in order to
		    conserve memory.  Default is True.  Please note that
		    ``sparse=False, copy=False`` will likely return non-contiguous
		    arrays.  Furthermore, more than one element of a broadcast array
		    may refer to a single memory location.  If you need to write to the
		    arrays, make copies first.
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		X1, X2,..., XN : ndarray
		    For vectors `x1`, `x2`,..., 'xn' with lengths ``Ni=len(xi)`` ,
		    return ``(N1, N2, N3,...Nn)`` shaped arrays if indexing='ij'
		    or ``(N2, N1, N3,...Nn)`` shaped arrays if indexing='xy'
		    with the elements of `xi` repeated to fill the matrix along
		    the first dimension for `x1`, the second for `x2` and so on.
		
		Notes
		-----
		This function supports both indexing conventions through the indexing
		keyword argument.  Giving the string 'ij' returns a meshgrid with
		matrix indexing, while 'xy' returns a meshgrid with Cartesian indexing.
		In the 2-D case with inputs of length M and N, the outputs are of shape
		(N, M) for 'xy' indexing and (M, N) for 'ij' indexing.  In the 3-D case
		with inputs of length M, N and P, outputs are of shape (N, M, P) for
		'xy' indexing and (M, N, P) for 'ij' indexing.  The difference is
		illustrated by the following code snippet::
		
		    xv, yv = np.meshgrid(x, y, indexing='ij')
		    for i in range(nx):
		        for j in range(ny):
		            # treat xv[i,j], yv[i,j]
		
		    xv, yv = np.meshgrid(x, y, indexing='xy')
		    for i in range(nx):
		        for j in range(ny):
		            # treat xv[j,i], yv[j,i]
		
		In the 1-D and 0-D case, the indexing and sparse keywords have no effect.
		
		See Also
		--------
		mgrid : Construct a multi-dimensional "meshgrid" using indexing notation.
		ogrid : Construct an open multi-dimensional "meshgrid" using indexing
		        notation.
		
		Examples
		--------
		>>> nx, ny = (3, 2)
		>>> x = np.linspace(0, 1, nx)
		>>> y = np.linspace(0, 1, ny)
		>>> xv, yv = np.meshgrid(x, y)
		>>> xv
		array([[0. , 0.5, 1. ],
		       [0. , 0.5, 1. ]])
		>>> yv
		array([[0.,  0.,  0.],
		       [1.,  1.,  1.]])
		>>> xv, yv = np.meshgrid(x, y, sparse=True)  # make sparse output arrays
		>>> xv
		array([[0. ,  0.5,  1. ]])
		>>> yv
		array([[0.],
		       [1.]])
		
		`meshgrid` is very useful to evaluate functions on a grid.  If the
		function depends on all coordinates, you can use the parameter
		``sparse=True`` to save memory and computation time.
		
		>>> x = np.linspace(-5, 5, 101)
		>>> y = np.linspace(-5, 5, 101)
		>>> # full coorindate arrays
		>>> xx, yy = np.meshgrid(x, y)
		>>> zz = np.sqrt(xx**2 + yy**2)
		>>> xx.shape, yy.shape, zz.shape
		((101, 101), (101, 101), (101, 101))
		>>> # sparse coordinate arrays
		>>> xs, ys = np.meshgrid(x, y, sparse=True)
		>>> zs = np.sqrt(xs**2 + ys**2)
		>>> xs.shape, ys.shape, zs.shape
		((1, 101), (101, 1), (101, 101))
		>>> np.array_equal(zz, zs)
		True
		
		>>> import matplotlib.pyplot as plt
		>>> h = plt.contourf(x, y, zs)
		>>> plt.axis('scaled')
		>>> plt.colorbar()
		>>> plt.show()
	**/
	static public function meshgrid(?xi:python.VarArgs<Dynamic>, ?copy:Dynamic, ?sparse:Dynamic, ?indexing:Dynamic):numpy.Ndarray;
	static public var mgrid : Dynamic;
	/**
		Return the character for the minimum-size type to which given types can
		be safely cast.
		
		The returned type character must represent the smallest size dtype such
		that an array of the returned type can handle the data from an array of
		all types in `typechars` (or if `typechars` is an array, then its
		dtype.char).
		
		Parameters
		----------
		typechars : list of str or array_like
		    If a list of strings, each string should represent a dtype.
		    If array_like, the character representation of the array dtype is used.
		typeset : str or list of str, optional
		    The set of characters that the returned character is chosen from.
		    The default set is 'GDFgdf'.
		default : str, optional
		    The default character, this is returned if none of the characters in
		    `typechars` matches a character in `typeset`.
		
		Returns
		-------
		typechar : str
		    The character representing the minimum-size type that was found.
		
		See Also
		--------
		dtype, sctype2char, maximum_sctype
		
		Examples
		--------
		>>> np.mintypecode(['d', 'f', 'S'])
		'd'
		>>> x = np.array([1.1, 2-3.j])
		>>> np.mintypecode(x)
		'D'
		
		>>> np.mintypecode('abceh', default='G')
		'G'
	**/
	static public function mintypecode(typechars:Dynamic, ?typeset:Dynamic, ?_default:Dynamic):String;
	/**
		Return a copy of an array sorted along the first axis.
		
		Parameters
		----------
		a : array_like
		    Array to be sorted.
		
		Returns
		-------
		sorted_array : ndarray
		    Array of the same type and shape as `a`.
		
		See Also
		--------
		sort
		
		Notes
		-----
		``np.msort(a)`` is equivalent to  ``np.sort(a, axis=0)``.
	**/
	static public function msort(a:Dynamic):numpy.Ndarray;
	/**
		Replace NaN with zero and infinity with large finite numbers (default
		behaviour) or with the numbers defined by the user using the `nan`, 
		`posinf` and/or `neginf` keywords.
		
		If `x` is inexact, NaN is replaced by zero or by the user defined value in
		`nan` keyword, infinity is replaced by the largest finite floating point 
		values representable by ``x.dtype`` or by the user defined value in 
		`posinf` keyword and -infinity is replaced by the most negative finite 
		floating point values representable by ``x.dtype`` or by the user defined 
		value in `neginf` keyword.
		
		For complex dtypes, the above is applied to each of the real and
		imaginary components of `x` separately.
		
		If `x` is not inexact, then no replacements are made.
		
		Parameters
		----------
		x : scalar or array_like
		    Input data.
		copy : bool, optional
		    Whether to create a copy of `x` (True) or to replace values
		    in-place (False). The in-place operation only occurs if
		    casting to an array does not require a copy.
		    Default is True.
		    
		    .. versionadded:: 1.13
		nan : int, float, optional
		    Value to be used to fill NaN values. If no value is passed 
		    then NaN values will be replaced with 0.0.
		    
		    .. versionadded:: 1.17
		posinf : int, float, optional
		    Value to be used to fill positive infinity values. If no value is 
		    passed then positive infinity values will be replaced with a very
		    large number.
		    
		    .. versionadded:: 1.17
		neginf : int, float, optional
		    Value to be used to fill negative infinity values. If no value is 
		    passed then negative infinity values will be replaced with a very
		    small (or negative) number.
		    
		    .. versionadded:: 1.17
		
		    
		
		Returns
		-------
		out : ndarray
		    `x`, with the non-finite values replaced. If `copy` is False, this may
		    be `x` itself.
		
		See Also
		--------
		isinf : Shows which elements are positive or negative infinity.
		isneginf : Shows which elements are negative infinity.
		isposinf : Shows which elements are positive infinity.
		isnan : Shows which elements are Not a Number (NaN).
		isfinite : Shows which elements are finite (not NaN, not infinity)
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		
		Examples
		--------
		>>> np.nan_to_num(np.inf)
		1.7976931348623157e+308
		>>> np.nan_to_num(-np.inf)
		-1.7976931348623157e+308
		>>> np.nan_to_num(np.nan)
		0.0
		>>> x = np.array([np.inf, -np.inf, np.nan, -128, 128])
		>>> np.nan_to_num(x)
		array([ 1.79769313e+308, -1.79769313e+308,  0.00000000e+000, # may vary
		       -1.28000000e+002,  1.28000000e+002])
		>>> np.nan_to_num(x, nan=-9999, posinf=33333333, neginf=33333333)
		array([ 3.3333333e+07,  3.3333333e+07, -9.9990000e+03, 
		       -1.2800000e+02,  1.2800000e+02])
		>>> y = np.array([complex(np.inf, np.nan), np.nan, complex(np.nan, np.inf)])
		array([  1.79769313e+308,  -1.79769313e+308,   0.00000000e+000, # may vary
		     -1.28000000e+002,   1.28000000e+002])
		>>> np.nan_to_num(y)
		array([  1.79769313e+308 +0.00000000e+000j, # may vary
		         0.00000000e+000 +0.00000000e+000j,
		         0.00000000e+000 +1.79769313e+308j])
		>>> np.nan_to_num(y, nan=111111, posinf=222222)
		array([222222.+111111.j, 111111.     +0.j, 111111.+222222.j])
	**/
	static public function nan_to_num(x:Dynamic, ?copy:Dynamic, ?nan:Dynamic, ?posinf:Dynamic, ?neginf:Dynamic):numpy.Ndarray;
	/**
		Return the indices of the maximum values in the specified axis ignoring
		NaNs. For all-NaN slices ``ValueError`` is raised. Warning: the
		results cannot be trusted if a slice contains only NaNs and -Infs.
		
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : int, optional
		    Axis along which to operate.  By default flattened input is used.
		out : array, optional
		    If provided, the result will be inserted into this array. It should
		    be of the appropriate shape and dtype.
		
		    .. versionadded:: 1.22.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the array.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		index_array : ndarray
		    An array of indices or a single index value.
		
		See Also
		--------
		argmax, nanargmin
		
		Examples
		--------
		>>> a = np.array([[np.nan, 4], [2, 3]])
		>>> np.argmax(a)
		0
		>>> np.nanargmax(a)
		1
		>>> np.nanargmax(a, axis=0)
		array([1, 0])
		>>> np.nanargmax(a, axis=1)
		array([1, 1])
	**/
	static public function nanargmax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):numpy.Ndarray;
	/**
		Return the indices of the minimum values in the specified axis ignoring
		NaNs. For all-NaN slices ``ValueError`` is raised. Warning: the results
		cannot be trusted if a slice contains only NaNs and Infs.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : int, optional
		    Axis along which to operate.  By default flattened input is used.
		out : array, optional
		    If provided, the result will be inserted into this array. It should
		    be of the appropriate shape and dtype.
		
		    .. versionadded:: 1.22.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the array.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		index_array : ndarray
		    An array of indices or a single index value.
		
		See Also
		--------
		argmin, nanargmax
		
		Examples
		--------
		>>> a = np.array([[np.nan, 4], [2, 3]])
		>>> np.argmin(a)
		0
		>>> np.nanargmin(a)
		2
		>>> np.nanargmin(a, axis=0)
		array([1, 1])
		>>> np.nanargmin(a, axis=1)
		array([1, 0])
	**/
	static public function nanargmin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):numpy.Ndarray;
	/**
		Return the cumulative product of array elements over a given axis treating Not a
		Numbers (NaNs) as one.  The cumulative product does not change when NaNs are
		encountered and leading NaNs are replaced by ones.
		
		Ones are returned for slices that are all-NaN or empty.
		
		.. versionadded:: 1.12.0
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int, optional
		    Axis along which the cumulative product is computed.  By default
		    the input is flattened.
		dtype : dtype, optional
		    Type of the returned array, as well as of the accumulator in which
		    the elements are multiplied.  If *dtype* is not specified, it
		    defaults to the dtype of `a`, unless `a` has an integer dtype with
		    a precision less than that of the default platform integer.  In
		    that case, the default platform integer is used instead.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output
		    but the type of the resulting values will be cast if necessary.
		
		Returns
		-------
		nancumprod : ndarray
		    A new array holding the result is returned unless `out` is
		    specified, in which case it is returned.
		
		See Also
		--------
		numpy.cumprod : Cumulative product across array propagating NaNs.
		isnan : Show which elements are NaN.
		
		Examples
		--------
		>>> np.nancumprod(1)
		array([1])
		>>> np.nancumprod([1])
		array([1])
		>>> np.nancumprod([1, np.nan])
		array([1.,  1.])
		>>> a = np.array([[1, 2], [3, np.nan]])
		>>> np.nancumprod(a)
		array([1.,  2.,  6.,  6.])
		>>> np.nancumprod(a, axis=0)
		array([[1.,  2.],
		       [3.,  2.]])
		>>> np.nancumprod(a, axis=1)
		array([[1.,  2.],
		       [3.,  3.]])
	**/
	static public function nancumprod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):numpy.Ndarray;
	/**
		Return the cumulative sum of array elements over a given axis treating Not a
		Numbers (NaNs) as zero.  The cumulative sum does not change when NaNs are
		encountered and leading NaNs are replaced by zeros.
		
		Zeros are returned for slices that are all-NaN or empty.
		
		.. versionadded:: 1.12.0
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int, optional
		    Axis along which the cumulative sum is computed. The default
		    (None) is to compute the cumsum over the flattened array.
		dtype : dtype, optional
		    Type of the returned array and of the accumulator in which the
		    elements are summed.  If `dtype` is not specified, it defaults
		    to the dtype of `a`, unless `a` has an integer dtype with a
		    precision less than that of the default platform integer.  In
		    that case, the default platform integer is used.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output
		    but the type will be cast if necessary. See :ref:`ufuncs-output-type` for
		    more details.
		
		Returns
		-------
		nancumsum : ndarray.
		    A new array holding the result is returned unless `out` is
		    specified, in which it is returned. The result has the same
		    size as `a`, and the same shape as `a` if `axis` is not None
		    or `a` is a 1-d array.
		
		See Also
		--------
		numpy.cumsum : Cumulative sum across array propagating NaNs.
		isnan : Show which elements are NaN.
		
		Examples
		--------
		>>> np.nancumsum(1)
		array([1])
		>>> np.nancumsum([1])
		array([1])
		>>> np.nancumsum([1, np.nan])
		array([1.,  1.])
		>>> a = np.array([[1, 2], [3, np.nan]])
		>>> np.nancumsum(a)
		array([1.,  3.,  6.,  6.])
		>>> np.nancumsum(a, axis=0)
		array([[1.,  2.],
		       [4.,  2.]])
		>>> np.nancumsum(a, axis=1)
		array([[1.,  3.],
		       [3.,  3.]])
	**/
	static public function nancumsum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Return the maximum of an array or maximum along an axis, ignoring any
		NaNs.  When all-NaN slices are encountered a ``RuntimeWarning`` is
		raised and NaN is returned for that slice.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose maximum is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the maximum is computed. The default is to compute
		    the maximum of the flattened array.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary. See
		    :ref:`ufuncs-output-type` for more details.
		
		    .. versionadded:: 1.8.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `a`.
		
		    If the value is anything but the default, then
		    `keepdims` will be passed through to the `max` method
		    of sub-classes of `ndarray`.  If the sub-classes methods
		    does not implement `keepdims` any exceptions will be raised.
		
		    .. versionadded:: 1.8.0
		initial : scalar, optional
		    The minimum value of an output element. Must be present to allow
		    computation on empty slice. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.22.0
		where : array_like of bool, optional
		    Elements to compare for the maximum. See `~numpy.ufunc.reduce`
		    for details.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		nanmax : ndarray
		    An array with the same shape as `a`, with the specified axis removed.
		    If `a` is a 0-d array, or if axis is None, an ndarray scalar is
		    returned.  The same dtype as `a` is returned.
		
		See Also
		--------
		nanmin :
		    The minimum value of an array along a given axis, ignoring any NaNs.
		amax :
		    The maximum value of an array along a given axis, propagating any NaNs.
		fmax :
		    Element-wise maximum of two arrays, ignoring any NaNs.
		maximum :
		    Element-wise maximum of two arrays, propagating any NaNs.
		isnan :
		    Shows which elements are Not a Number (NaN).
		isfinite:
		    Shows which elements are neither NaN nor infinity.
		
		amin, fmin, minimum
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		Positive infinity is treated as a very large number and negative
		infinity is treated as a very small (i.e. negative) number.
		
		If the input has a integer type the function is equivalent to np.max.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, np.nan]])
		>>> np.nanmax(a)
		3.0
		>>> np.nanmax(a, axis=0)
		array([3.,  2.])
		>>> np.nanmax(a, axis=1)
		array([2.,  3.])
		
		When positive infinity and negative infinity are present:
		
		>>> np.nanmax([1, 2, np.nan, np.NINF])
		2.0
		>>> np.nanmax([1, 2, np.nan, np.inf])
		inf
	**/
	static public function nanmax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):numpy.Ndarray;
	/**
		Compute the arithmetic mean along the specified axis, ignoring NaNs.
		
		Returns the average of the array elements.  The average is taken over
		the flattened array by default, otherwise over the specified axis.
		`float64` intermediate and return values are used for integer inputs.
		
		For all-NaN slices, NaN is returned and a `RuntimeWarning` is raised.
		
		.. versionadded:: 1.8.0
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose mean is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the means are computed. The default is to compute
		    the mean of the flattened array.
		dtype : data-type, optional
		    Type to use in computing the mean.  For integer inputs, the default
		    is `float64`; for inexact inputs, it is the same as the input
		    dtype.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary. See
		    :ref:`ufuncs-output-type` for more details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `a`.
		
		    If the value is anything but the default, then
		    `keepdims` will be passed through to the `mean` or `sum` methods
		    of sub-classes of `ndarray`.  If the sub-classes methods
		    does not implement `keepdims` any exceptions will be raised.
		where : array_like of bool, optional
		    Elements to include in the mean. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		m : ndarray, see dtype parameter above
		    If `out=None`, returns a new array containing the mean values,
		    otherwise a reference to the output array is returned. Nan is
		    returned for slices that contain only NaNs.
		
		See Also
		--------
		average : Weighted average
		mean : Arithmetic mean taken while not ignoring NaNs
		var, nanvar
		
		Notes
		-----
		The arithmetic mean is the sum of the non-NaN elements along the axis
		divided by the number of non-NaN elements.
		
		Note that for floating-point input, the mean is computed using the same
		precision the input has.  Depending on the input data, this can cause
		the results to be inaccurate, especially for `float32`.  Specifying a
		higher-precision accumulator using the `dtype` keyword can alleviate
		this issue.
		
		Examples
		--------
		>>> a = np.array([[1, np.nan], [3, 4]])
		>>> np.nanmean(a)
		2.6666666666666665
		>>> np.nanmean(a, axis=0)
		array([2.,  4.])
		>>> np.nanmean(a, axis=1)
		array([1.,  3.5]) # may vary
	**/
	static public function nanmean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?where:Dynamic):Dynamic;
	/**
		Compute the median along the specified axis, while ignoring NaNs.
		
		Returns the median of the array elements.
		
		.. versionadded:: 1.9.0
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : {int, sequence of int, None}, optional
		    Axis or axes along which the medians are computed. The default
		    is to compute the median along a flattened version of the array.
		    A sequence of axes is supported since version 1.9.0.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output,
		    but the type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		   If True, then allow use of memory of input array `a` for
		   calculations. The input array will be modified by the call to
		   `median`. This will save memory when you do not need to preserve
		   the contents of the input array. Treat the input as undefined,
		   but it will probably be fully or partially sorted. Default is
		   False. If `overwrite_input` is ``True`` and `a` is not already an
		   `ndarray`, an error will be raised.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `a`.
		
		    If this is anything but the default value it will be passed
		    through (in the special case of an empty array) to the
		    `mean` function of the underlying array.  If the array is
		    a sub-class and `mean` does not have the kwarg `keepdims` this
		    will raise a RuntimeError.
		
		Returns
		-------
		median : ndarray
		    A new array holding the result. If the input contains integers
		    or floats smaller than ``float64``, then the output data-type is
		    ``np.float64``.  Otherwise, the data-type of the output is the
		    same as that of the input. If `out` is specified, that array is
		    returned instead.
		
		See Also
		--------
		mean, median, percentile
		
		Notes
		-----
		Given a vector ``V`` of length ``N``, the median of ``V`` is the
		middle value of a sorted copy of ``V``, ``V_sorted`` - i.e.,
		``V_sorted[(N-1)/2]``, when ``N`` is odd and the average of the two
		middle values of ``V_sorted`` when ``N`` is even.
		
		Examples
		--------
		>>> a = np.array([[10.0, 7, 4], [3, 2, 1]])
		>>> a[0, 1] = np.nan
		>>> a
		array([[10., nan,  4.],
		       [ 3.,  2.,  1.]])
		>>> np.median(a)
		nan
		>>> np.nanmedian(a)
		3.0
		>>> np.nanmedian(a, axis=0)
		array([6.5, 2. , 2.5])
		>>> np.median(a, axis=1)
		array([nan,  2.])
		>>> b = a.copy()
		>>> np.nanmedian(b, axis=1, overwrite_input=True)
		array([7.,  2.])
		>>> assert not np.all(a==b)
		>>> b = a.copy()
		>>> np.nanmedian(b, axis=None, overwrite_input=True)
		3.0
		>>> assert not np.all(a==b)
	**/
	static public function nanmedian(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?keepdims:Dynamic):numpy.Ndarray;
	/**
		Return minimum of an array or minimum along an axis, ignoring any NaNs.
		When all-NaN slices are encountered a ``RuntimeWarning`` is raised and
		Nan is returned for that slice.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose minimum is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the minimum is computed. The default is to compute
		    the minimum of the flattened array.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary. See
		    :ref:`ufuncs-output-type` for more details.
		
		    .. versionadded:: 1.8.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `a`.
		
		    If the value is anything but the default, then
		    `keepdims` will be passed through to the `min` method
		    of sub-classes of `ndarray`.  If the sub-classes methods
		    does not implement `keepdims` any exceptions will be raised.
		
		    .. versionadded:: 1.8.0
		initial : scalar, optional
		    The maximum value of an output element. Must be present to allow
		    computation on empty slice. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.22.0
		where : array_like of bool, optional
		    Elements to compare for the minimum. See `~numpy.ufunc.reduce`
		    for details.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		nanmin : ndarray
		    An array with the same shape as `a`, with the specified axis
		    removed.  If `a` is a 0-d array, or if axis is None, an ndarray
		    scalar is returned.  The same dtype as `a` is returned.
		
		See Also
		--------
		nanmax :
		    The maximum value of an array along a given axis, ignoring any NaNs.
		amin :
		    The minimum value of an array along a given axis, propagating any NaNs.
		fmin :
		    Element-wise minimum of two arrays, ignoring any NaNs.
		minimum :
		    Element-wise minimum of two arrays, propagating any NaNs.
		isnan :
		    Shows which elements are Not a Number (NaN).
		isfinite:
		    Shows which elements are neither NaN nor infinity.
		
		amax, fmax, maximum
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		Positive infinity is treated as a very large number and negative
		infinity is treated as a very small (i.e. negative) number.
		
		If the input has a integer type the function is equivalent to np.min.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, np.nan]])
		>>> np.nanmin(a)
		1.0
		>>> np.nanmin(a, axis=0)
		array([1.,  2.])
		>>> np.nanmin(a, axis=1)
		array([1.,  3.])
		
		When positive infinity and negative infinity are present:
		
		>>> np.nanmin([1, 2, np.nan, np.inf])
		1.0
		>>> np.nanmin([1, 2, np.nan, np.NINF])
		-inf
	**/
	static public function nanmin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):numpy.Ndarray;
	/**
		Compute the qth percentile of the data along the specified axis,
		while ignoring nan values.
		
		Returns the qth percentile(s) of the array elements.
		
		.. versionadded:: 1.9.0
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array, containing
		    nan values to be ignored.
		q : array_like of float
		    Percentile or sequence of percentiles to compute, which must be
		    between 0 and 100 inclusive.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the percentiles are computed. The default
		    is to compute the percentile(s) along a flattened version of the
		    array.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape and buffer length as the expected output, but the
		    type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		    If True, then allow the input array `a` to be modified by
		    intermediate calculations, to save memory. In this case, the
		    contents of the input `a` after this function completes is
		    undefined.
		method : str, optional
		    This parameter specifies the method to use for estimating the
		    percentile.  There are many different methods, some unique to NumPy.
		    See the notes for explanation.  The options sorted by their R type
		    as summarized in the H&F paper [1]_ are:
		
		    1. 'inverted_cdf'
		    2. 'averaged_inverted_cdf'
		    3. 'closest_observation'
		    4. 'interpolated_inverted_cdf'
		    5. 'hazen'
		    6. 'weibull'
		    7. 'linear'  (default)
		    8. 'median_unbiased'
		    9. 'normal_unbiased'
		
		    The first three methods are discontiuous.  NumPy further defines the
		    following discontinuous variations of the default 'linear' (7.) option:
		
		    * 'lower'
		    * 'higher',
		    * 'midpoint'
		    * 'nearest'
		
		    .. versionchanged:: 1.22.0
		        This argument was previously called "interpolation" and only
		        offered the "linear" default and last four options.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the
		    result will broadcast correctly against the original array `a`.
		
		    If this is anything but the default value it will be passed
		    through (in the special case of an empty array) to the
		    `mean` function of the underlying array.  If the array is
		    a sub-class and `mean` does not have the kwarg `keepdims` this
		    will raise a RuntimeError.
		
		interpolation : str, optional
		    Deprecated name for the method keyword argument.
		
		    .. deprecated:: 1.22.0
		
		Returns
		-------
		percentile : scalar or ndarray
		    If `q` is a single percentile and `axis=None`, then the result
		    is a scalar. If multiple percentiles are given, first axis of
		    the result corresponds to the percentiles. The other axes are
		    the axes that remain after the reduction of `a`. If the input
		    contains integers or floats smaller than ``float64``, the output
		    data-type is ``float64``. Otherwise, the output data-type is the
		    same as that of the input. If `out` is specified, that array is
		    returned instead.
		
		See Also
		--------
		nanmean
		nanmedian : equivalent to ``nanpercentile(..., 50)``
		percentile, median, mean
		nanquantile : equivalent to nanpercentile, except q in range [0, 1].
		
		Notes
		-----
		For more information please see `numpy.percentile`
		
		Examples
		--------
		>>> a = np.array([[10., 7., 4.], [3., 2., 1.]])
		>>> a[0][1] = np.nan
		>>> a
		array([[10.,  nan,   4.],
		      [ 3.,   2.,   1.]])
		>>> np.percentile(a, 50)
		nan
		>>> np.nanpercentile(a, 50)
		3.0
		>>> np.nanpercentile(a, 50, axis=0)
		array([6.5, 2. , 2.5])
		>>> np.nanpercentile(a, 50, axis=1, keepdims=True)
		array([[7.],
		       [2.]])
		>>> m = np.nanpercentile(a, 50, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.nanpercentile(a, 50, axis=0, out=out)
		array([6.5, 2. , 2.5])
		>>> m
		array([6.5,  2. ,  2.5])
		
		>>> b = a.copy()
		>>> np.nanpercentile(b, 50, axis=1, overwrite_input=True)
		array([7., 2.])
		>>> assert not np.all(a==b)
		
		References
		----------
		.. [1] R. J. Hyndman and Y. Fan,
		   "Sample quantiles in statistical packages,"
		   The American Statistician, 50(4), pp. 361-365, 1996
	**/
	static public function nanpercentile(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic, ?keepdims:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Return the product of array elements over a given axis treating Not a
		Numbers (NaNs) as ones.
		
		One is returned for slices that are all-NaN or empty.
		
		.. versionadded:: 1.10.0
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose product is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the product is computed. The default is to compute
		    the product of the flattened array.
		dtype : data-type, optional
		    The type of the returned array and of the accumulator in which the
		    elements are summed.  By default, the dtype of `a` is used.  An
		    exception is when `a` has an integer type with less precision than
		    the platform (u)intp. In that case, the default will be either
		    (u)int32 or (u)int64 depending on whether the platform is 32 or 64
		    bits. For inexact inputs, dtype must be inexact.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``. If provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary. See
		    :ref:`ufuncs-output-type` for more details. The casting of NaN to integer
		    can yield unexpected results.
		keepdims : bool, optional
		    If True, the axes which are reduced are left in the result as
		    dimensions with size one. With this option, the result will
		    broadcast correctly against the original `arr`.
		initial : scalar, optional
		    The starting value for this product. See `~numpy.ufunc.reduce`
		    for details.
		
		    .. versionadded:: 1.22.0
		where : array_like of bool, optional
		    Elements to include in the product. See `~numpy.ufunc.reduce`
		    for details.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		nanprod : ndarray
		    A new array holding the result is returned unless `out` is
		    specified, in which case it is returned.
		
		See Also
		--------
		numpy.prod : Product across array propagating NaNs.
		isnan : Show which elements are NaN.
		
		Examples
		--------
		>>> np.nanprod(1)
		1
		>>> np.nanprod([1])
		1
		>>> np.nanprod([1, np.nan])
		1.0
		>>> a = np.array([[1, 2], [3, np.nan]])
		>>> np.nanprod(a)
		6.0
		>>> np.nanprod(a, axis=0)
		array([3., 2.])
	**/
	static public function nanprod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):numpy.Ndarray;
	/**
		Compute the qth quantile of the data along the specified axis,
		while ignoring nan values.
		Returns the qth quantile(s) of the array elements.
		
		.. versionadded:: 1.15.0
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array, containing
		    nan values to be ignored
		q : array_like of float
		    Quantile or sequence of quantiles to compute, which must be between
		    0 and 1 inclusive.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the quantiles are computed. The
		    default is to compute the quantile(s) along a flattened
		    version of the array.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output,
		    but the type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		    If True, then allow the input array `a` to be modified by intermediate
		    calculations, to save memory. In this case, the contents of the input
		    `a` after this function completes is undefined.
		method : str, optional
		    This parameter specifies the method to use for estimating the
		    quantile.  There are many different methods, some unique to NumPy.
		    See the notes for explanation.  The options sorted by their R type
		    as summarized in the H&F paper [1]_ are:
		
		    1. 'inverted_cdf'
		    2. 'averaged_inverted_cdf'
		    3. 'closest_observation'
		    4. 'interpolated_inverted_cdf'
		    5. 'hazen'
		    6. 'weibull'
		    7. 'linear'  (default)
		    8. 'median_unbiased'
		    9. 'normal_unbiased'
		
		    The first three methods are discontiuous.  NumPy further defines the
		    following discontinuous variations of the default 'linear' (7.) option:
		
		    * 'lower'
		    * 'higher',
		    * 'midpoint'
		    * 'nearest'
		
		    .. versionchanged:: 1.22.0
		        This argument was previously called "interpolation" and only
		        offered the "linear" default and last four options.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the
		    result will broadcast correctly against the original array `a`.
		
		    If this is anything but the default value it will be passed
		    through (in the special case of an empty array) to the
		    `mean` function of the underlying array.  If the array is
		    a sub-class and `mean` does not have the kwarg `keepdims` this
		    will raise a RuntimeError.
		
		interpolation : str, optional
		    Deprecated name for the method keyword argument.
		
		    .. deprecated:: 1.22.0
		
		Returns
		-------
		quantile : scalar or ndarray
		    If `q` is a single percentile and `axis=None`, then the result
		    is a scalar. If multiple quantiles are given, first axis of
		    the result corresponds to the quantiles. The other axes are
		    the axes that remain after the reduction of `a`. If the input
		    contains integers or floats smaller than ``float64``, the output
		    data-type is ``float64``. Otherwise, the output data-type is the
		    same as that of the input. If `out` is specified, that array is
		    returned instead.
		
		See Also
		--------
		quantile
		nanmean, nanmedian
		nanmedian : equivalent to ``nanquantile(..., 0.5)``
		nanpercentile : same as nanquantile, but with q in the range [0, 100].
		
		Notes
		-----
		For more information please see `numpy.quantile`
		
		Examples
		--------
		>>> a = np.array([[10., 7., 4.], [3., 2., 1.]])
		>>> a[0][1] = np.nan
		>>> a
		array([[10.,  nan,   4.],
		      [ 3.,   2.,   1.]])
		>>> np.quantile(a, 0.5)
		nan
		>>> np.nanquantile(a, 0.5)
		3.0
		>>> np.nanquantile(a, 0.5, axis=0)
		array([6.5, 2. , 2.5])
		>>> np.nanquantile(a, 0.5, axis=1, keepdims=True)
		array([[7.],
		       [2.]])
		>>> m = np.nanquantile(a, 0.5, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.nanquantile(a, 0.5, axis=0, out=out)
		array([6.5, 2. , 2.5])
		>>> m
		array([6.5,  2. ,  2.5])
		>>> b = a.copy()
		>>> np.nanquantile(b, 0.5, axis=1, overwrite_input=True)
		array([7., 2.])
		>>> assert not np.all(a==b)
		
		References
		----------
		.. [1] R. J. Hyndman and Y. Fan,
		   "Sample quantiles in statistical packages,"
		   The American Statistician, 50(4), pp. 361-365, 1996
	**/
	static public function nanquantile(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic, ?keepdims:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Compute the standard deviation along the specified axis, while
		ignoring NaNs.
		
		Returns the standard deviation, a measure of the spread of a
		distribution, of the non-NaN array elements. The standard deviation is
		computed for the flattened array by default, otherwise over the
		specified axis.
		
		For all-NaN slices or slices with zero degrees of freedom, NaN is
		returned and a `RuntimeWarning` is raised.
		
		.. versionadded:: 1.8.0
		
		Parameters
		----------
		a : array_like
		    Calculate the standard deviation of the non-NaN values.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the standard deviation is computed. The default is
		    to compute the standard deviation of the flattened array.
		dtype : dtype, optional
		    Type to use in computing the standard deviation. For arrays of
		    integer type the default is float64, for arrays of float types it
		    is the same as the array type.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output but the type (of the
		    calculated values) will be cast if necessary.
		ddof : int, optional
		    Means Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of non-NaN
		    elements.  By default `ddof` is zero.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `a`.
		
		    If this value is anything but the default it is passed through
		    as-is to the relevant functions of the sub-classes.  If these
		    functions do not have a `keepdims` kwarg, a RuntimeError will
		    be raised.
		where : array_like of bool, optional
		    Elements to include in the standard deviation.
		    See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		standard_deviation : ndarray, see dtype parameter above.
		    If `out` is None, return a new array containing the standard
		    deviation, otherwise return a reference to the output array. If
		    ddof is >= the number of non-NaN elements in a slice or the slice
		    contains only NaNs, then the result for that slice is NaN.
		
		See Also
		--------
		var, mean, std
		nanvar, nanmean
		:ref:`ufuncs-output-type`
		
		Notes
		-----
		The standard deviation is the square root of the average of the squared
		deviations from the mean: ``std = sqrt(mean(abs(x - x.mean())**2))``.
		
		The average squared deviation is normally calculated as
		``x.sum() / N``, where ``N = len(x)``.  If, however, `ddof` is
		specified, the divisor ``N - ddof`` is used instead. In standard
		statistical practice, ``ddof=1`` provides an unbiased estimator of the
		variance of the infinite population. ``ddof=0`` provides a maximum
		likelihood estimate of the variance for normally distributed variables.
		The standard deviation computed in this function is the square root of
		the estimated variance, so even with ``ddof=1``, it will not be an
		unbiased estimate of the standard deviation per se.
		
		Note that, for complex numbers, `std` takes the absolute value before
		squaring, so that the result is always real and nonnegative.
		
		For floating-point input, the *std* is computed using the same
		precision the input has. Depending on the input data, this can cause
		the results to be inaccurate, especially for float32 (see example
		below).  Specifying a higher-accuracy accumulator using the `dtype`
		keyword can alleviate this issue.
		
		Examples
		--------
		>>> a = np.array([[1, np.nan], [3, 4]])
		>>> np.nanstd(a)
		1.247219128924647
		>>> np.nanstd(a, axis=0)
		array([1., 0.])
		>>> np.nanstd(a, axis=1)
		array([0.,  0.5]) # may vary
	**/
	static public function nanstd(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic, ?where:Dynamic):Dynamic;
	/**
		Return the sum of array elements over a given axis treating Not a
		Numbers (NaNs) as zero.
		
		In NumPy versions <= 1.9.0 Nan is returned for slices that are all-NaN or
		empty. In later versions zero is returned.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose sum is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the sum is computed. The default is to compute the
		    sum of the flattened array.
		dtype : data-type, optional
		    The type of the returned array and of the accumulator in which the
		    elements are summed.  By default, the dtype of `a` is used.  An
		    exception is when `a` has an integer type with less precision than
		    the platform (u)intp. In that case, the default will be either
		    (u)int32 or (u)int64 depending on whether the platform is 32 or 64
		    bits. For inexact inputs, dtype must be inexact.
		
		    .. versionadded:: 1.8.0
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``. If provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary.  See
		    :ref:`ufuncs-output-type` for more details. The casting of NaN to integer
		    can yield unexpected results.
		
		    .. versionadded:: 1.8.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `a`.
		
		
		    If the value is anything but the default, then
		    `keepdims` will be passed through to the `mean` or `sum` methods
		    of sub-classes of `ndarray`.  If the sub-classes methods
		    does not implement `keepdims` any exceptions will be raised.
		
		    .. versionadded:: 1.8.0
		initial : scalar, optional
		    Starting value for the sum. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.22.0
		where : array_like of bool, optional
		    Elements to include in the sum. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		nansum : ndarray.
		    A new array holding the result is returned unless `out` is
		    specified, in which it is returned. The result has the same
		    size as `a`, and the same shape as `a` if `axis` is not None
		    or `a` is a 1-d array.
		
		See Also
		--------
		numpy.sum : Sum across array propagating NaNs.
		isnan : Show which elements are NaN.
		isfinite : Show which elements are not NaN or +/-inf.
		
		Notes
		-----
		If both positive and negative infinity are present, the sum will be Not
		A Number (NaN).
		
		Examples
		--------
		>>> np.nansum(1)
		1
		>>> np.nansum([1])
		1
		>>> np.nansum([1, np.nan])
		1.0
		>>> a = np.array([[1, 1], [1, np.nan]])
		>>> np.nansum(a)
		3.0
		>>> np.nansum(a, axis=0)
		array([2.,  1.])
		>>> np.nansum([1, np.nan, np.inf])
		inf
		>>> np.nansum([1, np.nan, np.NINF])
		-inf
		>>> from numpy.testing import suppress_warnings
		>>> with suppress_warnings() as sup:
		...     sup.filter(RuntimeWarning)
		...     np.nansum([1, np.nan, np.inf, -np.inf]) # both +/- infinity present
		nan
	**/
	static public function nansum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):Dynamic;
	/**
		Compute the variance along the specified axis, while ignoring NaNs.
		
		Returns the variance of the array elements, a measure of the spread of
		a distribution.  The variance is computed for the flattened array by
		default, otherwise over the specified axis.
		
		For all-NaN slices or slices with zero degrees of freedom, NaN is
		returned and a `RuntimeWarning` is raised.
		
		.. versionadded:: 1.8.0
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose variance is desired.  If `a` is not an
		    array, a conversion is attempted.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the variance is computed.  The default is to compute
		    the variance of the flattened array.
		dtype : data-type, optional
		    Type to use in computing the variance.  For arrays of integer type
		    the default is `float64`; for arrays of float types it is the same as
		    the array type.
		out : ndarray, optional
		    Alternate output array in which to place the result.  It must have
		    the same shape as the expected output, but the type is cast if
		    necessary.
		ddof : int, optional
		    "Delta Degrees of Freedom": the divisor used in the calculation is
		    ``N - ddof``, where ``N`` represents the number of non-NaN
		    elements. By default `ddof` is zero.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `a`.
		where : array_like of bool, optional
		    Elements to include in the variance. See `~numpy.ufunc.reduce` for
		    details.
		
		    .. versionadded:: 1.22.0
		
		Returns
		-------
		variance : ndarray, see dtype parameter above
		    If `out` is None, return a new array containing the variance,
		    otherwise return a reference to the output array. If ddof is >= the
		    number of non-NaN elements in a slice or the slice contains only
		    NaNs, then the result for that slice is NaN.
		
		See Also
		--------
		std : Standard deviation
		mean : Average
		var : Variance while not ignoring NaNs
		nanstd, nanmean
		:ref:`ufuncs-output-type`
		
		Notes
		-----
		The variance is the average of the squared deviations from the mean,
		i.e.,  ``var = mean(abs(x - x.mean())**2)``.
		
		The mean is normally calculated as ``x.sum() / N``, where ``N = len(x)``.
		If, however, `ddof` is specified, the divisor ``N - ddof`` is used
		instead.  In standard statistical practice, ``ddof=1`` provides an
		unbiased estimator of the variance of a hypothetical infinite
		population.  ``ddof=0`` provides a maximum likelihood estimate of the
		variance for normally distributed variables.
		
		Note that for complex numbers, the absolute value is taken before
		squaring, so that the result is always real and nonnegative.
		
		For floating-point input, the variance is computed using the same
		precision the input has.  Depending on the input data, this can cause
		the results to be inaccurate, especially for `float32` (see example
		below).  Specifying a higher-accuracy accumulator using the ``dtype``
		keyword can alleviate this issue.
		
		For this function to work on sub-classes of ndarray, they must define
		`sum` with the kwarg `keepdims`
		
		Examples
		--------
		>>> a = np.array([[1, np.nan], [3, 4]])
		>>> np.nanvar(a)
		1.5555555555555554
		>>> np.nanvar(a, axis=0)
		array([1.,  0.])
		>>> np.nanvar(a, axis=1)
		array([0.,  0.25])  # may vary
	**/
	static public function nanvar(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic, ?where:Dynamic):Dynamic;
	static public var ogrid : Dynamic;
	/**
		packbits(a, /, axis=None, bitorder='big')
		
		Packs the elements of a binary-valued array into bits in a uint8 array.
		
		The result is padded to full bytes by inserting zero bits at the end.
		
		Parameters
		----------
		a : array_like
		    An array of integers or booleans whose elements should be packed to
		    bits.
		axis : int, optional
		    The dimension over which bit-packing is done.
		    ``None`` implies packing the flattened array.
		bitorder : {'big', 'little'}, optional
		    The order of the input bits. 'big' will mimic bin(val),
		    ``[0, 0, 0, 0, 0, 0, 1, 1] => 3 = 0b00000011``, 'little' will
		    reverse the order so ``[1, 1, 0, 0, 0, 0, 0, 0] => 3``.
		    Defaults to 'big'.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		packed : ndarray
		    Array of type uint8 whose elements represent bits corresponding to the
		    logical (0 or nonzero) value of the input elements. The shape of
		    `packed` has the same number of dimensions as the input (unless `axis`
		    is None, in which case the output is 1-D).
		
		See Also
		--------
		unpackbits: Unpacks elements of a uint8 array into a binary-valued output
		            array.
		
		Examples
		--------
		>>> a = np.array([[[1,0,1],
		...                [0,1,0]],
		...               [[1,1,0],
		...                [0,0,1]]])
		>>> b = np.packbits(a, axis=-1)
		>>> b
		array([[[160],
		        [ 64]],
		       [[192],
		        [ 32]]], dtype=uint8)
		
		Note that in binary 160 = 1010 0000, 64 = 0100 0000, 192 = 1100 0000,
		and 32 = 0010 0000.
	**/
	static public function packbits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Pad an array.
		
		Parameters
		----------
		array : array_like of rank N
		    The array to pad.
		pad_width : {sequence, array_like, int}
		    Number of values padded to the edges of each axis.
		    ((before_1, after_1), ... (before_N, after_N)) unique pad widths
		    for each axis.
		    ((before, after),) yields same before and after pad for each axis.
		    (pad,) or int is a shortcut for before = after = pad width for all
		    axes.
		mode : str or function, optional
		    One of the following string values or a user supplied function.
		
		    'constant' (default)
		        Pads with a constant value.
		    'edge'
		        Pads with the edge values of array.
		    'linear_ramp'
		        Pads with the linear ramp between end_value and the
		        array edge value.
		    'maximum'
		        Pads with the maximum value of all or part of the
		        vector along each axis.
		    'mean'
		        Pads with the mean value of all or part of the
		        vector along each axis.
		    'median'
		        Pads with the median value of all or part of the
		        vector along each axis.
		    'minimum'
		        Pads with the minimum value of all or part of the
		        vector along each axis.
		    'reflect'
		        Pads with the reflection of the vector mirrored on
		        the first and last values of the vector along each
		        axis.
		    'symmetric'
		        Pads with the reflection of the vector mirrored
		        along the edge of the array.
		    'wrap'
		        Pads with the wrap of the vector along the axis.
		        The first values are used to pad the end and the
		        end values are used to pad the beginning.
		    'empty'
		        Pads with undefined values.
		
		        .. versionadded:: 1.17
		
		    <function>
		        Padding function, see Notes.
		stat_length : sequence or int, optional
		    Used in 'maximum', 'mean', 'median', and 'minimum'.  Number of
		    values at edge of each axis used to calculate the statistic value.
		
		    ((before_1, after_1), ... (before_N, after_N)) unique statistic
		    lengths for each axis.
		
		    ((before, after),) yields same before and after statistic lengths
		    for each axis.
		
		    (stat_length,) or int is a shortcut for before = after = statistic
		    length for all axes.
		
		    Default is ``None``, to use the entire axis.
		constant_values : sequence or scalar, optional
		    Used in 'constant'.  The values to set the padded values for each
		    axis.
		
		    ``((before_1, after_1), ... (before_N, after_N))`` unique pad constants
		    for each axis.
		
		    ``((before, after),)`` yields same before and after constants for each
		    axis.
		
		    ``(constant,)`` or ``constant`` is a shortcut for ``before = after = constant`` for
		    all axes.
		
		    Default is 0.
		end_values : sequence or scalar, optional
		    Used in 'linear_ramp'.  The values used for the ending value of the
		    linear_ramp and that will form the edge of the padded array.
		
		    ``((before_1, after_1), ... (before_N, after_N))`` unique end values
		    for each axis.
		
		    ``((before, after),)`` yields same before and after end values for each
		    axis.
		
		    ``(constant,)`` or ``constant`` is a shortcut for ``before = after = constant`` for
		    all axes.
		
		    Default is 0.
		reflect_type : {'even', 'odd'}, optional
		    Used in 'reflect', and 'symmetric'.  The 'even' style is the
		    default with an unaltered reflection around the edge value.  For
		    the 'odd' style, the extended part of the array is created by
		    subtracting the reflected values from two times the edge value.
		
		Returns
		-------
		pad : ndarray
		    Padded array of rank equal to `array` with shape increased
		    according to `pad_width`.
		
		Notes
		-----
		.. versionadded:: 1.7.0
		
		For an array with rank greater than 1, some of the padding of later
		axes is calculated from padding of previous axes.  This is easiest to
		think about with a rank 2 array where the corners of the padded array
		are calculated by using padded values from the first axis.
		
		The padding function, if used, should modify a rank 1 array in-place. It
		has the following signature::
		
		    padding_func(vector, iaxis_pad_width, iaxis, kwargs)
		
		where
		
		    vector : ndarray
		        A rank 1 array already padded with zeros.  Padded values are
		        vector[:iaxis_pad_width[0]] and vector[-iaxis_pad_width[1]:].
		    iaxis_pad_width : tuple
		        A 2-tuple of ints, iaxis_pad_width[0] represents the number of
		        values padded at the beginning of vector where
		        iaxis_pad_width[1] represents the number of values padded at
		        the end of vector.
		    iaxis : int
		        The axis currently being calculated.
		    kwargs : dict
		        Any keyword arguments the function requires.
		
		Examples
		--------
		>>> a = [1, 2, 3, 4, 5]
		>>> np.pad(a, (2, 3), 'constant', constant_values=(4, 6))
		array([4, 4, 1, ..., 6, 6, 6])
		
		>>> np.pad(a, (2, 3), 'edge')
		array([1, 1, 1, ..., 5, 5, 5])
		
		>>> np.pad(a, (2, 3), 'linear_ramp', end_values=(5, -4))
		array([ 5,  3,  1,  2,  3,  4,  5,  2, -1, -4])
		
		>>> np.pad(a, (2,), 'maximum')
		array([5, 5, 1, 2, 3, 4, 5, 5, 5])
		
		>>> np.pad(a, (2,), 'mean')
		array([3, 3, 1, 2, 3, 4, 5, 3, 3])
		
		>>> np.pad(a, (2,), 'median')
		array([3, 3, 1, 2, 3, 4, 5, 3, 3])
		
		>>> a = [[1, 2], [3, 4]]
		>>> np.pad(a, ((3, 2), (2, 3)), 'minimum')
		array([[1, 1, 1, 2, 1, 1, 1],
		       [1, 1, 1, 2, 1, 1, 1],
		       [1, 1, 1, 2, 1, 1, 1],
		       [1, 1, 1, 2, 1, 1, 1],
		       [3, 3, 3, 4, 3, 3, 3],
		       [1, 1, 1, 2, 1, 1, 1],
		       [1, 1, 1, 2, 1, 1, 1]])
		
		>>> a = [1, 2, 3, 4, 5]
		>>> np.pad(a, (2, 3), 'reflect')
		array([3, 2, 1, 2, 3, 4, 5, 4, 3, 2])
		
		>>> np.pad(a, (2, 3), 'reflect', reflect_type='odd')
		array([-1,  0,  1,  2,  3,  4,  5,  6,  7,  8])
		
		>>> np.pad(a, (2, 3), 'symmetric')
		array([2, 1, 1, 2, 3, 4, 5, 5, 4, 3])
		
		>>> np.pad(a, (2, 3), 'symmetric', reflect_type='odd')
		array([0, 1, 1, 2, 3, 4, 5, 5, 6, 7])
		
		>>> np.pad(a, (2, 3), 'wrap')
		array([4, 5, 1, 2, 3, 4, 5, 1, 2, 3])
		
		>>> def pad_with(vector, pad_width, iaxis, kwargs):
		...     pad_value = kwargs.get('padder', 10)
		...     vector[:pad_width[0]] = pad_value
		...     vector[-pad_width[1]:] = pad_value
		>>> a = np.arange(6)
		>>> a = a.reshape((2, 3))
		>>> np.pad(a, 2, pad_with)
		array([[10, 10, 10, 10, 10, 10, 10],
		       [10, 10, 10, 10, 10, 10, 10],
		       [10, 10,  0,  1,  2, 10, 10],
		       [10, 10,  3,  4,  5, 10, 10],
		       [10, 10, 10, 10, 10, 10, 10],
		       [10, 10, 10, 10, 10, 10, 10]])
		>>> np.pad(a, 2, pad_with, padder=100)
		array([[100, 100, 100, 100, 100, 100, 100],
		       [100, 100, 100, 100, 100, 100, 100],
		       [100, 100,   0,   1,   2, 100, 100],
		       [100, 100,   3,   4,   5, 100, 100],
		       [100, 100, 100, 100, 100, 100, 100],
		       [100, 100, 100, 100, 100, 100, 100]])
	**/
	static public function pad(array:Dynamic, pad_width:Dynamic, ?mode:Dynamic, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		Compute the q-th percentile of the data along the specified axis.
		
		Returns the q-th percentile(s) of the array elements.
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		q : array_like of float
		    Percentile or sequence of percentiles to compute, which must be between
		    0 and 100 inclusive.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the percentiles are computed. The
		    default is to compute the percentile(s) along a flattened
		    version of the array.
		
		    .. versionchanged:: 1.9.0
		        A tuple of axes is supported
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output,
		    but the type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		    If True, then allow the input array `a` to be modified by intermediate
		    calculations, to save memory. In this case, the contents of the input
		    `a` after this function completes is undefined.
		method : str, optional
		    This parameter specifies the method to use for estimating the
		    percentile.  There are many different methods, some unique to NumPy.
		    See the notes for explanation.  The options sorted by their R type
		    as summarized in the H&F paper [1]_ are:
		
		    1. 'inverted_cdf'
		    2. 'averaged_inverted_cdf'
		    3. 'closest_observation'
		    4. 'interpolated_inverted_cdf'
		    5. 'hazen'
		    6. 'weibull'
		    7. 'linear'  (default)
		    8. 'median_unbiased'
		    9. 'normal_unbiased'
		
		    The first three methods are discontiuous.  NumPy further defines the
		    following discontinuous variations of the default 'linear' (7.) option:
		
		    * 'lower'
		    * 'higher',
		    * 'midpoint'
		    * 'nearest'
		
		    .. versionchanged:: 1.22.0
		        This argument was previously called "interpolation" and only
		        offered the "linear" default and last four options.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the
		    result will broadcast correctly against the original array `a`.
		
		    .. versionadded:: 1.9.0
		
		interpolation : str, optional
		    Deprecated name for the method keyword argument.
		
		    .. deprecated:: 1.22.0
		
		Returns
		-------
		percentile : scalar or ndarray
		    If `q` is a single percentile and `axis=None`, then the result
		    is a scalar. If multiple percentiles are given, first axis of
		    the result corresponds to the percentiles. The other axes are
		    the axes that remain after the reduction of `a`. If the input
		    contains integers or floats smaller than ``float64``, the output
		    data-type is ``float64``. Otherwise, the output data-type is the
		    same as that of the input. If `out` is specified, that array is
		    returned instead.
		
		See Also
		--------
		mean
		median : equivalent to ``percentile(..., 50)``
		nanpercentile
		quantile : equivalent to percentile, except q in the range [0, 1].
		
		Notes
		-----
		Given a vector ``V`` of length ``N``, the q-th percentile of ``V`` is
		the value ``q/100`` of the way from the minimum to the maximum in a
		sorted copy of ``V``. The values and distances of the two nearest
		neighbors as well as the `method` parameter will determine the
		percentile if the normalized ranking does not match the location of
		``q`` exactly. This function is the same as the median if ``q=50``, the
		same as the minimum if ``q=0`` and the same as the maximum if
		``q=100``.
		
		This optional `method` parameter specifies the method to use when the
		desired quantile lies between two data points ``i < j``.
		If ``g`` is the fractional part of the index surrounded by ``i`` and
		alpha and beta are correction constants modifying i and j.
		
		Below, 'q' is the quantile value, 'n' is the sample size and
		alpha and beta are constants.
		The following formula gives an interpolation "i + g" of where the quantile
		would be in the sorted sample.
		With 'i' being the floor and 'g' the fractional part of the result.
		
		.. math::
		    i + g = (q - alpha) / ( n - alpha - beta + 1 )
		
		The different methods then work as follows
		
		inverted_cdf:
		    method 1 of H&F [1]_.
		    This method gives discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 ; then take i
		
		averaged_inverted_cdf:
		    method 2 of H&F [1]_.
		    This method give discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 ; then average between bounds
		
		closest_observation:
		    method 3 of H&F [1]_.
		    This method give discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 and index is odd ; then take j
		    * if g = 0 and index is even ; then take i
		
		interpolated_inverted_cdf:
		    method 4 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 0
		    * beta = 1
		
		hazen:
		    method 5 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 1/2
		    * beta = 1/2
		
		weibull:
		    method 6 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 0
		    * beta = 0
		
		linear:
		    method 7 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 1
		    * beta = 1
		
		median_unbiased:
		    method 8 of H&F [1]_.
		    This method is probably the best method if the sample
		    distribution function is unknown (see reference).
		    This method give continuous results using:
		    * alpha = 1/3
		    * beta = 1/3
		
		normal_unbiased:
		    method 9 of H&F [1]_.
		    This method is probably the best method if the sample
		    distribution function is known to be normal.
		    This method give continuous results using:
		    * alpha = 3/8
		    * beta = 3/8
		
		lower:
		    NumPy method kept for backwards compatibility.
		    Takes ``i`` as the interpolation point.
		
		higher:
		    NumPy method kept for backwards compatibility.
		    Takes ``j`` as the interpolation point.
		
		nearest:
		    NumPy method kept for backwards compatibility.
		    Takes ``i`` or ``j``, whichever is nearest.
		
		midpoint:
		    NumPy method kept for backwards compatibility.
		    Uses ``(i + j) / 2``.
		
		Examples
		--------
		>>> a = np.array([[10, 7, 4], [3, 2, 1]])
		>>> a
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> np.percentile(a, 50)
		3.5
		>>> np.percentile(a, 50, axis=0)
		array([6.5, 4.5, 2.5])
		>>> np.percentile(a, 50, axis=1)
		array([7.,  2.])
		>>> np.percentile(a, 50, axis=1, keepdims=True)
		array([[7.],
		       [2.]])
		
		>>> m = np.percentile(a, 50, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.percentile(a, 50, axis=0, out=out)
		array([6.5, 4.5, 2.5])
		>>> m
		array([6.5, 4.5, 2.5])
		
		>>> b = a.copy()
		>>> np.percentile(b, 50, axis=1, overwrite_input=True)
		array([7.,  2.])
		>>> assert not np.all(a == b)
		
		The different methods can be visualized graphically:
		
		.. plot::
		
		    import matplotlib.pyplot as plt
		
		    a = np.arange(4)
		    p = np.linspace(0, 100, 6001)
		    ax = plt.gca()
		    lines = [
		        ('linear', '-', 'C0'),
		        ('inverted_cdf', ':', 'C1'),
		        # Almost the same as `inverted_cdf`:
		        ('averaged_inverted_cdf', '-.', 'C1'),
		        ('closest_observation', ':', 'C2'),
		        ('interpolated_inverted_cdf', '--', 'C1'),
		        ('hazen', '--', 'C3'),
		        ('weibull', '-.', 'C4'),
		        ('median_unbiased', '--', 'C5'),
		        ('normal_unbiased', '-.', 'C6'),
		        ]
		    for method, style, color in lines:
		        ax.plot(
		            p, np.percentile(a, p, method=method),
		            label=method, linestyle=style, color=color)
		    ax.set(
		        title='Percentiles for different methods and data: ' + str(a),
		        xlabel='Percentile',
		        ylabel='Estimated percentile value',
		        yticks=a)
		    ax.legend()
		    plt.show()
		
		References
		----------
		.. [1] R. J. Hyndman and Y. Fan,
		   "Sample quantiles in statistical packages,"
		   The American Statistician, 50(4), pp. 361-365, 1996
	**/
	static public function percentile(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic, ?keepdims:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Evaluate a piecewise-defined function.
		
		Given a set of conditions and corresponding functions, evaluate each
		function on the input data wherever its condition is true.
		
		Parameters
		----------
		x : ndarray or scalar
		    The input domain.
		condlist : list of bool arrays or bool scalars
		    Each boolean array corresponds to a function in `funclist`.  Wherever
		    `condlist[i]` is True, `funclist[i](x)` is used as the output value.
		
		    Each boolean array in `condlist` selects a piece of `x`,
		    and should therefore be of the same shape as `x`.
		
		    The length of `condlist` must correspond to that of `funclist`.
		    If one extra function is given, i.e. if
		    ``len(funclist) == len(condlist) + 1``, then that extra function
		    is the default value, used wherever all conditions are false.
		funclist : list of callables, f(x,*args,**kw), or scalars
		    Each function is evaluated over `x` wherever its corresponding
		    condition is True.  It should take a 1d array as input and give an 1d
		    array or a scalar value as output.  If, instead of a callable,
		    a scalar is provided then a constant function (``lambda x: scalar``) is
		    assumed.
		args : tuple, optional
		    Any further arguments given to `piecewise` are passed to the functions
		    upon execution, i.e., if called ``piecewise(..., ..., 1, 'a')``, then
		    each function is called as ``f(x, 1, 'a')``.
		kw : dict, optional
		    Keyword arguments used in calling `piecewise` are passed to the
		    functions upon execution, i.e., if called
		    ``piecewise(..., ..., alpha=1)``, then each function is called as
		    ``f(x, alpha=1)``.
		
		Returns
		-------
		out : ndarray
		    The output is the same shape and type as x and is found by
		    calling the functions in `funclist` on the appropriate portions of `x`,
		    as defined by the boolean arrays in `condlist`.  Portions not covered
		    by any condition have a default value of 0.
		
		
		See Also
		--------
		choose, select, where
		
		Notes
		-----
		This is similar to choose or select, except that functions are
		evaluated on elements of `x` that satisfy the corresponding condition from
		`condlist`.
		
		The result is::
		
		        |--
		        |funclist[0](x[condlist[0]])
		  out = |funclist[1](x[condlist[1]])
		        |...
		        |funclist[n2](x[condlist[n2]])
		        |--
		
		Examples
		--------
		Define the sigma function, which is -1 for ``x < 0`` and +1 for ``x >= 0``.
		
		>>> x = np.linspace(-2.5, 2.5, 6)
		>>> np.piecewise(x, [x < 0, x >= 0], [-1, 1])
		array([-1., -1., -1.,  1.,  1.,  1.])
		
		Define the absolute value, which is ``-x`` for ``x <0`` and ``x`` for
		``x >= 0``.
		
		>>> np.piecewise(x, [x < 0, x >= 0], [lambda x: -x, lambda x: x])
		array([2.5,  1.5,  0.5,  0.5,  1.5,  2.5])
		
		Apply the same function to a scalar value.
		
		>>> y = -2
		>>> np.piecewise(y, [y < 0, y >= 0], [lambda x: -x, lambda x: x])
		array(2)
	**/
	static public function piecewise(x:Dynamic, condlist:Dynamic, funclist:Dynamic, ?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		Change elements of an array based on conditional and input values.
		
		Similar to ``np.copyto(arr, vals, where=mask)``, the difference is that
		`place` uses the first N elements of `vals`, where N is the number of
		True values in `mask`, while `copyto` uses the elements where `mask`
		is True.
		
		Note that `extract` does the exact opposite of `place`.
		
		Parameters
		----------
		arr : ndarray
		    Array to put data into.
		mask : array_like
		    Boolean mask array. Must have the same size as `a`.
		vals : 1-D sequence
		    Values to put into `a`. Only the first N elements are used, where
		    N is the number of True values in `mask`. If `vals` is smaller
		    than N, it will be repeated, and if elements of `a` are to be masked,
		    this sequence must be non-empty.
		
		See Also
		--------
		copyto, put, take, extract
		
		Examples
		--------
		>>> arr = np.arange(6).reshape(2, 3)
		>>> np.place(arr, arr>2, [44, 55])
		>>> arr
		array([[ 0,  1,  2],
		       [44, 55, 44]])
	**/
	static public function place(arr:Dynamic, mask:Dynamic, vals:Dynamic):Dynamic;
	/**
		Find the coefficients of a polynomial with the given sequence of roots.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Returns the coefficients of the polynomial whose leading coefficient
		is one for the given sequence of zeros (multiple roots must be included
		in the sequence as many times as their multiplicity; see Examples).
		A square matrix (or array, which will be treated as a matrix) can also
		be given, in which case the coefficients of the characteristic polynomial
		of the matrix are returned.
		
		Parameters
		----------
		seq_of_zeros : array_like, shape (N,) or (N, N)
		    A sequence of polynomial roots, or a square array or matrix object.
		
		Returns
		-------
		c : ndarray
		    1D array of polynomial coefficients from highest to lowest degree:
		
		    ``c[0] * x**(N) + c[1] * x**(N-1) + ... + c[N-1] * x + c[N]``
		    where c[0] always equals 1.
		
		Raises
		------
		ValueError
		    If input is the wrong shape (the input must be a 1-D or square
		    2-D array).
		
		See Also
		--------
		polyval : Compute polynomial values.
		roots : Return the roots of a polynomial.
		polyfit : Least squares polynomial fit.
		poly1d : A one-dimensional polynomial class.
		
		Notes
		-----
		Specifying the roots of a polynomial still leaves one degree of
		freedom, typically represented by an undetermined leading
		coefficient. [1]_ In the case of this function, that coefficient -
		the first one in the returned array - is always taken as one. (If
		for some reason you have one other point, the only automatic way
		presently to leverage that information is to use ``polyfit``.)
		
		The characteristic polynomial, :math:`p_a(t)`, of an `n`-by-`n`
		matrix **A** is given by
		
		    :math:`p_a(t) = \mathrm{det}(t\, \mathbf{I} - \mathbf{A})`,
		
		where **I** is the `n`-by-`n` identity matrix. [2]_
		
		References
		----------
		.. [1] M. Sullivan and M. Sullivan, III, "Algebra and Trignometry,
		   Enhanced With Graphing Utilities," Prentice-Hall, pg. 318, 1996.
		
		.. [2] G. Strang, "Linear Algebra and Its Applications, 2nd Edition,"
		   Academic Press, pg. 182, 1980.
		
		Examples
		--------
		Given a sequence of a polynomial's zeros:
		
		>>> np.poly((0, 0, 0)) # Multiple root example
		array([1., 0., 0., 0.])
		
		The line above represents z**3 + 0*z**2 + 0*z + 0.
		
		>>> np.poly((-1./2, 0, 1./2))
		array([ 1.  ,  0.  , -0.25,  0.  ])
		
		The line above represents z**3 - z/4
		
		>>> np.poly((np.random.random(1)[0], 0, np.random.random(1)[0]))
		array([ 1.        , -0.77086955,  0.08618131,  0.        ]) # random
		
		Given a square array object:
		
		>>> P = np.array([[0, 1./3], [-1./2, 0]])
		>>> np.poly(P)
		array([1.        , 0.        , 0.16666667])
		
		Note how in all cases the leading coefficient is always 1.
	**/
	static public function poly(seq_of_zeros:Dynamic):numpy.Ndarray;
	/**
		Find the sum of two polynomials.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Returns the polynomial resulting from the sum of two input polynomials.
		Each input must be either a poly1d object or a 1D sequence of polynomial
		coefficients, from highest to lowest degree.
		
		Parameters
		----------
		a1, a2 : array_like or poly1d object
		    Input polynomials.
		
		Returns
		-------
		out : ndarray or poly1d object
		    The sum of the inputs. If either input is a poly1d object, then the
		    output is also a poly1d object. Otherwise, it is a 1D array of
		    polynomial coefficients from highest to lowest degree.
		
		See Also
		--------
		poly1d : A one-dimensional polynomial class.
		poly, polyadd, polyder, polydiv, polyfit, polyint, polysub, polyval
		
		Examples
		--------
		>>> np.polyadd([1, 2], [9, 5, 4])
		array([9, 6, 6])
		
		Using poly1d objects:
		
		>>> p1 = np.poly1d([1, 2])
		>>> p2 = np.poly1d([9, 5, 4])
		>>> print(p1)
		1 x + 2
		>>> print(p2)
		   2
		9 x + 5 x + 4
		>>> print(np.polyadd(p1, p2))
		   2
		9 x + 6 x + 6
	**/
	static public function polyadd(a1:Dynamic, a2:Dynamic):Dynamic;
	/**
		Return the derivative of the specified order of a polynomial.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Parameters
		----------
		p : poly1d or sequence
		    Polynomial to differentiate.
		    A sequence is interpreted as polynomial coefficients, see `poly1d`.
		m : int, optional
		    Order of differentiation (default: 1)
		
		Returns
		-------
		der : poly1d
		    A new polynomial representing the derivative.
		
		See Also
		--------
		polyint : Anti-derivative of a polynomial.
		poly1d : Class for one-dimensional polynomials.
		
		Examples
		--------
		The derivative of the polynomial :math:`x^3 + x^2 + x^1 + 1` is:
		
		>>> p = np.poly1d([1,1,1,1])
		>>> p2 = np.polyder(p)
		>>> p2
		poly1d([3, 2, 1])
		
		which evaluates to:
		
		>>> p2(2.)
		17.0
		
		We can verify this, approximating the derivative with
		``(f(x + h) - f(x))/h``:
		
		>>> (p(2. + 0.001) - p(2.)) / 0.001
		17.007000999997857
		
		The fourth-order derivative of a 3rd-order polynomial is zero:
		
		>>> np.polyder(p, 2)
		poly1d([6, 2])
		>>> np.polyder(p, 3)
		poly1d([6])
		>>> np.polyder(p, 4)
		poly1d([0])
	**/
	static public function polyder(p:Dynamic, ?m:Dynamic):Dynamic;
	/**
		Returns the quotient and remainder of polynomial division.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		The input arrays are the coefficients (including any coefficients
		equal to zero) of the "numerator" (dividend) and "denominator"
		(divisor) polynomials, respectively.
		
		Parameters
		----------
		u : array_like or poly1d
		    Dividend polynomial's coefficients.
		
		v : array_like or poly1d
		    Divisor polynomial's coefficients.
		
		Returns
		-------
		q : ndarray
		    Coefficients, including those equal to zero, of the quotient.
		r : ndarray
		    Coefficients, including those equal to zero, of the remainder.
		
		See Also
		--------
		poly, polyadd, polyder, polydiv, polyfit, polyint, polymul, polysub
		polyval
		
		Notes
		-----
		Both `u` and `v` must be 0-d or 1-d (ndim = 0 or 1), but `u.ndim` need
		not equal `v.ndim`. In other words, all four possible combinations -
		``u.ndim = v.ndim = 0``, ``u.ndim = v.ndim = 1``,
		``u.ndim = 1, v.ndim = 0``, and ``u.ndim = 0, v.ndim = 1`` - work.
		
		Examples
		--------
		.. math:: \frac{3x^2 + 5x + 2}{2x + 1} = 1.5x + 1.75, remainder 0.25
		
		>>> x = np.array([3.0, 5.0, 2.0])
		>>> y = np.array([2.0, 1.0])
		>>> np.polydiv(x, y)
		(array([1.5 , 1.75]), array([0.25]))
	**/
	static public function polydiv(u:Dynamic, v:Dynamic):numpy.Ndarray;
	/**
		Least squares polynomial fit.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Fit a polynomial ``p(x) = p[0] * x**deg + ... + p[deg]`` of degree `deg`
		to points `(x, y)`. Returns a vector of coefficients `p` that minimises
		the squared error in the order `deg`, `deg-1`, ... `0`.
		
		The `Polynomial.fit <numpy.polynomial.polynomial.Polynomial.fit>` class
		method is recommended for new code as it is more stable numerically. See
		the documentation of the method for more information.
		
		Parameters
		----------
		x : array_like, shape (M,)
		    x-coordinates of the M sample points ``(x[i], y[i])``.
		y : array_like, shape (M,) or (M, K)
		    y-coordinates of the sample points. Several data sets of sample
		    points sharing the same x-coordinates can be fitted at once by
		    passing in a 2D-array that contains one dataset per column.
		deg : int
		    Degree of the fitting polynomial
		rcond : float, optional
		    Relative condition number of the fit. Singular values smaller than
		    this relative to the largest singular value will be ignored. The
		    default value is len(x)*eps, where eps is the relative precision of
		    the float type, about 2e-16 in most cases.
		full : bool, optional
		    Switch determining nature of return value. When it is False (the
		    default) just the coefficients are returned, when True diagnostic
		    information from the singular value decomposition is also returned.
		w : array_like, shape (M,), optional
		    Weights. If not None, the weight ``w[i]`` applies to the unsquared
		    residual ``y[i] - y_hat[i]`` at ``x[i]``. Ideally the weights are
		    chosen so that the errors of the products ``w[i]*y[i]`` all have the
		    same variance.  When using inverse-variance weighting, use
		    ``w[i] = 1/sigma(y[i])``.  The default value is None.
		cov : bool or str, optional
		    If given and not `False`, return not just the estimate but also its
		    covariance matrix. By default, the covariance are scaled by
		    chi2/dof, where dof = M - (deg + 1), i.e., the weights are presumed
		    to be unreliable except in a relative sense and everything is scaled
		    such that the reduced chi2 is unity. This scaling is omitted if
		    ``cov='unscaled'``, as is relevant for the case that the weights are
		    w = 1/sigma, with sigma known to be a reliable estimate of the
		    uncertainty.
		
		Returns
		-------
		p : ndarray, shape (deg + 1,) or (deg + 1, K)
		    Polynomial coefficients, highest power first.  If `y` was 2-D, the
		    coefficients for `k`-th data set are in ``p[:,k]``.
		
		residuals, rank, singular_values, rcond
		    These values are only returned if ``full == True``
		
		    - residuals -- sum of squared residuals of the least squares fit
		    - rank -- the effective rank of the scaled Vandermonde
		       coefficient matrix
		    - singular_values -- singular values of the scaled Vandermonde
		       coefficient matrix
		    - rcond -- value of `rcond`.
		
		    For more details, see `numpy.linalg.lstsq`.
		
		V : ndarray, shape (M,M) or (M,M,K)
		    Present only if ``full == False`` and ``cov == True``.  The covariance
		    matrix of the polynomial coefficient estimates.  The diagonal of
		    this matrix are the variance estimates for each coefficient.  If y
		    is a 2-D array, then the covariance matrix for the `k`-th data set
		    are in ``V[:,:,k]``
		
		
		Warns
		-----
		RankWarning
		    The rank of the coefficient matrix in the least-squares fit is
		    deficient. The warning is only raised if ``full == False``.
		
		    The warnings can be turned off by
		
		    >>> import warnings
		    >>> warnings.simplefilter('ignore', np.RankWarning)
		
		See Also
		--------
		polyval : Compute polynomial values.
		linalg.lstsq : Computes a least-squares fit.
		scipy.interpolate.UnivariateSpline : Computes spline fits.
		
		Notes
		-----
		The solution minimizes the squared error
		
		.. math::
		    E = \sum_{j=0}^k |p(x_j) - y_j|^2
		
		in the equations::
		
		    x[0]**n * p[0] + ... + x[0] * p[n-1] + p[n] = y[0]
		    x[1]**n * p[0] + ... + x[1] * p[n-1] + p[n] = y[1]
		    ...
		    x[k]**n * p[0] + ... + x[k] * p[n-1] + p[n] = y[k]
		
		The coefficient matrix of the coefficients `p` is a Vandermonde matrix.
		
		`polyfit` issues a `RankWarning` when the least-squares fit is badly
		conditioned. This implies that the best fit is not well-defined due
		to numerical error. The results may be improved by lowering the polynomial
		degree or by replacing `x` by `x` - `x`.mean(). The `rcond` parameter
		can also be set to a value smaller than its default, but the resulting
		fit may be spurious: including contributions from the small singular
		values can add numerical noise to the result.
		
		Note that fitting polynomial coefficients is inherently badly conditioned
		when the degree of the polynomial is large or the interval of sample points
		is badly centered. The quality of the fit should always be checked in these
		cases. When polynomial fits are not satisfactory, splines may be a good
		alternative.
		
		References
		----------
		.. [1] Wikipedia, "Curve fitting",
		       https://en.wikipedia.org/wiki/Curve_fitting
		.. [2] Wikipedia, "Polynomial interpolation",
		       https://en.wikipedia.org/wiki/Polynomial_interpolation
		
		Examples
		--------
		>>> import warnings
		>>> x = np.array([0.0, 1.0, 2.0, 3.0,  4.0,  5.0])
		>>> y = np.array([0.0, 0.8, 0.9, 0.1, -0.8, -1.0])
		>>> z = np.polyfit(x, y, 3)
		>>> z
		array([ 0.08703704, -0.81349206,  1.69312169, -0.03968254]) # may vary
		
		It is convenient to use `poly1d` objects for dealing with polynomials:
		
		>>> p = np.poly1d(z)
		>>> p(0.5)
		0.6143849206349179 # may vary
		>>> p(3.5)
		-0.34732142857143039 # may vary
		>>> p(10)
		22.579365079365115 # may vary
		
		High-order polynomials may oscillate wildly:
		
		>>> with warnings.catch_warnings():
		...     warnings.simplefilter('ignore', np.RankWarning)
		...     p30 = np.poly1d(np.polyfit(x, y, 30))
		...
		>>> p30(4)
		-0.80000000000000204 # may vary
		>>> p30(5)
		-0.99999999999999445 # may vary
		>>> p30(4.5)
		-0.10547061179440398 # may vary
		
		Illustration:
		
		>>> import matplotlib.pyplot as plt
		>>> xp = np.linspace(-2, 6, 100)
		>>> _ = plt.plot(x, y, '.', xp, p(xp), '-', xp, p30(xp), '--')
		>>> plt.ylim(-2,2)
		(-2, 2)
		>>> plt.show()
	**/
	static public function polyfit(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic, ?full:Dynamic, ?w:Dynamic, ?cov:Dynamic):Dynamic;
	/**
		Return an antiderivative (indefinite integral) of a polynomial.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		The returned order `m` antiderivative `P` of polynomial `p` satisfies
		:math:`\frac{d^m}{dx^m}P(x) = p(x)` and is defined up to `m - 1`
		integration constants `k`. The constants determine the low-order
		polynomial part
		
		.. math:: \frac{k_{m-1}}{0!} x^0 + \ldots + \frac{k_0}{(m-1)!}x^{m-1}
		
		of `P` so that :math:`P^{(j)}(0) = k_{m-j-1}`.
		
		Parameters
		----------
		p : array_like or poly1d
		    Polynomial to integrate.
		    A sequence is interpreted as polynomial coefficients, see `poly1d`.
		m : int, optional
		    Order of the antiderivative. (Default: 1)
		k : list of `m` scalars or scalar, optional
		    Integration constants. They are given in the order of integration:
		    those corresponding to highest-order terms come first.
		
		    If ``None`` (default), all constants are assumed to be zero.
		    If `m = 1`, a single scalar can be given instead of a list.
		
		See Also
		--------
		polyder : derivative of a polynomial
		poly1d.integ : equivalent method
		
		Examples
		--------
		The defining property of the antiderivative:
		
		>>> p = np.poly1d([1,1,1])
		>>> P = np.polyint(p)
		>>> P
		 poly1d([ 0.33333333,  0.5       ,  1.        ,  0.        ]) # may vary
		>>> np.polyder(P) == p
		True
		
		The integration constants default to zero, but can be specified:
		
		>>> P = np.polyint(p, 3)
		>>> P(0)
		0.0
		>>> np.polyder(P)(0)
		0.0
		>>> np.polyder(P, 2)(0)
		0.0
		>>> P = np.polyint(p, 3, k=[6,5,3])
		>>> P
		poly1d([ 0.01666667,  0.04166667,  0.16666667,  3. ,  5. ,  3. ]) # may vary
		
		Note that 3 = 6 / 2!, and that the constants are given in the order of
		integrations. Constant of the highest-order polynomial term comes first:
		
		>>> np.polyder(P, 2)(0)
		6.0
		>>> np.polyder(P, 1)(0)
		5.0
		>>> P(0)
		3.0
	**/
	static public function polyint(p:Dynamic, ?m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Find the product of two polynomials.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Finds the polynomial resulting from the multiplication of the two input
		polynomials. Each input must be either a poly1d object or a 1D sequence
		of polynomial coefficients, from highest to lowest degree.
		
		Parameters
		----------
		a1, a2 : array_like or poly1d object
		    Input polynomials.
		
		Returns
		-------
		out : ndarray or poly1d object
		    The polynomial resulting from the multiplication of the inputs. If
		    either inputs is a poly1d object, then the output is also a poly1d
		    object. Otherwise, it is a 1D array of polynomial coefficients from
		    highest to lowest degree.
		
		See Also
		--------
		poly1d : A one-dimensional polynomial class.
		poly, polyadd, polyder, polydiv, polyfit, polyint, polysub, polyval
		convolve : Array convolution. Same output as polymul, but has parameter
		           for overlap mode.
		
		Examples
		--------
		>>> np.polymul([1, 2, 3], [9, 5, 1])
		array([ 9, 23, 38, 17,  3])
		
		Using poly1d objects:
		
		>>> p1 = np.poly1d([1, 2, 3])
		>>> p2 = np.poly1d([9, 5, 1])
		>>> print(p1)
		   2
		1 x + 2 x + 3
		>>> print(p2)
		   2
		9 x + 5 x + 1
		>>> print(np.polymul(p1, p2))
		   4      3      2
		9 x + 23 x + 38 x + 17 x + 3
	**/
	static public function polymul(a1:Dynamic, a2:Dynamic):Dynamic;
	/**
		Difference (subtraction) of two polynomials.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Given two polynomials `a1` and `a2`, returns ``a1 - a2``.
		`a1` and `a2` can be either array_like sequences of the polynomials'
		coefficients (including coefficients equal to zero), or `poly1d` objects.
		
		Parameters
		----------
		a1, a2 : array_like or poly1d
		    Minuend and subtrahend polynomials, respectively.
		
		Returns
		-------
		out : ndarray or poly1d
		    Array or `poly1d` object of the difference polynomial's coefficients.
		
		See Also
		--------
		polyval, polydiv, polymul, polyadd
		
		Examples
		--------
		.. math:: (2 x^2 + 10 x - 2) - (3 x^2 + 10 x -4) = (-x^2 + 2)
		
		>>> np.polysub([2, 10, -2], [3, 10, -4])
		array([-1,  0,  2])
	**/
	static public function polysub(a1:Dynamic, a2:Dynamic):Dynamic;
	/**
		Evaluate a polynomial at specific values.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		If `p` is of length N, this function returns the value:
		
		    ``p[0]*x**(N-1) + p[1]*x**(N-2) + ... + p[N-2]*x + p[N-1]``
		
		If `x` is a sequence, then ``p(x)`` is returned for each element of ``x``.
		If `x` is another polynomial then the composite polynomial ``p(x(t))``
		is returned.
		
		Parameters
		----------
		p : array_like or poly1d object
		   1D array of polynomial coefficients (including coefficients equal
		   to zero) from highest degree to the constant term, or an
		   instance of poly1d.
		x : array_like or poly1d object
		   A number, an array of numbers, or an instance of poly1d, at
		   which to evaluate `p`.
		
		Returns
		-------
		values : ndarray or poly1d
		   If `x` is a poly1d instance, the result is the composition of the two
		   polynomials, i.e., `x` is "substituted" in `p` and the simplified
		   result is returned. In addition, the type of `x` - array_like or
		   poly1d - governs the type of the output: `x` array_like => `values`
		   array_like, `x` a poly1d object => `values` is also.
		
		See Also
		--------
		poly1d: A polynomial class.
		
		Notes
		-----
		Horner's scheme [1]_ is used to evaluate the polynomial. Even so,
		for polynomials of high degree the values may be inaccurate due to
		rounding errors. Use carefully.
		
		If `x` is a subtype of `ndarray` the return value will be of the same type.
		
		References
		----------
		.. [1] I. N. Bronshtein, K. A. Semendyayev, and K. A. Hirsch (Eng.
		   trans. Ed.), *Handbook of Mathematics*, New York, Van Nostrand
		   Reinhold Co., 1985, pg. 720.
		
		Examples
		--------
		>>> np.polyval([3,0,1], 5)  # 3 * 5**2 + 0 * 5**1 + 1
		76
		>>> np.polyval([3,0,1], np.poly1d(5))
		poly1d([76])
		>>> np.polyval(np.poly1d([3,0,1]), 5)
		76
		>>> np.polyval(np.poly1d([3,0,1]), np.poly1d(5))
		poly1d([76])
	**/
	static public function polyval(p:Dynamic, x:Dynamic):Dynamic;
	/**
		Put values into the destination array by matching 1d index and data slices.
		
		This iterates over matching 1d slices oriented along the specified axis in
		the index and data arrays, and uses the former to place values into the
		latter. These slices can be different lengths.
		
		Functions returning an index along an axis, like `argsort` and
		`argpartition`, produce suitable indices for this function.
		
		.. versionadded:: 1.15.0
		
		Parameters
		----------
		arr : ndarray (Ni..., M, Nk...)
		    Destination array.
		indices : ndarray (Ni..., J, Nk...)
		    Indices to change along each 1d slice of `arr`. This must match the
		    dimension of arr, but dimensions in Ni and Nj may be 1 to broadcast
		    against `arr`.
		values : array_like (Ni..., J, Nk...)
		    values to insert at those indices. Its shape and dimension are
		    broadcast to match that of `indices`.
		axis : int
		    The axis to take 1d slices along. If axis is None, the destination
		    array is treated as if a flattened 1d view had been created of it.
		
		Notes
		-----
		This is equivalent to (but faster than) the following use of `ndindex` and
		`s_`, which sets each of ``ii`` and ``kk`` to a tuple of indices::
		
		    Ni, M, Nk = a.shape[:axis], a.shape[axis], a.shape[axis+1:]
		    J = indices.shape[axis]  # Need not equal M
		
		    for ii in ndindex(Ni):
		        for kk in ndindex(Nk):
		            a_1d       = a      [ii + s_[:,] + kk]
		            indices_1d = indices[ii + s_[:,] + kk]
		            values_1d  = values [ii + s_[:,] + kk]
		            for j in range(J):
		                a_1d[indices_1d[j]] = values_1d[j]
		
		Equivalently, eliminating the inner loop, the last two lines would be::
		
		            a_1d[indices_1d] = values_1d
		
		See Also
		--------
		take_along_axis :
		    Take values from the input array by matching 1d index and data slices
		
		Examples
		--------
		
		For this sample array
		
		>>> a = np.array([[10, 30, 20], [60, 40, 50]])
		
		We can replace the maximum values with:
		
		>>> ai = np.expand_dims(np.argmax(a, axis=1), axis=1)
		>>> ai
		array([[1],
		       [0]])
		>>> np.put_along_axis(a, ai, 99, axis=1)
		>>> a
		array([[10, 99, 20],
		       [99, 40, 50]])
	**/
	static public function put_along_axis(arr:Dynamic, indices:Dynamic, values:Dynamic, axis:Dynamic):Dynamic;
	/**
		Compute the q-th quantile of the data along the specified axis.
		
		.. versionadded:: 1.15.0
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		q : array_like of float
		    Quantile or sequence of quantiles to compute, which must be between
		    0 and 1 inclusive.
		axis : {int, tuple of int, None}, optional
		    Axis or axes along which the quantiles are computed. The default is
		    to compute the quantile(s) along a flattened version of the array.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape and buffer length as the expected output, but the
		    type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		    If True, then allow the input array `a` to be modified by
		    intermediate calculations, to save memory. In this case, the
		    contents of the input `a` after this function completes is
		    undefined.
		method : str, optional
		    This parameter specifies the method to use for estimating the
		    quantile.  There are many different methods, some unique to NumPy.
		    See the notes for explanation.  The options sorted by their R type
		    as summarized in the H&F paper [1]_ are:
		
		    1. 'inverted_cdf'
		    2. 'averaged_inverted_cdf'
		    3. 'closest_observation'
		    4. 'interpolated_inverted_cdf'
		    5. 'hazen'
		    6. 'weibull'
		    7. 'linear'  (default)
		    8. 'median_unbiased'
		    9. 'normal_unbiased'
		
		    The first three methods are discontiuous.  NumPy further defines the
		    following discontinuous variations of the default 'linear' (7.) option:
		
		    * 'lower'
		    * 'higher',
		    * 'midpoint'
		    * 'nearest'
		
		    .. versionchanged:: 1.22.0
		        This argument was previously called "interpolation" and only
		        offered the "linear" default and last four options.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the
		    result will broadcast correctly against the original array `a`.
		
		interpolation : str, optional
		    Deprecated name for the method keyword argument.
		
		    .. deprecated:: 1.22.0
		
		Returns
		-------
		quantile : scalar or ndarray
		    If `q` is a single quantile and `axis=None`, then the result
		    is a scalar. If multiple quantiles are given, first axis of
		    the result corresponds to the quantiles. The other axes are
		    the axes that remain after the reduction of `a`. If the input
		    contains integers or floats smaller than ``float64``, the output
		    data-type is ``float64``. Otherwise, the output data-type is the
		    same as that of the input. If `out` is specified, that array is
		    returned instead.
		
		See Also
		--------
		mean
		percentile : equivalent to quantile, but with q in the range [0, 100].
		median : equivalent to ``quantile(..., 0.5)``
		nanquantile
		
		Notes
		-----
		Given a vector ``V`` of length ``N``, the q-th quantile of ``V`` is the
		value ``q`` of the way from the minimum to the maximum in a sorted copy of
		``V``. The values and distances of the two nearest neighbors as well as the
		`method` parameter will determine the quantile if the normalized
		ranking does not match the location of ``q`` exactly. This function is the
		same as the median if ``q=0.5``, the same as the minimum if ``q=0.0`` and
		the same as the maximum if ``q=1.0``.
		
		This optional `method` parameter specifies the method to use when the
		desired quantile lies between two data points ``i < j``.
		If ``g`` is the fractional part of the index surrounded by ``i`` and
		alpha and beta are correction constants modifying i and j.
		
		.. math::
		    i + g = (q - alpha) / ( n - alpha - beta + 1 )
		
		The different methods then work as follows
		
		inverted_cdf:
		    method 1 of H&F [1]_.
		    This method gives discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 ; then take i
		
		averaged_inverted_cdf:
		    method 2 of H&F [1]_.
		    This method give discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 ; then average between bounds
		
		closest_observation:
		    method 3 of H&F [1]_.
		    This method give discontinuous results:
		    * if g > 0 ; then take j
		    * if g = 0 and index is odd ; then take j
		    * if g = 0 and index is even ; then take i
		
		interpolated_inverted_cdf:
		    method 4 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 0
		    * beta = 1
		
		hazen:
		    method 5 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 1/2
		    * beta = 1/2
		
		weibull:
		    method 6 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 0
		    * beta = 0
		
		linear:
		    method 7 of H&F [1]_.
		    This method give continuous results using:
		    * alpha = 1
		    * beta = 1
		
		median_unbiased:
		    method 8 of H&F [1]_.
		    This method is probably the best method if the sample
		    distribution function is unknown (see reference).
		    This method give continuous results using:
		    * alpha = 1/3
		    * beta = 1/3
		
		normal_unbiased:
		    method 9 of H&F [1]_.
		    This method is probably the best method if the sample
		    distribution function is known to be normal.
		    This method give continuous results using:
		    * alpha = 3/8
		    * beta = 3/8
		
		lower:
		    NumPy method kept for backwards compatibility.
		    Takes ``i`` as the interpolation point.
		
		higher:
		    NumPy method kept for backwards compatibility.
		    Takes ``j`` as the interpolation point.
		
		nearest:
		    NumPy method kept for backwards compatibility.
		    Takes ``i`` or ``j``, whichever is nearest.
		
		midpoint:
		    NumPy method kept for backwards compatibility.
		    Uses ``(i + j) / 2``.
		
		Examples
		--------
		>>> a = np.array([[10, 7, 4], [3, 2, 1]])
		>>> a
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> np.quantile(a, 0.5)
		3.5
		>>> np.quantile(a, 0.5, axis=0)
		array([6.5, 4.5, 2.5])
		>>> np.quantile(a, 0.5, axis=1)
		array([7.,  2.])
		>>> np.quantile(a, 0.5, axis=1, keepdims=True)
		array([[7.],
		       [2.]])
		>>> m = np.quantile(a, 0.5, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.quantile(a, 0.5, axis=0, out=out)
		array([6.5, 4.5, 2.5])
		>>> m
		array([6.5, 4.5, 2.5])
		>>> b = a.copy()
		>>> np.quantile(b, 0.5, axis=1, overwrite_input=True)
		array([7.,  2.])
		>>> assert not np.all(a == b)
		
		See also `numpy.percentile` for a visualization of most methods.
		
		References
		----------
		.. [1] R. J. Hyndman and Y. Fan,
		   "Sample quantiles in statistical packages,"
		   The American Statistician, 50(4), pp. 361-365, 1996
	**/
	static public function quantile(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?method:Dynamic, ?keepdims:Dynamic, ?interpolation:Dynamic):Dynamic;
	static public var r_ : Dynamic;
	/**
		ravel_multi_index(multi_index, dims, mode='raise', order='C')
		
		Converts a tuple of index arrays into an array of flat
		indices, applying boundary modes to the multi-index.
		
		Parameters
		----------
		multi_index : tuple of array_like
		    A tuple of integer arrays, one array for each dimension.
		dims : tuple of ints
		    The shape of array into which the indices from ``multi_index`` apply.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices are handled.  Can specify
		    either one mode or a tuple of modes, one mode per index.
		
		    * 'raise' -- raise an error (default)
		    * 'wrap' -- wrap around
		    * 'clip' -- clip to the range
		
		    In 'clip' mode, a negative index which would normally
		    wrap will clip to 0 instead.
		order : {'C', 'F'}, optional
		    Determines whether the multi-index should be viewed as
		    indexing in row-major (C-style) or column-major
		    (Fortran-style) order.
		
		Returns
		-------
		raveled_indices : ndarray
		    An array of indices into the flattened version of an array
		    of dimensions ``dims``.
		
		See Also
		--------
		unravel_index
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		Examples
		--------
		>>> arr = np.array([[3,6,6],[4,5,1]])
		>>> np.ravel_multi_index(arr, (7,6))
		array([22, 41, 37])
		>>> np.ravel_multi_index(arr, (7,6), order='F')
		array([31, 41, 13])
		>>> np.ravel_multi_index(arr, (4,6), mode='clip')
		array([22, 23, 19])
		>>> np.ravel_multi_index(arr, (4,4), mode=('clip','wrap'))
		array([12, 13, 13])
		
		>>> np.ravel_multi_index((3,1,4,1), (6,7,8,9))
		1621
	**/
	static public function ravel_multi_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the real part of the complex argument.
		
		Parameters
		----------
		val : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray or scalar
		    The real component of the complex argument. If `val` is real, the type
		    of `val` is used for the output.  If `val` has complex elements, the
		    returned type is float.
		
		See Also
		--------
		real_if_close, imag, angle
		
		Examples
		--------
		>>> a = np.array([1+2j, 3+4j, 5+6j])
		>>> a.real
		array([1.,  3.,  5.])
		>>> a.real = 9
		>>> a
		array([9.+2.j,  9.+4.j,  9.+6.j])
		>>> a.real = np.array([9, 8, 7])
		>>> a
		array([9.+2.j,  8.+4.j,  7.+6.j])
		>>> np.real(1 + 1j)
		1.0
	**/
	static public function real(val:Dynamic):Dynamic;
	/**
		If input is complex with all imaginary parts close to zero, return 
		real parts.
		
		"Close to zero" is defined as `tol` * (machine epsilon of the type for
		`a`).
		
		Parameters
		----------
		a : array_like
		    Input array.
		tol : float
		    Tolerance in machine epsilons for the complex part of the elements
		    in the array.
		
		Returns
		-------
		out : ndarray
		    If `a` is real, the type of `a` is used for the output.  If `a`
		    has complex elements, the returned type is float.
		
		See Also
		--------
		real, imag, angle
		
		Notes
		-----
		Machine epsilon varies from machine to machine and between data types
		but Python floats on most platforms have a machine epsilon equal to
		2.2204460492503131e-16.  You can use 'np.finfo(float).eps' to print
		out the machine epsilon for floats.
		
		Examples
		--------
		>>> np.finfo(float).eps
		2.2204460492503131e-16 # may vary
		
		>>> np.real_if_close([2.1 + 4e-14j, 5.2 + 3e-15j], tol=1000)
		array([2.1, 5.2])
		>>> np.real_if_close([2.1 + 4e-13j, 5.2 + 3e-15j], tol=1000)
		array([2.1+4.e-13j, 5.2 + 3e-15j])
	**/
	static public function real_if_close(a:Dynamic, ?tol:Dynamic):numpy.Ndarray;
	/**
		Load ASCII data stored in a comma-separated file.
		
		The returned array is a record array (if ``usemask=False``, see
		`recarray`) or a masked record array (if ``usemask=True``,
		see `ma.mrecords.MaskedRecords`).
		
		Parameters
		----------
		fname, kwargs : For a description of input parameters, see `genfromtxt`.
		
		See Also
		--------
		numpy.genfromtxt : generic function to load ASCII data.
		
		Notes
		-----
		By default, `dtype` is None, which means that the data-type of the output
		array will be determined from the data.
	**/
	static public function recfromcsv(fname:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Load ASCII data from a file and return it in a record array.
		
		If ``usemask=False`` a standard `recarray` is returned,
		if ``usemask=True`` a MaskedRecords array is returned.
		
		Parameters
		----------
		fname, kwargs : For a description of input parameters, see `genfromtxt`.
		
		See Also
		--------
		numpy.genfromtxt : generic function
		
		Notes
		-----
		By default, `dtype` is None, which means that the data-type of the output
		array will be determined from the data.
	**/
	static public function recfromtxt(fname:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the roots of a polynomial with coefficients given in p.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		The values in the rank-1 array `p` are coefficients of a polynomial.
		If the length of `p` is n+1 then the polynomial is described by::
		
		  p[0] * x**n + p[1] * x**(n-1) + ... + p[n-1]*x + p[n]
		
		Parameters
		----------
		p : array_like
		    Rank-1 array of polynomial coefficients.
		
		Returns
		-------
		out : ndarray
		    An array containing the roots of the polynomial.
		
		Raises
		------
		ValueError
		    When `p` cannot be converted to a rank-1 array.
		
		See also
		--------
		poly : Find the coefficients of a polynomial with a given sequence
		       of roots.
		polyval : Compute polynomial values.
		polyfit : Least squares polynomial fit.
		poly1d : A one-dimensional polynomial class.
		
		Notes
		-----
		The algorithm relies on computing the eigenvalues of the
		companion matrix [1]_.
		
		References
		----------
		.. [1] R. A. Horn & C. R. Johnson, *Matrix Analysis*.  Cambridge, UK:
		    Cambridge University Press, 1999, pp. 146-7.
		
		Examples
		--------
		>>> coeff = [3.2, 2, 1]
		>>> np.roots(coeff)
		array([-0.3125+0.46351241j, -0.3125-0.46351241j])
	**/
	static public function roots(p:Dynamic):numpy.Ndarray;
	/**
		Rotate an array by 90 degrees in the plane specified by axes.
		
		Rotation direction is from the first towards the second axis.
		
		Parameters
		----------
		m : array_like
		    Array of two or more dimensions.
		k : integer
		    Number of times the array is rotated by 90 degrees.
		axes: (2,) array_like
		    The array is rotated in the plane defined by the axes.
		    Axes must be different.
		
		    .. versionadded:: 1.12.0
		
		Returns
		-------
		y : ndarray
		    A rotated view of `m`.
		
		See Also
		--------
		flip : Reverse the order of elements in an array along the given axis.
		fliplr : Flip an array horizontally.
		flipud : Flip an array vertically.
		
		Notes
		-----
		``rot90(m, k=1, axes=(1,0))``  is the reverse of
		``rot90(m, k=1, axes=(0,1))``
		
		``rot90(m, k=1, axes=(1,0))`` is equivalent to
		``rot90(m, k=-1, axes=(0,1))``
		
		Examples
		--------
		>>> m = np.array([[1,2],[3,4]], int)
		>>> m
		array([[1, 2],
		       [3, 4]])
		>>> np.rot90(m)
		array([[2, 4],
		       [1, 3]])
		>>> np.rot90(m, 2)
		array([[4, 3],
		       [2, 1]])
		>>> m = np.arange(8).reshape((2,2,2))
		>>> np.rot90(m, 1, (1,2))
		array([[[1, 3],
		        [0, 2]],
		       [[5, 7],
		        [4, 6]]])
	**/
	static public function rot90(m:Dynamic, ?k:Dynamic, ?axes:Dynamic):numpy.Ndarray;
	/**
		Stack arrays in sequence vertically (row wise).
		
		This is equivalent to concatenation along the first axis after 1-D arrays
		of shape `(N,)` have been reshaped to `(1,N)`. Rebuilds arrays divided by
		`vsplit`.
		
		This function makes most sense for arrays with up to 3 dimensions. For
		instance, for pixel-data with a height (first axis), width (second axis),
		and r/g/b channels (third axis). The functions `concatenate`, `stack` and
		`block` provide more general stacking and concatenation operations.
		
		Parameters
		----------
		tup : sequence of ndarrays
		    The arrays must have the same shape along all but the first axis.
		    1-D arrays must have the same length.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays, will be at least 2-D.
		
		See Also
		--------
		concatenate : Join a sequence of arrays along an existing axis.
		stack : Join a sequence of arrays along a new axis.
		block : Assemble an nd-array from nested lists of blocks.
		hstack : Stack arrays in sequence horizontally (column wise).
		dstack : Stack arrays in sequence depth wise (along third axis).
		column_stack : Stack 1-D arrays as columns into a 2-D array.
		vsplit : Split an array into multiple sub-arrays vertically (row-wise).
		
		Examples
		--------
		>>> a = np.array([1, 2, 3])
		>>> b = np.array([4, 5, 6])
		>>> np.vstack((a,b))
		array([[1, 2, 3],
		       [4, 5, 6]])
		
		>>> a = np.array([[1], [2], [3]])
		>>> b = np.array([[4], [5], [6]])
		>>> np.vstack((a,b))
		array([[1],
		       [2],
		       [3],
		       [4],
		       [5],
		       [6]])
	**/
	static public function row_stack(tup:Dynamic):numpy.Ndarray;
	static public var s_ : Dynamic;
	/**
		Protected string evaluation.
		
		Evaluate a string containing a Python literal expression without
		allowing the execution of arbitrary non-literal code.
		
		Parameters
		----------
		source : str
		    The string to evaluate.
		
		Returns
		-------
		obj : object
		   The result of evaluating `source`.
		
		Raises
		------
		SyntaxError
		    If the code has invalid Python syntax, or if it contains
		    non-literal code.
		
		Examples
		--------
		>>> np.safe_eval('1')
		1
		>>> np.safe_eval('[1, 2, 3]')
		[1, 2, 3]
		>>> np.safe_eval('{"foo": ("bar", 10.0)}')
		{'foo': ('bar', 10.0)}
		
		>>> np.safe_eval('import os')
		Traceback (most recent call last):
		  ...
		SyntaxError: invalid syntax
		
		>>> np.safe_eval('open("/home/user/.ssh/id_dsa").read()')
		Traceback (most recent call last):
		  ...
		ValueError: malformed node or string: <_ast.Call object at 0x...>
	**/
	static public function safe_eval(source:Dynamic):Dynamic;
	/**
		Save an array to a binary file in NumPy ``.npy`` format.
		
		Parameters
		----------
		file : file, str, or pathlib.Path
		    File or filename to which the data is saved.  If file is a file-object,
		    then the filename is unchanged.  If file is a string or Path, a ``.npy``
		    extension will be appended to the filename if it does not already
		    have one.
		arr : array_like
		    Array data to be saved.
		allow_pickle : bool, optional
		    Allow saving object arrays using Python pickles. Reasons for disallowing
		    pickles include security (loading pickled data can execute arbitrary
		    code) and portability (pickled objects may not be loadable on different
		    Python installations, for example if the stored objects require libraries
		    that are not available, and not all pickled data is compatible between
		    Python 2 and Python 3).
		    Default: True
		fix_imports : bool, optional
		    Only useful in forcing objects in object arrays on Python 3 to be
		    pickled in a Python 2 compatible way. If `fix_imports` is True, pickle
		    will try to map the new Python 3 names to the old module names used in
		    Python 2, so that the pickle data stream is readable with Python 2.
		
		See Also
		--------
		savez : Save several arrays into a ``.npz`` archive
		savetxt, load
		
		Notes
		-----
		For a description of the ``.npy`` format, see :py:mod:`numpy.lib.format`.
		
		Any data saved to the file is appended to the end of the file.
		
		Examples
		--------
		>>> from tempfile import TemporaryFile
		>>> outfile = TemporaryFile()
		
		>>> x = np.arange(10)
		>>> np.save(outfile, x)
		
		>>> _ = outfile.seek(0) # Only needed here to simulate closing & reopening file
		>>> np.load(outfile)
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		
		
		>>> with open('test.npy', 'wb') as f:
		...     np.save(f, np.array([1, 2]))
		...     np.save(f, np.array([1, 3]))
		>>> with open('test.npy', 'rb') as f:
		...     a = np.load(f)
		...     b = np.load(f)
		>>> print(a, b)
		# [1 2] [1 3]
	**/
	static public function save(file:Dynamic, arr:Dynamic, ?allow_pickle:Dynamic, ?fix_imports:Dynamic):Dynamic;
	/**
		Save an array to a text file.
		
		Parameters
		----------
		fname : filename or file handle
		    If the filename ends in ``.gz``, the file is automatically saved in
		    compressed gzip format.  `loadtxt` understands gzipped files
		    transparently.
		X : 1D or 2D array_like
		    Data to be saved to a text file.
		fmt : str or sequence of strs, optional
		    A single format (%10.5f), a sequence of formats, or a
		    multi-format string, e.g. 'Iteration %d -- %10.5f', in which
		    case `delimiter` is ignored. For complex `X`, the legal options
		    for `fmt` are:
		
		    * a single specifier, `fmt='%.4e'`, resulting in numbers formatted
		      like `' (%s+%sj)' % (fmt, fmt)`
		    * a full string specifying every real and imaginary part, e.g.
		      `' %.4e %+.4ej %.4e %+.4ej %.4e %+.4ej'` for 3 columns
		    * a list of specifiers, one per column - in this case, the real
		      and imaginary part must have separate specifiers,
		      e.g. `['%.3e + %.3ej', '(%.15e%+.15ej)']` for 2 columns
		delimiter : str, optional
		    String or character separating columns.
		newline : str, optional
		    String or character separating lines.
		
		    .. versionadded:: 1.5.0
		header : str, optional
		    String that will be written at the beginning of the file.
		
		    .. versionadded:: 1.7.0
		footer : str, optional
		    String that will be written at the end of the file.
		
		    .. versionadded:: 1.7.0
		comments : str, optional
		    String that will be prepended to the ``header`` and ``footer`` strings,
		    to mark them as comments. Default: '# ',  as expected by e.g.
		    ``numpy.loadtxt``.
		
		    .. versionadded:: 1.7.0
		encoding : {None, str}, optional
		    Encoding used to encode the outputfile. Does not apply to output
		    streams. If the encoding is something other than 'bytes' or 'latin1'
		    you will not be able to load the file in NumPy versions < 1.14. Default
		    is 'latin1'.
		
		    .. versionadded:: 1.14.0
		
		
		See Also
		--------
		save : Save an array to a binary file in NumPy ``.npy`` format
		savez : Save several arrays into an uncompressed ``.npz`` archive
		savez_compressed : Save several arrays into a compressed ``.npz`` archive
		
		Notes
		-----
		Further explanation of the `fmt` parameter
		(``%[flag]width[.precision]specifier``):
		
		flags:
		    ``-`` : left justify
		
		    ``+`` : Forces to precede result with + or -.
		
		    ``0`` : Left pad the number with zeros instead of space (see width).
		
		width:
		    Minimum number of characters to be printed. The value is not truncated
		    if it has more characters.
		
		precision:
		    - For integer specifiers (eg. ``d,i,o,x``), the minimum number of
		      digits.
		    - For ``e, E`` and ``f`` specifiers, the number of digits to print
		      after the decimal point.
		    - For ``g`` and ``G``, the maximum number of significant digits.
		    - For ``s``, the maximum number of characters.
		
		specifiers:
		    ``c`` : character
		
		    ``d`` or ``i`` : signed decimal integer
		
		    ``e`` or ``E`` : scientific notation with ``e`` or ``E``.
		
		    ``f`` : decimal floating point
		
		    ``g,G`` : use the shorter of ``e,E`` or ``f``
		
		    ``o`` : signed octal
		
		    ``s`` : string of characters
		
		    ``u`` : unsigned decimal integer
		
		    ``x,X`` : unsigned hexadecimal integer
		
		This explanation of ``fmt`` is not complete, for an exhaustive
		specification see [1]_.
		
		References
		----------
		.. [1] `Format Specification Mini-Language
		       <https://docs.python.org/library/string.html#format-specification-mini-language>`_,
		       Python Documentation.
		
		Examples
		--------
		>>> x = y = z = np.arange(0.0,5.0,1.0)
		>>> np.savetxt('test.out', x, delimiter=',')   # X is an array
		>>> np.savetxt('test.out', (x,y,z))   # x,y,z equal sized 1D arrays
		>>> np.savetxt('test.out', x, fmt='%1.4e')   # use exponential notation
	**/
	static public function savetxt(fname:Dynamic, X:Dynamic, ?fmt:Dynamic, ?delimiter:Dynamic, ?newline:Dynamic, ?header:Dynamic, ?footer:Dynamic, ?comments:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		Save several arrays into a single file in uncompressed ``.npz`` format.
		
		Provide arrays as keyword arguments to store them under the
		corresponding name in the output file: ``savez(fn, x=x, y=y)``.
		
		If arrays are specified as positional arguments, i.e., ``savez(fn,
		x, y)``, their names will be `arr_0`, `arr_1`, etc.
		
		Parameters
		----------
		file : str or file
		    Either the filename (string) or an open file (file-like object)
		    where the data will be saved. If file is a string or a Path, the
		    ``.npz`` extension will be appended to the filename if it is not
		    already there.
		args : Arguments, optional
		    Arrays to save to the file. Please use keyword arguments (see
		    `kwds` below) to assign names to arrays.  Arrays specified as
		    args will be named "arr_0", "arr_1", and so on.
		kwds : Keyword arguments, optional
		    Arrays to save to the file. Each array will be saved to the
		    output file with its corresponding keyword name.
		
		Returns
		-------
		None
		
		See Also
		--------
		save : Save a single array to a binary file in NumPy format.
		savetxt : Save an array to a file as plain text.
		savez_compressed : Save several arrays into a compressed ``.npz`` archive
		
		Notes
		-----
		The ``.npz`` file format is a zipped archive of files named after the
		variables they contain.  The archive is not compressed and each file
		in the archive contains one variable in ``.npy`` format. For a
		description of the ``.npy`` format, see :py:mod:`numpy.lib.format`.
		
		When opening the saved ``.npz`` file with `load` a `NpzFile` object is
		returned. This is a dictionary-like object which can be queried for
		its list of arrays (with the ``.files`` attribute), and for the arrays
		themselves.
		
		Keys passed in `kwds` are used as filenames inside the ZIP archive.
		Therefore, keys should be valid filenames; e.g., avoid keys that begin with
		``/`` or contain ``.``.
		
		When naming variables with keyword arguments, it is not possible to name a
		variable ``file``, as this would cause the ``file`` argument to be defined
		twice in the call to ``savez``.
		
		Examples
		--------
		>>> from tempfile import TemporaryFile
		>>> outfile = TemporaryFile()
		>>> x = np.arange(10)
		>>> y = np.sin(x)
		
		Using `savez` with \*args, the arrays are saved with default names.
		
		>>> np.savez(outfile, x, y)
		>>> _ = outfile.seek(0) # Only needed here to simulate closing & reopening file
		>>> npzfile = np.load(outfile)
		>>> npzfile.files
		['arr_0', 'arr_1']
		>>> npzfile['arr_0']
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		
		Using `savez` with \**kwds, the arrays are saved with the keyword names.
		
		>>> outfile = TemporaryFile()
		>>> np.savez(outfile, x=x, y=y)
		>>> _ = outfile.seek(0)
		>>> npzfile = np.load(outfile)
		>>> sorted(npzfile.files)
		['x', 'y']
		>>> npzfile['x']
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
	**/
	static public function savez(file:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Save several arrays into a single file in compressed ``.npz`` format.
		
		Provide arrays as keyword arguments to store them under the
		corresponding name in the output file: ``savez(fn, x=x, y=y)``.
		
		If arrays are specified as positional arguments, i.e., ``savez(fn,
		x, y)``, their names will be `arr_0`, `arr_1`, etc.
		
		Parameters
		----------
		file : str or file
		    Either the filename (string) or an open file (file-like object)
		    where the data will be saved. If file is a string or a Path, the
		    ``.npz`` extension will be appended to the filename if it is not
		    already there.
		args : Arguments, optional
		    Arrays to save to the file. Please use keyword arguments (see
		    `kwds` below) to assign names to arrays.  Arrays specified as
		    args will be named "arr_0", "arr_1", and so on.
		kwds : Keyword arguments, optional
		    Arrays to save to the file. Each array will be saved to the
		    output file with its corresponding keyword name.
		
		Returns
		-------
		None
		
		See Also
		--------
		numpy.save : Save a single array to a binary file in NumPy format.
		numpy.savetxt : Save an array to a file as plain text.
		numpy.savez : Save several arrays into an uncompressed ``.npz`` file format
		numpy.load : Load the files created by savez_compressed.
		
		Notes
		-----
		The ``.npz`` file format is a zipped archive of files named after the
		variables they contain.  The archive is compressed with
		``zipfile.ZIP_DEFLATED`` and each file in the archive contains one variable
		in ``.npy`` format. For a description of the ``.npy`` format, see
		:py:mod:`numpy.lib.format`.
		
		
		When opening the saved ``.npz`` file with `load` a `NpzFile` object is
		returned. This is a dictionary-like object which can be queried for
		its list of arrays (with the ``.files`` attribute), and for the arrays
		themselves.
		
		Examples
		--------
		>>> test_array = np.random.rand(3, 2)
		>>> test_vector = np.random.rand(4)
		>>> np.savez_compressed('/tmp/123', a=test_array, b=test_vector)
		>>> loaded = np.load('/tmp/123.npz')
		>>> print(np.array_equal(test_array, loaded['a']))
		True
		>>> print(np.array_equal(test_vector, loaded['b']))
		True
	**/
	static public function savez_compressed(file:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an array drawn from elements in choicelist, depending on conditions.
		
		Parameters
		----------
		condlist : list of bool ndarrays
		    The list of conditions which determine from which array in `choicelist`
		    the output elements are taken. When multiple conditions are satisfied,
		    the first one encountered in `condlist` is used.
		choicelist : list of ndarrays
		    The list of arrays from which the output elements are taken. It has
		    to be of the same length as `condlist`.
		default : scalar, optional
		    The element inserted in `output` when all conditions evaluate to False.
		
		Returns
		-------
		output : ndarray
		    The output at position m is the m-th element of the array in
		    `choicelist` where the m-th element of the corresponding array in
		    `condlist` is True.
		
		See Also
		--------
		where : Return elements from one of two arrays depending on condition.
		take, choose, compress, diag, diagonal
		
		Examples
		--------
		>>> x = np.arange(6)
		>>> condlist = [x<3, x>3]
		>>> choicelist = [x, x**2]
		>>> np.select(condlist, choicelist, 42)
		array([ 0,  1,  2, 42, 16, 25])
		
		>>> condlist = [x<=4, x>3]
		>>> choicelist = [x, x**2]
		>>> np.select(condlist, choicelist, 55)
		array([ 0,  1,  2,  3,  4, 25])
	**/
	static public function select(condlist:Dynamic, choicelist:Dynamic, ?_default:Dynamic):numpy.Ndarray;
	/**
		Find the set difference of two arrays.
		
		Return the unique values in `ar1` that are not in `ar2`.
		
		Parameters
		----------
		ar1 : array_like
		    Input array.
		ar2 : array_like
		    Input comparison array.
		assume_unique : bool
		    If True, the input arrays are both assumed to be unique, which
		    can speed up the calculation.  Default is False.
		
		Returns
		-------
		setdiff1d : ndarray
		    1D array of values in `ar1` that are not in `ar2`. The result
		    is sorted when `assume_unique=False`, but otherwise only sorted
		    if the input is sorted.
		
		See Also
		--------
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Examples
		--------
		>>> a = np.array([1, 2, 3, 2, 4, 1])
		>>> b = np.array([3, 4, 5, 6])
		>>> np.setdiff1d(a, b)
		array([1, 2])
	**/
	static public function setdiff1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic):numpy.Ndarray;
	/**
		Find the set exclusive-or of two arrays.
		
		Return the sorted, unique values that are in only one (not both) of the
		input arrays.
		
		Parameters
		----------
		ar1, ar2 : array_like
		    Input arrays.
		assume_unique : bool
		    If True, the input arrays are both assumed to be unique, which
		    can speed up the calculation.  Default is False.
		
		Returns
		-------
		setxor1d : ndarray
		    Sorted 1D array of unique values that are in only one of the input
		    arrays.
		
		Examples
		--------
		>>> a = np.array([1, 2, 3, 2, 4])
		>>> b = np.array([2, 3, 5, 7, 5])
		>>> np.setxor1d(a,b)
		array([1, 4, 5, 7])
	**/
	static public function setxor1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic):numpy.Ndarray;
	/**
		Return the normalized sinc function.
		
		The sinc function is :math:`\sin(\pi x)/(\pi x)`.
		
		.. note::
		
		    Note the normalization factor of ``pi`` used in the definition.
		    This is the most commonly used definition in signal processing.
		    Use ``sinc(x / np.pi)`` to obtain the unnormalized sinc function
		    :math:`\sin(x)/(x)` that is more common in mathematics.
		
		Parameters
		----------
		x : ndarray
		    Array (possibly multi-dimensional) of values for which to to
		    calculate ``sinc(x)``.
		
		Returns
		-------
		out : ndarray
		    ``sinc(x)``, which has the same shape as the input.
		
		Notes
		-----
		``sinc(0)`` is the limit value 1.
		
		The name sinc is short for "sine cardinal" or "sinus cardinalis".
		
		The sinc function is used in various signal processing applications,
		including in anti-aliasing, in the construction of a Lanczos resampling
		filter, and in interpolation.
		
		For bandlimited interpolation of discrete-time signals, the ideal
		interpolation kernel is proportional to the sinc function.
		
		References
		----------
		.. [1] Weisstein, Eric W. "Sinc Function." From MathWorld--A Wolfram Web
		       Resource. http://mathworld.wolfram.com/SincFunction.html
		.. [2] Wikipedia, "Sinc function",
		       https://en.wikipedia.org/wiki/Sinc_function
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-4, 4, 41)
		>>> np.sinc(x)
		 array([-3.89804309e-17,  -4.92362781e-02,  -8.40918587e-02, # may vary
		        -8.90384387e-02,  -5.84680802e-02,   3.89804309e-17,
		        6.68206631e-02,   1.16434881e-01,   1.26137788e-01,
		        8.50444803e-02,  -3.89804309e-17,  -1.03943254e-01,
		        -1.89206682e-01,  -2.16236208e-01,  -1.55914881e-01,
		        3.89804309e-17,   2.33872321e-01,   5.04551152e-01,
		        7.56826729e-01,   9.35489284e-01,   1.00000000e+00,
		        9.35489284e-01,   7.56826729e-01,   5.04551152e-01,
		        2.33872321e-01,   3.89804309e-17,  -1.55914881e-01,
		       -2.16236208e-01,  -1.89206682e-01,  -1.03943254e-01,
		       -3.89804309e-17,   8.50444803e-02,   1.26137788e-01,
		        1.16434881e-01,   6.68206631e-02,   3.89804309e-17,
		        -5.84680802e-02,  -8.90384387e-02,  -8.40918587e-02,
		        -4.92362781e-02,  -3.89804309e-17])
		
		>>> plt.plot(x, np.sinc(x))
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Sinc Function")
		Text(0.5, 1.0, 'Sinc Function')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("X")
		Text(0.5, 0, 'X')
		>>> plt.show()
	**/
	static public function sinc(x:Dynamic):numpy.Ndarray;
	/**
		Sort a complex array using the real part first, then the imaginary part.
		
		Parameters
		----------
		a : array_like
		    Input array
		
		Returns
		-------
		out : complex ndarray
		    Always returns a sorted complex array.
		
		Examples
		--------
		>>> np.sort_complex([5, 3, 6, 2, 1])
		array([1.+0.j, 2.+0.j, 3.+0.j, 5.+0.j, 6.+0.j])
		
		>>> np.sort_complex([1 + 2j, 2 - 1j, 3 - 2j, 3 - 3j, 3 + 5j])
		array([1.+2.j,  2.-1.j,  3.-3.j,  3.-2.j,  3.+5.j])
	**/
	static public function sort_complex(a:Dynamic):Dynamic;
	/**
		Print or write to a file the source code for a NumPy object.
		
		The source code is only returned for objects written in Python. Many
		functions and classes are defined in C and will therefore not return
		useful information.
		
		Parameters
		----------
		object : numpy object
		    Input object. This can be any object (function, class, module,
		    ...).
		output : file object, optional
		    If `output` not supplied then source code is printed to screen
		    (sys.stdout).  File object must be created with either write 'w' or
		    append 'a' modes.
		
		See Also
		--------
		lookfor, info
		
		Examples
		--------
		>>> np.source(np.interp)                        #doctest: +SKIP
		In file: /usr/lib/python2.6/dist-packages/numpy/lib/function_base.py
		def interp(x, xp, fp, left=None, right=None):
		    """.... (full docstring printed)"""
		    if isinstance(x, (float, int, number)):
		        return compiled_interp([x], xp, fp, left, right).item()
		    else:
		        return compiled_interp(x, xp, fp, left, right)
		
		The source code is only returned for objects written in Python.
		
		>>> np.source(np.array)                         #doctest: +SKIP
		Not available for this object.
	**/
	static public function source(object:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Split an array into multiple sub-arrays as views into `ary`.
		
		Parameters
		----------
		ary : ndarray
		    Array to be divided into sub-arrays.
		indices_or_sections : int or 1-D array
		    If `indices_or_sections` is an integer, N, the array will be divided
		    into N equal arrays along `axis`.  If such a split is not possible,
		    an error is raised.
		
		    If `indices_or_sections` is a 1-D array of sorted integers, the entries
		    indicate where along `axis` the array is split.  For example,
		    ``[2, 3]`` would, for ``axis=0``, result in
		
		      - ary[:2]
		      - ary[2:3]
		      - ary[3:]
		
		    If an index exceeds the dimension of the array along `axis`,
		    an empty sub-array is returned correspondingly.
		axis : int, optional
		    The axis along which to split, default is 0.
		
		Returns
		-------
		sub-arrays : list of ndarrays
		    A list of sub-arrays as views into `ary`.
		
		Raises
		------
		ValueError
		    If `indices_or_sections` is given as an integer, but
		    a split does not result in equal division.
		
		See Also
		--------
		array_split : Split an array into multiple sub-arrays of equal or
		              near-equal size.  Does not raise an exception if
		              an equal division cannot be made.
		hsplit : Split array into multiple sub-arrays horizontally (column-wise).
		vsplit : Split array into multiple sub-arrays vertically (row wise).
		dsplit : Split array into multiple sub-arrays along the 3rd axis (depth).
		concatenate : Join a sequence of arrays along an existing axis.
		stack : Join a sequence of arrays along a new axis.
		hstack : Stack arrays in sequence horizontally (column wise).
		vstack : Stack arrays in sequence vertically (row wise).
		dstack : Stack arrays in sequence depth wise (along third dimension).
		
		Examples
		--------
		>>> x = np.arange(9.0)
		>>> np.split(x, 3)
		[array([0.,  1.,  2.]), array([3.,  4.,  5.]), array([6.,  7.,  8.])]
		
		>>> x = np.arange(8.0)
		>>> np.split(x, [3, 5, 6, 10])
		[array([0.,  1.,  2.]),
		 array([3.,  4.]),
		 array([5.]),
		 array([6.,  7.]),
		 array([], dtype=float64)]
	**/
	static public function split(ary:Dynamic, indices_or_sections:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Take values from the input array by matching 1d index and data slices.
		
		This iterates over matching 1d slices oriented along the specified axis in
		the index and data arrays, and uses the former to look up values in the
		latter. These slices can be different lengths.
		
		Functions returning an index along an axis, like `argsort` and
		`argpartition`, produce suitable indices for this function.
		
		.. versionadded:: 1.15.0
		
		Parameters
		----------
		arr : ndarray (Ni..., M, Nk...)
		    Source array
		indices : ndarray (Ni..., J, Nk...)
		    Indices to take along each 1d slice of `arr`. This must match the
		    dimension of arr, but dimensions Ni and Nj only need to broadcast
		    against `arr`.
		axis : int
		    The axis to take 1d slices along. If axis is None, the input array is
		    treated as if it had first been flattened to 1d, for consistency with
		    `sort` and `argsort`.
		
		Returns
		-------
		out: ndarray (Ni..., J, Nk...)
		    The indexed result.
		
		Notes
		-----
		This is equivalent to (but faster than) the following use of `ndindex` and
		`s_`, which sets each of ``ii`` and ``kk`` to a tuple of indices::
		
		    Ni, M, Nk = a.shape[:axis], a.shape[axis], a.shape[axis+1:]
		    J = indices.shape[axis]  # Need not equal M
		    out = np.empty(Ni + (J,) + Nk)
		
		    for ii in ndindex(Ni):
		        for kk in ndindex(Nk):
		            a_1d       = a      [ii + s_[:,] + kk]
		            indices_1d = indices[ii + s_[:,] + kk]
		            out_1d     = out    [ii + s_[:,] + kk]
		            for j in range(J):
		                out_1d[j] = a_1d[indices_1d[j]]
		
		Equivalently, eliminating the inner loop, the last two lines would be::
		
		            out_1d[:] = a_1d[indices_1d]
		
		See Also
		--------
		take : Take along an axis, using the same indices for every 1d slice
		put_along_axis :
		    Put values into the destination array by matching 1d index and data slices
		
		Examples
		--------
		
		For this sample array
		
		>>> a = np.array([[10, 30, 20], [60, 40, 50]])
		
		We can sort either by using sort directly, or argsort and this function
		
		>>> np.sort(a, axis=1)
		array([[10, 20, 30],
		       [40, 50, 60]])
		>>> ai = np.argsort(a, axis=1); ai
		array([[0, 2, 1],
		       [1, 2, 0]])
		>>> np.take_along_axis(a, ai, axis=1)
		array([[10, 20, 30],
		       [40, 50, 60]])
		
		The same works for max and min, if you expand the dimensions:
		
		>>> np.expand_dims(np.max(a, axis=1), axis=1)
		array([[30],
		       [60]])
		>>> ai = np.expand_dims(np.argmax(a, axis=1), axis=1)
		>>> ai
		array([[1],
		       [0]])
		>>> np.take_along_axis(a, ai, axis=1)
		array([[30],
		       [60]])
		
		If we want to get the max and min at the same time, we can stack the
		indices first
		
		>>> ai_min = np.expand_dims(np.argmin(a, axis=1), axis=1)
		>>> ai_max = np.expand_dims(np.argmax(a, axis=1), axis=1)
		>>> ai = np.concatenate([ai_min, ai_max], axis=1)
		>>> ai
		array([[0, 1],
		       [1, 0]])
		>>> np.take_along_axis(a, ai, axis=1)
		array([[10, 30],
		       [40, 60]])
	**/
	static public function take_along_axis(arr:Dynamic, indices:Dynamic, axis:Dynamic):Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?durations:Dynamic, ?tests:Dynamic):Dynamic;
	/**
		Construct an array by repeating A the number of times given by reps.
		
		If `reps` has length ``d``, the result will have dimension of
		``max(d, A.ndim)``.
		
		If ``A.ndim < d``, `A` is promoted to be d-dimensional by prepending new
		axes. So a shape (3,) array is promoted to (1, 3) for 2-D replication,
		or shape (1, 1, 3) for 3-D replication. If this is not the desired
		behavior, promote `A` to d-dimensions manually before calling this
		function.
		
		If ``A.ndim > d``, `reps` is promoted to `A`.ndim by pre-pending 1's to it.
		Thus for an `A` of shape (2, 3, 4, 5), a `reps` of (2, 2) is treated as
		(1, 1, 2, 2).
		
		Note : Although tile may be used for broadcasting, it is strongly
		recommended to use numpy's broadcasting operations and functions.
		
		Parameters
		----------
		A : array_like
		    The input array.
		reps : array_like
		    The number of repetitions of `A` along each axis.
		
		Returns
		-------
		c : ndarray
		    The tiled output array.
		
		See Also
		--------
		repeat : Repeat elements of an array.
		broadcast_to : Broadcast an array to a new shape
		
		Examples
		--------
		>>> a = np.array([0, 1, 2])
		>>> np.tile(a, 2)
		array([0, 1, 2, 0, 1, 2])
		>>> np.tile(a, (2, 2))
		array([[0, 1, 2, 0, 1, 2],
		       [0, 1, 2, 0, 1, 2]])
		>>> np.tile(a, (2, 1, 2))
		array([[[0, 1, 2, 0, 1, 2]],
		       [[0, 1, 2, 0, 1, 2]]])
		
		>>> b = np.array([[1, 2], [3, 4]])
		>>> np.tile(b, 2)
		array([[1, 2, 1, 2],
		       [3, 4, 3, 4]])
		>>> np.tile(b, (2, 1))
		array([[1, 2],
		       [3, 4],
		       [1, 2],
		       [3, 4]])
		
		>>> c = np.array([1,2,3,4])
		>>> np.tile(c,(4,1))
		array([[1, 2, 3, 4],
		       [1, 2, 3, 4],
		       [1, 2, 3, 4],
		       [1, 2, 3, 4]])
	**/
	static public function tile(A:Dynamic, reps:Dynamic):numpy.Ndarray;
	static public var tracemalloc_domain : Dynamic;
	/**
		Integrate along the given axis using the composite trapezoidal rule.
		
		If `x` is provided, the integration happens in sequence along its
		elements - they are not sorted.
		
		Integrate `y` (`x`) along each 1d slice on the given axis, compute
		:math:`\int y(x) dx`.
		When `x` is specified, this integrates along the parametric curve,
		computing :math:`\int_t y(t) dt =
		\int_t y(t) \left.\frac{dx}{dt}\right|_{x=x(t)} dt`.
		
		Parameters
		----------
		y : array_like
		    Input array to integrate.
		x : array_like, optional
		    The sample points corresponding to the `y` values. If `x` is None,
		    the sample points are assumed to be evenly spaced `dx` apart. The
		    default is None.
		dx : scalar, optional
		    The spacing between sample points when `x` is None. The default is 1.
		axis : int, optional
		    The axis along which to integrate.
		
		Returns
		-------
		trapz : float or ndarray
		    Definite integral of 'y' = n-dimensional array as approximated along
		    a single axis by the trapezoidal rule. If 'y' is a 1-dimensional array,
		    then the result is a float. If 'n' is greater than 1, then the result
		    is an 'n-1' dimensional array.
		
		See Also
		--------
		sum, cumsum
		
		Notes
		-----
		Image [2]_ illustrates trapezoidal rule -- y-axis locations of points
		will be taken from `y` array, by default x-axis distances between
		points will be 1.0, alternatively they can be provided with `x` array
		or with `dx` scalar.  Return value will be equal to combined area under
		the red lines.
		
		
		References
		----------
		.. [1] Wikipedia page: https://en.wikipedia.org/wiki/Trapezoidal_rule
		
		.. [2] Illustration image:
		       https://en.wikipedia.org/wiki/File:Composite_trapezoidal_rule_illustration.png
		
		Examples
		--------
		>>> np.trapz([1,2,3])
		4.0
		>>> np.trapz([1,2,3], x=[4,6,8])
		8.0
		>>> np.trapz([1,2,3], dx=2)
		8.0
		
		Using a decreasing `x` corresponds to integrating in reverse:
		
		>>> np.trapz([1,2,3], x=[8,6,4])
		-8.0
		
		More generally `x` is used to integrate along a parametric curve.
		This finds the area of a circle, noting we repeat the sample which closes
		the curve:
		
		>>> theta = np.linspace(0, 2 * np.pi, num=1000, endpoint=True)
		>>> np.trapz(np.cos(theta), x=np.sin(theta))
		3.141571941375841
		
		>>> a = np.arange(6).reshape(2, 3)
		>>> a
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.trapz(a, axis=0)
		array([1.5, 2.5, 3.5])
		>>> np.trapz(a, axis=1)
		array([2.,  8.])
	**/
	static public function trapz(y:Dynamic, ?x:Dynamic, ?dx:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		An array with ones at and below the given diagonal and zeros elsewhere.
		
		Parameters
		----------
		N : int
		    Number of rows in the array.
		M : int, optional
		    Number of columns in the array.
		    By default, `M` is taken equal to `N`.
		k : int, optional
		    The sub-diagonal at and below which the array is filled.
		    `k` = 0 is the main diagonal, while `k` < 0 is below it,
		    and `k` > 0 is above.  The default is 0.
		dtype : dtype, optional
		    Data type of the returned array.  The default is float.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		tri : ndarray of shape (N, M)
		    Array with its lower triangle filled with ones and zero elsewhere;
		    in other words ``T[i,j] == 1`` for ``j <= i + k``, 0 otherwise.
		
		Examples
		--------
		>>> np.tri(3, 5, 2, dtype=int)
		array([[1, 1, 1, 0, 0],
		       [1, 1, 1, 1, 0],
		       [1, 1, 1, 1, 1]])
		
		>>> np.tri(3, 5, -1)
		array([[0.,  0.,  0.,  0.,  0.],
		       [1.,  0.,  0.,  0.,  0.],
		       [1.,  1.,  0.,  0.,  0.]])
	**/
	static public function tri(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic, ?like:Dynamic):Dynamic;
	/**
		Lower triangle of an array.
		
		Return a copy of an array with elements above the `k`-th diagonal zeroed.
		For arrays with ``ndim`` exceeding 2, `tril` will apply to the final two
		axes.
		
		Parameters
		----------
		m : array_like, shape (..., M, N)
		    Input array.
		k : int, optional
		    Diagonal above which to zero elements.  `k = 0` (the default) is the
		    main diagonal, `k < 0` is below it and `k > 0` is above.
		
		Returns
		-------
		tril : ndarray, shape (..., M, N)
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
		
		>>> np.tril(np.arange(3*4*5).reshape(3, 4, 5))
		array([[[ 0,  0,  0,  0,  0],
		        [ 5,  6,  0,  0,  0],
		        [10, 11, 12,  0,  0],
		        [15, 16, 17, 18,  0]],
		       [[20,  0,  0,  0,  0],
		        [25, 26,  0,  0,  0],
		        [30, 31, 32,  0,  0],
		        [35, 36, 37, 38,  0]],
		       [[40,  0,  0,  0,  0],
		        [45, 46,  0,  0,  0],
		        [50, 51, 52,  0,  0],
		        [55, 56, 57, 58,  0]]])
	**/
	static public function tril(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Return the indices for the lower-triangle of an (n, m) array.
		
		Parameters
		----------
		n : int
		    The row dimension of the arrays for which the returned
		    indices will be valid.
		k : int, optional
		    Diagonal offset (see `tril` for details).
		m : int, optional
		    .. versionadded:: 1.9.0
		
		    The column dimension of the arrays for which the returned
		    arrays will be valid.
		    By default `m` is taken equal to `n`.
		
		
		Returns
		-------
		inds : tuple of arrays
		    The indices for the triangle. The returned tuple contains two arrays,
		    each with the indices along one dimension of the array.
		
		See also
		--------
		triu_indices : similar function, for upper-triangular.
		mask_indices : generic function accepting an arbitrary mask function.
		tril, triu
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		Examples
		--------
		Compute two different sets of indices to access 4x4 arrays, one for the
		lower triangular part starting at the main diagonal, and one starting two
		diagonals further right:
		
		>>> il1 = np.tril_indices(4)
		>>> il2 = np.tril_indices(4, 2)
		
		Here is how they can be used with a sample array:
		
		>>> a = np.arange(16).reshape(4, 4)
		>>> a
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11],
		       [12, 13, 14, 15]])
		
		Both for indexing:
		
		>>> a[il1]
		array([ 0,  4,  5, ..., 13, 14, 15])
		
		And for assigning values:
		
		>>> a[il1] = -1
		>>> a
		array([[-1,  1,  2,  3],
		       [-1, -1,  6,  7],
		       [-1, -1, -1, 11],
		       [-1, -1, -1, -1]])
		
		These cover almost the whole array (two diagonals right of the main one):
		
		>>> a[il2] = -10
		>>> a
		array([[-10, -10, -10,   3],
		       [-10, -10, -10, -10],
		       [-10, -10, -10, -10],
		       [-10, -10, -10, -10]])
	**/
	static public function tril_indices(n:Dynamic, ?k:Dynamic, ?m:Dynamic):Dynamic;
	/**
		Return the indices for the lower-triangle of arr.
		
		See `tril_indices` for full details.
		
		Parameters
		----------
		arr : array_like
		    The indices will be valid for square arrays whose dimensions are
		    the same as arr.
		k : int, optional
		    Diagonal offset (see `tril` for details).
		
		See Also
		--------
		tril_indices, tril
		
		Notes
		-----
		.. versionadded:: 1.4.0
	**/
	static public function tril_indices_from(arr:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Trim the leading and/or trailing zeros from a 1-D array or sequence.
		
		Parameters
		----------
		filt : 1-D array or sequence
		    Input array.
		trim : str, optional
		    A string with 'f' representing trim from front and 'b' to trim from
		    back. Default is 'fb', trim zeros from both front and back of the
		    array.
		
		Returns
		-------
		trimmed : 1-D array or sequence
		    The result of trimming the input. The input data type is preserved.
		
		Examples
		--------
		>>> a = np.array((0, 0, 0, 1, 2, 3, 0, 2, 1, 0))
		>>> np.trim_zeros(a)
		array([1, 2, 3, 0, 2, 1])
		
		>>> np.trim_zeros(a, 'b')
		array([0, 0, 0, ..., 0, 2, 1])
		
		The input data type is preserved, list/tuple in means list/tuple out.
		
		>>> np.trim_zeros([0, 1, 2, 0])
		[1, 2]
	**/
	static public function trim_zeros(filt:Dynamic, ?trim:Dynamic):Dynamic;
	/**
		Upper triangle of an array.
		
		Return a copy of an array with the elements below the `k`-th diagonal
		zeroed. For arrays with ``ndim`` exceeding 2, `triu` will apply to the final
		two axes.
		
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
		
		>>> np.triu(np.arange(3*4*5).reshape(3, 4, 5))
		array([[[ 0,  1,  2,  3,  4],
		        [ 0,  6,  7,  8,  9],
		        [ 0,  0, 12, 13, 14],
		        [ 0,  0,  0, 18, 19]],
		       [[20, 21, 22, 23, 24],
		        [ 0, 26, 27, 28, 29],
		        [ 0,  0, 32, 33, 34],
		        [ 0,  0,  0, 38, 39]],
		       [[40, 41, 42, 43, 44],
		        [ 0, 46, 47, 48, 49],
		        [ 0,  0, 52, 53, 54],
		        [ 0,  0,  0, 58, 59]]])
	**/
	static public function triu(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Return the indices for the upper-triangle of an (n, m) array.
		
		Parameters
		----------
		n : int
		    The size of the arrays for which the returned indices will
		    be valid.
		k : int, optional
		    Diagonal offset (see `triu` for details).
		m : int, optional
		    .. versionadded:: 1.9.0
		
		    The column dimension of the arrays for which the returned
		    arrays will be valid.
		    By default `m` is taken equal to `n`.
		
		
		Returns
		-------
		inds : tuple, shape(2) of ndarrays, shape(`n`)
		    The indices for the triangle. The returned tuple contains two arrays,
		    each with the indices along one dimension of the array.  Can be used
		    to slice a ndarray of shape(`n`, `n`).
		
		See also
		--------
		tril_indices : similar function, for lower-triangular.
		mask_indices : generic function accepting an arbitrary mask function.
		triu, tril
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		Examples
		--------
		Compute two different sets of indices to access 4x4 arrays, one for the
		upper triangular part starting at the main diagonal, and one starting two
		diagonals further right:
		
		>>> iu1 = np.triu_indices(4)
		>>> iu2 = np.triu_indices(4, 2)
		
		Here is how they can be used with a sample array:
		
		>>> a = np.arange(16).reshape(4, 4)
		>>> a
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11],
		       [12, 13, 14, 15]])
		
		Both for indexing:
		
		>>> a[iu1]
		array([ 0,  1,  2, ..., 10, 11, 15])
		
		And for assigning values:
		
		>>> a[iu1] = -1
		>>> a
		array([[-1, -1, -1, -1],
		       [ 4, -1, -1, -1],
		       [ 8,  9, -1, -1],
		       [12, 13, 14, -1]])
		
		These cover only a small part of the whole array (two diagonals right
		of the main one):
		
		>>> a[iu2] = -10
		>>> a
		array([[ -1,  -1, -10, -10],
		       [  4,  -1,  -1, -10],
		       [  8,   9,  -1,  -1],
		       [ 12,  13,  14,  -1]])
	**/
	static public function triu_indices(n:Dynamic, ?k:Dynamic, ?m:Dynamic):Dynamic;
	/**
		Return the indices for the upper-triangle of arr.
		
		See `triu_indices` for full details.
		
		Parameters
		----------
		arr : ndarray, shape(N, N)
		    The indices will be valid for square arrays.
		k : int, optional
		    Diagonal offset (see `triu` for details).
		
		Returns
		-------
		triu_indices_from : tuple, shape(2) of ndarray, shape(N)
		    Indices for the upper-triangle of `arr`.
		
		See Also
		--------
		triu_indices, triu
		
		Notes
		-----
		.. versionadded:: 1.4.0
	**/
	static public function triu_indices_from(arr:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Return a description for the given data type code.
		
		Parameters
		----------
		char : str
		    Data type code.
		
		Returns
		-------
		out : str
		    Description of the input data type code.
		
		See Also
		--------
		dtype, typecodes
		
		Examples
		--------
		>>> typechars = ['S1', '?', 'B', 'D', 'G', 'F', 'I', 'H', 'L', 'O', 'Q',
		...              'S', 'U', 'V', 'b', 'd', 'g', 'f', 'i', 'h', 'l', 'q']
		>>> for typechar in typechars:
		...     print(typechar, ' : ', np.typename(typechar))
		...
		S1  :  character
		?  :  bool
		B  :  unsigned char
		D  :  complex double precision
		G  :  complex long double precision
		F  :  complex single precision
		I  :  unsigned integer
		H  :  unsigned short
		L  :  unsigned long integer
		O  :  object
		Q  :  unsigned long long integer
		S  :  string
		U  :  unicode
		V  :  void
		b  :  signed char
		d  :  double precision
		g  :  long precision
		f  :  single precision
		i  :  integer
		h  :  short
		l  :  long integer
		q  :  long long integer
	**/
	static public function typename(char:Dynamic):String;
	/**
		Find the union of two arrays.
		
		Return the unique, sorted array of values that are in either of the two
		input arrays.
		
		Parameters
		----------
		ar1, ar2 : array_like
		    Input arrays. They are flattened if they are not already 1D.
		
		Returns
		-------
		union1d : ndarray
		    Unique, sorted union of the input arrays.
		
		See Also
		--------
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Examples
		--------
		>>> np.union1d([-1, 0, 1], [-2, 0, 2])
		array([-2, -1,  0,  1,  2])
		
		To find the union of more than two arrays, use functools.reduce:
		
		>>> from functools import reduce
		>>> reduce(np.union1d, ([1, 3, 4, 3], [3, 1, 2, 1], [6, 3, 4, 2]))
		array([1, 2, 3, 4, 6])
	**/
	static public function union1d(ar1:Dynamic, ar2:Dynamic):numpy.Ndarray;
	/**
		Find the unique elements of an array.
		
		Returns the sorted unique elements of an array. There are three optional
		outputs in addition to the unique elements:
		
		* the indices of the input array that give the unique values
		* the indices of the unique array that reconstruct the input array
		* the number of times each unique value comes up in the input array
		
		Parameters
		----------
		ar : array_like
		    Input array. Unless `axis` is specified, this will be flattened if it
		    is not already 1-D.
		return_index : bool, optional
		    If True, also return the indices of `ar` (along the specified axis,
		    if provided, or in the flattened array) that result in the unique array.
		return_inverse : bool, optional
		    If True, also return the indices of the unique array (for the specified
		    axis, if provided) that can be used to reconstruct `ar`.
		return_counts : bool, optional
		    If True, also return the number of times each unique item appears
		    in `ar`.
		
		    .. versionadded:: 1.9.0
		
		axis : int or None, optional
		    The axis to operate on. If None, `ar` will be flattened. If an integer,
		    the subarrays indexed by the given axis will be flattened and treated
		    as the elements of a 1-D array with the dimension of the given axis,
		    see the notes for more details.  Object arrays or structured arrays
		    that contain objects are not supported if the `axis` kwarg is used. The
		    default is None.
		
		    .. versionadded:: 1.13.0
		
		Returns
		-------
		unique : ndarray
		    The sorted unique values.
		unique_indices : ndarray, optional
		    The indices of the first occurrences of the unique values in the
		    original array. Only provided if `return_index` is True.
		unique_inverse : ndarray, optional
		    The indices to reconstruct the original array from the
		    unique array. Only provided if `return_inverse` is True.
		unique_counts : ndarray, optional
		    The number of times each of the unique values comes up in the
		    original array. Only provided if `return_counts` is True.
		
		    .. versionadded:: 1.9.0
		
		See Also
		--------
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		repeat : Repeat elements of an array.
		
		Notes
		-----
		When an axis is specified the subarrays indexed by the axis are sorted.
		This is done by making the specified axis the first dimension of the array
		(move the axis to the first dimension to keep the order of the other axes)
		and then flattening the subarrays in C order. The flattened subarrays are
		then viewed as a structured type with each element given a label, with the
		effect that we end up with a 1-D array of structured types that can be
		treated in the same way as any other 1-D array. The result is that the
		flattened subarrays are sorted in lexicographic order starting with the
		first element.
		
		.. versionchanged: NumPy 1.21
		    If nan values are in the input array, a single nan is put
		    to the end of the sorted unique values.
		
		    Also for complex arrays all NaN values are considered equivalent
		    (no matter whether the NaN is in the real or imaginary part).
		    As the representant for the returned array the smallest one in the
		    lexicographical order is chosen - see np.sort for how the lexicographical
		    order is defined for complex arrays.
		
		Examples
		--------
		>>> np.unique([1, 1, 2, 2, 3, 3])
		array([1, 2, 3])
		>>> a = np.array([[1, 1], [2, 3]])
		>>> np.unique(a)
		array([1, 2, 3])
		
		Return the unique rows of a 2D array
		
		>>> a = np.array([[1, 0, 0], [1, 0, 0], [2, 3, 4]])
		>>> np.unique(a, axis=0)
		array([[1, 0, 0], [2, 3, 4]])
		
		Return the indices of the original array that give the unique values:
		
		>>> a = np.array(['a', 'b', 'b', 'c', 'a'])
		>>> u, indices = np.unique(a, return_index=True)
		>>> u
		array(['a', 'b', 'c'], dtype='<U1')
		>>> indices
		array([0, 1, 3])
		>>> a[indices]
		array(['a', 'b', 'c'], dtype='<U1')
		
		Reconstruct the input array from the unique values and inverse:
		
		>>> a = np.array([1, 2, 6, 4, 2, 3, 2])
		>>> u, indices = np.unique(a, return_inverse=True)
		>>> u
		array([1, 2, 3, 4, 6])
		>>> indices
		array([0, 1, 4, 3, 1, 2, 1])
		>>> u[indices]
		array([1, 2, 6, 4, 2, 3, 2])
		
		Reconstruct the input values from the unique values and counts:
		
		>>> a = np.array([1, 2, 6, 4, 2, 3, 2])
		>>> values, counts = np.unique(a, return_counts=True)
		>>> values
		array([1, 2, 3, 4, 6])
		>>> counts
		array([1, 3, 1, 1, 1])
		>>> np.repeat(values, counts)
		array([1, 2, 2, 2, 3, 4, 6])    # original order not preserved
	**/
	static public function unique(ar:Dynamic, ?return_index:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		unpackbits(a, /, axis=None, count=None, bitorder='big')
		
		Unpacks elements of a uint8 array into a binary-valued output array.
		
		Each element of `a` represents a bit-field that should be unpacked
		into a binary-valued output array. The shape of the output array is
		either 1-D (if `axis` is ``None``) or the same shape as the input
		array with unpacking done along the axis specified.
		
		Parameters
		----------
		a : ndarray, uint8 type
		   Input array.
		axis : int, optional
		    The dimension over which bit-unpacking is done.
		    ``None`` implies unpacking the flattened array.
		count : int or None, optional
		    The number of elements to unpack along `axis`, provided as a way
		    of undoing the effect of packing a size that is not a multiple
		    of eight. A non-negative number means to only unpack `count`
		    bits. A negative number means to trim off that many bits from
		    the end. ``None`` means to unpack the entire array (the
		    default). Counts larger than the available number of bits will
		    add zero padding to the output. Negative counts must not
		    exceed the available number of bits.
		
		    .. versionadded:: 1.17.0
		
		bitorder : {'big', 'little'}, optional
		    The order of the returned bits. 'big' will mimic bin(val),
		    ``3 = 0b00000011 => [0, 0, 0, 0, 0, 0, 1, 1]``, 'little' will reverse
		    the order to ``[1, 1, 0, 0, 0, 0, 0, 0]``.
		    Defaults to 'big'.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		unpacked : ndarray, uint8 type
		   The elements are binary-valued (0 or 1).
		
		See Also
		--------
		packbits : Packs the elements of a binary-valued array into bits in
		           a uint8 array.
		
		Examples
		--------
		>>> a = np.array([[2], [7], [23]], dtype=np.uint8)
		>>> a
		array([[ 2],
		       [ 7],
		       [23]], dtype=uint8)
		>>> b = np.unpackbits(a, axis=1)
		>>> b
		array([[0, 0, 0, 0, 0, 0, 1, 0],
		       [0, 0, 0, 0, 0, 1, 1, 1],
		       [0, 0, 0, 1, 0, 1, 1, 1]], dtype=uint8)
		>>> c = np.unpackbits(a, axis=1, count=-3)
		>>> c
		array([[0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0],
		       [0, 0, 0, 1, 0]], dtype=uint8)
		
		>>> p = np.packbits(b, axis=0)
		>>> np.unpackbits(p, axis=0)
		array([[0, 0, 0, 0, 0, 0, 1, 0],
		       [0, 0, 0, 0, 0, 1, 1, 1],
		       [0, 0, 0, 1, 0, 1, 1, 1],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0]], dtype=uint8)
		>>> np.array_equal(b, np.unpackbits(p, axis=0, count=b.shape[0]))
		True
	**/
	static public function unpackbits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unravel_index(indices, shape, order='C')
		
		Converts a flat index or array of flat indices into a tuple
		of coordinate arrays.
		
		Parameters
		----------
		indices : array_like
		    An integer array whose elements are indices into the flattened
		    version of an array of dimensions ``shape``. Before version 1.6.0,
		    this function accepted just one index value.
		shape : tuple of ints
		    The shape of the array to use for unraveling ``indices``.
		
		    .. versionchanged:: 1.16.0
		        Renamed from ``dims`` to ``shape``.
		
		order : {'C', 'F'}, optional
		    Determines whether the indices should be viewed as indexing in
		    row-major (C-style) or column-major (Fortran-style) order.
		
		    .. versionadded:: 1.6.0
		
		Returns
		-------
		unraveled_coords : tuple of ndarray
		    Each array in the tuple has the same shape as the ``indices``
		    array.
		
		See Also
		--------
		ravel_multi_index
		
		Examples
		--------
		>>> np.unravel_index([22, 41, 37], (7,6))
		(array([3, 6, 6]), array([4, 5, 1]))
		>>> np.unravel_index([31, 41, 13], (7,6), order='F')
		(array([3, 6, 6]), array([4, 5, 1]))
		
		>>> np.unravel_index(1621, (6,7,8,9))
		(3, 1, 4, 1)
	**/
	static public function unravel_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Unwrap by taking the complement of large deltas with respect to the period.
		
		This unwraps a signal `p` by changing elements which have an absolute
		difference from their predecessor of more than ``max(discont, period/2)``
		to their `period`-complementary values.
		
		For the default case where `period` is :math:`2\pi` and `discont` is
		:math:`\pi`, this unwraps a radian phase `p` such that adjacent differences
		are never greater than :math:`\pi` by adding :math:`2k\pi` for some
		integer :math:`k`.
		
		Parameters
		----------
		p : array_like
		    Input array.
		discont : float, optional
		    Maximum discontinuity between values, default is ``period/2``.
		    Values below ``period/2`` are treated as if they were ``period/2``.
		    To have an effect different from the default, `discont` should be
		    larger than ``period/2``.
		axis : int, optional
		    Axis along which unwrap will operate, default is the last axis.
		period: float, optional
		    Size of the range over which the input wraps. By default, it is
		    ``2 pi``.
		
		    .. versionadded:: 1.21.0
		
		Returns
		-------
		out : ndarray
		    Output array.
		
		See Also
		--------
		rad2deg, deg2rad
		
		Notes
		-----
		If the discontinuity in `p` is smaller than ``period/2``,
		but larger than `discont`, no unwrapping is done because taking
		the complement would only make the discontinuity larger.
		
		Examples
		--------
		>>> phase = np.linspace(0, np.pi, num=5)
		>>> phase[3:] += np.pi
		>>> phase
		array([ 0.        ,  0.78539816,  1.57079633,  5.49778714,  6.28318531]) # may vary
		>>> np.unwrap(phase)
		array([ 0.        ,  0.78539816,  1.57079633, -0.78539816,  0.        ]) # may vary
		>>> np.unwrap([0, 1, 2, -1, 0], period=4)
		array([0, 1, 2, 3, 4])
		>>> np.unwrap([ 1, 2, 3, 4, 5, 6, 1, 2, 3], period=6)
		array([1, 2, 3, 4, 5, 6, 7, 8, 9])
		>>> np.unwrap([2, 3, 4, 5, 2, 3, 4, 5], period=4)
		array([2, 3, 4, 5, 6, 7, 8, 9])
		>>> phase_deg = np.mod(np.linspace(0 ,720, 19), 360) - 180
		>>> np.unwrap(phase_deg, period=360)
		array([-180., -140., -100.,  -60.,  -20.,   20.,   60.,  100.,  140.,
		        180.,  220.,  260.,  300.,  340.,  380.,  420.,  460.,  500.,
		        540.])
	**/
	static public function unwrap(p:Dynamic, ?discont:Dynamic, ?axis:Dynamic, ?period:Dynamic):numpy.Ndarray;
	/**
		Generate a Vandermonde matrix.
		
		The columns of the output matrix are powers of the input vector. The
		order of the powers is determined by the `increasing` boolean argument.
		Specifically, when `increasing` is False, the `i`-th output column is
		the input vector raised element-wise to the power of ``N - i - 1``. Such
		a matrix with a geometric progression in each row is named for Alexandre-
		Theophile Vandermonde.
		
		Parameters
		----------
		x : array_like
		    1-D input array.
		N : int, optional
		    Number of columns in the output.  If `N` is not specified, a square
		    array is returned (``N = len(x)``).
		increasing : bool, optional
		    Order of the powers of the columns.  If True, the powers increase
		    from left to right, if False (the default) they are reversed.
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		out : ndarray
		    Vandermonde matrix.  If `increasing` is False, the first column is
		    ``x^(N-1)``, the second ``x^(N-2)`` and so forth. If `increasing` is
		    True, the columns are ``x^0, x^1, ..., x^(N-1)``.
		
		See Also
		--------
		polynomial.polynomial.polyvander
		
		Examples
		--------
		>>> x = np.array([1, 2, 3, 5])
		>>> N = 3
		>>> np.vander(x, N)
		array([[ 1,  1,  1],
		       [ 4,  2,  1],
		       [ 9,  3,  1],
		       [25,  5,  1]])
		
		>>> np.column_stack([x**(N-1-i) for i in range(N)])
		array([[ 1,  1,  1],
		       [ 4,  2,  1],
		       [ 9,  3,  1],
		       [25,  5,  1]])
		
		>>> x = np.array([1, 2, 3, 5])
		>>> np.vander(x)
		array([[  1,   1,   1,   1],
		       [  8,   4,   2,   1],
		       [ 27,   9,   3,   1],
		       [125,  25,   5,   1]])
		>>> np.vander(x, increasing=True)
		array([[  1,   1,   1,   1],
		       [  1,   2,   4,   8],
		       [  1,   3,   9,  27],
		       [  1,   5,  25, 125]])
		
		The determinant of a square Vandermonde matrix is the product
		of the differences between the values of the input vector:
		
		>>> np.linalg.det(np.vander(x))
		48.000000000000043 # may vary
		>>> (5-3)*(5-2)*(5-1)*(3-2)*(3-1)*(2-1)
		48
	**/
	static public function vander(x:Dynamic, ?N:Dynamic, ?increasing:Dynamic):numpy.Ndarray;
	/**
		Split an array into multiple sub-arrays vertically (row-wise).
		
		Please refer to the ``split`` documentation.  ``vsplit`` is equivalent
		to ``split`` with `axis=0` (default), the array is always split along the
		first axis regardless of the array dimension.
		
		See Also
		--------
		split : Split an array into multiple sub-arrays of equal size.
		
		Examples
		--------
		>>> x = np.arange(16.0).reshape(4, 4)
		>>> x
		array([[ 0.,   1.,   2.,   3.],
		       [ 4.,   5.,   6.,   7.],
		       [ 8.,   9.,  10.,  11.],
		       [12.,  13.,  14.,  15.]])
		>>> np.vsplit(x, 2)
		[array([[0., 1., 2., 3.],
		       [4., 5., 6., 7.]]), array([[ 8.,  9., 10., 11.],
		       [12., 13., 14., 15.]])]
		>>> np.vsplit(x, np.array([3, 6]))
		[array([[ 0.,  1.,  2.,  3.],
		       [ 4.,  5.,  6.,  7.],
		       [ 8.,  9., 10., 11.]]), array([[12., 13., 14., 15.]]), array([], shape=(0, 4), dtype=float64)]
		
		With a higher dimensional array the split is still along the first axis.
		
		>>> x = np.arange(8.0).reshape(2, 2, 2)
		>>> x
		array([[[0.,  1.],
		        [2.,  3.]],
		       [[4.,  5.],
		        [6.,  7.]]])
		>>> np.vsplit(x, 2)
		[array([[[0., 1.],
		        [2., 3.]]]), array([[[4., 5.],
		        [6., 7.]]])]
	**/
	static public function vsplit(ary:Dynamic, indices_or_sections:Dynamic):Dynamic;
	/**
		Print the NumPy arrays in the given dictionary.
		
		If there is no dictionary passed in or `vardict` is None then returns
		NumPy arrays in the globals() dictionary (all NumPy arrays in the
		namespace).
		
		Parameters
		----------
		vardict : dict, optional
		    A dictionary possibly containing ndarrays.  Default is globals().
		
		Returns
		-------
		out : None
		    Returns 'None'.
		
		Notes
		-----
		Prints out the name, shape, bytes and type of all of the ndarrays
		present in `vardict`.
		
		Examples
		--------
		>>> a = np.arange(10)
		>>> b = np.ones(20)
		>>> np.who()
		Name            Shape            Bytes            Type
		===========================================================
		a               10               80               int64
		b               20               160              float64
		Upper bound on total bytes  =       240
		
		>>> d = {'x': np.arange(2.0), 'y': np.arange(3.0), 'txt': 'Some str',
		... 'idx':5}
		>>> np.who(d)
		Name            Shape            Bytes            Type
		===========================================================
		x               2                16               float64
		y               3                24               float64
		Upper bound on total bytes  =       40
	**/
	static public function who(?vardict:Dynamic):Dynamic;
}