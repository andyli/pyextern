/* This file is generated, do not edit! */
package scipy.signal.ltisys;
@:pythonImport("scipy.signal.ltisys") extern class Ltisys_Module {
	/**
		Check state-space matrices and ensure they are 2-D.
		
		If enough information on the system is provided, that is, enough
		properly-shaped arrays are passed to the function, the missing ones
		are built from this information, ensuring the correct number of
		rows and columns. Otherwise a ValueError is raised.
		
		Parameters
		----------
		A, B, C, D : array_like, optional
		    State-space matrices. All of them are None (missing) by default.
		    See `ss2tf` for format.
		
		Returns
		-------
		A, B, C, D : array
		    Properly shaped state-space matrices.
		
		Raises
		------
		ValueError
		    If not enough information on the system was provided.
	**/
	static public function abcd_normalize(?A:Dynamic, ?B:Dynamic, ?C:Dynamic, ?D:Dynamic):Array<Dynamic>;
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
		    An array, or list of arrays, each with ``a.ndim >= 1``.
		    Copies are made only if necessary.
		
		See Also
		--------
		atleast_2d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_1d(1.0)
		array([1.])
		
		>>> x = np.arange(9.0).reshape(3,3)
		>>> np.atleast_1d(x)
		array([[0., 1., 2.],
		       [3., 4., 5.],
		       [6., 7., 8.]])
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
		    An array, or list of arrays, each with ``a.ndim >= 2``.
		    Copies are avoided where possible, and views with two or more
		    dimensions are returned.
		
		See Also
		--------
		atleast_1d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_2d(3.0)
		array([[3.]])
		
		>>> x = np.arange(3.0)
		>>> np.atleast_2d(x)
		array([[0., 1., 2.]])
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
		
		        * 1 (instance of `lti`)
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
		If (num, den) is passed in for ``system``, coefficients for both the
		numerator and denominator should be specified in descending exponent
		order (e.g. ``s^2 + 3s + 5`` would be represented as ``[1, 3, 5]``).
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> sys = signal.TransferFunction([1], [1, 1])
		>>> w, mag, phase = signal.bode(sys)
		
		>>> plt.figure()
		>>> plt.semilogx(w, mag)    # Bode magnitude plot
		>>> plt.figure()
		>>> plt.semilogx(w, phase)  # Bode phase plot
		>>> plt.show()
	**/
	static public function bode(system:Dynamic, ?w:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Transform a continuous to a discrete state-space system.
		
		Parameters
		----------
		system : a tuple describing the system or an instance of `lti`
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 1: (instance of `lti`)
		        * 2: (num, den)
		        * 3: (zeros, poles, gain)
		        * 4: (A, B, C, D)
		
		dt : float
		    The discretization time step.
		method : str, optional
		    Which method to use:
		
		        * gbt: generalized bilinear transformation
		        * bilinear: Tustin's approximation ("gbt" with alpha=0.5)
		        * euler: Euler (or forward differencing) method ("gbt" with alpha=0)
		        * backward_diff: Backwards differencing ("gbt" with alpha=1.0)
		        * zoh: zero-order hold (default)
		        * foh: first-order hold (*versionadded: 1.3.0*)
		        * impulse: equivalent impulse response (*versionadded: 1.3.0*)
		
		alpha : float within [0, 1], optional
		    The generalized bilinear transformation weighting parameter, which
		    should only be specified with method="gbt", and is ignored otherwise
		
		Returns
		-------
		sysd : tuple containing the discrete system
		    Based on the input type, the output will be of the form
		
		    * (num, den, dt)   for transfer function input
		    * (zeros, poles, gain, dt)   for zeros-poles-gain input
		    * (A, B, C, D, dt) for state-space system input
		
		Notes
		-----
		By default, the routine uses a Zero-Order Hold (zoh) method to perform
		the transformation. Alternatively, a generalized bilinear transformation
		may be used, which includes the common Tustin's bilinear approximation,
		an Euler's method technique, or a backwards differencing technique.
		
		The Zero-Order Hold (zoh) method is based on [1]_, the generalized bilinear
		approximation is based on [2]_ and [3]_, the First-Order Hold (foh) method
		is based on [4]_.
		
		Examples
		--------
		We can transform a continuous state-space system to a discrete one:
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.signal import cont2discrete, lti, dlti, dstep
		
		Define a continuous state-space system.
		
		>>> A = np.array([[0, 1],[-10., -3]])
		>>> B = np.array([[0],[10.]])
		>>> C = np.array([[1., 0]])
		>>> D = np.array([[0.]])
		>>> l_system = lti(A, B, C, D)
		>>> t, x = l_system.step(T=np.linspace(0, 5, 100))
		>>> fig, ax = plt.subplots()
		>>> ax.plot(t, x, label='Continuous', linewidth=3)
		
		Transform it to a discrete state-space system using several methods.
		
		>>> dt = 0.1
		>>> for method in ['zoh', 'bilinear', 'euler', 'backward_diff', 'foh', 'impulse']:
		...    d_system = cont2discrete((A, B, C, D), dt, method=method)
		...    s, x_d = dstep(d_system)
		...    ax.step(s, np.squeeze(x_d), label=method, where='post')
		>>> ax.axis([t[0], t[-1], x[0], 1.4])
		>>> ax.legend(loc='best')
		>>> fig.tight_layout()
		>>> plt.show()
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Discretization#Discretization_of_linear_state_space_models
		
		.. [2] http://techteach.no/publications/discretetime_signals_systems/discrete.pdf
		
		.. [3] G. Zhang, X. Chen, and T. Chen, Digital redesign via the generalized
		    bilinear transformation, Int. J. Control, vol. 82, no. 4, pp. 741-754,
		    2009.
		    (https://www.mypolyuweb.hk/~magzhang/Research/ZCC09_IJC.pdf)
		
		.. [4] G. F. Franklin, J. D. Powell, and M. L. Workman, Digital control
		    of dynamic systems, 3rd ed. Menlo Park, Calif: Addison-Wesley,
		    pp. 204-206, 1998.
	**/
	static public function cont2discrete(system:Dynamic, dt:Dynamic, ?method:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Calculate Bode magnitude and phase data of a discrete-time system.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 1 (instance of `dlti`)
		        * 2 (num, den, dt)
		        * 3 (zeros, poles, gain, dt)
		        * 4 (A, B, C, D, dt)
		
		w : array_like, optional
		    Array of frequencies (in radians/sample). Magnitude and phase data is
		    calculated for every value in this array. If not given a reasonable
		    set will be calculated.
		n : int, optional
		    Number of frequency points to compute if `w` is not given. The `n`
		    frequencies are logarithmically spaced in an interval chosen to
		    include the influence of the poles and zeros of the system.
		
		Returns
		-------
		w : 1D ndarray
		    Frequency array [rad/time_unit]
		mag : 1D ndarray
		    Magnitude array [dB]
		phase : 1D ndarray
		    Phase array [deg]
		
		Notes
		-----
		If (num, den) is passed in for ``system``, coefficients for both the
		numerator and denominator should be specified in descending exponent
		order (e.g. ``z^2 + 3z + 5`` would be represented as ``[1, 3, 5]``).
		
		.. versionadded:: 0.18.0
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		Construct the transfer function :math:`H(z) = \frac{1}{z^2 + 2z + 3}` with
		a sampling time of 0.05 seconds:
		
		>>> sys = signal.TransferFunction([1], [1, 2, 3], dt=0.05)
		
		Equivalent: sys.bode()
		
		>>> w, mag, phase = signal.dbode(sys)
		
		>>> plt.figure()
		>>> plt.semilogx(w, mag)    # Bode magnitude plot
		>>> plt.figure()
		>>> plt.semilogx(w, phase)  # Bode phase plot
		>>> plt.show()
	**/
	static public function dbode(system:Dynamic, ?w:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Calculate the frequency response of a discrete-time system.
		
		Parameters
		----------
		system : an instance of the `dlti` class or a tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 1 (instance of `dlti`)
		        * 2 (numerator, denominator, dt)
		        * 3 (zeros, poles, gain, dt)
		        * 4 (A, B, C, D, dt)
		
		w : array_like, optional
		    Array of frequencies (in radians/sample). Magnitude and phase data is
		    calculated for every value in this array. If not given a reasonable
		    set will be calculated.
		n : int, optional
		    Number of frequency points to compute if `w` is not given. The `n`
		    frequencies are logarithmically spaced in an interval chosen to
		    include the influence of the poles and zeros of the system.
		whole : bool, optional
		    Normally, if 'w' is not given, frequencies are computed from 0 to the
		    Nyquist frequency, pi radians/sample (upper-half of unit-circle). If
		    `whole` is True, compute frequencies from 0 to 2*pi radians/sample.
		
		Returns
		-------
		w : 1D ndarray
		    Frequency array [radians/sample]
		H : 1D ndarray
		    Array of complex magnitude values
		
		Notes
		-----
		If (num, den) is passed in for ``system``, coefficients for both the
		numerator and denominator should be specified in descending exponent
		order (e.g. ``z^2 + 3z + 5`` would be represented as ``[1, 3, 5]``).
		
		.. versionadded:: 0.18.0
		
		Examples
		--------
		Generating the Nyquist plot of a transfer function
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		Construct the transfer function
		:math:`H(z) = \frac{1}{z^2 + 2z + 3}` with a sampling time of 0.05
		seconds:
		
		>>> sys = signal.TransferFunction([1], [1, 2, 3], dt=0.05)
		
		>>> w, H = signal.dfreqresp(sys)
		
		>>> plt.figure()
		>>> plt.plot(H.real, H.imag, "b")
		>>> plt.plot(H.real, -H.imag, "r")
		>>> plt.show()
	**/
	static public function dfreqresp(system:Dynamic, ?w:Dynamic, ?n:Dynamic, ?whole:Dynamic):Dynamic;
	/**
		Impulse response of discrete-time system.
		
		Parameters
		----------
		system : tuple of array_like or instance of `dlti`
		    A tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 1: (instance of `dlti`)
		        * 3: (num, den, dt)
		        * 4: (zeros, poles, gain, dt)
		        * 5: (A, B, C, D, dt)
		
		x0 : array_like, optional
		    Initial state-vector.  Defaults to zero.
		t : array_like, optional
		    Time points.  Computed if not given.
		n : int, optional
		    The number of time points to compute (if `t` is not given).
		
		Returns
		-------
		tout : ndarray
		    Time values for the output, as a 1-D array.
		yout : tuple of ndarray
		    Impulse response of system.  Each element of the tuple represents
		    the output of the system based on an impulse in each input.
		
		See Also
		--------
		impulse, dstep, dlsim, cont2discrete
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> butter = signal.dlti(*signal.butter(3, 0.5))
		>>> t, y = signal.dimpulse(butter, n=25)
		>>> plt.step(t, np.squeeze(y))
		>>> plt.grid()
		>>> plt.xlabel('n [samples]')
		>>> plt.ylabel('Amplitude')
	**/
	static public function dimpulse(system:Dynamic, ?x0:Dynamic, ?t:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Simulate output of a discrete-time linear system.
		
		Parameters
		----------
		system : tuple of array_like or instance of `dlti`
		    A tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 1: (instance of `dlti`)
		        * 3: (num, den, dt)
		        * 4: (zeros, poles, gain, dt)
		        * 5: (A, B, C, D, dt)
		
		u : array_like
		    An input array describing the input at each time `t` (interpolation is
		    assumed between given times).  If there are multiple inputs, then each
		    column of the rank-2 array represents an input.
		t : array_like, optional
		    The time steps at which the input is defined.  If `t` is given, it
		    must be the same length as `u`, and the final value in `t` determines
		    the number of steps returned in the output.
		x0 : array_like, optional
		    The initial conditions on the state vector (zero by default).
		
		Returns
		-------
		tout : ndarray
		    Time values for the output, as a 1-D array.
		yout : ndarray
		    System response, as a 1-D array.
		xout : ndarray, optional
		    Time-evolution of the state-vector.  Only generated if the input is a
		    `StateSpace` system.
		
		See Also
		--------
		lsim, dstep, dimpulse, cont2discrete
		
		Examples
		--------
		A simple integrator transfer function with a discrete time step of 1.0
		could be implemented as:
		
		>>> from scipy import signal
		>>> tf = ([1.0,], [1.0, -1.0], 1.0)
		>>> t_in = [0.0, 1.0, 2.0, 3.0]
		>>> u = np.asarray([0.0, 0.0, 1.0, 1.0])
		>>> t_out, y = signal.dlsim(tf, u, t=t_in)
		>>> y.T
		array([[ 0.,  0.,  0.,  1.]])
	**/
	static public function dlsim(system:Dynamic, u:Dynamic, ?t:Dynamic, ?x0:Dynamic):Dynamic;
	/**
		Step response of discrete-time system.
		
		Parameters
		----------
		system : tuple of array_like
		    A tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 1: (instance of `dlti`)
		        * 3: (num, den, dt)
		        * 4: (zeros, poles, gain, dt)
		        * 5: (A, B, C, D, dt)
		
		x0 : array_like, optional
		    Initial state-vector.  Defaults to zero.
		t : array_like, optional
		    Time points.  Computed if not given.
		n : int, optional
		    The number of time points to compute (if `t` is not given).
		
		Returns
		-------
		tout : ndarray
		    Output time points, as a 1-D array.
		yout : tuple of ndarray
		    Step response of system.  Each element of the tuple represents
		    the output of the system based on a step response to each input.
		
		See Also
		--------
		step, dimpulse, dlsim, cont2discrete
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> butter = signal.dlti(*signal.butter(3, 0.5))
		>>> t, y = signal.dstep(butter, n=25)
		>>> plt.step(t, np.squeeze(y))
		>>> plt.grid()
		>>> plt.xlabel('n [samples]')
		>>> plt.ylabel('Amplitude')
	**/
	static public function dstep(system:Dynamic, ?x0:Dynamic, ?t:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Calculate the frequency response of a continuous-time system.
		
		Parameters
		----------
		system : an instance of the `lti` class or a tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 1 (instance of `lti`)
		        * 2 (num, den)
		        * 3 (zeros, poles, gain)
		        * 4 (A, B, C, D)
		
		w : array_like, optional
		    Array of frequencies (in rad/s). Magnitude and phase data is
		    calculated for every value in this array. If not given, a reasonable
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
		
		Notes
		-----
		If (num, den) is passed in for ``system``, coefficients for both the
		numerator and denominator should be specified in descending exponent
		order (e.g. ``s^2 + 3s + 5`` would be represented as ``[1, 3, 5]``).
		
		Examples
		--------
		Generating the Nyquist plot of a transfer function
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		Construct the transfer function :math:`H(s) = \frac{5}{(s-1)^3}`:
		
		>>> s1 = signal.ZerosPolesGain([], [1, 1, 1], [5])
		
		>>> w, H = signal.freqresp(s1)
		
		>>> plt.figure()
		>>> plt.plot(H.real, H.imag, "b")
		>>> plt.plot(H.real, -H.imag, "r")
		>>> plt.show()
	**/
	static public function freqresp(system:Dynamic, ?w:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Compute frequency response of analog filter.
		
		Given the M-order numerator `b` and N-order denominator `a` of an analog
		filter, compute its frequency response::
		
		         b[0]*(jw)**M + b[1]*(jw)**(M-1) + ... + b[M]
		 H(w) = ----------------------------------------------
		         a[0]*(jw)**N + a[1]*(jw)**(N-1) + ... + a[N]
		
		Parameters
		----------
		b : array_like
		    Numerator of a linear filter.
		a : array_like
		    Denominator of a linear filter.
		worN : {None, int, array_like}, optional
		    If None, then compute at 200 frequencies around the interesting parts
		    of the response curve (determined by pole-zero locations). If a single
		    integer, then compute at that many frequencies. Otherwise, compute the
		    response at the angular frequencies (e.g., rad/s) given in `worN`.
		plot : callable, optional
		    A callable that takes two arguments. If given, the return parameters
		    `w` and `h` are passed to plot. Useful for plotting the frequency
		    response inside `freqs`.
		
		Returns
		-------
		w : ndarray
		    The angular frequencies at which `h` was computed.
		h : ndarray
		    The frequency response.
		
		See Also
		--------
		freqz : Compute the frequency response of a digital filter.
		
		Notes
		-----
		Using Matplotlib's "plot" function as the callable for `plot` produces
		unexpected results, this plots the real part of the complex transfer
		function, not the magnitude. Try ``lambda w, h: plot(w, abs(h))``.
		
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
		Compute frequency response of analog filter.
		
		Given the zeros `z`, poles `p`, and gain `k` of a filter, compute its
		frequency response::
		
		            (jw-z[0]) * (jw-z[1]) * ... * (jw-z[-1])
		 H(w) = k * ----------------------------------------
		            (jw-p[0]) * (jw-p[1]) * ... * (jw-p[-1])
		
		Parameters
		----------
		z : array_like
		    Zeroes of a linear filter
		p : array_like
		    Poles of a linear filter
		k : scalar
		    Gain of a linear filter
		worN : {None, int, array_like}, optional
		    If None, then compute at 200 frequencies around the interesting parts
		    of the response curve (determined by pole-zero locations). If a single
		    integer, then compute at that many frequencies. Otherwise, compute the
		    response at the angular frequencies (e.g., rad/s) given in `worN`.
		
		Returns
		-------
		w : ndarray
		    The angular frequencies at which `h` was computed.
		h : ndarray
		    The frequency response.
		
		See Also
		--------
		freqs : Compute the frequency response of an analog filter in TF form
		freqz : Compute the frequency response of a digital filter in TF form
		freqz_zpk : Compute the frequency response of a digital filter in ZPK form
		
		Notes
		-----
		.. versionadded:: 0.19.0
		
		Examples
		--------
		>>> from scipy.signal import freqs_zpk, iirfilter
		
		>>> z, p, k = iirfilter(4, [1, 10], 1, 60, analog=True, ftype='cheby1',
		...                     output='zpk')
		
		>>> w, h = freqs_zpk(z, p, k, worN=np.logspace(-1, 2, 1000))
		
		>>> import matplotlib.pyplot as plt
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.xlabel('Frequency')
		>>> plt.ylabel('Amplitude response [dB]')
		>>> plt.grid()
		>>> plt.show()
	**/
	static public function freqs_zpk(z:Dynamic, p:Dynamic, k:Dynamic, ?worN:Dynamic):Dynamic;
	/**
		Compute the frequency response of a digital filter.
		
		Given the M-order numerator `b` and N-order denominator `a` of a digital
		filter, compute its frequency response::
		
		             jw                 -jw              -jwM
		    jw    B(e  )    b[0] + b[1]e    + ... + b[M]e
		 H(e  ) = ------ = -----------------------------------
		             jw                 -jw              -jwN
		          A(e  )    a[0] + a[1]e    + ... + a[N]e
		
		Parameters
		----------
		b : array_like
		    Numerator of a linear filter. If `b` has dimension greater than 1,
		    it is assumed that the coefficients are stored in the first dimension,
		    and ``b.shape[1:]``, ``a.shape[1:]``, and the shape of the frequencies
		    array must be compatible for broadcasting.
		a : array_like
		    Denominator of a linear filter. If `b` has dimension greater than 1,
		    it is assumed that the coefficients are stored in the first dimension,
		    and ``b.shape[1:]``, ``a.shape[1:]``, and the shape of the frequencies
		    array must be compatible for broadcasting.
		worN : {None, int, array_like}, optional
		    If a single integer, then compute at that many frequencies (default is
		    N=512). This is a convenient alternative to::
		
		        np.linspace(0, fs if whole else fs/2, N, endpoint=include_nyquist)
		
		    Using a number that is fast for FFT computations can result in
		    faster computations (see Notes).
		
		    If an array_like, compute the response at the frequencies given.
		    These are in the same units as `fs`.
		whole : bool, optional
		    Normally, frequencies are computed from 0 to the Nyquist frequency,
		    fs/2 (upper-half of unit-circle). If `whole` is True, compute
		    frequencies from 0 to fs. Ignored if worN is array_like.
		plot : callable
		    A callable that takes two arguments. If given, the return parameters
		    `w` and `h` are passed to plot. Useful for plotting the frequency
		    response inside `freqz`.
		fs : float, optional
		    The sampling frequency of the digital system. Defaults to 2*pi
		    radians/sample (so w is from 0 to pi).
		
		    .. versionadded:: 1.2.0
		include_nyquist : bool, optional
		    If `whole` is False and `worN` is an integer, setting `include_nyquist` to True
		    will include the last frequency (Nyquist frequency) and is otherwise ignored.
		
		    .. versionadded:: 1.5.0
		
		Returns
		-------
		w : ndarray
		    The frequencies at which `h` was computed, in the same units as `fs`.
		    By default, `w` is normalized to the range [0, pi) (radians/sample).
		h : ndarray
		    The frequency response, as complex numbers.
		
		See Also
		--------
		freqz_zpk
		sosfreqz
		
		Notes
		-----
		Using Matplotlib's :func:`matplotlib.pyplot.plot` function as the callable
		for `plot` produces unexpected results, as this plots the real part of the
		complex transfer function, not the magnitude.
		Try ``lambda w, h: plot(w, np.abs(h))``.
		
		A direct computation via (R)FFT is used to compute the frequency response
		when the following conditions are met:
		
		1. An integer value is given for `worN`.
		2. `worN` is fast to compute via FFT (i.e.,
		   `next_fast_len(worN) <scipy.fft.next_fast_len>` equals `worN`).
		3. The denominator coefficients are a single value (``a.shape[0] == 1``).
		4. `worN` is at least as long as the numerator coefficients
		   (``worN >= b.shape[0]``).
		5. If ``b.ndim > 1``, then ``b.shape[-1] == 1``.
		
		For long FIR filters, the FFT approach can have lower error and be much
		faster than the equivalent direct polynomial calculation.
		
		Examples
		--------
		>>> from scipy import signal
		>>> b = signal.firwin(80, 0.5, window=('kaiser', 8))
		>>> w, h = signal.freqz(b)
		
		>>> import matplotlib.pyplot as plt
		>>> fig, ax1 = plt.subplots()
		>>> ax1.set_title('Digital filter frequency response')
		
		>>> ax1.plot(w, 20 * np.log10(abs(h)), 'b')
		>>> ax1.set_ylabel('Amplitude [dB]', color='b')
		>>> ax1.set_xlabel('Frequency [rad/sample]')
		
		>>> ax2 = ax1.twinx()
		>>> angles = np.unwrap(np.angle(h))
		>>> ax2.plot(w, angles, 'g')
		>>> ax2.set_ylabel('Angle (radians)', color='g')
		>>> ax2.grid()
		>>> ax2.axis('tight')
		>>> plt.show()
		
		Broadcasting Examples
		
		Suppose we have two FIR filters whose coefficients are stored in the
		rows of an array with shape (2, 25). For this demonstration, we'll
		use random data:
		
		>>> rng = np.random.default_rng()
		>>> b = rng.random((2, 25))
		
		To compute the frequency response for these two filters with one call
		to `freqz`, we must pass in ``b.T``, because `freqz` expects the first
		axis to hold the coefficients. We must then extend the shape with a
		trivial dimension of length 1 to allow broadcasting with the array
		of frequencies.  That is, we pass in ``b.T[..., np.newaxis]``, which has
		shape (25, 2, 1):
		
		>>> w, h = signal.freqz(b.T[..., np.newaxis], worN=1024)
		>>> w.shape
		(1024,)
		>>> h.shape
		(2, 1024)
		
		Now, suppose we have two transfer functions, with the same numerator
		coefficients ``b = [0.5, 0.5]``. The coefficients for the two denominators
		are stored in the first dimension of the 2-D array  `a`::
		
		    a = [   1      1  ]
		        [ -0.25, -0.5 ]
		
		>>> b = np.array([0.5, 0.5])
		>>> a = np.array([[1, 1], [-0.25, -0.5]])
		
		Only `a` is more than 1-D. To make it compatible for
		broadcasting with the frequencies, we extend it with a trivial dimension
		in the call to `freqz`:
		
		>>> w, h = signal.freqz(b, a[..., np.newaxis], worN=1024)
		>>> w.shape
		(1024,)
		>>> h.shape
		(2, 1024)
	**/
	static public function freqz(b:Dynamic, ?a:Dynamic, ?worN:Dynamic, ?whole:Dynamic, ?plot:Dynamic, ?fs:Dynamic, ?include_nyquist:Dynamic):Dynamic;
	/**
		Compute the frequency response of a digital filter in ZPK form.
		
		Given the Zeros, Poles and Gain of a digital filter, compute its frequency
		response:
		
		:math:`H(z)=k \prod_i (z - Z[i]) / \prod_j (z - P[j])`
		
		where :math:`k` is the `gain`, :math:`Z` are the `zeros` and :math:`P` are
		the `poles`.
		
		Parameters
		----------
		z : array_like
		    Zeroes of a linear filter
		p : array_like
		    Poles of a linear filter
		k : scalar
		    Gain of a linear filter
		worN : {None, int, array_like}, optional
		    If a single integer, then compute at that many frequencies (default is
		    N=512).
		
		    If an array_like, compute the response at the frequencies given.
		    These are in the same units as `fs`.
		whole : bool, optional
		    Normally, frequencies are computed from 0 to the Nyquist frequency,
		    fs/2 (upper-half of unit-circle). If `whole` is True, compute
		    frequencies from 0 to fs. Ignored if w is array_like.
		fs : float, optional
		    The sampling frequency of the digital system. Defaults to 2*pi
		    radians/sample (so w is from 0 to pi).
		
		    .. versionadded:: 1.2.0
		
		Returns
		-------
		w : ndarray
		    The frequencies at which `h` was computed, in the same units as `fs`.
		    By default, `w` is normalized to the range [0, pi) (radians/sample).
		h : ndarray
		    The frequency response, as complex numbers.
		
		See Also
		--------
		freqs : Compute the frequency response of an analog filter in TF form
		freqs_zpk : Compute the frequency response of an analog filter in ZPK form
		freqz : Compute the frequency response of a digital filter in TF form
		
		Notes
		-----
		.. versionadded:: 0.19.0
		
		Examples
		--------
		Design a 4th-order digital Butterworth filter with cut-off of 100 Hz in a
		system with sample rate of 1000 Hz, and plot the frequency response:
		
		>>> from scipy import signal
		>>> z, p, k = signal.butter(4, 100, output='zpk', fs=1000)
		>>> w, h = signal.freqz_zpk(z, p, k, fs=1000)
		
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> ax1 = fig.add_subplot(1, 1, 1)
		>>> ax1.set_title('Digital filter frequency response')
		
		>>> ax1.plot(w, 20 * np.log10(abs(h)), 'b')
		>>> ax1.set_ylabel('Amplitude [dB]', color='b')
		>>> ax1.set_xlabel('Frequency [Hz]')
		>>> ax1.grid()
		
		>>> ax2 = ax1.twinx()
		>>> angles = np.unwrap(np.angle(h))
		>>> ax2.plot(w, angles, 'g')
		>>> ax2.set_ylabel('Angle [radians]', color='g')
		
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function freqz_zpk(z:Dynamic, p:Dynamic, k:Dynamic, ?worN:Dynamic, ?whole:Dynamic, ?fs:Dynamic):Dynamic;
	/**
		Impulse response of continuous-time system.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple of array_like
		    describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 1 (instance of `lti`)
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
		
		Notes
		-----
		If (num, den) is passed in for ``system``, coefficients for both the
		numerator and denominator should be specified in descending exponent
		order (e.g. ``s^2 + 3s + 5`` would be represented as ``[1, 3, 5]``).
		
		Examples
		--------
		Compute the impulse response of a second order system with a repeated
		root: ``x''(t) + 2*x'(t) + x(t) = u(t)``
		
		>>> from scipy import signal
		>>> system = ([1.0], [1.0, 2.0, 1.0])
		>>> t, y = signal.impulse(system)
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(t, y)
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
		
		        * 1 (instance of `lti`)
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
		impulse, lsim2, scipy.integrate.odeint
		
		Notes
		-----
		The solution is generated by calling `scipy.signal.lsim2`, which uses
		the differential equation solver `scipy.integrate.odeint`.
		
		If (num, den) is passed in for ``system``, coefficients for both the
		numerator and denominator should be specified in descending exponent
		order (e.g. ``s^2 + 3s + 5`` would be represented as ``[1, 3, 5]``).
		
		.. versionadded:: 0.8.0
		
		Examples
		--------
		Compute the impulse response of a second order system with a repeated
		root: ``x''(t) + 2*x'(t) + x(t) = u(t)``
		
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
		
		.. versionchanged:: 1.16.0
		    Non-scalar `start` and `stop` are now supported.
		
		.. versionchanged:: 1.20.0
		    Values are rounded towards ``-inf`` instead of ``0`` when an
		    integer ``dtype`` is specified. The old behavior can
		    still be obtained with ``np.linspace(start, stop, num).astype(int)``
		
		Parameters
		----------
		start : array_like
		    The starting value of the sequence.
		stop : array_like
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
		    The type of the output array.  If `dtype` is not given, the data type
		    is inferred from `start` and `stop`. The inferred dtype will never be
		    an integer; `float` is chosen even if the arguments would produce an
		    array of integers.
		
		    .. versionadded:: 1.9.0
		
		axis : int, optional
		    The axis in the result to store the samples.  Relevant only if start
		    or stop are array-like.  By default (0), the samples will be along a
		    new axis inserted at the beginning. Use -1 to get an axis at the end.
		
		    .. versionadded:: 1.16.0
		
		Returns
		-------
		samples : ndarray
		    There are `num` equally spaced samples in the closed interval
		    ``[start, stop]`` or the half-open interval ``[start, stop)``
		    (depending on whether `endpoint` is True or False).
		step : float, optional
		    Only returned if `retstep` is True
		
		    Size of spacing between samples.
		
		
		See Also
		--------
		arange : Similar to `linspace`, but uses a step size (instead of the
		         number of samples).
		geomspace : Similar to `linspace`, but with numbers spaced evenly on a log
		            scale (a geometric progression).
		logspace : Similar to `geomspace`, but with the end points specified as
		           logarithms.
		
		Examples
		--------
		>>> np.linspace(2.0, 3.0, num=5)
		array([2.  , 2.25, 2.5 , 2.75, 3.  ])
		>>> np.linspace(2.0, 3.0, num=5, endpoint=False)
		array([2. ,  2.2,  2.4,  2.6,  2.8])
		>>> np.linspace(2.0, 3.0, num=5, retstep=True)
		(array([2.  ,  2.25,  2.5 ,  2.75,  3.  ]), 0.25)
		
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
	static public function linspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?retstep:Dynamic, ?dtype:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Simulate output of a continuous-time linear system.
		
		Parameters
		----------
		system : an instance of the LTI class or a tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		    * 1: (instance of `lti`)
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
		
		Notes
		-----
		If (num, den) is passed in for ``system``, coefficients for both the
		numerator and denominator should be specified in descending exponent
		order (e.g. ``s^2 + 3s + 5`` would be represented as ``[1, 3, 5]``).
		
		Examples
		--------
		We'll use `lsim` to simulate an analog Bessel filter applied to
		a signal.
		
		>>> from scipy.signal import bessel, lsim
		>>> import matplotlib.pyplot as plt
		
		Create a low-pass Bessel filter with a cutoff of 12 Hz.
		
		>>> b, a = bessel(N=5, Wn=2*np.pi*12, btype='lowpass', analog=True)
		
		Generate data to which the filter is applied.
		
		>>> t = np.linspace(0, 1.25, 500, endpoint=False)
		
		The input signal is the sum of three sinusoidal curves, with
		frequencies 4 Hz, 40 Hz, and 80 Hz.  The filter should mostly
		eliminate the 40 Hz and 80 Hz components, leaving just the 4 Hz signal.
		
		>>> u = (np.cos(2*np.pi*4*t) + 0.6*np.sin(2*np.pi*40*t) +
		...      0.5*np.cos(2*np.pi*80*t))
		
		Simulate the filter with `lsim`.
		
		>>> tout, yout, xout = lsim((b, a), U=u, T=t)
		
		Plot the result.
		
		>>> plt.plot(t, u, 'r', alpha=0.5, linewidth=1, label='input')
		>>> plt.plot(tout, yout, 'k', linewidth=1.5, label='output')
		>>> plt.legend(loc='best', shadow=True, framealpha=1)
		>>> plt.grid(alpha=0.3)
		>>> plt.xlabel('t')
		>>> plt.show()
		
		In a second example, we simulate a double integrator ``y'' = u``, with
		a constant input ``u = 1``.  We'll use the state space representation
		of the integrator.
		
		>>> from scipy.signal import lti
		>>> A = np.array([[0.0, 1.0], [0.0, 0.0]])
		>>> B = np.array([[0.0], [1.0]])
		>>> C = np.array([[1.0, 0.0]])
		>>> D = 0.0
		>>> system = lti(A, B, C, D)
		
		`t` and `u` define the time and input signal for the system to
		be simulated.
		
		>>> t = np.linspace(0, 5, num=50)
		>>> u = np.ones_like(t)
		
		Compute the simulation, and then plot `y`.  As expected, the plot shows
		the curve ``y = 0.5*t**2``.
		
		>>> tout, y, x = lsim(system, u, t)
		>>> plt.plot(t, y)
		>>> plt.grid(alpha=0.3)
		>>> plt.xlabel('t')
		>>> plt.show()
	**/
	static public function lsim(system:Dynamic, U:Dynamic, T:Dynamic, ?X0:Dynamic, ?interp:Dynamic):Dynamic;
	/**
		Simulate output of a continuous-time linear system, by using
		the ODE solver `scipy.integrate.odeint`.
		
		Parameters
		----------
		system : an instance of the `lti` class or a tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		    * 1: (instance of `lti`)
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
		
		If (num, den) is passed in for ``system``, coefficients for both the
		numerator and denominator should be specified in descending exponent
		order (e.g. ``s^2 + 3s + 5`` would be represented as ``[1, 3, 5]``).
		
		See Also
		--------
		lsim
		
		Examples
		--------
		We'll use `lsim2` to simulate an analog Bessel filter applied to
		a signal.
		
		>>> from scipy.signal import bessel, lsim2
		>>> import matplotlib.pyplot as plt
		
		Create a low-pass Bessel filter with a cutoff of 12 Hz.
		
		>>> b, a = bessel(N=5, Wn=2*np.pi*12, btype='lowpass', analog=True)
		
		Generate data to which the filter is applied.
		
		>>> t = np.linspace(0, 1.25, 500, endpoint=False)
		
		The input signal is the sum of three sinusoidal curves, with
		frequencies 4 Hz, 40 Hz, and 80 Hz.  The filter should mostly
		eliminate the 40 Hz and 80 Hz components, leaving just the 4 Hz signal.
		
		>>> u = (np.cos(2*np.pi*4*t) + 0.6*np.sin(2*np.pi*40*t) +
		...      0.5*np.cos(2*np.pi*80*t))
		
		Simulate the filter with `lsim2`.
		
		>>> tout, yout, xout = lsim2((b, a), U=u, T=t)
		
		Plot the result.
		
		>>> plt.plot(t, u, 'r', alpha=0.5, linewidth=1, label='input')
		>>> plt.plot(tout, yout, 'k', linewidth=1.5, label='output')
		>>> plt.legend(loc='best', shadow=True, framealpha=1)
		>>> plt.grid(alpha=0.3)
		>>> plt.xlabel('t')
		>>> plt.show()
		
		In a second example, we simulate a double integrator ``y'' = u``, with
		a constant input ``u = 1``.  We'll use the state space representation
		of the integrator.
		
		>>> from scipy.signal import lti
		>>> A = np.array([[0, 1], [0, 0]])
		>>> B = np.array([[0], [1]])
		>>> C = np.array([[1, 0]])
		>>> D = 0
		>>> system = lti(A, B, C, D)
		
		`t` and `u` define the time and input signal for the system to
		be simulated.
		
		>>> t = np.linspace(0, 5, num=50)
		>>> u = np.ones_like(t)
		
		Compute the simulation, and then plot `y`.  As expected, the plot shows
		the curve ``y = 0.5*t**2``.
		
		>>> tout, y, x = lsim2(system, u, t)
		>>> plt.plot(t, y)
		>>> plt.grid(alpha=0.3)
		>>> plt.xlabel('t')
		>>> plt.show()
	**/
	static public function lsim2(system:Dynamic, ?U:Dynamic, ?T:Dynamic, ?X0:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Replace NaN with zero and infinity with large finite numbers (default
		behaviour) or with the numbers defined by the user using the `nan`, 
		`posinf` and/or `neginf` keywords.
		
		If `x` is inexact, NaN is replaced by zero or by the user defined value in
		`nan` keyword, infinity is replaced by the largest finite floating point 
		values representable by ``x.dtype`` or by the user defined value in 
		`posinf` keyword and -infinity is replaced by the most negative finite 
		floating point values representable by ``x.dtype`` or by the user defined 
		value in `neginf` keyword.
		
		For complex dtypes, the above is applied to each of the real and
		imaginary components of `x` separately.
		
		If `x` is not inexact, then no replacements are made.
		
		Parameters
		----------
		x : scalar or array_like
		    Input data.
		copy : bool, optional
		    Whether to create a copy of `x` (True) or to replace values
		    in-place (False). The in-place operation only occurs if
		    casting to an array does not require a copy.
		    Default is True.
		    
		    .. versionadded:: 1.13
		nan : int, float, optional
		    Value to be used to fill NaN values. If no value is passed 
		    then NaN values will be replaced with 0.0.
		    
		    .. versionadded:: 1.17
		posinf : int, float, optional
		    Value to be used to fill positive infinity values. If no value is 
		    passed then positive infinity values will be replaced with a very
		    large number.
		    
		    .. versionadded:: 1.17
		neginf : int, float, optional
		    Value to be used to fill negative infinity values. If no value is 
		    passed then negative infinity values will be replaced with a very
		    small (or negative) number.
		    
		    .. versionadded:: 1.17
		
		    
		
		Returns
		-------
		out : ndarray
		    `x`, with the non-finite values replaced. If `copy` is False, this may
		    be `x` itself.
		
		See Also
		--------
		isinf : Shows which elements are positive or negative infinity.
		isneginf : Shows which elements are negative infinity.
		isposinf : Shows which elements are positive infinity.
		isnan : Shows which elements are Not a Number (NaN).
		isfinite : Shows which elements are finite (not NaN, not infinity)
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		
		Examples
		--------
		>>> np.nan_to_num(np.inf)
		1.7976931348623157e+308
		>>> np.nan_to_num(-np.inf)
		-1.7976931348623157e+308
		>>> np.nan_to_num(np.nan)
		0.0
		>>> x = np.array([np.inf, -np.inf, np.nan, -128, 128])
		>>> np.nan_to_num(x)
		array([ 1.79769313e+308, -1.79769313e+308,  0.00000000e+000, # may vary
		       -1.28000000e+002,  1.28000000e+002])
		>>> np.nan_to_num(x, nan=-9999, posinf=33333333, neginf=33333333)
		array([ 3.3333333e+07,  3.3333333e+07, -9.9990000e+03, 
		       -1.2800000e+02,  1.2800000e+02])
		>>> y = np.array([complex(np.inf, np.nan), np.nan, complex(np.nan, np.inf)])
		array([  1.79769313e+308,  -1.79769313e+308,   0.00000000e+000, # may vary
		     -1.28000000e+002,   1.28000000e+002])
		>>> np.nan_to_num(y)
		array([  1.79769313e+308 +0.00000000e+000j, # may vary
		         0.00000000e+000 +0.00000000e+000j,
		         0.00000000e+000 +1.79769313e+308j])
		>>> np.nan_to_num(y, nan=111111, posinf=222222)
		array([222222.+111111.j, 111111.     +0.j, 111111.+222222.j])
	**/
	static public function nan_to_num(x:Dynamic, ?copy:Dynamic, ?nan:Dynamic, ?posinf:Dynamic, ?neginf:Dynamic):Dynamic;
	/**
		Normalize numerator/denominator of a continuous-time transfer function.
		
		If values of `b` are too close to 0, they are removed. In that case, a
		BadCoefficients warning is emitted.
		
		Parameters
		----------
		b: array_like
		    Numerator of the transfer function. Can be a 2-D array to normalize
		    multiple transfer functions.
		a: array_like
		    Denominator of the transfer function. At most 1-D.
		
		Returns
		-------
		num: array
		    The numerator of the normalized transfer function. At least a 1-D
		    array. A 2-D array if the input `num` is a 2-D array.
		den: 1-D array
		    The denominator of the normalized transfer function.
		
		Notes
		-----
		Coefficients for both the numerator and denominator should be specified in
		descending exponent order (e.g., ``s^2 + 3s + 5`` would be represented as
		``[1, 3, 5]``).
	**/
	static public function normalize(b:Dynamic, a:Dynamic):Dynamic;
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
		        X : 2-D ndarray
		            The transfer matrix such as ``X * diag(poles) = (A - B*K)*X``
		            (see Notes)
		        rtol : float
		            The relative tolerance achieved on ``det(X)`` (see Notes).
		            `rtol` will be NaN if it is possible to solve the system
		            ``diag(poles) = (A - B*K)``, or 0 when the optimization
		            algorithms can't do anything i.e when ``B.shape[1] == 1``.
		        nb_iter : int
		            The number of iterations performed before converging.
		            `nb_iter` will be NaN if it is possible to solve the system
		            ``diag(poles) = (A - B*K)``, or 0 when the optimization
		            algorithms can't do anything i.e when ``B.shape[1] == 1``.
		
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
		https://hdl.handle.net/1903/5598
		
		References
		----------
		.. [1] J. Kautsky, N.K. Nichols and P. van Dooren, "Robust pole assignment
		       in linear state feedback", International Journal of Control, Vol. 41
		       pp. 1129-1155, 1985.
		.. [2] A.L. Tits and Y. Yang, "Globally convergent algorithms for robust
		       pole assignment by state feedback", IEEE Transactions on Automatic
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
		Compute QR decomposition of a matrix.
		
		Calculate the decomposition ``A = Q R`` where Q is unitary/orthogonal
		and R upper triangular.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to be decomposed
		overwrite_a : bool, optional
		    Whether data in `a` is overwritten (may improve performance if
		    `overwrite_a` is set to True by reusing the existing input data
		    structure rather than creating a new one.)
		lwork : int, optional
		    Work array size, lwork >= a.shape[1]. If None or -1, an optimal size
		    is computed.
		mode : {'full', 'r', 'economic', 'raw'}, optional
		    Determines what information is to be returned: either both Q and R
		    ('full', default), only R ('r') or both Q and R but computed in
		    economy-size ('economic', see Notes). The final option 'raw'
		    (added in SciPy 0.11) makes the function return two matrices
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
		    Of shape (M, M), or (M, K) for ``mode='economic'``. Not returned
		    if ``mode='r'``.
		R : float or complex ndarray
		    Of shape (M, N), or (K, N) for ``mode='economic'``. ``K = min(M, N)``.
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
		>>> from scipy import linalg
		>>> rng = np.random.default_rng()
		>>> a = rng.standard_normal((9, 6))
		
		>>> q, r = linalg.qr(a)
		>>> np.allclose(a, np.dot(q, r))
		True
		>>> q.shape, r.shape
		((9, 9), (9, 6))
		
		>>> r2 = linalg.qr(a, mode='r')
		>>> np.allclose(r, r2)
		True
		
		>>> q3, r3 = linalg.qr(a, mode='economic')
		>>> q3.shape, r3.shape
		((9, 6), (6, 6))
		
		>>> q4, r4, p4 = linalg.qr(a, pivoting=True)
		>>> d = np.abs(np.diag(r4))
		>>> np.all(d[1:] <= d[:-1])
		True
		>>> np.allclose(a[:, p4], np.dot(q4, r4))
		True
		>>> q4.shape, r4.shape, p4.shape
		((9, 9), (9, 6), (6,))
		
		>>> q5, r5, p5 = linalg.qr(a, mode='economic', pivoting=True)
		>>> q5.shape, r5.shape, p5.shape
		((9, 6), (6, 6), (6,))
	**/
	static public function s_qr(a:Dynamic, ?overwrite_a:Dynamic, ?lwork:Dynamic, ?mode:Dynamic, ?pivoting:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Remove axes of length one from `a`.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    .. versionadded:: 1.7.0
		
		    Selects a subset of the entries of length one in the
		    shape. If an axis is selected with shape entry greater than
		    one, an error is raised.
		
		Returns
		-------
		squeezed : ndarray
		    The input array, but with all or a subset of the
		    dimensions of length 1 removed. This is always `a` itself
		    or a view into `a`. Note that if all axes are squeezed,
		    the result is a 0d array and not a scalar.
		
		Raises
		------
		ValueError
		    If `axis` is not None, and an axis being squeezed is not of length 1
		
		See Also
		--------
		expand_dims : The inverse operation, adding entries of length one
		reshape : Insert, remove, and combine dimensions, and resize existing ones
		
		Examples
		--------
		>>> x = np.array([[[0], [1], [2]]])
		>>> x.shape
		(1, 3, 1)
		>>> np.squeeze(x).shape
		(3,)
		>>> np.squeeze(x, axis=0).shape
		(3, 1)
		>>> np.squeeze(x, axis=1).shape
		Traceback (most recent call last):
		...
		ValueError: cannot select an axis to squeeze out which has size not equal to one
		>>> np.squeeze(x, axis=2).shape
		(1, 3)
		>>> x = np.array([[1234]])
		>>> x.shape
		(1, 1)
		>>> np.squeeze(x)
		array(1234)  # 0d array
		>>> np.squeeze(x).shape
		()
		>>> np.squeeze(x)[()]
		1234
	**/
	static public function squeeze(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		State-space to transfer function.
		
		A, B, C, D defines a linear state-space system with `p` inputs,
		`q` outputs, and `n` state variables.
		
		Parameters
		----------
		A : array_like
		    State (or system) matrix of shape ``(n, n)``
		B : array_like
		    Input matrix of shape ``(n, p)``
		C : array_like
		    Output matrix of shape ``(q, n)``
		D : array_like
		    Feedthrough (or feedforward) matrix of shape ``(q, p)``
		input : int, optional
		    For multiple-input systems, the index of the input to use.
		
		Returns
		-------
		num : 2-D ndarray
		    Numerator(s) of the resulting transfer function(s). `num` has one row
		    for each of the system's outputs. Each row is a sequence representation
		    of the numerator polynomial.
		den : 1-D ndarray
		    Denominator of the resulting transfer function(s). `den` is a sequence
		    representation of the denominator polynomial.
		
		Examples
		--------
		Convert the state-space representation:
		
		.. math::
		
		    \dot{\textbf{x}}(t) =
		    \begin{bmatrix} -2 & -1 \\ 1 & 0 \end{bmatrix} \textbf{x}(t) +
		    \begin{bmatrix} 1 \\ 0 \end{bmatrix} \textbf{u}(t) \\
		
		    \textbf{y}(t) = \begin{bmatrix} 1 & 2 \end{bmatrix} \textbf{x}(t) +
		    \begin{bmatrix} 1 \end{bmatrix} \textbf{u}(t)
		
		>>> A = [[-2, -1], [1, 0]]
		>>> B = [[1], [0]]  # 2-D column vector
		>>> C = [[1, 2]]    # 2-D row vector
		>>> D = 1
		
		to the transfer function:
		
		.. math:: H(s) = \frac{s^2 + 3s + 3}{s^2 + 2s + 1}
		
		>>> from scipy.signal import ss2tf
		>>> ss2tf(A, B, C, D)
		(array([[1., 3., 3.]]), array([ 1.,  2.,  1.]))
	**/
	static public function ss2tf(A:Dynamic, B:Dynamic, C:Dynamic, D:Dynamic, ?input:Dynamic):Dynamic;
	/**
		State-space representation to zero-pole-gain representation.
		
		A, B, C, D defines a linear state-space system with `p` inputs,
		`q` outputs, and `n` state variables.
		
		Parameters
		----------
		A : array_like
		    State (or system) matrix of shape ``(n, n)``
		B : array_like
		    Input matrix of shape ``(n, p)``
		C : array_like
		    Output matrix of shape ``(q, n)``
		D : array_like
		    Feedthrough (or feedforward) matrix of shape ``(q, p)``
		input : int, optional
		    For multiple-input systems, the index of the input to use.
		
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
		
		        * 1 (instance of `lti`)
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
		
		Notes
		-----
		If (num, den) is passed in for ``system``, coefficients for both the
		numerator and denominator should be specified in descending exponent
		order (e.g. ``s^2 + 3s + 5`` would be represented as ``[1, 3, 5]``).
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> lti = signal.lti([1.0], [1.0, 1.0])
		>>> t, y = signal.step(lti)
		>>> plt.plot(t, y)
		>>> plt.xlabel('Time [s]')
		>>> plt.ylabel('Amplitude')
		>>> plt.title('Step response for 1. Order Lowpass')
		>>> plt.grid()
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
		
		        * 1 (instance of `lti`)
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
		If (num, den) is passed in for ``system``, coefficients for both the
		numerator and denominator should be specified in descending exponent
		order (e.g. ``s^2 + 3s + 5`` would be represented as ``[1, 3, 5]``).
		
		.. versionadded:: 0.8.0
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		>>> lti = signal.lti([1.0], [1.0, 1.0])
		>>> t, y = signal.step2(lti)
		>>> plt.plot(t, y)
		>>> plt.xlabel('Time [s]')
		>>> plt.ylabel('Amplitude')
		>>> plt.title('Step response for 1. Order Lowpass')
		>>> plt.grid()
	**/
	static public function step2(system:Dynamic, ?X0:Dynamic, ?T:Dynamic, ?N:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Transfer function to state-space representation.
		
		Parameters
		----------
		num, den : array_like
		    Sequences representing the coefficients of the numerator and
		    denominator polynomials, in order of descending degree. The
		    denominator needs to be at least as long as the numerator.
		
		Returns
		-------
		A, B, C, D : ndarray
		    State space representation of the system, in controller canonical
		    form.
		
		Examples
		--------
		Convert the transfer function:
		
		.. math:: H(s) = \frac{s^2 + 3s + 3}{s^2 + 2s + 1}
		
		>>> num = [1, 3, 3]
		>>> den = [1, 2, 1]
		
		to the state-space representation:
		
		.. math::
		
		    \dot{\textbf{x}}(t) =
		    \begin{bmatrix} -2 & -1 \\ 1 & 0 \end{bmatrix} \textbf{x}(t) +
		    \begin{bmatrix} 1 \\ 0 \end{bmatrix} \textbf{u}(t) \\
		
		    \textbf{y}(t) = \begin{bmatrix} 1 & 2 \end{bmatrix} \textbf{x}(t) +
		    \begin{bmatrix} 1 \end{bmatrix} \textbf{u}(t)
		
		>>> from scipy.signal import tf2ss
		>>> A, B, C, D = tf2ss(num, den)
		>>> A
		array([[-2., -1.],
		       [ 1.,  0.]])
		>>> B
		array([[ 1.],
		       [ 0.]])
		>>> C
		array([[ 1.,  2.]])
		>>> D
		array([[ 1.]])
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
		descending powers of the transfer function variable. So the inputs
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
		engineering. If `M` and `N` are equal (which is true for all filters
		generated by the bilinear transform), then this happens to be equivalent
		to the "negative powers" discrete-time form preferred in DSP:
		
		.. math::
		
		    H(z) = \frac
		    {b_0 + b_1 z^{-1} + \cdots + b_M z^{-M}}
		    {a_0 + a_1 z^{-1} + \cdots + a_N z^{-N}}
		
		Although this is true for common filters, remember that this is not true
		in the general case. If `M` and `N` are not equal, the discrete-time
		transfer function coefficients must first be converted to the "positive
		powers" form before finding the poles and zeros.
	**/
	static public function tf2zpk(b:Dynamic, a:Dynamic):Dynamic;
	/**
		Reverse or permute the axes of an array; returns the modified array.
		
		For an array a with two axes, transpose(a) gives the matrix transpose.
		
		Refer to `numpy.ndarray.transpose` for full documentation.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axes : tuple or list of ints, optional
		    If specified, it must be a tuple or list which contains a permutation of
		    [0,1,..,N-1] where N is the number of axes of a.  The i'th axis of the
		    returned array will correspond to the axis numbered ``axes[i]`` of the
		    input.  If not specified, defaults to ``range(a.ndim)[::-1]``, which
		    reverses the order of the axes.
		
		Returns
		-------
		p : ndarray
		    `a` with its axes permuted.  A view is returned whenever
		    possible.
		
		See Also
		--------
		ndarray.transpose : Equivalent method
		moveaxis
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
		
		>>> x = np.ones((2, 3, 4, 5))
		>>> np.transpose(x).shape
		(5, 4, 3, 2)
	**/
	static public function transpose(a:Dynamic, ?axes:Dynamic):Dynamic;
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
		    type of `a`, otherwise it will be a base-class array. Defaults
		    to True.
		shape : int or sequence of ints, optional.
		    Overrides the shape of the result. If order='K' and the number of
		    dimensions is unchanged, will try to keep order, otherwise,
		    order='C' is implied.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the same shape and type as `a`.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		zeros : Return a new array setting values to zero.
		
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
		
		>>> y = np.arange(3, dtype=float)
		>>> y
		array([0., 1., 2.])
		>>> np.zeros_like(y)
		array([0.,  0.,  0.])
	**/
	static public function zeros_like(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?subok:Dynamic, ?shape:Dynamic):Dynamic;
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