/* This file is generated, do not edit! */
package numpy.fft;
@:pythonImport("numpy.fft") extern class Fft_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _numpy_tester():Dynamic;
	static public var absolute_import : Dynamic;
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
	static public var division : Dynamic;
	/**
		Compute the one-dimensional discrete Fourier Transform.
		
		This function computes the one-dimensional *n*-point discrete Fourier
		Transform (DFT) with the efficient Fast Fourier Transform (FFT)
		algorithm [CT].
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		n : int, optional
		    Length of the transformed axis of the output.
		    If `n` is smaller than the length of the input, the input is cropped.
		    If it is larger, the input is padded with zeros.  If `n` is not given,
		    the length of the input along the axis specified by `axis` is used.
		axis : int, optional
		    Axis over which to compute the FFT.  If not given, the last axis is
		    used.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		
		Raises
		------
		IndexError
		    if `axes` is larger than the last axis of `a`.
		
		See Also
		--------
		numpy.fft : for definition of the DFT and conventions used.
		ifft : The inverse of `fft`.
		fft2 : The two-dimensional FFT.
		fftn : The *n*-dimensional FFT.
		rfftn : The *n*-dimensional FFT of real input.
		fftfreq : Frequency bins for given FFT parameters.
		
		Notes
		-----
		FFT (Fast Fourier Transform) refers to a way the discrete Fourier
		Transform (DFT) can be calculated efficiently, by using symmetries in the
		calculated terms.  The symmetry is highest when `n` is a power of 2, and
		the transform is therefore most efficient for these sizes.
		
		The DFT is defined, with the conventions used in this implementation, in
		the documentation for the `numpy.fft` module.
		
		References
		----------
		.. [CT] Cooley, James W., and John W. Tukey, 1965, "An algorithm for the
		        machine calculation of complex Fourier series," *Math. Comput.*
		        19: 297-301.
		
		Examples
		--------
		>>> np.fft.fft(np.exp(2j * np.pi * np.arange(8) / 8))
		array([ -3.44505240e-16 +1.14383329e-17j,
		         8.00000000e+00 -5.71092652e-15j,
		         2.33482938e-16 +1.22460635e-16j,
		         1.64863782e-15 +1.77635684e-15j,
		         9.95839695e-17 +2.33482938e-16j,
		         0.00000000e+00 +1.66837030e-15j,
		         1.14383329e-17 +1.22460635e-16j,
		         -1.64863782e-15 +1.77635684e-15j])
		
		In this example, real input has an FFT which is Hermitian, i.e., symmetric
		in the real part and anti-symmetric in the imaginary part, as described in
		the `numpy.fft` documentation:
		
		>>> import matplotlib.pyplot as plt
		>>> t = np.arange(256)
		>>> sp = np.fft.fft(np.sin(t))
		>>> freq = np.fft.fftfreq(t.shape[-1])
		>>> plt.plot(freq, sp.real, freq, sp.imag)
		[<matplotlib.lines.Line2D object at 0x...>, <matplotlib.lines.Line2D object at 0x...>]
		>>> plt.show()
	**/
	static public function fft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the 2-dimensional discrete Fourier Transform
		
		This function computes the *n*-dimensional discrete Fourier Transform
		over any axes in an *M*-dimensional array by means of the
		Fast Fourier Transform (FFT).  By default, the transform is computed over
		the last two axes of the input array, i.e., a 2-dimensional FFT.
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex
		s : sequence of ints, optional
		    Shape (length of each transformed axis) of the output
		    (``s[0]`` refers to axis 0, ``s[1]`` to axis 1, etc.).
		    This corresponds to ``n`` for ``fft(x, n)``.
		    Along each axis, if the given shape is smaller than that of the input,
		    the input is cropped.  If it is larger, the input is padded with zeros.
		    if `s` is not given, the shape of the input along the axes specified
		    by `axes` is used.
		axes : sequence of ints, optional
		    Axes over which to compute the FFT.  If not given, the last two
		    axes are used.  A repeated index in `axes` means the transform over
		    that axis is performed multiple times.  A one-element sequence means
		    that a one-dimensional FFT is performed.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axes
		    indicated by `axes`, or the last two axes if `axes` is not given.
		
		Raises
		------
		ValueError
		    If `s` and `axes` have different length, or `axes` not given and
		    ``len(s) != 2``.
		IndexError
		    If an element of `axes` is larger than than the number of axes of `a`.
		
		See Also
		--------
		numpy.fft : Overall view of discrete Fourier transforms, with definitions
		     and conventions used.
		ifft2 : The inverse two-dimensional FFT.
		fft : The one-dimensional FFT.
		fftn : The *n*-dimensional FFT.
		fftshift : Shifts zero-frequency terms to the center of the array.
		    For two-dimensional input, swaps first and third quadrants, and second
		    and fourth quadrants.
		
		Notes
		-----
		`fft2` is just `fftn` with a different default for `axes`.
		
		The output, analogously to `fft`, contains the term for zero frequency in
		the low-order corner of the transformed axes, the positive frequency terms
		in the first half of these axes, the term for the Nyquist frequency in the
		middle of the axes and the negative frequency terms in the second half of
		the axes, in order of decreasingly negative frequency.
		
		See `fftn` for details and a plotting example, and `numpy.fft` for
		definitions and conventions used.
		
		
		Examples
		--------
		>>> a = np.mgrid[:5, :5][0]
		>>> np.fft.fft2(a)
		array([[ 50.0 +0.j        ,   0.0 +0.j        ,   0.0 +0.j        ,
		          0.0 +0.j        ,   0.0 +0.j        ],
		       [-12.5+17.20477401j,   0.0 +0.j        ,   0.0 +0.j        ,
		          0.0 +0.j        ,   0.0 +0.j        ],
		       [-12.5 +4.0614962j ,   0.0 +0.j        ,   0.0 +0.j        ,
		          0.0 +0.j        ,   0.0 +0.j        ],
		       [-12.5 -4.0614962j ,   0.0 +0.j        ,   0.0 +0.j        ,
		            0.0 +0.j        ,   0.0 +0.j        ],
		       [-12.5-17.20477401j,   0.0 +0.j        ,   0.0 +0.j        ,
		          0.0 +0.j        ,   0.0 +0.j        ]])
	**/
	static public function fft2(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Return the Discrete Fourier Transform sample frequencies.
		
		The returned float array `f` contains the frequency bin centers in cycles
		per unit of the sample spacing (with zero at the start).  For instance, if
		the sample spacing is in seconds, then the frequency unit is cycles/second.
		
		Given a window length `n` and a sample spacing `d`::
		
		  f = [0, 1, ...,   n/2-1,     -n/2, ..., -1] / (d*n)   if n is even
		  f = [0, 1, ..., (n-1)/2, -(n-1)/2, ..., -1] / (d*n)   if n is odd
		
		Parameters
		----------
		n : int
		    Window length.
		d : scalar, optional
		    Sample spacing (inverse of the sampling rate). Defaults to 1.
		
		Returns
		-------
		f : ndarray
		    Array of length `n` containing the sample frequencies.
		
		Examples
		--------
		>>> signal = np.array([-2, 8, 6, 4, 1, 0, 3, 5], dtype=float)
		>>> fourier = np.fft.fft(signal)
		>>> n = signal.size
		>>> timestep = 0.1
		>>> freq = np.fft.fftfreq(n, d=timestep)
		>>> freq
		array([ 0.  ,  1.25,  2.5 ,  3.75, -5.  , -3.75, -2.5 , -1.25])
	**/
	static public function fftfreq(n:Dynamic, ?d:Dynamic):numpy.Ndarray;
	/**
		Compute the N-dimensional discrete Fourier Transform.
		
		This function computes the *N*-dimensional discrete Fourier Transform over
		any number of axes in an *M*-dimensional array by means of the Fast Fourier
		Transform (FFT).
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		s : sequence of ints, optional
		    Shape (length of each transformed axis) of the output
		    (``s[0]`` refers to axis 0, ``s[1]`` to axis 1, etc.).
		    This corresponds to ``n`` for ``fft(x, n)``.
		    Along any axis, if the given shape is smaller than that of the input,
		    the input is cropped.  If it is larger, the input is padded with zeros.
		    if `s` is not given, the shape of the input along the axes specified
		    by `axes` is used.
		axes : sequence of ints, optional
		    Axes over which to compute the FFT.  If not given, the last ``len(s)``
		    axes are used, or all axes if `s` is also not specified.
		    Repeated indices in `axes` means that the transform over that axis is
		    performed multiple times.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axes
		    indicated by `axes`, or by a combination of `s` and `a`,
		    as explained in the parameters section above.
		
		Raises
		------
		ValueError
		    If `s` and `axes` have different length.
		IndexError
		    If an element of `axes` is larger than than the number of axes of `a`.
		
		See Also
		--------
		numpy.fft : Overall view of discrete Fourier transforms, with definitions
		    and conventions used.
		ifftn : The inverse of `fftn`, the inverse *n*-dimensional FFT.
		fft : The one-dimensional FFT, with definitions and conventions used.
		rfftn : The *n*-dimensional FFT of real input.
		fft2 : The two-dimensional FFT.
		fftshift : Shifts zero-frequency terms to centre of array
		
		Notes
		-----
		The output, analogously to `fft`, contains the term for zero frequency in
		the low-order corner of all axes, the positive frequency terms in the
		first half of all axes, the term for the Nyquist frequency in the middle
		of all axes and the negative frequency terms in the second half of all
		axes, in order of decreasingly negative frequency.
		
		See `numpy.fft` for details, definitions and conventions used.
		
		Examples
		--------
		>>> a = np.mgrid[:3, :3, :3][0]
		>>> np.fft.fftn(a, axes=(1, 2))
		array([[[  0.+0.j,   0.+0.j,   0.+0.j],
		        [  0.+0.j,   0.+0.j,   0.+0.j],
		        [  0.+0.j,   0.+0.j,   0.+0.j]],
		       [[  9.+0.j,   0.+0.j,   0.+0.j],
		        [  0.+0.j,   0.+0.j,   0.+0.j],
		        [  0.+0.j,   0.+0.j,   0.+0.j]],
		       [[ 18.+0.j,   0.+0.j,   0.+0.j],
		        [  0.+0.j,   0.+0.j,   0.+0.j],
		        [  0.+0.j,   0.+0.j,   0.+0.j]]])
		>>> np.fft.fftn(a, (2, 2), axes=(0, 1))
		array([[[ 2.+0.j,  2.+0.j,  2.+0.j],
		        [ 0.+0.j,  0.+0.j,  0.+0.j]],
		       [[-2.+0.j, -2.+0.j, -2.+0.j],
		        [ 0.+0.j,  0.+0.j,  0.+0.j]]])
		
		>>> import matplotlib.pyplot as plt
		>>> [X, Y] = np.meshgrid(2 * np.pi * np.arange(200) / 12,
		...                      2 * np.pi * np.arange(200) / 34)
		>>> S = np.sin(X) + np.cos(Y) + np.random.uniform(0, 1, X.shape)
		>>> FS = np.fft.fftn(S)
		>>> plt.imshow(np.log(np.abs(np.fft.fftshift(FS))**2))
		<matplotlib.image.AxesImage object at 0x...>
		>>> plt.show()
	**/
	static public function fftn(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Shift the zero-frequency component to the center of the spectrum.
		
		This function swaps half-spaces for all axes listed (defaults to all).
		Note that ``y[0]`` is the Nyquist component only if ``len(x)`` is even.
		
		Parameters
		----------
		x : array_like
		    Input array.
		axes : int or shape tuple, optional
		    Axes over which to shift.  Default is None, which shifts all axes.
		
		Returns
		-------
		y : ndarray
		    The shifted array.
		
		See Also
		--------
		ifftshift : The inverse of `fftshift`.
		
		Examples
		--------
		>>> freqs = np.fft.fftfreq(10, 0.1)
		>>> freqs
		array([ 0.,  1.,  2.,  3.,  4., -5., -4., -3., -2., -1.])
		>>> np.fft.fftshift(freqs)
		array([-5., -4., -3., -2., -1.,  0.,  1.,  2.,  3.,  4.])
		
		Shift the zero-frequency component only along the second axis:
		
		>>> freqs = np.fft.fftfreq(9, d=1./9).reshape(3, 3)
		>>> freqs
		array([[ 0.,  1.,  2.],
		       [ 3.,  4., -4.],
		       [-3., -2., -1.]])
		>>> np.fft.fftshift(freqs, axes=(1,))
		array([[ 2.,  0.,  1.],
		       [-4.,  3.,  4.],
		       [-1., -3., -2.]])
	**/
	static public function fftshift(x:Dynamic, ?axes:Dynamic):numpy.Ndarray;
	/**
		Compute the FFT of a signal that has Hermitian symmetry, i.e., a real
		spectrum.
		
		Parameters
		----------
		a : array_like
		    The input array.
		n : int, optional
		    Length of the transformed axis of the output. For `n` output
		    points, ``n//2 + 1`` input points are necessary.  If the input is
		    longer than this, it is cropped.  If it is shorter than this, it is
		    padded with zeros.  If `n` is not given, it is determined from the
		    length of the input along the axis specified by `axis`.
		axis : int, optional
		    Axis over which to compute the FFT. If not given, the last
		    axis is used.
		norm : {None, "ortho"}, optional
		    Normalization mode (see `numpy.fft`). Default is None.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		out : ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		    The length of the transformed axis is `n`, or, if `n` is not given,
		    ``2*m - 2`` where ``m`` is the length of the transformed axis of
		    the input. To get an odd number of output points, `n` must be
		    specified, for instance as ``2*m - 1`` in the typical case,
		
		Raises
		------
		IndexError
		    If `axis` is larger than the last axis of `a`.
		
		See also
		--------
		rfft : Compute the one-dimensional FFT for real input.
		ihfft : The inverse of `hfft`.
		
		Notes
		-----
		`hfft`/`ihfft` are a pair analogous to `rfft`/`irfft`, but for the
		opposite case: here the signal has Hermitian symmetry in the time
		domain and is real in the frequency domain. So here it's `hfft` for
		which you must supply the length of the result if it is to be odd.
		
		* even: ``ihfft(hfft(a, 2*len(a) - 2) == a``, within roundoff error,
		* odd: ``ihfft(hfft(a, 2*len(a) - 1) == a``, within roundoff error.
		
		Examples
		--------
		>>> signal = np.array([1, 2, 3, 4, 3, 2])
		>>> np.fft.fft(signal)
		array([ 15.+0.j,  -4.+0.j,   0.+0.j,  -1.-0.j,   0.+0.j,  -4.+0.j])
		>>> np.fft.hfft(signal[:4]) # Input first half of signal
		array([ 15.,  -4.,   0.,  -1.,   0.,  -4.])
		>>> np.fft.hfft(signal, 6)  # Input entire signal and truncate
		array([ 15.,  -4.,   0.,  -1.,   0.,  -4.])
		
		
		>>> signal = np.array([[1, 1.j], [-1.j, 2]])
		>>> np.conj(signal.T) - signal   # check Hermitian symmetry
		array([[ 0.-0.j,  0.+0.j],
		       [ 0.+0.j,  0.-0.j]])
		>>> freq_spectrum = np.fft.hfft(signal)
		>>> freq_spectrum
		array([[ 1.,  1.],
		       [ 2., -2.]])
	**/
	static public function hfft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):numpy.Ndarray;
	/**
		Compute the one-dimensional inverse discrete Fourier Transform.
		
		This function computes the inverse of the one-dimensional *n*-point
		discrete Fourier transform computed by `fft`.  In other words,
		``ifft(fft(a)) == a`` to within numerical accuracy.
		For a general description of the algorithm and definitions,
		see `numpy.fft`.
		
		The input should be ordered in the same way as is returned by `fft`,
		i.e.,
		
		* ``a[0]`` should contain the zero frequency term,
		* ``a[1:n//2]`` should contain the positive-frequency terms,
		* ``a[n//2 + 1:]`` should contain the negative-frequency terms, in
		  increasing order starting from the most negative frequency.
		
		For an even number of input points, ``A[n//2]`` represents the sum of
		the values at the positive and negative Nyquist frequencies, as the two
		are aliased together. See `numpy.fft` for details.
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		n : int, optional
		    Length of the transformed axis of the output.
		    If `n` is smaller than the length of the input, the input is cropped.
		    If it is larger, the input is padded with zeros.  If `n` is not given,
		    the length of the input along the axis specified by `axis` is used.
		    See notes about padding issues.
		axis : int, optional
		    Axis over which to compute the inverse DFT.  If not given, the last
		    axis is used.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		
		Raises
		------
		IndexError
		    If `axes` is larger than the last axis of `a`.
		
		See Also
		--------
		numpy.fft : An introduction, with definitions and general explanations.
		fft : The one-dimensional (forward) FFT, of which `ifft` is the inverse
		ifft2 : The two-dimensional inverse FFT.
		ifftn : The n-dimensional inverse FFT.
		
		Notes
		-----
		If the input parameter `n` is larger than the size of the input, the input
		is padded by appending zeros at the end.  Even though this is the common
		approach, it might lead to surprising results.  If a different padding is
		desired, it must be performed before calling `ifft`.
		
		Examples
		--------
		>>> np.fft.ifft([0, 4, 0, 0])
		array([ 1.+0.j,  0.+1.j, -1.+0.j,  0.-1.j])
		
		Create and plot a band-limited signal with random phases:
		
		>>> import matplotlib.pyplot as plt
		>>> t = np.arange(400)
		>>> n = np.zeros((400,), dtype=complex)
		>>> n[40:60] = np.exp(1j*np.random.uniform(0, 2*np.pi, (20,)))
		>>> s = np.fft.ifft(n)
		>>> plt.plot(t, s.real, 'b-', t, s.imag, 'r--')
		...
		>>> plt.legend(('real', 'imaginary'))
		...
		>>> plt.show()
	**/
	static public function ifft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the 2-dimensional inverse discrete Fourier Transform.
		
		This function computes the inverse of the 2-dimensional discrete Fourier
		Transform over any number of axes in an M-dimensional array by means of
		the Fast Fourier Transform (FFT).  In other words, ``ifft2(fft2(a)) == a``
		to within numerical accuracy.  By default, the inverse transform is
		computed over the last two axes of the input array.
		
		The input, analogously to `ifft`, should be ordered in the same way as is
		returned by `fft2`, i.e. it should have the term for zero frequency
		in the low-order corner of the two axes, the positive frequency terms in
		the first half of these axes, the term for the Nyquist frequency in the
		middle of the axes and the negative frequency terms in the second half of
		both axes, in order of decreasingly negative frequency.
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		s : sequence of ints, optional
		    Shape (length of each axis) of the output (``s[0]`` refers to axis 0,
		    ``s[1]`` to axis 1, etc.).  This corresponds to `n` for ``ifft(x, n)``.
		    Along each axis, if the given shape is smaller than that of the input,
		    the input is cropped.  If it is larger, the input is padded with zeros.
		    if `s` is not given, the shape of the input along the axes specified
		    by `axes` is used.  See notes for issue on `ifft` zero padding.
		axes : sequence of ints, optional
		    Axes over which to compute the FFT.  If not given, the last two
		    axes are used.  A repeated index in `axes` means the transform over
		    that axis is performed multiple times.  A one-element sequence means
		    that a one-dimensional FFT is performed.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axes
		    indicated by `axes`, or the last two axes if `axes` is not given.
		
		Raises
		------
		ValueError
		    If `s` and `axes` have different length, or `axes` not given and
		    ``len(s) != 2``.
		IndexError
		    If an element of `axes` is larger than than the number of axes of `a`.
		
		See Also
		--------
		numpy.fft : Overall view of discrete Fourier transforms, with definitions
		     and conventions used.
		fft2 : The forward 2-dimensional FFT, of which `ifft2` is the inverse.
		ifftn : The inverse of the *n*-dimensional FFT.
		fft : The one-dimensional FFT.
		ifft : The one-dimensional inverse FFT.
		
		Notes
		-----
		`ifft2` is just `ifftn` with a different default for `axes`.
		
		See `ifftn` for details and a plotting example, and `numpy.fft` for
		definition and conventions used.
		
		Zero-padding, analogously with `ifft`, is performed by appending zeros to
		the input along the specified dimension.  Although this is the common
		approach, it might lead to surprising results.  If another form of zero
		padding is desired, it must be performed before `ifft2` is called.
		
		Examples
		--------
		>>> a = 4 * np.eye(4)
		>>> np.fft.ifft2(a)
		array([[ 1.+0.j,  0.+0.j,  0.+0.j,  0.+0.j],
		       [ 0.+0.j,  0.+0.j,  0.+0.j,  1.+0.j],
		       [ 0.+0.j,  0.+0.j,  1.+0.j,  0.+0.j],
		       [ 0.+0.j,  1.+0.j,  0.+0.j,  0.+0.j]])
	**/
	static public function ifft2(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the N-dimensional inverse discrete Fourier Transform.
		
		This function computes the inverse of the N-dimensional discrete
		Fourier Transform over any number of axes in an M-dimensional array by
		means of the Fast Fourier Transform (FFT).  In other words,
		``ifftn(fftn(a)) == a`` to within numerical accuracy.
		For a description of the definitions and conventions used, see `numpy.fft`.
		
		The input, analogously to `ifft`, should be ordered in the same way as is
		returned by `fftn`, i.e. it should have the term for zero frequency
		in all axes in the low-order corner, the positive frequency terms in the
		first half of all axes, the term for the Nyquist frequency in the middle
		of all axes and the negative frequency terms in the second half of all
		axes, in order of decreasingly negative frequency.
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		s : sequence of ints, optional
		    Shape (length of each transformed axis) of the output
		    (``s[0]`` refers to axis 0, ``s[1]`` to axis 1, etc.).
		    This corresponds to ``n`` for ``ifft(x, n)``.
		    Along any axis, if the given shape is smaller than that of the input,
		    the input is cropped.  If it is larger, the input is padded with zeros.
		    if `s` is not given, the shape of the input along the axes specified
		    by `axes` is used.  See notes for issue on `ifft` zero padding.
		axes : sequence of ints, optional
		    Axes over which to compute the IFFT.  If not given, the last ``len(s)``
		    axes are used, or all axes if `s` is also not specified.
		    Repeated indices in `axes` means that the inverse transform over that
		    axis is performed multiple times.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axes
		    indicated by `axes`, or by a combination of `s` or `a`,
		    as explained in the parameters section above.
		
		Raises
		------
		ValueError
		    If `s` and `axes` have different length.
		IndexError
		    If an element of `axes` is larger than than the number of axes of `a`.
		
		See Also
		--------
		numpy.fft : Overall view of discrete Fourier transforms, with definitions
		     and conventions used.
		fftn : The forward *n*-dimensional FFT, of which `ifftn` is the inverse.
		ifft : The one-dimensional inverse FFT.
		ifft2 : The two-dimensional inverse FFT.
		ifftshift : Undoes `fftshift`, shifts zero-frequency terms to beginning
		    of array.
		
		Notes
		-----
		See `numpy.fft` for definitions and conventions used.
		
		Zero-padding, analogously with `ifft`, is performed by appending zeros to
		the input along the specified dimension.  Although this is the common
		approach, it might lead to surprising results.  If another form of zero
		padding is desired, it must be performed before `ifftn` is called.
		
		Examples
		--------
		>>> a = np.eye(4)
		>>> np.fft.ifftn(np.fft.fftn(a, axes=(0,)), axes=(1,))
		array([[ 1.+0.j,  0.+0.j,  0.+0.j,  0.+0.j],
		       [ 0.+0.j,  1.+0.j,  0.+0.j,  0.+0.j],
		       [ 0.+0.j,  0.+0.j,  1.+0.j,  0.+0.j],
		       [ 0.+0.j,  0.+0.j,  0.+0.j,  1.+0.j]])
		
		
		Create and plot an image with band-limited frequency content:
		
		>>> import matplotlib.pyplot as plt
		>>> n = np.zeros((200,200), dtype=complex)
		>>> n[60:80, 20:40] = np.exp(1j*np.random.uniform(0, 2*np.pi, (20, 20)))
		>>> im = np.fft.ifftn(n).real
		>>> plt.imshow(im)
		<matplotlib.image.AxesImage object at 0x...>
		>>> plt.show()
	**/
	static public function ifftn(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		The inverse of `fftshift`. Although identical for even-length `x`, the
		functions differ by one sample for odd-length `x`.
		
		Parameters
		----------
		x : array_like
		    Input array.
		axes : int or shape tuple, optional
		    Axes over which to calculate.  Defaults to None, which shifts all axes.
		
		Returns
		-------
		y : ndarray
		    The shifted array.
		
		See Also
		--------
		fftshift : Shift zero-frequency component to the center of the spectrum.
		
		Examples
		--------
		>>> freqs = np.fft.fftfreq(9, d=1./9).reshape(3, 3)
		>>> freqs
		array([[ 0.,  1.,  2.],
		       [ 3.,  4., -4.],
		       [-3., -2., -1.]])
		>>> np.fft.ifftshift(np.fft.fftshift(freqs))
		array([[ 0.,  1.,  2.],
		       [ 3.,  4., -4.],
		       [-3., -2., -1.]])
	**/
	static public function ifftshift(x:Dynamic, ?axes:Dynamic):numpy.Ndarray;
	/**
		Compute the inverse FFT of a signal that has Hermitian symmetry.
		
		Parameters
		----------
		a : array_like
		    Input array.
		n : int, optional
		    Length of the inverse FFT, the number of points along
		    transformation axis in the input to use.  If `n` is smaller than
		    the length of the input, the input is cropped.  If it is larger,
		    the input is padded with zeros. If `n` is not given, the length of
		    the input along the axis specified by `axis` is used.
		axis : int, optional
		    Axis over which to compute the inverse FFT. If not given, the last
		    axis is used.
		norm : {None, "ortho"}, optional
		    Normalization mode (see `numpy.fft`). Default is None.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		    The length of the transformed axis is ``n//2 + 1``.
		
		See also
		--------
		hfft, irfft
		
		Notes
		-----
		`hfft`/`ihfft` are a pair analogous to `rfft`/`irfft`, but for the
		opposite case: here the signal has Hermitian symmetry in the time
		domain and is real in the frequency domain. So here it's `hfft` for
		which you must supply the length of the result if it is to be odd:
		
		* even: ``ihfft(hfft(a, 2*len(a) - 2) == a``, within roundoff error,
		* odd: ``ihfft(hfft(a, 2*len(a) - 1) == a``, within roundoff error.
		
		Examples
		--------
		>>> spectrum = np.array([ 15, -4, 0, -1, 0, -4])
		>>> np.fft.ifft(spectrum)
		array([ 1.+0.j,  2.-0.j,  3.+0.j,  4.+0.j,  3.+0.j,  2.-0.j])
		>>> np.fft.ihfft(spectrum)
		array([ 1.-0.j,  2.-0.j,  3.-0.j,  4.-0.j])
	**/
	static public function ihfft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the inverse of the n-point DFT for real input.
		
		This function computes the inverse of the one-dimensional *n*-point
		discrete Fourier Transform of real input computed by `rfft`.
		In other words, ``irfft(rfft(a), len(a)) == a`` to within numerical
		accuracy. (See Notes below for why ``len(a)`` is necessary here.)
		
		The input is expected to be in the form returned by `rfft`, i.e. the
		real zero-frequency term followed by the complex positive frequency terms
		in order of increasing frequency.  Since the discrete Fourier Transform of
		real input is Hermitian-symmetric, the negative frequency terms are taken
		to be the complex conjugates of the corresponding positive frequency terms.
		
		Parameters
		----------
		a : array_like
		    The input array.
		n : int, optional
		    Length of the transformed axis of the output.
		    For `n` output points, ``n//2+1`` input points are necessary.  If the
		    input is longer than this, it is cropped.  If it is shorter than this,
		    it is padded with zeros.  If `n` is not given, it is determined from
		    the length of the input along the axis specified by `axis`.
		axis : int, optional
		    Axis over which to compute the inverse FFT. If not given, the last
		    axis is used.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		    The length of the transformed axis is `n`, or, if `n` is not given,
		    ``2*(m-1)`` where ``m`` is the length of the transformed axis of the
		    input. To get an odd number of output points, `n` must be specified.
		
		Raises
		------
		IndexError
		    If `axis` is larger than the last axis of `a`.
		
		See Also
		--------
		numpy.fft : For definition of the DFT and conventions used.
		rfft : The one-dimensional FFT of real input, of which `irfft` is inverse.
		fft : The one-dimensional FFT.
		irfft2 : The inverse of the two-dimensional FFT of real input.
		irfftn : The inverse of the *n*-dimensional FFT of real input.
		
		Notes
		-----
		Returns the real valued `n`-point inverse discrete Fourier transform
		of `a`, where `a` contains the non-negative frequency terms of a
		Hermitian-symmetric sequence. `n` is the length of the result, not the
		input.
		
		If you specify an `n` such that `a` must be zero-padded or truncated, the
		extra/removed values will be added/removed at high frequencies. One can
		thus resample a series to `m` points via Fourier interpolation by:
		``a_resamp = irfft(rfft(a), m)``.
		
		Examples
		--------
		>>> np.fft.ifft([1, -1j, -1, 1j])
		array([ 0.+0.j,  1.+0.j,  0.+0.j,  0.+0.j])
		>>> np.fft.irfft([1, -1j, -1])
		array([ 0.,  1.,  0.,  0.])
		
		Notice how the last term in the input to the ordinary `ifft` is the
		complex conjugate of the second term, and the output has zero imaginary
		part everywhere.  When calling `irfft`, the negative frequencies are not
		specified, and the output array is purely real.
	**/
	static public function irfft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):numpy.Ndarray;
	/**
		Compute the 2-dimensional inverse FFT of a real array.
		
		Parameters
		----------
		a : array_like
		    The input array
		s : sequence of ints, optional
		    Shape of the inverse FFT.
		axes : sequence of ints, optional
		    The axes over which to compute the inverse fft.
		    Default is the last two axes.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : ndarray
		    The result of the inverse real 2-D FFT.
		
		See Also
		--------
		irfftn : Compute the inverse of the N-dimensional FFT of real input.
		
		Notes
		-----
		This is really `irfftn` with different defaults.
		For more details see `irfftn`.
	**/
	static public function irfft2(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):numpy.Ndarray;
	/**
		Compute the inverse of the N-dimensional FFT of real input.
		
		This function computes the inverse of the N-dimensional discrete
		Fourier Transform for real input over any number of axes in an
		M-dimensional array by means of the Fast Fourier Transform (FFT).  In
		other words, ``irfftn(rfftn(a), a.shape) == a`` to within numerical
		accuracy. (The ``a.shape`` is necessary like ``len(a)`` is for `irfft`,
		and for the same reason.)
		
		The input should be ordered in the same way as is returned by `rfftn`,
		i.e. as for `irfft` for the final transformation axis, and as for `ifftn`
		along all the other axes.
		
		Parameters
		----------
		a : array_like
		    Input array.
		s : sequence of ints, optional
		    Shape (length of each transformed axis) of the output
		    (``s[0]`` refers to axis 0, ``s[1]`` to axis 1, etc.). `s` is also the
		    number of input points used along this axis, except for the last axis,
		    where ``s[-1]//2+1`` points of the input are used.
		    Along any axis, if the shape indicated by `s` is smaller than that of
		    the input, the input is cropped.  If it is larger, the input is padded
		    with zeros. If `s` is not given, the shape of the input along the
		    axes specified by `axes` is used.
		axes : sequence of ints, optional
		    Axes over which to compute the inverse FFT. If not given, the last
		    `len(s)` axes are used, or all axes if `s` is also not specified.
		    Repeated indices in `axes` means that the inverse transform over that
		    axis is performed multiple times.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : ndarray
		    The truncated or zero-padded input, transformed along the axes
		    indicated by `axes`, or by a combination of `s` or `a`,
		    as explained in the parameters section above.
		    The length of each transformed axis is as given by the corresponding
		    element of `s`, or the length of the input in every axis except for the
		    last one if `s` is not given.  In the final transformed axis the length
		    of the output when `s` is not given is ``2*(m-1)`` where ``m`` is the
		    length of the final transformed axis of the input.  To get an odd
		    number of output points in the final axis, `s` must be specified.
		
		Raises
		------
		ValueError
		    If `s` and `axes` have different length.
		IndexError
		    If an element of `axes` is larger than than the number of axes of `a`.
		
		See Also
		--------
		rfftn : The forward n-dimensional FFT of real input,
		        of which `ifftn` is the inverse.
		fft : The one-dimensional FFT, with definitions and conventions used.
		irfft : The inverse of the one-dimensional FFT of real input.
		irfft2 : The inverse of the two-dimensional FFT of real input.
		
		Notes
		-----
		See `fft` for definitions and conventions used.
		
		See `rfft` for definitions and conventions used for real input.
		
		Examples
		--------
		>>> a = np.zeros((3, 2, 2))
		>>> a[0, 0, 0] = 3 * 2 * 2
		>>> np.fft.irfftn(a)
		array([[[ 1.,  1.],
		        [ 1.,  1.]],
		       [[ 1.,  1.],
		        [ 1.,  1.]],
		       [[ 1.,  1.],
		        [ 1.,  1.]]])
	**/
	static public function irfftn(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):numpy.Ndarray;
	static public var print_function : Dynamic;
	/**
		Compute the one-dimensional discrete Fourier Transform for real input.
		
		This function computes the one-dimensional *n*-point discrete Fourier
		Transform (DFT) of a real-valued array by means of an efficient algorithm
		called the Fast Fourier Transform (FFT).
		
		Parameters
		----------
		a : array_like
		    Input array
		n : int, optional
		    Number of points along transformation axis in the input to use.
		    If `n` is smaller than the length of the input, the input is cropped.
		    If it is larger, the input is padded with zeros. If `n` is not given,
		    the length of the input along the axis specified by `axis` is used.
		axis : int, optional
		    Axis over which to compute the FFT. If not given, the last axis is
		    used.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		    If `n` is even, the length of the transformed axis is ``(n/2)+1``.
		    If `n` is odd, the length is ``(n+1)/2``.
		
		Raises
		------
		IndexError
		    If `axis` is larger than the last axis of `a`.
		
		See Also
		--------
		numpy.fft : For definition of the DFT and conventions used.
		irfft : The inverse of `rfft`.
		fft : The one-dimensional FFT of general (complex) input.
		fftn : The *n*-dimensional FFT.
		rfftn : The *n*-dimensional FFT of real input.
		
		Notes
		-----
		When the DFT is computed for purely real input, the output is
		Hermitian-symmetric, i.e. the negative frequency terms are just the complex
		conjugates of the corresponding positive-frequency terms, and the
		negative-frequency terms are therefore redundant.  This function does not
		compute the negative frequency terms, and the length of the transformed
		axis of the output is therefore ``n//2 + 1``.
		
		When ``A = rfft(a)`` and fs is the sampling frequency, ``A[0]`` contains
		the zero-frequency term 0*fs, which is real due to Hermitian symmetry.
		
		If `n` is even, ``A[-1]`` contains the term representing both positive
		and negative Nyquist frequency (+fs/2 and -fs/2), and must also be purely
		real. If `n` is odd, there is no term at fs/2; ``A[-1]`` contains
		the largest positive frequency (fs/2*(n-1)/n), and is complex in the
		general case.
		
		If the input `a` contains an imaginary part, it is silently discarded.
		
		Examples
		--------
		>>> np.fft.fft([0, 1, 0, 0])
		array([ 1.+0.j,  0.-1.j, -1.+0.j,  0.+1.j])
		>>> np.fft.rfft([0, 1, 0, 0])
		array([ 1.+0.j,  0.-1.j, -1.+0.j])
		
		Notice how the final element of the `fft` output is the complex conjugate
		of the second element, for real input. For `rfft`, this symmetry is
		exploited to compute only the non-negative frequency terms.
	**/
	static public function rfft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the 2-dimensional FFT of a real array.
		
		Parameters
		----------
		a : array
		    Input array, taken to be real.
		s : sequence of ints, optional
		    Shape of the FFT.
		axes : sequence of ints, optional
		    Axes over which to compute the FFT.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : ndarray
		    The result of the real 2-D FFT.
		
		See Also
		--------
		rfftn : Compute the N-dimensional discrete Fourier Transform for real
		        input.
		
		Notes
		-----
		This is really just `rfftn` with different default behavior.
		For more details see `rfftn`.
	**/
	static public function rfft2(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):numpy.Ndarray;
	/**
		Return the Discrete Fourier Transform sample frequencies
		(for usage with rfft, irfft).
		
		The returned float array `f` contains the frequency bin centers in cycles
		per unit of the sample spacing (with zero at the start).  For instance, if
		the sample spacing is in seconds, then the frequency unit is cycles/second.
		
		Given a window length `n` and a sample spacing `d`::
		
		  f = [0, 1, ...,     n/2-1,     n/2] / (d*n)   if n is even
		  f = [0, 1, ..., (n-1)/2-1, (n-1)/2] / (d*n)   if n is odd
		
		Unlike `fftfreq` (but like `scipy.fftpack.rfftfreq`)
		the Nyquist frequency component is considered to be positive.
		
		Parameters
		----------
		n : int
		    Window length.
		d : scalar, optional
		    Sample spacing (inverse of the sampling rate). Defaults to 1.
		
		Returns
		-------
		f : ndarray
		    Array of length ``n//2 + 1`` containing the sample frequencies.
		
		Examples
		--------
		>>> signal = np.array([-2, 8, 6, 4, 1, 0, 3, 5, -3, 4], dtype=float)
		>>> fourier = np.fft.rfft(signal)
		>>> n = signal.size
		>>> sample_rate = 100
		>>> freq = np.fft.fftfreq(n, d=1./sample_rate)
		>>> freq
		array([  0.,  10.,  20.,  30.,  40., -50., -40., -30., -20., -10.])
		>>> freq = np.fft.rfftfreq(n, d=1./sample_rate)
		>>> freq
		array([  0.,  10.,  20.,  30.,  40.,  50.])
	**/
	static public function rfftfreq(n:Dynamic, ?d:Dynamic):numpy.Ndarray;
	/**
		Compute the N-dimensional discrete Fourier Transform for real input.
		
		This function computes the N-dimensional discrete Fourier Transform over
		any number of axes in an M-dimensional real array by means of the Fast
		Fourier Transform (FFT).  By default, all axes are transformed, with the
		real transform performed over the last axis, while the remaining
		transforms are complex.
		
		Parameters
		----------
		a : array_like
		    Input array, taken to be real.
		s : sequence of ints, optional
		    Shape (length along each transformed axis) to use from the input.
		    (``s[0]`` refers to axis 0, ``s[1]`` to axis 1, etc.).
		    The final element of `s` corresponds to `n` for ``rfft(x, n)``, while
		    for the remaining axes, it corresponds to `n` for ``fft(x, n)``.
		    Along any axis, if the given shape is smaller than that of the input,
		    the input is cropped.  If it is larger, the input is padded with zeros.
		    if `s` is not given, the shape of the input along the axes specified
		    by `axes` is used.
		axes : sequence of ints, optional
		    Axes over which to compute the FFT.  If not given, the last ``len(s)``
		    axes are used, or all axes if `s` is also not specified.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axes
		    indicated by `axes`, or by a combination of `s` and `a`,
		    as explained in the parameters section above.
		    The length of the last axis transformed will be ``s[-1]//2+1``,
		    while the remaining transformed axes will have lengths according to
		    `s`, or unchanged from the input.
		
		Raises
		------
		ValueError
		    If `s` and `axes` have different length.
		IndexError
		    If an element of `axes` is larger than than the number of axes of `a`.
		
		See Also
		--------
		irfftn : The inverse of `rfftn`, i.e. the inverse of the n-dimensional FFT
		     of real input.
		fft : The one-dimensional FFT, with definitions and conventions used.
		rfft : The one-dimensional FFT of real input.
		fftn : The n-dimensional FFT.
		rfft2 : The two-dimensional FFT of real input.
		
		Notes
		-----
		The transform for real input is performed over the last transformation
		axis, as by `rfft`, then the transform over the remaining axes is
		performed as by `fftn`.  The order of the output is as for `rfft` for the
		final transformation axis, and as for `fftn` for the remaining
		transformation axes.
		
		See `fft` for details, definitions and conventions used.
		
		Examples
		--------
		>>> a = np.ones((2, 2, 2))
		>>> np.fft.rfftn(a)
		array([[[ 8.+0.j,  0.+0.j],
		        [ 0.+0.j,  0.+0.j]],
		       [[ 0.+0.j,  0.+0.j],
		        [ 0.+0.j,  0.+0.j]]])
		
		>>> np.fft.rfftn(a, axes=(2, 0))
		array([[[ 4.+0.j,  0.+0.j],
		        [ 4.+0.j,  0.+0.j]],
		       [[ 0.+0.j,  0.+0.j],
		        [ 0.+0.j,  0.+0.j]]])
	**/
	static public function rfftn(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):Dynamic;
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
		raise_warnings : None, str or sequence of warnings, optional
		    This specifies which warnings to configure as 'raise' instead
		    of being shown once during the test execution.  Valid strings are:
		
		      - "develop" : equals ``(Warning,)``
		      - "release" : equals ``()``, don't raise on any warnings.
		
		    The default is to use the class initialization value.
		
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
}