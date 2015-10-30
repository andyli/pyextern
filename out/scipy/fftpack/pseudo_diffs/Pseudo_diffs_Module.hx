/* This file is generated, do not edit! */
package scipy.fftpack.pseudo_diffs;
@:pythonImport("scipy.fftpack.pseudo_diffs") extern class Pseudo_diffs_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Strict check for `arr` not sharing any data with `original`,
		under the assumption that arr = asarray(original)
	**/
	static public function _datacopied(arr:Dynamic, original:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major (C-style) or
		    column-major (Fortran-style) memory representation.
		    Defaults to 'C'.
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray.  If `a` is a subclass of ndarray, a base
		    class ndarray is returned.
		
		See Also
		--------
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asarray(a)
		array([1, 2])
		
		Existing arrays are not copied:
		
		>>> a = np.array([1, 2])
		>>> np.asarray(a) is a
		True
		
		If `dtype` is set, array is copied only if dtype does not match:
		
		>>> a = np.array([1, 2], dtype=np.float32)
		>>> np.asarray(a, dtype=np.float32) is a
		True
		>>> np.asarray(a, dtype=np.float64) is a
		False
		
		Contrary to `asanyarray`, ndarray subclasses are not passed through:
		
		>>> issubclass(np.matrix, np.ndarray)
		True
		>>> a = np.matrix([[1, 2]])
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
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
		cos(x[, out])
		
		Cosine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array in radians.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		    The corresponding cosine values.
		
		Raises
		------
		ValueError: invalid return array shape
		    if `out` is provided and `out.shape` != `x.shape` (See Examples)
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		New York, NY: Dover, 1972.
		
		Examples
		--------
		>>> np.cos(np.array([0, np.pi/2, np.pi]))
		array([  1.00000000e+00,   6.12303177e-17,  -1.00000000e+00])
		>>>
		>>> # Example of providing the optional output parameter
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function cos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cosh(x[, out])
		
		Hyperbolic cosine, element-wise.
		
		Equivalent to ``1/2 * (np.exp(x) + np.exp(-x))`` and ``np.cos(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray
		    Output array of same shape as `x`.
		
		Examples
		--------
		>>> np.cosh(0)
		1.0
		
		The hyperbolic cosine describes the shape of a hanging cable:
		
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-4, 4, 1000)
		>>> plt.plot(x, np.cosh(x))
		>>> plt.show()
	**/
	static public function cosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		Notes
		-----
		If ``sum(x, axis=0) == 0`` then ``hilbert(ihilbert(x)) == x``.
		
		For even len(x), the Nyquist mode of x is taken zero.
		
		The sign of the returned transform does not have a factor -1 that is more
		often than not found in the definition of the Hilbert transform.  Note also
		that ``scipy.signal.hilbert`` does have an extra -1 factor compared to this
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
	static public function iscomplexobj(x:Dynamic):Dynamic;
	/**
		Return inverse h-Tilbert transform of a periodic sequence x.
		
		If ``x_j`` and ``y_j`` are Fourier coefficients of periodic functions x
		and y, respectively, then::
		
		  y_j = -sqrt(-1)*tanh(j*h*2*pi/period) * x_j
		  y_0 = 0
		
		For more details, see `tilbert`.
	**/
	static public function itilbert(x:Dynamic, h:Dynamic, ?period:Dynamic, ?_cache:Dynamic):Dynamic;
	static public var pi : Dynamic;
	static public var print_function : Dynamic;
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
		sin(x[, out])
		
		Trigonometric sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Angle, in radians (:math:`2 \pi` rad equals 360 degrees).
		
		Returns
		-------
		y : array_like
		    The sine of each element of x.
		
		See Also
		--------
		arcsin, sinh, cos
		
		Notes
		-----
		The sine is one of the fundamental functions of trigonometry (the
		mathematical study of triangles).  Consider a circle of radius 1
		centered on the origin.  A ray comes in from the :math:`+x` axis, makes
		an angle at the origin (measured counter-clockwise from that axis), and
		departs from the origin.  The :math:`y` coordinate of the outgoing
		ray's intersection with the unit circle is the sine of that angle.  It
		ranges from -1 for :math:`x=3\pi / 2` to +1 for :math:`\pi / 2.`  The
		function has zeroes where the angle is a multiple of :math:`\pi`.
		Sines of angles between :math:`\pi` and :math:`2\pi` are negative.
		The numerous properties of the sine and related functions are included
		in any standard trigonometry text.
		
		Examples
		--------
		Print sine of one angle:
		
		>>> np.sin(np.pi/2.)
		1.0
		
		Print sines of an array of angles given in degrees:
		
		>>> np.sin(np.array((0., 30., 45., 60., 90.)) * np.pi / 180. )
		array([ 0.        ,  0.5       ,  0.70710678,  0.8660254 ,  1.        ])
		
		Plot the sine function:
		
		>>> import matplotlib.pylab as plt
		>>> x = np.linspace(-np.pi, np.pi, 201)
		>>> plt.plot(x, np.sin(x))
		>>> plt.xlabel('Angle [rad]')
		>>> plt.ylabel('sin(x)')
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function sin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sinh(x[, out])
		
		Hyperbolic sine, element-wise.
		
		Equivalent to ``1/2 * (np.exp(x) - np.exp(-x))`` or
		``-1j * np.sin(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		    The corresponding hyperbolic sine values.
		
		Raises
		------
		ValueError: invalid return array shape
		    if `out` is provided and `out.shape` != `x.shape` (See Examples)
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		New York, NY: Dover, 1972, pg. 83.
		
		Examples
		--------
		>>> np.sinh(0)
		0.0
		>>> np.sinh(np.pi*1j/2)
		1j
		>>> np.sinh(np.pi*1j) # (exact value is 0)
		1.2246063538223773e-016j
		>>> # Discrepancy due to vagaries of floating point arithmetic.
		
		>>> # Example of providing the optional output parameter
		>>> out2 = np.sinh([0.1], out1)
		>>> out2 is out1
		True
		
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.sinh(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function sinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		tanh(x[, out])
		
		Compute hyperbolic tangent element-wise.
		
		Equivalent to ``np.sinh(x)/np.cosh(x)`` or ``-1j * np.tan(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		    The corresponding hyperbolic tangent values.
		
		Raises
		------
		ValueError: invalid return array shape
		    if `out` is provided and `out.shape` != `x.shape` (See Examples)
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		.. [1] M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		       New York, NY: Dover, 1972, pg. 83.
		       http://www.math.sfu.ca/~cbm/aands/
		
		.. [2] Wikipedia, "Hyperbolic function",
		       http://en.wikipedia.org/wiki/Hyperbolic_function
		
		Examples
		--------
		>>> np.tanh((0, np.pi*1j, np.pi*1j/2))
		array([ 0. +0.00000000e+00j,  0. -1.22460635e-16j,  0. +1.63317787e+16j])
		
		>>> # Example of providing the optional output parameter illustrating
		>>> # that what is returned is a reference to said parameter
		>>> out2 = np.tanh([0.1], out1)
		>>> out2 is out1
		True
		
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.tanh(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function tanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
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