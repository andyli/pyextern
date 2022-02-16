/* This file is generated, do not edit! */
package scipy.signal.wavelets;
@:pythonImport("scipy.signal.wavelets") extern class Wavelets_Module {
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
		val : int, float, ndarray
		    The total number of combinations.
		
		See Also
		--------
		binom : Binomial coefficient ufunc
		
		Notes
		-----
		- Array arguments accepted only for exact=False case.
		- If N < 0, or k < 0, then 0 is returned.
		- If k > N and repetition=False, then 0 is returned.
		
		Examples
		--------
		>>> from scipy.special import comb
		>>> k = np.array([3, 4])
		>>> n = np.array([10, 10])
		>>> comb(n, k, exact=False)
		array([ 120.,  210.])
		>>> comb(10, 3, exact=True)
		120
		>>> comb(10, 3, exact=True, repetition=True)
		220
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
		    Second input. Should have the same number of dimensions as `in1`.
		mode : str {'full', 'valid', 'same'}, optional
		    A string indicating the size of the output:
		
		    ``full``
		       The output is the full discrete linear convolution
		       of the inputs. (Default)
		    ``valid``
		       The output consists only of those elements that do not
		       rely on the zero-padding. In 'valid' mode, either `in1` or `in2`
		       must be at least as large as the other in every dimension.
		    ``same``
		       The output is the same size as `in1`, centered
		       with respect to the 'full' output.
		method : str {'auto', 'direct', 'fft'}, optional
		    A string indicating which method to use to calculate the convolution.
		
		    ``direct``
		       The convolution is determined directly from sums, the definition of
		       convolution.
		    ``fft``
		       The Fourier Transform is used to perform the convolution by calling
		       `fftconvolve`.
		    ``auto``
		       Automatically chooses direct or Fourier method based on an estimate
		       of which is faster (default).  See Notes for more detail.
		
		       .. versionadded:: 0.19.0
		
		Returns
		-------
		convolve : array
		    An N-dimensional array containing a subset of the discrete linear
		    convolution of `in1` with `in2`.
		
		See Also
		--------
		numpy.polymul : performs polynomial multiplication (same operation, but
		                also accepts poly1d objects)
		choose_conv_method : chooses the fastest appropriate convolution method
		fftconvolve : Always uses the FFT method.
		oaconvolve : Uses the overlap-add method to do convolution, which is
		             generally faster when the input arrays are large and
		             significantly different in size.
		
		Notes
		-----
		By default, `convolve` and `correlate` use ``method='auto'``, which calls
		`choose_conv_method` to choose the fastest method using pre-computed
		values (`choose_conv_method` can also measure real-world timing with a
		keyword argument). Because `fftconvolve` relies on floating point numbers,
		there are certain constraints that may force `method=direct` (more detail
		in `choose_conv_method` docstring).
		
		Examples
		--------
		Smooth a square pulse using a Hann window:
		
		>>> from scipy import signal
		>>> sig = np.repeat([0., 1., 0.], 100)
		>>> win = signal.windows.hann(50)
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
	static public function convolve(in1:Dynamic, in2:Dynamic, ?mode:Dynamic, ?method:Dynamic):Array<Dynamic>;
	/**
		Continuous wavelet transform.
		
		Performs a continuous wavelet transform on `data`,
		using the `wavelet` function. A CWT performs a convolution
		with `data` using the `wavelet` function, which is characterized
		by a width parameter and length parameter. The `wavelet` function
		is allowed to be complex.
		
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
		dtype : data-type, optional
		    The desired data type of output. Defaults to ``float64`` if the
		    output of `wavelet` is real and ``complex128`` if it is complex.
		
		    .. versionadded:: 1.4.0
		
		kwargs
		    Keyword arguments passed to wavelet function.
		
		    .. versionadded:: 1.4.0
		
		Returns
		-------
		cwt: (M, N) ndarray
		    Will have shape of (len(widths), len(data)).
		
		Notes
		-----
		
		.. versionadded:: 1.4.0
		
		For non-symmetric, complex-valued wavelets, the input signal is convolved
		with the time-reversed complex-conjugate of the wavelet data [1].
		
		::
		
		    length = min(10 * width[ii], len(data))
		    cwt[ii,:] = signal.convolve(data, np.conj(wavelet(length, width[ii],
		                                    **kwargs))[::-1], mode='same')
		
		References
		----------
		.. [1] S. Mallat, "A Wavelet Tour of Signal Processing (3rd Edition)",
		    Academic Press, 2009.
		
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
	static public function cwt(data:Dynamic, wavelet:Dynamic, widths:Dynamic, ?dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		homogeneous_eigvals : bool, optional
		    If True, return the eigenvalues in homogeneous coordinates.
		    In this case ``w`` is a (2, M) array so that::
		
		        w[1,i] a vr[:,i] = w[0,i] b vr[:,i]
		
		    Default is False.
		
		Returns
		-------
		w : (M,) or (2, M) double or complex ndarray
		    The eigenvalues, each repeated according to its
		    multiplicity. The shape is (M,) unless
		    ``homogeneous_eigvals=True``.
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
		eigvals : eigenvalues of general arrays
		eigh : Eigenvalues and right eigenvectors for symmetric/Hermitian arrays.
		eig_banded : eigenvalues and right eigenvectors for symmetric/Hermitian
		    band matrices
		eigh_tridiagonal : eigenvalues and right eiegenvectors for
		    symmetric/Hermitian tridiagonal matrices
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[0., -1.], [1., 0.]])
		>>> linalg.eigvals(a)
		array([0.+1.j, 0.-1.j])
		
		>>> b = np.array([[0., 1.], [1., 1.]])
		>>> linalg.eigvals(a, b)
		array([ 1.+0.j, -1.+0.j])
		
		>>> a = np.array([[3., 0., 0.], [0., 8., 0.], [0., 0., 7.]])
		>>> linalg.eigvals(a, homogeneous_eigvals=True)
		array([[3.+0.j, 8.+0.j, 7.+0.j],
		       [1.+0.j, 1.+0.j, 1.+0.j]])
		
		>>> a = np.array([[0., -1.], [1., 0.]])
		>>> linalg.eigvals(a) == linalg.eig(a)[0]
		array([ True,  True])
		>>> linalg.eig(a, left=True, right=False)[1] # normalized left eigenvector
		array([[-0.70710678+0.j        , -0.70710678-0.j        ],
		       [-0.        +0.70710678j, -0.        -0.70710678j]])
		>>> linalg.eig(a, left=False, right=True)[1] # normalized right eigenvector
		array([[0.70710678+0.j        , 0.70710678-0.j        ],
		       [0.        -0.70710678j, 0.        +0.70710678j]])
	**/
	static public function eig(a:Dynamic, ?b:Dynamic, ?left:Dynamic, ?right:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic, ?homogeneous_eigvals:Dynamic):Dynamic;
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
		morlet2 : Implementation of Morlet wavelet, compatible with `cwt`.
		scipy.signal.gausspulse
		
		Notes
		-----
		The standard version::
		
		    pi**-0.25 * exp(1j*w*x) * exp(-0.5*(x**2))
		
		This commonly used wavelet is often referred to simply as the
		Morlet wavelet.  Note that this simplified version can cause
		admissibility problems at low values of `w`.
		
		The complete version::
		
		    pi**-0.25 * (exp(1j*w*x) - exp(-0.5*(w**2))) * exp(-0.5*(x**2))
		
		This version has a correction
		term to improve admissibility. For `w` greater than 5, the
		correction term is negligible.
		
		Note that the energy of the return wavelet is not normalised
		according to `s`.
		
		The fundamental frequency of this wavelet in Hz is given
		by ``f = 2*s*w*r / M`` where `r` is the sampling rate.
		
		Note: This function was created before `cwt` and is not compatible
		with it.
	**/
	static public function morlet(M:Dynamic, ?w:Dynamic, ?s:Dynamic, ?complete:Dynamic):Dynamic;
	/**
		Complex Morlet wavelet, designed to work with `cwt`.
		
		Returns the complete version of morlet wavelet, normalised
		according to `s`::
		
		    exp(1j*w*x/s) * exp(-0.5*(x/s)**2) * pi**(-0.25) * sqrt(1/s)
		
		Parameters
		----------
		M : int
		    Length of the wavelet.
		s : float
		    Width parameter of the wavelet.
		w : float, optional
		    Omega0. Default is 5
		
		Returns
		-------
		morlet : (M,) ndarray
		
		See Also
		--------
		morlet : Implementation of Morlet wavelet, incompatible with `cwt`
		
		Notes
		-----
		
		.. versionadded:: 1.4.0
		
		This function was designed to work with `cwt`. Because `morlet2`
		returns an array of complex numbers, the `dtype` argument of `cwt`
		should be set to `complex128` for best results.
		
		Note the difference in implementation with `morlet`.
		The fundamental frequency of this wavelet in Hz is given by::
		
		    f = w*fs / (2*s*np.pi)
		
		where ``fs`` is the sampling rate and `s` is the wavelet width parameter.
		Similarly we can get the wavelet width parameter at ``f``::
		
		    s = w*fs / (2*f*np.pi)
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> M = 100
		>>> s = 4.0
		>>> w = 2.0
		>>> wavelet = signal.morlet2(M, s, w)
		>>> plt.plot(abs(wavelet))
		>>> plt.show()
		
		This example shows basic use of `morlet2` with `cwt` in time-frequency
		analysis:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> t, dt = np.linspace(0, 1, 200, retstep=True)
		>>> fs = 1/dt
		>>> w = 6.
		>>> sig = np.cos(2*np.pi*(50 + 10*t)*t) + np.sin(40*np.pi*t)
		>>> freq = np.linspace(1, fs/2, 100)
		>>> widths = w*fs / (2*freq*np.pi)
		>>> cwtm = signal.cwt(sig, signal.morlet2, widths, w=w)
		>>> plt.pcolormesh(t, freq, np.abs(cwtm), cmap='viridis', shading='gouraud')
		>>> plt.show()
	**/
	static public function morlet2(M:Dynamic, s:Dynamic, ?w:Dynamic):Dynamic;
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
		
		    ``A * (1 - (x/a)**2) * exp(-0.5*(x/a)**2)``,
		
		where ``A = 2/(sqrt(3*a)*(pi**0.25))``.
		
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