/* This file is generated, do not edit! */
package scipy.fftpack.helper;
@:pythonImport("scipy.fftpack.helper") extern class Helper_Module {
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
		array([ 0.  ,  1.25,  2.5 , ..., -3.75, -2.5 , -1.25])
	**/
	static public function fftfreq(n:Dynamic, ?d:Dynamic):Dynamic;
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
		array([ 0.,  1.,  2., ..., -3., -2., -1.])
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
		Find the next fast size of input data to `fft`, for zero-padding, etc.
		
		SciPy's FFTPACK has efficient functions for radix {2, 3, 4, 5}, so this
		returns the next composite of the prime factors 2, 3, and 5 which is
		greater than or equal to `target`. (These are also known as 5-smooth
		numbers, regular numbers, or Hamming numbers.)
		
		Parameters
		----------
		target : int
		    Length to start searching from. Must be a positive integer.
		
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
		>>> rng = np.random.default_rng()
		>>> min_len = 10007  # prime length is worst case for speed
		>>> a = rng.standard_normal(min_len)
		>>> b = fftpack.fft(a)
		
		Zero-padding to the next 5-smooth length reduces computation time to
		211 us, a speedup of 630 times:
		
		>>> fftpack.next_fast_len(min_len)
		10125
		>>> b = fftpack.fft(a, 10125)
		
		Rounding up to the next power of 2 is not optimal, taking 367 us to
		compute, 1.7 times as long as the 5-smooth size:
		
		>>> b = fftpack.fft(a, 16384)
	**/
	static public function next_fast_len(target:Dynamic):Int;
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
}