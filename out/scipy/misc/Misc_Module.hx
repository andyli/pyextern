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
		val : int, float, ndarray
		    The total number of combinations.
		
		See Also
		--------
		binom : Binomial coefficient ufunc
		
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
	static public function _comb(N:Dynamic, k:Dynamic, ?exact:Dynamic, ?repetition:Dynamic):Dynamic;
	/**
		The factorial of a number or array of numbers.
		
		The factorial of non-negative integer `n` is the product of all
		positive integers less than or equal to `n`::
		
		    n! = n * (n - 1) * (n - 2) * ... * 1
		
		Parameters
		----------
		n : int or array_like of ints
		    Input values.  If ``n < 0``, the return value is 0.
		exact : bool, optional
		    If True, calculate the answer exactly using long integer arithmetic.
		    If False, result is approximated in floating point rapidly using the
		    `gamma` function.
		    Default is False.
		
		Returns
		-------
		nf : float or int or ndarray
		    Factorial of `n`, as integer or float depending on `exact`.
		
		Notes
		-----
		For arrays with ``exact=True``, the factorial is computed only once, for
		the largest input, with each other result computed in the process.
		The output dtype is increased to ``int64`` or ``object`` if necessary.
		
		With ``exact=False`` the factorial is approximated using the gamma
		function:
		
		.. math:: n! = \Gamma(n+1)
		
		Examples
		--------
		>>> from scipy.special import factorial
		>>> arr = np.array([3, 4, 5])
		>>> factorial(arr, exact=False)
		array([   6.,   24.,  120.])
		>>> factorial(arr, exact=True)
		array([  6,  24, 120])
		>>> factorial(5, exact=True)
		120L
	**/
	static public function _fact(n:Dynamic, ?exact:Dynamic):Dynamic;
	/**
		Double factorial.
		
		This is the factorial with every second value skipped.  E.g., ``7!! = 7 * 5
		* 3 * 1``.  It can be approximated numerically as::
		
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
	static public function _fact2(n:Dynamic, ?exact:Dynamic):Dynamic;
	/**
		Multifactorial of n of order k, n(!!...!).
		
		This is the multifactorial of n skipping k values.  For example,
		
		  factorialk(17, 4) = 17!!!! = 17 * 13 * 9 * 5 * 1
		
		In particular, for any integer ``n``, we have
		
		  factorialk(n, 1) = factorial(n)
		
		  factorialk(n, 2) = factorial2(n)
		
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
		    Multifactorial of `n`.
		
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
	static public function _factk(n:Dynamic, k:Dynamic, ?exact:Dynamic):Int;
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
	/**
		Compute the log of the sum of exponentials of input elements.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : None or int or tuple of ints, optional
		    Axis or axes over which the sum is taken. By default `axis` is None,
		    and all elements are summed.
		
		    .. versionadded:: 0.11.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original array.
		
		    .. versionadded:: 0.15.0
		b : array-like, optional
		    Scaling factor for exp(`a`) must be of the same shape as `a` or
		    broadcastable to `a`. These values may be negative in order to
		    implement subtraction.
		
		    .. versionadded:: 0.12.0
		return_sign : bool, optional
		    If this is set to True, the result will be a pair containing sign
		    information; if False, results that are negative will be returned
		    as NaN. Default is False (no sign information).
		
		    .. versionadded:: 0.16.0
		
		Returns
		-------
		res : ndarray
		    The result, ``np.log(np.sum(np.exp(a)))`` calculated in a numerically
		    more stable way. If `b` is given then ``np.log(np.sum(b*np.exp(a)))``
		    is returned.
		sgn : ndarray
		    If return_sign is True, this will be an array of floating-point
		    numbers matching res and +1, 0, or -1 depending on the sign
		    of the result. If False, only one result is returned.
		
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
		>>> from scipy.special import logsumexp
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
		
		Returning a sign flag
		
		>>> logsumexp([1,2],b=[1,-1],return_sign=True)
		(1.5413248546129181, -1.0)
		
		Notice that `logsumexp` does not directly support masked arrays. To use it
		on a masked array, convert the mask into zero weights:
		
		>>> a = np.ma.array([np.log(2), 2, np.log(3)],
		...                  mask=[False, True, False])
		>>> b = (~a.mask).astype(int)
		>>> logsumexp(a.data, b=b), np.log(5)
		1.6094379124341005, 1.6094379124341005
	**/
	static public function _lsm(a:Dynamic, ?axis:Dynamic, ?b:Dynamic, ?keepdims:Dynamic, ?return_sign:Dynamic):Dynamic;
	static public var _msg : Dynamic;
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
		    The Pade approximation of the polynomial defined by `an` is
		    ``p(x)/q(x)``.
		
		Examples
		--------
		>>> from scipy.interpolate import pade
		>>> e_exp = [1.0, 1.0, 1.0/2.0, 1.0/6.0, 1.0/24.0, 1.0/120.0]
		>>> p, q = pade(e_exp, 2)
		
		>>> e_exp.reverse()
		>>> e_poly = np.poly1d(e_exp)
		
		Compare ``e_poly(x)`` and the Pade approximation ``p(x)/q(x)``
		
		>>> e_poly(1)
		2.7166666666666668
		
		>>> p(1)/q(1)
		2.7179487179487181
	**/
	static public function _pade(an:Dynamic, m:Dynamic):Dynamic;
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
	static public function _source(object:Dynamic, ?output:Dynamic):Dynamic;
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
	static public function _who(?vardict:Dynamic):Dynamic;
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
		`comb` is deprecated!
		Importing `comb` from scipy.misc is deprecated in scipy 1.0.0. Use `scipy.special.comb` instead.
		
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
		    val : int, float, ndarray
		        The total number of combinations.
		
		    See Also
		    --------
		    binom : Binomial coefficient ufunc
		
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
	static public function comb(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		Load an electrocardiogram as an example for a one-dimensional signal.
		
		The returned signal is a 5 minute long electrocardiogram (ECG), a medical
		recording of the heart's electrical activity, sampled at 360 Hz.
		
		Returns
		-------
		ecg : ndarray
		    The electrocardiogram in millivolt (mV) sampled at 360 Hz.
		
		Notes
		-----
		The provided signal is an excerpt (19:35 to 24:35) from the `record 208`_
		(lead MLII) provided by the MIT-BIH Arrhythmia Database [1]_ on
		PhysioNet [2]_. The excerpt includes noise induced artifacts, typical
		heartbeats as well as pathological changes.
		
		.. _record 208: https://physionet.org/physiobank/database/html/mitdbdir/records.htm#208
		
		.. versionadded:: 1.1.0
		
		References
		----------
		.. [1] Moody GB, Mark RG. The impact of the MIT-BIH Arrhythmia Database.
		       IEEE Eng in Med and Biol 20(3):45-50 (May-June 2001).
		       (PMID: 11446209); https://doi.org/10.13026/C2F305
		.. [2] Goldberger AL, Amaral LAN, Glass L, Hausdorff JM, Ivanov PCh,
		       Mark RG, Mietus JE, Moody GB, Peng C-K, Stanley HE. PhysioBank,
		       PhysioToolkit, and PhysioNet: Components of a New Research Resource
		       for Complex Physiologic Signals. Circulation 101(23):e215-e220;
		       https://doi.org/10.1161/01.CIR.101.23.e215
		
		Examples
		--------
		>>> from scipy.misc import electrocardiogram
		>>> ecg = electrocardiogram()
		>>> ecg
		array([-0.245, -0.215, -0.185, ..., -0.405, -0.395, -0.385])
		>>> ecg.shape, ecg.mean(), ecg.std()
		((108000,), -0.16510875, 0.5992473991177294)
		
		As stated the signal features several areas with a different morphology.
		E.g. the first few seconds show the electrical activity of a heart in
		normal sinus rhythm as seen below.
		
		>>> import matplotlib.pyplot as plt
		>>> fs = 360
		>>> time = np.arange(ecg.size) / fs
		>>> plt.plot(time, ecg)
		>>> plt.xlabel("time in s")
		>>> plt.ylabel("ECG in mV")
		>>> plt.xlim(9, 10.2)
		>>> plt.ylim(-1, 1.5)
		>>> plt.show()
		
		After second 16 however, the first premature ventricular contractions, also
		called extrasystoles, appear. These have a different morphology compared to
		typical heartbeats. The difference can easily be observed in the following
		plot.
		
		>>> plt.plot(time, ecg)
		>>> plt.xlabel("time in s")
		>>> plt.ylabel("ECG in mV")
		>>> plt.xlim(46.5, 50)
		>>> plt.ylim(-2, 1.5)
		>>> plt.show()
		
		At several points large artifacts disturb the recording, e.g.:
		
		>>> plt.plot(time, ecg)
		>>> plt.xlabel("time in s")
		>>> plt.ylabel("ECG in mV")
		>>> plt.xlim(207, 215)
		>>> plt.ylim(-2, 3.5)
		>>> plt.show()
		
		Finally, examining the power spectrum reveals that most of the biosignal is
		made up of lower frequencies. At 60 Hz the noise induced by the mains
		electricity can be clearly observed.
		
		>>> from scipy.signal import welch
		>>> f, Pxx = welch(ecg, fs=fs, nperseg=2048, scaling="spectrum")
		>>> plt.semilogy(f, Pxx)
		>>> plt.xlabel("Frequency in Hz")
		>>> plt.ylabel("Power spectrum of the ECG in mV**2")
		>>> plt.xlim(f[[0, -1]])
		>>> plt.show()
	**/
	static public function electrocardiogram():Dynamic;
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
		`factorial` is deprecated!
		Importing `factorial` from scipy.misc is deprecated in scipy 1.0.0. Use `scipy.special.factorial` instead.
		
		
		    The factorial of a number or array of numbers.
		
		    The factorial of non-negative integer `n` is the product of all
		    positive integers less than or equal to `n`::
		
		        n! = n * (n - 1) * (n - 2) * ... * 1
		
		    Parameters
		    ----------
		    n : int or array_like of ints
		        Input values.  If ``n < 0``, the return value is 0.
		    exact : bool, optional
		        If True, calculate the answer exactly using long integer arithmetic.
		        If False, result is approximated in floating point rapidly using the
		        `gamma` function.
		        Default is False.
		
		    Returns
		    -------
		    nf : float or int or ndarray
		        Factorial of `n`, as integer or float depending on `exact`.
		
		    Notes
		    -----
		    For arrays with ``exact=True``, the factorial is computed only once, for
		    the largest input, with each other result computed in the process.
		    The output dtype is increased to ``int64`` or ``object`` if necessary.
		
		    With ``exact=False`` the factorial is approximated using the gamma
		    function:
		
		    .. math:: n! = \Gamma(n+1)
		
		    Examples
		    --------
		    >>> from scipy.special import factorial
		    >>> arr = np.array([3, 4, 5])
		    >>> factorial(arr, exact=False)
		    array([   6.,   24.,  120.])
		    >>> factorial(arr, exact=True)
		    array([  6,  24, 120])
		    >>> factorial(5, exact=True)
		    120L
		
		    
	**/
	static public function factorial(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`factorial2` is deprecated!
		Importing `factorial2` from scipy.misc is deprecated in scipy 1.0.0. Use `scipy.special.factorial2` instead.
		
		Double factorial.
		
		    This is the factorial with every second value skipped.  E.g., ``7!! = 7 * 5
		    * 3 * 1``.  It can be approximated numerically as::
		
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
	static public function factorial2(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`factorialk` is deprecated!
		Importing `factorialk` from scipy.misc is deprecated in scipy 1.0.0. Use `scipy.special.factorialk` instead.
		
		Multifactorial of n of order k, n(!!...!).
		
		    This is the multifactorial of n skipping k values.  For example,
		
		      factorialk(17, 4) = 17!!!! = 17 * 13 * 9 * 5 * 1
		
		    In particular, for any integer ``n``, we have
		
		      factorialk(n, 1) = factorial(n)
		
		      factorialk(n, 2) = factorial2(n)
		
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
		        Multifactorial of `n`.
		
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
	static public function factorialk(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	static public function info(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`logsumexp` is deprecated!
		Importing `logsumexp` from scipy.misc is deprecated in scipy 1.0.0. Use `scipy.special.logsumexp` instead.
		
		Compute the log of the sum of exponentials of input elements.
		
		    Parameters
		    ----------
		    a : array_like
		        Input array.
		    axis : None or int or tuple of ints, optional
		        Axis or axes over which the sum is taken. By default `axis` is None,
		        and all elements are summed.
		
		        .. versionadded:: 0.11.0
		    keepdims : bool, optional
		        If this is set to True, the axes which are reduced are left in the
		        result as dimensions with size one. With this option, the result
		        will broadcast correctly against the original array.
		
		        .. versionadded:: 0.15.0
		    b : array-like, optional
		        Scaling factor for exp(`a`) must be of the same shape as `a` or
		        broadcastable to `a`. These values may be negative in order to
		        implement subtraction.
		
		        .. versionadded:: 0.12.0
		    return_sign : bool, optional
		        If this is set to True, the result will be a pair containing sign
		        information; if False, results that are negative will be returned
		        as NaN. Default is False (no sign information).
		
		        .. versionadded:: 0.16.0
		
		    Returns
		    -------
		    res : ndarray
		        The result, ``np.log(np.sum(np.exp(a)))`` calculated in a numerically
		        more stable way. If `b` is given then ``np.log(np.sum(b*np.exp(a)))``
		        is returned.
		    sgn : ndarray
		        If return_sign is True, this will be an array of floating-point
		        numbers matching res and +1, 0, or -1 depending on the sign
		        of the result. If False, only one result is returned.
		
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
		    >>> from scipy.special import logsumexp
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
		
		    Returning a sign flag
		
		    >>> logsumexp([1,2],b=[1,-1],return_sign=True)
		    (1.5413248546129181, -1.0)
		
		    Notice that `logsumexp` does not directly support masked arrays. To use it
		    on a masked array, convert the mask into zero weights:
		
		    >>> a = np.ma.array([np.log(2), 2, np.log(3)],
		    ...                  mask=[False, True, False])
		    >>> b = (~a.mask).astype(int)
		    >>> logsumexp(a.data, b=b), np.log(5)
		    1.6094379124341005, 1.6094379124341005
		
		    
	**/
	static public function logsumexp(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		`pade` is deprecated!
		Importing `pade` from scipy.misc is deprecated in scipy 1.0.0. Use `scipy.interpolate.pade` instead.
		
		
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
		        The Pade approximation of the polynomial defined by `an` is
		        ``p(x)/q(x)``.
		
		    Examples
		    --------
		    >>> from scipy.interpolate import pade
		    >>> e_exp = [1.0, 1.0, 1.0/2.0, 1.0/6.0, 1.0/24.0, 1.0/120.0]
		    >>> p, q = pade(e_exp, 2)
		
		    >>> e_exp.reverse()
		    >>> e_poly = np.poly1d(e_exp)
		
		    Compare ``e_poly(x)`` and the Pade approximation ``p(x)/q(x)``
		
		    >>> e_poly(1)
		    2.7166666666666668
		
		    >>> p(1)/q(1)
		    2.7179487179487181
		
		    
	**/
	static public function pade(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		`source` is deprecated!
		Importing `source` from scipy.misc is deprecated in scipy 1.0.0. Use `numpy.source` instead.
		
		
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
	static public function source(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?tests:Dynamic):Dynamic;
	/**
		`who` is deprecated!
		Importing `who` from scipy.misc is deprecated in scipy 1.0.0. Use `numpy.who` instead.
		
		
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
	static public function who(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
}