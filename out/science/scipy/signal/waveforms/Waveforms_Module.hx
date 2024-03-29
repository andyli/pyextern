/* This file is generated, do not edit! */
package scipy.signal.waveforms;
@:pythonImport("scipy.signal.waveforms") extern class Waveforms_Module {
	/**
		Frequency-swept cosine generator.
		
		In the following, 'Hz' should be interpreted as 'cycles per unit';
		there is no requirement here that the unit is one second.  The
		important distinction is that the units of rotation are cycles, not
		radians. Likewise, `t` could be a measurement of space instead of time.
		
		Parameters
		----------
		t : array_like
		    Times at which to evaluate the waveform.
		f0 : float
		    Frequency (e.g. Hz) at time t=0.
		t1 : float
		    Time at which `f1` is specified.
		f1 : float
		    Frequency (e.g. Hz) of the waveform at time `t1`.
		method : {'linear', 'quadratic', 'logarithmic', 'hyperbolic'}, optional
		    Kind of frequency sweep.  If not given, `linear` is assumed.  See
		    Notes below for more details.
		phi : float, optional
		    Phase offset, in degrees. Default is 0.
		vertex_zero : bool, optional
		    This parameter is only used when `method` is 'quadratic'.
		    It determines whether the vertex of the parabola that is the graph
		    of the frequency is at t=0 or t=t1.
		
		Returns
		-------
		y : ndarray
		    A numpy array containing the signal evaluated at `t` with the
		    requested time-varying frequency.  More precisely, the function
		    returns ``cos(phase + (pi/180)*phi)`` where `phase` is the integral
		    (from 0 to `t`) of ``2*pi*f(t)``. ``f(t)`` is defined below.
		
		See Also
		--------
		sweep_poly
		
		Notes
		-----
		There are four options for the `method`.  The following formulas give
		the instantaneous frequency (in Hz) of the signal generated by
		`chirp()`.  For convenience, the shorter names shown below may also be
		used.
		
		linear, lin, li:
		
		    ``f(t) = f0 + (f1 - f0) * t / t1``
		
		quadratic, quad, q:
		
		    The graph of the frequency f(t) is a parabola through (0, f0) and
		    (t1, f1).  By default, the vertex of the parabola is at (0, f0).
		    If `vertex_zero` is False, then the vertex is at (t1, f1).  The
		    formula is:
		
		    if vertex_zero is True:
		
		        ``f(t) = f0 + (f1 - f0) * t**2 / t1**2``
		
		    else:
		
		        ``f(t) = f1 - (f1 - f0) * (t1 - t)**2 / t1**2``
		
		    To use a more general quadratic function, or an arbitrary
		    polynomial, use the function `scipy.signal.sweep_poly`.
		
		logarithmic, log, lo:
		
		    ``f(t) = f0 * (f1/f0)**(t/t1)``
		
		    f0 and f1 must be nonzero and have the same sign.
		
		    This signal is also known as a geometric or exponential chirp.
		
		hyperbolic, hyp:
		
		    ``f(t) = f0*f1*t1 / ((f0 - f1)*t + f1*t1)``
		
		    f0 and f1 must be nonzero.
		
		Examples
		--------
		The following will be used in the examples:
		
		>>> from scipy.signal import chirp, spectrogram
		>>> import matplotlib.pyplot as plt
		
		For the first example, we'll plot the waveform for a linear chirp
		from 6 Hz to 1 Hz over 10 seconds:
		
		>>> t = np.linspace(0, 10, 1500)
		>>> w = chirp(t, f0=6, f1=1, t1=10, method='linear')
		>>> plt.plot(t, w)
		>>> plt.title("Linear Chirp, f(0)=6, f(10)=1")
		>>> plt.xlabel('t (sec)')
		>>> plt.show()
		
		For the remaining examples, we'll use higher frequency ranges,
		and demonstrate the result using `scipy.signal.spectrogram`.
		We'll use a 4 second interval sampled at 7200 Hz.
		
		>>> fs = 7200
		>>> T = 4
		>>> t = np.arange(0, int(T*fs)) / fs
		
		We'll use this function to plot the spectrogram in each example.
		
		>>> def plot_spectrogram(title, w, fs):
		...     ff, tt, Sxx = spectrogram(w, fs=fs, nperseg=256, nfft=576)
		...     plt.pcolormesh(tt, ff[:145], Sxx[:145], cmap='gray_r', shading='gouraud')
		...     plt.title(title)
		...     plt.xlabel('t (sec)')
		...     plt.ylabel('Frequency (Hz)')
		...     plt.grid()
		...
		
		Quadratic chirp from 1500 Hz to 250 Hz
		(vertex of the parabolic curve of the frequency is at t=0):
		
		>>> w = chirp(t, f0=1500, f1=250, t1=T, method='quadratic')
		>>> plot_spectrogram(f'Quadratic Chirp, f(0)=1500, f({T})=250', w, fs)
		>>> plt.show()
		
		Quadratic chirp from 1500 Hz to 250 Hz
		(vertex of the parabolic curve of the frequency is at t=T):
		
		>>> w = chirp(t, f0=1500, f1=250, t1=T, method='quadratic',
		...           vertex_zero=False)
		>>> plot_spectrogram(f'Quadratic Chirp, f(0)=1500, f({T})=250\n' +
		...                  '(vertex_zero=False)', w, fs)
		>>> plt.show()
		
		Logarithmic chirp from 1500 Hz to 250 Hz:
		
		>>> w = chirp(t, f0=1500, f1=250, t1=T, method='logarithmic')
		>>> plot_spectrogram(f'Logarithmic Chirp, f(0)=1500, f({T})=250', w, fs)
		>>> plt.show()
		
		Hyperbolic chirp from 1500 Hz to 250 Hz:
		
		>>> w = chirp(t, f0=1500, f1=250, t1=T, method='hyperbolic')
		>>> plot_spectrogram(f'Hyperbolic Chirp, f(0)=1500, f({T})=250', w, fs)
		>>> plt.show()
	**/
	static public function chirp(t:Dynamic, f0:Dynamic, t1:Dynamic, f1:Dynamic, ?method:Dynamic, ?phi:Dynamic, ?vertex_zero:Dynamic):Dynamic;
	/**
		exp(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate the exponential of all elements in the input array.
		
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
		    Output array, element-wise exponential of `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		expm1 : Calculate ``exp(x) - 1`` for all elements in the array.
		exp2  : Calculate ``2**x`` for all elements in the array.
		
		Notes
		-----
		The irrational number ``e`` is also known as Euler's number.  It is
		approximately 2.718281, and is the base of the natural logarithm,
		``ln`` (this means that, if :math:`x = \ln y = \log_e y`,
		then :math:`e^x = y`. For real input, ``exp(x)`` is always positive.
		
		For complex arguments, ``x = a + ib``, we can write
		:math:`e^x = e^a e^{ib}`.  The first term, :math:`e^a`, is already
		known (it is the real argument, described above).  The second term,
		:math:`e^{ib}`, is :math:`\cos b + i \sin b`, a function with
		magnitude 1 and a periodic phase.
		
		References
		----------
		.. [1] Wikipedia, "Exponential function",
		       https://en.wikipedia.org/wiki/Exponential_function
		.. [2] M. Abramovitz and I. A. Stegun, "Handbook of Mathematical Functions
		       with Formulas, Graphs, and Mathematical Tables," Dover, 1964, p. 69,
		       https://personal.math.ubc.ca/~cbm/aands/page_69.htm
		
		Examples
		--------
		Plot the magnitude and phase of ``exp(x)`` in the complex plane:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-2*np.pi, 2*np.pi, 100)
		>>> xx = x + 1j * x[:, np.newaxis] # a + ib over complex plane
		>>> out = np.exp(xx)
		
		>>> plt.subplot(121)
		>>> plt.imshow(np.abs(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi], cmap='gray')
		>>> plt.title('Magnitude of exp(x)')
		
		>>> plt.subplot(122)
		>>> plt.imshow(np.angle(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi], cmap='hsv')
		>>> plt.title('Phase (angle) of exp(x)')
		>>> plt.show()
	**/
	static public function exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function extract(condition:Dynamic, arr:Dynamic):Dynamic;
	/**
		Return a Gaussian modulated sinusoid:
		
		    ``exp(-a t^2) exp(1j*2*pi*fc*t).``
		
		If `retquad` is True, then return the real and imaginary parts
		(in-phase and quadrature).
		If `retenv` is True, then return the envelope (unmodulated signal).
		Otherwise, return the real part of the modulated sinusoid.
		
		Parameters
		----------
		t : ndarray or the string 'cutoff'
		    Input array.
		fc : float, optional
		    Center frequency (e.g. Hz).  Default is 1000.
		bw : float, optional
		    Fractional bandwidth in frequency domain of pulse (e.g. Hz).
		    Default is 0.5.
		bwr : float, optional
		    Reference level at which fractional bandwidth is calculated (dB).
		    Default is -6.
		tpr : float, optional
		    If `t` is 'cutoff', then the function returns the cutoff
		    time for when the pulse amplitude falls below `tpr` (in dB).
		    Default is -60.
		retquad : bool, optional
		    If True, return the quadrature (imaginary) as well as the real part
		    of the signal.  Default is False.
		retenv : bool, optional
		    If True, return the envelope of the signal.  Default is False.
		
		Returns
		-------
		yI : ndarray
		    Real part of signal.  Always returned.
		yQ : ndarray
		    Imaginary part of signal.  Only returned if `retquad` is True.
		yenv : ndarray
		    Envelope of signal.  Only returned if `retenv` is True.
		
		See Also
		--------
		scipy.signal.morlet
		
		Examples
		--------
		Plot real component, imaginary component, and envelope for a 5 Hz pulse,
		sampled at 100 Hz for 2 seconds:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> t = np.linspace(-1, 1, 2 * 100, endpoint=False)
		>>> i, q, e = signal.gausspulse(t, fc=5, retquad=True, retenv=True)
		>>> plt.plot(t, i, t, q, t, e, '--')
	**/
	static public function gausspulse(t:Dynamic, ?fc:Dynamic, ?bw:Dynamic, ?bwr:Dynamic, ?tpr:Dynamic, ?retquad:Dynamic, ?retenv:Dynamic):Dynamic;
	/**
		log(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Natural logarithm, element-wise.
		
		The natural logarithm `log` is the inverse of the exponential function,
		so that `log(exp(x)) = x`. The natural logarithm is logarithm in base
		`e`.
		
		Parameters
		----------
		x : array_like
		    Input value.
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
		    The natural logarithm of `x`, element-wise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		log10, log2, log1p, emath.log
		
		Notes
		-----
		Logarithm is a multivalued function: for each `x` there is an infinite
		number of `z` such that `exp(z) = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi, pi]`.
		
		For real-valued input data types, `log` always returns real output. For
		each value that cannot be expressed as a real number or infinity, it
		yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `log` is a complex analytical function that
		has a branch cut `[-inf, 0]` and is continuous from above on it. `log`
		handles the floating-point negative zero as an infinitesimal negative
		number, conforming to the C99 standard.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 67.
		       https://personal.math.ubc.ca/~cbm/aands/page_67.htm
		.. [2] Wikipedia, "Logarithm". https://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log([1, np.e, np.e**2, 0])
		array([  0.,   1.,   2., -Inf])
	**/
	static public function log(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		remainder(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns the element-wise remainder of division.
		
		Computes the remainder complementary to the `floor_divide` function.  It is
		equivalent to the Python modulus operator``x1 % x2`` and has the same sign
		as the divisor `x2`. The MATLAB function equivalent to ``np.remainder``
		is ``mod``.
		
		.. warning::
		
		    This should not be confused with:
		
		    * Python 3.7's `math.remainder` and C's ``remainder``, which
		      computes the IEEE remainder, which are the complement to
		      ``round(x1 / x2)``.
		    * The MATLAB ``rem`` function and or the C ``%`` operator which is the
		      complement to ``int(x1 / x2)``.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
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
		y : ndarray
		    The element-wise remainder of the quotient ``floor_divide(x1, x2)``.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		floor_divide : Equivalent of Python ``//`` operator.
		divmod : Simultaneous floor division and remainder.
		fmod : Equivalent of the MATLAB ``rem`` function.
		divide, floor
		
		Notes
		-----
		Returns 0 when `x2` is 0 and both `x1` and `x2` are (arrays of)
		integers.
		``mod`` is an alias of ``remainder``.
		
		Examples
		--------
		>>> np.remainder([4, 7], [2, 3])
		array([0, 1])
		>>> np.remainder(np.arange(7), 5)
		array([0, 1, 2, 3, 4, 0, 1])
		
		The ``%`` operator can be used as a shorthand for ``np.remainder`` on
		ndarrays.
		
		>>> x1 = np.arange(7)
		>>> x1 % 5
		array([0, 1, 2, 3, 4, 0, 1])
	**/
	static public function mod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var nan : Dynamic;
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
		Return a periodic sawtooth or triangle waveform.
		
		The sawtooth waveform has a period ``2*pi``, rises from -1 to 1 on the
		interval 0 to ``width*2*pi``, then drops from 1 to -1 on the interval
		``width*2*pi`` to ``2*pi``. `width` must be in the interval [0, 1].
		
		Note that this is not band-limited.  It produces an infinite number
		of harmonics, which are aliased back and forth across the frequency
		spectrum.
		
		Parameters
		----------
		t : array_like
		    Time.
		width : array_like, optional
		    Width of the rising ramp as a proportion of the total cycle.
		    Default is 1, producing a rising ramp, while 0 produces a falling
		    ramp.  `width` = 0.5 produces a triangle wave.
		    If an array, causes wave shape to change over time, and must be the
		    same length as t.
		
		Returns
		-------
		y : ndarray
		    Output array containing the sawtooth waveform.
		
		Examples
		--------
		A 5 Hz waveform sampled at 500 Hz for 1 second:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> t = np.linspace(0, 1, 500)
		>>> plt.plot(t, signal.sawtooth(2 * np.pi * 5 * t))
	**/
	static public function sawtooth(t:Dynamic, ?width:Dynamic):Dynamic;
	/**
		Return a periodic square-wave waveform.
		
		The square wave has a period ``2*pi``, has value +1 from 0 to
		``2*pi*duty`` and -1 from ``2*pi*duty`` to ``2*pi``. `duty` must be in
		the interval [0,1].
		
		Note that this is not band-limited.  It produces an infinite number
		of harmonics, which are aliased back and forth across the frequency
		spectrum.
		
		Parameters
		----------
		t : array_like
		    The input time array.
		duty : array_like, optional
		    Duty cycle.  Default is 0.5 (50% duty cycle).
		    If an array, causes wave shape to change over time, and must be the
		    same length as t.
		
		Returns
		-------
		y : ndarray
		    Output array containing the square waveform.
		
		Examples
		--------
		A 5 Hz waveform sampled at 500 Hz for 1 second:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> t = np.linspace(0, 1, 500, endpoint=False)
		>>> plt.plot(t, signal.square(2 * np.pi * 5 * t))
		>>> plt.ylim(-2, 2)
		
		A pulse-width modulated sine wave:
		
		>>> plt.figure()
		>>> sig = np.sin(2 * np.pi * t)
		>>> pwm = signal.square(2 * np.pi * 30 * t, duty=(sig + 1)/2)
		>>> plt.subplot(2, 1, 1)
		>>> plt.plot(t, sig)
		>>> plt.subplot(2, 1, 2)
		>>> plt.plot(t, pwm)
		>>> plt.ylim(-1.5, 1.5)
	**/
	static public function square(t:Dynamic, ?duty:Dynamic):Dynamic;
	/**
		Frequency-swept cosine generator, with a time-dependent frequency.
		
		This function generates a sinusoidal function whose instantaneous
		frequency varies with time.  The frequency at time `t` is given by
		the polynomial `poly`.
		
		Parameters
		----------
		t : ndarray
		    Times at which to evaluate the waveform.
		poly : 1-D array_like or instance of numpy.poly1d
		    The desired frequency expressed as a polynomial.  If `poly` is
		    a list or ndarray of length n, then the elements of `poly` are
		    the coefficients of the polynomial, and the instantaneous
		    frequency is
		
		      ``f(t) = poly[0]*t**(n-1) + poly[1]*t**(n-2) + ... + poly[n-1]``
		
		    If `poly` is an instance of numpy.poly1d, then the
		    instantaneous frequency is
		
		      ``f(t) = poly(t)``
		
		phi : float, optional
		    Phase offset, in degrees, Default: 0.
		
		Returns
		-------
		sweep_poly : ndarray
		    A numpy array containing the signal evaluated at `t` with the
		    requested time-varying frequency.  More precisely, the function
		    returns ``cos(phase + (pi/180)*phi)``, where `phase` is the integral
		    (from 0 to t) of ``2 * pi * f(t)``; ``f(t)`` is defined above.
		
		See Also
		--------
		chirp
		
		Notes
		-----
		.. versionadded:: 0.8.0
		
		If `poly` is a list or ndarray of length `n`, then the elements of
		`poly` are the coefficients of the polynomial, and the instantaneous
		frequency is:
		
		    ``f(t) = poly[0]*t**(n-1) + poly[1]*t**(n-2) + ... + poly[n-1]``
		
		If `poly` is an instance of `numpy.poly1d`, then the instantaneous
		frequency is:
		
		      ``f(t) = poly(t)``
		
		Finally, the output `s` is:
		
		    ``cos(phase + (pi/180)*phi)``
		
		where `phase` is the integral from 0 to `t` of ``2 * pi * f(t)``,
		``f(t)`` as defined above.
		
		Examples
		--------
		Compute the waveform with instantaneous frequency::
		
		    f(t) = 0.025*t**3 - 0.36*t**2 + 1.25*t + 2
		
		over the interval 0 <= t <= 10.
		
		>>> from scipy.signal import sweep_poly
		>>> p = np.poly1d([0.025, -0.36, 1.25, 2.0])
		>>> t = np.linspace(0, 10, 5001)
		>>> w = sweep_poly(t, p)
		
		Plot it:
		
		>>> import matplotlib.pyplot as plt
		>>> plt.subplot(2, 1, 1)
		>>> plt.plot(t, w)
		>>> plt.title("Sweep Poly\nwith frequency " +
		...           "$f(t) = 0.025t^3 - 0.36t^2 + 1.25t + 2$")
		>>> plt.subplot(2, 1, 2)
		>>> plt.plot(t, p(t), 'r', label='f(t)')
		>>> plt.legend()
		>>> plt.xlabel('t')
		>>> plt.tight_layout()
		>>> plt.show()
	**/
	static public function sweep_poly(t:Dynamic, poly:Dynamic, ?phi:Dynamic):Dynamic;
	/**
		Unit impulse signal (discrete delta function) or unit basis vector.
		
		Parameters
		----------
		shape : int or tuple of int
		    Number of samples in the output (1-D), or a tuple that represents the
		    shape of the output (N-D).
		idx : None or int or tuple of int or 'mid', optional
		    Index at which the value is 1.  If None, defaults to the 0th element.
		    If ``idx='mid'``, the impulse will be centered at ``shape // 2`` in
		    all dimensions.  If an int, the impulse will be at `idx` in all
		    dimensions.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., ``numpy.int8``.  Default is
		    ``numpy.float64``.
		
		Returns
		-------
		y : ndarray
		    Output array containing an impulse signal.
		
		Notes
		-----
		The 1D case is also known as the Kronecker delta.
		
		.. versionadded:: 0.19.0
		
		Examples
		--------
		An impulse at the 0th element (:math:`\delta[n]`):
		
		>>> from scipy import signal
		>>> signal.unit_impulse(8)
		array([ 1.,  0.,  0.,  0.,  0.,  0.,  0.,  0.])
		
		Impulse offset by 2 samples (:math:`\delta[n-2]`):
		
		>>> signal.unit_impulse(7, 2)
		array([ 0.,  0.,  1.,  0.,  0.,  0.,  0.])
		
		2-dimensional impulse, centered:
		
		>>> signal.unit_impulse((3, 3), 'mid')
		array([[ 0.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  0.]])
		
		Impulse at (2, 2), using broadcasting:
		
		>>> signal.unit_impulse((4, 4), 2)
		array([[ 0.,  0.,  0.,  0.],
		       [ 0.,  0.,  0.,  0.],
		       [ 0.,  0.,  1.,  0.],
		       [ 0.,  0.,  0.,  0.]])
		
		Plot the impulse response of a 4th-order Butterworth lowpass filter:
		
		>>> imp = signal.unit_impulse(100, 'mid')
		>>> b, a = signal.butter(4, 0.2)
		>>> response = signal.lfilter(b, a, imp)
		
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(np.arange(-50, 50), imp)
		>>> plt.plot(np.arange(-50, 50), response)
		>>> plt.margins(0.1, 0.1)
		>>> plt.xlabel('Time [samples]')
		>>> plt.ylabel('Amplitude')
		>>> plt.grid(True)
		>>> plt.show()
	**/
	static public function unit_impulse(shape:Dynamic, ?idx:Dynamic, ?dtype:Dynamic):Dynamic;
}