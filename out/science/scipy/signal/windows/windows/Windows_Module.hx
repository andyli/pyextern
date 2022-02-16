/* This file is generated, do not edit! */
package scipy.signal.windows.windows;
@:pythonImport("scipy.signal.windows.windows") extern class Windows_Module {
	/**
		Return a modified Bartlett-Hann window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.barthann(51)
		>>> plt.plot(window)
		>>> plt.title("Bartlett-Hann window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Bartlett-Hann window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function barthann(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a Bartlett window.
		
		The Bartlett window is very similar to a triangular window, except
		that the end points are at zero.  It is often used in signal
		processing for tapering a signal, without generating too much
		ripple in the frequency domain.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The triangular window, with the first and last samples equal to zero
		    and the maximum value normalized to 1 (though the value 1 does not
		    appear if `M` is even and `sym` is True).
		
		See Also
		--------
		triang : A triangular window that does not touch zero at the ends
		
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
		tapering function. The Fourier transform of the Bartlett is the product
		of two sinc functions.
		Note the excellent discussion in Kanasewich. [2]_
		
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
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.bartlett(51)
		>>> plt.plot(window)
		>>> plt.title("Bartlett window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Bartlett window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function bartlett(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a Blackman window.
		
		The Blackman window is a taper formed by using the first three terms of
		a summation of cosines. It was designed to have close to the minimal
		leakage possible.  It is close to optimal, only slightly worse than a
		Kaiser window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The Blackman window is defined as
		
		.. math::  w(n) = 0.42 - 0.5 \cos(2\pi n/M) + 0.08 \cos(4\pi n/M)
		
		The "exact Blackman" window was designed to null out the third and fourth
		sidelobes, but has discontinuities at the boundaries, resulting in a
		6 dB/oct fall-off.  This window is an approximation of the "exact" window,
		which does not null the sidelobes as well, but is smooth at the edges,
		improving the fall-off rate to 18 dB/oct. [3]_
		
		Most references to the Blackman window come from the signal processing
		literature, where it is used as one of many windowing functions for
		smoothing values.  It is also known as an apodization (which means
		"removing the foot", i.e. smoothing discontinuities at the beginning
		and end of the sampled signal) or tapering function. It is known as a
		"near optimal" tapering function, almost as good (by some measures)
		as the Kaiser window.
		
		References
		----------
		.. [1] Blackman, R.B. and Tukey, J.W., (1958) The measurement of power
		       spectra, Dover Publications, New York.
		.. [2] Oppenheim, A.V., and R.W. Schafer. Discrete-Time Signal Processing.
		       Upper Saddle River, NJ: Prentice-Hall, 1999, pp. 468-471.
		.. [3] Harris, Fredric J. (Jan 1978). "On the use of Windows for Harmonic
		       Analysis with the Discrete Fourier Transform". Proceedings of the
		       IEEE 66 (1): 51-83. :doi:`10.1109/PROC.1978.10837`.
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.blackman(51)
		>>> plt.plot(window)
		>>> plt.title("Blackman window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = np.abs(fftshift(A / abs(A).max()))
		>>> response = 20 * np.log10(np.maximum(response, 1e-10))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Blackman window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function blackman(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a minimum 4-term Blackman-Harris window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.blackmanharris(51)
		>>> plt.plot(window)
		>>> plt.title("Blackman-Harris window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Blackman-Harris window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function blackmanharris(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a Bohman window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.bohman(51)
		>>> plt.plot(window)
		>>> plt.title("Bohman window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Bohman window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function bohman(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a boxcar or rectangular window.
		
		Also known as a rectangular window or Dirichlet window, this is equivalent
		to no window at all.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    Whether the window is symmetric. (Has no effect for boxcar.)
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1.
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.boxcar(51)
		>>> plt.plot(window)
		>>> plt.title("Boxcar window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the boxcar window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function boxcar(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a Dolph-Chebyshev window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		at : float
		    Attenuation (in dB).
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value always normalized to 1
		
		Notes
		-----
		This window optimizes for the narrowest main lobe width for a given order
		`M` and sidelobe equiripple attenuation `at`, using Chebyshev
		polynomials.  It was originally developed by Dolph to optimize the
		directionality of radio antenna arrays.
		
		Unlike most windows, the Dolph-Chebyshev is defined in terms of its
		frequency response:
		
		.. math:: W(k) = \frac
		          {\cos\{M \cos^{-1}[\beta \cos(\frac{\pi k}{M})]\}}
		          {\cosh[M \cosh^{-1}(\beta)]}
		
		where
		
		.. math:: \beta = \cosh \left [\frac{1}{M}
		          \cosh^{-1}(10^\frac{A}{20}) \right ]
		
		and 0 <= abs(k) <= M-1. A is the attenuation in decibels (`at`).
		
		The time domain window is then generated using the IFFT, so
		power-of-two `M` are the fastest to generate, and prime number `M` are
		the slowest.
		
		The equiripple condition in the frequency domain creates impulses in the
		time domain, which appear at the ends of the window.
		
		References
		----------
		.. [1] C. Dolph, "A current distribution for broadside arrays which
		       optimizes the relationship between beam width and side-lobe level",
		       Proceedings of the IEEE, Vol. 34, Issue 6
		.. [2] Peter Lynch, "The Dolph-Chebyshev Window: A Simple Optimal Filter",
		       American Meteorological Society (April 1997)
		       http://mathsci.ucd.ie/~plynch/Publications/Dolph.pdf
		.. [3] F. J. Harris, "On the use of windows for harmonic analysis with the
		       discrete Fourier transforms", Proceedings of the IEEE, Vol. 66,
		       No. 1, January 1978
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.chebwin(51, at=100)
		>>> plt.plot(window)
		>>> plt.title("Dolph-Chebyshev window (100 dB)")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Dolph-Chebyshev window (100 dB)")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function chebwin(M:Dynamic, at:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a window with a simple cosine shape.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		
		.. versionadded:: 0.13.0
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.cosine(51)
		>>> plt.plot(window)
		>>> plt.title("Cosine window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the cosine window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		>>> plt.show()
	**/
	static public function cosine(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Compute the Discrete Prolate Spheroidal Sequences (DPSS).
		
		DPSS (or Slepian sequences) are often used in multitaper power spectral
		density estimation (see [1]_). The first window in the sequence can be
		used to maximize the energy concentration in the main lobe, and is also
		called the Slepian window.
		
		Parameters
		----------
		M : int
		    Window length.
		NW : float
		    Standardized half bandwidth corresponding to ``2*NW = BW/f0 = BW*M*dt``
		    where ``dt`` is taken as 1.
		Kmax : int | None, optional
		    Number of DPSS windows to return (orders ``0`` through ``Kmax-1``).
		    If None (default), return only a single window of shape ``(M,)``
		    instead of an array of windows of shape ``(Kmax, M)``.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		norm : {2, 'approximate', 'subsample'} | None, optional
		    If 'approximate' or 'subsample', then the windows are normalized by the
		    maximum, and a correction scale-factor for even-length windows
		    is applied either using ``M**2/(M**2+NW)`` ("approximate") or
		    a FFT-based subsample shift ("subsample"), see Notes for details.
		    If None, then "approximate" is used when ``Kmax=None`` and 2 otherwise
		    (which uses the l2 norm).
		return_ratios : bool, optional
		    If True, also return the concentration ratios in addition to the
		    windows.
		
		Returns
		-------
		v : ndarray, shape (Kmax, M) or (M,)
		    The DPSS windows. Will be 1D if `Kmax` is None.
		r : ndarray, shape (Kmax,) or float, optional
		    The concentration ratios for the windows. Only returned if
		    `return_ratios` evaluates to True. Will be 0D if `Kmax` is None.
		
		Notes
		-----
		This computation uses the tridiagonal eigenvector formulation given
		in [2]_.
		
		The default normalization for ``Kmax=None``, i.e. window-generation mode,
		simply using the l-infinity norm would create a window with two unity
		values, which creates slight normalization differences between even and odd
		orders. The approximate correction of ``M**2/float(M**2+NW)`` for even
		sample numbers is used to counteract this effect (see Examples below).
		
		For very long signals (e.g., 1e6 elements), it can be useful to compute
		windows orders of magnitude shorter and use interpolation (e.g.,
		`scipy.interpolate.interp1d`) to obtain tapers of length `M`,
		but this in general will not preserve orthogonality between the tapers.
		
		.. versionadded:: 1.1
		
		References
		----------
		.. [1] Percival DB, Walden WT. Spectral Analysis for Physical Applications:
		   Multitaper and Conventional Univariate Techniques.
		   Cambridge University Press; 1993.
		.. [2] Slepian, D. Prolate spheroidal wave functions, Fourier analysis, and
		   uncertainty V: The discrete case. Bell System Technical Journal,
		   Volume 57 (1978), 1371430.
		.. [3] Kaiser, JF, Schafer RW. On the Use of the I0-Sinh Window for
		   Spectrum Analysis. IEEE Transactions on Acoustics, Speech and
		   Signal Processing. ASSP-28 (1): 105-107; 1980.
		
		Examples
		--------
		We can compare the window to `kaiser`, which was invented as an alternative
		that was easier to calculate [3]_ (example adapted from
		`here <https://ccrma.stanford.edu/~jos/sasp/Kaiser_DPSS_Windows_Compared.html>`_):
		
		>>> import numpy as np
		>>> import matplotlib.pyplot as plt
		>>> from scipy.signal import windows, freqz
		>>> M = 51
		>>> fig, axes = plt.subplots(3, 2, figsize=(5, 7))
		>>> for ai, alpha in enumerate((1, 3, 5)):
		...     win_dpss = windows.dpss(M, alpha)
		...     beta = alpha*np.pi
		...     win_kaiser = windows.kaiser(M, beta)
		...     for win, c in ((win_dpss, 'k'), (win_kaiser, 'r')):
		...         win /= win.sum()
		...         axes[ai, 0].plot(win, color=c, lw=1.)
		...         axes[ai, 0].set(xlim=[0, M-1], title=r'$\alpha$ = %s' % alpha,
		...                         ylabel='Amplitude')
		...         w, h = freqz(win)
		...         axes[ai, 1].plot(w, 20 * np.log10(np.abs(h)), color=c, lw=1.)
		...         axes[ai, 1].set(xlim=[0, np.pi],
		...                         title=r'$\beta$ = %0.2f' % beta,
		...                         ylabel='Magnitude (dB)')
		>>> for ax in axes.ravel():
		...     ax.grid(True)
		>>> axes[2, 1].legend(['DPSS', 'Kaiser'])
		>>> fig.tight_layout()
		>>> plt.show()
		
		And here are examples of the first four windows, along with their
		concentration ratios:
		
		>>> M = 512
		>>> NW = 2.5
		>>> win, eigvals = windows.dpss(M, NW, 4, return_ratios=True)
		>>> fig, ax = plt.subplots(1)
		>>> ax.plot(win.T, linewidth=1.)
		>>> ax.set(xlim=[0, M-1], ylim=[-0.1, 0.1], xlabel='Samples',
		...        title='DPSS, M=%d, NW=%0.1f' % (M, NW))
		>>> ax.legend(['win[%d] (%0.4f)' % (ii, ratio)
		...            for ii, ratio in enumerate(eigvals)])
		>>> fig.tight_layout()
		>>> plt.show()
		
		Using a standard :math:`l_{\infty}` norm would produce two unity values
		for even `M`, but only one unity value for odd `M`. This produces uneven
		window power that can be counteracted by the approximate correction
		``M**2/float(M**2+NW)``, which can be selected by using
		``norm='approximate'`` (which is the same as ``norm=None`` when
		``Kmax=None``, as is the case here). Alternatively, the slower
		``norm='subsample'`` can be used, which uses subsample shifting in the
		frequency domain (FFT) to compute the correction:
		
		>>> Ms = np.arange(1, 41)
		>>> factors = (50, 20, 10, 5, 2.0001)
		>>> energy = np.empty((3, len(Ms), len(factors)))
		>>> for mi, M in enumerate(Ms):
		...     for fi, factor in enumerate(factors):
		...         NW = M / float(factor)
		...         # Corrected using empirical approximation (default)
		...         win = windows.dpss(M, NW)
		...         energy[0, mi, fi] = np.sum(win ** 2) / np.sqrt(M)
		...         # Corrected using subsample shifting
		...         win = windows.dpss(M, NW, norm='subsample')
		...         energy[1, mi, fi] = np.sum(win ** 2) / np.sqrt(M)
		...         # Uncorrected (using l-infinity norm)
		...         win /= win.max()
		...         energy[2, mi, fi] = np.sum(win ** 2) / np.sqrt(M)
		>>> fig, ax = plt.subplots(1)
		>>> hs = ax.plot(Ms, energy[2], '-o', markersize=4,
		...              markeredgecolor='none')
		>>> leg = [hs[-1]]
		>>> for hi, hh in enumerate(hs):
		...     h1 = ax.plot(Ms, energy[0, :, hi], '-o', markersize=4,
		...                  color=hh.get_color(), markeredgecolor='none',
		...                  alpha=0.66)
		...     h2 = ax.plot(Ms, energy[1, :, hi], '-o', markersize=4,
		...                  color=hh.get_color(), markeredgecolor='none',
		...                  alpha=0.33)
		...     if hi == len(hs) - 1:
		...         leg.insert(0, h1[0])
		...         leg.insert(0, h2[0])
		>>> ax.set(xlabel='M (samples)', ylabel=r'Power / $\sqrt{M}$')
		>>> ax.legend(leg, ['Uncorrected', r'Corrected: $\frac{M^2}{M^2+NW}$',
		...                 'Corrected (subsample)'])
		>>> fig.tight_layout()
	**/
	static public function dpss(M:Dynamic, NW:Dynamic, ?Kmax:Dynamic, ?sym:Dynamic, ?norm:Dynamic, ?return_ratios:Dynamic):Dynamic;
	/**
		Return an exponential (or Poisson) window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		center : float, optional
		    Parameter defining the center location of the window function.
		    The default value if not given is ``center = (M-1) / 2``.  This
		    parameter must take its default value for symmetric windows.
		tau : float, optional
		    Parameter defining the decay.  For ``center = 0`` use
		    ``tau = -(M-1) / ln(x)`` if ``x`` is the fraction of the window
		    remaining at the end.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The Exponential window is defined as
		
		.. math::  w(n) = e^{-|n-center| / \tau}
		
		References
		----------
		.. [1] S. Gade and H. Herlufsen, "Windows to FFT analysis (Part I)",
		       Technical Review 3, Bruel & Kjaer, 1987.
		
		Examples
		--------
		Plot the symmetric window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> M = 51
		>>> tau = 3.0
		>>> window = signal.windows.exponential(M, tau=tau)
		>>> plt.plot(window)
		>>> plt.title("Exponential Window (tau=3.0)")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -35, 0])
		>>> plt.title("Frequency response of the Exponential window (tau=3.0)")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		
		This function can also generate non-symmetric windows:
		
		>>> tau2 = -(M-1) / np.log(0.01)
		>>> window2 = signal.windows.exponential(M, 0, tau2, False)
		>>> plt.figure()
		>>> plt.plot(window2)
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
	**/
	static public function exponential(M:Dynamic, ?center:Dynamic, ?tau:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a flat top window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		Flat top windows are used for taking accurate measurements of signal
		amplitude in the frequency domain, with minimal scalloping error from the
		center of a frequency bin to its edges, compared to others.  This is a
		5th-order cosine window, with the 5 terms optimized to make the main lobe
		maximally flat. [1]_
		
		References
		----------
		.. [1] D'Antona, Gabriele, and A. Ferrero, "Digital Signal Processing for
		       Measurement Systems", Springer Media, 2006, p. 70
		       :doi:`10.1007/0-387-28666-7`.
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.flattop(51)
		>>> plt.plot(window)
		>>> plt.title("Flat top window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the flat top window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function flattop(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a Gaussian window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		std : float
		    The standard deviation, sigma.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The Gaussian window is defined as
		
		.. math::  w(n) = e^{ -\frac{1}{2}\left(\frac{n}{\sigma}\right)^2 }
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.gaussian(51, std=7)
		>>> plt.plot(window)
		>>> plt.title(r"Gaussian window ($\sigma$=7)")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title(r"Frequency response of the Gaussian window ($\sigma$=7)")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function gaussian(M:Dynamic, std:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Generic weighted sum of cosine terms window
		
		Parameters
		----------
		M : int
		    Number of points in the output window
		a : array_like
		    Sequence of weighting coefficients. This uses the convention of being
		    centered on the origin, so these will typically all be positive
		    numbers, not alternating sign.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		References
		----------
		.. [1] A. Nuttall, "Some windows with very good sidelobe behavior," IEEE
		       Transactions on Acoustics, Speech, and Signal Processing, vol. 29,
		       no. 1, pp. 84-91, Feb 1981. :doi:`10.1109/TASSP.1981.1163506`.
		.. [2] Heinzel G. et al., "Spectrum and spectral density estimation by the
		       Discrete Fourier transform (DFT), including a comprehensive list of
		       window functions and some new flat-top windows", February 15, 2002
		       https://holometer.fnal.gov/GH_FFT.pdf
		
		Examples
		--------
		Heinzel describes a flat-top window named "HFT90D" with formula: [2]_
		
		.. math::  w_j = 1 - 1.942604 \cos(z) + 1.340318 \cos(2z)
		           - 0.440811 \cos(3z) + 0.043097 \cos(4z)
		
		where
		
		.. math::  z = \frac{2 \pi j}{N}, j = 0...N - 1
		
		Since this uses the convention of starting at the origin, to reproduce the
		window, we need to convert every other coefficient to a positive number:
		
		>>> HFT90D = [1, 1.942604, 1.340318, 0.440811, 0.043097]
		
		The paper states that the highest sidelobe is at -90.2 dB.  Reproduce
		Figure 42 by plotting the window and its frequency response, and confirm
		the sidelobe level in red:
		
		>>> from scipy.signal.windows import general_cosine
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = general_cosine(1000, HFT90D, sym=False)
		>>> plt.plot(window)
		>>> plt.title("HFT90D window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 10000) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = np.abs(fftshift(A / abs(A).max()))
		>>> response = 20 * np.log10(np.maximum(response, 1e-10))
		>>> plt.plot(freq, response)
		>>> plt.axis([-50/1000, 50/1000, -140, 0])
		>>> plt.title("Frequency response of the HFT90D window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
		>>> plt.axhline(-90.2, color='red')
		>>> plt.show()
	**/
	static public function general_cosine(M:Dynamic, a:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a window with a generalized Gaussian shape.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		p : float
		    Shape parameter.  p = 1 is identical to `gaussian`, p = 0.5 is
		    the same shape as the Laplace distribution.
		sig : float
		    The standard deviation, sigma.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The generalized Gaussian window is defined as
		
		.. math::  w(n) = e^{ -\frac{1}{2}\left|\frac{n}{\sigma}\right|^{2p} }
		
		the half-power point is at
		
		.. math::  (2 \log(2))^{1/(2 p)} \sigma
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.general_gaussian(51, p=1.5, sig=7)
		>>> plt.plot(window)
		>>> plt.title(r"Generalized Gaussian window (p=1.5, $\sigma$=7)")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title(r"Freq. resp. of the gen. Gaussian "
		...           r"window (p=1.5, $\sigma$=7)")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function general_gaussian(M:Dynamic, p:Dynamic, sig:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a generalized Hamming window.
		
		The generalized Hamming window is constructed by multiplying a rectangular
		window by one period of a cosine function [1]_.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		alpha : float
		    The window coefficient, :math:`\alpha`
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The generalized Hamming window is defined as
		
		.. math:: w(n) = \alpha - \left(1 - \alpha\right) \cos\left(\frac{2\pi{n}}{M-1}\right)
		          \qquad 0 \leq n \leq M-1
		
		Both the common Hamming window and Hann window are special cases of the
		generalized Hamming window with :math:`\alpha` = 0.54 and :math:`\alpha` =
		0.5, respectively [2]_.
		
		See Also
		--------
		hamming, hann
		
		Examples
		--------
		The Sentinel-1A/B Instrument Processing Facility uses generalized Hamming
		windows in the processing of spaceborne Synthetic Aperture Radar (SAR)
		data [3]_. The facility uses various values for the :math:`\alpha`
		parameter based on operating mode of the SAR instrument. Some common
		:math:`\alpha` values include 0.75, 0.7 and 0.52 [4]_. As an example, we
		plot these different windows.
		
		>>> from scipy.signal.windows import general_hamming
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> fig1, spatial_plot = plt.subplots()
		>>> spatial_plot.set_title("Generalized Hamming Windows")
		>>> spatial_plot.set_ylabel("Amplitude")
		>>> spatial_plot.set_xlabel("Sample")
		
		>>> fig2, freq_plot = plt.subplots()
		>>> freq_plot.set_title("Frequency Responses")
		>>> freq_plot.set_ylabel("Normalized magnitude [dB]")
		>>> freq_plot.set_xlabel("Normalized frequency [cycles per sample]")
		
		>>> for alpha in [0.75, 0.7, 0.52]:
		...     window = general_hamming(41, alpha)
		...     spatial_plot.plot(window, label="{:.2f}".format(alpha))
		...     A = fft(window, 2048) / (len(window)/2.0)
		...     freq = np.linspace(-0.5, 0.5, len(A))
		...     response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		...     freq_plot.plot(freq, response, label="{:.2f}".format(alpha))
		>>> freq_plot.legend(loc="upper right")
		>>> spatial_plot.legend(loc="upper right")
		
		References
		----------
		.. [1] DSPRelated, "Generalized Hamming Window Family",
		       https://www.dsprelated.com/freebooks/sasp/Generalized_Hamming_Window_Family.html
		.. [2] Wikipedia, "Window function",
		       https://en.wikipedia.org/wiki/Window_function
		.. [3] Riccardo Piantanida ESA, "Sentinel-1 Level 1 Detailed Algorithm
		       Definition",
		       https://sentinel.esa.int/documents/247904/1877131/Sentinel-1-Level-1-Detailed-Algorithm-Definition
		.. [4] Matthieu Bourbigot ESA, "Sentinel-1 Product Definition",
		       https://sentinel.esa.int/documents/247904/1877131/Sentinel-1-Product-Definition
	**/
	static public function general_hamming(M:Dynamic, alpha:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a window of a given length and type.
		
		Parameters
		----------
		window : string, float, or tuple
		    The type of window to create. See below for more details.
		Nx : int
		    The number of samples in the window.
		fftbins : bool, optional
		    If True (default), create a "periodic" window, ready to use with
		    `ifftshift` and be multiplied by the result of an FFT (see also
		    :func:`~scipy.fft.fftfreq`).
		    If False, create a "symmetric" window, for use in filter design.
		
		Returns
		-------
		get_window : ndarray
		    Returns a window of length `Nx` and type `window`
		
		Notes
		-----
		Window types:
		
		- `~scipy.signal.windows.boxcar`
		- `~scipy.signal.windows.triang`
		- `~scipy.signal.windows.blackman`
		- `~scipy.signal.windows.hamming`
		- `~scipy.signal.windows.hann`
		- `~scipy.signal.windows.bartlett`
		- `~scipy.signal.windows.flattop`
		- `~scipy.signal.windows.parzen`
		- `~scipy.signal.windows.bohman`
		- `~scipy.signal.windows.blackmanharris`
		- `~scipy.signal.windows.nuttall`
		- `~scipy.signal.windows.barthann`
		- `~scipy.signal.windows.cosine`
		- `~scipy.signal.windows.exponential`
		- `~scipy.signal.windows.tukey`
		- `~scipy.signal.windows.taylor`
		- `~scipy.signal.windows.kaiser` (needs beta)
		- `~scipy.signal.windows.gaussian` (needs standard deviation)
		- `~scipy.signal.windows.general_cosine` (needs weighting coefficients)
		- `~scipy.signal.windows.general_gaussian` (needs power, width)
		- `~scipy.signal.windows.general_hamming` (needs window coefficient)
		- `~scipy.signal.windows.dpss` (needs normalized half-bandwidth)
		- `~scipy.signal.windows.chebwin` (needs attenuation)
		
		
		If the window requires no parameters, then `window` can be a string.
		
		If the window requires parameters, then `window` must be a tuple
		with the first argument the string name of the window, and the next
		arguments the needed parameters.
		
		If `window` is a floating point number, it is interpreted as the beta
		parameter of the `~scipy.signal.windows.kaiser` window.
		
		Each of the window types listed above is also the name of
		a function that can be called directly to create a window of
		that type.
		
		Examples
		--------
		>>> from scipy import signal
		>>> signal.get_window('triang', 7)
		array([ 0.125,  0.375,  0.625,  0.875,  0.875,  0.625,  0.375])
		>>> signal.get_window(('kaiser', 4.0), 9)
		array([ 0.08848053,  0.29425961,  0.56437221,  0.82160913,  0.97885093,
		        0.97885093,  0.82160913,  0.56437221,  0.29425961])
		>>> signal.get_window(('exponential', None, 1.), 9)
		array([ 0.011109  ,  0.03019738,  0.082085  ,  0.22313016,  0.60653066,
		        0.60653066,  0.22313016,  0.082085  ,  0.03019738])
		>>> signal.get_window(4.0, 9)
		array([ 0.08848053,  0.29425961,  0.56437221,  0.82160913,  0.97885093,
		        0.97885093,  0.82160913,  0.56437221,  0.29425961])
	**/
	static public function get_window(window:Dynamic, Nx:Dynamic, ?fftbins:Dynamic):Dynamic;
	/**
		Return a Hamming window.
		
		The Hamming window is a taper formed by using a raised cosine with
		non-zero endpoints, optimized to minimize the nearest side lobe.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The Hamming window is defined as
		
		.. math::  w(n) = 0.54 - 0.46 \cos\left(\frac{2\pi{n}}{M-1}\right)
		           \qquad 0 \leq n \leq M-1
		
		The Hamming was named for R. W. Hamming, an associate of J. W. Tukey and
		is described in Blackman and Tukey. It was recommended for smoothing the
		truncated autocovariance function in the time domain.
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
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.hamming(51)
		>>> plt.plot(window)
		>>> plt.title("Hamming window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Hamming window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function hamming(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a Hann window.
		
		The Hann window is a taper formed by using a raised cosine or sine-squared
		with ends that touch zero.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The Hann window is defined as
		
		.. math::  w(n) = 0.5 - 0.5 \cos\left(\frac{2\pi{n}}{M-1}\right)
		           \qquad 0 \leq n \leq M-1
		
		The window was named for Julius von Hann, an Austrian meteorologist. It is
		also known as the Cosine Bell. It is sometimes erroneously referred to as
		the "Hanning" window, from the use of "hann" as a verb in the original
		paper and confusion with the very similar Hamming window.
		
		Most references to the Hann window come from the signal processing
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
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.hann(51)
		>>> plt.plot(window)
		>>> plt.title("Hann window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = np.abs(fftshift(A / abs(A).max()))
		>>> response = 20 * np.log10(np.maximum(response, 1e-10))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Hann window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function hann(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		`hanning` is deprecated, use `scipy.signal.windows.hann` instead!
	**/
	static public function hanning(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var k : Dynamic;
	/**
		Return a Kaiser window.
		
		The Kaiser window is a taper formed by using a Bessel function.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		beta : float
		    Shape parameter, determines trade-off between main-lobe width and
		    side lobe level. As beta gets large, the window narrows.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		Notes
		-----
		The Kaiser window is defined as
		
		.. math::  w(n) = I_0\left( \beta \sqrt{1-\frac{4n^2}{(M-1)^2}}
		           \right)/I_0(\beta)
		
		with
		
		.. math:: \quad -\frac{M-1}{2} \leq n \leq \frac{M-1}{2},
		
		where :math:`I_0` is the modified zeroth-order Bessel function.
		
		The Kaiser was named for Jim Kaiser, who discovered a simple approximation
		to the DPSS window based on Bessel functions.
		The Kaiser window is a very good approximation to the Digital Prolate
		Spheroidal Sequence, or Slepian window, which is the transform which
		maximizes the energy in the main lobe of the window relative to total
		energy.
		
		The Kaiser can approximate other windows by varying the beta parameter.
		(Some literature uses alpha = beta/pi.) [4]_
		
		====  =======================
		beta  Window shape
		====  =======================
		0     Rectangular
		5     Similar to a Hamming
		6     Similar to a Hann
		8.6   Similar to a Blackman
		====  =======================
		
		A beta value of 14 is probably a good starting point. Note that as beta
		gets large, the window narrows, and so the number of samples needs to be
		large enough to sample the increasingly narrow spike, otherwise NaNs will
		be returned.
		
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
		.. [4] F. J. Harris, "On the use of windows for harmonic analysis with the
		       discrete Fourier transform," Proceedings of the IEEE, vol. 66,
		       no. 1, pp. 51-83, Jan. 1978. :doi:`10.1109/PROC.1978.10837`.
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.kaiser(51, beta=14)
		>>> plt.plot(window)
		>>> plt.title(r"Kaiser window ($\beta$=14)")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title(r"Frequency response of the Kaiser window ($\beta$=14)")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function kaiser(M:Dynamic, beta:Dynamic, ?sym:Dynamic):Dynamic;
	static public var key : Dynamic;
	/**
		Return a minimum 4-term Blackman-Harris window according to Nuttall.
		
		This variation is called "Nuttall4c" by Heinzel. [2]_
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		References
		----------
		.. [1] A. Nuttall, "Some windows with very good sidelobe behavior," IEEE
		       Transactions on Acoustics, Speech, and Signal Processing, vol. 29,
		       no. 1, pp. 84-91, Feb 1981. :doi:`10.1109/TASSP.1981.1163506`.
		.. [2] Heinzel G. et al., "Spectrum and spectral density estimation by the
		       Discrete Fourier transform (DFT), including a comprehensive list of
		       window functions and some new flat-top windows", February 15, 2002
		       https://holometer.fnal.gov/GH_FFT.pdf
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.nuttall(51)
		>>> plt.plot(window)
		>>> plt.title("Nuttall window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Nuttall window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function nuttall(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a Parzen window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		References
		----------
		.. [1] E. Parzen, "Mathematical Considerations in the Estimation of
		       Spectra", Technometrics,  Vol. 3, No. 2 (May, 1961), pp. 167-190
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.parzen(51)
		>>> plt.plot(window)
		>>> plt.title("Parzen window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Parzen window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function parzen(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a Taylor window.
		
		The Taylor window taper function approximates the Dolph-Chebyshev window's
		constant sidelobe level for a parameterized number of near-in sidelobes,
		but then allows a taper beyond [2]_.
		
		The SAR (synthetic aperature radar) community commonly uses Taylor
		weighting for image formation processing because it provides strong,
		selectable sidelobe suppression with minimum broadening of the
		mainlobe [1]_.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an
		    empty array is returned.
		nbar : int, optional
		    Number of nearly constant level sidelobes adjacent to the mainlobe.
		sll : float, optional
		    Desired suppression of sidelobe level in decibels (dB) relative to the
		    DC gain of the mainlobe. This should be a positive number.
		norm : bool, optional
		    When True (default), divides the window by the largest (middle) value
		    for odd-length windows or the value that would occur between the two
		    repeated middle values for even-length windows such that all values
		    are less than or equal to 1. When False the DC gain will remain at 1
		    (0 dB) and the sidelobes will be `sll` dB down.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		out : array
		    The window. When `norm` is True (default), the maximum value is
		    normalized to 1 (though the value 1 does not appear if `M` is
		    even and `sym` is True).
		
		See Also
		--------
		chebwin, kaiser, bartlett, blackman, hamming, hanning
		
		References
		----------
		.. [1] W. Carrara, R. Goodman, and R. Majewski, "Spotlight Synthetic
		       Aperture Radar: Signal Processing Algorithms" Pages 512-513,
		       July 1995.
		.. [2] Armin Doerry, "Catalog of Window Taper Functions for
		       Sidelobe Control", 2017.
		       https://www.researchgate.net/profile/Armin_Doerry/publication/316281181_Catalog_of_Window_Taper_Functions_for_Sidelobe_Control/links/58f92cb2a6fdccb121c9d54d/Catalog-of-Window-Taper-Functions-for-Sidelobe-Control.pdf
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.taylor(51, nbar=20, sll=100, norm=False)
		>>> plt.plot(window)
		>>> plt.title("Taylor window (100 dB)")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Taylor window (100 dB)")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function taylor(M:Dynamic, ?nbar:Dynamic, ?sll:Dynamic, ?norm:Dynamic, ?sym:Dynamic):Array<Dynamic>;
	/**
		Return a triangular window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		See Also
		--------
		bartlett : A triangular window that touches zero
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.triang(51)
		>>> plt.plot(window)
		>>> plt.title("Triangular window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = np.abs(fftshift(A / abs(A).max()))
		>>> response = 20 * np.log10(np.maximum(response, 1e-10))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the triangular window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function triang(M:Dynamic, ?sym:Dynamic):Dynamic;
	/**
		Return a Tukey window, also known as a tapered cosine window.
		
		Parameters
		----------
		M : int
		    Number of points in the output window. If zero or less, an empty
		    array is returned.
		alpha : float, optional
		    Shape parameter of the Tukey window, representing the fraction of the
		    window inside the cosine tapered region.
		    If zero, the Tukey window is equivalent to a rectangular window.
		    If one, the Tukey window is equivalent to a Hann window.
		sym : bool, optional
		    When True (default), generates a symmetric window, for use in filter
		    design.
		    When False, generates a periodic window, for use in spectral analysis.
		
		Returns
		-------
		w : ndarray
		    The window, with the maximum value normalized to 1 (though the value 1
		    does not appear if `M` is even and `sym` is True).
		
		References
		----------
		.. [1] Harris, Fredric J. (Jan 1978). "On the use of Windows for Harmonic
		       Analysis with the Discrete Fourier Transform". Proceedings of the
		       IEEE 66 (1): 51-83. :doi:`10.1109/PROC.1978.10837`
		.. [2] Wikipedia, "Window function",
		       https://en.wikipedia.org/wiki/Window_function#Tukey_window
		
		Examples
		--------
		Plot the window and its frequency response:
		
		>>> from scipy import signal
		>>> from scipy.fft import fft, fftshift
		>>> import matplotlib.pyplot as plt
		
		>>> window = signal.windows.tukey(51)
		>>> plt.plot(window)
		>>> plt.title("Tukey window")
		>>> plt.ylabel("Amplitude")
		>>> plt.xlabel("Sample")
		>>> plt.ylim([0, 1.1])
		
		>>> plt.figure()
		>>> A = fft(window, 2048) / (len(window)/2.0)
		>>> freq = np.linspace(-0.5, 0.5, len(A))
		>>> response = 20 * np.log10(np.abs(fftshift(A / abs(A).max())))
		>>> plt.plot(freq, response)
		>>> plt.axis([-0.5, 0.5, -120, 0])
		>>> plt.title("Frequency response of the Tukey window")
		>>> plt.ylabel("Normalized magnitude [dB]")
		>>> plt.xlabel("Normalized frequency [cycles per sample]")
	**/
	static public function tukey(M:Dynamic, ?alpha:Dynamic, ?sym:Dynamic):Dynamic;
	static public var v : Dynamic;
}