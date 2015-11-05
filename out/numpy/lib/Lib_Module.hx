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
	static public var absolute_import : Dynamic;
	/**
		add_docstring(obj, docstring)
		
		Add a docstring to a built-in obj if possible.
		If the obj already has a docstring raise a RuntimeError
		If this routine does not know how to add a docstring to the object
		raise a TypeError
	**/
	static public function add_docstring(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Adds documentation to obj which is in module place.
		
		If doc is a string add it to obj as a docstring
		
		If doc is a tuple, then the first element is interpreted as
		   an attribute of obj and the second as the docstring
		      (method, docstring)
		
		If doc is a list, then each element of the list should be a
		   sequence of length two --> [(method1, docstring1),
		   (method2, docstring2), ...]
		
		This routine never raises an error.
		
		This routine cannot modify read-only docstrings, as appear
		in new-style classes or built-in functions. Because this
		routine never raises an error the caller must check manually
		that the docstrings were changed.
		   
	**/
	static public function add_newdoc(place:Dynamic, obj:Dynamic, doc:Dynamic):Dynamic;
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
		    The counterclockwise angle from the positive real axis on
		    the complex plane, with dtype as numpy.float64.
		
		See Also
		--------
		arctan2
		absolute
		
		
		
		Examples
		--------
		>>> np.angle([1.0, 1.0j, 1+1j])               # in radians
		array([ 0.        ,  1.57079633,  0.78539816])
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
		array([1, 2, 3, 4, 5, 6, 7, 8, 9])
		
		When `axis` is specified, `values` must have the correct shape.
		
		>>> np.append([[1, 2, 3], [4, 5, 6]], [[7, 8, 9]], axis=0)
		array([[1, 2, 3],
		       [4, 5, 6],
		       [7, 8, 9]])
		>>> np.append([[1, 2, 3], [4, 5, 6]], [7, 8, 9], axis=0)
		Traceback (most recent call last):
		...
		ValueError: arrays must have same number of dimensions
	**/
	static public function append(arr:Dynamic, values:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Apply a function to 1-D slices along the given axis.
		
		Execute `func1d(a, *args)` where `func1d` operates on 1-D arrays and `a`
		is a 1-D slice of `arr` along `axis`.
		
		Parameters
		----------
		func1d : function
		    This function should accept 1-D arrays. It is applied to 1-D
		    slices of `arr` along the specified axis.
		axis : integer
		    Axis along which `arr` is sliced.
		arr : ndarray
		    Input array.
		args : any
		    Additional arguments to `func1d`.
		kwargs: any
		    Additional named arguments to `func1d`.
		
		    .. versionadded:: 1.9.0
		
		
		Returns
		-------
		apply_along_axis : ndarray
		    The output array. The shape of `outarr` is identical to the shape of
		    `arr`, except along the `axis` dimension, where the length of `outarr`
		    is equal to the size of the return value of `func1d`.  If `func1d`
		    returns a scalar `outarr` will have one fewer dimensions than `arr`.
		
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
		array([ 4.,  5.,  6.])
		>>> np.apply_along_axis(my_func, 1, b)
		array([ 2.,  5.,  8.])
		
		For a function that doesn't return a scalar, the number of dimensions in
		`outarr` is the same as `arr`.
		
		>>> b = np.array([[8,1,7], [4,3,9], [5,2,6]])
		>>> np.apply_along_axis(sorted, 1, b)
		array([[1, 7, 8],
		       [3, 4, 9],
		       [2, 5, 6]])
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
		------
		This function is equivalent to tuple axis arguments to reorderable ufuncs
		with keepdims=True. Tuple axis arguments to ufuncs have been availabe since
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
		divide the axis.
		
		See Also
		--------
		split : Split array into multiple sub-arrays of equal size.
		
		Examples
		--------
		>>> x = np.arange(8.0)
		>>> np.array_split(x, 3)
		    [array([ 0.,  1.,  2.]), array([ 3.,  4.,  5.]), array([ 6.,  7.])]
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
		array([ 2.,  3.])
		>>> np.asfarray([2, 3], dtype='float')
		array([ 2.,  3.])
		>>> np.asfarray([2, 3], dtype='int8')
		array([ 2.,  3.])
	**/
	static public function asfarray(a:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	/**
		Convert an array of size 1 to its scalar equivalent.
		
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
		axis : int, optional
		    Axis along which to average `a`. If `None`, averaging is done over
		    the flattened array.
		weights : array_like, optional
		    An array of weights associated with the values in `a`. Each value in
		    `a` contributes to the average according to its associated weight.
		    The weights array can either be 1-D (in which case its length must be
		    the size of `a` along the given axis) or of the same shape as `a`.
		    If `weights=None`, then all data in `a` are assumed to have a
		    weight equal to one.
		returned : bool, optional
		    Default is `False`. If `True`, the tuple (`average`, `sum_of_weights`)
		    is returned, otherwise only the average is returned.
		    If `weights=None`, `sum_of_weights` is equivalent to the number of
		    elements over which the average is taken.
		
		
		Returns
		-------
		average, [sum_of_weights] : array_type or double
		    Return the average along the specified axis. When returned is `True`,
		    return a tuple with the average as the first element and the sum
		    of the weights as the second element. The return type is `Float`
		    if `a` is of integer type, otherwise it is of the same type as `a`.
		    `sum_of_weights` is of the same type as `average`.
		
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
		
		Examples
		--------
		>>> data = range(1,5)
		>>> data
		[1, 2, 3, 4]
		>>> np.average(data)
		2.5
		>>> np.average(range(1,11), weights=range(10,0,-1))
		4.0
		
		>>> data = np.arange(6).reshape((3,2))
		>>> data
		array([[0, 1],
		       [2, 3],
		       [4, 5]])
		>>> np.average(data, axis=1, weights=[1./4, 3./4])
		array([ 0.75,  2.75,  4.75])
		>>> np.average(data, weights=[1./4, 3./4])
		Traceback (most recent call last):
		...
		TypeError: Axis must be specified when shapes of a and weights differ.
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
		       http://en.wikipedia.org/wiki/Window_function
		.. [5] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 429.
		
		
		Examples
		--------
		>>> np.bartlett(12)
		array([ 0.        ,  0.18181818,  0.36363636,  0.54545455,  0.72727273,
		        0.90909091,  0.90909091,  0.72727273,  0.54545455,  0.36363636,
		        0.18181818,  0.        ])
		
		Plot the window and its frequency response (requires SciPy and matplotlib):
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.bartlett(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Bartlett window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Amplitude")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Sample")
		<matplotlib.text.Text object at 0x...>
		>>> plt.show()
		
		>>> plt.figure()
		<matplotlib.figure.Figure object at 0x...>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(mag)
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Bartlett window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Magnitude [dB]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.axis('tight')
		(-0.5, 0.5, -100.0, ...)
		>>> plt.show()
	**/
	static public function bartlett(M:Dynamic):Array<Dynamic>;
	/**
		Run benchmarks for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the benchmarks to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow benchmarks as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for benchmark outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		
		Returns
		-------
		success : bool
		    Returns True if running the benchmarks works, False if an error
		    occurred.
		
		Notes
		-----
		Benchmarks are like tests, but have names starting with "bench" instead
		of "test", and can be found under the "benchmarks" sub-directory of the
		module.
		
		Each NumPy module exposes `bench` in its namespace to run all benchmarks
		for it.
		
		Examples
		--------
		>>> success = np.lib.bench() #doctest: +SKIP
		Running benchmarks for numpy.lib
		...
		using 562341 items:
		unique:
		0.11
		unique1d:
		0.11
		ratio: 1.0
		nUnique: 56230 == 56230
		...
		OK
		
		>>> success #doctest: +SKIP
		True
	**/
	static public function bench(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic):Bool;
	/**
		bincount(x, weights=None, minlength=None)
		
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
		    values, or if `minlength` is non-positive.
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
		
		>>> np.bincount(np.arange(5, dtype=np.float))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		TypeError: array cannot be safely cast to required type
		
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
		>>> np.blackman(12)
		array([ -1.38777878e-17,   3.26064346e-02,   1.59903635e-01,
		         4.14397981e-01,   7.36045180e-01,   9.67046769e-01,
		         9.67046769e-01,   7.36045180e-01,   4.14397981e-01,
		         1.59903635e-01,   3.26064346e-02,  -1.38777878e-17])
		
		
		Plot the window and the frequency response:
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.blackman(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Blackman window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Amplitude")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Sample")
		<matplotlib.text.Text object at 0x...>
		>>> plt.show()
		
		>>> plt.figure()
		<matplotlib.figure.Figure object at 0x...>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(mag)
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Blackman window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Magnitude [dB]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.axis('tight')
		(-0.5, 0.5, -100.0, ...)
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
		    broadcasted array may refer to a single memory location.  If you
		    need to write to the arrays, make copies first.
		
		Examples
		--------
		>>> x = np.array([[1,2,3]])
		>>> y = np.array([[1],[2],[3]])
		>>> np.broadcast_arrays(x, y)
		[array([[1, 2, 3],
		       [1, 2, 3],
		       [1, 2, 3]]), array([[1, 1, 1],
		       [2, 2, 2],
		       [3, 3, 3]])]
		
		Here is a useful idiom for getting contiguous copies instead of
		non-contiguous views.
		
		>>> [np.array(a) for a in np.broadcast_arrays(x, y)]
		[array([[1, 2, 3],
		       [1, 2, 3],
		       [1, 2, 3]]), array([[1, 1, 1],
		       [2, 2, 2],
		       [3, 3, 3]])]
	**/
	static public function broadcast_arrays(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Broadcast an array to a new shape.
		
		Parameters
		----------
		array : array_like
		    The array to broadcast.
		shape : tuple
		    The shape of the desired array.
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
	static public function broadcast_to(array:Dynamic, shape:Dynamic, ?subok:Dynamic):Dynamic;
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
		>>> I = np.eye(2, dtype='G'); I.dtype
		dtype('complex192')
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
		hstack, vstack, concatenate
		
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
		
		All input arrays can be safely cast to the returned dtype without loss
		of information.
		
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
		<type 'numpy.float32'>
		>>> np.common_type(np.arange(2, dtype=np.float32), np.arange(2))
		<type 'numpy.float64'>
		>>> np.common_type(np.arange(4), np.array([45, 6.j]), np.array([45.0]))
		<type 'numpy.complex128'>
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
		    as possible. (Note that this function and :meth:ndarray.copy are very
		    similar, but have different default values for their order=
		    arguments.)
		
		Returns
		-------
		arr : ndarray
		    Array interpretation of `a`.
		
		Notes
		-----
		This is equivalent to
		
		>>> np.array(a, copy=True)                              #doctest: +SKIP
		
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
	**/
	static public function copy(a:Dynamic, ?order:Dynamic):numpy.Ndarray;
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
		rowvar : int, optional
		    If `rowvar` is non-zero (default), then each row represents a
		    variable, with observations in the columns. Otherwise, the relationship
		    is transposed: each column represents a variable, while the rows
		    contain observations.
		bias : _NoValue, optional
		    Has no affect, do not use.
		
		    .. deprecated:: 1.10.0
		ddof : _NoValue, optional
		    Has no affect, do not use.
		
		    .. deprecated:: 1.10.0
		
		Returns
		-------
		R : ndarray
		    The correlation coefficient matrix of the variables.
		
		See Also
		--------
		cov : Covariance matrix
		
		Notes
		-----
		This function accepts but discards arguments `bias` and `ddof`.  This is
		for backwards compatibility with previous versions of this function.  These
		arguments had no effect on the return values of the function and can be
		safely ignored in this and previous versions of numpy.
	**/
	static public function corrcoef(x:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?bias:Dynamic, ?ddof:Dynamic):Dynamic;
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
		rowvar : int, optional
		    If `rowvar` is non-zero (default), then each row represents a
		    variable, with observations in the columns. Otherwise, the relationship
		    is transposed: each column represents a variable, while the rows
		    contain observations.
		bias : int, optional
		    Default normalization is by ``(N - 1)``, where ``N`` corresponds to the
		    number of observations given (unbiased estimate). If `bias` is 1, then
		    normalization is by ``N``. These values can be overridden by using the
		    keyword ``ddof`` in numpy versions >= 1.5.
		ddof : int, optional
		    If not ``None`` the default value implied by `bias` is overridden.
		    Note that ``ddof=1`` will return the unbiased estimate, even if both
		    `fweights` and `aweights` are specified, and ``ddof=0`` will return
		    the simple average. See the notes for the details. The default value
		    is ``None``.
		
		    .. versionadded:: 1.5
		fweights : array_like, int, optional
		    1-D array of integer freguency weights; the number of times each
		    observation vector should be repeated.
		
		    .. versionadded:: 1.10
		aweights : array_like, optional
		    1-D array of observation vector weights. These relative weights are
		    typically large for observations considered "important" and smaller for
		    observations considered less "important". If ``ddof=0`` the array of
		    weights can be used to assign probabilities to observation vectors.
		
		    .. versionadded:: 1.10
		
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
		
		    >>> w = f * a
		    >>> v1 = np.sum(w)
		    >>> v2 = np.sum(w * a)
		    >>> m -= np.sum(m * w, axis=1, keepdims=True) / v1
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
		>>> X = np.vstack((x,y))
		>>> print np.cov(X)
		[[ 11.71        -4.286     ]
		 [ -4.286        2.14413333]]
		>>> print np.cov(x, y)
		[[ 11.71        -4.286     ]
		 [ -4.286        2.14413333]]
		>>> print np.cov(x)
		11.71
	**/
	static public function cov(m:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?bias:Dynamic, ?ddof:Dynamic, ?fweights:Dynamic, ?aweights:Dynamic):Dynamic;
	/**
		Return a new array with sub-arrays along an axis deleted. For a one
		dimensional array, this returns those entries not returned by
		`arr[obj]`.
		
		Parameters
		----------
		arr : array_like
		  Input array.
		obj : slice, int or array of ints
		  Indicate which sub-arrays to remove.
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
		>>> olduint(6)
		/usr/lib/python2.5/site-packages/numpy/lib/utils.py:114:
		DeprecationWarning: uint32 is deprecated
		  warnings.warn(str1, DeprecationWarning)
		6
	**/
	static public function deprecate(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
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
		
		See also
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
		
		>>> a = np.zeros((2, 2, 2), dtype=np.int)
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
		Calculate the n-th order discrete difference along given axis.
		
		The first order difference is given by ``out[n] = a[n+1] - a[n]`` along
		the given axis, higher order differences are calculated by using `diff`
		recursively.
		
		Parameters
		----------
		a : array_like
		    Input array
		n : int, optional
		    The number of times values are differenced.
		axis : int, optional
		    The axis along which the difference is taken, default is the last axis.
		
		Returns
		-------
		diff : ndarray
		    The `n` order differences. The shape of the output is the same as `a`
		    except along `axis` where the dimension is smaller by `n`.
		
		See Also
		--------
		gradient, ediff1d, cumsum
		
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
	**/
	static public function diff(a:Dynamic, ?n:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		digitize(x, bins, right=False)
		
		Return the indices of the bins to which each value in input array belongs.
		
		Each index ``i`` returned is such that ``bins[i-1] <= x < bins[i]`` if
		`bins` is monotonically increasing, or ``bins[i-1] > x >= bins[i]`` if
		`bins` is monotonically decreasing. If values in `x` are beyond the
		bounds of `bins`, 0 or ``len(bins)`` is returned as appropriate. If right
		is True, then the right bin is closed so that the index ``i`` is such
		that ``bins[i-1] < x <= bins[i]`` or bins[i-1] >= x > bins[i]`` if `bins`
		is monotonically increasing or decreasing, respectively.
		
		Parameters
		----------
		x : array_like
		    Input array to be binned. Prior to Numpy 1.10.0, this array had to
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
		out : ndarray of ints
		    Output array of indices, of same shape as `x`.
		
		Raises
		------
		ValueError
		    If `bins` is not monotonic.
		TypeError
		    If the type of the input is complex.
		
		See Also
		--------
		bincount, histogram, unique
		
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
		
		Examples
		--------
		>>> x = np.array([0.2, 6.4, 3.0, 1.6])
		>>> bins = np.array([0.0, 1.0, 2.5, 4.0, 10.0])
		>>> inds = np.digitize(x, bins)
		>>> inds
		array([1, 4, 3, 2])
		>>> for n in range(x.size):
		...   print bins[inds[n]-1], "<=", x[n], "<", bins[inds[n]]
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
	static public function digitize(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		>>> from StringIO import StringIO
		>>> buf = StringIO()
		>>> np.disp('"Display" in a file', device=buf)
		>>> buf.getvalue()
		'"Display" in a file\n'
	**/
	static public function disp(mesg:Dynamic, ?device:Dynamic, ?linefeed:Dynamic):Dynamic;
	static public var division : Dynamic;
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
		array([[[  0.,   1.,   2.,   3.],
		        [  4.,   5.,   6.,   7.]],
		       [[  8.,   9.,  10.,  11.],
		        [ 12.,  13.,  14.,  15.]]])
		>>> np.dsplit(x, 2)
		[array([[[  0.,   1.],
		        [  4.,   5.]],
		       [[  8.,   9.],
		        [ 12.,  13.]]]),
		 array([[[  2.,   3.],
		        [  6.,   7.]],
		       [[ 10.,  11.],
		        [ 14.,  15.]]])]
		>>> np.dsplit(x, np.array([3, 6]))
		[array([[[  0.,   1.,   2.],
		        [  4.,   5.,   6.]],
		       [[  8.,   9.,  10.],
		        [ 12.,  13.,  14.]]]),
		 array([[[  3.],
		        [  7.]],
		       [[ 11.],
		        [ 15.]]]),
		 array([], dtype=float64)]
	**/
	static public function dsplit(ary:Dynamic, indices_or_sections:Dynamic):Dynamic;
	/**
		Stack arrays in sequence depth wise (along third axis).
		
		Takes a sequence of arrays and stack them along the third axis
		to make a single array. Rebuilds arrays divided by `dsplit`.
		This is a simple way to stack 2D arrays (images) into a single
		3D array for processing.
		
		Parameters
		----------
		tup : sequence of arrays
		    Arrays to stack. All of them must have the same shape along all
		    but the third axis.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays.
		
		See Also
		--------
		stack : Join a sequence of arrays along a new axis.
		vstack : Stack along first axis.
		hstack : Stack along second axis.
		concatenate : Join a sequence of arrays along an existing axis.
		dsplit : Split array along third axis.
		
		Notes
		-----
		Equivalent to ``np.concatenate(tup, axis=2)``.
		
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
		array([-99,   1,   2,   3,  -7,  88,  99])
		
		The returned array is always 1D.
		
		>>> y = [[1, 2, 4], [1, 6, 24]]
		>>> np.ediff1d(y)
		array([ 1,  2, -3,  5, 18])
	**/
	static public function ediff1d(ary:Dynamic, ?to_end:Dynamic, ?to_begin:Dynamic):numpy.Ndarray;
	/**
		Expand the shape of an array.
		
		Insert a new axis, corresponding to a given position in the array shape.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int
		    Position (amongst axes) where new axis is to be inserted.
		
		Returns
		-------
		res : ndarray
		    Output array. The number of dimensions is one greater than that of
		    the input array.
		
		See Also
		--------
		doc.indexing, atleast_1d, atleast_2d, atleast_3d
		
		Examples
		--------
		>>> x = np.array([1,2])
		>>> x.shape
		(2,)
		
		The following is equivalent to ``x[np.newaxis,:]`` or ``x[np.newaxis]``:
		
		>>> y = np.expand_dims(x, axis=0)
		>>> y
		array([[1, 2]])
		>>> y.shape
		(1, 2)
		
		>>> y = np.expand_dims(x, axis=1)  # Equivalent to x[:,newaxis]
		>>> y
		array([[1],
		       [2]])
		>>> y.shape
		(2, 1)
		
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
		       [False,  True, False, False]], dtype=bool)
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
		array([[ 0.,  1.,  0.],
		       [ 0.,  0.,  1.],
		       [ 0.,  0.,  0.]])
	**/
	static public function eye(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Fill the main diagonal of the given array of any dimensionality.
		
		For an array `a` with ``a.ndim > 2``, the diagonal is the list of
		locations with indices ``a[i, i, ..., i]`` all identical. This function
		modifies the input array in-place, it does not return a value.
		
		Parameters
		----------
		a : array, at least 2-D.
		  Array whose diagonal is to be filled, it gets modified in-place.
		
		val : scalar
		  Value to be written on the diagonal, its type must be compatible with
		  that of the array a.
		
		wrap : bool
		  For tall matrices in NumPy version up to 1.6.2, the
		  diagonal "wrapped" after N columns. You can have this behavior
		  with this option. This affect only tall matrices.
		
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
		>>> a = np.zeros((5, 3),int)
		>>> fill_diagonal(a, 4)
		>>> a
		array([[4, 0, 0],
		       [0, 4, 0],
		       [0, 0, 4],
		       [0, 0, 0],
		       [0, 0, 0]])
		
		>>> # tall matrices wrap
		>>> a = np.zeros((5, 3),int)
		>>> fill_diagonal(a, 4, wrap=True)
		>>> a
		array([[4, 0, 0],
		       [0, 4, 0],
		       [0, 0, 4],
		       [0, 0, 0],
		       [4, 0, 0]])
		
		>>> # wide matrices
		>>> a = np.zeros((3, 5),int)
		>>> fill_diagonal(a, 4, wrap=True)
		>>> a
		array([[4, 0, 0, 0, 0],
		       [0, 4, 0, 0, 0],
		       [0, 0, 4, 0, 0]])
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
		y : ndarray, optional
		    Output array
		
		Returns
		-------
		out : ndarray of floats
		    The array of rounded numbers
		
		See Also
		--------
		trunc, floor, ceil
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
	static public function fix(x:Dynamic, ?y:Dynamic):Dynamic;
	/**
		Flip array in the left/right direction.
		
		Flip the entries in each row in the left/right direction.
		Columns are preserved, but appear in a different order than before.
		
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
		rot90 : Rotate array counterclockwise.
		
		Notes
		-----
		Equivalent to A[:,::-1]. Requires the array to be at least 2-D.
		
		Examples
		--------
		>>> A = np.diag([1.,2.,3.])
		>>> A
		array([[ 1.,  0.,  0.],
		       [ 0.,  2.,  0.],
		       [ 0.,  0.,  3.]])
		>>> np.fliplr(A)
		array([[ 0.,  0.,  1.],
		       [ 0.,  2.,  0.],
		       [ 3.,  0.,  0.]])
		
		>>> A = np.random.randn(2,3,5)
		>>> np.all(np.fliplr(A)==A[:,::-1,...])
		True
	**/
	static public function fliplr(m:Dynamic):numpy.Ndarray;
	/**
		Flip array in the up/down direction.
		
		Flip the entries in each column in the up/down direction.
		Rows are preserved, but appear in a different order than before.
		
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
		rot90 : Rotate array counterclockwise.
		
		Notes
		-----
		Equivalent to ``A[::-1,...]``.
		Does not require the array to be two-dimensional.
		
		Examples
		--------
		>>> A = np.diag([1.0, 2, 3])
		>>> A
		array([[ 1.,  0.,  0.],
		       [ 0.,  2.,  0.],
		       [ 0.,  0.,  3.]])
		>>> np.flipud(A)
		array([[ 0.,  0.,  3.],
		       [ 0.,  2.,  0.],
		       [ 1.,  0.,  0.]])
		
		>>> A = np.random.randn(2,3,5)
		>>> np.all(np.flipud(A)==A[::-1,...])
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
		file : str or file
		    File name or file object to read.
		regexp : str or regexp
		    Regular expression used to parse the file.
		    Groups in the regular expression correspond to fields in the dtype.
		dtype : dtype or list of dtypes
		    Dtype for the structured array.
		
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
		`doc.structured_arrays`.
		
		Examples
		--------
		>>> f = open('test.dat', 'w')
		>>> f.write("1312 foo\n1534  bar\n444   qux")
		>>> f.close()
		
		>>> regexp = r"(\d+)\s+(...)"  # match [digits, whitespace, anything]
		>>> output = np.fromregex('test.dat', regexp,
		...                       [('num', np.int64), ('key', 'S3')])
		>>> output
		array([(1312L, 'foo'), (1534L, 'bar'), (444L, 'qux')],
		      dtype=[('num', '<i8'), ('key', '|S3')])
		>>> output['num']
		array([1312, 1534,  444], dtype=int64)
	**/
	static public function fromregex(file:Dynamic, regexp:Dynamic, dtype:Dynamic):numpy.Ndarray;
	/**
		Compute the future value.
		
		Given:
		 * a present value, `pv`
		 * an interest `rate` compounded once per period, of which
		   there are
		 * `nper` total
		 * a (fixed) payment, `pmt`, paid either
		 * at the beginning (`when` = {'begin', 1}) or the end
		   (`when` = {'end', 0}) of each period
		
		Return:
		   the value at the end of the `nper` periods
		
		Parameters
		----------
		rate : scalar or array_like of shape(M, )
		    Rate of interest as decimal (not per cent) per period
		nper : scalar or array_like of shape(M, )
		    Number of compounding periods
		pmt : scalar or array_like of shape(M, )
		    Payment
		pv : scalar or array_like of shape(M, )
		    Present value
		when : {{'begin', 1}, {'end', 0}}, {string, int}, optional
		    When payments are due ('begin' (1) or 'end' (0)).
		    Defaults to {'end', 0}.
		
		Returns
		-------
		out : ndarray
		    Future values.  If all input is scalar, returns a scalar float.  If
		    any input is array_like, returns future values for each input element.
		    If multiple inputs are array_like, they all must have the same shape.
		
		Notes
		-----
		The future value is computed by solving the equation::
		
		 fv +
		 pv*(1+rate)**nper +
		 pmt*(1 + rate*when)/rate*((1 + rate)**nper - 1) == 0
		
		or, when ``rate == 0``::
		
		 fv + pv + pmt * nper == 0
		
		References
		----------
		.. [WRW] Wheeler, D. A., E. Rathke, and R. Weir (Eds.) (2009, May).
		   Open Document Format for Office Applications (OpenDocument)v1.2,
		   Part 2: Recalculated Formula (OpenFormula) Format - Annotated Version,
		   Pre-Draft 12. Organization for the Advancement of Structured Information
		   Standards (OASIS). Billerica, MA, USA. [ODT Document].
		   Available:
		   http://www.oasis-open.org/committees/documents.php?wg_abbrev=office-formula
		   OpenDocument-formula-20090508.odt
		
		Examples
		--------
		What is the future value after 10 years of saving $100 now, with
		an additional monthly savings of $100.  Assume the interest rate is
		5% (annually) compounded monthly?
		
		>>> np.fv(0.05/12, 10*12, -100, -100)
		15692.928894335748
		
		By convention, the negative sign represents cash flow out (i.e. money not
		available today).  Thus, saving $100 a month at 5% annual interest leads
		to $15,692.93 available to spend in 10 years.
		
		If any input is array_like, returns an array of equal shape.  Let's
		compare different interest rates from the example above.
		
		>>> a = np.array((0.05, 0.06, 0.07))/12
		>>> np.fv(a, 10*12, -100, -100)
		array([ 15692.92889434,  16569.87435405,  17509.44688102])
	**/
	static public function fv(rate:Dynamic, nper:Dynamic, pmt:Dynamic, pv:Dynamic, ?when:Dynamic):numpy.Ndarray;
	/**
		Load data from a text file, with missing values handled as specified.
		
		Each line past the first `skip_header` lines is split at the `delimiter`
		character, and characters following the `comments` character are discarded.
		
		Parameters
		----------
		fname : file or str
		    File, filename, or generator to read.  If the filename extension is
		    `.gz` or `.bz2`, the file is first decompressed. Note that
		    generators must return byte strings in Python 3k.
		dtype : dtype, optional
		    Data type of the resulting array.
		    If None, the dtypes will be determined by the contents of each
		    column, individually.
		comments : str, optional
		    The character used to indicate the start of a comment.
		    All the characters occurring on a line after a comment are discarded
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
		    If `names` is True, the field names are read from the first valid line
		    after the first `skip_header` lines.
		    If `names` is a sequence or a single-string of comma-separated names,
		    the names will be used to define the field names in a structured dtype.
		    If `names` is None, the names of the dtype fields will be used, if any.
		excludelist : sequence, optional
		    A list of names to exclude. This list is appended to the default list
		    ['return','file','print']. Excluded names are appended an underscore:
		    for example, `file` would become `file_`.
		deletechars : str, optional
		    A string combining invalid characters that must be deleted from the
		    names.
		defaultfmt : str, optional
		    A format used to define default field names, such as "f%i" or "f_%02i".
		autostrip : bool, optional
		    Whether to automatically strip white spaces from the variables.
		replace_space : char, optional
		    Character(s) used in replacement of white spaces in the variables
		    names. By default, use a '_'.
		case_sensitive : {True, False, 'upper', 'lower'}, optional
		    If True, field names are case sensitive.
		    If False or 'upper', field names are converted to upper case.
		    If 'lower', field names are converted to lower case.
		unpack : bool, optional
		    If True, the returned array is transposed, so that arguments may be
		    unpacked using ``x, y, z = loadtxt(...)``
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
		* When the variables are named (either by a flexible dtype or with `names`,
		  there must not be any header in the file (else a ValueError
		  exception is raised).
		* Individual values are not stripped of spaces by default.
		  When using a custom converter, make sure the function does remove spaces.
		
		References
		----------
		.. [1] Numpy User Guide, section `I/O with Numpy
		       <http://docs.scipy.org/doc/numpy/user/basics.io.genfromtxt.html>`_.
		
		Examples
		---------
		>>> from io import StringIO
		>>> import numpy as np
		
		Comma delimited file with mixed dtype
		
		>>> s = StringIO("1,1.3,abcde")
		>>> data = np.genfromtxt(s, dtype=[('myint','i8'),('myfloat','f8'),
		... ('mystring','S5')], delimiter=",")
		>>> data
		array((1, 1.3, 'abcde'),
		      dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', '|S5')])
		
		Using dtype = None
		
		>>> s.seek(0) # needed for StringIO example only
		>>> data = np.genfromtxt(s, dtype=None,
		... names = ['myint','myfloat','mystring'], delimiter=",")
		>>> data
		array((1, 1.3, 'abcde'),
		      dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', '|S5')])
		
		Specifying dtype and names
		
		>>> s.seek(0)
		>>> data = np.genfromtxt(s, dtype="i8,f8,S5",
		... names=['myint','myfloat','mystring'], delimiter=",")
		>>> data
		array((1, 1.3, 'abcde'),
		      dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', '|S5')])
		
		An example with fixed-width columns
		
		>>> s = StringIO("11.3abcde")
		>>> data = np.genfromtxt(s, dtype=None, names=['intvar','fltvar','strvar'],
		...     delimiter=[1,3,5])
		>>> data
		array((1, 1.3, 'abcde'),
		      dtype=[('intvar', '<i8'), ('fltvar', '<f8'), ('strvar', '|S5')])
	**/
	static public function genfromtxt(fname:Dynamic, ?dtype:Dynamic, ?comments:Dynamic, ?delimiter:Dynamic, ?skip_header:Dynamic, ?skip_footer:Dynamic, ?converters:Dynamic, ?missing_values:Dynamic, ?filling_values:Dynamic, ?usecols:Dynamic, ?names:Dynamic, ?excludelist:Dynamic, ?deletechars:Dynamic, ?replace_space:Dynamic, ?autostrip:Dynamic, ?case_sensitive:Dynamic, ?defaultfmt:Dynamic, ?unpack:Dynamic, ?usemask:Dynamic, ?loose:Dynamic, ?invalid_raise:Dynamic, ?max_rows:Dynamic):Dynamic;
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
		in the interior and either first differences or second order accurate
		one-sides (forward or backwards) differences at the boundaries. The
		returned gradient hence has the same shape as the input array.
		
		Parameters
		----------
		f : array_like
		    An N-dimensional array containing samples of a scalar function.
		varargs : list of scalar, optional
		    N scalars specifying the sample distances for each dimension,
		    i.e. `dx`, `dy`, `dz`, ... Default distance: 1.
		edge_order : {1, 2}, optional
		    Gradient is calculated using N\ :sup:`th` order accurate differences
		    at the boundaries. Default: 1.
		
		    .. versionadded:: 1.9.1
		
		Returns
		-------
		gradient : list of ndarray
		    Each element of `list` has the same shape as `f` giving the derivative 
		    of `f` with respect to each dimension.
		
		Examples
		--------
		>>> x = np.array([1, 2, 4, 7, 11, 16], dtype=np.float)
		>>> np.gradient(x)
		array([ 1. ,  1.5,  2.5,  3.5,  4.5,  5. ])
		>>> np.gradient(x, 2)
		array([ 0.5 ,  0.75,  1.25,  1.75,  2.25,  2.5 ])
		
		For two dimensional arrays, the return will be two arrays ordered by 
		axis. In this example the first array stands for the gradient in 
		rows and the second one in columns direction:
		
		>>> np.gradient(np.array([[1, 2, 6], [3, 4, 5]], dtype=np.float))
		[array([[ 2.,  2., -1.],
		        [ 2.,  2., -1.]]), array([[ 1. ,  2.5,  4. ],
		        [ 1. ,  1. ,  1. ]])]
		
		>>> x = np.array([0, 1, 2, 3, 4])
		>>> dx = np.gradient(x)
		>>> y = x**2
		>>> np.gradient(y, dx, edge_order=2)
		array([-0.,  2.,  4.,  6.,  8.])
	**/
	static public function gradient(f:Dynamic, ?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		       http://en.wikipedia.org/wiki/Window_function
		.. [4] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 425.
		
		Examples
		--------
		>>> np.hamming(12)
		array([ 0.08      ,  0.15302337,  0.34890909,  0.60546483,  0.84123594,
		        0.98136677,  0.98136677,  0.84123594,  0.60546483,  0.34890909,
		        0.15302337,  0.08      ])
		
		Plot the window and the frequency response:
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.hamming(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Hamming window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Amplitude")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Sample")
		<matplotlib.text.Text object at 0x...>
		>>> plt.show()
		
		>>> plt.figure()
		<matplotlib.figure.Figure object at 0x...>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(mag)
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Hamming window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Magnitude [dB]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.axis('tight')
		(-0.5, 0.5, -100.0, ...)
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
		       http://en.wikipedia.org/wiki/Window_function
		.. [4] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
		       "Numerical Recipes", Cambridge University Press, 1986, page 425.
		
		Examples
		--------
		>>> np.hanning(12)
		array([ 0.        ,  0.07937323,  0.29229249,  0.57115742,  0.82743037,
		        0.97974649,  0.97974649,  0.82743037,  0.57115742,  0.29229249,
		        0.07937323,  0.        ])
		
		Plot the window and its frequency response:
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.hanning(51)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Hann window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Amplitude")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Sample")
		<matplotlib.text.Text object at 0x...>
		>>> plt.show()
		
		>>> plt.figure()
		<matplotlib.figure.Figure object at 0x...>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(mag)
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of the Hann window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Magnitude [dB]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.axis('tight')
		(-0.5, 0.5, -100.0, ...)
		>>> plt.show()
	**/
	static public function hanning(M:Dynamic):Dynamic;
	/**
		Compute the histogram of a set of data.
		
		Parameters
		----------
		a : array_like
		    Input data. The histogram is computed over the flattened array.
		bins : int or sequence of scalars, optional
		    If `bins` is an int, it defines the number of equal-width
		    bins in the given range (10, by default). If `bins` is a sequence,
		    it defines the bin edges, including the rightmost edge, allowing
		    for non-uniform bin widths.
		range : (float, float), optional
		    The lower and upper range of the bins.  If not provided, range
		    is simply ``(a.min(), a.max())``.  Values outside the range are
		    ignored.
		normed : bool, optional
		    This keyword is deprecated in Numpy 1.6 due to confusing/buggy
		    behavior. It will be removed in Numpy 2.0. Use the density keyword
		    instead.
		    If False, the result will contain the number of samples
		    in each bin.  If True, the result is the value of the
		    probability *density* function at the bin, normalized such that
		    the *integral* over the range is 1. Note that this latter behavior is
		    known to be buggy with unequal bin widths; use `density` instead.
		weights : array_like, optional
		    An array of weights, of the same shape as `a`.  Each value in `a`
		    only contributes its associated weight towards the bin count
		    (instead of 1).  If `normed` is True, the weights are normalized,
		    so that the integral of the density over the range remains 1
		density : bool, optional
		    If False, the result will contain the number of samples
		    in each bin.  If True, the result is the value of the
		    probability *density* function at the bin, normalized such that
		    the *integral* over the range is 1. Note that the sum of the
		    histogram values will not be equal to 1 unless bins of unity
		    width are chosen; it is not a probability *mass* function.
		    Overrides the `normed` keyword if given.
		
		Returns
		-------
		hist : array
		    The values of the histogram. See `normed` and `weights` for a
		    description of the possible semantics.
		bin_edges : array of dtype float
		    Return the bin edges ``(length(hist)+1)``.
		
		
		See Also
		--------
		histogramdd, bincount, searchsorted, digitize
		
		Notes
		-----
		All but the last (righthand-most) bin is half-open.  In other words, if
		`bins` is::
		
		  [1, 2, 3, 4]
		
		then the first bin is ``[1, 2)`` (including 1, but excluding 2) and the
		second ``[2, 3)``.  The last bin, however, is ``[3, 4]``, which *includes*
		4.
		
		Examples
		--------
		>>> np.histogram([1, 2, 1], bins=[0, 1, 2, 3])
		(array([0, 2, 1]), array([0, 1, 2, 3]))
		>>> np.histogram(np.arange(4), bins=np.arange(5), density=True)
		(array([ 0.25,  0.25,  0.25,  0.25]), array([0, 1, 2, 3, 4]))
		>>> np.histogram([[1, 2, 1], [1, 0, 1]], bins=[0,1,2,3])
		(array([1, 4, 1]), array([0, 1, 2, 3]))
		
		>>> a = np.arange(5)
		>>> hist, bin_edges = np.histogram(a, density=True)
		>>> hist
		array([ 0.5,  0. ,  0.5,  0. ,  0. ,  0.5,  0. ,  0.5,  0. ,  0.5])
		>>> hist.sum()
		2.4999999999999996
		>>> np.sum(hist*np.diff(bin_edges))
		1.0
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
		normed : bool, optional
		    If False, returns the number of samples in each bin. If True,
		    returns the bin density ``bin_count / sample_count / bin_area``.
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
		xedges : ndarray, shape(nx,)
		    The bin edges along the first dimension.
		yedges : ndarray, shape(ny,)
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
		>>> import matplotlib as mpl
		>>> import matplotlib.pyplot as plt
		
		Construct a 2D-histogram with variable bin width. First define the bin
		edges:
		
		>>> xedges = [0, 1, 1.5, 3, 5]
		>>> yedges = [0, 2, 3, 4, 6]
		
		Next we create a histogram H with random bin content:
		
		>>> x = np.random.normal(3, 1, 100)
		>>> y = np.random.normal(1, 1, 100)
		>>> H, xedges, yedges = np.histogram2d(y, x, bins=(xedges, yedges))
		
		Or we fill the histogram H with a determined bin content:
		
		>>> H = np.ones((4, 4)).cumsum().reshape(4, 4)
		>>> print H[::-1]  # This shows the bin content in the order as plotted
		[[ 13.  14.  15.  16.]
		 [  9.  10.  11.  12.]
		 [  5.   6.   7.   8.]
		 [  1.   2.   3.   4.]]
		
		Imshow can only do an equidistant representation of bins:
		
		>>> fig = plt.figure(figsize=(7, 3))
		>>> ax = fig.add_subplot(131)
		>>> ax.set_title('imshow: equidistant')
		>>> im = plt.imshow(H, interpolation='nearest', origin='low',
		                extent=[xedges[0], xedges[-1], yedges[0], yedges[-1]])
		
		pcolormesh can display exact bin edges:
		
		>>> ax = fig.add_subplot(132)
		>>> ax.set_title('pcolormesh: exact bin edges')
		>>> X, Y = np.meshgrid(xedges, yedges)
		>>> ax.pcolormesh(X, Y, H)
		>>> ax.set_aspect('equal')
		
		NonUniformImage displays exact bin edges with interpolation:
		
		>>> ax = fig.add_subplot(133)
		>>> ax.set_title('NonUniformImage: interpolated')
		>>> im = mpl.image.NonUniformImage(ax, interpolation='bilinear')
		>>> xcenters = xedges[:-1] + 0.5 * (xedges[1:] - xedges[:-1])
		>>> ycenters = yedges[:-1] + 0.5 * (yedges[1:] - yedges[:-1])
		>>> im.set_data(xcenters, ycenters, H)
		>>> ax.images.append(im)
		>>> ax.set_xlim(xedges[0], xedges[-1])
		>>> ax.set_ylim(yedges[0], yedges[-1])
		>>> ax.set_aspect('equal')
		>>> plt.show()
	**/
	static public function histogram2d(x:Dynamic, y:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Compute the multidimensional histogram of some data.
		
		Parameters
		----------
		sample : array_like
		    The data to be histogrammed. It must be an (N,D) array or data
		    that can be converted to such. The rows of the resulting array
		    are the coordinates of points in a D dimensional polytope.
		bins : sequence or int, optional
		    The bin specification:
		
		    * A sequence of arrays describing the bin edges along each dimension.
		    * The number of bins for each dimension (nx, ny, ... =bins)
		    * The number of bins for all dimensions (nx=ny=...=bins).
		
		range : sequence, optional
		    A sequence of lower and upper bin edges to be used if the edges are
		    not given explicitly in `bins`. Defaults to the minimum and maximum
		    values along each dimension.
		normed : bool, optional
		    If False, returns the number of samples in each bin. If True,
		    returns the bin density ``bin_count / sample_count / bin_volume``.
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
	static public function histogramdd(sample:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic):numpy.Ndarray;
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
		array([[  0.,   1.,   2.,   3.],
		       [  4.,   5.,   6.,   7.],
		       [  8.,   9.,  10.,  11.],
		       [ 12.,  13.,  14.,  15.]])
		>>> np.hsplit(x, 2)
		[array([[  0.,   1.],
		       [  4.,   5.],
		       [  8.,   9.],
		       [ 12.,  13.]]),
		 array([[  2.,   3.],
		       [  6.,   7.],
		       [ 10.,  11.],
		       [ 14.,  15.]])]
		>>> np.hsplit(x, np.array([3, 6]))
		[array([[  0.,   1.,   2.],
		       [  4.,   5.,   6.],
		       [  8.,   9.,  10.],
		       [ 12.,  13.,  14.]]),
		 array([[  3.],
		       [  7.],
		       [ 11.],
		       [ 15.]]),
		 array([], dtype=float64)]
		
		With a higher dimensional array the split is still along the second axis.
		
		>>> x = np.arange(8.0).reshape(2, 2, 2)
		>>> x
		array([[[ 0.,  1.],
		        [ 2.,  3.]],
		       [[ 4.,  5.],
		        [ 6.,  7.]]])
		>>> np.hsplit(x, 2)
		[array([[[ 0.,  1.]],
		       [[ 4.,  5.]]]),
		 array([[[ 2.,  3.]],
		       [[ 6.,  7.]]])]
	**/
	static public function hsplit(ary:Dynamic, indices_or_sections:Dynamic):Dynamic;
	/**
		Modified Bessel function of the first kind, order 0.
		
		Usually denoted :math:`I_0`.  This function does broadcast, but will *not*
		"up-cast" int dtype arguments unless accompanied by at least one float or
		complex dtype argument (see Raises below).
		
		Parameters
		----------
		x : array_like, dtype float or complex
		    Argument of the Bessel function.
		
		Returns
		-------
		out : ndarray, shape = x.shape, dtype = x.dtype
		    The modified Bessel function evaluated at each of the elements of `x`.
		
		Raises
		------
		TypeError: array cannot be safely cast to required type
		    If argument consists exclusively of int dtypes.
		
		See Also
		--------
		scipy.special.iv, scipy.special.ive
		
		Notes
		-----
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
		       http://www.math.sfu.ca/~cbm/aands/page_379.htm
		.. [3] http://kobesearch.cpan.org/htdocs/Math-Cephes/Math/Cephes.html
		
		Examples
		--------
		>>> np.i0([0.])
		array(1.0)
		>>> np.i0([0., 1. + 2j])
		array([ 1.00000000+0.j        ,  0.18785373+0.64616944j])
	**/
	static public function i0(x:Dynamic):Dynamic;
	/**
		Return the imaginary part of the elements of the array.
		
		Parameters
		----------
		val : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray
		    Output array. If `val` is real, the type of `val` is used for the
		    output.  If `val` has complex elements, the returned type is float.
		
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
	**/
	static public function imag(val:Dynamic):numpy.Ndarray;
	/**
		Test whether each element of a 1-D array is also present in a second array.
		
		Returns a boolean array the same length as `ar1` that is True
		where an element of `ar1` is in `ar2` and False otherwise.
		
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
		array([ True, False,  True, False,  True], dtype=bool)
		>>> test[mask]
		array([0, 2, 0])
		>>> mask = np.in1d(test, states, invert=True)
		>>> mask
		array([False,  True, False,  True, False], dtype=bool)
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
		array([1, 5, 1, 2, 2, 3, 3])
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
		array([1, 1, 5, 6, 2, 2, 3, 3])
		
		>>> np.insert(b, slice(2, 4), [5, 6])
		array([1, 1, 5, 2, 6, 2, 3, 3])
		
		>>> np.insert(b, [2, 2], [7.13, False]) # type casting
		array([1, 1, 7, 0, 2, 2, 3, 3])
		
		>>> x = np.arange(8).reshape(2, 4)
		>>> idx = (1, 3)
		>>> np.insert(x, idx, 999, axis=1)
		array([[  0, 999,   1,   2, 999,   3],
		       [  4, 999,   5,   6, 999,   7]])
	**/
	static public function insert(arr:Dynamic, obj:Dynamic, values:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		One-dimensional linear interpolation.
		
		Returns the one-dimensional piecewise linear interpolant to a function
		with given values at discrete data-points.
		
		Parameters
		----------
		x : array_like
		    The x-coordinates of the interpolated values.
		
		xp : 1-D sequence of floats
		    The x-coordinates of the data points, must be increasing if argument
		    `period` is not specified. Otherwise, `xp` is internally sorted after
		    normalizing the periodic boundaries with ``xp = xp % period``.
		
		fp : 1-D sequence of floats
		    The y-coordinates of the data points, same length as `xp`.
		
		left : float, optional
		    Value to return for `x < xp[0]`, default is `fp[0]`.
		
		right : float, optional
		    Value to return for `x > xp[-1]`, default is `fp[-1]`.
		
		period : None or float, optional
		    A period for the x-coordinates. This parameter allows the proper
		    interpolation of angular x-coordinates. Parameters `left` and `right`
		    are ignored if `period` is specified.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		y : float or ndarray
		    The interpolated values, same shape as `x`.
		
		Raises
		------
		ValueError
		    If `xp` and `fp` have different length
		    If `xp` or `fp` are not 1-D sequences
		    If `period == 0`
		
		Notes
		-----
		Does not check that the x-coordinate sequence `xp` is increasing.
		If `xp` is not increasing, the results are nonsense.
		A simple check for increasing is::
		
		    np.all(np.diff(xp) > 0)
		
		Examples
		--------
		>>> xp = [1, 2, 3]
		>>> fp = [3, 2, 0]
		>>> np.interp(2.5, xp, fp)
		1.0
		>>> np.interp([0, 1, 1.5, 2.72, 3.14], xp, fp)
		array([ 3. ,  3. ,  2.5 ,  0.56,  0. ])
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
		array([7.5, 5., 8.75, 6.25, 3., 3.25, 3.5, 3.75])
	**/
	static public function interp(x:Dynamic, xp:Dynamic, fp:Dynamic, ?left:Dynamic, ?right:Dynamic, ?period:Dynamic):Dynamic;
	/**
		Find the intersection of two arrays.
		
		Return the sorted, unique values that are in both of the input arrays.
		
		Parameters
		----------
		ar1, ar2 : array_like
		    Input arrays.
		assume_unique : bool
		    If True, the input arrays are both assumed to be unique, which
		    can speed up the calculation.  Default is False.
		
		Returns
		-------
		intersect1d : ndarray
		    Sorted 1D array of common and unique elements.
		
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
	**/
	static public function intersect1d(ar1:Dynamic, ar2:Dynamic, ?assume_unique:Dynamic):numpy.Ndarray;
	/**
		Compute the interest portion of a payment.
		
		Parameters
		----------
		rate : scalar or array_like of shape(M, )
		    Rate of interest as decimal (not per cent) per period
		per : scalar or array_like of shape(M, )
		    Interest paid against the loan changes during the life or the loan.
		    The `per` is the payment period to calculate the interest amount.
		nper : scalar or array_like of shape(M, )
		    Number of compounding periods
		pv : scalar or array_like of shape(M, )
		    Present value
		fv : scalar or array_like of shape(M, ), optional
		    Future value
		when : {{'begin', 1}, {'end', 0}}, {string, int}, optional
		    When payments are due ('begin' (1) or 'end' (0)).
		    Defaults to {'end', 0}.
		
		Returns
		-------
		out : ndarray
		    Interest portion of payment.  If all input is scalar, returns a scalar
		    float.  If any input is array_like, returns interest payment for each
		    input element. If multiple inputs are array_like, they all must have
		    the same shape.
		
		See Also
		--------
		ppmt, pmt, pv
		
		Notes
		-----
		The total payment is made up of payment against principal plus interest.
		
		``pmt = ppmt + ipmt``
		
		Examples
		--------
		What is the amortization schedule for a 1 year loan of $2500 at
		8.24% interest per year compounded monthly?
		
		>>> principal = 2500.00
		
		The 'per' variable represents the periods of the loan.  Remember that
		financial equations start the period count at 1!
		
		>>> per = np.arange(1*12) + 1
		>>> ipmt = np.ipmt(0.0824/12, per, 1*12, principal)
		>>> ppmt = np.ppmt(0.0824/12, per, 1*12, principal)
		
		Each element of the sum of the 'ipmt' and 'ppmt' arrays should equal
		'pmt'.
		
		>>> pmt = np.pmt(0.0824/12, 1*12, principal)
		>>> np.allclose(ipmt + ppmt, pmt)
		True
		
		>>> fmt = '{0:2d} {1:8.2f} {2:8.2f} {3:8.2f}'
		>>> for payment in per:
		...     index = payment - 1
		...     principal = principal + ppmt[index]
		...     print fmt.format(payment, ppmt[index], ipmt[index], principal)
		 1  -200.58   -17.17  2299.42
		 2  -201.96   -15.79  2097.46
		 3  -203.35   -14.40  1894.11
		 4  -204.74   -13.01  1689.37
		 5  -206.15   -11.60  1483.22
		 6  -207.56   -10.18  1275.66
		 7  -208.99    -8.76  1066.67
		 8  -210.42    -7.32   856.25
		 9  -211.87    -5.88   644.38
		10  -213.32    -4.42   431.05
		11  -214.79    -2.96   216.26
		12  -216.26    -1.49    -0.00
		
		>>> interestpd = np.sum(ipmt)
		>>> np.round(interestpd, 2)
		-112.98
	**/
	static public function ipmt(rate:Dynamic, per:Dynamic, nper:Dynamic, pv:Dynamic, ?fv:Dynamic, ?when:Dynamic):numpy.Ndarray;
	/**
		Return the Internal Rate of Return (IRR).
		
		This is the "average" periodically compounded rate of return
		that gives a net present value of 0.0; for a more complete explanation,
		see Notes below.
		
		Parameters
		----------
		values : array_like, shape(N,)
		    Input cash flows per time period.  By convention, net "deposits"
		    are negative and net "withdrawals" are positive.  Thus, for
		    example, at least the first element of `values`, which represents
		    the initial investment, will typically be negative.
		
		Returns
		-------
		out : float
		    Internal Rate of Return for periodic input values.
		
		Notes
		-----
		The IRR is perhaps best understood through an example (illustrated
		using np.irr in the Examples section below).  Suppose one invests 100
		units and then makes the following withdrawals at regular (fixed)
		intervals: 39, 59, 55, 20.  Assuming the ending value is 0, one's 100
		unit investment yields 173 units; however, due to the combination of
		compounding and the periodic withdrawals, the "average" rate of return
		is neither simply 0.73/4 nor (1.73)^0.25-1.  Rather, it is the solution
		(for :math:`r`) of the equation:
		
		.. math:: -100 + \frac{39}{1+r} + \frac{59}{(1+r)^2}
		 + \frac{55}{(1+r)^3} + \frac{20}{(1+r)^4} = 0
		
		In general, for `values` :math:`= [v_0, v_1, ... v_M]`,
		irr is the solution of the equation: [G]_
		
		.. math:: \sum_{t=0}^M{\frac{v_t}{(1+irr)^{t}}} = 0
		
		References
		----------
		.. [G] L. J. Gitman, "Principles of Managerial Finance, Brief," 3rd ed.,
		   Addison-Wesley, 2003, pg. 348.
		
		Examples
		--------
		>>> round(irr([-100, 39, 59, 55, 20]), 5)
		0.28095
		>>> round(irr([-100, 0, 0, 74]), 5)
		-0.0955
		>>> round(irr([-100, 100, 0, -7]), 5)
		-0.0833
		>>> round(irr([-100, 100, 0, 7]), 5)
		0.06206
		>>> round(irr([-5, 10.5, 1, -8, 1]), 5)
		0.0886
		
		(Compare with the Example given for numpy.lib.financial.npv)
	**/
	static public function irr(values:Dynamic):Float;
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
		array([ True, False, False, False, False,  True], dtype=bool)
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
		Test element-wise for negative infinity, return result as bool array.
		
		Parameters
		----------
		x : array_like
		    The input array.
		y : array_like, optional
		    A boolean array with the same shape and type as `x` to store the
		    result.
		
		Returns
		-------
		y : ndarray
		    A boolean array with the same dimensions as the input.
		    If second argument is not supplied then a numpy boolean array is
		    returned with values True where the corresponding element of the
		    input is negative infinity and values False where the element of
		    the input is not negative infinity.
		
		    If a second argument is supplied the result is stored there. If the
		    type of that array is a numeric type the result is represented as
		    zeros and ones, if the type is boolean then as False and True. The
		    return value `y` is then a reference to that array.
		
		See Also
		--------
		isinf, isposinf, isnan, isfinite
		
		Notes
		-----
		Numpy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754).
		
		Errors result if the second argument is also supplied when x is a scalar
		input, or if first and second arguments have different shapes.
		
		Examples
		--------
		>>> np.isneginf(np.NINF)
		array(True, dtype=bool)
		>>> np.isneginf(np.inf)
		array(False, dtype=bool)
		>>> np.isneginf(np.PINF)
		array(False, dtype=bool)
		>>> np.isneginf([-np.inf, 0., np.inf])
		array([ True, False, False], dtype=bool)
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isneginf(x, y)
		array([1, 0, 0])
		>>> y
		array([1, 0, 0])
	**/
	static public function isneginf(x:Dynamic, ?y:Dynamic):numpy.Ndarray;
	/**
		Test element-wise for positive infinity, return result as bool array.
		
		Parameters
		----------
		x : array_like
		    The input array.
		y : array_like, optional
		    A boolean array with the same shape as `x` to store the result.
		
		Returns
		-------
		y : ndarray
		    A boolean array with the same dimensions as the input.
		    If second argument is not supplied then a boolean array is returned
		    with values True where the corresponding element of the input is
		    positive infinity and values False where the element of the input is
		    not positive infinity.
		
		    If a second argument is supplied the result is stored there. If the
		    type of that array is a numeric type the result is represented as zeros
		    and ones, if the type is boolean then as False and True.
		    The return value `y` is then a reference to that array.
		
		See Also
		--------
		isinf, isneginf, isfinite, isnan
		
		Notes
		-----
		Numpy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754).
		
		Errors result if the second argument is also supplied when `x` is a
		scalar input, or if first and second arguments have different shapes.
		
		Examples
		--------
		>>> np.isposinf(np.PINF)
		array(True, dtype=bool)
		>>> np.isposinf(np.inf)
		array(True, dtype=bool)
		>>> np.isposinf(np.NINF)
		array(False, dtype=bool)
		>>> np.isposinf([-np.inf, 0., np.inf])
		array([False, False,  True], dtype=bool)
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isposinf(x, y)
		array([0, 0, 1])
		>>> y
		array([0, 0, 1])
	**/
	static public function isposinf(x:Dynamic, ?y:Dynamic):numpy.Ndarray;
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
		>>> np.issubclass_(np.int32, np.int)
		True
		>>> np.issubclass_(np.int32, np.float)
		False
	**/
	static public function issubclass_(arg1:Dynamic, arg2:Dynamic):Bool;
	/**
		Returns True if first argument is a typecode lower/equal in type hierarchy.
		
		Parameters
		----------
		arg1, arg2 : dtype_like
		    dtype or string representing a typecode.
		
		Returns
		-------
		out : bool
		
		See Also
		--------
		issubsctype, issubclass_
		numpy.core.numerictypes : Overview of numpy type hierarchy.
		
		Examples
		--------
		>>> np.issubdtype('S1', str)
		True
		>>> np.issubdtype(np.float64, np.float32)
		False
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
		issctype, issubdtype,obj2sctype
		
		Examples
		--------
		>>> np.issubsctype('S8', str)
		True
		>>> np.issubsctype(np.array([1]), np.int)
		True
		>>> np.issubsctype(np.array([1]), np.float)
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
		b : {0, 1}
		  Return 1 if the object has an iterator method or is a sequence,
		  and 0 otherwise.
		
		
		Examples
		--------
		>>> np.iterable([1, 2, 3])
		1
		>>> np.iterable(2)
		0
	**/
	static public function iterable(y:Dynamic):Dynamic;
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
		>>> ixgrid = np.ix_([0,1], [2,4])
		>>> ixgrid
		(array([[0],
		       [1]]), array([[2, 4]]))
		>>> ixgrid[0].shape, ixgrid[1].shape
		((2, 1), (1, 2))
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
		       http://en.wikipedia.org/wiki/Window_function
		
		Examples
		--------
		>>> np.kaiser(12, 14)
		array([  7.72686684e-06,   3.46009194e-03,   4.65200189e-02,
		         2.29737120e-01,   5.99885316e-01,   9.45674898e-01,
		         9.45674898e-01,   5.99885316e-01,   2.29737120e-01,
		         4.65200189e-02,   3.46009194e-03,   7.72686684e-06])
		
		
		Plot the window and the frequency response:
		
		>>> from numpy.fft import fft, fftshift
		>>> window = np.kaiser(51, 14)
		>>> plt.plot(window)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Kaiser window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Amplitude")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Sample")
		<matplotlib.text.Text object at 0x...>
		>>> plt.show()
		
		>>> plt.figure()
		<matplotlib.figure.Figure object at 0x...>
		>>> A = fft(window, 2048) / 25.5
		>>> mag = np.abs(fftshift(A))
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(mag)
		>>> response = np.clip(response, -100, 100)
		>>> plt.plot(freq, response)
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Frequency response of Kaiser window")
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Magnitude [dB]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		<matplotlib.text.Text object at 0x...>
		>>> plt.axis('tight')
		(-0.5, 0.5, -100.0, ...)
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
		If `a.shape = (r0,r1,..,rN)` and `b.shape = (s0,s1,...,sN)`,
		the Kronecker product has shape `(r0*s0, r1*s1, ..., rN*SN)`.
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
		array([  5,   6,   7,  50,  60,  70, 500, 600, 700])
		>>> np.kron([5,6,7], [1,10,100])
		array([  5,  50, 500,   6,  60, 600,   7,  70, 700])
		
		>>> np.kron(np.eye(2), np.ones((2,2)))
		array([[ 1.,  1.,  0.,  0.],
		       [ 1.,  1.,  0.,  0.],
		       [ 0.,  0.,  1.,  1.],
		       [ 0.,  0.,  1.,  1.]])
		
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
		
		Parameters
		----------
		file : file-like object or string
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
		    arrays will fail.
		    Default: True
		fix_imports : bool, optional
		    Only useful when loading Python 2 generated pickled files on Python 3,
		    which includes npy/npz files containing object arrays. If `fix_imports`
		    is True, pickle will try to map the old Python 2 names to the new names
		    used in Python 3.
		encoding : str, optional
		    What encoding to use when reading Python 2 strings. Only useful when
		    loading Python 2 generated pickled files on Python 3, which includes
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
		IOError
		    If the input file does not exist or cannot be read.
		ValueError
		    The file contains an object array, but allow_pickle=False given.
		
		See Also
		--------
		save, savez, savez_compressed, loadtxt
		memmap : Create a memory-map to an array stored in a file on disk.
		
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
		Read and return an object from the given pickle data.
		
		The protocol version of the pickle is detected automatically, so no
		protocol argument is needed.  Bytes past the pickled object's
		representation are ignored.
		
		Optional keyword arguments are *fix_imports*, *encoding* and *errors*,
		which are used to control compatiblity support for pickle stream
		generated by Python 2.  If *fix_imports* is True, pickle will try to
		map the old Python 2 names to the new names used in Python 3.  The
		*encoding* and *errors* tell pickle how to decode 8-bit string
		instances pickled by Python 2; these default to 'ASCII' and 'strict',
		respectively.  The *encoding* can be 'bytes' to read these 8-bit
		string instances as bytes objects.
	**/
	static public function loads(data:Dynamic, ?fix_imports:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Load data from a text file.
		
		Each row in the text file must have the same number of values.
		
		Parameters
		----------
		fname : file or str
		    File, filename, or generator to read.  If the filename extension is
		    ``.gz`` or ``.bz2``, the file is first decompressed. Note that
		    generators should return byte strings for Python 3k.
		dtype : data-type, optional
		    Data-type of the resulting array; default: float.  If this is a
		    structured data-type, the resulting array will be 1-dimensional, and
		    each row will be interpreted as an element of the array.  In this
		    case, the number of columns used must match the number of fields in
		    the data-type.
		comments : str or sequence, optional
		    The characters or list of characters used to indicate the start of a
		    comment;
		    default: '#'.
		delimiter : str, optional
		    The string used to separate values.  By default, this is any
		    whitespace.
		converters : dict, optional
		    A dictionary mapping column number to a function that will convert
		    that column to a float.  E.g., if column 0 is a date string:
		    ``converters = {0: datestr2num}``.  Converters can also be used to
		    provide a default value for missing data (but see also `genfromtxt`):
		    ``converters = {3: lambda s: float(s.strip() or 0)}``.  Default: None.
		skiprows : int, optional
		    Skip the first `skiprows` lines; default: 0.
		usecols : sequence, optional
		    Which columns to read, with 0 being the first.  For example,
		    ``usecols = (1,4,5)`` will extract the 2nd, 5th and 6th columns.
		    The default, None, results in all columns being read.
		unpack : bool, optional
		    If True, the returned array is transposed, so that arguments may be
		    unpacked using ``x, y, z = loadtxt(...)``.  When used with a structured
		    data-type, arrays are returned for each field.  Default is False.
		ndmin : int, optional
		    The returned array will have at least `ndmin` dimensions.
		    Otherwise mono-dimensional axes will be squeezed.
		    Legal values: 0 (default), 1 or 2.
		
		    .. versionadded:: 1.6.0
		
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
		array([[ 0.,  1.],
		       [ 2.,  3.]])
		
		>>> d = StringIO("M 21 72\nF 35 58")
		>>> np.loadtxt(d, dtype={'names': ('gender', 'age', 'weight'),
		...                      'formats': ('S1', 'i4', 'f4')})
		array([('M', 21, 72.0), ('F', 35, 58.0)],
		      dtype=[('gender', '|S1'), ('age', '<i4'), ('weight', '<f4')])
		
		>>> c = StringIO("1,0,2\n3,0,4")
		>>> x, y = np.loadtxt(c, delimiter=',', usecols=(0, 2), unpack=True)
		>>> x
		array([ 1.,  3.])
		>>> y
		array([ 2.,  4.])
	**/
	static public function loadtxt(fname:Dynamic, ?dtype:Dynamic, ?comments:Dynamic, ?delimiter:Dynamic, ?converters:Dynamic, ?skiprows:Dynamic, ?usecols:Dynamic, ?unpack:Dynamic, ?ndmin:Dynamic):Dynamic;
	/**
		Do a keyword search on docstrings.
		
		A list of of objects that matched the search is displayed,
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
		>>> np.lookfor('binary representation')
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
		Load ASCII data stored in a text file and return a masked array.
		
		Parameters
		----------
		fname, kwargs : For a description of input parameters, see `genfromtxt`.
		
		See Also
		--------
		numpy.genfromtxt : generic function to load ASCII data.
	**/
	static public function mafromtxt(fname:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		axis : int or sequence of int, optional
		    Axis along which the medians are computed. The default (axis=None)
		    is to compute the median along a flattened version of the array.
		    A sequence of axes is supported since version 1.9.0.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape and buffer length as the expected output, but the
		    type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		   If True, then allow use of memory of input array (a) for
		   calculations. The input array will be modified by the call to
		   median. This will save memory when you do not need to preserve the
		   contents of the input array. Treat the input as undefined, but it
		   will probably be fully or partially sorted. Default is False. Note
		   that, if `overwrite_input` is True and the input is not already an
		   ndarray, an error will be raised.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    .. versionadded:: 1.9.0
		
		
		Returns
		-------
		median : ndarray
		    A new array holding the result (unless `out` is specified, in which
		    case that array is returned instead).  If the input contains
		    integers, or floats of smaller precision than 64, then the output
		    data-type is float64.  Otherwise, the output data-type is the same
		    as that of the input.
		
		See Also
		--------
		mean, percentile
		
		Notes
		-----
		Given a vector V of length N, the median of V is the middle value of
		a sorted copy of V, ``V_sorted`` - i.e., ``V_sorted[(N-1)/2]``, when N is
		odd.  When N is even, it is the average of the two middle values of
		``V_sorted``.
		
		Examples
		--------
		>>> a = np.array([[10, 7, 4], [3, 2, 1]])
		>>> a
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> np.median(a)
		3.5
		>>> np.median(a, axis=0)
		array([ 6.5,  4.5,  2.5])
		>>> np.median(a, axis=1)
		array([ 7.,  2.])
		>>> m = np.median(a, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.median(a, axis=0, out=m)
		array([ 6.5,  4.5,  2.5])
		>>> m
		array([ 6.5,  4.5,  2.5])
		>>> b = a.copy()
		>>> np.median(b, axis=1, overwrite_input=True)
		array([ 7.,  2.])
		>>> assert not np.all(a==b)
		>>> b = a.copy()
		>>> np.median(b, axis=None, overwrite_input=True)
		3.5
		>>> assert not np.all(a==b)
	**/
	static public function median(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		    If True a sparse grid is returned in order to conserve memory.
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
		
		    xv, yv = meshgrid(x, y, sparse=False, indexing='ij')
		    for i in range(nx):
		        for j in range(ny):
		            # treat xv[i,j], yv[i,j]
		
		    xv, yv = meshgrid(x, y, sparse=False, indexing='xy')
		    for i in range(nx):
		        for j in range(ny):
		            # treat xv[j,i], yv[j,i]
		
		In the 1-D and 0-D case, the indexing and sparse keywords have no effect.
		
		See Also
		--------
		index_tricks.mgrid : Construct a multi-dimensional "meshgrid"
		                 using indexing notation.
		index_tricks.ogrid : Construct an open multi-dimensional "meshgrid"
		                 using indexing notation.
		
		Examples
		--------
		>>> nx, ny = (3, 2)
		>>> x = np.linspace(0, 1, nx)
		>>> y = np.linspace(0, 1, ny)
		>>> xv, yv = meshgrid(x, y)
		>>> xv
		array([[ 0. ,  0.5,  1. ],
		       [ 0. ,  0.5,  1. ]])
		>>> yv
		array([[ 0.,  0.,  0.],
		       [ 1.,  1.,  1.]])
		>>> xv, yv = meshgrid(x, y, sparse=True)  # make sparse output arrays
		>>> xv
		array([[ 0. ,  0.5,  1. ]])
		>>> yv
		array([[ 0.],
		       [ 1.]])
		
		`meshgrid` is very useful to evaluate functions on a grid.
		
		>>> x = np.arange(-5, 5, 0.1)
		>>> y = np.arange(-5, 5, 0.1)
		>>> xx, yy = meshgrid(x, y, sparse=True)
		>>> z = np.sin(xx**2 + yy**2) / (xx**2 + yy**2)
		>>> h = plt.contourf(x,y,z)
	**/
	static public function meshgrid(?xi:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		`nd_grid` instance which returns a dense multi-dimensional "meshgrid".
		
		An instance of `numpy.lib.index_tricks.nd_grid` which returns an dense
		(or fleshed out) mesh-grid when indexed, so that each returned argument
		has the same shape.  The dimensions and number of the output arrays are
		equal to the number of indexing dimensions.  If the step length is not a
		complex number, then the stop is not inclusive.
		
		However, if the step length is a **complex number** (e.g. 5j), then
		the integer part of its magnitude is interpreted as specifying the
		number of points to create between the start and stop values, where
		the stop value **is inclusive**.
		
		Returns
		----------
		mesh-grid `ndarrays` all of the same dimensions
		
		See Also
		--------
		numpy.lib.index_tricks.nd_grid : class of `ogrid` and `mgrid` objects
		ogrid : like mgrid but returns open (not fleshed out) mesh grids
		r_ : array concatenator
		
		Examples
		--------
		>>> np.mgrid[0:5,0:5]
		array([[[0, 0, 0, 0, 0],
		        [1, 1, 1, 1, 1],
		        [2, 2, 2, 2, 2],
		        [3, 3, 3, 3, 3],
		        [4, 4, 4, 4, 4]],
		       [[0, 1, 2, 3, 4],
		        [0, 1, 2, 3, 4],
		        [0, 1, 2, 3, 4],
		        [0, 1, 2, 3, 4],
		        [0, 1, 2, 3, 4]]])
		>>> np.mgrid[-1:1:5j]
		array([-1. , -0.5,  0. ,  0.5,  1. ])
	**/
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
		Modified internal rate of return.
		
		Parameters
		----------
		values : array_like
		    Cash flows (must contain at least one positive and one negative
		    value) or nan is returned.  The first value is considered a sunk
		    cost at time zero.
		finance_rate : scalar
		    Interest rate paid on the cash flows
		reinvest_rate : scalar
		    Interest rate received on the cash flows upon reinvestment
		
		Returns
		-------
		out : float
		    Modified internal rate of return
	**/
	static public function mirr(values:Dynamic, finance_rate:Dynamic, reinvest_rate:Dynamic):Float;
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
		Replace nan with zero and inf with finite numbers.
		
		Returns an array or scalar replacing Not a Number (NaN) with zero,
		(positive) infinity with a very large number and negative infinity
		with a very small (or negative) number.
		
		Parameters
		----------
		x : array_like
		    Input data.
		
		Returns
		-------
		out : ndarray
		    New Array with the same shape as `x` and dtype of the element in
		    `x`  with the greatest precision. If `x` is inexact, then NaN is
		    replaced by zero, and infinity (-infinity) is replaced by the
		    largest (smallest or most negative) floating point value that fits
		    in the output dtype. If `x` is not inexact, then a copy of `x` is
		    returned.
		
		See Also
		--------
		isinf : Shows which elements are negative or negative infinity.
		isneginf : Shows which elements are negative infinity.
		isposinf : Shows which elements are positive infinity.
		isnan : Shows which elements are Not a Number (NaN).
		isfinite : Shows which elements are finite (not NaN, not infinity)
		
		Notes
		-----
		Numpy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		
		
		Examples
		--------
		>>> np.set_printoptions(precision=8)
		>>> x = np.array([np.inf, -np.inf, np.nan, -128, 128])
		>>> np.nan_to_num(x)
		array([  1.79769313e+308,  -1.79769313e+308,   0.00000000e+000,
		        -1.28000000e+002,   1.28000000e+002])
	**/
	static public function nan_to_num(x:Dynamic):numpy.Ndarray;
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
	static public function nanargmax(a:Dynamic, ?axis:Dynamic):numpy.Ndarray;
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
	static public function nanargmin(a:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Return the maximum of an array or maximum along an axis, ignoring any
		NaNs.  When all-NaN slices are encountered a ``RuntimeWarning`` is
		raised and NaN is returned for that slice.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose maximum is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : int, optional
		    Axis along which the maximum is computed. The default is to compute
		    the maximum of the flattened array.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary.  See
		    `doc.ufuncs` for details.
		
		    .. versionadded:: 1.8.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original `a`.
		
		    .. versionadded:: 1.8.0
		
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
		Numpy uses the IEEE Standard for Binary Floating-Point for Arithmetic
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
		array([ 3.,  2.])
		>>> np.nanmax(a, axis=1)
		array([ 2.,  3.])
		
		When positive infinity and negative infinity are present:
		
		>>> np.nanmax([1, 2, np.nan, np.NINF])
		2.0
		>>> np.nanmax([1, 2, np.nan, np.inf])
		inf
	**/
	static public function nanmax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		axis : int, optional
		    Axis along which the means are computed. The default is to compute
		    the mean of the flattened array.
		dtype : data-type, optional
		    Type to use in computing the mean.  For integer inputs, the default
		    is `float64`; for inexact inputs, it is the same as the input
		    dtype.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary.  See
		    `doc.ufuncs` for details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original `arr`.
		
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
		array([ 2.,  4.])
		>>> np.nanmean(a, axis=1)
		array([ 1.,  3.5])
	**/
	static public function nanmean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Compute the median along the specified axis, while ignoring NaNs.
		
		Returns the median of the array elements.
		
		.. versionadded:: 1.9.0
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : int, optional
		    Axis along which the medians are computed. The default (axis=None)
		    is to compute the median along a flattened version of the array.
		    A sequence of axes is supported since version 1.9.0.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape and buffer length as the expected output, but the
		    type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		   If True, then allow use of memory of input array (a) for
		   calculations. The input array will be modified by the call to
		   median. This will save memory when you do not need to preserve
		   the contents of the input array. Treat the input as undefined,
		   but it will probably be fully or partially sorted. Default is
		   False. Note that, if `overwrite_input` is True and the input
		   is not already an ndarray, an error will be raised.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		
		
		Returns
		-------
		median : ndarray
		    A new array holding the result. If the input contains integers, or
		    floats of smaller precision than 64, then the output data-type is
		    float64.  Otherwise, the output data-type is the same as that of the
		    input.
		
		See Also
		--------
		mean, median, percentile
		
		Notes
		-----
		Given a vector V of length N, the median of V is the middle value of
		a sorted copy of V, ``V_sorted`` - i.e., ``V_sorted[(N-1)/2]``, when N is
		odd.  When N is even, it is the average of the two middle values of
		``V_sorted``.
		
		Examples
		--------
		>>> a = np.array([[10.0, 7, 4], [3, 2, 1]])
		>>> a[0, 1] = np.nan
		>>> a
		array([[ 10.,  nan,   4.],
		   [  3.,   2.,   1.]])
		>>> np.median(a)
		nan
		>>> np.nanmedian(a)
		3.0
		>>> np.nanmedian(a, axis=0)
		array([ 6.5,  2.,  2.5])
		>>> np.median(a, axis=1)
		array([ 7.,  2.])
		>>> b = a.copy()
		>>> np.nanmedian(b, axis=1, overwrite_input=True)
		array([ 7.,  2.])
		>>> assert not np.all(a==b)
		>>> b = a.copy()
		>>> np.nanmedian(b, axis=None, overwrite_input=True)
		3.0
		>>> assert not np.all(a==b)
	**/
	static public function nanmedian(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return minimum of an array or minimum along an axis, ignoring any NaNs.
		When all-NaN slices are encountered a ``RuntimeWarning`` is raised and
		Nan is returned for that slice.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose minimum is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : int, optional
		    Axis along which the minimum is computed. The default is to compute
		    the minimum of the flattened array.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary.  See
		    `doc.ufuncs` for details.
		
		    .. versionadded:: 1.8.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original `a`.
		
		    .. versionadded:: 1.8.0
		
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
		Numpy uses the IEEE Standard for Binary Floating-Point for Arithmetic
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
		array([ 1.,  2.])
		>>> np.nanmin(a, axis=1)
		array([ 1.,  3.])
		
		When positive infinity and negative infinity are present:
		
		>>> np.nanmin([1, 2, np.nan, np.inf])
		1.0
		>>> np.nanmin([1, 2, np.nan, np.NINF])
		-inf
	**/
	static public function nanmin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Compute the qth percentile of the data along the specified axis, while
		ignoring nan values.
		
		Returns the qth percentile of the array elements.
		
		.. versionadded:: 1.9.0
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		q : float in range of [0,100] (or sequence of floats)
		    Percentile to compute which must be between 0 and 100 inclusive.
		axis : int or sequence of int, optional
		    Axis along which the percentiles are computed. The default (None)
		    is to compute the percentiles along a flattened version of the array.
		    A sequence of axes is supported since version 1.9.0.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output,
		    but the type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		    If True, then allow use of memory of input array `a` for
		    calculations. The input array will be modified by the call to
		    percentile. This will save memory when you do not need to preserve
		    the contents of the input array. In this case you should not make
		    any assumptions about the content of the passed in array `a` after
		    this function completes -- treat it as undefined. Default is False.
		    Note that, if the `a` input is not already an array this parameter
		    will have no effect, `a` will be converted to an array internally
		    regardless of the value of this parameter.
		interpolation : {'linear', 'lower', 'higher', 'midpoint', 'nearest'}
		    This optional parameter specifies the interpolation method to use,
		    when the desired quantile lies between two data points `i` and `j`:
		        * linear: `i + (j - i) * fraction`, where `fraction` is the
		          fractional part of the index surrounded by `i` and `j`.
		        * lower: `i`.
		        * higher: `j`.
		        * nearest: `i` or `j` whichever is nearest.
		        * midpoint: (`i` + `j`) / 2.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		
		Returns
		-------
		nanpercentile : scalar or ndarray
		    If a single percentile `q` is given and axis=None a scalar is
		    returned.  If multiple percentiles `q` are given an array holding
		    the result is returned. The results are listed in the first axis.
		    (If `out` is specified, in which case that array is returned
		    instead).  If the input contains integers, or floats of smaller
		    precision than 64, then the output data-type is float64. Otherwise,
		    the output data-type is the same as that of the input.
		
		See Also
		--------
		nanmean, nanmedian, percentile, median, mean
		
		Notes
		-----
		Given a vector V of length N, the q-th percentile of V is the q-th ranked
		value in a sorted copy of V.  The values and distances of the two
		nearest neighbors as well as the `interpolation` parameter will
		determine the percentile if the normalized ranking does not match q
		exactly. This function is the same as the median if ``q=50``, the same
		as the minimum if ``q=0``and the same as the maximum if ``q=100``.
		
		Examples
		--------
		>>> a = np.array([[10., 7., 4.], [3., 2., 1.]])
		>>> a[0][1] = np.nan
		>>> a
		array([[ 10.,  nan,   4.],
		   [  3.,   2.,   1.]])
		>>> np.percentile(a, 50)
		nan
		>>> np.nanpercentile(a, 50)
		3.5
		>>> np.nanpercentile(a, 50, axis=0)
		array([[ 6.5,  4.5,  2.5]])
		>>> np.nanpercentile(a, 50, axis=1)
		array([[ 7.],
		       [ 2.]])
		>>> m = np.nanpercentile(a, 50, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.nanpercentile(a, 50, axis=0, out=m)
		array([[ 6.5,  4.5,  2.5]])
		>>> m
		array([[ 6.5,  4.5,  2.5]])
		>>> b = a.copy()
		>>> np.nanpercentile(b, 50, axis=1, overwrite_input=True)
		array([[ 7.],
		       [ 2.]])
		>>> assert not np.all(a==b)
		>>> b = a.copy()
		>>> np.nanpercentile(b, 50, axis=None, overwrite_input=True)
		array([ 3.5])
	**/
	static public function nanpercentile(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?interpolation:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return the product of array elements over a given axis treating Not a
		Numbers (NaNs) as zero.
		
		One is returned for slices that are all-NaN or empty.
		
		.. versionadded:: 1.10.0
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose sum is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : int, optional
		    Axis along which the product is computed. The default is to compute
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
		    expected output, but the type will be cast if necessary.  See
		    `doc.ufuncs` for details. The casting of NaN to integer can yield
		    unexpected results.
		keepdims : bool, optional
		    If True, the axes which are reduced are left in the result as
		    dimensions with size one. With this option, the result will
		    broadcast correctly against the original `arr`.
		
		Returns
		-------
		y : ndarray or numpy scalar
		
		See Also
		--------
		numpy.prod : Product across array propagating NaNs.
		isnan : Show which elements are NaN.
		
		Notes
		-----
		Numpy integer arithmetic is modular. If the size of a product exceeds
		the size of an integer accumulator, its value will wrap around and the
		result will be incorrect. Specifying ``dtype=double`` can alleviate
		that problem.
		
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
		array([ 3.,  2.])
	**/
	static public function nanprod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		axis : int, optional
		    Axis along which the standard deviation is computed. The default is
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
		    the result will broadcast correctly against the original `arr`.
		
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
		numpy.doc.ufuncs : Section "Output arguments"
		
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
		array([ 1.,  0.])
		>>> np.nanstd(a, axis=1)
		array([ 0.,  0.5])
	**/
	static public function nanstd(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return the sum of array elements over a given axis treating Not a
		Numbers (NaNs) as zero.
		
		In Numpy versions <= 1.8 Nan is returned for slices that are all-NaN or
		empty. In later versions zero is returned.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose sum is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : int, optional
		    Axis along which the sum is computed. The default is to compute the
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
		    `doc.ufuncs` for details. The casting of NaN to integer can yield
		    unexpected results.
		
		    .. versionadded:: 1.8.0
		keepdims : bool, optional
		    If True, the axes which are reduced are left in the result as
		    dimensions with size one. With this option, the result will
		    broadcast correctly against the original `arr`.
		
		    .. versionadded:: 1.8.0
		
		Returns
		-------
		y : ndarray or numpy scalar
		
		See Also
		--------
		numpy.sum : Sum across array propagating NaNs.
		isnan : Show which elements are NaN.
		isfinite: Show which elements are not NaN or +/-inf.
		
		Notes
		-----
		If both positive and negative infinity are present, the sum will be Not
		A Number (NaN).
		
		Numpy integer arithmetic is modular. If the size of a sum exceeds the
		size of an integer accumulator, its value will wrap around and the
		result will be incorrect. Specifying ``dtype=double`` can alleviate
		that problem.
		
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
		array([ 2.,  1.])
		>>> np.nansum([1, np.nan, np.inf])
		inf
		>>> np.nansum([1, np.nan, np.NINF])
		-inf
		>>> np.nansum([1, np.nan, np.inf, -np.inf]) # both +/- infinity present
		nan
	**/
	static public function nansum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		axis : int, optional
		    Axis along which the variance is computed.  The default is to compute
		    the variance of the flattened array.
		dtype : data-type, optional
		    Type to use in computing the variance.  For arrays of integer type
		    the default is `float32`; for arrays of float types it is the same as
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
		    the result will broadcast correctly against the original `arr`.
		
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
		numpy.doc.ufuncs : Section "Output arguments"
		
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
		
		Examples
		--------
		>>> a = np.array([[1, np.nan], [3, 4]])
		>>> np.var(a)
		1.5555555555555554
		>>> np.nanvar(a, axis=0)
		array([ 1.,  0.])
		>>> np.nanvar(a, axis=1)
		array([ 0.,  0.25])
	**/
	static public function nanvar(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Load ASCII data stored in a file and return it as a single array.
		
		Parameters
		----------
		fname, kwargs : For a description of input parameters, see `genfromtxt`.
		
		See Also
		--------
		numpy.genfromtxt : generic function.
	**/
	static public function ndfromtxt(fname:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the number of periodic payments.
		
		Parameters
		----------
		rate : array_like
		    Rate of interest (per period)
		pmt : array_like
		    Payment
		pv : array_like
		    Present value
		fv : array_like, optional
		    Future value
		when : {{'begin', 1}, {'end', 0}}, {string, int}, optional
		    When payments are due ('begin' (1) or 'end' (0))
		
		Notes
		-----
		The number of periods ``nper`` is computed by solving the equation::
		
		 fv + pv*(1+rate)**nper + pmt*(1+rate*when)/rate*((1+rate)**nper-1) = 0
		
		but if ``rate = 0`` then::
		
		 fv + pv + pmt*nper = 0
		
		Examples
		--------
		If you only had $150/month to pay towards the loan, how long would it take
		to pay-off a loan of $8,000 at 7% annual interest?
		
		>>> print round(np.nper(0.07/12, -150, 8000), 5)
		64.07335
		
		So, over 64 months would be required to pay off the loan.
		
		The same analysis could be done with several different interest rates
		and/or payments and/or total amounts to produce an entire table.
		
		>>> np.nper(*(np.ogrid[0.07/12: 0.08/12: 0.01/12,
		...                    -150   : -99     : 50    ,
		...                    8000   : 9001    : 1000]))
		array([[[  64.07334877,   74.06368256],
		        [ 108.07548412,  127.99022654]],
		       [[  66.12443902,   76.87897353],
		        [ 114.70165583,  137.90124779]]])
	**/
	static public function nper(rate:Dynamic, pmt:Dynamic, pv:Dynamic, ?fv:Dynamic, ?when:Dynamic):Dynamic;
	/**
		Returns the NPV (Net Present Value) of a cash flow series.
		
		Parameters
		----------
		rate : scalar
		    The discount rate.
		values : array_like, shape(M, )
		    The values of the time series of cash flows.  The (fixed) time
		    interval between cash flow "events" must be the same as that for
		    which `rate` is given (i.e., if `rate` is per year, then precisely
		    a year is understood to elapse between each cash flow event).  By
		    convention, investments or "deposits" are negative, income or
		    "withdrawals" are positive; `values` must begin with the initial
		    investment, thus `values[0]` will typically be negative.
		
		Returns
		-------
		out : float
		    The NPV of the input cash flow series `values` at the discount
		    `rate`.
		
		Notes
		-----
		Returns the result of: [G]_
		
		.. math :: \sum_{t=0}^{M-1}{\frac{values_t}{(1+rate)^{t}}}
		
		References
		----------
		.. [G] L. J. Gitman, "Principles of Managerial Finance, Brief," 3rd ed.,
		   Addison-Wesley, 2003, pg. 346.
		
		Examples
		--------
		>>> np.npv(0.281,[-100, 39, 59, 55, 20])
		-0.0084785916384548798
		
		(Compare with the Example given for numpy.lib.financial.irr)
	**/
	static public function npv(rate:Dynamic, values:Dynamic):Float;
	/**
		`nd_grid` instance which returns an open multi-dimensional "meshgrid".
		
		An instance of `numpy.lib.index_tricks.nd_grid` which returns an open
		(i.e. not fleshed out) mesh-grid when indexed, so that only one dimension
		of each returned array is greater than 1.  The dimension and number of the
		output arrays are equal to the number of indexing dimensions.  If the step
		length is not a complex number, then the stop is not inclusive.
		
		However, if the step length is a **complex number** (e.g. 5j), then
		the integer part of its magnitude is interpreted as specifying the
		number of points to create between the start and stop values, where
		the stop value **is inclusive**.
		
		Returns
		----------
		mesh-grid `ndarrays` with only one dimension :math:`\neq 1`
		
		See Also
		--------
		np.lib.index_tricks.nd_grid : class of `ogrid` and `mgrid` objects
		mgrid : like `ogrid` but returns dense (or fleshed out) mesh grids
		r_ : array concatenator
		
		Examples
		--------
		>>> from numpy import ogrid
		>>> ogrid[-1:1:5j]
		array([-1. , -0.5,  0. ,  0.5,  1. ])
		>>> ogrid[0:5,0:5]
		[array([[0],
		        [1],
		        [2],
		        [3],
		        [4]]), array([[0, 1, 2, 3, 4]])]
	**/
	static public var ogrid : Dynamic;
	/**
		packbits(myarray, axis=None)
		
		Packs the elements of a binary-valued array into bits in a uint8 array.
		
		The result is padded to full bytes by inserting zero bits at the end.
		
		Parameters
		----------
		myarray : array_like
		    An integer type array whose elements should be packed to bits.
		axis : int, optional
		    The dimension over which bit-packing is done.
		    ``None`` implies packing the flattened array.
		
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
		array([[[160],[64]],[[192],[32]]], dtype=uint8)
		
		Note that in binary 160 = 1010 0000, 64 = 0100 0000, 192 = 1100 0000,
		and 32 = 0010 0000.
	**/
	static public function packbits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Pads an array.
		
		Parameters
		----------
		array : array_like of rank N
		    Input array
		pad_width : {sequence, array_like, int}
		    Number of values padded to the edges of each axis.
		    ((before_1, after_1), ... (before_N, after_N)) unique pad widths
		    for each axis.
		    ((before, after),) yields same before and after pad for each axis.
		    (pad,) or int is a shortcut for before = after = pad width for all
		    axes.
		mode : str or function
		    One of the following string values or a user supplied function.
		
		    'constant'
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
		constant_values : sequence or int, optional
		    Used in 'constant'.  The values to set the padded values for each
		    axis.
		
		    ((before_1, after_1), ... (before_N, after_N)) unique pad constants
		    for each axis.
		
		    ((before, after),) yields same before and after constants for each
		    axis.
		
		    (constant,) or int is a shortcut for before = after = constant for
		    all axes.
		
		    Default is 0.
		end_values : sequence or int, optional
		    Used in 'linear_ramp'.  The values used for the ending value of the
		    linear_ramp and that will form the edge of the padded array.
		
		    ((before_1, after_1), ... (before_N, after_N)) unique end values
		    for each axis.
		
		    ((before, after),) yields same before and after end values for each
		    axis.
		
		    (constant,) or int is a shortcut for before = after = end value for
		    all axes.
		
		    Default is 0.
		reflect_type : {'even', 'odd'}, optional
		    Used in 'reflect', and 'symmetric'.  The 'even' style is the
		    default with an unaltered reflection around the edge value.  For
		    the 'odd' style, the extented part of the array is created by
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
		
		The padding function, if used, should return a rank 1 array equal in
		length to the vector argument with padded values replaced. It has the
		following signature::
		
		    padding_func(vector, iaxis_pad_width, iaxis, **kwargs)
		
		where
		
		    vector : ndarray
		        A rank 1 array already padded with zeros.  Padded values are
		        vector[:pad_tuple[0]] and vector[-pad_tuple[1]:].
		    iaxis_pad_width : tuple
		        A 2-tuple of ints, iaxis_pad_width[0] represents the number of
		        values padded at the beginning of vector where
		        iaxis_pad_width[1] represents the number of values padded at
		        the end of vector.
		    iaxis : int
		        The axis currently being calculated.
		    kwargs : misc
		        Any keyword arguments the function requires.
		
		Examples
		--------
		>>> a = [1, 2, 3, 4, 5]
		>>> np.lib.pad(a, (2,3), 'constant', constant_values=(4, 6))
		array([4, 4, 1, 2, 3, 4, 5, 6, 6, 6])
		
		>>> np.lib.pad(a, (2, 3), 'edge')
		array([1, 1, 1, 2, 3, 4, 5, 5, 5, 5])
		
		>>> np.lib.pad(a, (2, 3), 'linear_ramp', end_values=(5, -4))
		array([ 5,  3,  1,  2,  3,  4,  5,  2, -1, -4])
		
		>>> np.lib.pad(a, (2,), 'maximum')
		array([5, 5, 1, 2, 3, 4, 5, 5, 5])
		
		>>> np.lib.pad(a, (2,), 'mean')
		array([3, 3, 1, 2, 3, 4, 5, 3, 3])
		
		>>> np.lib.pad(a, (2,), 'median')
		array([3, 3, 1, 2, 3, 4, 5, 3, 3])
		
		>>> a = [[1, 2], [3, 4]]
		>>> np.lib.pad(a, ((3, 2), (2, 3)), 'minimum')
		array([[1, 1, 1, 2, 1, 1, 1],
		       [1, 1, 1, 2, 1, 1, 1],
		       [1, 1, 1, 2, 1, 1, 1],
		       [1, 1, 1, 2, 1, 1, 1],
		       [3, 3, 3, 4, 3, 3, 3],
		       [1, 1, 1, 2, 1, 1, 1],
		       [1, 1, 1, 2, 1, 1, 1]])
		
		>>> a = [1, 2, 3, 4, 5]
		>>> np.lib.pad(a, (2, 3), 'reflect')
		array([3, 2, 1, 2, 3, 4, 5, 4, 3, 2])
		
		>>> np.lib.pad(a, (2, 3), 'reflect', reflect_type='odd')
		array([-1,  0,  1,  2,  3,  4,  5,  6,  7,  8])
		
		>>> np.lib.pad(a, (2, 3), 'symmetric')
		array([2, 1, 1, 2, 3, 4, 5, 5, 4, 3])
		
		>>> np.lib.pad(a, (2, 3), 'symmetric', reflect_type='odd')
		array([0, 1, 1, 2, 3, 4, 5, 5, 6, 7])
		
		>>> np.lib.pad(a, (2, 3), 'wrap')
		array([4, 5, 1, 2, 3, 4, 5, 1, 2, 3])
		
		>>> def padwithtens(vector, pad_width, iaxis, kwargs):
		...     vector[:pad_width[0]] = 10
		...     vector[-pad_width[1]:] = 10
		...     return vector
		
		>>> a = np.arange(6)
		>>> a = a.reshape((2, 3))
		
		>>> np.lib.pad(a, 2, padwithtens)
		array([[10, 10, 10, 10, 10, 10, 10],
		       [10, 10, 10, 10, 10, 10, 10],
		       [10, 10,  0,  1,  2, 10, 10],
		       [10, 10,  3,  4,  5, 10, 10],
		       [10, 10, 10, 10, 10, 10, 10],
		       [10, 10, 10, 10, 10, 10, 10]])
	**/
	static public function pad(array:Dynamic, pad_width:Dynamic, ?mode:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the qth percentile of the data along the specified axis.
		
		Returns the qth percentile of the array elements.
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		q : float in range of [0,100] (or sequence of floats)
		    Percentile to compute which must be between 0 and 100 inclusive.
		axis : int or sequence of int, optional
		    Axis along which the percentiles are computed. The default (None)
		    is to compute the percentiles along a flattened version of the array.
		    A sequence of axes is supported since version 1.9.0.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output,
		    but the type (of the output) will be cast if necessary.
		overwrite_input : bool, optional
		    If True, then allow use of memory of input array `a` for
		    calculations. The input array will be modified by the call to
		    percentile. This will save memory when you do not need to preserve
		    the contents of the input array. In this case you should not make
		    any assumptions about the content of the passed in array `a` after
		    this function completes -- treat it as undefined. Default is False.
		    Note that, if the `a` input is not already an array this parameter
		    will have no effect, `a` will be converted to an array internally
		    regardless of the value of this parameter.
		interpolation : {'linear', 'lower', 'higher', 'midpoint', 'nearest'}
		    This optional parameter specifies the interpolation method to use,
		    when the desired quantile lies between two data points `i` and `j`:
		        * linear: `i + (j - i) * fraction`, where `fraction` is the
		          fractional part of the index surrounded by `i` and `j`.
		        * lower: `i`.
		        * higher: `j`.
		        * nearest: `i` or `j` whichever is nearest.
		        * midpoint: (`i` + `j`) / 2.
		
		    .. versionadded:: 1.9.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original array `a`.
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		percentile : scalar or ndarray
		    If a single percentile `q` is given and axis=None a scalar is
		    returned.  If multiple percentiles `q` are given an array holding
		    the result is returned. The results are listed in the first axis.
		    (If `out` is specified, in which case that array is returned
		    instead).  If the input contains integers, or floats of smaller
		    precision than 64, then the output data-type is float64. Otherwise,
		    the output data-type is the same as that of the input.
		
		See Also
		--------
		mean, median
		
		Notes
		-----
		Given a vector V of length N, the q-th percentile of V is the q-th ranked
		value in a sorted copy of V.  The values and distances of the two
		nearest neighbors as well as the `interpolation` parameter will
		determine the percentile if the normalized ranking does not match q
		exactly. This function is the same as the median if ``q=50``, the same
		as the minimum if ``q=0`` and the same as the maximum if ``q=100``.
		
		Examples
		--------
		>>> a = np.array([[10, 7, 4], [3, 2, 1]])
		>>> a
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> np.percentile(a, 50)
		array([ 3.5])
		>>> np.percentile(a, 50, axis=0)
		array([[ 6.5,  4.5,  2.5]])
		>>> np.percentile(a, 50, axis=1)
		array([[ 7.],
		       [ 2.]])
		
		>>> m = np.percentile(a, 50, axis=0)
		>>> out = np.zeros_like(m)
		>>> np.percentile(a, 50, axis=0, out=m)
		array([[ 6.5,  4.5,  2.5]])
		>>> m
		array([[ 6.5,  4.5,  2.5]])
		
		>>> b = a.copy()
		>>> np.percentile(b, 50, axis=1, overwrite_input=True)
		array([[ 7.],
		       [ 2.]])
		>>> assert not np.all(a==b)
		>>> b = a.copy()
		>>> np.percentile(b, 50, axis=None, overwrite_input=True)
		array([ 3.5])
	**/
	static public function percentile(a:Dynamic, q:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?overwrite_input:Dynamic, ?interpolation:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Evaluate a piecewise-defined function.
		
		Given a set of conditions and corresponding functions, evaluate each
		function on the input data wherever its condition is true.
		
		Parameters
		----------
		x : ndarray
		    The input domain.
		condlist : list of bool arrays
		    Each boolean array corresponds to a function in `funclist`.  Wherever
		    `condlist[i]` is True, `funclist[i](x)` is used as the output value.
		
		    Each boolean array in `condlist` selects a piece of `x`,
		    and should therefore be of the same shape as `x`.
		
		    The length of `condlist` must correspond to that of `funclist`.
		    If one extra function is given, i.e. if
		    ``len(funclist) - len(condlist) == 1``, then that extra function
		    is the default value, used wherever all conditions are false.
		funclist : list of callables, f(x,*args,**kw), or scalars
		    Each function is evaluated over `x` wherever its corresponding
		    condition is True.  It should take an array as input and give an array
		    or a scalar value as output.  If, instead of a callable,
		    a scalar is provided then a constant function (``lambda x: scalar``) is
		    assumed.
		args : tuple, optional
		    Any further arguments given to `piecewise` are passed to the functions
		    upon execution, i.e., if called ``piecewise(..., ..., 1, 'a')``, then
		    each function is called as ``f(x, 1, 'a')``.
		kw : dict, optional
		    Keyword arguments used in calling `piecewise` are passed to the
		    functions upon execution, i.e., if called
		    ``piecewise(..., ..., lambda=1)``, then each function is called as
		    ``f(x, lambda=1)``.
		
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
		array([ 2.5,  1.5,  0.5,  0.5,  1.5,  2.5])
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
		arr : array_like
		    Array to put data into.
		mask : array_like
		    Boolean mask array. Must have the same size as `a`.
		vals : 1-D sequence
		    Values to put into `a`. Only the first N elements are used, where
		    N is the number of True values in `mask`. If `vals` is smaller
		    than N it will be repeated.
		
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
		Compute the payment against loan principal plus interest.
		
		Given:
		 * a present value, `pv` (e.g., an amount borrowed)
		 * a future value, `fv` (e.g., 0)
		 * an interest `rate` compounded once per period, of which
		   there are
		 * `nper` total
		 * and (optional) specification of whether payment is made
		   at the beginning (`when` = {'begin', 1}) or the end
		   (`when` = {'end', 0}) of each period
		
		Return:
		   the (fixed) periodic payment.
		
		Parameters
		----------
		rate : array_like
		    Rate of interest (per period)
		nper : array_like
		    Number of compounding periods
		pv : array_like
		    Present value
		fv : array_like,  optional
		    Future value (default = 0)
		when : {{'begin', 1}, {'end', 0}}, {string, int}
		    When payments are due ('begin' (1) or 'end' (0))
		
		Returns
		-------
		out : ndarray
		    Payment against loan plus interest.  If all input is scalar, returns a
		    scalar float.  If any input is array_like, returns payment for each
		    input element. If multiple inputs are array_like, they all must have
		    the same shape.
		
		Notes
		-----
		The payment is computed by solving the equation::
		
		 fv +
		 pv*(1 + rate)**nper +
		 pmt*(1 + rate*when)/rate*((1 + rate)**nper - 1) == 0
		
		or, when ``rate == 0``::
		
		  fv + pv + pmt * nper == 0
		
		for ``pmt``.
		
		Note that computing a monthly mortgage payment is only
		one use for this function.  For example, pmt returns the
		periodic deposit one must make to achieve a specified
		future balance given an initial deposit, a fixed,
		periodically compounded interest rate, and the total
		number of periods.
		
		References
		----------
		.. [WRW] Wheeler, D. A., E. Rathke, and R. Weir (Eds.) (2009, May).
		   Open Document Format for Office Applications (OpenDocument)v1.2,
		   Part 2: Recalculated Formula (OpenFormula) Format - Annotated Version,
		   Pre-Draft 12. Organization for the Advancement of Structured Information
		   Standards (OASIS). Billerica, MA, USA. [ODT Document].
		   Available:
		   http://www.oasis-open.org/committees/documents.php
		   ?wg_abbrev=office-formulaOpenDocument-formula-20090508.odt
		
		Examples
		--------
		What is the monthly payment needed to pay off a $200,000 loan in 15
		years at an annual interest rate of 7.5%?
		
		>>> np.pmt(0.075/12, 12*15, 200000)
		-1854.0247200054619
		
		In order to pay-off (i.e., have a future-value of 0) the $200,000 obtained
		today, a monthly payment of $1,854.02 would be required.  Note that this
		example illustrates usage of `fv` having a default value of 0.
	**/
	static public function pmt(rate:Dynamic, nper:Dynamic, pv:Dynamic, ?fv:Dynamic, ?when:Dynamic):numpy.Ndarray;
	/**
		Find the coefficients of a polynomial with the given sequence of roots.
		
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
		polyval : Evaluate a polynomial at a point.
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
		array([1, 0, 0, 0])
		
		The line above represents z**3 + 0*z**2 + 0*z + 0.
		
		>>> np.poly((-1./2, 0, 1./2))
		array([ 1.  ,  0.  , -0.25,  0.  ])
		
		The line above represents z**3 - z/4
		
		>>> np.poly((np.random.random(1.)[0], 0, np.random.random(1.)[0]))
		array([ 1.        , -0.77086955,  0.08618131,  0.        ]) #random
		
		Given a square array object:
		
		>>> P = np.array([[0, 1./3], [-1./2, 0]])
		>>> np.poly(P)
		array([ 1.        ,  0.        ,  0.16666667])
		
		Or a square matrix object:
		
		>>> np.poly(np.matrix(P))
		array([ 1.        ,  0.        ,  0.16666667])
		
		Note how in all cases the leading coefficient is always 1.
	**/
	static public function poly(seq_of_zeros:Dynamic):numpy.Ndarray;
	/**
		Find the sum of two polynomials.
		
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
		>>> print p1
		1 x + 2
		>>> print p2
		   2
		9 x + 5 x + 4
		>>> print np.polyadd(p1, p2)
		   2
		9 x + 6 x + 6
	**/
	static public function polyadd(a1:Dynamic, a2:Dynamic):Dynamic;
	/**
		Return the derivative of the specified order of a polynomial.
		
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
		poly1d([ 0.])
	**/
	static public function polyder(p:Dynamic, ?m:Dynamic):Dynamic;
	/**
		Returns the quotient and remainder of polynomial division.
		
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
		poly, polyadd, polyder, polydiv, polyfit, polyint, polymul, polysub,
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
		(array([ 1.5 ,  1.75]), array([ 0.25]))
	**/
	static public function polydiv(u:Dynamic, v:Dynamic):numpy.Ndarray;
	/**
		Least squares polynomial fit.
		
		Fit a polynomial ``p(x) = p[0] * x**deg + ... + p[deg]`` of degree `deg`
		to points `(x, y)`. Returns a vector of coefficients `p` that minimises
		the squared error.
		
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
		    weights to apply to the y-coordinates of the sample points.
		cov : bool, optional
		    Return the estimate and the covariance matrix of the estimate
		    If full is True, then cov is not returned.
		
		Returns
		-------
		p : ndarray, shape (M,) or (M, K)
		    Polynomial coefficients, highest power first.  If `y` was 2-D, the
		    coefficients for `k`-th data set are in ``p[:,k]``.
		
		residuals, rank, singular_values, rcond :
		    Present only if `full` = True.  Residuals of the least-squares fit,
		    the effective rank of the scaled Vandermonde coefficient matrix,
		    its singular values, and the specified value of `rcond`. For more
		    details, see `linalg.lstsq`.
		
		V : ndarray, shape (M,M) or (M,M,K)
		    Present only if `full` = False and `cov`=True.  The covariance
		    matrix of the polynomial coefficient estimates.  The diagonal of
		    this matrix are the variance estimates for each coefficient.  If y
		    is a 2-D array, then the covariance matrix for the `k`-th data set
		    are in ``V[:,:,k]``
		
		
		Warns
		-----
		RankWarning
		    The rank of the coefficient matrix in the least-squares fit is
		    deficient. The warning is only raised if `full` = False.
		
		    The warnings can be turned off by
		
		    >>> import warnings
		    >>> warnings.simplefilter('ignore', np.RankWarning)
		
		See Also
		--------
		polyval : Computes polynomial values.
		linalg.lstsq : Computes a least-squares fit.
		scipy.interpolate.UnivariateSpline : Computes spline fits.
		
		Notes
		-----
		The solution minimizes the squared error
		
		.. math ::
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
		       http://en.wikipedia.org/wiki/Curve_fitting
		.. [2] Wikipedia, "Polynomial interpolation",
		       http://en.wikipedia.org/wiki/Polynomial_interpolation
		
		Examples
		--------
		>>> x = np.array([0.0, 1.0, 2.0, 3.0,  4.0,  5.0])
		>>> y = np.array([0.0, 0.8, 0.9, 0.1, -0.8, -1.0])
		>>> z = np.polyfit(x, y, 3)
		>>> z
		array([ 0.08703704, -0.81349206,  1.69312169, -0.03968254])
		
		It is convenient to use `poly1d` objects for dealing with polynomials:
		
		>>> p = np.poly1d(z)
		>>> p(0.5)
		0.6143849206349179
		>>> p(3.5)
		-0.34732142857143039
		>>> p(10)
		22.579365079365115
		
		High-order polynomials may oscillate wildly:
		
		>>> p30 = np.poly1d(np.polyfit(x, y, 30))
		/... RankWarning: Polyfit may be poorly conditioned...
		>>> p30(4)
		-0.80000000000000204
		>>> p30(5)
		-0.99999999999999445
		>>> p30(4.5)
		-0.10547061179440398
		
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
		
		The returned order `m` antiderivative `P` of polynomial `p` satisfies
		:math:`\frac{d^m}{dx^m}P(x) = p(x)` and is defined up to `m - 1`
		integration constants `k`. The constants determine the low-order
		polynomial part
		
		.. math:: \frac{k_{m-1}}{0!} x^0 + \ldots + \frac{k_0}{(m-1)!}x^{m-1}
		
		of `P` so that :math:`P^{(j)}(0) = k_{m-j-1}`.
		
		Parameters
		----------
		p : array_like or poly1d
		    Polynomial to differentiate.
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
		poly1d([ 0.33333333,  0.5       ,  1.        ,  0.        ])
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
		poly1d([ 0.01666667,  0.04166667,  0.16666667,  3. ,  5. ,  3. ])
		
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
		poly, polyadd, polyder, polydiv, polyfit, polyint, polysub,
		polyval
		convolve : Array convolution. Same output as polymul, but has parameter
		           for overlap mode.
		
		Examples
		--------
		>>> np.polymul([1, 2, 3], [9, 5, 1])
		array([ 9, 23, 38, 17,  3])
		
		Using poly1d objects:
		
		>>> p1 = np.poly1d([1, 2, 3])
		>>> p2 = np.poly1d([9, 5, 1])
		>>> print p1
		   2
		1 x + 2 x + 3
		>>> print p2
		   2
		9 x + 5 x + 1
		>>> print np.polymul(p1, p2)
		   4      3      2
		9 x + 23 x + 38 x + 17 x + 3
	**/
	static public function polymul(a1:Dynamic, a2:Dynamic):Dynamic;
	/**
		Difference (subtraction) of two polynomials.
		
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
		
		If `p` is of length N, this function returns the value:
		
		    ``p[0]*x**(N-1) + p[1]*x**(N-2) + ... + p[N-2]*x + p[N-1]``
		
		If `x` is a sequence, then `p(x)` is returned for each element of `x`.
		If `x` is another polynomial then the composite polynomial `p(x(t))`
		is returned.
		
		Parameters
		----------
		p : array_like or poly1d object
		   1D array of polynomial coefficients (including coefficients equal
		   to zero) from highest degree to the constant term, or an
		   instance of poly1d.
		x : array_like or poly1d object
		   A number, a 1D array of numbers, or an instance of poly1d, "at"
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
		poly1d([ 76.])
		>>> np.polyval(np.poly1d([3,0,1]), 5)
		76
		>>> np.polyval(np.poly1d([3,0,1]), np.poly1d(5))
		poly1d([ 76.])
	**/
	static public function polyval(p:Dynamic, x:Dynamic):Dynamic;
	/**
		Compute the payment against loan principal.
		
		Parameters
		----------
		rate : array_like
		    Rate of interest (per period)
		per : array_like, int
		    Amount paid against the loan changes.  The `per` is the period of
		    interest.
		nper : array_like
		    Number of compounding periods
		pv : array_like
		    Present value
		fv : array_like, optional
		    Future value
		when : {{'begin', 1}, {'end', 0}}, {string, int}
		    When payments are due ('begin' (1) or 'end' (0))
		
		See Also
		--------
		pmt, pv, ipmt
	**/
	static public function ppmt(rate:Dynamic, per:Dynamic, nper:Dynamic, pv:Dynamic, ?fv:Dynamic, ?when:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute the present value.
		
		Given:
		 * a future value, `fv`
		 * an interest `rate` compounded once per period, of which
		   there are
		 * `nper` total
		 * a (fixed) payment, `pmt`, paid either
		 * at the beginning (`when` = {'begin', 1}) or the end
		   (`when` = {'end', 0}) of each period
		
		Return:
		   the value now
		
		Parameters
		----------
		rate : array_like
		    Rate of interest (per period)
		nper : array_like
		    Number of compounding periods
		pmt : array_like
		    Payment
		fv : array_like, optional
		    Future value
		when : {{'begin', 1}, {'end', 0}}, {string, int}, optional
		    When payments are due ('begin' (1) or 'end' (0))
		
		Returns
		-------
		out : ndarray, float
		    Present value of a series of payments or investments.
		
		Notes
		-----
		The present value is computed by solving the equation::
		
		 fv +
		 pv*(1 + rate)**nper +
		 pmt*(1 + rate*when)/rate*((1 + rate)**nper - 1) = 0
		
		or, when ``rate = 0``::
		
		 fv + pv + pmt * nper = 0
		
		for `pv`, which is then returned.
		
		References
		----------
		.. [WRW] Wheeler, D. A., E. Rathke, and R. Weir (Eds.) (2009, May).
		   Open Document Format for Office Applications (OpenDocument)v1.2,
		   Part 2: Recalculated Formula (OpenFormula) Format - Annotated Version,
		   Pre-Draft 12. Organization for the Advancement of Structured Information
		   Standards (OASIS). Billerica, MA, USA. [ODT Document].
		   Available:
		   http://www.oasis-open.org/committees/documents.php?wg_abbrev=office-formula
		   OpenDocument-formula-20090508.odt
		
		Examples
		--------
		What is the present value (e.g., the initial investment)
		of an investment that needs to total $15692.93
		after 10 years of saving $100 every month?  Assume the
		interest rate is 5% (annually) compounded monthly.
		
		>>> np.pv(0.05/12, 10*12, -100, 15692.93)
		-100.00067131625819
		
		By convention, the negative sign represents cash flow out
		(i.e., money not available today).  Thus, to end up with
		$15,692.93 in 10 years saving $100 a month at 5% annual
		interest, one's initial deposit should also be $100.
		
		If any input is array_like, ``pv`` returns an array of equal shape.
		Let's compare different interest rates in the example above:
		
		>>> a = np.array((0.05, 0.04, 0.03))/12
		>>> np.pv(a, 10*12, -100, 15692.93)
		array([ -100.00067132,  -649.26771385, -1273.78633713])
		
		So, to end up with the same $15692.93 under the same $100 per month
		"savings plan," for annual interest rates of 4% and 3%, one would
		need initial investments of $649.27 and $1273.79, respectively.
	**/
	static public function pv(rate:Dynamic, nper:Dynamic, pmt:Dynamic, ?fv:Dynamic, ?when:Dynamic):Dynamic;
	static public var r_ : Dynamic;
	/**
		Compute the rate of interest per period.
		
		Parameters
		----------
		nper : array_like
		    Number of compounding periods
		pmt : array_like
		    Payment
		pv : array_like
		    Present value
		fv : array_like
		    Future value
		when : {{'begin', 1}, {'end', 0}}, {string, int}, optional
		    When payments are due ('begin' (1) or 'end' (0))
		guess : float, optional
		    Starting guess for solving the rate of interest
		tol : float, optional
		    Required tolerance for the solution
		maxiter : int, optional
		    Maximum iterations in finding the solution
		
		Notes
		-----
		The rate of interest is computed by iteratively solving the
		(non-linear) equation::
		
		 fv + pv*(1+rate)**nper + pmt*(1+rate*when)/rate * ((1+rate)**nper - 1) = 0
		
		for ``rate``.
		
		References
		----------
		Wheeler, D. A., E. Rathke, and R. Weir (Eds.) (2009, May). Open Document
		Format for Office Applications (OpenDocument)v1.2, Part 2: Recalculated
		Formula (OpenFormula) Format - Annotated Version, Pre-Draft 12.
		Organization for the Advancement of Structured Information Standards
		(OASIS). Billerica, MA, USA. [ODT Document]. Available:
		http://www.oasis-open.org/committees/documents.php?wg_abbrev=office-formula
		OpenDocument-formula-20090508.odt
	**/
	static public function rate(nper:Dynamic, pmt:Dynamic, pv:Dynamic, fv:Dynamic, ?when:Dynamic, ?guess:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic):Dynamic;
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
		Return the real part of the elements of the array.
		
		Parameters
		----------
		val : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray
		    Output array. If `val` is real, the type of `val` is used for the
		    output.  If `val` has complex elements, the returned type is float.
		
		See Also
		--------
		real_if_close, imag, angle
		
		Examples
		--------
		>>> a = np.array([1+2j, 3+4j, 5+6j])
		>>> a.real
		array([ 1.,  3.,  5.])
		>>> a.real = 9
		>>> a
		array([ 9.+2.j,  9.+4.j,  9.+6.j])
		>>> a.real = np.array([9, 8, 7])
		>>> a
		array([ 9.+2.j,  8.+4.j,  7.+6.j])
	**/
	static public function real(val:Dynamic):numpy.Ndarray;
	/**
		If complex input returns a real array if complex parts are close to zero.
		
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
		2.2204460492503131e-16.  You can use 'np.finfo(np.float).eps' to print
		out the machine epsilon for floats.
		
		Examples
		--------
		>>> np.finfo(np.float).eps
		2.2204460492503131e-16
		
		>>> np.real_if_close([2.1 + 4e-14j], tol=1000)
		array([ 2.1])
		>>> np.real_if_close([2.1 + 4e-13j], tol=1000)
		array([ 2.1 +4.00000000e-13j])
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
		    An array containing the complex roots of the polynomial.
		
		Raises
		------
		ValueError
		    When `p` cannot be converted to a rank-1 array.
		
		See also
		--------
		poly : Find the coefficients of a polynomial with a given sequence
		       of roots.
		polyval : Evaluate a polynomial at a point.
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
		Rotate an array by 90 degrees in the counter-clockwise direction.
		
		The first two dimensions are rotated; therefore, the array must be at
		least 2-D.
		
		Parameters
		----------
		m : array_like
		    Array of two or more dimensions.
		k : integer
		    Number of times the array is rotated by 90 degrees.
		
		Returns
		-------
		y : ndarray
		    Rotated array.
		
		See Also
		--------
		fliplr : Flip an array horizontally.
		flipud : Flip an array vertically.
		
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
	**/
	static public function rot90(m:Dynamic, ?k:Dynamic):numpy.Ndarray;
	/**
		Stack arrays in sequence vertically (row wise).
		
		Take a sequence of arrays and stack them vertically to make a single
		array. Rebuild arrays divided by `vsplit`.
		
		Parameters
		----------
		tup : sequence of ndarrays
		    Tuple containing arrays to be stacked. The arrays must have the same
		    shape along all but the first axis.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays.
		
		See Also
		--------
		stack : Join a sequence of arrays along a new axis.
		hstack : Stack arrays in sequence horizontally (column wise).
		dstack : Stack arrays in sequence depth wise (along third dimension).
		concatenate : Join a sequence of arrays along an existing axis.
		vsplit : Split array into a list of multiple sub-arrays vertically.
		
		Notes
		-----
		Equivalent to ``np.concatenate(tup, axis=0)`` if `tup` contains arrays that
		are at least 2-dimensional.
		
		Examples
		--------
		>>> a = np.array([1, 2, 3])
		>>> b = np.array([2, 3, 4])
		>>> np.vstack((a,b))
		array([[1, 2, 3],
		       [2, 3, 4]])
		
		>>> a = np.array([[1], [2], [3]])
		>>> b = np.array([[2], [3], [4]])
		>>> np.vstack((a,b))
		array([[1],
		       [2],
		       [3],
		       [2],
		       [3],
		       [4]])
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
		SyntaxError: Unsupported source construct: compiler.ast.CallFunc
	**/
	static public function safe_eval(source:Dynamic):Dynamic;
	/**
		Save an array to a binary file in NumPy ``.npy`` format.
		
		Parameters
		----------
		file : file or str
		    File or filename to which the data is saved.  If file is a file-object,
		    then the filename is unchanged.  If file is a string, a ``.npy``
		    extension will be appended to the file name if it does not already
		    have one.
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
		arr : array_like
		    Array data to be saved.
		
		See Also
		--------
		savez : Save several arrays into a ``.npz`` archive
		savetxt, load
		
		Notes
		-----
		For a description of the ``.npy`` format, see the module docstring
		of `numpy.lib.format` or the Numpy Enhancement Proposal
		http://docs.scipy.org/doc/numpy/neps/npy-format.html
		
		Examples
		--------
		>>> from tempfile import TemporaryFile
		>>> outfile = TemporaryFile()
		
		>>> x = np.arange(10)
		>>> np.save(outfile, x)
		
		>>> outfile.seek(0) # Only needed here to simulate closing & reopening file
		>>> np.load(outfile)
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
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
		X : array_like
		    Data to be saved to a text file.
		fmt : str or sequence of strs, optional
		    A single format (%10.5f), a sequence of formats, or a
		    multi-format string, e.g. 'Iteration %d -- %10.5f', in which
		    case `delimiter` is ignored. For complex `X`, the legal options
		    for `fmt` are:
		        a) a single specifier, `fmt='%.4e'`, resulting in numbers formatted
		            like `' (%s+%sj)' % (fmt, fmt)`
		        b) a full string specifying every real and imaginary part, e.g.
		            `' %.4e %+.4j %.4e %+.4j %.4e %+.4j'` for 3 columns
		        c) a list of specifiers, one per column - in this case, the real
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
		       <http://docs.python.org/library/string.html#
		       format-specification-mini-language>`_, Python Documentation.
		
		Examples
		--------
		>>> x = y = z = np.arange(0.0,5.0,1.0)
		>>> np.savetxt('test.out', x, delimiter=',')   # X is an array
		>>> np.savetxt('test.out', (x,y,z))   # x,y,z equal sized 1D arrays
		>>> np.savetxt('test.out', x, fmt='%1.4e')   # use exponential notation
	**/
	static public function savetxt(fname:Dynamic, X:Dynamic, ?fmt:Dynamic, ?delimiter:Dynamic, ?newline:Dynamic, ?header:Dynamic, ?footer:Dynamic, ?comments:Dynamic):Dynamic;
	/**
		Save several arrays into a single file in uncompressed ``.npz`` format.
		
		If arguments are passed in with no keywords, the corresponding variable
		names, in the ``.npz`` file, are 'arr_0', 'arr_1', etc. If keyword
		arguments are given, the corresponding variable names, in the ``.npz``
		file will match the keyword names.
		
		Parameters
		----------
		file : str or file
		    Either the file name (string) or an open file (file-like object)
		    where the data will be saved. If file is a string, the ``.npz``
		    extension will be appended to the file name if it is not already there.
		args : Arguments, optional
		    Arrays to save to the file. Since it is not possible for Python to
		    know the names of the arrays outside `savez`, the arrays will be saved
		    with names "arr_0", "arr_1", and so on. These arguments can be any
		    expression.
		kwds : Keyword arguments, optional
		    Arrays to save to the file. Arrays will be saved in the file with the
		    keyword names.
		
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
		description of the ``.npy`` format, see `numpy.lib.format` or the
		Numpy Enhancement Proposal
		http://docs.scipy.org/doc/numpy/neps/npy-format.html
		
		When opening the saved ``.npz`` file with `load` a `NpzFile` object is
		returned. This is a dictionary-like object which can be queried for
		its list of arrays (with the ``.files`` attribute), and for the arrays
		themselves.
		
		Examples
		--------
		>>> from tempfile import TemporaryFile
		>>> outfile = TemporaryFile()
		>>> x = np.arange(10)
		>>> y = np.sin(x)
		
		Using `savez` with \*args, the arrays are saved with default names.
		
		>>> np.savez(outfile, x, y)
		>>> outfile.seek(0) # Only needed here to simulate closing & reopening file
		>>> npzfile = np.load(outfile)
		>>> npzfile.files
		['arr_1', 'arr_0']
		>>> npzfile['arr_0']
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
		
		Using `savez` with \**kwds, the arrays are saved with the keyword names.
		
		>>> outfile = TemporaryFile()
		>>> np.savez(outfile, x=x, y=y)
		>>> outfile.seek(0)
		>>> npzfile = np.load(outfile)
		>>> npzfile.files
		['y', 'x']
		>>> npzfile['x']
		array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
	**/
	static public function savez(file:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Save several arrays into a single file in compressed ``.npz`` format.
		
		If keyword arguments are given, then filenames are taken from the keywords.
		If arguments are passed in with no keywords, then stored file names are
		arr_0, arr_1, etc.
		
		Parameters
		----------
		file : str
		    File name of ``.npz`` file.
		args : Arguments
		    Function arguments.
		kwds : Keyword arguments
		    Keywords.
		
		See Also
		--------
		numpy.savez : Save several arrays into an uncompressed ``.npz`` file format
		numpy.load : Load the files created by savez_compressed.
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
		>>> x = np.arange(10)
		>>> condlist = [x<3, x>5]
		>>> choicelist = [x, x**2]
		>>> np.select(condlist, choicelist)
		array([ 0,  1,  2,  0,  0,  0, 36, 49, 64, 81])
	**/
	static public function select(condlist:Dynamic, choicelist:Dynamic, ?_default:Dynamic):numpy.Ndarray;
	/**
		Find the set difference of two arrays.
		
		Return the sorted, unique values in `ar1` that are not in `ar2`.
		
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
		    Sorted 1D array of values in `ar1` that are not in `ar2`.
		
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
		Return the sinc function.
		
		The sinc function is :math:`\sin(\pi x)/(\pi x)`.
		
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
		       http://en.wikipedia.org/wiki/Sinc_function
		
		Examples
		--------
		>>> x = np.linspace(-4, 4, 41)
		>>> np.sinc(x)
		array([ -3.89804309e-17,  -4.92362781e-02,  -8.40918587e-02,
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
		<matplotlib.text.Text object at 0x...>
		>>> plt.ylabel("Amplitude")
		<matplotlib.text.Text object at 0x...>
		>>> plt.xlabel("X")
		<matplotlib.text.Text object at 0x...>
		>>> plt.show()
		
		It works in 2-D as well:
		
		>>> x = np.linspace(-4, 4, 401)
		>>> xx = np.outer(x, x)
		>>> plt.imshow(np.sinc(xx))
		<matplotlib.image.AxesImage object at 0x...>
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
		array([ 1.+0.j,  2.+0.j,  3.+0.j,  5.+0.j,  6.+0.j])
		
		>>> np.sort_complex([1 + 2j, 2 - 1j, 3 - 2j, 3 - 3j, 3 + 5j])
		array([ 1.+2.j,  2.-1.j,  3.-3.j,  3.-2.j,  3.+5.j])
	**/
	static public function sort_complex(a:Dynamic):Dynamic;
	/**
		Print or write to a file the source code for a Numpy object.
		
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
		Split an array into multiple sub-arrays.
		
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
		    A list of sub-arrays.
		
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
		[array([ 0.,  1.,  2.]), array([ 3.,  4.,  5.]), array([ 6.,  7.,  8.])]
		
		>>> x = np.arange(8.0)
		>>> np.split(x, [3, 5, 6, 10])
		[array([ 0.,  1.,  2.]),
		 array([ 3.,  4.]),
		 array([ 5.]),
		 array([ 6.,  7.]),
		 array([], dtype=float64)]
	**/
	static public function split(ary:Dynamic, indices_or_sections:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Run tests for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the tests to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow tests as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for test outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		doctests : bool, optional
		    If True, run doctests in module. Default is False.
		coverage : bool, optional
		    If True, report coverage of NumPy code. Default is False.
		    (This requires the `coverage module:
		     <http://nedbatchelder.com/code/modules/coverage.html>`_).
		raise_warnings : str or sequence of warnings, optional
		    This specifies which warnings to configure as 'raise' instead
		    of 'warn' during the test execution.  Valid strings are:
		
		      - "develop" : equals ``(DeprecationWarning, RuntimeWarning)``
		      - "release" : equals ``()``, don't raise on any warnings.
		
		Returns
		-------
		result : object
		    Returns the result of running the tests as a
		    ``nose.result.TextTestResult`` object.
		
		Notes
		-----
		Each NumPy module exposes `test` in its namespace to run all tests for it.
		For example, to run all tests for numpy.lib:
		
		>>> np.lib.test() #doctest: +SKIP
		
		Examples
		--------
		>>> result = np.lib.test() #doctest: +SKIP
		Running unit tests for numpy.lib
		...
		Ran 976 tests in 3.933s
		
		OK
		
		>>> result.errors #doctest: +SKIP
		[]
		>>> result.knownfail #doctest: +SKIP
		[]
	**/
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?raise_warnings:Dynamic):Dynamic;
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
	**/
	static public function tile(A:Dynamic, reps:Dynamic):numpy.Ndarray;
	/**
		Integrate along the given axis using the composite trapezoidal rule.
		
		Integrate `y` (`x`) along given axis.
		
		Parameters
		----------
		y : array_like
		    Input array to integrate.
		x : array_like, optional
		    If `x` is None, then spacing between all `y` elements is `dx`.
		dx : scalar, optional
		    If `x` is None, spacing given by `dx` is assumed. Default is 1.
		axis : int, optional
		    Specify the axis.
		
		Returns
		-------
		trapz : float
		    Definite integral as approximated by trapezoidal rule.
		
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
		.. [1] Wikipedia page: http://en.wikipedia.org/wiki/Trapezoidal_rule
		
		.. [2] Illustration image:
		       http://en.wikipedia.org/wiki/File:Composite_trapezoidal_rule_illustration.png
		
		Examples
		--------
		>>> np.trapz([1,2,3])
		4.0
		>>> np.trapz([1,2,3], x=[4,6,8])
		8.0
		>>> np.trapz([1,2,3], dx=2)
		8.0
		>>> a = np.arange(6).reshape(2, 3)
		>>> a
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.trapz(a, axis=0)
		array([ 1.5,  2.5,  3.5])
		>>> np.trapz(a, axis=1)
		array([ 2.,  8.])
	**/
	static public function trapz(y:Dynamic, ?x:Dynamic, ?dx:Dynamic, ?axis:Dynamic):Float;
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
		
		Returns
		-------
		tri : ndarray of shape (N, M)
		    Array with its lower triangle filled with ones and zero elsewhere;
		    in other words ``T[i,j] == 1`` for ``i <= j + k``, 0 otherwise.
		
		Examples
		--------
		>>> np.tri(3, 5, 2, dtype=int)
		array([[1, 1, 1, 0, 0],
		       [1, 1, 1, 1, 0],
		       [1, 1, 1, 1, 1]])
		
		>>> np.tri(3, 5, -1)
		array([[ 0.,  0.,  0.,  0.,  0.],
		       [ 1.,  0.,  0.,  0.,  0.],
		       [ 1.,  1.,  0.,  0.,  0.]])
	**/
	static public function tri(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic):Dynamic;
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
		array([ 0,  4,  5,  8,  9, 10, 12, 13, 14, 15])
		
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
		array([0, 0, 0, 1, 2, 3, 0, 2, 1])
		
		The input data type is preserved, list/tuple in means list/tuple out.
		
		>>> np.trim_zeros([0, 1, 2, 0])
		[1, 2]
	**/
	static public function trim_zeros(filt:Dynamic, ?trim:Dynamic):Dynamic;
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
		array([ 0,  1,  2,  3,  5,  6,  7, 10, 11, 15])
		
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
		...     print typechar, ' : ', np.typename(typechar)
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
		outputs in addition to the unique elements: the indices of the input array
		that give the unique values, the indices of the unique array that
		reconstruct the input array, and the number of times each unique value
		comes up in the input array.
		
		Parameters
		----------
		ar : array_like
		    Input array. This will be flattened if it is not already 1-D.
		return_index : bool, optional
		    If True, also return the indices of `ar` that result in the unique
		    array.
		return_inverse : bool, optional
		    If True, also return the indices of the unique array that can be used
		    to reconstruct `ar`.
		return_counts : bool, optional
		    If True, also return the number of times each unique value comes up
		    in `ar`.
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		unique : ndarray
		    The sorted unique values.
		unique_indices : ndarray, optional
		    The indices of the first occurrences of the unique values in the
		    (flattened) original array. Only provided if `return_index` is True.
		unique_inverse : ndarray, optional
		    The indices to reconstruct the (flattened) original array from the
		    unique array. Only provided if `return_inverse` is True.
		unique_counts : ndarray, optional
		    The number of times each of the unique values comes up in the
		    original array. Only provided if `return_counts` is True.
		
		    .. versionadded:: 1.9.0
		
		See Also
		--------
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Examples
		--------
		>>> np.unique([1, 1, 2, 2, 3, 3])
		array([1, 2, 3])
		>>> a = np.array([[1, 1], [2, 3]])
		>>> np.unique(a)
		array([1, 2, 3])
		
		Return the indices of the original array that give the unique values:
		
		>>> a = np.array(['a', 'b', 'b', 'c', 'a'])
		>>> u, indices = np.unique(a, return_index=True)
		>>> u
		array(['a', 'b', 'c'],
		       dtype='|S1')
		>>> indices
		array([0, 1, 3])
		>>> a[indices]
		array(['a', 'b', 'c'],
		       dtype='|S1')
		
		Reconstruct the input array from the unique values:
		
		>>> a = np.array([1, 2, 6, 4, 2, 3, 2])
		>>> u, indices = np.unique(a, return_inverse=True)
		>>> u
		array([1, 2, 3, 4, 6])
		>>> indices
		array([0, 1, 4, 3, 1, 2, 1])
		>>> u[indices]
		array([1, 2, 6, 4, 2, 3, 2])
	**/
	static public function unique(ar:Dynamic, ?return_index:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic):Dynamic;
	/**
		unpackbits(myarray, axis=None)
		
		Unpacks elements of a uint8 array into a binary-valued output array.
		
		Each element of `myarray` represents a bit-field that should be unpacked
		into a binary-valued output array. The shape of the output array is either
		1-D (if `axis` is None) or the same shape as the input array with unpacking
		done along the axis specified.
		
		Parameters
		----------
		myarray : ndarray, uint8 type
		   Input array.
		axis : int, optional
		   Unpacks along this axis.
		
		Returns
		-------
		unpacked : ndarray, uint8 type
		   The elements are binary-valued (0 or 1).
		
		See Also
		--------
		packbits : Packs the elements of a binary-valued array into bits in a uint8
		           array.
		
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
	**/
	static public function unpackbits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unravel_index(indices, dims, order='C')
		
		Converts a flat index or array of flat indices into a tuple
		of coordinate arrays.
		
		Parameters
		----------
		indices : array_like
		    An integer array whose elements are indices into the flattened
		    version of an array of dimensions ``dims``. Before version 1.6.0,
		    this function accepted just one index value.
		dims : tuple of ints
		    The shape of the array to use for unraveling ``indices``.
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
		Unwrap by changing deltas between values to 2*pi complement.
		
		Unwrap radian phase `p` by changing absolute jumps greater than
		`discont` to their 2*pi complement along the given axis.
		
		Parameters
		----------
		p : array_like
		    Input array.
		discont : float, optional
		    Maximum discontinuity between values, default is ``pi``.
		axis : int, optional
		    Axis along which unwrap will operate, default is the last axis.
		
		Returns
		-------
		out : ndarray
		    Output array.
		
		See Also
		--------
		rad2deg, deg2rad
		
		Notes
		-----
		If the discontinuity in `p` is smaller than ``pi``, but larger than
		`discont`, no unwrapping is done because taking the 2*pi complement
		would only make the discontinuity larger.
		
		Examples
		--------
		>>> phase = np.linspace(0, np.pi, num=5)
		>>> phase[3:] += np.pi
		>>> phase
		array([ 0.        ,  0.78539816,  1.57079633,  5.49778714,  6.28318531])
		>>> np.unwrap(phase)
		array([ 0.        ,  0.78539816,  1.57079633, -0.78539816,  0.        ])
	**/
	static public function unwrap(p:Dynamic, ?discont:Dynamic, ?axis:Dynamic):numpy.Ndarray;
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
		48.000000000000043
		>>> (5-3)*(5-2)*(5-1)*(3-2)*(3-1)*(2-1)
		48
	**/
	static public function vander(x:Dynamic, ?N:Dynamic, ?increasing:Dynamic):Dynamic;
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
		array([[  0.,   1.,   2.,   3.],
		       [  4.,   5.,   6.,   7.],
		       [  8.,   9.,  10.,  11.],
		       [ 12.,  13.,  14.,  15.]])
		>>> np.vsplit(x, 2)
		[array([[ 0.,  1.,  2.,  3.],
		       [ 4.,  5.,  6.,  7.]]),
		 array([[  8.,   9.,  10.,  11.],
		       [ 12.,  13.,  14.,  15.]])]
		>>> np.vsplit(x, np.array([3, 6]))
		[array([[  0.,   1.,   2.,   3.],
		       [  4.,   5.,   6.,   7.],
		       [  8.,   9.,  10.,  11.]]),
		 array([[ 12.,  13.,  14.,  15.]]),
		 array([], dtype=float64)]
		
		With a higher dimensional array the split is still along the first axis.
		
		>>> x = np.arange(8.0).reshape(2, 2, 2)
		>>> x
		array([[[ 0.,  1.],
		        [ 2.,  3.]],
		       [[ 4.,  5.],
		        [ 6.,  7.]]])
		>>> np.vsplit(x, 2)
		[array([[[ 0.,  1.],
		        [ 2.,  3.]]]),
		 array([[[ 4.,  5.],
		        [ 6.,  7.]]])]
	**/
	static public function vsplit(ary:Dynamic, indices_or_sections:Dynamic):Dynamic;
	/**
		Print the Numpy arrays in the given dictionary.
		
		If there is no dictionary passed in or `vardict` is None then returns
		Numpy arrays in the globals() dictionary (all Numpy arrays in the
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
		a               10               40               int32
		b               20               160              float64
		Upper bound on total bytes  =       200
		
		>>> d = {'x': np.arange(2.0), 'y': np.arange(3.0), 'txt': 'Some str',
		... 'idx':5}
		>>> np.who(d)
		Name            Shape            Bytes            Type
		===========================================================
		y               3                24               float64
		x               2                16               float64
		Upper bound on total bytes  =       40
	**/
	static public function who(?vardict:Dynamic):Dynamic;
}