/* This file is generated, do not edit! */
package scipy.signal.wavelets;
@:pythonImport("scipy.signal.wavelets") extern class Wavelets_Module {
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
		Return (x, phi, psi) at dyadic points ``K/2**J`` from filter coefficients.
		
		Parameters
		----------
		hk : array_like
		    Coefficients of low-pass filter.
		J : int, optional
		    Values will be computed at grid points ``K/2**J``. Default is 7.
		
		Returns
		-------
		x : ndarray
		    The dyadic points ``K/2**J`` for ``K=0...N * (2**J)-1`` where
		    ``len(hk) = len(gk) = N+1``.
		phi : ndarray
		    The scaling function ``phi(x)`` at `x`:
		    ``phi(x) = sum(hk * phi(2x-k))``, where k is from 0 to N.
		psi : ndarray, optional
		    The wavelet function ``psi(x)`` at `x`:
		    ``phi(x) = sum(gk * phi(2x-k))``, where k is from 0 to N.
		    `psi` is only returned if `gk` is not None.
		
		Notes
		-----
		The algorithm uses the vector cascade algorithm described by Strang and
		Nguyen in "Wavelets and Filter Banks".  It builds a dictionary of values
		and slices for quick reuse.  Then inserts vectors into final vector at the
		end.
	**/
	static public function cascade(hk:Dynamic, ?J:Dynamic):Dynamic;
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
		Convolve two N-dimensional arrays.
		
		Convolve `in1` and `in2`, with the output size determined by the
		`mode` argument.
		
		Parameters
		----------
		in1 : array_like
		    First input.
		in2 : array_like
		    Second input. Should have the same number of dimensions as `in1`;
		    if sizes of `in1` and `in2` are not equal then `in1` has to be the
		    larger array.
		mode : str {'full', 'valid', 'same'}, optional
		    A string indicating the size of the output:
		
		    ``full``
		       The output is the full discrete linear convolution
		       of the inputs. (Default)
		    ``valid``
		       The output consists only of those elements that do not
		       rely on the zero-padding.
		    ``same``
		       The output is the same size as `in1`, centered
		       with respect to the 'full' output.
		
		Returns
		-------
		convolve : array
		    An N-dimensional array containing a subset of the discrete linear
		    convolution of `in1` with `in2`.
		
		See also
		--------
		numpy.polymul : performs polynomial multiplication (same operation, but
		                also accepts poly1d objects)
		
		Examples
		--------
		Smooth a square pulse using a Hann window:
		
		>>> from scipy import signal
		>>> sig = np.repeat([0., 1., 0.], 100)
		>>> win = signal.hann(50)
		>>> filtered = signal.convolve(sig, win, mode='same') / sum(win)
		
		>>> import matplotlib.pyplot as plt
		>>> fig, (ax_orig, ax_win, ax_filt) = plt.subplots(3, 1, sharex=True)
		>>> ax_orig.plot(sig)
		>>> ax_orig.set_title('Original pulse')
		>>> ax_orig.margins(0, 0.1)
		>>> ax_win.plot(win)
		>>> ax_win.set_title('Filter impulse response')
		>>> ax_win.margins(0, 0.1)
		>>> ax_filt.plot(filtered)
		>>> ax_filt.set_title('Filtered signal')
		>>> ax_filt.margins(0, 0.1)
		>>> fig.tight_layout()
		>>> fig.show()
	**/
	static public function convolve(in1:Dynamic, in2:Dynamic, ?mode:Dynamic):Array<Dynamic>;
	/**
		Continuous wavelet transform.
		
		Performs a continuous wavelet transform on `data`,
		using the `wavelet` function. A CWT performs a convolution
		with `data` using the `wavelet` function, which is characterized
		by a width parameter and length parameter.
		
		Parameters
		----------
		data : (N,) ndarray
		    data on which to perform the transform.
		wavelet : function
		    Wavelet function, which should take 2 arguments.
		    The first argument is the number of points that the returned vector
		    will have (len(wavelet(length,width)) == length).
		    The second is a width parameter, defining the size of the wavelet
		    (e.g. standard deviation of a gaussian). See `ricker`, which
		    satisfies these requirements.
		widths : (M,) sequence
		    Widths to use for transform.
		
		Returns
		-------
		cwt: (M, N) ndarray
		    Will have shape of (len(widths), len(data)).
		
		Notes
		-----
		::
		
		    length = min(10 * width[ii], len(data))
		    cwt[ii,:] = signal.convolve(data, wavelet(length,
		                                width[ii]), mode='same')
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> t = np.linspace(-1, 1, 200, endpoint=False)
		>>> sig  = np.cos(2 * np.pi * 7 * t) + signal.gausspulse(t - 0.4, fc=2)
		>>> widths = np.arange(1, 31)
		>>> cwtmatr = signal.cwt(sig, signal.ricker, widths)
		>>> plt.imshow(cwtmatr, extent=[-1, 1, 31, 1], cmap='PRGn', aspect='auto',
		...            vmax=abs(cwtmatr).max(), vmin=-abs(cwtmatr).max())
		>>> plt.show()
	**/
	static public function cwt(data:Dynamic, wavelet:Dynamic, widths:Dynamic):Dynamic;
	/**
		The coefficients for the FIR low-pass filter producing Daubechies wavelets.
		
		p>=1 gives the order of the zero at f=1/2.
		There are 2p filter coefficients.
		
		Parameters
		----------
		p : int
		    Order of the zero at f=1/2, can have values from 1 to 34.
		
		Returns
		-------
		daub : ndarray
		    Return
	**/
	static public function daub(p:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Solve an ordinary or generalized eigenvalue problem of a square matrix.
		
		Find eigenvalues w and right or left eigenvectors of a general matrix::
		
		    a   vr[:,i] = w[i]        b   vr[:,i]
		    a.H vl[:,i] = w[i].conj() b.H vl[:,i]
		
		where ``.H`` is the Hermitian conjugation.
		
		Parameters
		----------
		a : (M, M) array_like
		    A complex or real matrix whose eigenvalues and eigenvectors
		    will be computed.
		b : (M, M) array_like, optional
		    Right-hand side matrix in a generalized eigenvalue problem.
		    Default is None, identity matrix is assumed.
		left : bool, optional
		    Whether to calculate and return left eigenvectors.  Default is False.
		right : bool, optional
		    Whether to calculate and return right eigenvectors.  Default is True.
		overwrite_a : bool, optional
		    Whether to overwrite `a`; may improve performance.  Default is False.
		overwrite_b : bool, optional
		    Whether to overwrite `b`; may improve performance.  Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		w : (M,) double or complex ndarray
		    The eigenvalues, each repeated according to its multiplicity.
		vl : (M, M) double or complex ndarray
		    The normalized left eigenvector corresponding to the eigenvalue
		    ``w[i]`` is the column vl[:,i]. Only returned if ``left=True``.
		vr : (M, M) double or complex ndarray
		    The normalized right eigenvector corresponding to the eigenvalue
		    ``w[i]`` is the column ``vr[:,i]``.  Only returned if ``right=True``.
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge.
		
		See Also
		--------
		eigh : Eigenvalues and right eigenvectors for symmetric/Hermitian arrays.
	**/
	static public function eig(a:Dynamic, ?b:Dynamic, ?left:Dynamic, ?right:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		exp(x[, out])
		
		Calculate the exponential of all elements in the input array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		
		Returns
		-------
		out : ndarray
		    Output array, element-wise exponential of `x`.
		
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
		       http://en.wikipedia.org/wiki/Exponential_function
		.. [2] M. Abramovitz and I. A. Stegun, "Handbook of Mathematical Functions
		       with Formulas, Graphs, and Mathematical Tables," Dover, 1964, p. 69,
		       http://www.math.sfu.ca/~cbm/aands/page_69.htm
		
		Examples
		--------
		Plot the magnitude and phase of ``exp(x)`` in the complex plane:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-2*np.pi, 2*np.pi, 100)
		>>> xx = x + 1j * x[:, np.newaxis] # a + ib over complex plane
		>>> out = np.exp(xx)
		
		>>> plt.subplot(121)
		>>> plt.imshow(np.abs(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi])
		>>> plt.title('Magnitude of exp(x)')
		
		>>> plt.subplot(122)
		>>> plt.imshow(np.angle(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi])
		>>> plt.title('Phase (angle) of exp(x)')
		>>> plt.show()
	**/
	static public function exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return evenly spaced numbers over a specified interval.
		
		Returns `num` evenly spaced samples, calculated over the
		interval [`start`, `stop`].
		
		The endpoint of the interval can optionally be excluded.
		
		Parameters
		----------
		start : scalar
		    The starting value of the sequence.
		stop : scalar
		    The end value of the sequence, unless `endpoint` is set to False.
		    In that case, the sequence consists of all but the last of ``num + 1``
		    evenly spaced samples, so that `stop` is excluded.  Note that the step
		    size changes when `endpoint` is False.
		num : int, optional
		    Number of samples to generate. Default is 50. Must be non-negative.
		endpoint : bool, optional
		    If True, `stop` is the last sample. Otherwise, it is not included.
		    Default is True.
		retstep : bool, optional
		    If True, return (`samples`, `step`), where `step` is the spacing
		    between samples.
		dtype : dtype, optional
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		samples : ndarray
		    There are `num` equally spaced samples in the closed interval
		    ``[start, stop]`` or the half-open interval ``[start, stop)``
		    (depending on whether `endpoint` is True or False).
		step : float
		    Only returned if `retstep` is True
		
		    Size of spacing between samples.
		
		
		See Also
		--------
		arange : Similar to `linspace`, but uses a step size (instead of the
		         number of samples).
		logspace : Samples uniformly distributed in log space.
		
		Examples
		--------
		>>> np.linspace(2.0, 3.0, num=5)
		    array([ 2.  ,  2.25,  2.5 ,  2.75,  3.  ])
		>>> np.linspace(2.0, 3.0, num=5, endpoint=False)
		    array([ 2. ,  2.2,  2.4,  2.6,  2.8])
		>>> np.linspace(2.0, 3.0, num=5, retstep=True)
		    (array([ 2.  ,  2.25,  2.5 ,  2.75,  3.  ]), 0.25)
		
		Graphical illustration:
		
		>>> import matplotlib.pyplot as plt
		>>> N = 8
		>>> y = np.zeros(N)
		>>> x1 = np.linspace(0, 10, N, endpoint=True)
		>>> x2 = np.linspace(0, 10, N, endpoint=False)
		>>> plt.plot(x1, y, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.plot(x2, y + 0.5, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.ylim([-0.5, 1])
		(-0.5, 1)
		>>> plt.show()
	**/
	static public function linspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?retstep:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Complex Morlet wavelet.
		
		Parameters
		----------
		M : int
		    Length of the wavelet.
		w : float, optional
		    Omega0. Default is 5
		s : float, optional
		    Scaling factor, windowed from ``-s*2*pi`` to ``+s*2*pi``. Default is 1.
		complete : bool, optional
		    Whether to use the complete or the standard version.
		
		Returns
		-------
		morlet : (M,) ndarray
		
		See Also
		--------
		scipy.signal.gausspulse
		
		Notes
		-----
		The standard version::
		
		    pi**-0.25 * exp(1j*w*x) * exp(-0.5*(x**2))
		
		This commonly used wavelet is often referred to simply as the
		Morlet wavelet.  Note that this simplified version can cause
		admissibility problems at low values of w.
		
		The complete version::
		
		    pi**-0.25 * (exp(1j*w*x) - exp(-0.5*(w**2))) * exp(-0.5*(x**2))
		
		The complete version of the Morlet wavelet, with a correction
		term to improve admissibility. For w greater than 5, the
		correction term is negligible.
		
		Note that the energy of the return wavelet is not normalised
		according to s.
		
		The fundamental frequency of this wavelet in Hz is given
		by ``f = 2*s*w*r / M`` where r is the sampling rate.
	**/
	static public function morlet(M:Dynamic, ?w:Dynamic, ?s:Dynamic, ?complete:Dynamic):Dynamic;
	static public var pi : Dynamic;
	static public var print_function : Dynamic;
	/**
		Return high-pass qmf filter from low-pass
		
		Parameters
		----------
		hk : array_like
		    Coefficients of high-pass filter.
	**/
	static public function qmf(hk:Dynamic):Dynamic;
	/**
		Return a Ricker wavelet, also known as the "Mexican hat wavelet".
		
		It models the function:
		
		    ``A (1 - x^2/a^2) exp(-x^2/2 a^2)``,
		
		where ``A = 2/sqrt(3a)pi^1/4``.
		
		Parameters
		----------
		points : int
		    Number of points in `vector`.
		    Will be centered around 0.
		a : scalar
		    Width parameter of the wavelet.
		
		Returns
		-------
		vector : (N,) ndarray
		    Array of length `points` in shape of ricker curve.
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> points = 100
		>>> a = 4.0
		>>> vec2 = signal.ricker(points, a)
		>>> print(len(vec2))
		100
		>>> plt.plot(vec2)
		>>> plt.show()
	**/
	static public function ricker(points:Dynamic, a:Dynamic):Dynamic;
}