/* This file is generated, do not edit! */
package scipy.fftpack;
@:pythonImport("scipy.fftpack") extern class Fftpack_Module {
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
	static public var absolute_import : Dynamic;
	/**
		Return (a,b)-cosh/cosh pseudo-derivative of a periodic sequence.
		
		If x_j and y_j are Fourier coefficients of periodic functions x
		and y, respectively, then::
		
		  y_j = cosh(j*a*2*pi/period)/cosh(j*b*2*pi/period) * x_j
		
		Parameters
		----------
		x : array_like
		    The array to take the pseudo-derivative from.
		a,b : float
		    Defines the parameters of the sinh/sinh pseudo-differential
		    operator.
		period : float, optional
		    The period of the sequence x. Default is ``2*pi``.
		
		Returns
		-------
		cc_diff : ndarray
		    Pseudo-derivative of periodic sequence `x`.
		
		Notes
		-----
		``cc_diff(cc_diff(x,a,b),b,a) == x``
	**/
	static public function cc_diff(x:Dynamic, a:Dynamic, b:Dynamic, ?period:Dynamic, ?_cache:Dynamic):Dynamic;
	/**
		Return (a,b)-cosh/sinh pseudo-derivative of a periodic sequence.
		
		If ``x_j`` and ``y_j`` are Fourier coefficients of periodic functions x
		and y, respectively, then::
		
		  y_j = -sqrt(-1)*cosh(j*a*2*pi/period)/sinh(j*b*2*pi/period) * x_j
		  y_0 = 0
		
		Parameters
		----------
		x : array_like
		    The array to take the pseudo-derivative from.
		a, b : float
		    Defines the parameters of the cosh/sinh pseudo-differential
		    operator.
		period : float, optional
		    The period of the sequence. Default period is ``2*pi``.
		
		Returns
		-------
		cs_diff : ndarray
		    Pseudo-derivative of periodic sequence `x`.
		
		Notes
		-----
		For even len(`x`), the Nyquist mode of `x` is taken as zero.
	**/
	static public function cs_diff(x:Dynamic, a:Dynamic, b:Dynamic, ?period:Dynamic, ?_cache:Dynamic):Dynamic;
	/**
		Return the Discrete Cosine Transform of arbitrary type sequence x.
		
		Parameters
		----------
		x : array_like
		    The input array.
		type : {1, 2, 3}, optional
		    Type of the DCT (see Notes). Default type is 2.
		n : int, optional
		    Length of the transform.  If ``n < x.shape[axis]``, `x` is
		    truncated.  If ``n > x.shape[axis]``, `x` is zero-padded. The
		    default results in ``n = x.shape[axis]``.
		axis : int, optional
		    Axis along which the dct is computed; the default is over the
		    last axis (i.e., ``axis=-1``).
		norm : {None, 'ortho'}, optional
		    Normalization mode (see Notes). Default is None.
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		y : ndarray of real
		    The transformed input array.
		
		See Also
		--------
		idct : Inverse DCT
		
		Notes
		-----
		For a single dimension array ``x``, ``dct(x, norm='ortho')`` is equal to
		MATLAB ``dct(x)``.
		
		There are theoretically 8 types of the DCT, only the first 3 types are
		implemented in scipy. 'The' DCT generally refers to DCT type 2, and 'the'
		Inverse DCT generally refers to DCT type 3.
		
		**Type I**
		
		There are several definitions of the DCT-I; we use the following
		(for ``norm=None``)::
		
		                                     N-2
		  y[k] = x[0] + (-1)**k x[N-1] + 2 * sum x[n]*cos(pi*k*n/(N-1))
		                                     n=1
		
		Only None is supported as normalization mode for DCT-I. Note also that the
		DCT-I is only supported for input size > 1
		
		**Type II**
		
		There are several definitions of the DCT-II; we use the following
		(for ``norm=None``)::
		
		
		            N-1
		  y[k] = 2* sum x[n]*cos(pi*k*(2n+1)/(2*N)), 0 <= k < N.
		            n=0
		
		If ``norm='ortho'``, ``y[k]`` is multiplied by a scaling factor `f`::
		
		  f = sqrt(1/(4*N)) if k = 0,
		  f = sqrt(1/(2*N)) otherwise.
		
		Which makes the corresponding matrix of coefficients orthonormal
		(``OO' = Id``).
		
		**Type III**
		
		There are several definitions, we use the following
		(for ``norm=None``)::
		
		                    N-1
		  y[k] = x[0] + 2 * sum x[n]*cos(pi*(k+0.5)*n/N), 0 <= k < N.
		                    n=1
		
		or, for ``norm='ortho'`` and 0 <= k < N::
		
		                                      N-1
		  y[k] = x[0] / sqrt(N) + sqrt(2/N) * sum x[n]*cos(pi*(k+0.5)*n/N)
		                                      n=1
		
		The (unnormalized) DCT-III is the inverse of the (unnormalized) DCT-II, up
		to a factor `2N`. The orthonormalized DCT-III is exactly the inverse of
		the orthonormalized DCT-II.
		
		References
		----------
		.. [1] 'A Fast Cosine Transform in One and Two Dimensions', by J.
		       Makhoul, `IEEE Transactions on acoustics, speech and signal
		       processing` vol. 28(1), pp. 27-34,
		       http://dx.doi.org/10.1109/TASSP.1980.1163351 (1980).
		.. [2] Wikipedia, "Discrete cosine transform",
		       http://en.wikipedia.org/wiki/Discrete_cosine_transform
		
		Examples
		--------
		The Type 1 DCT is equivalent to the FFT (though faster) for real,
		even-symmetrical inputs.  The output is also real and even-symmetrical.
		Half of the FFT input is used to generate half of the FFT output:
		
		>>> from scipy.fftpack import fft, dct
		>>> fft(np.array([4., 3., 5., 10., 5., 3.])).real
		array([ 30.,  -8.,   6.,  -2.,   6.,  -8.])
		>>> dct(np.array([4., 3., 5., 10.]), 1)
		array([ 30.,  -8.,   6.,  -2.])
	**/
	static public function dct(x:Dynamic, ?type:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return multidimensional Discrete Cosine Transform along the specified axes.
		
		Parameters
		----------
		x : array_like
		    The input array.
		type : {1, 2, 3}, optional
		    Type of the DCT (see Notes). Default type is 2.
		shape : tuple of ints, optional
		    The shape of the result.  If both `shape` and `axes` (see below) are
		    None, `shape` is ``x.shape``; if `shape` is None but `axes` is
		    not None, then `shape` is ``scipy.take(x.shape, axes, axis=0)``.
		    If ``shape[i] > x.shape[i]``, the i-th dimension is padded with zeros.
		    If ``shape[i] < x.shape[i]``, the i-th dimension is truncated to
		    length ``shape[i]``.
		axes : tuple or None, optional
		    Axes along which the DCT is computed; the default is over all axes.
		norm : {None, 'ortho'}, optional
		    Normalization mode (see Notes). Default is None.
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		y : ndarray of real
		    The transformed input array.
		
		See Also
		--------
		idctn : Inverse multidimensional DCT
		
		Notes
		-----
		For full details of the DCT types and normalization modes, as well as
		references, see `dct`.
		
		Examples
		--------
		>>> from scipy.fftpack import dctn, idctn
		>>> y = np.random.randn(16, 16)
		>>> np.allclose(y, idctn(dctn(y, norm='ortho'), norm='ortho'))
		True
	**/
	static public function dctn(x:Dynamic, ?type:Dynamic, ?shape:Dynamic, ?axes:Dynamic, ?norm:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return k-th derivative (or integral) of a periodic sequence x.
		
		If x_j and y_j are Fourier coefficients of periodic functions x
		and y, respectively, then::
		
		  y_j = pow(sqrt(-1)*j*2*pi/period, order) * x_j
		  y_0 = 0 if order is not 0.
		
		Parameters
		----------
		x : array_like
		    Input array.
		order : int, optional
		    The order of differentiation. Default order is 1. If order is
		    negative, then integration is carried out under the assumption
		    that ``x_0 == 0``.
		period : float, optional
		    The assumed period of the sequence. Default is ``2*pi``.
		
		Notes
		-----
		If ``sum(x, axis=0) = 0`` then ``diff(diff(x, k), -k) == x`` (within
		numerical accuracy).
		
		For odd order and even ``len(x)``, the Nyquist mode is taken zero.
	**/
	static public function diff(x:Dynamic, ?order:Dynamic, ?period:Dynamic, ?_cache:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return the Discrete Sine Transform of arbitrary type sequence x.
		
		Parameters
		----------
		x : array_like
		    The input array.
		type : {1, 2, 3}, optional
		    Type of the DST (see Notes). Default type is 2.
		n : int, optional
		    Length of the transform.  If ``n < x.shape[axis]``, `x` is
		    truncated.  If ``n > x.shape[axis]``, `x` is zero-padded. The
		    default results in ``n = x.shape[axis]``.
		axis : int, optional
		    Axis along which the dst is computed; the default is over the
		    last axis (i.e., ``axis=-1``).
		norm : {None, 'ortho'}, optional
		    Normalization mode (see Notes). Default is None.
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		dst : ndarray of reals
		    The transformed input array.
		
		See Also
		--------
		idst : Inverse DST
		
		Notes
		-----
		For a single dimension array ``x``.
		
		There are theoretically 8 types of the DST for different combinations of
		even/odd boundary conditions and boundary off sets [1]_, only the first
		3 types are implemented in scipy.
		
		**Type I**
		
		There are several definitions of the DST-I; we use the following
		for ``norm=None``.  DST-I assumes the input is odd around n=-1 and n=N. ::
		
		             N-1
		  y[k] = 2 * sum x[n]*sin(pi*(k+1)*(n+1)/(N+1))
		             n=0
		
		Only None is supported as normalization mode for DCT-I. Note also that the
		DCT-I is only supported for input size > 1
		The (unnormalized) DCT-I is its own inverse, up to a factor `2(N+1)`.
		
		**Type II**
		
		There are several definitions of the DST-II; we use the following
		for ``norm=None``.  DST-II assumes the input is odd around n=-1/2 and
		n=N-1/2; the output is odd around k=-1 and even around k=N-1 ::
		
		            N-1
		  y[k] = 2* sum x[n]*sin(pi*(k+1)*(n+0.5)/N), 0 <= k < N.
		            n=0
		
		if ``norm='ortho'``, ``y[k]`` is multiplied by a scaling factor `f` ::
		
		    f = sqrt(1/(4*N)) if k == 0
		    f = sqrt(1/(2*N)) otherwise.
		
		**Type III**
		
		There are several definitions of the DST-III, we use the following
		(for ``norm=None``).  DST-III assumes the input is odd around n=-1
		and even around n=N-1 ::
		
		                             N-2
		  y[k] = x[N-1]*(-1)**k + 2* sum x[n]*sin(pi*(k+0.5)*(n+1)/N), 0 <= k < N.
		                             n=0
		
		The (unnormalized) DCT-III is the inverse of the (unnormalized) DCT-II, up
		to a factor `2N`.  The orthonormalized DST-III is exactly the inverse of
		the orthonormalized DST-II.
		
		.. versionadded:: 0.11.0
		
		References
		----------
		.. [1] Wikipedia, "Discrete sine transform",
		       http://en.wikipedia.org/wiki/Discrete_sine_transform
	**/
	static public function dst(x:Dynamic, ?type:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return multidimensional Discrete Sine Transform along the specified axes.
		
		Parameters
		----------
		x : array_like
		    The input array.
		type : {1, 2, 3}, optional
		    Type of the DCT (see Notes). Default type is 2.
		shape : tuple of ints, optional
		    The shape of the result.  If both `shape` and `axes` (see below) are
		    None, `shape` is ``x.shape``; if `shape` is None but `axes` is
		    not None, then `shape` is ``scipy.take(x.shape, axes, axis=0)``.
		    If ``shape[i] > x.shape[i]``, the i-th dimension is padded with zeros.
		    If ``shape[i] < x.shape[i]``, the i-th dimension is truncated to
		    length ``shape[i]``.
		axes : tuple or None, optional
		    Axes along which the DCT is computed; the default is over all axes.
		norm : {None, 'ortho'}, optional
		    Normalization mode (see Notes). Default is None.
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		y : ndarray of real
		    The transformed input array.
		
		See Also
		--------
		idstn : Inverse multidimensional DST
		
		Notes
		-----
		For full details of the DST types and normalization modes, as well as
		references, see `dst`.
		
		Examples
		--------
		>>> from scipy.fftpack import dstn, idstn
		>>> y = np.random.randn(16, 16)
		>>> np.allclose(y, idstn(dstn(y, norm='ortho'), norm='ortho'))
		True
	**/
	static public function dstn(x:Dynamic, ?type:Dynamic, ?shape:Dynamic, ?axes:Dynamic, ?norm:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return discrete Fourier transform of real or complex sequence.
		
		The returned complex array contains ``y(0), y(1),..., y(n-1)`` where
		
		``y(j) = (x * exp(-2*pi*sqrt(-1)*j*np.arange(n)/n)).sum()``.
		
		Parameters
		----------
		x : array_like
		    Array to Fourier transform.
		n : int, optional
		    Length of the Fourier transform.  If ``n < x.shape[axis]``, `x` is
		    truncated.  If ``n > x.shape[axis]``, `x` is zero-padded. The
		    default results in ``n = x.shape[axis]``.
		axis : int, optional
		    Axis along which the fft's are computed; the default is over the
		    last axis (i.e., ``axis=-1``).
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		z : complex ndarray
		    with the elements::
		
		        [y(0),y(1),..,y(n/2),y(1-n/2),...,y(-1)]        if n is even
		        [y(0),y(1),..,y((n-1)/2),y(-(n-1)/2),...,y(-1)]  if n is odd
		
		    where::
		
		        y(j) = sum[k=0..n-1] x[k] * exp(-sqrt(-1)*j*k* 2*pi/n), j = 0..n-1
		
		See Also
		--------
		ifft : Inverse FFT
		rfft : FFT of a real sequence
		
		Notes
		-----
		The packing of the result is "standard": If ``A = fft(a, n)``, then
		``A[0]`` contains the zero-frequency term, ``A[1:n/2]`` contains the
		positive-frequency terms, and ``A[n/2:]`` contains the negative-frequency
		terms, in order of decreasingly negative frequency. So for an 8-point
		transform, the frequencies of the result are [0, 1, 2, 3, -4, -3, -2, -1].
		To rearrange the fft output so that the zero-frequency component is
		centered, like [-4, -3, -2, -1,  0,  1,  2,  3], use `fftshift`.
		
		Both single and double precision routines are implemented.  Half precision
		inputs will be converted to single precision.  Non floating-point inputs
		will be converted to double precision.  Long-double precision inputs are
		not supported.
		
		This function is most efficient when `n` is a power of two, and least
		efficient when `n` is prime.
		
		Note that if ``x`` is real-valued then ``A[j] == A[n-j].conjugate()``.
		If ``x`` is real-valued and ``n`` is even then ``A[n/2]`` is real.
		
		If the data type of `x` is real, a "real FFT" algorithm is automatically
		used, which roughly halves the computation time.  To increase efficiency
		a little further, use `rfft`, which does the same calculation, but only
		outputs half of the symmetrical spectrum.  If the data is both real and
		symmetrical, the `dct` can again double the efficiency, by generating
		half of the spectrum from half of the signal.
		
		Examples
		--------
		>>> from scipy.fftpack import fft, ifft
		>>> x = np.arange(5)
		>>> np.allclose(fft(ifft(x)), x, atol=1e-15)  # within numerical accuracy.
		True
	**/
	static public function fft(x:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		2-D discrete Fourier transform.
		
		Return the two-dimensional discrete Fourier transform of the 2-D argument
		`x`.
		
		See Also
		--------
		fftn : for detailed information.
	**/
	static public function fft2(x:Dynamic, ?shape:Dynamic, ?axes:Dynamic, ?overwrite_x:Dynamic):Dynamic;
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
	static public function fftfreq(n:Dynamic, ?d:Dynamic):Dynamic;
	/**
		Return multidimensional discrete Fourier transform.
		
		The returned array contains::
		
		  y[j_1,..,j_d] = sum[k_1=0..n_1-1, ..., k_d=0..n_d-1]
		     x[k_1,..,k_d] * prod[i=1..d] exp(-sqrt(-1)*2*pi/n_i * j_i * k_i)
		
		where d = len(x.shape) and n = x.shape.
		
		Parameters
		----------
		x : array_like
		    The (n-dimensional) array to transform.
		shape : tuple of ints, optional
		    The shape of the result.  If both `shape` and `axes` (see below) are
		    None, `shape` is ``x.shape``; if `shape` is None but `axes` is
		    not None, then `shape` is ``scipy.take(x.shape, axes, axis=0)``.
		    If ``shape[i] > x.shape[i]``, the i-th dimension is padded with zeros.
		    If ``shape[i] < x.shape[i]``, the i-th dimension is truncated to
		    length ``shape[i]``.
		axes : array_like of ints, optional
		    The axes of `x` (`y` if `shape` is not None) along which the
		    transform is applied.
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed.  Default is False.
		
		Returns
		-------
		y : complex-valued n-dimensional numpy array
		    The (n-dimensional) DFT of the input array.
		
		See Also
		--------
		ifftn
		
		Notes
		-----
		If ``x`` is real-valued, then
		``y[..., j_i, ...] == y[..., n_i-j_i, ...].conjugate()``.
		
		Both single and double precision routines are implemented.  Half precision
		inputs will be converted to single precision.  Non floating-point inputs
		will be converted to double precision.  Long-double precision inputs are
		not supported.
		
		Examples
		--------
		>>> from scipy.fftpack import fftn, ifftn
		>>> y = (-np.arange(16), 8 - np.arange(16), np.arange(16))
		>>> np.allclose(y, fftn(ifftn(y)))
		True
	**/
	static public function fftn(x:Dynamic, ?shape:Dynamic, ?axes:Dynamic, ?overwrite_x:Dynamic):Dynamic;
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
	static public function fftshift(x:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		Return Hilbert transform of a periodic sequence x.
		
		If x_j and y_j are Fourier coefficients of periodic functions x
		and y, respectively, then::
		
		  y_j = sqrt(-1)*sign(j) * x_j
		  y_0 = 0
		
		Parameters
		----------
		x : array_like
		    The input array, should be periodic.
		_cache : dict, optional
		    Dictionary that contains the kernel used to do a convolution with.
		
		Returns
		-------
		y : ndarray
		    The transformed input.
		
		See Also
		--------
		scipy.signal.hilbert : Compute the analytic signal, using the Hilbert
		                       transform.
		
		Notes
		-----
		If ``sum(x, axis=0) == 0`` then ``hilbert(ihilbert(x)) == x``.
		
		For even len(x), the Nyquist mode of x is taken zero.
		
		The sign of the returned transform does not have a factor -1 that is more
		often than not found in the definition of the Hilbert transform.  Note also
		that `scipy.signal.hilbert` does have an extra -1 factor compared to this
		function.
	**/
	static public function hilbert(x:Dynamic, ?_cache:Dynamic):Dynamic;
	/**
		Return the Inverse Discrete Cosine Transform of an arbitrary type sequence.
		
		Parameters
		----------
		x : array_like
		    The input array.
		type : {1, 2, 3}, optional
		    Type of the DCT (see Notes). Default type is 2.
		n : int, optional
		    Length of the transform.  If ``n < x.shape[axis]``, `x` is
		    truncated.  If ``n > x.shape[axis]``, `x` is zero-padded. The
		    default results in ``n = x.shape[axis]``.
		axis : int, optional
		    Axis along which the idct is computed; the default is over the
		    last axis (i.e., ``axis=-1``).
		norm : {None, 'ortho'}, optional
		    Normalization mode (see Notes). Default is None.
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		idct : ndarray of real
		    The transformed input array.
		
		See Also
		--------
		dct : Forward DCT
		
		Notes
		-----
		For a single dimension array `x`, ``idct(x, norm='ortho')`` is equal to
		MATLAB ``idct(x)``.
		
		'The' IDCT is the IDCT of type 2, which is the same as DCT of type 3.
		
		IDCT of type 1 is the DCT of type 1, IDCT of type 2 is the DCT of type
		3, and IDCT of type 3 is the DCT of type 2. For the definition of these
		types, see `dct`.
		
		Examples
		--------
		The Type 1 DCT is equivalent to the DFT for real, even-symmetrical
		inputs.  The output is also real and even-symmetrical.  Half of the IFFT
		input is used to generate half of the IFFT output:
		
		>>> from scipy.fftpack import ifft, idct
		>>> ifft(np.array([ 30.,  -8.,   6.,  -2.,   6.,  -8.])).real
		array([  4.,   3.,   5.,  10.,   5.,   3.])
		>>> idct(np.array([ 30.,  -8.,   6.,  -2.]), 1) / 6
		array([  4.,   3.,   5.,  10.])
	**/
	static public function idct(x:Dynamic, ?type:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return multidimensional Discrete Cosine Transform along the specified axes.
		
		Parameters
		----------
		x : array_like
		    The input array.
		type : {1, 2, 3}, optional
		    Type of the DCT (see Notes). Default type is 2.
		shape : tuple of ints, optional
		    The shape of the result.  If both `shape` and `axes` (see below) are
		    None, `shape` is ``x.shape``; if `shape` is None but `axes` is
		    not None, then `shape` is ``scipy.take(x.shape, axes, axis=0)``.
		    If ``shape[i] > x.shape[i]``, the i-th dimension is padded with zeros.
		    If ``shape[i] < x.shape[i]``, the i-th dimension is truncated to
		    length ``shape[i]``.
		axes : tuple or None, optional
		    Axes along which the IDCT is computed; the default is over all axes.
		norm : {None, 'ortho'}, optional
		    Normalization mode (see Notes). Default is None.
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		y : ndarray of real
		    The transformed input array.
		
		See Also
		--------
		dctn : multidimensional DCT
		
		Notes
		-----
		For full details of the IDCT types and normalization modes, as well as
		references, see `idct`.
		
		Examples
		--------
		>>> from scipy.fftpack import dctn, idctn
		>>> y = np.random.randn(16, 16)
		>>> np.allclose(y, idctn(dctn(y, norm='ortho'), norm='ortho'))
		True
	**/
	static public function idctn(x:Dynamic, ?type:Dynamic, ?shape:Dynamic, ?axes:Dynamic, ?norm:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return the Inverse Discrete Sine Transform of an arbitrary type sequence.
		
		Parameters
		----------
		x : array_like
		    The input array.
		type : {1, 2, 3}, optional
		    Type of the DST (see Notes). Default type is 2.
		n : int, optional
		    Length of the transform.  If ``n < x.shape[axis]``, `x` is
		    truncated.  If ``n > x.shape[axis]``, `x` is zero-padded. The
		    default results in ``n = x.shape[axis]``.
		axis : int, optional
		    Axis along which the idst is computed; the default is over the
		    last axis (i.e., ``axis=-1``).
		norm : {None, 'ortho'}, optional
		    Normalization mode (see Notes). Default is None.
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		idst : ndarray of real
		    The transformed input array.
		
		See Also
		--------
		dst : Forward DST
		
		Notes
		-----
		'The' IDST is the IDST of type 2, which is the same as DST of type 3.
		
		IDST of type 1 is the DST of type 1, IDST of type 2 is the DST of type
		3, and IDST of type 3 is the DST of type 2. For the definition of these
		types, see `dst`.
		
		.. versionadded:: 0.11.0
	**/
	static public function idst(x:Dynamic, ?type:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return multidimensional Discrete Sine Transform along the specified axes.
		
		Parameters
		----------
		x : array_like
		    The input array.
		type : {1, 2, 3}, optional
		    Type of the DCT (see Notes). Default type is 2.
		shape : tuple of ints, optional
		    The shape of the result.  If both `shape` and `axes` (see below) are
		    None, `shape` is ``x.shape``; if `shape` is None but `axes` is
		    not None, then `shape` is ``scipy.take(x.shape, axes, axis=0)``.
		    If ``shape[i] > x.shape[i]``, the i-th dimension is padded with zeros.
		    If ``shape[i] < x.shape[i]``, the i-th dimension is truncated to
		    length ``shape[i]``.
		axes : tuple or None, optional
		    Axes along which the IDCT is computed; the default is over all axes.
		norm : {None, 'ortho'}, optional
		    Normalization mode (see Notes). Default is None.
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		y : ndarray of real
		    The transformed input array.
		
		See Also
		--------
		dctn : multidimensional DST
		
		Notes
		-----
		For full details of the IDST types and normalization modes, as well as
		references, see `idst`.
		
		Examples
		--------
		>>> from scipy.fftpack import dstn, idstn
		>>> y = np.random.randn(16, 16)
		>>> np.allclose(y, idstn(dstn(y, norm='ortho'), norm='ortho'))
		True
	**/
	static public function idstn(x:Dynamic, ?type:Dynamic, ?shape:Dynamic, ?axes:Dynamic, ?norm:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return discrete inverse Fourier transform of real or complex sequence.
		
		The returned complex array contains ``y(0), y(1),..., y(n-1)`` where
		
		``y(j) = (x * exp(2*pi*sqrt(-1)*j*np.arange(n)/n)).mean()``.
		
		Parameters
		----------
		x : array_like
		    Transformed data to invert.
		n : int, optional
		    Length of the inverse Fourier transform.  If ``n < x.shape[axis]``,
		    `x` is truncated.  If ``n > x.shape[axis]``, `x` is zero-padded.
		    The default results in ``n = x.shape[axis]``.
		axis : int, optional
		    Axis along which the ifft's are computed; the default is over the
		    last axis (i.e., ``axis=-1``).
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		ifft : ndarray of floats
		    The inverse discrete Fourier transform.
		
		See Also
		--------
		fft : Forward FFT
		
		Notes
		-----
		Both single and double precision routines are implemented.  Half precision
		inputs will be converted to single precision.  Non floating-point inputs
		will be converted to double precision.  Long-double precision inputs are
		not supported.
		
		This function is most efficient when `n` is a power of two, and least
		efficient when `n` is prime.
		
		If the data type of `x` is real, a "real IFFT" algorithm is automatically
		used, which roughly halves the computation time.
		
		Examples
		--------
		>>> from scipy.fftpack import fft, ifft
		>>> import numpy as np
		>>> x = np.arange(5)
		>>> np.allclose(ifft(fft(x)), x, atol=1e-15)  # within numerical accuracy.
		True
	**/
	static public function ifft(x:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		2-D discrete inverse Fourier transform of real or complex sequence.
		
		Return inverse two-dimensional discrete Fourier transform of
		arbitrary type sequence x.
		
		See `ifft` for more information.
		
		See also
		--------
		fft2, ifft
	**/
	static public function ifft2(x:Dynamic, ?shape:Dynamic, ?axes:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return inverse multi-dimensional discrete Fourier transform of
		arbitrary type sequence x.
		
		The returned array contains::
		
		  y[j_1,..,j_d] = 1/p * sum[k_1=0..n_1-1, ..., k_d=0..n_d-1]
		     x[k_1,..,k_d] * prod[i=1..d] exp(sqrt(-1)*2*pi/n_i * j_i * k_i)
		
		where ``d = len(x.shape)``, ``n = x.shape``, and ``p = prod[i=1..d] n_i``.
		
		For description of parameters see `fftn`.
		
		See Also
		--------
		fftn : for detailed information.
		
		Examples
		--------
		>>> from scipy.fftpack import fftn, ifftn
		>>> import numpy as np
		>>> y = (-np.arange(16), 8 - np.arange(16), np.arange(16))
		>>> np.allclose(y, ifftn(fftn(y)))
		True
	**/
	static public function ifftn(x:Dynamic, ?shape:Dynamic, ?axes:Dynamic, ?overwrite_x:Dynamic):Dynamic;
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
	static public function ifftshift(x:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		Return inverse Hilbert transform of a periodic sequence x.
		
		If ``x_j`` and ``y_j`` are Fourier coefficients of periodic functions x
		and y, respectively, then::
		
		  y_j = -sqrt(-1)*sign(j) * x_j
		  y_0 = 0
	**/
	static public function ihilbert(x:Dynamic):Dynamic;
	/**
		Return inverse discrete Fourier transform of real sequence x.
		
		The contents of `x` are interpreted as the output of the `rfft`
		function.
		
		Parameters
		----------
		x : array_like
		    Transformed data to invert.
		n : int, optional
		    Length of the inverse Fourier transform.
		    If n < x.shape[axis], x is truncated.
		    If n > x.shape[axis], x is zero-padded.
		    The default results in n = x.shape[axis].
		axis : int, optional
		    Axis along which the ifft's are computed; the default is over
		    the last axis (i.e., axis=-1).
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		irfft : ndarray of floats
		    The inverse discrete Fourier transform.
		
		See Also
		--------
		rfft, ifft, numpy.fft.irfft
		
		Notes
		-----
		The returned real array contains::
		
		    [y(0),y(1),...,y(n-1)]
		
		where for n is even::
		
		    y(j) = 1/n (sum[k=1..n/2-1] (x[2*k-1]+sqrt(-1)*x[2*k])
		                                 * exp(sqrt(-1)*j*k* 2*pi/n)
		                + c.c. + x[0] + (-1)**(j) x[n-1])
		
		and for n is odd::
		
		    y(j) = 1/n (sum[k=1..(n-1)/2] (x[2*k-1]+sqrt(-1)*x[2*k])
		                                 * exp(sqrt(-1)*j*k* 2*pi/n)
		                + c.c. + x[0])
		
		c.c. denotes complex conjugate of preceding expression.
		
		For details on input parameters, see `rfft`.
		
		To process (conjugate-symmetric) frequency-domain data with a complex
		datatype, consider using the related function `numpy.fft.irfft`.
	**/
	static public function irfft(x:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return inverse h-Tilbert transform of a periodic sequence x.
		
		If ``x_j`` and ``y_j`` are Fourier coefficients of periodic functions x
		and y, respectively, then::
		
		  y_j = -sqrt(-1)*tanh(j*h*2*pi/period) * x_j
		  y_0 = 0
		
		For more details, see `tilbert`.
	**/
	static public function itilbert(x:Dynamic, h:Dynamic, ?period:Dynamic, ?_cache:Dynamic):Dynamic;
	/**
		Find the next fast size of input data to `fft`, for zero-padding, etc.
		
		SciPy's FFTPACK has efficient functions for radix {2, 3, 4, 5}, so this
		returns the next composite of the prime factors 2, 3, and 5 which is
		greater than or equal to `target`. (These are also known as 5-smooth
		numbers, regular numbers, or Hamming numbers.)
		
		Parameters
		----------
		target : int
		    Length to start searching from.  Must be a positive integer.
		
		Returns
		-------
		out : int
		    The first 5-smooth number greater than or equal to `target`.
		
		Notes
		-----
		.. versionadded:: 0.18.0
		
		Examples
		--------
		On a particular machine, an FFT of prime length takes 133 ms:
		
		>>> from scipy import fftpack
		>>> min_len = 10007  # prime length is worst case for speed
		>>> a = np.random.randn(min_len)
		>>> b = fftpack.fft(a)
		
		Zero-padding to the next 5-smooth length reduces computation time to
		211 us, a speedup of 630 times:
		
		>>> fftpack.helper.next_fast_len(min_len)
		10125
		>>> b = fftpack.fft(a, 10125)
		
		Rounding up to the next power of 2 is not optimal, taking 367 us to
		compute, 1.7 times as long as the 5-smooth size:
		
		>>> b = fftpack.fft(a, 16384)
	**/
	static public function next_fast_len(target:Dynamic):Int;
	static public var print_function : Dynamic;
	/**
		Discrete Fourier transform of a real sequence.
		
		Parameters
		----------
		x : array_like, real-valued
		    The data to transform.
		n : int, optional
		    Defines the length of the Fourier transform.  If `n` is not specified
		    (the default) then ``n = x.shape[axis]``.  If ``n < x.shape[axis]``,
		    `x` is truncated, if ``n > x.shape[axis]``, `x` is zero-padded.
		axis : int, optional
		    The axis along which the transform is applied.  The default is the
		    last axis.
		overwrite_x : bool, optional
		    If set to true, the contents of `x` can be overwritten. Default is
		    False.
		
		Returns
		-------
		z : real ndarray
		    The returned real array contains::
		
		      [y(0),Re(y(1)),Im(y(1)),...,Re(y(n/2))]              if n is even
		      [y(0),Re(y(1)),Im(y(1)),...,Re(y(n/2)),Im(y(n/2))]   if n is odd
		
		    where::
		
		      y(j) = sum[k=0..n-1] x[k] * exp(-sqrt(-1)*j*k*2*pi/n)
		      j = 0..n-1
		
		See Also
		--------
		fft, irfft, numpy.fft.rfft
		
		Notes
		-----
		Within numerical accuracy, ``y == rfft(irfft(y))``.
		
		Both single and double precision routines are implemented.  Half precision
		inputs will be converted to single precision.  Non floating-point inputs
		will be converted to double precision.  Long-double precision inputs are
		not supported.
		
		To get an output with a complex datatype, consider using the related
		function `numpy.fft.rfft`.
		
		Examples
		--------
		>>> from scipy.fftpack import fft, rfft
		>>> a = [9, -9, 1, 3]
		>>> fft(a)
		array([  4. +0.j,   8.+12.j,  16. +0.j,   8.-12.j])
		>>> rfft(a)
		array([  4.,   8.,  12.,  16.])
	**/
	static public function rfft(x:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		DFT sample frequencies (for usage with rfft, irfft).
		
		The returned float array contains the frequency bins in
		cycles/unit (with zero at the start) given a window length `n` and a
		sample spacing `d`::
		
		  f = [0,1,1,2,2,...,n/2-1,n/2-1,n/2]/(d*n)   if n is even
		  f = [0,1,1,2,2,...,n/2-1,n/2-1,n/2,n/2]/(d*n)   if n is odd
		
		Parameters
		----------
		n : int
		    Window length.
		d : scalar, optional
		    Sample spacing. Default is 1.
		
		Returns
		-------
		out : ndarray
		    The array of length `n`, containing the sample frequencies.
		
		Examples
		--------
		>>> from scipy import fftpack
		>>> sig = np.array([-2, 8, 6, 4, 1, 0, 3, 5], dtype=float)
		>>> sig_fft = fftpack.rfft(sig)
		>>> n = sig_fft.size
		>>> timestep = 0.1
		>>> freq = fftpack.rfftfreq(n, d=timestep)
		>>> freq
		array([ 0.  ,  1.25,  1.25,  2.5 ,  2.5 ,  3.75,  3.75,  5.  ])
	**/
	static public function rfftfreq(n:Dynamic, ?d:Dynamic):Dynamic;
	/**
		Return (a,b)-sinh/cosh pseudo-derivative of a periodic sequence x.
		
		If x_j and y_j are Fourier coefficients of periodic functions x
		and y, respectively, then::
		
		  y_j = sqrt(-1)*sinh(j*a*2*pi/period)/cosh(j*b*2*pi/period) * x_j
		  y_0 = 0
		
		Parameters
		----------
		x : array_like
		    Input array.
		a,b : float
		    Defines the parameters of the sinh/cosh pseudo-differential
		    operator.
		period : float, optional
		    The period of the sequence x. Default is 2*pi.
		
		Notes
		-----
		``sc_diff(cs_diff(x,a,b),b,a) == x``
		For even ``len(x)``, the Nyquist mode of x is taken as zero.
	**/
	static public function sc_diff(x:Dynamic, a:Dynamic, b:Dynamic, ?period:Dynamic, ?_cache:Dynamic):Dynamic;
	/**
		Shift periodic sequence x by a: y(u) = x(u+a).
		
		If x_j and y_j are Fourier coefficients of periodic functions x
		and y, respectively, then::
		
		      y_j = exp(j*a*2*pi/period*sqrt(-1)) * x_f
		
		Parameters
		----------
		x : array_like
		    The array to take the pseudo-derivative from.
		a : float
		    Defines the parameters of the sinh/sinh pseudo-differential
		period : float, optional
		    The period of the sequences x and y. Default period is ``2*pi``.
	**/
	static public function shift(x:Dynamic, a:Dynamic, ?period:Dynamic, ?_cache:Dynamic):Dynamic;
	/**
		Return (a,b)-sinh/sinh pseudo-derivative of a periodic sequence x.
		
		If x_j and y_j are Fourier coefficients of periodic functions x
		and y, respectively, then::
		
		  y_j = sinh(j*a*2*pi/period)/sinh(j*b*2*pi/period) * x_j
		  y_0 = a/b * x_0
		
		Parameters
		----------
		x : array_like
		    The array to take the pseudo-derivative from.
		a,b
		    Defines the parameters of the sinh/sinh pseudo-differential
		    operator.
		period : float, optional
		    The period of the sequence x. Default is ``2*pi``.
		
		Notes
		-----
		``ss_diff(ss_diff(x,a,b),b,a) == x``
	**/
	static public function ss_diff(x:Dynamic, a:Dynamic, b:Dynamic, ?period:Dynamic, ?_cache:Dynamic):Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?tests:Dynamic):Dynamic;
	/**
		Return h-Tilbert transform of a periodic sequence x.
		
		If x_j and y_j are Fourier coefficients of periodic functions x
		and y, respectively, then::
		
		    y_j = sqrt(-1)*coth(j*h*2*pi/period) * x_j
		    y_0 = 0
		
		Parameters
		----------
		x : array_like
		    The input array to transform.
		h : float
		    Defines the parameter of the Tilbert transform.
		period : float, optional
		    The assumed period of the sequence.  Default period is ``2*pi``.
		
		Returns
		-------
		tilbert : ndarray
		    The result of the transform.
		
		Notes
		-----
		If ``sum(x, axis=0) == 0`` and ``n = len(x)`` is odd then
		``tilbert(itilbert(x)) == x``.
		
		If ``2 * pi * h / period`` is approximately 10 or larger, then
		numerically ``tilbert == hilbert``
		(theoretically oo-Tilbert == Hilbert).
		
		For even ``len(x)``, the Nyquist mode of ``x`` is taken zero.
	**/
	static public function tilbert(x:Dynamic, h:Dynamic, ?period:Dynamic, ?_cache:Dynamic):Dynamic;
}