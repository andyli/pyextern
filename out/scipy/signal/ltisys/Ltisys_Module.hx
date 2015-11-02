/* This file is generated, do not edit! */
package scipy.signal.ltisys;
@:pythonImport("scipy.signal.ltisys") extern class Ltisys_Module {
	/**
		Algorithm "KNV0" Kautsky et Al. Robust pole
		assignment in linear state feedback, Int journal of Control
		1985, vol 41 p 1129->1155
		http://la.epfl.ch/files/content/sites/la/files/
		    users/105941/public/KautskyNicholsDooren
	**/
	static public function _KNV0(B:Dynamic, ker_pole:Dynamic, transfer_matrix:Dynamic, j:Dynamic, poles:Dynamic):Dynamic;
	/**
		Loop over all poles one by one and apply KNV method 0 algorithm
	**/
	static public function _KNV0_loop(ker_pole:Dynamic, transfer_matrix:Dynamic, poles:Dynamic, B:Dynamic, maxiter:Dynamic, rtol:Dynamic):Dynamic;
	/**
		Applies algorithm from YT section 6.2 page 20 related to complex pairs
	**/
	static public function _YT_complex(ker_pole:Dynamic, Q:Dynamic, transfer_matrix:Dynamic, i:Dynamic, j:Dynamic):Dynamic;
	/**
		Algorithm "YT" Tits, Yang. Globally Convergent
		Algorithms for Robust Pole Assignment by State Feedback
		http://drum.lib.umd.edu/handle/1903/5598
		The poles P have to be sorted accordingly to section 6.2 page 20
	**/
	static public function _YT_loop(ker_pole:Dynamic, transfer_matrix:Dynamic, poles:Dynamic, B:Dynamic, maxiter:Dynamic, rtol:Dynamic):Dynamic;
	/**
		Applies algorithm from YT section 6.1 page 19 related to real pairs
	**/
	static public function _YT_real(ker_pole:Dynamic, Q:Dynamic, transfer_matrix:Dynamic, i:Dynamic, j:Dynamic):Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _atleast_2d_or_none(arg:Dynamic):Dynamic;
	/**
		Cast array to dtype of other array, while avoiding ComplexWarning.
		
		Those can be raised when casting complex to real.
	**/
	static public function _cast_to_array_dtype(in1:Dynamic, in2:Dynamic):Dynamic;
	static public function _choice_not_none(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Compute a reasonable set of time samples for the response time.
		
		This function is used by `impulse`, `impulse2`, `step` and `step2`
		to compute the response time when the `T` argument to the function
		is None.
		
		Parameters
		----------
		A : ndarray
		    The system matrix, which is square.
		n : int
		    The number of time samples to generate.
		
		Returns
		-------
		t : ndarray
		    The 1-D array of length `n` of time samples at which the response
		    is to be computed.
	**/
	static public function _default_response_times(A:Dynamic, n:Dynamic):Dynamic;
	static public function _none_to_empty_2d(arg:Dynamic):Dynamic;
	/**
		Check we have complex conjugates pairs and reorder P according to YT, ie
		real_poles, complex_i, conjugate complex_i, ....
		The lexicographic sort on the complex poles is added to help the user to
		compare sets of poles.
	**/
	static public function _order_complex_poles(poles:Dynamic):Dynamic;
	static public function _restore(M:Dynamic, shape:Dynamic):Dynamic;
	static public function _shape_or_none(M:Dynamic):Dynamic;
	/**
		Check the poles come in complex conjugage pairs
		Check shapes of A, B and poles are compatible.
		Check the method chosen is compatible with provided poles
		Return update method to use and ordered poles
	**/
	static public function _valid_inputs(A:Dynamic, B:Dynamic, poles:Dynamic, method:Dynamic, rtol:Dynamic, maxiter:Dynamic):Dynamic;
	/**
		Check state-space matrices and ensure they are two-dimensional.
		
		If enough information on the system is provided, that is, enough
		properly-shaped arrays are passed to the function, the missing ones
		are built from this information, ensuring the correct number of
		rows and columns. Otherwise a ValueError is raised.
		
		Parameters
		----------
		A, B, C, D : array_like, optional
		    State-space matrices. All of them are None (missing) by default.
		
		Returns
		-------
		A, B, C, D : array
		    Properly shaped state-space matrices.
		
		Raises
		------
		ValueError
		    If not enough information on the system was provided.
	**/
	static public function abcd_normalize(?A:Dynamic, ?B:Dynamic, ?C:Dynamic, ?D:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		array(object, dtype=None, copy=True, order=None, subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an
		    object whose __array__ method returns an array, or any
		    (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then
		    the type will be determined as the minimum type required
		    to hold the objects in the sequence.  This argument can only
		    be used to 'upcast' the array.  For downcasting, use the
		    .astype(t) method.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy
		    will only be made if __array__ returns a copy, if obj is a
		    nested sequence, or if a copy is needed to satisfy any of the other
		    requirements (`dtype`, `order`, etc.).
		order : {'C', 'F', 'A'}, optional
		    Specify the order of the array.  If order is 'C', then the array
		    will be in C-contiguous order (last-index varies the fastest).
		    If order is 'F', then the returned array will be in
		    Fortran-contiguous order (first-index varies the fastest).
		    If order is 'A' (default), then the returned array may be
		    in any order (either C-, Fortran-contiguous, or even discontiguous),
		    unless a copy is required, in which case it will be C-contiguous.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		
		Returns
		-------
		out : ndarray
		    An array object satisfying the specified requirements.
		
		See Also
		--------
		empty, empty_like, zeros, zeros_like, ones, ones_like, fill
		
		Examples
		--------
		>>> np.array([1, 2, 3])
		array([1, 2, 3])
		
		Upcasting:
		
		>>> np.array([1, 2, 3.0])
		array([ 1.,  2.,  3.])
		
		More than one dimension:
		
		>>> np.array([[1, 2], [3, 4]])
		array([[1, 2],
		       [3, 4]])
		
		Minimum dimensions 2:
		
		>>> np.array([1, 2, 3], ndmin=2)
		array([[1, 2, 3]])
		
		Type provided:
		
		>>> np.array([1, 2, 3], dtype=complex)
		array([ 1.+0.j,  2.+0.j,  3.+0.j])
		
		Data-type consisting of more than one element:
		
		>>> x = np.array([(1,2),(3,4)],dtype=[('a','<i4'),('b','<i4')])
		>>> x['a']
		array([1, 3])
		
		Creating an array from sub-classes:
		
		>>> np.array(np.mat('1 2; 3 4'))
		array([[1, 2],
		       [3, 4]])
		
		>>> np.array(np.mat('1 2; 3 4'), subok=True)
		matrix([[1, 2],
		        [3, 4]])
	**/
	static public function array(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Convert inputs to arrays with at least one dimension.
		
		Scalar inputs are converted to 1-dimensional arrays, whilst
		higher-dimensional inputs are preserved.
		
		Parameters
		----------
		arys1, arys2, ... : array_like
		    One or more input arrays.
		
		Returns
		-------
		ret : ndarray
		    An array, or sequence of arrays, each with ``a.ndim >= 1``.
		    Copies are made only if necessary.
		
		See Also
		--------
		atleast_2d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_1d(1.0)
		array([ 1.])
		
		>>> x = np.arange(9.0).reshape(3,3)
		>>> np.atleast_1d(x)
		array([[ 0.,  1.,  2.],
		       [ 3.,  4.,  5.],
		       [ 6.,  7.,  8.]])
		>>> np.atleast_1d(x) is x
		True
		
		>>> np.atleast_1d(1, [3, 4])
		[array([1]), array([3, 4])]
	**/
	static public function atleast_1d(?arys:python.VarArgs<Dynamic>):Dynamic;
	/**
		View inputs as arrays with at least two dimensions.
		
		Parameters
		----------
		arys1, arys2, ... : array_like
		    One or more array-like sequences.  Non-array inputs are converted
		    to arrays.  Arrays that already have two or more dimensions are
		    preserved.
		
		Returns
		-------
		res, res2, ... : ndarray
		    An array, or tuple of arrays, each with ``a.ndim >= 2``.
		    Copies are avoided where possible, and views with two or more
		    dimensions are returned.
		
		See Also
		--------
		atleast_1d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_2d(3.0)
		array([[ 3.]])
		
		>>> x = np.arange(3.0)
		>>> np.atleast_2d(x)
		array([[ 0.,  1.,  2.]])
		>>> np.atleast_2d(x).base is x
		True
		
		>>> np.atleast_2d(1, [1, 2], [[1, 2]])
		[array([[1]]), array([[1, 2]]), array([[1, 2]])]
	**/
	static public function atleast_2d(?arys:python.VarArgs<Dynamic>):Dynamic;
	/**
		Calculate Bode magnitude and phase data of a continuous-time system.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 2 (num, den)
		        * 3 (zeros, poles, gain)
		        * 4 (A, B, C, D)
		
		w : array_like, optional
		    Array of frequencies (in rad/s). Magnitude and phase data is calculated
		    for every value in this array. If not given a reasonable set will be
		    calculated.
		n : int, optional
		    Number of frequency points to compute if `w` is not given. The `n`
		    frequencies are logarithmically spaced in an interval chosen to
		    include the influence of the poles and zeros of the system.
		
		Returns
		-------
		w : 1D ndarray
		    Frequency array [rad/s]
		mag : 1D ndarray
		    Magnitude array [dB]
		phase : 1D ndarray
		    Phase array [deg]
		
		Notes
		-----
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> s1 = signal.lti([1], [1, 1])
		>>> w, mag, phase = signal.bode(s1)
		
		>>> plt.figure()
		>>> plt.semilogx(w, mag)    # Bode magnitude plot
		>>> plt.figure()
		>>> plt.semilogx(w, phase)  # Bode phase plot
		>>> plt.show()
	**/
	static public function bode(system:Dynamic, ?w:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Extract a diagonal or construct a diagonal array.
		
		See the more detailed documentation for ``numpy.diagonal`` if you use this
		function to extract a diagonal and wish to write to the resulting array;
		whether it returns a copy or a view depends on what version of numpy you
		are using.
		
		Parameters
		----------
		v : array_like
		    If `v` is a 2-D array, return a copy of its `k`-th diagonal.
		    If `v` is a 1-D array, return a 2-D array with `v` on the `k`-th
		    diagonal.
		k : int, optional
		    Diagonal in question. The default is 0. Use `k>0` for diagonals
		    above the main diagonal, and `k<0` for diagonals below the main
		    diagonal.
		
		Returns
		-------
		out : ndarray
		    The extracted diagonal or constructed diagonal array.
		
		See Also
		--------
		diagonal : Return specified diagonals.
		diagflat : Create a 2-D array with the flattened input as a diagonal.
		trace : Sum along diagonals.
		triu : Upper triangle of an array.
		tril : Lower triangle of an array.
		
		Examples
		--------
		>>> x = np.arange(9).reshape((3,3))
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5],
		       [6, 7, 8]])
		
		>>> np.diag(x)
		array([0, 4, 8])
		>>> np.diag(x, k=1)
		array([1, 5])
		>>> np.diag(x, k=-1)
		array([3, 7])
		
		>>> np.diag(np.diag(x))
		array([[0, 0, 0],
		       [0, 4, 0],
		       [0, 0, 8]])
	**/
	static public function diag(v:Dynamic, ?k:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		dot(a, b, out=None)
		
		Dot product of two arrays.
		
		For 2-D arrays it is equivalent to matrix multiplication, and for 1-D
		arrays to inner product of vectors (without complex conjugation). For
		N dimensions it is a sum product over the last axis of `a` and
		the second-to-last of `b`::
		
		    dot(a, b)[i,j,k,m] = sum(a[i,j,:] * b[k,:,m])
		
		Parameters
		----------
		a : array_like
		    First argument.
		b : array_like
		    Second argument.
		out : ndarray, optional
		    Output argument. This must have the exact kind that would be returned
		    if it was not used. In particular, it must have the right type, must be
		    C-contiguous, and its dtype must be the dtype that would be returned
		    for `dot(a,b)`. This is a performance feature. Therefore, if these
		    conditions are not met, an exception is raised, instead of attempting
		    to be flexible.
		
		Returns
		-------
		output : ndarray
		    Returns the dot product of `a` and `b`.  If `a` and `b` are both
		    scalars or both 1-D arrays then a scalar is returned; otherwise
		    an array is returned.
		    If `out` is given, then it is returned.
		
		Raises
		------
		ValueError
		    If the last dimension of `a` is not the same size as
		    the second-to-last dimension of `b`.
		
		See Also
		--------
		vdot : Complex-conjugating dot product.
		tensordot : Sum products over arbitrary axes.
		einsum : Einstein summation convention.
		matmul : '@' operator as method with out parameter.
		
		Examples
		--------
		>>> np.dot(3, 4)
		12
		
		Neither argument is complex-conjugated:
		
		>>> np.dot([2j, 3j], [2j, 3j])
		(-13+0j)
		
		For 2-D arrays it is the matrix product:
		
		>>> a = [[1, 0], [0, 1]]
		>>> b = [[4, 1], [2, 2]]
		>>> np.dot(a, b)
		array([[4, 1],
		       [2, 2]])
		
		>>> a = np.arange(3*4*5*6).reshape((3,4,5,6))
		>>> b = np.arange(3*4*5*6)[::-1].reshape((5,4,6,3))
		>>> np.dot(a, b)[2,3,2,1,2,2]
		499128
		>>> sum(a[2,3,2,:] * b[1,2,:,2])
		499128
	**/
	static public function dot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a 2-D array with ones on the diagonal and zeros elsewhere.
		
		Parameters
		----------
		N : int
		  Number of rows in the output.
		M : int, optional
		  Number of columns in the output. If None, defaults to `N`.
		k : int, optional
		  Index of the diagonal: 0 (the default) refers to the main diagonal,
		  a positive value refers to an upper diagonal, and a negative value
		  to a lower diagonal.
		dtype : data-type, optional
		  Data-type of the returned array.
		
		Returns
		-------
		I : ndarray of shape (N,M)
		  An array where all elements are equal to zero, except for the `k`-th
		  diagonal, whose values are equal to one.
		
		See Also
		--------
		identity : (almost) equivalent function
		diag : diagonal 2-D array from a 1-D array specified by the user.
		
		Examples
		--------
		>>> np.eye(2, dtype=int)
		array([[1, 0],
		       [0, 1]])
		>>> np.eye(3, k=1)
		array([[ 0.,  1.,  0.],
		       [ 0.,  0.,  1.],
		       [ 0.,  0.,  0.]])
	**/
	static public function eye(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Calculate the frequency response of a continuous-time system.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 2 (num, den)
		        * 3 (zeros, poles, gain)
		        * 4 (A, B, C, D)
		
		w : array_like, optional
		    Array of frequencies (in rad/s). Magnitude and phase data is
		    calculated for every value in this array. If not given a reasonable
		    set will be calculated.
		n : int, optional
		    Number of frequency points to compute if `w` is not given. The `n`
		    frequencies are logarithmically spaced in an interval chosen to
		    include the influence of the poles and zeros of the system.
		
		Returns
		-------
		w : 1D ndarray
		    Frequency array [rad/s]
		H : 1D ndarray
		    Array of complex magnitude values
		
		Examples
		--------
		# Generating the Nyquist plot of a transfer function
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> s1 = signal.lti([], [1, 1, 1], [5])
		# transfer function: H(s) = 5 / (s-1)^3
		
		>>> w, H = signal.freqresp(s1)
		
		>>> plt.figure()
		>>> plt.plot(H.real, H.imag, "b")
		>>> plt.plot(H.real, -H.imag, "r")
		>>> plt.show()
	**/
	static public function freqresp(system:Dynamic, ?w:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Compute frequency response of analog filter.
		
		Given the numerator `b` and denominator `a` of a filter, compute its
		frequency response::
		
		         b[0]*(jw)**(nb-1) + b[1]*(jw)**(nb-2) + ... + b[nb-1]
		 H(w) = -------------------------------------------------------
		         a[0]*(jw)**(na-1) + a[1]*(jw)**(na-2) + ... + a[na-1]
		
		Parameters
		----------
		b : ndarray
		    Numerator of a linear filter.
		a : ndarray
		    Denominator of a linear filter.
		worN : {None, int}, optional
		    If None, then compute at 200 frequencies around the interesting parts
		    of the response curve (determined by pole-zero locations).  If a single
		    integer, then compute at that many frequencies.  Otherwise, compute the
		    response at the angular frequencies (e.g. rad/s) given in `worN`.
		plot : callable, optional
		    A callable that takes two arguments. If given, the return parameters
		    `w` and `h` are passed to plot. Useful for plotting the frequency
		    response inside `freqs`.
		
		Returns
		-------
		w : ndarray
		    The angular frequencies at which h was computed.
		h : ndarray
		    The frequency response.
		
		See Also
		--------
		freqz : Compute the frequency response of a digital filter.
		
		Notes
		-----
		Using Matplotlib's "plot" function as the callable for `plot` produces
		unexpected results,  this plots the real part of the complex transfer
		function, not the magnitude.  Try ``lambda w, h: plot(w, abs(h))``.
		
		Examples
		--------
		>>> from scipy.signal import freqs, iirfilter
		
		>>> b, a = iirfilter(4, [1, 10], 1, 60, analog=True, ftype='cheby1')
		
		>>> w, h = freqs(b, a, worN=np.logspace(-1, 2, 1000))
		
		>>> import matplotlib.pyplot as plt
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.xlabel('Frequency')
		>>> plt.ylabel('Amplitude response [dB]')
		>>> plt.grid()
		>>> plt.show()
	**/
	static public function freqs(b:Dynamic, a:Dynamic, ?worN:Dynamic, ?plot:Dynamic):Dynamic;
	/**
		Impulse response of continuous-time system.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple of array_like
		    describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 2 (num, den)
		        * 3 (zeros, poles, gain)
		        * 4 (A, B, C, D)
		
		X0 : array_like, optional
		    Initial state-vector.  Defaults to zero.
		T : array_like, optional
		    Time points.  Computed if not given.
		N : int, optional
		    The number of time points to compute (if `T` is not given).
		
		Returns
		-------
		T : ndarray
		    A 1-D array of time points.
		yout : ndarray
		    A 1-D array containing the impulse response of the system (except for
		    singularities at zero).
	**/
	static public function impulse(system:Dynamic, ?X0:Dynamic, ?T:Dynamic, ?N:Dynamic):Dynamic;
	/**
		Impulse response of a single-input, continuous-time linear system.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple of array_like
		    describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 2 (num, den)
		        * 3 (zeros, poles, gain)
		        * 4 (A, B, C, D)
		
		X0 : 1-D array_like, optional
		    The initial condition of the state vector.  Default: 0 (the
		    zero vector).
		T : 1-D array_like, optional
		    The time steps at which the input is defined and at which the
		    output is desired.  If `T` is not given, the function will
		    generate a set of time samples automatically.
		N : int, optional
		    Number of time points to compute.  Default: 100.
		kwargs : various types
		    Additional keyword arguments are passed on to the function
		    `scipy.signal.lsim2`, which in turn passes them on to
		    `scipy.integrate.odeint`; see the latter's documentation for
		    information about these arguments.
		
		Returns
		-------
		T : ndarray
		    The time values for the output.
		yout : ndarray
		    The output response of the system.
		
		See Also
		--------
		impulse, lsim2, integrate.odeint
		
		Notes
		-----
		The solution is generated by calling `scipy.signal.lsim2`, which uses
		the differential equation solver `scipy.integrate.odeint`.
		
		.. versionadded:: 0.8.0
		
		Examples
		--------
		Second order system with a repeated root: x''(t) + 2*x(t) + x(t) = u(t)
		
		>>> from scipy import signal
		>>> system = ([1.0], [1.0, 2.0, 1.0])
		>>> t, y = signal.impulse2(system)
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(t, y)
	**/
	static public function impulse2(system:Dynamic, ?X0:Dynamic, ?T:Dynamic, ?N:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Simulate output of a continuous-time linear system.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		    * 2: (num, den)
		    * 3: (zeros, poles, gain)
		    * 4: (A, B, C, D)
		
		U : array_like
		    An input array describing the input at each time `T`
		    (interpolation is assumed between given times).  If there are
		    multiple inputs, then each column of the rank-2 array
		    represents an input.  If U = 0 or None, a zero input is used.
		T : array_like
		    The time steps at which the input is defined and at which the
		    output is desired.  Must be nonnegative, increasing, and equally spaced.
		X0 : array_like, optional
		    The initial conditions on the state vector (zero by default).
		interp : bool, optional
		    Whether to use linear (True, the default) or zero-order-hold (False)
		    interpolation for the input array.
		
		Returns
		-------
		T : 1D ndarray
		    Time values for the output.
		yout : 1D ndarray
		    System response.
		xout : ndarray
		    Time evolution of the state vector.
		
		Examples
		--------
		Simulate a double integrator y'' = u, with a constant input u = 1
		
		>>> from scipy import signal
		>>> system = signal.lti([[0., 1.], [0., 0.]], [[0.], [1.]], [[1., 0.]], 0.)
		>>> t = np.linspace(0, 5)
		>>> u = np.ones_like(t)
		>>> tout, y, x = signal.lsim(system, u, t)
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(t, y)
	**/
	static public function lsim(system:Dynamic, U:Dynamic, T:Dynamic, ?X0:Dynamic, ?interp:Dynamic):Dynamic;
	/**
		Simulate output of a continuous-time linear system, by using
		the ODE solver `scipy.integrate.odeint`.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		    * 2: (num, den)
		    * 3: (zeros, poles, gain)
		    * 4: (A, B, C, D)
		
		U : array_like (1D or 2D), optional
		    An input array describing the input at each time T.  Linear
		    interpolation is used between given times.  If there are
		    multiple inputs, then each column of the rank-2 array
		    represents an input.  If U is not given, the input is assumed
		    to be zero.
		T : array_like (1D or 2D), optional
		    The time steps at which the input is defined and at which the
		    output is desired.  The default is 101 evenly spaced points on
		    the interval [0,10.0].
		X0 : array_like (1D), optional
		    The initial condition of the state vector.  If `X0` is not
		    given, the initial conditions are assumed to be 0.
		kwargs : dict
		    Additional keyword arguments are passed on to the function
		    `odeint`.  See the notes below for more details.
		
		Returns
		-------
		T : 1D ndarray
		    The time values for the output.
		yout : ndarray
		    The response of the system.
		xout : ndarray
		    The time-evolution of the state-vector.
		
		Notes
		-----
		This function uses `scipy.integrate.odeint` to solve the
		system's differential equations.  Additional keyword arguments
		given to `lsim2` are passed on to `odeint`.  See the documentation
		for `scipy.integrate.odeint` for the full list of arguments.
	**/
	static public function lsim2(system:Dynamic, ?U:Dynamic, ?T:Dynamic, ?X0:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Replace nan with zero and inf with finite numbers.
		
		Returns an array or scalar replacing Not a Number (NaN) with zero,
		(positive) infinity with a very large number and negative infinity
		with a very small (or negative) number.
		
		Parameters
		----------
		x : array_like
		    Input data.
		
		Returns
		-------
		out : ndarray
		    New Array with the same shape as `x` and dtype of the element in
		    `x`  with the greatest precision. If `x` is inexact, then NaN is
		    replaced by zero, and infinity (-infinity) is replaced by the
		    largest (smallest or most negative) floating point value that fits
		    in the output dtype. If `x` is not inexact, then a copy of `x` is
		    returned.
		
		See Also
		--------
		isinf : Shows which elements are negative or negative infinity.
		isneginf : Shows which elements are negative infinity.
		isposinf : Shows which elements are positive infinity.
		isnan : Shows which elements are Not a Number (NaN).
		isfinite : Shows which elements are finite (not NaN, not infinity)
		
		Notes
		-----
		Numpy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		
		
		Examples
		--------
		>>> np.set_printoptions(precision=8)
		>>> x = np.array([np.inf, -np.inf, np.nan, -128, 128])
		>>> np.nan_to_num(x)
		array([  1.79769313e+308,  -1.79769313e+308,   0.00000000e+000,
		        -1.28000000e+002,   1.28000000e+002])
	**/
	static public function nan_to_num(x:Dynamic):Dynamic;
	/**
		Normalize polynomial representation of a transfer function.
		
		If values of `b` are too close to 0, they are removed. In that case, a
		BadCoefficients warning is emitted.
	**/
	static public function normalize(b:Dynamic, a:Dynamic):Dynamic;
	/**
		Return a new array of given shape and type, filled with ones.
		
		Parameters
		----------
		shape : int or sequence of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional
		    Whether to store multidimensional data in C- or Fortran-contiguous
		    (row- or column-wise) order in memory.
		
		Returns
		-------
		out : ndarray
		    Array of ones with the given shape, dtype, and order.
		
		See Also
		--------
		zeros, ones_like
		
		Examples
		--------
		>>> np.ones(5)
		array([ 1.,  1.,  1.,  1.,  1.])
		
		>>> np.ones((5,), dtype=np.int)
		array([1, 1, 1, 1, 1])
		
		>>> np.ones((2, 1))
		array([[ 1.],
		       [ 1.]])
		
		>>> s = (2,2)
		>>> np.ones(s)
		array([[ 1.,  1.],
		       [ 1.,  1.]])
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Compute K such that eigenvalues (A - dot(B, K))=poles.
		
		K is the gain matrix such as the plant described by the linear system
		``AX+BU`` will have its closed-loop poles, i.e the eigenvalues ``A - B*K``,
		as close as possible to those asked for in poles.
		
		SISO, MISO and MIMO systems are supported.
		
		Parameters
		----------
		A, B : ndarray
		    State-space representation of linear system ``AX + BU``.
		poles : array_like
		    Desired real poles and/or complex conjugates poles.
		    Complex poles are only supported with ``method="YT"`` (default).
		method: {'YT', 'KNV0'}, optional
		    Which method to choose to find the gain matrix K. One of:
		
		        - 'YT': Yang Tits
		        - 'KNV0': Kautsky, Nichols, Van Dooren update method 0
		
		    See References and Notes for details on the algorithms.
		rtol: float, optional
		    After each iteration the determinant of the eigenvectors of
		    ``A - B*K`` is compared to its previous value, when the relative
		    error between these two values becomes lower than `rtol` the algorithm
		    stops.  Default is 1e-3.
		maxiter: int, optional
		    Maximum number of iterations to compute the gain matrix.
		    Default is 30.
		
		Returns
		-------
		full_state_feedback : Bunch object
		    full_state_feedback is composed of:
		        gain_matrix : 1-D ndarray
		            The closed loop matrix K such as the eigenvalues of ``A-BK``
		            are as close as possible to the requested poles.
		        computed_poles : 1-D ndarray
		            The poles corresponding to ``A-BK`` sorted as first the real
		            poles in increasing order, then the complex congugates in
		            lexicographic order.
		        requested_poles : 1-D ndarray
		            The poles the algorithm was asked to place sorted as above,
		            they may differ from what was achieved.
		        X : 2D ndarray
		            The transfer matrix such as ``X * diag(poles) = (A - B*K)*X``
		            (see Notes)
		        rtol : float
		            The relative tolerance achieved on ``det(X)`` (see Notes).
		            `rtol` will be NaN if the optimisation algorithms can not run,
		            i.e when ``B.shape[1] == 1``, or 0 when the solution is unique.
		        nb_iter : int
		            The number of iterations performed before converging.
		            `nb_iter` will be NaN if the optimisation algorithms can
		            not run, i.e when ``B.shape[1] == 1``, or 0 when the solution
		            is unique.
		
		Notes
		-----
		The Tits and Yang (YT), [2]_ paper is an update of the original Kautsky et
		al. (KNV) paper [1]_.  KNV relies on rank-1 updates to find the transfer
		matrix X such that ``X * diag(poles) = (A - B*K)*X``, whereas YT uses
		rank-2 updates. This yields on average more robust solutions (see [2]_
		pp 21-22), furthermore the YT algorithm supports complex poles whereas KNV
		does not in its original version.  Only update method 0 proposed by KNV has
		been implemented here, hence the name ``'KNV0'``.
		
		KNV extended to complex poles is used in Matlab's ``place`` function, YT is
		distributed under a non-free licence by Slicot under the name ``robpole``.
		It is unclear and undocumented how KNV0 has been extended to complex poles
		(Tits and Yang claim on page 14 of their paper that their method can not be
		used to extend KNV to complex poles), therefore only YT supports them in
		this implementation.
		
		As the solution to the problem of pole placement is not unique for MIMO
		systems, both methods start with a tentative transfer matrix which is
		altered in various way to increase its determinant.  Both methods have been
		proven to converge to a stable solution, however depending on the way the
		initial transfer matrix is chosen they will converge to different
		solutions and therefore there is absolutely no guarantee that using
		``'KNV0'`` will yield results similar to Matlab's or any other
		implementation of these algorithms.
		
		Using the default method ``'YT'`` should be fine in most cases; ``'KNV0'``
		is only provided because it is needed by ``'YT'`` in some specific cases.
		Furthermore ``'YT'`` gives on average more robust results than ``'KNV0'``
		when ``abs(det(X))`` is used as a robustness indicator.
		
		[2]_ is available as a technical report on the following URL:
		http://drum.lib.umd.edu/handle/1903/5598
		
		References
		----------
		.. [1] J. Kautsky, N.K. Nichols and P. van Dooren, "Robust pole assignment
		       in linear state feedback", International Journal of Control, Vol. 41
		       pp. 1129-1155, 1985.
		.. [2] A.L. Tits and Y. Yang, "Globally convergent algorithms for robust
		       pole assignment by state feedback, IEEE Transactions on Automatic
		       Control, Vol. 41, pp. 1432-1452, 1996.
		
		Examples
		--------
		A simple example demonstrating real pole placement using both KNV and YT
		algorithms.  This is example number 1 from section 4 of the reference KNV
		publication ([1]_):
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> A = np.array([[ 1.380,  -0.2077,  6.715, -5.676  ],
		...               [-0.5814, -4.290,   0,      0.6750 ],
		...               [ 1.067,   4.273,  -6.654,  5.893  ],
		...               [ 0.0480,  4.273,   1.343, -2.104  ]])
		>>> B = np.array([[ 0,      5.679 ],
		...               [ 1.136,  1.136 ],
		...               [ 0,      0,    ],
		...               [-3.146,  0     ]])
		>>> P = np.array([-0.2, -0.5, -5.0566, -8.6659])
		
		Now compute K with KNV method 0, with the default YT method and with the YT
		method while forcing 100 iterations of the algorithm and print some results
		after each call.
		
		>>> fsf1 = signal.place_poles(A, B, P, method='KNV0')
		>>> fsf1.gain_matrix
		array([[ 0.20071427, -0.96665799,  0.24066128, -0.10279785],
		       [ 0.50587268,  0.57779091,  0.51795763, -0.41991442]])
		
		>>> fsf2 = signal.place_poles(A, B, P)  # uses YT method
		>>> fsf2.computed_poles
		array([-8.6659, -5.0566, -0.5   , -0.2   ])
		
		>>> fsf3 = signal.place_poles(A, B, P, rtol=-1, maxiter=100)
		>>> fsf3.X
		array([[ 0.52072442+0.j, -0.08409372+0.j, -0.56847937+0.j,  0.74823657+0.j],
		       [-0.04977751+0.j, -0.80872954+0.j,  0.13566234+0.j, -0.29322906+0.j],
		       [-0.82266932+0.j, -0.19168026+0.j, -0.56348322+0.j, -0.43815060+0.j],
		       [ 0.22267347+0.j,  0.54967577+0.j, -0.58387806+0.j, -0.40271926+0.j]])
		
		The absolute value of the determinant of X is a good indicator to check the
		robustness of the results, both ``'KNV0'`` and ``'YT'`` aim at maximizing
		it.  Below a comparison of the robustness of the results above:
		
		>>> abs(np.linalg.det(fsf1.X)) < abs(np.linalg.det(fsf2.X))
		True
		>>> abs(np.linalg.det(fsf2.X)) < abs(np.linalg.det(fsf3.X))
		True
		
		Now a simple example for complex poles:
		
		>>> A = np.array([[ 0,  7/3.,  0,   0   ],
		...               [ 0,   0,    0,  7/9. ],
		...               [ 0,   0,    0,   0   ],
		...               [ 0,   0,    0,   0   ]])
		>>> B = np.array([[ 0,  0 ],
		...               [ 0,  0 ],
		...               [ 1,  0 ],
		...               [ 0,  1 ]])
		>>> P = np.array([-3, -1, -2-1j, -2+1j]) / 3.
		>>> fsf = signal.place_poles(A, B, P, method='YT')
		
		We can plot the desired and computed poles in the complex plane:
		
		>>> t = np.linspace(0, 2*np.pi, 401)
		>>> plt.plot(np.cos(t), np.sin(t), 'k--')  # unit circle
		>>> plt.plot(fsf.requested_poles.real, fsf.requested_poles.imag,
		...          'wo', label='Desired')
		>>> plt.plot(fsf.computed_poles.real, fsf.computed_poles.imag, 'bx',
		...          label='Placed')
		>>> plt.grid()
		>>> plt.axis('image')
		>>> plt.axis([-1.1, 1.1, -1.1, 1.1])
		>>> plt.legend(bbox_to_anchor=(1.05, 1), loc=2, numpoints=1)
	**/
	static public function place_poles(A:Dynamic, B:Dynamic, poles:Dynamic, ?method:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic):Dynamic;
	/**
		Find the coefficients of a polynomial with the given sequence of roots.
		
		Returns the coefficients of the polynomial whose leading coefficient
		is one for the given sequence of zeros (multiple roots must be included
		in the sequence as many times as their multiplicity; see Examples).
		A square matrix (or array, which will be treated as a matrix) can also
		be given, in which case the coefficients of the characteristic polynomial
		of the matrix are returned.
		
		Parameters
		----------
		seq_of_zeros : array_like, shape (N,) or (N, N)
		    A sequence of polynomial roots, or a square array or matrix object.
		
		Returns
		-------
		c : ndarray
		    1D array of polynomial coefficients from highest to lowest degree:
		
		    ``c[0] * x**(N) + c[1] * x**(N-1) + ... + c[N-1] * x + c[N]``
		    where c[0] always equals 1.
		
		Raises
		------
		ValueError
		    If input is the wrong shape (the input must be a 1-D or square
		    2-D array).
		
		See Also
		--------
		polyval : Evaluate a polynomial at a point.
		roots : Return the roots of a polynomial.
		polyfit : Least squares polynomial fit.
		poly1d : A one-dimensional polynomial class.
		
		Notes
		-----
		Specifying the roots of a polynomial still leaves one degree of
		freedom, typically represented by an undetermined leading
		coefficient. [1]_ In the case of this function, that coefficient -
		the first one in the returned array - is always taken as one. (If
		for some reason you have one other point, the only automatic way
		presently to leverage that information is to use ``polyfit``.)
		
		The characteristic polynomial, :math:`p_a(t)`, of an `n`-by-`n`
		matrix **A** is given by
		
		    :math:`p_a(t) = \mathrm{det}(t\, \mathbf{I} - \mathbf{A})`,
		
		where **I** is the `n`-by-`n` identity matrix. [2]_
		
		References
		----------
		.. [1] M. Sullivan and M. Sullivan, III, "Algebra and Trignometry,
		   Enhanced With Graphing Utilities," Prentice-Hall, pg. 318, 1996.
		
		.. [2] G. Strang, "Linear Algebra and Its Applications, 2nd Edition,"
		   Academic Press, pg. 182, 1980.
		
		Examples
		--------
		Given a sequence of a polynomial's zeros:
		
		>>> np.poly((0, 0, 0)) # Multiple root example
		array([1, 0, 0, 0])
		
		The line above represents z**3 + 0*z**2 + 0*z + 0.
		
		>>> np.poly((-1./2, 0, 1./2))
		array([ 1.  ,  0.  , -0.25,  0.  ])
		
		The line above represents z**3 - z/4
		
		>>> np.poly((np.random.random(1.)[0], 0, np.random.random(1.)[0]))
		array([ 1.        , -0.77086955,  0.08618131,  0.        ]) #random
		
		Given a square array object:
		
		>>> P = np.array([[0, 1./3], [-1./2, 0]])
		>>> np.poly(P)
		array([ 1.        ,  0.        ,  0.16666667])
		
		Or a square matrix object:
		
		>>> np.poly(np.matrix(P))
		array([ 1.        ,  0.        ,  0.16666667])
		
		Note how in all cases the leading coefficient is always 1.
	**/
	static public function poly(seq_of_zeros:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return the product of array elements over a given axis.
		
		See Also
		--------
		prod : equivalent function; see for details.
	**/
	static public function product(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public var r_ : Dynamic;
	/**
		Return the real part of the elements of the array.
		
		Parameters
		----------
		val : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray
		    Output array. If `val` is real, the type of `val` is used for the
		    output.  If `val` has complex elements, the returned type is float.
		
		See Also
		--------
		real_if_close, imag, angle
		
		Examples
		--------
		>>> a = np.array([1+2j, 3+4j, 5+6j])
		>>> a.real
		array([ 1.,  3.,  5.])
		>>> a.real = 9
		>>> a
		array([ 9.+2.j,  9.+4.j,  9.+6.j])
		>>> a.real = np.array([9, 8, 7])
		>>> a
		array([ 9.+2.j,  8.+4.j,  7.+6.j])
	**/
	static public function real(val:Dynamic):Dynamic;
	/**
		Compute QR decomposition of a matrix.
		
		Calculate the decomposition ``A = Q R`` where Q is unitary/orthogonal
		and R upper triangular.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to be decomposed
		overwrite_a : bool, optional
		    Whether data in a is overwritten (may improve performance)
		lwork : int, optional
		    Work array size, lwork >= a.shape[1]. If None or -1, an optimal size
		    is computed.
		mode : {'full', 'r', 'economic', 'raw'}, optional
		    Determines what information is to be returned: either both Q and R
		    ('full', default), only R ('r') or both Q and R but computed in
		    economy-size ('economic', see Notes). The final option 'raw'
		    (added in Scipy 0.11) makes the function return two matrices
		    (Q, TAU) in the internal format used by LAPACK.
		pivoting : bool, optional
		    Whether or not factorization should include pivoting for rank-revealing
		    qr decomposition. If pivoting, compute the decomposition
		    ``A P = Q R`` as above, but where P is chosen such that the diagonal
		    of R is non-increasing.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		Q : float or complex ndarray
		    Of shape (M, M), or (M, K) for ``mode='economic'``.  Not returned
		    if ``mode='r'``.
		R : float or complex ndarray
		    Of shape (M, N), or (K, N) for ``mode='economic'``.  ``K = min(M, N)``.
		P : int ndarray
		    Of shape (N,) for ``pivoting=True``. Not returned if
		    ``pivoting=False``.
		
		Raises
		------
		LinAlgError
		    Raised if decomposition fails
		
		Notes
		-----
		This is an interface to the LAPACK routines dgeqrf, zgeqrf,
		dorgqr, zungqr, dgeqp3, and zgeqp3.
		
		If ``mode=economic``, the shapes of Q and R are (M, K) and (K, N) instead
		of (M,M) and (M,N), with ``K=min(M,N)``.
		
		Examples
		--------
		>>> from scipy import random, linalg, dot, diag, all, allclose
		>>> a = random.randn(9, 6)
		
		>>> q, r = linalg.qr(a)
		>>> allclose(a, np.dot(q, r))
		True
		>>> q.shape, r.shape
		((9, 9), (9, 6))
		
		>>> r2 = linalg.qr(a, mode='r')
		>>> allclose(r, r2)
		True
		
		>>> q3, r3 = linalg.qr(a, mode='economic')
		>>> q3.shape, r3.shape
		((9, 6), (6, 6))
		
		>>> q4, r4, p4 = linalg.qr(a, pivoting=True)
		>>> d = abs(diag(r4))
		>>> all(d[1:] <= d[:-1])
		True
		>>> allclose(a[:, p4], dot(q4, r4))
		True
		>>> q4.shape, r4.shape, p4.shape
		((9, 9), (9, 6), (6,))
		
		>>> q5, r5, p5 = linalg.qr(a, mode='economic', pivoting=True)
		>>> q5.shape, r5.shape, p5.shape
		((9, 6), (6, 6), (6,))
	**/
	static public function s_qr(a:Dynamic, ?overwrite_a:Dynamic, ?lwork:Dynamic, ?mode:Dynamic, ?pivoting:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Remove single-dimensional entries from the shape of an array.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    .. versionadded:: 1.7.0
		
		    Selects a subset of the single-dimensional entries in the
		    shape. If an axis is selected with shape entry greater than
		    one, an error is raised.
		
		Returns
		-------
		squeezed : ndarray
		    The input array, but with all or a subset of the
		    dimensions of length 1 removed. This is always `a` itself
		    or a view into `a`.
		
		Examples
		--------
		>>> x = np.array([[[0], [1], [2]]])
		>>> x.shape
		(1, 3, 1)
		>>> np.squeeze(x).shape
		(3,)
		>>> np.squeeze(x, axis=(2,)).shape
		(1, 3)
	**/
	static public function squeeze(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		State-space to transfer function.
		
		Parameters
		----------
		A, B, C, D : ndarray
		    State-space representation of linear system.
		input : int, optional
		    For multiple-input systems, the input to use.
		
		Returns
		-------
		num : 2-D ndarray
		    Numerator(s) of the resulting transfer function(s).  `num` has one row
		    for each of the system's outputs. Each row is a sequence representation
		    of the numerator polynomial.
		den : 1-D ndarray
		    Denominator of the resulting transfer function(s).  `den` is a sequence
		    representation of the denominator polynomial.
	**/
	static public function ss2tf(A:Dynamic, B:Dynamic, C:Dynamic, D:Dynamic, ?input:Dynamic):Dynamic;
	/**
		State-space representation to zero-pole-gain representation.
		
		Parameters
		----------
		A, B, C, D : ndarray
		    State-space representation of linear system.
		input : int, optional
		    For multiple-input systems, the input to use.
		
		Returns
		-------
		z, p : sequence
		    Zeros and poles.
		k : float
		    System gain.
	**/
	static public function ss2zpk(A:Dynamic, B:Dynamic, C:Dynamic, D:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Step response of continuous-time system.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple of array_like
		    describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 2 (num, den)
		        * 3 (zeros, poles, gain)
		        * 4 (A, B, C, D)
		
		X0 : array_like, optional
		    Initial state-vector (default is zero).
		T : array_like, optional
		    Time points (computed if not given).
		N : int, optional
		    Number of time points to compute if `T` is not given.
		
		Returns
		-------
		T : 1D ndarray
		    Output time points.
		yout : 1D ndarray
		    Step response of system.
		
		See also
		--------
		scipy.signal.step2
	**/
	static public function step(system:Dynamic, ?X0:Dynamic, ?T:Dynamic, ?N:Dynamic):Dynamic;
	/**
		Step response of continuous-time system.
		
		This function is functionally the same as `scipy.signal.step`, but
		it uses the function `scipy.signal.lsim2` to compute the step
		response.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple of array_like
		    describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 2 (num, den)
		        * 3 (zeros, poles, gain)
		        * 4 (A, B, C, D)
		
		X0 : array_like, optional
		    Initial state-vector (default is zero).
		T : array_like, optional
		    Time points (computed if not given).
		N : int, optional
		    Number of time points to compute if `T` is not given.
		kwargs : various types
		    Additional keyword arguments are passed on the function
		    `scipy.signal.lsim2`, which in turn passes them on to
		    `scipy.integrate.odeint`.  See the documentation for
		    `scipy.integrate.odeint` for information about these arguments.
		
		Returns
		-------
		T : 1D ndarray
		    Output time points.
		yout : 1D ndarray
		    Step response of system.
		
		See also
		--------
		scipy.signal.step
		
		Notes
		-----
		.. versionadded:: 0.8.0
	**/
	static public function step2(system:Dynamic, ?X0:Dynamic, ?T:Dynamic, ?N:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Transfer function to state-space representation.
		
		Parameters
		----------
		num, den : array_like
		    Sequences representing the numerator and denominator polynomials.
		    The denominator needs to be at least as long as the numerator.
		
		Returns
		-------
		A, B, C, D : ndarray
		    State space representation of the system, in controller canonical
		    form.
	**/
	static public function tf2ss(num:Dynamic, den:Dynamic):Dynamic;
	/**
		Return zero, pole, gain (z, p, k) representation from a numerator,
		denominator representation of a linear filter.
		
		Parameters
		----------
		b : array_like
		    Numerator polynomial coefficients.
		a : array_like
		    Denominator polynomial coefficients.
		
		Returns
		-------
		z : ndarray
		    Zeros of the transfer function.
		p : ndarray
		    Poles of the transfer function.
		k : float
		    System gain.
		
		Notes
		-----
		If some values of `b` are too close to 0, they are removed. In that case,
		a BadCoefficients warning is emitted.
		
		The `b` and `a` arrays are interpreted as coefficients for positive,
		descending powers of the transfer function variable.  So the inputs
		:math:`b = [b_0, b_1, ..., b_M]` and :math:`a =[a_0, a_1, ..., a_N]`
		can represent an analog filter of the form:
		
		.. math::
		
		    H(s) = \frac
		    {b_0 s^M + b_1 s^{(M-1)} + \cdots + b_M}
		    {a_0 s^N + a_1 s^{(N-1)} + \cdots + a_N}
		
		or a discrete-time filter of the form:
		
		.. math::
		
		    H(z) = \frac
		    {b_0 z^M + b_1 z^{(M-1)} + \cdots + b_M}
		    {a_0 z^N + a_1 z^{(N-1)} + \cdots + a_N}
		
		This "positive powers" form is found more commonly in controls
		engineering.  If `M` and `N` are equal (which is true for all filters
		generated by the bilinear transform), then this happens to be equivalent
		to the "negative powers" discrete-time form preferred in DSP:
		
		.. math::
		
		    H(z) = \frac
		    {b_0 + b_1 z^{-1} + \cdots + b_M z^{-M}}
		    {a_0 + a_1 z^{-1} + \cdots + a_N z^{-N}}
		
		Although this is true for common filters, remember that this is not true
		in the general case.  If `M` and `N` are not equal, the discrete-time
		transfer function coefficients must first be converted to the "positive
		powers" form before finding the poles and zeros.
	**/
	static public function tf2zpk(b:Dynamic, a:Dynamic):Dynamic;
	/**
		Permute the dimensions of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axes : list of ints, optional
		    By default, reverse the dimensions, otherwise permute the axes
		    according to the values given.
		
		Returns
		-------
		p : ndarray
		    `a` with its axes permuted.  A view is returned whenever
		    possible.
		
		See Also
		--------
		rollaxis
		argsort
		
		Notes
		-----
		Use `transpose(a, argsort(axes))` to invert the transposition of tensors
		when using the `axes` keyword argument.
		
		Transposing a 1-D array returns an unchanged view of the original array.
		
		Examples
		--------
		>>> x = np.arange(4).reshape((2,2))
		>>> x
		array([[0, 1],
		       [2, 3]])
		
		>>> np.transpose(x)
		array([[0, 2],
		       [1, 3]])
		
		>>> x = np.ones((1, 2, 3))
		>>> np.transpose(x, (1, 0, 2)).shape
		(2, 1, 3)
	**/
	static public function transpose(a:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		zeros(shape, dtype=float, order='C')
		
		Return a new array of given shape and type, filled with zeros.
		
		Parameters
		----------
		shape : int or sequence of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional
		    Whether to store multidimensional data in C- or Fortran-contiguous
		    (row- or column-wise) order in memory.
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the given shape, dtype, and order.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		empty_like : Return an empty array with shape and type of input.
		ones : Return a new array setting values to one.
		empty : Return a new uninitialized array.
		
		Examples
		--------
		>>> np.zeros(5)
		array([ 0.,  0.,  0.,  0.,  0.])
		
		>>> np.zeros((5,), dtype=np.int)
		array([0, 0, 0, 0, 0])
		
		>>> np.zeros((2, 1))
		array([[ 0.],
		       [ 0.]])
		
		>>> s = (2,2)
		>>> np.zeros(s)
		array([[ 0.,  0.],
		       [ 0.,  0.]])
		
		>>> np.zeros((2,), dtype=[('x', 'i4'), ('y', 'i4')]) # custom dtype
		array([(0, 0), (0, 0)],
		      dtype=[('x', '<i4'), ('y', '<i4')])
	**/
	static public function zeros(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return an array of zeros with the same shape and type as a given array.
		
		Parameters
		----------
		a : array_like
		    The shape and data-type of `a` define these same attributes of
		    the returned array.
		dtype : data-type, optional
		    Overrides the data type of the result.
		
		    .. versionadded:: 1.6.0
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `a` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of `a` as closely
		    as possible.
		
		    .. versionadded:: 1.6.0
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of 'a', otherwise it will be a base-class array. Defaults
		    to True.
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the same shape and type as `a`.
		
		See Also
		--------
		ones_like : Return an array of ones with shape and type of input.
		empty_like : Return an empty array with shape and type of input.
		zeros : Return a new array setting values to zero.
		ones : Return a new array setting values to one.
		empty : Return a new uninitialized array.
		
		Examples
		--------
		>>> x = np.arange(6)
		>>> x = x.reshape((2, 3))
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.zeros_like(x)
		array([[0, 0, 0],
		       [0, 0, 0]])
		
		>>> y = np.arange(3, dtype=np.float)
		>>> y
		array([ 0.,  1.,  2.])
		>>> np.zeros_like(y)
		array([ 0.,  0.,  0.])
	**/
	static public function zeros_like(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?subok:Dynamic):Dynamic;
	/**
		Zero-pole-gain representation to state-space representation
		
		Parameters
		----------
		z, p : sequence
		    Zeros and poles.
		k : float
		    System gain.
		
		Returns
		-------
		A, B, C, D : ndarray
		    State space representation of the system, in controller canonical
		    form.
	**/
	static public function zpk2ss(z:Dynamic, p:Dynamic, k:Dynamic):Dynamic;
	/**
		Return polynomial transfer function representation from zeros and poles
		
		Parameters
		----------
		z : array_like
		    Zeros of the transfer function.
		p : array_like
		    Poles of the transfer function.
		k : float
		    System gain.
		
		Returns
		-------
		b : ndarray
		    Numerator polynomial coefficients.
		a : ndarray
		    Denominator polynomial coefficients.
	**/
	static public function zpk2tf(z:Dynamic, p:Dynamic, k:Dynamic):Dynamic;
}