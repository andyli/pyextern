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
		    Number of divisions. Default is 1.
		
		Returns
		-------
		w : ndarray
		    Weights for an Np-point central derivative. Its size is `Np`.
		
		Notes
		-----
		Can be inaccurate for a large number of points.
		
		Examples
		--------
		We can calculate a derivative value of a function.
		
		>>> from scipy.misc import central_diff_weights
		>>> def f(x):
		...     return 2 * x**2 + 3
		>>> x = 3.0 # derivative point
		>>> h = 0.1 # differential step
		>>> Np = 3 # point number for central derivative
		>>> weights = central_diff_weights(Np) # weights for first derivative
		>>> vals = [f(x + (i - Np/2) * h) for i in range(Np)]
		>>> sum(w * v for (w, v) in zip(weights, vals))/h
		11.79999999999998
		
		This value is close to the analytical solution:
		f'(x) = 4x, so f'(3) = 12
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Finite_difference
	**/
	static public function central_diff_weights(Np:Dynamic, ?ndiv:Dynamic):Dynamic;
	/**
		Find the nth derivative of a function at a point.
		
		Given a function, use a central difference formula with spacing `dx` to
		compute the nth derivative at `x0`.
		
		Parameters
		----------
		func : function
		    Input function.
		x0 : float
		    The point at which the nth derivative is found.
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
	/**
		Load an electrocardiogram as an example for a 1-D signal.
		
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
		       (PMID: 11446209); :doi:`10.13026/C2F305`
		.. [2] Goldberger AL, Amaral LAN, Glass L, Hausdorff JM, Ivanov PCh,
		       Mark RG, Mietus JE, Moody GB, Peng C-K, Stanley HE. PhysioBank,
		       PhysioToolkit, and PhysioNet: Components of a New Research Resource
		       for Complex Physiologic Signals. Circulation 101(23):e215-e220;
		       :doi:`10.1161/01.CIR.101.23.e215`
		
		Examples
		--------
		>>> from scipy.misc import electrocardiogram
		>>> ecg = electrocardiogram()
		>>> ecg
		array([-0.245, -0.215, -0.185, ..., -0.405, -0.395, -0.385])
		>>> ecg.shape, ecg.mean(), ecg.std()
		((108000,), -0.16510875, 0.5992473991177294)
		
		As stated the signal features several areas with a different morphology.
		E.g., the first few seconds show the electrical activity of a heart in
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
		
		After second 16, however, the first premature ventricular contractions, also
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
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?tests:Dynamic, ?parallel:Dynamic):Dynamic;
}