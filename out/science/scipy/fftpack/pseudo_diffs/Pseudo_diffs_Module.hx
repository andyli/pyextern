/* This file is generated, do not edit! */
package scipy.fftpack.pseudo_diffs;
@:pythonImport("scipy.fftpack.pseudo_diffs") extern class Pseudo_diffs_Module {
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
		Return kth derivative (or integral) of a periodic sequence x.
		
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
		often than not found in the definition of the Hilbert transform. Note also
		that `scipy.signal.hilbert` does have an extra -1 factor compared to this
		function.
	**/
	static public function hilbert(x:Dynamic, ?_cache:Dynamic):Dynamic;
	/**
		Return inverse Hilbert transform of a periodic sequence x.
		
		If ``x_j`` and ``y_j`` are Fourier coefficients of periodic functions x
		and y, respectively, then::
		
		  y_j = -sqrt(-1)*sign(j) * x_j
		  y_0 = 0
	**/
	static public function ihilbert(x:Dynamic):Dynamic;
	/**
		Check for a complex type or an array of complex numbers.
		
		The type of the input is checked, not the value. Even if the input
		has an imaginary part equal to zero, `iscomplexobj` evaluates to True.
		
		Parameters
		----------
		x : any
		    The input can be of any type and shape.
		
		Returns
		-------
		iscomplexobj : bool
		    The return value, True if `x` is of a complex type or has at least
		    one complex element.
		
		See Also
		--------
		isrealobj, iscomplex
		
		Examples
		--------
		>>> np.iscomplexobj(1)
		False
		>>> np.iscomplexobj(1+0j)
		True
		>>> np.iscomplexobj([3, 1+0j, True])
		True
	**/
	static public function iscomplexobj(x:Dynamic):Bool;
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
		    The assumed period of the sequence. Default period is ``2*pi``.
		
		Returns
		-------
		tilbert : ndarray
		    The result of the transform.
		
		Notes
		-----
		If ``sum(x, axis=0) == 0`` and ``n = len(x)`` is odd, then
		``tilbert(itilbert(x)) == x``.
		
		If ``2 * pi * h / period`` is approximately 10 or larger, then
		numerically ``tilbert == hilbert``
		(theoretically oo-Tilbert == Hilbert).
		
		For even ``len(x)``, the Nyquist mode of ``x`` is taken zero.
	**/
	static public function tilbert(x:Dynamic, h:Dynamic, ?period:Dynamic, ?_cache:Dynamic):Dynamic;
}