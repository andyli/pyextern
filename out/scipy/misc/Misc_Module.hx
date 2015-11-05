/* This file is generated, do not edit! */
package scipy.misc;
@:pythonImport("scipy.misc") extern class Misc_Module {
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
	static public function _info(?object:Dynamic, ?maxwidth:Dynamic, ?output:Dynamic, ?toplevel:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
		Byte scales an array (image).
		
		Byte scaling means converting the input image to uint8 dtype and scaling
		the range to ``(low, high)`` (default 0-255).
		If the input image already has dtype uint8, no scaling is done.
		
		Parameters
		----------
		data : ndarray
		    PIL image data array.
		cmin : scalar, optional
		    Bias scaling of small values. Default is ``data.min()``.
		cmax : scalar, optional
		    Bias scaling of large values. Default is ``data.max()``.
		high : scalar, optional
		    Scale max value to `high`.  Default is 255.
		low : scalar, optional
		    Scale min value to `low`.  Default is 0.
		
		Returns
		-------
		img_array : uint8 ndarray
		    The byte-scaled array.
		
		Examples
		--------
		>>> img = array([[ 91.06794177,   3.39058326,  84.4221549 ],
		                 [ 73.88003259,  80.91433048,   4.88878881],
		                 [ 51.53875334,  34.45808177,  27.5873488 ]])
		>>> bytescale(img)
		array([[255,   0, 236],
		       [205, 225,   4],
		       [140,  90,  70]], dtype=uint8)
		>>> bytescale(img, high=200, low=100)
		array([[200, 100, 192],
		       [180, 188, 102],
		       [155, 135, 128]], dtype=uint8)
		>>> bytescale(img, cmin=0, cmax=255)
		array([[91,  3, 84],
		       [74, 81,  5],
		       [52, 34, 28]], dtype=uint8)
	**/
	static public function bytescale(data:Dynamic, ?cmin:Dynamic, ?cmax:Dynamic, ?high:Dynamic, ?low:Dynamic):Dynamic;
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
		The number of combinations of N things taken k at a time.
		
		This is often expressed as "N choose k".
		
		Parameters
		----------
		N : int, ndarray
		    Number of things.
		k : int, ndarray
		    Number of elements taken.
		exact : bool, optional
		    If `exact` is False, then floating point precision is used, otherwise
		    exact long integer is computed.
		repetition : bool, optional
		    If `repetition` is True, then the number of combinations with
		    repetition is computed.
		
		Returns
		-------
		val : int, ndarray
		    The total number of combinations.
		
		Notes
		-----
		- Array arguments accepted only for exact=False case.
		- If k > N, N < 0, or k < 0, then a 0 is returned.
		
		Examples
		--------
		>>> from scipy.special import comb
		>>> k = np.array([3, 4])
		>>> n = np.array([10, 10])
		>>> comb(n, k, exact=False)
		array([ 120.,  210.])
		>>> comb(10, 3, exact=True)
		120L
		>>> comb(10, 3, exact=True, repetition=True)
		220L
	**/
	static public function comb(N:Dynamic, k:Dynamic, ?exact:Dynamic, ?repetition:Dynamic):Dynamic;
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
		dx : int, optional
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
		>>> def f(x):
		...     return x**3 + x**2
		...
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
		    If True then return color image, otherwise return an 8-bit gray-scale
		
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
		230
		>>> face.dtype
		dtype('uint8')
		
		>>> import matplotlib.pyplot as plt
		>>> plt.gray()
		>>> plt.imshow(face)
		>>> plt.show()
	**/
	static public function face(?gray:Dynamic):Dynamic;
	/**
		The factorial function, n! = special.gamma(n+1).
		
		If exact is 0, then floating point precision is used, otherwise
		exact long integer is computed.
		
		- Array argument accepted only for exact=False case.
		- If n<0, the return value is 0.
		
		Parameters
		----------
		n : int or array_like of ints
		    Calculate ``n!``.  Arrays are only supported with `exact` set
		    to False.  If ``n < 0``, the return value is 0.
		exact : bool, optional
		    The result can be approximated rapidly using the gamma-formula
		    above.  If `exact` is set to True, calculate the
		    answer exactly using integer arithmetic. Default is False.
		
		Returns
		-------
		nf : float or int
		    Factorial of `n`, as an integer or a float depending on `exact`.
		
		Examples
		--------
		>>> from scipy.special import factorial
		>>> arr = np.array([3,4,5])
		>>> factorial(arr, exact=False)
		array([   6.,   24.,  120.])
		>>> factorial(5, exact=True)
		120L
	**/
	static public function factorial(n:Dynamic, ?exact:Dynamic):Dynamic;
	/**
		Double factorial.
		
		This is the factorial with every second value skipped, i.e.,
		``7!! = 7 * 5 * 3 * 1``.  It can be approximated numerically as::
		
		  n!! = special.gamma(n/2+1)*2**((m+1)/2)/sqrt(pi)  n odd
		      = 2**(n/2) * (n/2)!                           n even
		
		Parameters
		----------
		n : int or array_like
		    Calculate ``n!!``.  Arrays are only supported with `exact` set
		    to False.  If ``n < 0``, the return value is 0.
		exact : bool, optional
		    The result can be approximated rapidly using the gamma-formula
		    above (default).  If `exact` is set to True, calculate the
		    answer exactly using integer arithmetic.
		
		Returns
		-------
		nff : float or int
		    Double factorial of `n`, as an int or a float depending on
		    `exact`.
		
		Examples
		--------
		>>> from scipy.special import factorial2
		>>> factorial2(7, exact=False)
		array(105.00000000000001)
		>>> factorial2(7, exact=True)
		105L
	**/
	static public function factorial2(n:Dynamic, ?exact:Dynamic):Dynamic;
	/**
		n(!!...!)  = multifactorial of order k
		k times
		
		Parameters
		----------
		n : int
		    Calculate multifactorial. If `n` < 0, the return value is 0.
		k : int
		    Order of multifactorial.
		exact : bool, optional
		    If exact is set to True, calculate the answer exactly using
		    integer arithmetic.
		
		Returns
		-------
		val : int
		    Multi factorial of `n`.
		
		Raises
		------
		NotImplementedError
		    Raises when exact is False
		
		Examples
		--------
		>>> from scipy.special import factorialk
		>>> factorialk(5, 1, exact=True)
		120L
		>>> factorialk(5, 3, exact=True)
		10L
	**/
	static public function factorialk(n:Dynamic, k:Dynamic, ?exact:Dynamic):Int;
	/**
		Return a copy of a PIL image as a numpy array.
		
		Parameters
		----------
		im : PIL image
		    Input image.
		flatten : bool
		    If true, convert the output to grey-scale.
		
		Returns
		-------
		fromimage : ndarray
		    The different colour bands/channels are stored in the
		    third dimension, such that a grey-image is MxN, an
		    RGB-image MxNx3 and an RGBA-image MxNx4.
	**/
	static public function fromimage(im:Dynamic, ?flatten:Dynamic):Dynamic;
	/**
		Simple filtering of an image.
		
		Parameters
		----------
		arr : ndarray
		    The array of Image in which the filter is to be applied.
		ftype : str
		    The filter that has to be applied. Legal values are:
		    'blur', 'contour', 'detail', 'edge_enhance', 'edge_enhance_more',
		    'emboss', 'find_edges', 'smooth', 'smooth_more', 'sharpen'.
		
		Returns
		-------
		imfilter : ndarray
		    The array with filter applied.
		
		Raises
		------
		ValueError
		    *Unknown filter type.*  If the filter you are trying
		    to apply is unsupported.
	**/
	static public function imfilter(arr:Dynamic, ftype:Dynamic):Dynamic;
	/**
		Read an image from a file as an array.
		
		Parameters
		----------
		name : str or file object
		    The file name or file object to be read.
		flatten : bool, optional
		    If True, flattens the color layers into a single gray-scale layer.
		
		Returns
		-------
		imread : ndarray
		    The array obtained by reading image from file `imfile`.
		
		Notes
		-----
		The image is flattened by calling convert('F') on
		the resulting image object.
	**/
	static public function imread(name:Dynamic, ?flatten:Dynamic):Dynamic;
	/**
		Resize an image.
		
		Parameters
		----------
		arr : ndarray
		    The array of image to be resized.
		
		size : int, float or tuple
		    * int   - Percentage of current size.
		    * float - Fraction of current size.
		    * tuple - Size of the output image.
		
		interp : str, optional
		    Interpolation to use for re-sizing ('nearest', 'bilinear', 'bicubic'
		    or 'cubic').
		
		mode : str, optional
		    The PIL image mode ('P', 'L', etc.) to convert `arr` before resizing.
		
		Returns
		-------
		imresize : ndarray
		    The resized array of image.
		
		See Also
		--------
		toimage : Implicitly used to convert `arr` according to `mode`.
		scipy.ndimage.zoom : More generic implementation that does not use PIL.
	**/
	static public function imresize(arr:Dynamic, size:Dynamic, ?interp:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Rotate an image counter-clockwise by angle degrees.
		
		Parameters
		----------
		arr : ndarray
		    Input array of image to be rotated.
		angle : float
		    The angle of rotation.
		interp : str, optional
		    Interpolation
		
		    - 'nearest' :  for nearest neighbor
		    - 'bilinear' : for bilinear
		    - 'cubic' : cubic
		    - 'bicubic' : for bicubic
		
		Returns
		-------
		imrotate : ndarray
		    The rotated array of image.
	**/
	static public function imrotate(arr:Dynamic, angle:Dynamic, ?interp:Dynamic):Dynamic;
	/**
		Save an array as an image.
		
		Parameters
		----------
		name : str or file object
		    Output file name or file object.
		arr : ndarray, MxN or MxNx3 or MxNx4
		    Array containing image values.  If the shape is ``MxN``, the array
		    represents a grey-level image.  Shape ``MxNx3`` stores the red, green
		    and blue bands along the last dimension.  An alpha layer may be
		    included, specified as the last colour band of an ``MxNx4`` array.
		format : str
		    Image format. If omitted, the format to use is determined from the
		    file name extension. If a file object was used instead of a file name,
		    this parameter should always be used.
		
		Examples
		--------
		Construct an array of gradient intensity values and save to file:
		
		>>> x = np.zeros((255, 255))
		>>> x = np.zeros((255, 255), dtype=np.uint8)
		>>> x[:] = np.arange(255)
		>>> imsave('/tmp/gradient.png', x)
		
		Construct an array with three colour bands (R, G, B) and store to file:
		
		>>> rgb = np.zeros((255, 255, 3), dtype=np.uint8)
		>>> rgb[..., 0] = np.arange(255)
		>>> rgb[..., 1] = 55
		>>> rgb[..., 2] = 1 - np.arange(255)
		>>> imsave('/tmp/rgb_gradient.png', rgb)
	**/
	static public function imsave(name:Dynamic, arr:Dynamic, ?format:Dynamic):Dynamic;
	/**
		Simple showing of an image through an external viewer.
		
		Uses the image viewer specified by the environment variable
		SCIPY_PIL_IMAGE_VIEWER, or if that is not defined then `see`,
		to view a temporary file generated from array data.
		
		Parameters
		----------
		arr : ndarray
		    Array of image data to show.
		
		Returns
		-------
		None
		
		Examples
		--------
		>>> a = np.tile(np.arange(255), (255,1))
		>>> from scipy import misc
		>>> misc.pilutil.imshow(a)
	**/
	static public function imshow(arr:Dynamic):Dynamic;
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
		Get classic image processing example image, Lena, at 8-bit grayscale
		bit-depth, 512 x 512 size.
		
		Parameters
		----------
		None
		
		Returns
		-------
		lena : ndarray
		    Lena image
		
		Notes
		-----
		Though safe for work in most places, this sexualized image is drawn from
		Playboy and makes some viewers uncomfortable.  It has been very widely
		used as an example in image processing and is therefore made available
		for compatibility.  For new code that needs an example image we recommend
		`face` or `ascent`.
		
		Examples
		--------
		>>> import scipy.misc
		>>> lena = scipy.misc.lena()
		>>> lena.shape
		(512, 512)
		>>> lena.max()
		245
		>>> lena.dtype
		dtype('int32')
		
		>>> import matplotlib.pyplot as plt
		>>> plt.gray()
		>>> plt.imshow(lena)
		>>> plt.show()
	**/
	static public function lena():Dynamic;
	/**
		Compute the log of the sum of exponentials of input elements.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : None or int or tuple of ints, optional
		    Axis or axes over which the sum is taken. By default `axis` is None,
		    and all elements are summed. Tuple of ints is not accepted if NumPy
		    version is lower than 1.7.0.
		
		    .. versionadded:: 0.11.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original array.
		
		    .. versionadded:: 0.15.0
		b : array-like, optional
		    Scaling factor for exp(`a`) must be of the same shape as `a` or
		    broadcastable to `a`.
		
		    .. versionadded:: 0.12.0
		
		Returns
		-------
		res : ndarray
		    The result, ``np.log(np.sum(np.exp(a)))`` calculated in a numerically
		    more stable way. If `b` is given then ``np.log(np.sum(b*np.exp(a)))``
		    is returned.
		
		See Also
		--------
		numpy.logaddexp, numpy.logaddexp2
		
		Notes
		-----
		Numpy has a logaddexp function which is very similar to `logsumexp`, but
		only handles two arguments. `logaddexp.reduce` is similar to this
		function, but may be less stable.
		
		Examples
		--------
		>>> from scipy.misc import logsumexp
		>>> a = np.arange(10)
		>>> np.log(np.sum(np.exp(a)))
		9.4586297444267107
		>>> logsumexp(a)
		9.4586297444267107
		
		With weights
		
		>>> a = np.arange(10)
		>>> b = np.arange(10, 0, -1)
		>>> logsumexp(a, b=b)
		9.9170178533034665
		>>> np.log(np.sum(b*np.exp(a)))
		9.9170178533034647
	**/
	static public function logsumexp(a:Dynamic, ?axis:Dynamic, ?b:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return Pade approximation to a polynomial as the ratio of two polynomials.
		
		Parameters
		----------
		an : (N,) array_like
		    Taylor series coefficients.
		m : int
		    The order of the returned approximating polynomials.
		
		Returns
		-------
		p, q : Polynomial class
		    The pade approximation of the polynomial defined by `an` is
		    `p(x)/q(x)`.
		
		Examples
		--------
		>>> from scipy import misc
		>>> e_exp = [1.0, 1.0, 1.0/2.0, 1.0/6.0, 1.0/24.0, 1.0/120.0]
		>>> p, q = misc.pade(e_exp, 2)
		
		>>> e_exp.reverse()
		>>> e_poly = np.poly1d(e_exp)
		
		Compare ``e_poly(x)`` and the pade approximation ``p(x)/q(x)``
		
		>>> e_poly(1)
		2.7166666666666668
		
		>>> p(1)/q(1)
		2.7179487179487181
	**/
	static public function pade(an:Dynamic, m:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
		Takes a numpy array and returns a PIL image.
		
		The mode of the PIL image depends on the array shape and the `pal` and
		`mode` keywords.
		
		For 2-D arrays, if `pal` is a valid (N,3) byte-array giving the RGB values
		(from 0 to 255) then ``mode='P'``, otherwise ``mode='L'``, unless mode
		is given as 'F' or 'I' in which case a float and/or integer array is made.
		
		Notes
		-----
		For 3-D arrays, the `channel_axis` argument tells which dimension of the
		array holds the channel data.
		
		For 3-D arrays if one of the dimensions is 3, the mode is 'RGB'
		by default or 'YCbCr' if selected.
		
		The numpy array must be either 2 dimensional or 3 dimensional.
	**/
	static public function toimage(arr:Dynamic, ?high:Dynamic, ?low:Dynamic, ?cmin:Dynamic, ?cmax:Dynamic, ?pal:Dynamic, ?mode:Dynamic, ?channel_axis:Dynamic):Dynamic;
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