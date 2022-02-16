/* This file is generated, do not edit! */
package scipy.special.basic;
@:pythonImport("scipy.special.basic") extern class Basic_Module {
	/**
		Compute `nt` zeros and values of the Airy function Ai and its derivative.
		
		Computes the first `nt` zeros, `a`, of the Airy function Ai(x);
		first `nt` zeros, `ap`, of the derivative of the Airy function Ai'(x);
		the corresponding values Ai(a');
		and the corresponding values Ai'(a).
		
		Parameters
		----------
		nt : int
		    Number of zeros to compute
		
		Returns
		-------
		a : ndarray
		    First `nt` zeros of Ai(x)
		ap : ndarray
		    First `nt` zeros of Ai'(x)
		ai : ndarray
		    Values of Ai(x) evaluated at first `nt` zeros of Ai'(x)
		aip : ndarray
		    Values of Ai'(x) evaluated at first `nt` zeros of Ai(x)
		
		Examples
		--------
		>>> from scipy import special
		>>> a, ap, ai, aip = special.ai_zeros(3)
		>>> a
		array([-2.33810741, -4.08794944, -5.52055983])
		>>> ap
		array([-1.01879297, -3.24819758, -4.82009921])
		>>> ai
		array([ 0.53565666, -0.41901548,  0.38040647])
		>>> aip
		array([ 0.70121082, -0.80311137,  0.86520403])
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function ai_zeros(nt:Dynamic):Dynamic;
	/**
		Compute the generalized (associated) Laguerre polynomial of degree n and order k.
		
		The polynomial :math:`L^{(k)}_n(x)` is orthogonal over ``[0, inf)``,
		with weighting function ``exp(-x) * x**k`` with ``k > -1``.
		
		Notes
		-----
		`assoc_laguerre` is a simple wrapper around `eval_genlaguerre`, with
		reversed argument order ``(x, n, k=0.0) --> (n, k, x)``.
	**/
	static public function assoc_laguerre(x:Dynamic, n:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Compute nt zeros of the Kelvin function bei.
		
		Parameters
		----------
		nt : int
		    Number of zeros to compute. Must be positive.
		
		Returns
		-------
		ndarray
		    First `nt` zeros of the Kelvin function.
		
		See Also
		--------
		bei
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function bei_zeros(nt:Dynamic):Dynamic;
	/**
		Compute nt zeros of the derivative of the Kelvin function bei.
		
		Parameters
		----------
		nt : int
		    Number of zeros to compute. Must be positive.
		
		Returns
		-------
		ndarray
		    First `nt` zeros of the derivative of the Kelvin function.
		
		See Also
		--------
		bei, beip
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function beip_zeros(nt:Dynamic):Dynamic;
	/**
		Compute nt zeros of the Kelvin function ber.
		
		Parameters
		----------
		nt : int
		    Number of zeros to compute. Must be positive.
		
		Returns
		-------
		ndarray
		    First `nt` zeros of the Kelvin function.
		
		See Also
		--------
		ber
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function ber_zeros(nt:Dynamic):Dynamic;
	/**
		Bernoulli numbers B0..Bn (inclusive).
		
		Parameters
		----------
		n : int
		    Indicated the number of terms in the Bernoulli series to generate.
		
		Returns
		-------
		ndarray
		    The Bernoulli numbers ``[B(0), B(1), ..., B(n)]``.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		.. [2] "Bernoulli number", Wikipedia, https://en.wikipedia.org/wiki/Bernoulli_number
		
		Examples
		--------
		>>> from scipy.special import bernoulli, zeta
		>>> bernoulli(4)
		array([ 1.        , -0.5       ,  0.16666667,  0.        , -0.03333333])
		
		The Wikipedia article ([2]_) points out the relationship between the
		Bernoulli numbers and the zeta function, ``B_n^+ = -n * zeta(1 - n)``
		for ``n > 0``:
		
		>>> n = np.arange(1, 5)
		>>> -n * zeta(1 - n)
		array([ 0.5       ,  0.16666667, -0.        , -0.03333333])
		
		Note that, in the notation used in the wikipedia article,
		`bernoulli` computes ``B_n^-`` (i.e. it used the convention that
		``B_1`` is -1/2).  The relation given above is for ``B_n^+``, so the
		sign of 0.5 does not match the output of ``bernoulli(4)``.
	**/
	static public function bernoulli(n:Dynamic):Dynamic;
	/**
		Compute nt zeros of the derivative of the Kelvin function ber.
		
		Parameters
		----------
		nt : int
		    Number of zeros to compute. Must be positive.
		
		Returns
		-------
		ndarray
		    First `nt` zeros of the derivative of the Kelvin function.
		
		See Also
		--------
		ber, berp
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function berp_zeros(nt:Dynamic):Dynamic;
	/**
		Compute `nt` zeros and values of the Airy function Bi and its derivative.
		
		Computes the first `nt` zeros, b, of the Airy function Bi(x);
		first `nt` zeros, b', of the derivative of the Airy function Bi'(x);
		the corresponding values Bi(b');
		and the corresponding values Bi'(b).
		
		Parameters
		----------
		nt : int
		    Number of zeros to compute
		
		Returns
		-------
		b : ndarray
		    First `nt` zeros of Bi(x)
		bp : ndarray
		    First `nt` zeros of Bi'(x)
		bi : ndarray
		    Values of Bi(x) evaluated at first `nt` zeros of Bi'(x)
		bip : ndarray
		    Values of Bi'(x) evaluated at first `nt` zeros of Bi(x)
		
		Examples
		--------
		>>> from scipy import special
		>>> b, bp, bi, bip = special.bi_zeros(3)
		>>> b
		array([-1.17371322, -3.2710933 , -4.83073784])
		>>> bp
		array([-2.29443968, -4.07315509, -5.51239573])
		>>> bi
		array([-0.45494438,  0.39652284, -0.36796916])
		>>> bip
		array([ 0.60195789, -0.76031014,  0.83699101])
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function bi_zeros(nt:Dynamic):Dynamic;
	/**
		Associated Legendre function of the first kind for complex arguments.
		
		Computes the associated Legendre function of the first kind of order m and
		degree n, ``Pmn(z)`` = :math:`P_n^m(z)`, and its derivative, ``Pmn'(z)``.
		Returns two arrays of size ``(m+1, n+1)`` containing ``Pmn(z)`` and
		``Pmn'(z)`` for all orders from ``0..m`` and degrees from ``0..n``.
		
		Parameters
		----------
		m : int
		   ``|m| <= n``; the order of the Legendre function.
		n : int
		   where ``n >= 0``; the degree of the Legendre function.  Often
		   called ``l`` (lower case L) in descriptions of the associated
		   Legendre function
		z : float or complex
		    Input value.
		type : int, optional
		   takes values 2 or 3
		   2: cut on the real axis ``|x| > 1``
		   3: cut on the real axis ``-1 < x < 1`` (default)
		
		Returns
		-------
		Pmn_z : (m+1, n+1) array
		   Values for all orders ``0..m`` and degrees ``0..n``
		Pmn_d_z : (m+1, n+1) array
		   Derivatives for all orders ``0..m`` and degrees ``0..n``
		
		See Also
		--------
		lpmn: associated Legendre functions of the first kind for real z
		
		Notes
		-----
		By default, i.e. for ``type=3``, phase conventions are chosen according
		to [1]_ such that the function is analytic. The cut lies on the interval
		(-1, 1). Approaching the cut from above or below in general yields a phase
		factor with respect to Ferrer's function of the first kind
		(cf. `lpmn`).
		
		For ``type=2`` a cut at ``|x| > 1`` is chosen. Approaching the real values
		on the interval (-1, 1) in the complex plane yields Ferrer's function
		of the first kind.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		.. [2] NIST Digital Library of Mathematical Functions
		       https://dlmf.nist.gov/14.21
	**/
	static public function clpmn(m:Dynamic, n:Dynamic, z:Dynamic, ?type:Dynamic):Dynamic;
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
		psi(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		psi(z, out=None)
		
		The digamma function.
		
		The logarithmic derivative of the gamma function evaluated at ``z``.
		
		Parameters
		----------
		z : array_like
		    Real or complex argument.
		out : ndarray, optional
		    Array for the computed values of ``psi``.
		
		Returns
		-------
		digamma : ndarray
		    Computed values of ``psi``.
		
		Notes
		-----
		For large values not close to the negative real axis, ``psi`` is
		computed using the asymptotic series (5.11.2) from [1]_. For small
		arguments not close to the negative real axis, the recurrence
		relation (5.5.2) from [1]_ is used until the argument is large
		enough to use the asymptotic series. For values close to the
		negative real axis, the reflection formula (5.5.4) from [1]_ is
		used first. Note that ``psi`` has a family of zeros on the
		negative real axis which occur between the poles at nonpositive
		integers. Around the zeros the reflection formula suffers from
		cancellation and the implementation loses precision. The sole
		positive zero and the first negative zero, however, are handled
		separately by precomputing series expansions using [2]_, so the
		function should maintain full accuracy around the origin.
		
		References
		----------
		.. [1] NIST Digital Library of Mathematical Functions
		       https://dlmf.nist.gov/5
		.. [2] Fredrik Johansson and others.
		       "mpmath: a Python library for arbitrary-precision floating-point arithmetic"
		       (Version 0.19) http://mpmath.org/
		
		Examples
		--------
		>>> from scipy.special import psi
		>>> z = 3 + 4j
		>>> psi(z)
		(1.55035981733341+1.0105022091860445j)
		
		Verify psi(z) = psi(z + 1) - 1/z:
		
		>>> psi(z + 1) - 1/z
		(1.55035981733341+1.0105022091860445j)
	**/
	static public function digamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Periodic sinc function, also called the Dirichlet function.
		
		The Dirichlet function is defined as::
		
		    diric(x, n) = sin(x * n/2) / (n * sin(x / 2)),
		
		where `n` is a positive integer.
		
		Parameters
		----------
		x : array_like
		    Input data
		n : int
		    Integer defining the periodicity.
		
		Returns
		-------
		diric : ndarray
		
		Examples
		--------
		>>> from scipy import special
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-8*np.pi, 8*np.pi, num=201)
		>>> plt.figure(figsize=(8, 8));
		>>> for idx, n in enumerate([2, 3, 4, 9]):
		...     plt.subplot(2, 2, idx+1)
		...     plt.plot(x, special.diric(x, n))
		...     plt.title('diric, n={}'.format(n))
		>>> plt.show()
		
		The following example demonstrates that `diric` gives the magnitudes
		(modulo the sign and scaling) of the Fourier coefficients of a
		rectangular pulse.
		
		Suppress output of values that are effectively 0:
		
		>>> np.set_printoptions(suppress=True)
		
		Create a signal `x` of length `m` with `k` ones:
		
		>>> m = 8
		>>> k = 3
		>>> x = np.zeros(m)
		>>> x[:k] = 1
		
		Use the FFT to compute the Fourier transform of `x`, and
		inspect the magnitudes of the coefficients:
		
		>>> np.abs(np.fft.fft(x))
		array([ 3.        ,  2.41421356,  1.        ,  0.41421356,  1.        ,
		        0.41421356,  1.        ,  2.41421356])
		
		Now find the same values (up to sign) using `diric`. We multiply
		by `k` to account for the different scaling conventions of
		`numpy.fft.fft` and `diric`:
		
		>>> theta = np.linspace(0, 2*np.pi, m, endpoint=False)
		>>> k * special.diric(theta, k)
		array([ 3.        ,  2.41421356,  1.        , -0.41421356, -1.        ,
		       -0.41421356,  1.        ,  2.41421356])
	**/
	static public function diric(x:Dynamic, n:Dynamic):Dynamic;
	/**
		Compute the first nt zero in the first quadrant, ordered by absolute value.
		
		Zeros in the other quadrants can be obtained by using the symmetries erf(-z) = erf(z) and
		erf(conj(z)) = conj(erf(z)).
		
		
		Parameters
		----------
		nt : int
		    The number of zeros to compute
		
		Returns
		-------
		The locations of the zeros of erf : ndarray (complex)
		    Complex values at which zeros of erf(z)
		
		Examples
		--------
		>>> from scipy import special
		>>> special.erf_zeros(1)
		array([1.45061616+1.880943j])
		
		Check that erf is (close to) zero for the value returned by erf_zeros
		
		>>> special.erf(special.erf_zeros(1))
		array([4.95159469e-14-1.16407394e-16j])
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function erf_zeros(nt:Dynamic):Dynamic;
	/**
		Euler numbers E(0), E(1), ..., E(n).
		
		The Euler numbers [1]_ are also known as the secant numbers.
		
		Because ``euler(n)`` returns floating point values, it does not give
		exact values for large `n`.  The first inexact value is E(22).
		
		Parameters
		----------
		n : int
		    The highest index of the Euler number to be returned.
		
		Returns
		-------
		ndarray
		    The Euler numbers [E(0), E(1), ..., E(n)].
		    The odd Euler numbers, which are all zero, are included.
		
		References
		----------
		.. [1] Sequence A122045, The On-Line Encyclopedia of Integer Sequences,
		       https://oeis.org/A122045
		.. [2] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		
		Examples
		--------
		>>> from scipy.special import euler
		>>> euler(6)
		array([  1.,   0.,  -1.,   0.,   5.,   0., -61.])
		
		>>> euler(13).astype(np.int64)
		array([      1,       0,      -1,       0,       5,       0,     -61,
		             0,    1385,       0,  -50521,       0, 2702765,       0])
		
		>>> euler(22)[-1]  # Exact value of E(22) is -69348874393137901.
		-69348874393137976.0
	**/
	static public function euler(n:Dynamic):Dynamic;
	/**
		The factorial of a number or array of numbers.
		
		The factorial of non-negative integer `n` is the product of all
		positive integers less than or equal to `n`::
		
		    n! = n * (n - 1) * (n - 2) * ... * 1
		
		Parameters
		----------
		n : int or array_like of ints
		    Input values.  If ``n < 0``, the return value is 0.
		exact : bool, optional
		    If True, calculate the answer exactly using long integer arithmetic.
		    If False, result is approximated in floating point rapidly using the
		    `gamma` function.
		    Default is False.
		
		Returns
		-------
		nf : float or int or ndarray
		    Factorial of `n`, as integer or float depending on `exact`.
		
		Notes
		-----
		For arrays with ``exact=True``, the factorial is computed only once, for
		the largest input, with each other result computed in the process.
		The output dtype is increased to ``int64`` or ``object`` if necessary.
		
		With ``exact=False`` the factorial is approximated using the gamma
		function:
		
		.. math:: n! = \Gamma(n+1)
		
		Examples
		--------
		>>> from scipy.special import factorial
		>>> arr = np.array([3, 4, 5])
		>>> factorial(arr, exact=False)
		array([   6.,   24.,  120.])
		>>> factorial(arr, exact=True)
		array([  6,  24, 120])
		>>> factorial(5, exact=True)
		120
	**/
	static public function factorial(n:Dynamic, ?exact:Dynamic):Dynamic;
	/**
		Double factorial.
		
		This is the factorial with every second value skipped.  E.g., ``7!! = 7 * 5
		* 3 * 1``.  It can be approximated numerically as::
		
		  n!! = special.gamma(n/2+1)*2**((m+1)/2)/sqrt(pi)  n odd
		      = 2**(n/2) * (n/2)!                           n even
		
		Parameters
		----------
		n : int or array_like
		    Calculate ``n!!``.  Arrays are only supported with `exact` set
		    to False.  If ``n < 0``, the return value is 0.
		exact : bool, optional
		    The result can be approximated rapidly using the gamma-formula
		    above (default).  If `exact` is set to True, calculate the
		    answer exactly using integer arithmetic.
		
		Returns
		-------
		nff : float or int
		    Double factorial of `n`, as an int or a float depending on
		    `exact`.
		
		Examples
		--------
		>>> from scipy.special import factorial2
		>>> factorial2(7, exact=False)
		array(105.00000000000001)
		>>> factorial2(7, exact=True)
		105
	**/
	static public function factorial2(n:Dynamic, ?exact:Dynamic):Dynamic;
	/**
		Multifactorial of n of order k, n(!!...!).
		
		This is the multifactorial of n skipping k values.  For example,
		
		  factorialk(17, 4) = 17!!!! = 17 * 13 * 9 * 5 * 1
		
		In particular, for any integer ``n``, we have
		
		  factorialk(n, 1) = factorial(n)
		
		  factorialk(n, 2) = factorial2(n)
		
		Parameters
		----------
		n : int
		    Calculate multifactorial. If `n` < 0, the return value is 0.
		k : int
		    Order of multifactorial.
		exact : bool, optional
		    If exact is set to True, calculate the answer exactly using
		    integer arithmetic.
		
		Returns
		-------
		val : int
		    Multifactorial of `n`.
		
		Raises
		------
		NotImplementedError
		    Raises when exact is False
		
		Examples
		--------
		>>> from scipy.special import factorialk
		>>> factorialk(5, 1, exact=True)
		120
		>>> factorialk(5, 3, exact=True)
		10
	**/
	static public function factorialk(n:Dynamic, k:Dynamic, ?exact:Dynamic):Int;
	/**
		Compute nt complex zeros of sine and cosine Fresnel integrals S(z) and C(z).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function fresnel_zeros(nt:Dynamic):Dynamic;
	/**
		Compute nt complex zeros of cosine Fresnel integral C(z).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function fresnelc_zeros(nt:Dynamic):Dynamic;
	/**
		Compute nt complex zeros of sine Fresnel integral S(z).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function fresnels_zeros(nt:Dynamic):Dynamic;
	/**
		gamma(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		gamma(z)
		
		gamma function.
		
		The gamma function is defined as
		
		.. math::
		
		   \Gamma(z) = \int_0^\infty t^{z-1} e^{-t} dt
		
		for :math:`\Re(z) > 0` and is extended to the rest of the complex
		plane by analytic continuation. See [dlmf]_ for more details.
		
		Parameters
		----------
		z : array_like
		    Real or complex valued argument
		
		Returns
		-------
		scalar or ndarray
		    Values of the gamma function
		
		Notes
		-----
		The gamma function is often referred to as the generalized
		factorial since :math:`\Gamma(n + 1) = n!` for natural numbers
		:math:`n`. More generally it satisfies the recurrence relation
		:math:`\Gamma(z + 1) = z \cdot \Gamma(z)` for complex :math:`z`,
		which, combined with the fact that :math:`\Gamma(1) = 1`, implies
		the above identity for :math:`z = n`.
		
		References
		----------
		.. [dlmf] NIST Digital Library of Mathematical Functions
		          https://dlmf.nist.gov/5.2#E1
		
		Examples
		--------
		>>> from scipy.special import gamma, factorial
		
		>>> gamma([0, 0.5, 1, 5])
		array([         inf,   1.77245385,   1.        ,  24.        ])
		
		>>> z = 2.5 + 1j
		>>> gamma(z)
		(0.77476210455108352+0.70763120437959293j)
		>>> gamma(z+1), z*gamma(z)  # Recurrence property
		((1.2292740569981171+2.5438401155000685j),
		 (1.2292740569981158+2.5438401155000658j))
		
		>>> gamma(0.5)**2  # gamma(0.5) = sqrt(pi)
		3.1415926535897927
		
		Plot gamma(x) for real x
		
		>>> x = np.linspace(-3.5, 5.5, 2251)
		>>> y = gamma(x)
		
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(x, y, 'b', alpha=0.6, label='gamma(x)')
		>>> k = np.arange(1, 7)
		>>> plt.plot(k, factorial(k-1), 'k*', alpha=0.6,
		...          label='(x-1)!, x = 1, 2, ...')
		>>> plt.xlim(-3.5, 5.5)
		>>> plt.ylim(-10, 25)
		>>> plt.grid()
		>>> plt.xlabel('x')
		>>> plt.legend(loc='lower right')
		>>> plt.show()
	**/
	static public function gamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute nth derivative of Hankel function H1v(z) with respect to `z`.
		
		Parameters
		----------
		v : array_like
		    Order of Hankel function
		z : array_like
		    Argument at which to evaluate the derivative. Can be real or
		    complex.
		n : int, default 1
		    Order of derivative
		
		Returns
		-------
		scalar or ndarray
		    Values of the derivative of the Hankel function.
		
		Notes
		-----
		The derivative is computed using the relation DLFM 10.6.7 [2]_.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		.. [2] NIST Digital Library of Mathematical Functions.
		       https://dlmf.nist.gov/10.6.E7
	**/
	static public function h1vp(v:Dynamic, z:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Compute nth derivative of Hankel function H2v(z) with respect to `z`.
		
		Parameters
		----------
		v : array_like
		    Order of Hankel function
		z : array_like
		    Argument at which to evaluate the derivative. Can be real or
		    complex.
		n : int, default 1
		    Order of derivative
		
		Returns
		-------
		scalar or ndarray
		    Values of the derivative of the Hankel function.
		
		Notes
		-----
		The derivative is computed using the relation DLFM 10.6.7 [2]_.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		.. [2] NIST Digital Library of Mathematical Functions.
		       https://dlmf.nist.gov/10.6.E7
	**/
	static public function h2vp(v:Dynamic, z:Dynamic, ?n:Dynamic):Dynamic;
	/**
		hankel1(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		hankel1(v, z)
		
		Hankel function of the first kind
		
		Parameters
		----------
		v : array_like
		    Order (float).
		z : array_like
		    Argument (float or complex).
		
		Returns
		-------
		out : Values of the Hankel function of the first kind.
		
		Notes
		-----
		A wrapper for the AMOS [1]_ routine `zbesh`, which carries out the
		computation using the relation,
		
		.. math:: H^{(1)}_v(z) = \frac{2}{\imath\pi} \exp(-\imath \pi v/2) K_v(z \exp(-\imath\pi/2))
		
		where :math:`K_v` is the modified Bessel function of the second kind.
		For negative orders, the relation
		
		.. math:: H^{(1)}_{-v}(z) = H^{(1)}_v(z) \exp(\imath\pi v)
		
		is used.
		
		See also
		--------
		hankel1e : this function with leading exponential behavior stripped off.
		
		References
		----------
		.. [1] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
	**/
	static public function hankel1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hankel2(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		hankel2(v, z)
		
		Hankel function of the second kind
		
		Parameters
		----------
		v : array_like
		    Order (float).
		z : array_like
		    Argument (float or complex).
		
		Returns
		-------
		out : Values of the Hankel function of the second kind.
		
		Notes
		-----
		A wrapper for the AMOS [1]_ routine `zbesh`, which carries out the
		computation using the relation,
		
		.. math:: H^{(2)}_v(z) = -\frac{2}{\imath\pi} \exp(\imath \pi v/2) K_v(z \exp(\imath\pi/2))
		
		where :math:`K_v` is the modified Bessel function of the second kind.
		For negative orders, the relation
		
		.. math:: H^{(2)}_{-v}(z) = H^{(2)}_v(z) \exp(-\imath\pi v)
		
		is used.
		
		See also
		--------
		hankel2e : this function with leading exponential behavior stripped off.
		
		References
		----------
		.. [1] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
	**/
	static public function hankel2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hyp0f1(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		hyp0f1(v, z, out=None)
		
		Confluent hypergeometric limit function 0F1.
		
		Parameters
		----------
		v : array_like
		    Real-valued parameter
		z : array_like
		    Real- or complex-valued argument
		out : ndarray, optional
		    Optional output array for the function results
		
		Returns
		-------
		scalar or ndarray
		    The confluent hypergeometric limit function
		
		Notes
		-----
		This function is defined as:
		
		.. math:: _0F_1(v, z) = \sum_{k=0}^{\infty}\frac{z^k}{(v)_k k!}.
		
		It's also the limit as :math:`q \to \infty` of :math:`_1F_1(q; v; z/q)`,
		and satisfies the differential equation :math:`f''(z) + vf'(z) =
		f(z)`. See [1]_ for more information.
		
		References
		----------
		.. [1] Wolfram MathWorld, "Confluent Hypergeometric Limit Function",
		       http://mathworld.wolfram.com/ConfluentHypergeometricLimitFunction.html
		
		Examples
		--------
		>>> import scipy.special as sc
		
		It is one when `z` is zero.
		
		>>> sc.hyp0f1(1, 0)
		1.0
		
		It is the limit of the confluent hypergeometric function as `q`
		goes to infinity.
		
		>>> q = np.array([1, 10, 100, 1000])
		>>> v = 1
		>>> z = 1
		>>> sc.hyp1f1(q, v, z / q)
		array([2.71828183, 2.31481985, 2.28303778, 2.27992985])
		>>> sc.hyp0f1(v, z)
		2.2795853023360673
		
		It is related to Bessel functions.
		
		>>> n = 1
		>>> x = np.linspace(0, 1, 5)
		>>> sc.jv(n, x)
		array([0.        , 0.12402598, 0.24226846, 0.3492436 , 0.44005059])
		>>> (0.5 * x)**n / sc.factorial(n) * sc.hyp0f1(n + 1, -0.25 * x**2)
		array([0.        , 0.12402598, 0.24226846, 0.3492436 , 0.44005059])
	**/
	static public function hyp0f1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		iv(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		iv(v, z)
		
		Modified Bessel function of the first kind of real order.
		
		Parameters
		----------
		v : array_like
		    Order. If `z` is of real type and negative, `v` must be integer
		    valued.
		z : array_like of float or complex
		    Argument.
		
		Returns
		-------
		out : ndarray
		    Values of the modified Bessel function.
		
		Notes
		-----
		For real `z` and :math:`v \in [-50, 50]`, the evaluation is carried out
		using Temme's method [1]_.  For larger orders, uniform asymptotic
		expansions are applied.
		
		For complex `z` and positive `v`, the AMOS [2]_ `zbesi` routine is
		called. It uses a power series for small `z`, the asymptotic expansion
		for large `abs(z)`, the Miller algorithm normalized by the Wronskian
		and a Neumann series for intermediate magnitudes, and the uniform
		asymptotic expansions for :math:`I_v(z)` and :math:`J_v(z)` for large
		orders. Backward recurrence is used to generate sequences or reduce
		orders when necessary.
		
		The calculations above are done in the right half plane and continued
		into the left half plane by the formula,
		
		.. math:: I_v(z \exp(\pm\imath\pi)) = \exp(\pm\pi v) I_v(z)
		
		(valid when the real part of `z` is positive).  For negative `v`, the
		formula
		
		.. math:: I_{-v}(z) = I_v(z) + \frac{2}{\pi} \sin(\pi v) K_v(z)
		
		is used, where :math:`K_v(z)` is the modified Bessel function of the
		second kind, evaluated using the AMOS routine `zbesk`.
		
		See also
		--------
		kve : This function with leading exponential behavior stripped off.
		
		References
		----------
		.. [1] Temme, Journal of Computational Physics, vol 21, 343 (1976)
		.. [2] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
	**/
	static public function iv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute derivatives of modified Bessel functions of the first kind.
		
		Compute the nth derivative of the modified Bessel function `Iv`
		with respect to `z`.
		
		Parameters
		----------
		v : array_like
		    Order of Bessel function
		z : array_like
		    Argument at which to evaluate the derivative; can be real or
		    complex.
		n : int, default 1
		    Order of derivative
		
		Returns
		-------
		scalar or ndarray
		    nth derivative of the modified Bessel function.
		
		See Also
		--------
		iv
		
		Notes
		-----
		The derivative is computed using the relation DLFM 10.29.5 [2]_.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 6.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		.. [2] NIST Digital Library of Mathematical Functions.
		       https://dlmf.nist.gov/10.29.E5
	**/
	static public function ivp(v:Dynamic, z:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Compute zeros of integer-order Bessel functions Jn.
		
		Compute `nt` zeros of the Bessel functions :math:`J_n(x)` on the
		interval :math:`(0, \infty)`. The zeros are returned in ascending
		order. Note that this interval excludes the zero at :math:`x = 0`
		that exists for :math:`n > 0`.
		
		Parameters
		----------
		n : int
		    Order of Bessel function
		nt : int
		    Number of zeros to return
		
		Returns
		-------
		ndarray
		    First `nt` zeros of the Bessel function.
		
		See Also
		--------
		jv
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		
		Examples
		--------
		>>> import scipy.special as sc
		
		We can check that we are getting approximations of the zeros by
		evaluating them with `jv`.
		
		>>> n = 1
		>>> x = sc.jn_zeros(n, 3)
		>>> x
		array([ 3.83170597,  7.01558667, 10.17346814])
		>>> sc.jv(n, x)
		array([-0.00000000e+00,  1.72975330e-16,  2.89157291e-16])
		
		Note that the zero at ``x = 0`` for ``n > 0`` is not included.
		
		>>> sc.jv(1, 0)
		0.0
	**/
	static public function jn_zeros(n:Dynamic, nt:Dynamic):Dynamic;
	/**
		Compute zeros of integer-order Bessel functions Jn and Jn'.
		
		Results are arranged in order of the magnitudes of the zeros.
		
		Parameters
		----------
		nt : int
		    Number (<=1200) of zeros to compute
		
		Returns
		-------
		zo[l-1] : ndarray
		    Value of the lth zero of Jn(x) and Jn'(x). Of length `nt`.
		n[l-1] : ndarray
		    Order of the Jn(x) or Jn'(x) associated with lth zero. Of length `nt`.
		m[l-1] : ndarray
		    Serial number of the zeros of Jn(x) or Jn'(x) associated
		    with lth zero. Of length `nt`.
		t[l-1] : ndarray
		    0 if lth zero in zo is zero of Jn(x), 1 if it is a zero of Jn'(x). Of
		    length `nt`.
		
		See Also
		--------
		jn_zeros, jnp_zeros : to get separated arrays of zeros.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function jnjnp_zeros(nt:Dynamic):Dynamic;
	/**
		Compute zeros of integer-order Bessel function derivatives Jn'.
		
		Compute `nt` zeros of the functions :math:`J_n'(x)` on the
		interval :math:`(0, \infty)`. The zeros are returned in ascending
		order. Note that this interval excludes the zero at :math:`x = 0`
		that exists for :math:`n > 1`.
		
		Parameters
		----------
		n : int
		    Order of Bessel function
		nt : int
		    Number of zeros to return
		
		Returns
		-------
		ndarray
		    First `nt` zeros of the Bessel function.
		
		See Also
		--------
		jvp, jv
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		
		Examples
		--------
		>>> import scipy.special as sc
		
		We can check that we are getting approximations of the zeros by
		evaluating them with `jvp`.
		
		>>> n = 2
		>>> x = sc.jnp_zeros(n, 3)
		>>> x
		array([3.05423693, 6.70613319, 9.96946782])
		>>> sc.jvp(n, x)
		array([ 2.77555756e-17,  2.08166817e-16, -3.01841885e-16])
		
		Note that the zero at ``x = 0`` for ``n > 1`` is not included.
		
		>>> sc.jvp(n, 0)
		0.0
	**/
	static public function jnp_zeros(n:Dynamic, nt:Dynamic):Dynamic;
	/**
		Compute nt zeros of Bessel functions Jn(x), Jn'(x), Yn(x), and Yn'(x).
		
		Returns 4 arrays of length `nt`, corresponding to the first `nt`
		zeros of Jn(x), Jn'(x), Yn(x), and Yn'(x), respectively. The zeros
		are returned in ascending order.
		
		Parameters
		----------
		n : int
		    Order of the Bessel functions
		nt : int
		    Number (<=1200) of zeros to compute
		
		Returns
		-------
		Jn : ndarray
		    First `nt` zeros of Jn
		Jnp : ndarray
		    First `nt` zeros of Jn'
		Yn : ndarray
		    First `nt` zeros of Yn
		Ynp : ndarray
		    First `nt` zeros of Yn'
		
		See Also
		--------
		jn_zeros, jnp_zeros, yn_zeros, ynp_zeros
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function jnyn_zeros(n:Dynamic, nt:Dynamic):Dynamic;
	/**
		jv(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		jv(v, z)
		
		Bessel function of the first kind of real order and complex argument.
		
		Parameters
		----------
		v : array_like
		    Order (float).
		z : array_like
		    Argument (float or complex).
		
		Returns
		-------
		J : ndarray
		    Value of the Bessel function, :math:`J_v(z)`.
		
		Notes
		-----
		For positive `v` values, the computation is carried out using the AMOS
		[1]_ `zbesj` routine, which exploits the connection to the modified
		Bessel function :math:`I_v`,
		
		.. math::
		    J_v(z) = \exp(v\pi\imath/2) I_v(-\imath z)\qquad (\Im z > 0)
		
		    J_v(z) = \exp(-v\pi\imath/2) I_v(\imath z)\qquad (\Im z < 0)
		
		For negative `v` values the formula,
		
		.. math:: J_{-v}(z) = J_v(z) \cos(\pi v) - Y_v(z) \sin(\pi v)
		
		is used, where :math:`Y_v(z)` is the Bessel function of the second
		kind, computed using the AMOS routine `zbesy`.  Note that the second
		term is exactly zero for integer `v`; to improve accuracy the second
		term is explicitly omitted for `v` values such that `v = floor(v)`.
		
		Not to be confused with the spherical Bessel functions (see `spherical_jn`).
		
		See also
		--------
		jve : :math:`J_v` with leading exponential behavior stripped off.
		spherical_jn : spherical Bessel functions.
		
		References
		----------
		.. [1] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
	**/
	static public function jv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute derivatives of Bessel functions of the first kind.
		
		Compute the nth derivative of the Bessel function `Jv` with
		respect to `z`.
		
		Parameters
		----------
		v : float
		    Order of Bessel function
		z : complex
		    Argument at which to evaluate the derivative; can be real or
		    complex.
		n : int, default 1
		    Order of derivative
		
		Returns
		-------
		scalar or ndarray
		    Values of the derivative of the Bessel function.
		
		Notes
		-----
		The derivative is computed using the relation DLFM 10.6.7 [2]_.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		.. [2] NIST Digital Library of Mathematical Functions.
		       https://dlmf.nist.gov/10.6.E7
	**/
	static public function jvp(v:Dynamic, z:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Compute nt zeros of the Kelvin function kei.
		
		Parameters
		----------
		nt : int
		    Number of zeros to compute. Must be positive.
		
		Returns
		-------
		ndarray
		    First `nt` zeros of the Kelvin function.
		
		See Also
		--------
		kei
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function kei_zeros(nt:Dynamic):Dynamic;
	/**
		Compute nt zeros of the derivative of the Kelvin function kei.
		
		Parameters
		----------
		nt : int
		    Number of zeros to compute. Must be positive.
		
		Returns
		-------
		ndarray
		    First `nt` zeros of the derivative of the Kelvin function.
		
		See Also
		--------
		kei, keip
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function keip_zeros(nt:Dynamic):Dynamic;
	/**
		Compute nt zeros of all Kelvin functions.
		
		Returned in a length-8 tuple of arrays of length nt.  The tuple contains
		the arrays of zeros of (ber, bei, ker, kei, ber', bei', ker', kei').
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function kelvin_zeros(nt:Dynamic):Dynamic;
	/**
		Compute nt zeros of the Kelvin function ker.
		
		Parameters
		----------
		nt : int
		    Number of zeros to compute. Must be positive.
		
		Returns
		-------
		ndarray
		    First `nt` zeros of the Kelvin function.
		
		See Also
		--------
		ker
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function ker_zeros(nt:Dynamic):Dynamic;
	/**
		Compute nt zeros of the derivative of the Kelvin function ker.
		
		Parameters
		----------
		nt : int
		    Number of zeros to compute. Must be positive.
		
		Returns
		-------
		ndarray
		    First `nt` zeros of the derivative of the Kelvin function.
		
		See Also
		--------
		ker, kerp
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function kerp_zeros(nt:Dynamic):Dynamic;
	/**
		kv(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		kv(v, z)
		
		Modified Bessel function of the second kind of real order `v`
		
		Returns the modified Bessel function of the second kind for real order
		`v` at complex `z`.
		
		These are also sometimes called functions of the third kind, Basset
		functions, or Macdonald functions.  They are defined as those solutions
		of the modified Bessel equation for which,
		
		.. math::
		    K_v(x) \sim \sqrt{\pi/(2x)} \exp(-x)
		
		as :math:`x \to \infty` [3]_.
		
		Parameters
		----------
		v : array_like of float
		    Order of Bessel functions
		z : array_like of complex
		    Argument at which to evaluate the Bessel functions
		
		Returns
		-------
		out : ndarray
		    The results. Note that input must be of complex type to get complex
		    output, e.g. ``kv(3, -2+0j)`` instead of ``kv(3, -2)``.
		
		Notes
		-----
		Wrapper for AMOS [1]_ routine `zbesk`.  For a discussion of the
		algorithm used, see [2]_ and the references therein.
		
		See Also
		--------
		kve : This function with leading exponential behavior stripped off.
		kvp : Derivative of this function
		
		References
		----------
		.. [1] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
		.. [2] Donald E. Amos, "Algorithm 644: A portable package for Bessel
		       functions of a complex argument and nonnegative order", ACM
		       TOMS Vol. 12 Issue 3, Sept. 1986, p. 265
		.. [3] NIST Digital Library of Mathematical Functions,
		       Eq. 10.25.E3. https://dlmf.nist.gov/10.25.E3
		
		Examples
		--------
		Plot the function of several orders for real input:
		
		>>> from scipy.special import kv
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(0, 5, 1000)
		>>> for N in np.linspace(0, 6, 5):
		...     plt.plot(x, kv(N, x), label='$K_{{{}}}(x)$'.format(N))
		>>> plt.ylim(0, 10)
		>>> plt.legend()
		>>> plt.title(r'Modified Bessel function of the second kind $K_\nu(x)$')
		>>> plt.show()
		
		Calculate for a single value at multiple orders:
		
		>>> kv([4, 4.5, 5], 1+2j)
		array([ 0.1992+2.3892j,  2.3493+3.6j   ,  7.2827+3.8104j])
	**/
	static public function kv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute nth derivative of real-order modified Bessel function Kv(z)
		
		Kv(z) is the modified Bessel function of the second kind.
		Derivative is calculated with respect to `z`.
		
		Parameters
		----------
		v : array_like of float
		    Order of Bessel function
		z : array_like of complex
		    Argument at which to evaluate the derivative
		n : int
		    Order of derivative.  Default is first derivative.
		
		Returns
		-------
		out : ndarray
		    The results
		
		Examples
		--------
		Calculate multiple values at order 5:
		
		>>> from scipy.special import kvp
		>>> kvp(5, (1, 2, 3+5j))
		array([-1.84903536e+03+0.j        , -2.57735387e+01+0.j        ,
		       -3.06627741e-02+0.08750845j])
		
		
		Calculate for a single value at multiple orders:
		
		>>> kvp((4, 4.5, 5), 1)
		array([ -184.0309,  -568.9585, -1849.0354])
		
		Notes
		-----
		The derivative is computed using the relation DLFM 10.29.5 [2]_.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 6.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		.. [2] NIST Digital Library of Mathematical Functions.
		       https://dlmf.nist.gov/10.29.E5
	**/
	static public function kvp(v:Dynamic, z:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Jahnke-Emden Lambda function, Lambdav(x).
		
		This function is defined as [2]_,
		
		.. math:: \Lambda_v(x) = \Gamma(v+1) \frac{J_v(x)}{(x/2)^v},
		
		where :math:`\Gamma` is the gamma function and :math:`J_v` is the
		Bessel function of the first kind.
		
		Parameters
		----------
		v : float
		    Order of the Lambda function
		x : float
		    Value at which to evaluate the function and derivatives
		
		Returns
		-------
		vl : ndarray
		    Values of Lambda_vi(x), for vi=v-int(v), vi=1+v-int(v), ..., vi=v.
		dl : ndarray
		    Derivatives Lambda_vi'(x), for vi=v-int(v), vi=1+v-int(v), ..., vi=v.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		.. [2] Jahnke, E. and Emde, F. "Tables of Functions with Formulae and
		       Curves" (4th ed.), Dover, 1945
	**/
	static public function lmbda(v:Dynamic, x:Dynamic):Dynamic;
	/**
		Sequence of associated Legendre functions of the first kind.
		
		Computes the associated Legendre function of the first kind of order m and
		degree n, ``Pmn(z)`` = :math:`P_n^m(z)`, and its derivative, ``Pmn'(z)``.
		Returns two arrays of size ``(m+1, n+1)`` containing ``Pmn(z)`` and
		``Pmn'(z)`` for all orders from ``0..m`` and degrees from ``0..n``.
		
		This function takes a real argument ``z``. For complex arguments ``z``
		use clpmn instead.
		
		Parameters
		----------
		m : int
		   ``|m| <= n``; the order of the Legendre function.
		n : int
		   where ``n >= 0``; the degree of the Legendre function.  Often
		   called ``l`` (lower case L) in descriptions of the associated
		   Legendre function
		z : float
		    Input value.
		
		Returns
		-------
		Pmn_z : (m+1, n+1) array
		   Values for all orders 0..m and degrees 0..n
		Pmn_d_z : (m+1, n+1) array
		   Derivatives for all orders 0..m and degrees 0..n
		
		See Also
		--------
		clpmn: associated Legendre functions of the first kind for complex z
		
		Notes
		-----
		In the interval (-1, 1), Ferrer's function of the first kind is
		returned. The phase convention used for the intervals (1, inf)
		and (-inf, -1) is such that the result is always real.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		.. [2] NIST Digital Library of Mathematical Functions
		       https://dlmf.nist.gov/14.3
	**/
	static public function lpmn(m:Dynamic, n:Dynamic, z:Dynamic):Dynamic;
	/**
		Legendre function of the first kind.
		
		Compute sequence of Legendre functions of the first kind (polynomials),
		Pn(z) and derivatives for all degrees from 0 to n (inclusive).
		
		See also special.legendre for polynomial class.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function lpn(n:Dynamic, z:Dynamic):Dynamic;
	/**
		Sequence of associated Legendre functions of the second kind.
		
		Computes the associated Legendre function of the second kind of order m and
		degree n, ``Qmn(z)`` = :math:`Q_n^m(z)`, and its derivative, ``Qmn'(z)``.
		Returns two arrays of size ``(m+1, n+1)`` containing ``Qmn(z)`` and
		``Qmn'(z)`` for all orders from ``0..m`` and degrees from ``0..n``.
		
		Parameters
		----------
		m : int
		   ``|m| <= n``; the order of the Legendre function.
		n : int
		   where ``n >= 0``; the degree of the Legendre function.  Often
		   called ``l`` (lower case L) in descriptions of the associated
		   Legendre function
		z : complex
		    Input value.
		
		Returns
		-------
		Qmn_z : (m+1, n+1) array
		   Values for all orders 0..m and degrees 0..n
		Qmn_d_z : (m+1, n+1) array
		   Derivatives for all orders 0..m and degrees 0..n
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function lqmn(m:Dynamic, n:Dynamic, z:Dynamic):Dynamic;
	/**
		Legendre function of the second kind.
		
		Compute sequence of Legendre functions of the second kind, Qn(z) and
		derivatives for all degrees from 0 to n (inclusive).
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function lqn(n:Dynamic, z:Dynamic):Dynamic;
	/**
		mathieu_a(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		mathieu_a(m, q)
		
		Characteristic value of even Mathieu functions
		
		Returns the characteristic value for the even solution,
		``ce_m(z, q)``, of Mathieu's equation.
	**/
	static public function mathieu_a(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mathieu_b(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		mathieu_b(m, q)
		
		Characteristic value of odd Mathieu functions
		
		Returns the characteristic value for the odd solution,
		``se_m(z, q)``, of Mathieu's equation.
	**/
	static public function mathieu_b(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Fourier coefficients for even Mathieu and modified Mathieu functions.
		
		The Fourier series of the even solutions of the Mathieu differential
		equation are of the form
		
		.. math:: \mathrm{ce}_{2n}(z, q) = \sum_{k=0}^{\infty} A_{(2n)}^{(2k)} \cos 2kz
		
		.. math:: \mathrm{ce}_{2n+1}(z, q) = \sum_{k=0}^{\infty} A_{(2n+1)}^{(2k+1)} \cos (2k+1)z
		
		This function returns the coefficients :math:`A_{(2n)}^{(2k)}` for even
		input m=2n, and the coefficients :math:`A_{(2n+1)}^{(2k+1)}` for odd input
		m=2n+1.
		
		Parameters
		----------
		m : int
		    Order of Mathieu functions.  Must be non-negative.
		q : float (>=0)
		    Parameter of Mathieu functions.  Must be non-negative.
		
		Returns
		-------
		Ak : ndarray
		    Even or odd Fourier coefficients, corresponding to even or odd m.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		.. [2] NIST Digital Library of Mathematical Functions
		       https://dlmf.nist.gov/28.4#i
	**/
	static public function mathieu_even_coef(m:Dynamic, q:Dynamic):Dynamic;
	/**
		Fourier coefficients for even Mathieu and modified Mathieu functions.
		
		The Fourier series of the odd solutions of the Mathieu differential
		equation are of the form
		
		.. math:: \mathrm{se}_{2n+1}(z, q) = \sum_{k=0}^{\infty} B_{(2n+1)}^{(2k+1)} \sin (2k+1)z
		
		.. math:: \mathrm{se}_{2n+2}(z, q) = \sum_{k=0}^{\infty} B_{(2n+2)}^{(2k+2)} \sin (2k+2)z
		
		This function returns the coefficients :math:`B_{(2n+2)}^{(2k+2)}` for even
		input m=2n+2, and the coefficients :math:`B_{(2n+1)}^{(2k+1)}` for odd
		input m=2n+1.
		
		Parameters
		----------
		m : int
		    Order of Mathieu functions.  Must be non-negative.
		q : float (>=0)
		    Parameter of Mathieu functions.  Must be non-negative.
		
		Returns
		-------
		Bk : ndarray
		    Even or odd Fourier coefficients, corresponding to even or odd m.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function mathieu_odd_coef(m:Dynamic, q:Dynamic):Dynamic;
	/**
		ndtri(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		ndtri(y)
		
		Inverse of `ndtr` vs x
		
		Returns the argument x for which the area under the Gaussian
		probability density function (integrated from minus infinity to `x`)
		is equal to y.
	**/
	static public function ndtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Characteristic values for oblate spheroidal wave functions.
		
		Compute a sequence of characteristic values for the oblate
		spheroidal wave functions for mode m and n'=m..n and spheroidal
		parameter c.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function obl_cv_seq(m:Dynamic, n:Dynamic, c:Dynamic):Dynamic;
	/**
		Parabolic cylinder functions Dn(z) and derivatives.
		
		Parameters
		----------
		n : int
		    Order of the parabolic cylinder function
		z : complex
		    Value at which to evaluate the function and derivatives
		
		Returns
		-------
		dv : ndarray
		    Values of D_i(z), for i=0, ..., i=n.
		dp : ndarray
		    Derivatives D_i'(z), for i=0, ..., i=n.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 13.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function pbdn_seq(n:Dynamic, z:Dynamic):Dynamic;
	/**
		Parabolic cylinder functions Dv(x) and derivatives.
		
		Parameters
		----------
		v : float
		    Order of the parabolic cylinder function
		x : float
		    Value at which to evaluate the function and derivatives
		
		Returns
		-------
		dv : ndarray
		    Values of D_vi(x), for vi=v-int(v), vi=1+v-int(v), ..., vi=v.
		dp : ndarray
		    Derivatives D_vi'(x), for vi=v-int(v), vi=1+v-int(v), ..., vi=v.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 13.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function pbdv_seq(v:Dynamic, x:Dynamic):Dynamic;
	/**
		Parabolic cylinder functions Vv(x) and derivatives.
		
		Parameters
		----------
		v : float
		    Order of the parabolic cylinder function
		x : float
		    Value at which to evaluate the function and derivatives
		
		Returns
		-------
		dv : ndarray
		    Values of V_vi(x), for vi=v-int(v), vi=1+v-int(v), ..., vi=v.
		dp : ndarray
		    Derivatives V_vi'(x), for vi=v-int(v), vi=1+v-int(v), ..., vi=v.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 13.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function pbvv_seq(v:Dynamic, x:Dynamic):Dynamic;
	/**
		Permutations of N things taken k at a time, i.e., k-permutations of N.
		
		It's also known as "partial permutations".
		
		Parameters
		----------
		N : int, ndarray
		    Number of things.
		k : int, ndarray
		    Number of elements taken.
		exact : bool, optional
		    If `exact` is False, then floating point precision is used, otherwise
		    exact long integer is computed.
		
		Returns
		-------
		val : int, ndarray
		    The number of k-permutations of N.
		
		Notes
		-----
		- Array arguments accepted only for exact=False case.
		- If k > N, N < 0, or k < 0, then a 0 is returned.
		
		Examples
		--------
		>>> from scipy.special import perm
		>>> k = np.array([3, 4])
		>>> n = np.array([10, 10])
		>>> perm(n, k)
		array([  720.,  5040.])
		>>> perm(10, 3, exact=True)
		720
	**/
	static public function perm(N:Dynamic, k:Dynamic, ?exact:Dynamic):Dynamic;
	/**
		Polygamma functions.
		
		Defined as :math:`\psi^{(n)}(x)` where :math:`\psi` is the
		`digamma` function. See [dlmf]_ for details.
		
		Parameters
		----------
		n : array_like
		    The order of the derivative of the digamma function; must be
		    integral
		x : array_like
		    Real valued input
		
		Returns
		-------
		ndarray
		    Function results
		
		See Also
		--------
		digamma
		
		References
		----------
		.. [dlmf] NIST, Digital Library of Mathematical Functions,
		    https://dlmf.nist.gov/5.15
		
		Examples
		--------
		>>> from scipy import special
		>>> x = [2, 3, 25.5]
		>>> special.polygamma(1, x)
		array([ 0.64493407,  0.39493407,  0.03999467])
		>>> special.polygamma(0, x) == special.psi(x)
		array([ True,  True,  True], dtype=bool)
	**/
	static public function polygamma(n:Dynamic, x:Dynamic):Dynamic;
	/**
		Characteristic values for prolate spheroidal wave functions.
		
		Compute a sequence of characteristic values for the prolate
		spheroidal wave functions for mode m and n'=m..n and spheroidal
		parameter c.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function pro_cv_seq(m:Dynamic, n:Dynamic, c:Dynamic):Dynamic;
	/**
		psi(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		psi(z, out=None)
		
		The digamma function.
		
		The logarithmic derivative of the gamma function evaluated at ``z``.
		
		Parameters
		----------
		z : array_like
		    Real or complex argument.
		out : ndarray, optional
		    Array for the computed values of ``psi``.
		
		Returns
		-------
		digamma : ndarray
		    Computed values of ``psi``.
		
		Notes
		-----
		For large values not close to the negative real axis, ``psi`` is
		computed using the asymptotic series (5.11.2) from [1]_. For small
		arguments not close to the negative real axis, the recurrence
		relation (5.5.2) from [1]_ is used until the argument is large
		enough to use the asymptotic series. For values close to the
		negative real axis, the reflection formula (5.5.4) from [1]_ is
		used first. Note that ``psi`` has a family of zeros on the
		negative real axis which occur between the poles at nonpositive
		integers. Around the zeros the reflection formula suffers from
		cancellation and the implementation loses precision. The sole
		positive zero and the first negative zero, however, are handled
		separately by precomputing series expansions using [2]_, so the
		function should maintain full accuracy around the origin.
		
		References
		----------
		.. [1] NIST Digital Library of Mathematical Functions
		       https://dlmf.nist.gov/5
		.. [2] Fredrik Johansson and others.
		       "mpmath: a Python library for arbitrary-precision floating-point arithmetic"
		       (Version 0.19) http://mpmath.org/
		
		Examples
		--------
		>>> from scipy.special import psi
		>>> z = 3 + 4j
		>>> psi(z)
		(1.55035981733341+1.0105022091860445j)
		
		Verify psi(z) = psi(z + 1) - 1/z:
		
		>>> psi(z + 1) - 1/z
		(1.55035981733341+1.0105022091860445j)
	**/
	static public function psi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute Ricatti-Bessel function of the first kind and its derivative.
		
		The Ricatti-Bessel function of the first kind is defined as :math:`x
		j_n(x)`, where :math:`j_n` is the spherical Bessel function of the first
		kind of order :math:`n`.
		
		This function computes the value and first derivative of the
		Ricatti-Bessel function for all orders up to and including `n`.
		
		Parameters
		----------
		n : int
		    Maximum order of function to compute
		x : float
		    Argument at which to evaluate
		
		Returns
		-------
		jn : ndarray
		    Value of j0(x), ..., jn(x)
		jnp : ndarray
		    First derivative j0'(x), ..., jn'(x)
		
		Notes
		-----
		The computation is carried out via backward recurrence, using the
		relation DLMF 10.51.1 [2]_.
		
		Wrapper for a Fortran routine created by Shanjie Zhang and Jianming
		Jin [1]_.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		.. [2] NIST Digital Library of Mathematical Functions.
		       https://dlmf.nist.gov/10.51.E1
	**/
	static public function riccati_jn(n:Dynamic, x:Dynamic):Dynamic;
	/**
		Compute Ricatti-Bessel function of the second kind and its derivative.
		
		The Ricatti-Bessel function of the second kind is defined as :math:`x
		y_n(x)`, where :math:`y_n` is the spherical Bessel function of the second
		kind of order :math:`n`.
		
		This function computes the value and first derivative of the function for
		all orders up to and including `n`.
		
		Parameters
		----------
		n : int
		    Maximum order of function to compute
		x : float
		    Argument at which to evaluate
		
		Returns
		-------
		yn : ndarray
		    Value of y0(x), ..., yn(x)
		ynp : ndarray
		    First derivative y0'(x), ..., yn'(x)
		
		Notes
		-----
		The computation is carried out via ascending recurrence, using the
		relation DLMF 10.51.1 [2]_.
		
		Wrapper for a Fortran routine created by Shanjie Zhang and Jianming
		Jin [1]_.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		.. [2] NIST Digital Library of Mathematical Functions.
		       https://dlmf.nist.gov/10.51.E1
	**/
	static public function riccati_yn(n:Dynamic, x:Dynamic):Dynamic;
	/**
		Return the normalized sinc function.
		
		The sinc function is :math:`\sin(\pi x)/(\pi x)`.
		
		.. note::
		
		    Note the normalization factor of ``pi`` used in the definition.
		    This is the most commonly used definition in signal processing.
		    Use ``sinc(x / np.pi)`` to obtain the unnormalized sinc function
		    :math:`\sin(x)/(x)` that is more common in mathematics.
		
		Parameters
		----------
		x : ndarray
		    Array (possibly multi-dimensional) of values for which to to
		    calculate ``sinc(x)``.
		
		Returns
		-------
		out : ndarray
		    ``sinc(x)``, which has the same shape as the input.
		
		Notes
		-----
		``sinc(0)`` is the limit value 1.
		
		The name sinc is short for "sine cardinal" or "sinus cardinalis".
		
		The sinc function is used in various signal processing applications,
		including in anti-aliasing, in the construction of a Lanczos resampling
		filter, and in interpolation.
		
		For bandlimited interpolation of discrete-time signals, the ideal
		interpolation kernel is proportional to the sinc function.
		
		References
		----------
		.. [1] Weisstein, Eric W. "Sinc Function." From MathWorld--A Wolfram Web
		       Resource. http://mathworld.wolfram.com/SincFunction.html
		.. [2] Wikipedia, "Sinc function",
		       https://en.wikipedia.org/wiki/Sinc_function
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-4, 4, 41)
		>>> np.sinc(x)
		 array([-3.89804309e-17,  -4.92362781e-02,  -8.40918587e-02, # may vary
		        -8.90384387e-02,  -5.84680802e-02,   3.89804309e-17,
		        6.68206631e-02,   1.16434881e-01,   1.26137788e-01,
		        8.50444803e-02,  -3.89804309e-17,  -1.03943254e-01,
		        -1.89206682e-01,  -2.16236208e-01,  -1.55914881e-01,
		        3.89804309e-17,   2.33872321e-01,   5.04551152e-01,
		        7.56826729e-01,   9.35489284e-01,   1.00000000e+00,
		        9.35489284e-01,   7.56826729e-01,   5.04551152e-01,
		        2.33872321e-01,   3.89804309e-17,  -1.55914881e-01,
		       -2.16236208e-01,  -1.89206682e-01,  -1.03943254e-01,
		       -3.89804309e-17,   8.50444803e-02,   1.26137788e-01,
		        1.16434881e-01,   6.68206631e-02,   3.89804309e-17,
		        -5.84680802e-02,  -8.90384387e-02,  -8.40918587e-02,
		        -4.92362781e-02,  -3.89804309e-17])
		
		>>> plt.plot(x, np.sinc(x))
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.title("Sinc Function")
		Text(0.5, 1.0, 'Sinc Function')
		>>> plt.ylabel("Amplitude")
		Text(0, 0.5, 'Amplitude')
		>>> plt.xlabel("X")
		Text(0.5, 0, 'X')
		>>> plt.show()
	**/
	static public function sinc(x:Dynamic):Dynamic;
	/**
		Compute nt zeros of Bessel function Y0(z), and derivative at each zero.
		
		The derivatives are given by Y0'(z0) = -Y1(z0) at each zero z0.
		
		Parameters
		----------
		nt : int
		    Number of zeros to return
		complex : bool, default False
		    Set to False to return only the real zeros; set to True to return only
		    the complex zeros with negative real part and positive imaginary part.
		    Note that the complex conjugates of the latter are also zeros of the
		    function, but are not returned by this routine.
		
		Returns
		-------
		z0n : ndarray
		    Location of nth zero of Y0(z)
		y0pz0n : ndarray
		    Value of derivative Y0'(z0) for nth zero
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function y0_zeros(nt:Dynamic, ?complex:Dynamic):Dynamic;
	/**
		Compute nt zeros of Bessel function Y1(z), and derivative at each zero.
		
		The derivatives are given by Y1'(z1) = Y0(z1) at each zero z1.
		
		Parameters
		----------
		nt : int
		    Number of zeros to return
		complex : bool, default False
		    Set to False to return only the real zeros; set to True to return only
		    the complex zeros with negative real part and positive imaginary part.
		    Note that the complex conjugates of the latter are also zeros of the
		    function, but are not returned by this routine.
		
		Returns
		-------
		z1n : ndarray
		    Location of nth zero of Y1(z)
		y1pz1n : ndarray
		    Value of derivative Y1'(z1) for nth zero
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function y1_zeros(nt:Dynamic, ?complex:Dynamic):Dynamic;
	/**
		Compute nt zeros of Bessel derivative Y1'(z), and value at each zero.
		
		The values are given by Y1(z1) at each z1 where Y1'(z1)=0.
		
		Parameters
		----------
		nt : int
		    Number of zeros to return
		complex : bool, default False
		    Set to False to return only the real zeros; set to True to return only
		    the complex zeros with negative real part and positive imaginary part.
		    Note that the complex conjugates of the latter are also zeros of the
		    function, but are not returned by this routine.
		
		Returns
		-------
		z1pn : ndarray
		    Location of nth zero of Y1'(z)
		y1z1pn : ndarray
		    Value of derivative Y1(z1) for nth zero
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
	**/
	static public function y1p_zeros(nt:Dynamic, ?complex:Dynamic):Dynamic;
	/**
		Compute zeros of integer-order Bessel function Yn(x).
		
		Compute `nt` zeros of the functions :math:`Y_n(x)` on the interval
		:math:`(0, \infty)`. The zeros are returned in ascending order.
		
		Parameters
		----------
		n : int
		    Order of Bessel function
		nt : int
		    Number of zeros to return
		
		Returns
		-------
		ndarray
		    First `nt` zeros of the Bessel function.
		
		See Also
		--------
		yn, yv
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		
		Examples
		--------
		>>> import scipy.special as sc
		
		We can check that we are getting approximations of the zeros by
		evaluating them with `yn`.
		
		>>> n = 2
		>>> x = sc.yn_zeros(n, 3)
		>>> x
		array([ 3.38424177,  6.79380751, 10.02347798])
		>>> sc.yn(n, x)
		array([-1.94289029e-16,  8.32667268e-17, -1.52655666e-16])
	**/
	static public function yn_zeros(n:Dynamic, nt:Dynamic):Dynamic;
	/**
		Compute zeros of integer-order Bessel function derivatives Yn'(x).
		
		Compute `nt` zeros of the functions :math:`Y_n'(x)` on the
		interval :math:`(0, \infty)`. The zeros are returned in ascending
		order.
		
		Parameters
		----------
		n : int
		    Order of Bessel function
		nt : int
		    Number of zeros to return
		
		Returns
		-------
		ndarray
		    First `nt` zeros of the Bessel derivative function.
		
		
		See Also
		--------
		yvp
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		
		Examples
		--------
		>>> import scipy.special as sc
		
		We can check that we are getting approximations of the zeros by
		evaluating them with `yvp`.
		
		>>> n = 2
		>>> x = sc.ynp_zeros(n, 3)
		>>> x
		array([ 5.00258293,  8.3507247 , 11.57419547])
		>>> sc.yvp(n, x)
		array([ 2.22044605e-16, -3.33066907e-16,  2.94902991e-16])
	**/
	static public function ynp_zeros(n:Dynamic, nt:Dynamic):Dynamic;
	/**
		yv(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		yv(v, z)
		
		Bessel function of the second kind of real order and complex argument.
		
		Parameters
		----------
		v : array_like
		    Order (float).
		z : array_like
		    Argument (float or complex).
		
		Returns
		-------
		Y : ndarray
		    Value of the Bessel function of the second kind, :math:`Y_v(x)`.
		
		Notes
		-----
		For positive `v` values, the computation is carried out using the
		AMOS [1]_ `zbesy` routine, which exploits the connection to the Hankel
		Bessel functions :math:`H_v^{(1)}` and :math:`H_v^{(2)}`,
		
		.. math:: Y_v(z) = \frac{1}{2\imath} (H_v^{(1)} - H_v^{(2)}).
		
		For negative `v` values the formula,
		
		.. math:: Y_{-v}(z) = Y_v(z) \cos(\pi v) + J_v(z) \sin(\pi v)
		
		is used, where :math:`J_v(z)` is the Bessel function of the first kind,
		computed using the AMOS routine `zbesj`.  Note that the second term is
		exactly zero for integer `v`; to improve accuracy the second term is
		explicitly omitted for `v` values such that `v = floor(v)`.
		
		See also
		--------
		yve : :math:`Y_v` with leading exponential behavior stripped off.
		
		References
		----------
		.. [1] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
	**/
	static public function yv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute derivatives of Bessel functions of the second kind.
		
		Compute the nth derivative of the Bessel function `Yv` with
		respect to `z`.
		
		Parameters
		----------
		v : float
		    Order of Bessel function
		z : complex
		    Argument at which to evaluate the derivative
		n : int, default 1
		    Order of derivative
		
		Returns
		-------
		scalar or ndarray
		    nth derivative of the Bessel function.
		
		Notes
		-----
		The derivative is computed using the relation DLFM 10.6.7 [2]_.
		
		References
		----------
		.. [1] Zhang, Shanjie and Jin, Jianming. "Computation of Special
		       Functions", John Wiley and Sons, 1996, chapter 5.
		       https://people.sc.fsu.edu/~jburkardt/f77_src/special_functions/special_functions.html
		.. [2] NIST Digital Library of Mathematical Functions.
		       https://dlmf.nist.gov/10.6.E7
	**/
	static public function yvp(v:Dynamic, z:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Riemann or Hurwitz zeta function.
		
		Parameters
		----------
		x : array_like of float
		    Input data, must be real
		q : array_like of float, optional
		    Input data, must be real.  Defaults to Riemann zeta.
		out : ndarray, optional
		    Output array for the computed values.
		
		Returns
		-------
		out : array_like
		    Values of zeta(x).
		
		Notes
		-----
		The two-argument version is the Hurwitz zeta function
		
		.. math::
		
		    \zeta(x, q) = \sum_{k=0}^{\infty} \frac{1}{(k + q)^x};
		
		see [dlmf]_ for details. The Riemann zeta function corresponds to
		the case when ``q = 1``.
		
		See Also
		--------
		zetac
		
		References
		----------
		.. [dlmf] NIST, Digital Library of Mathematical Functions,
		    https://dlmf.nist.gov/25.11#i
		
		Examples
		--------
		>>> from scipy.special import zeta, polygamma, factorial
		
		Some specific values:
		
		>>> zeta(2), np.pi**2/6
		(1.6449340668482266, 1.6449340668482264)
		
		>>> zeta(4), np.pi**4/90
		(1.0823232337111381, 1.082323233711138)
		
		Relation to the `polygamma` function:
		
		>>> m = 3
		>>> x = 1.25
		>>> polygamma(m, x)
		array(2.782144009188397)
		>>> (-1)**(m+1) * factorial(m) * zeta(m+1, x)
		2.7821440091883969
	**/
	static public function zeta(x:Dynamic, ?q:Dynamic, ?out:Dynamic):Dynamic;
}